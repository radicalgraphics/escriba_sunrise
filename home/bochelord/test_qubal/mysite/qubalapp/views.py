# Create your views here.
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render, get_object_or_404, render_to_response
from qubalapp.models import Course, Student, Rules_Xp_per_Level, Team, Power, Teacher, Person, Quest_Status, Challenge_Status, Quest, Task_Video, Task_Deliverable, Task_Quiz, Task_Status, Educational_Document
from django.core.context_processors import csrf
from django.contrib import auth
from django.contrib.auth.models import User
from qubal_xp import *
from imagekit.models import ImageSpecField
from imagekit import ImageSpec, register
from imagekit import processors
from imagekit.processors import ResizeToFill
from qubal_images import *
import qubal_rules, qubal_init, qubal_reward
import os
import sys
from django.template import Context, Template
from django.conf import settings
from qubal_prerender import *
from qubal_forms import Register_Character_Landing_Form, Deliverable_Form, Oracle_Form, Spex_Oracle_Form

import qubal_check_image
import qubal_check
import qubal_latest_activity

from django.contrib.contenttypes.models import ContentType, ContentTypeManager

from actstream.models import user_stream
from actstream import action
from actstream.models import Action

# from pytz import timezone
import datetime
from django.utils import timezone



register.generator('qubalapp:thumbnail30x30', Thumbnail30x30)
register.generator('qubalapp:thumbnail50x50', Thumbnail50x50)
register.generator('qubalapp:thumbnail70x70', Thumbnail70x70)
register.generator('qubalapp:thumbnail80x80', Thumbnail80x80)
register.generator('qubalapp:thumbnail100x100', Thumbnail100x100)
register.generator('qubalapp:thumbnail120x120', Thumbnail120x120)
register.generator('qubalapp:thumbnail150x150', Thumbnail150x150)
register.generator('qubalapp:thumbnail220x220', Thumbnail220x220)



def index(request):

	if request.user.is_authenticated():

		local_user = request.user

		# we need to check the type of local_person (Student or Teacher)
		
		# we do it with the fancy django_model_utils lib
		# we ask the parent class Person which kind of instance is the user logged_in (teacher or student)
		local_person = request.user

		# Check for avoiding a crash on the user not being a person YET!
		if Person.objects.filter(user=local_person.id):

			# We check the login_rule to add XP to the user if last action is logged.
			qubal_rules.login_rule(local_user)

			real_person = Person.objects.get_subclass(user=local_person.id)

			# We ask if it is student or not
			
			if isinstance(real_person, Student):
				# we know the user is a student

				# Student.objects.get(pk=local_person.id):

				local_student = get_object_or_404(Student, pk=local_person.id)

				total_xp = local_student.xp

				current_xp = calculate_current_xp(total_xp)

				current_level = calculate_level(total_xp) 

				xp_needed = Rules_Xp_per_Level.objects.get(level=current_level).xp 

				teams_list = local_student.is_team_member_of.all()[:3]

				achievement_list = local_student.has_achievements.all().order_by('id')
				achievement_list = achievement_list.reverse()[1:4]

				last_achievement_list = local_student.has_achievements.all().order_by('id')
				last_achievement_list = last_achievement_list.reverse()[:1]

				# We get the specific student powers and assign it to the student_powers var
				# to send it as context to the index.html
				
				student_powers = local_student.has_powers

				percent = current_level * 10

				percent_xp = total_xp * 100 / sumatorium_levels()

				if current_xp != 0:
					percent_current_xp = current_xp * 100 / xp_needed	
				else:
					percent_current_xp = 0


				# Check for avoid a crash when the image doesn't exist
				
				if not os.path.isfile(settings.MEDIA_ROOT +str(local_student.image)):
		
					local_student.image = ""
				

				next_level = current_level + 1
				next_level_at = xp_needed - current_xp

				url = 'index.html'
		
				html = prerender_nav(local_student, url, current_level, settings, request)


				notifications_script = prerender_notifications(local_student)
				#source_file = open(local_student.image.url,'r')
				#image_generator = Thumbnail(local_student.image)
				#result = image_generator.generate()

				context = {'student' : local_student,
					   'current_level' : current_level,
					   'current_xp' : current_xp,
					   'xp_needed_for_level_up' : xp_needed,
					   'total_xp' : total_xp,
					   'student_teams_list' : teams_list,
					   'local_person_id' : local_person.id,
					   'student_achievement_list' : achievement_list,
					   'percent' : percent,
					   'percent_current_xp' : percent_current_xp,
					   'last_achievement_list': last_achievement_list,
					   'next_level_at' : next_level_at,
					   'next_level':next_level,
					   'student_powers': student_powers,
					   'navbar_content': html,
					   'notifications_content': notifications_script,
					   'SUNRISE_URL': settings.SUNRISE_URL,
					   'QUBAL_VERSION': settings.QUBAL_VERSION }

			


				return render(request, 'qubalapp/index.html', context)


			elif isinstance(real_person, Teacher):
				# we know the user is a teacher


				local_teacher = get_object_or_404(Teacher, pk=local_person.id)

				#####
				# Check for avoid a crash when the image doesn't exist
				
				if not os.path.isfile(settings.MEDIA_ROOT +str(local_teacher.image)):
		
					local_teacher.image = ""
				
				#####

				total_xp = local_teacher.xp

				current_level = calculate_level(total_xp) 

				url = 'index.html'


				html = prerender_nav(local_teacher, url, current_level, settings, request)

				context = { 'teacher' : local_teacher,
							'navbar_content': html,
					   		'QUBAL_VERSION': settings.QUBAL_VERSION }

				return render(request, 'qubalapp/index_teacher.html', context)

			else:
				# we know you're a user, but you've no type!

				return render(request, 'Not yet done...and you are an unknown entity sneaking around!!!!!')		

		else:

			# we know you're a user, and not yet decided if student or teacher
			# return  HttpResponse("You should choose what to be!!! you're just thi user: " + local_user.username )		

			# we temporarily (for the moment) redirect to create Student if you're not decided yet (only a user)
			# still we have to implement a switch for the teacher or use the old pen and paper tactic...
			return HttpResponseRedirect(settings.SUNRISE_URL+"register_character_landing/")

		
	else: #Drop him to landing if he's not authenticated
		return HttpResponseRedirect(settings.SUNRISE_URL+"landing/")



def detail(request, course_id):
	course = get_object_or_404 (Course, pk=course_id)
	return render(request, 'qubalapp/detail.html', {'course': course})



def results(request, course_id):
    return HttpResponse("You're looking at the results of Course %s." % course_id)



# vista del formulario, render_to_response tiene que ser importada de django.shortcuts
def search_form(request):
	return render(request, 'qubalapp/search_form.html')



# Comprobamos que q existe y que no esta vacia
def search(request):
	if 'q' in request.GET and request.GET['q']:
		q = request.GET['q']
		students_list = Student.objects.filter(name__icontains=q) or Student.objects.filter(lastname__icontains=q)
		return render(request, 'qubalapp/search_results.html', {'students': students_list, 'SUNRISE_URL':settings.SUNRISE_URL, 'query': q})
	else:
		error_message='Escribe un termino a buscar.'
		return render(request, 'qubalapp/search_results.html', {'error_message' : error_message})


def profile(request, student_id):
	local_student = get_object_or_404 (Student, pk=student_id)
	local_student_courses = local_student.active_courses.all()

	total_xp = local_student.xp
	current_level = calculate_level(total_xp)
	current_xp = calculate_current_xp(total_xp)

	percent = current_level * 10

	percent_xp = total_xp * 100 / sumatorium_levels()

	xp_needed = Rules_Xp_per_Level.objects.get(level=current_level).xp 

	next_level = current_level + 1
	next_level_at = xp_needed - current_xp

	if current_xp != 0:
		percent_current_xp = current_xp * 100 / xp_needed	
	else:
		percent_current_xp = 0

	

	#####
			# Check for avoid a crash when the image doesn't exist
	
	if not os.path.isfile(settings.MEDIA_ROOT +str(local_student.image)):
		local_student.image = ""


	# print "CABEZADEMELON" + str(local_student_courses)

	# sys.exit("SE ACABO LO Q SE DABA")

	url = 'profile.html'
	
	html = prerender_nav(local_student, url, current_level, settings, request)

	context = {'student': local_student,
				'total_xp' : total_xp,
				'current_xp' : current_xp,
				'current_level' : current_level,
				'xp_needed_for_level_up' : xp_needed,
				'percent' : percent,
				'percent_current_xp' : percent_current_xp,
				'next_level' : next_level,
				'next_level_at' : next_level_at,
				'courses_list':local_student_courses,
				'SUNRISE_URL': settings.SUNRISE_URL,
				'navbar_content': html ,
				}

	return render(request, 'qubalapp/profile.html', context)


def qubal_character_init(request):

	local_user = request.user
	# Check to init the qubal settings after creating a new user
	action.send(local_user, verb='action_login', description='Welcome to Qubal!', mostrado='no')

	# Chequeamos si hay cursos sin imagenes...
	# Check for avoid crash when courses don't have image. If it doesn't then it enters "" (blank)
	qubal_check_image.courses()
	# same for achievements
	qubal_check_image.achievements()
	qubal_check_image.teams()
	qubal_check_image.quests()

	# Check para cuando es un user pero aun no una persona
	if Person.objects.filter(user=local_user.id):
		real_person = Person.objects.get_subclass(user=local_user.id)
		if isinstance(real_person, Student):
			local_student = get_object_or_404(Student, pk=local_user.id)
			qubal_init.check_powers(local_student)
		elif isinstance(real_person, Teacher):
			local_teacher = get_object_or_404(Teacher, pk=local_user.id)
			qubal_init.check_powers(local_teacher)
		
	return HttpResponseRedirect(settings.SUNRISE_URL)


def register_person(request):
	#registra Student o Teacher y los redirecciona :D
	pass


def register_character(request):

	#pillar el user de la llamada
	
	local_user = request.user
	student_name = request.POST.get('student_name')
	student_lastname = request.POST.get('student_lastname')
	student_birthdate =request.POST.get('student_birthdate_0')
	student_image = request.FILES.get('student_image')
	student_phone = request.POST.get('student_phone')
	student_gender = request.POST.get('student_gender')
	
	# we need to serialize the datetime to Timezone Aware

	# student_birthdate= datetime.datetime.utcnow().replace(tzinfo=utc)

	student_birthdate = datetime.datetime.strptime(student_birthdate, '%d/%m/%Y %H:%M')

	

	# server_timezone = timezone(settings.TIME_ZONE)
	# student_birthdate = server_timezone.localize(datetime.datetime(student_birthdate)).isoformat()

	#student_birthdate = datetime.datetime(student_birthdate)

	#student_birthdate = timezone.now()

	# print "El post entero primo:\n"
	# print request.POST

	# print "Los archivazosss:\n"
	# print request.FILES
	# sys.exit()

	# We finally create the Person 
	# We summon the Character!
	
	# As it is a onetoone primary key true we need to get the user on u
	# and then get it to the user when creating the student
	u = User.objects.get(pk=local_user.id)

	# Si viene de twitter el usuario , no tiene email! alegria! twitter no da emails asi que a poner uno dummy

	if u.email == "" :
		u.email = "someone@somewhere.com"

	character = Student(
		user=u, 
		name=student_name, 
		lastname=student_lastname, 
		birth=student_birthdate, 
		email=u.email, 
		image=student_image, 
		phone_number=student_phone,
		xp=0,
		gender=student_gender,
		character_class='no_class',
		 )

	# we save the person, let's see...
	character.save()

	return  HttpResponse("You have been summoned!!: <a href='" + settings.SUNRISE_URL + "qubal_character_init/'>Now invoke your character!</a>")

	# print "Student Name"
	# print student_name

	# print "Student Lastname"
	# print student_lastname

	# print "Student Birthdate"
	# print student_birthdate
	# sys.exit()




def register_character_landing(request):


	context = {'QUBAL_VERSION': settings.QUBAL_VERSION,
				#'form': ExampleForm(),
			   'form': Register_Character_Landing_Form(), 
			   }

	return render(request, 'qubalapp/register_character_landing.html', context)

def landing(request):

	if 'error' in request.GET:
		mensaje_puerco = "Has olvidado tu clave?"
	else:
		mensaje_puerco = ""
	# c = {}
	# c.update(csrf(request))
	#return render_to_response('qubalapp/landing.html', c, {'mensaje_de_mierda':mensaje_puerco})


	context = { 'mensaje_de_mierda':mensaje_puerco,
				'SUNRISE_URL': settings.SUNRISE_URL,
				'QUBAL_VERSION': settings.QUBAL_VERSION }

	return render(request, 'qubalapp/landing.html', context)



def login(request):

	username = request.POST.get('username', '')
	password = request.POST.get('password', '')
	user = auth.authenticate(username=username, password=password)

	if user is not None and user.is_active:
		auth.login(request, user)
		
		# Guardamos la accion de que el usuario se ha logeado.
		action.send(request.user, verb='action_login', description='Welcome to Qubal!', mostrado='no')

		# Chequeamos si hay cursos sin imagenes...
		# Check for avoid crash when courses don't have image. If it doesn't then it enters "" (blank)
		qubal_check_image.courses()
		# same for achievements
		qubal_check_image.achievements()
		qubal_check_image.teams()
		qubal_check_image.quests()

		# Check para cuando es un user pero aun no una persona
		if Person.objects.filter(user=user.id):

			real_person = Person.objects.get_subclass(user=user.id)

			if isinstance(real_person, Student):
				local_student = get_object_or_404(Student, pk=user.id)
				qubal_init.check_powers(local_student)
			elif isinstance(real_person, Teacher):
				local_teacher = get_object_or_404(Teacher, pk=user.id)
				qubal_init.check_powers(local_teacher)
			
			return HttpResponseRedirect(settings.SUNRISE_URL + "jawa_/")

		else:
			# Aun no tiene el personaje creado asi que lo redirigimos a register_character_landing
			return HttpResponseRedirect(settings.SUNRISE_URL+"register_character_landing/")

	else:
		return HttpResponseRedirect(settings.SUNRISE_URL+"landing/?error")



def logout(request):

	if request.user.is_authenticated():
		# Action to confirm the user has logged out
		action.send(request.user, verb='notification_loggedout', description='Logged out ok')
		auth.logout(request)
	else:
		return HttpResponseRedirect(settings.SUNRISE_URL+"landing/")

	return HttpResponseRedirect(settings.SUNRISE_URL)



def teams(request):

	if request.user.is_authenticated():

		local_person = request.user

		real_person = real_person = Person.objects.get_subclass(user=local_person.id)

		if isinstance(real_person,Student):

			if Student.objects.get(pk=local_person.id):

				local_student = get_object_or_404 (Student, pk=local_person.id)
				local_student_teams = local_student.is_team_member_of.all().order_by('id')

				total_xp = local_student.xp
				current_level = calculate_level(total_xp)

				#####
				# Check for avoid a crash when the image doesn't exist
		
				if not os.path.isfile(settings.MEDIA_ROOT +str(local_student.image)):
					local_student.image = ""

				url = 'teams.html'

				html = prerender_nav(local_student, url, current_level, settings, request)

				context = { 'local_student' : local_student,
							'local_student_teams': local_student_teams,
							'SUNRISE_URL': settings.SUNRISE_URL,
				   			'navbar_content': html }

			return render(request, 'qubalapp/teams.html', context)

		elif isinstance(real_person, Teacher):

			if Teacher.objects.get(pk=local_person.id):

				local_teacher = get_object_or_404(Teacher, pk=local_person.id)
				
				local_teacher_mentor_teams = local_teacher.is_tutor_of_teams.all()

				# We get the xp to calculate the current level for the navbar			
				total_xp = local_teacher.xp
				current_level = calculate_level(total_xp)
				#####
				# Check for avoid a crash when the image doesn't exist
		
				if not os.path.isfile(settings.MEDIA_ROOT +str(local_teacher.image)):
					local_teacher.image = ""

				url = 'teams.html'

				html = prerender_nav(local_teacher, url, current_level, settings, request)

				context = { 'local_teacher' : local_teacher,
							'local_teacher_mentor_teams': local_teacher_mentor_teams,
				   			'navbar_content': html }

			return render(request, 'qubalapp/teams_teacher.html', context)
		else:
			HttpResponse('oh oh what are you doing here? mister: '+real_person.name)

	else:
		return HttpResponseRedirect(settings.SUNRISE_URL+"landing/")


def course_listing(request):

	if request.user.is_authenticated():

		local_person = request.user

		real_person = Person.objects.get_subclass(user=local_person.id)

		if isinstance(real_person, Student):

			if Student.objects.get(pk=local_person.id):

				local_student = get_object_or_404 (Student, pk=local_person.id)
				local_student_courses = local_student.active_courses.all().order_by('-starting_date')

				course_list = Course.objects.all().order_by('-starting_date')[:10]

				total_xp = local_student.xp
				current_level = calculate_level(total_xp)


				#####
				# Check for avoid a crash when the image doesn't exist
		
				if not os.path.isfile(settings.MEDIA_ROOT +str(local_student.image)):
					local_student.image = ""

				url = 'course_listing.html'

				html = prerender_nav(local_student, url, current_level, settings, request)

				notifications_script = prerender_notifications(local_student)

				context = { 'local_student' : local_student,
							'local_student_courses': local_student_courses,
				   			'course_list': course_list,
				   			'SUNRISE_URL': settings.SUNRISE_URL,
				   			'notifications_content': notifications_script,
				   			'navbar_content': html }
			
			return render(request, 'qubalapp/course_listing.html', context)


		elif isinstance(real_person, Teacher):

			if Teacher.objects.get(pk=local_person.id):

				local_teacher = get_object_or_404(Teacher, pk=local_person.id)
				total_xp = local_teacher.xp
				current_level = calculate_level(total_xp)
				#####
				# Check for avoid a crash when the image doesn't exist
				if not os.path.isfile(settings.MEDIA_ROOT +str(local_teacher.image)):
					local_teacher.image = ""

				authored_course_list = Course.objects.filter(author=local_person.id)
				not_authored_course_list = Course.objects.exclude(author=local_person.id)



				url = 'course_listing.html'

				html = prerender_nav(local_teacher, url, current_level, settings, request)


				context = { 'local_teacher' : local_teacher,
							'authored_course_list' : authored_course_list,
							'not_authored_course_list' : not_authored_course_list,
							'SUNRISE_URL': settings.SUNRISE_URL,
							'navbar_content' : html	}

			return render(request, 'qubalapp/course_listing_teacher.html', context)



		
	else:
		return HttpResponseRedirect(settings.SUNRISE_URL+"landing/")


def quest_listing(request):

	if request.user.is_authenticated():

		local_user = request.user

		real_person = Person.objects.get_subclass(user=local_user.id)
		
		# If local_person is a Student
		if isinstance(real_person, Student):
					
			local_student = get_object_or_404(Student, pk=local_user.id)
			
			# We get the xp to calculate the current level for the navbar			
			total_xp = local_student.xp
			current_level = calculate_level(total_xp) 

			# We get all the courses where the student is enrolled.
			local_student_active_courses_list = local_student.active_courses.all().order_by('id')
			
			local_student_quests_completed_list = local_student.quests_completed.all().order_by('id')

			local_student_quests_status = Quest_Status.objects.filter(student=local_student.user_id).order_by('started_on_date')

			if not os.path.isfile(settings.MEDIA_ROOT +str(local_student.image)):
				local_student.image = ""

			url = 'quest_listing.html'

			html = prerender_nav(local_student, url, current_level, settings, request)

			context = { 'student' : local_student,
				   		'current_level' : current_level,
				   		'local_student_quests_status' : local_student_quests_status,
				   		'local_student_quests_completed_list': local_student_quests_completed_list,
				   		'local_student_active_courses_list': local_student_active_courses_list, 
				   		'SUNRISE_URL': settings.SUNRISE_URL,
				   		'navbar_content': html }

			return render(request, 'qubalapp/quest_listing.html', context)
		
		elif isinstance(real_person, Teacher):

			




			return HttpResponseRedirect(settings.SUNRISE_URL+"course_listing/")

	else:
		
		return HttpResponseRedirect(settings.SUNRISE_URL+"landing/")


def course(request, course_id):

	if request.user.is_authenticated():

		local_user = request.user

		real_person = Person.objects.get_subclass(user=local_user.id)
	
		if isinstance(real_person, Student):

			local_student = get_object_or_404 (Student, pk=local_user.id)

			total_xp = local_student.xp
			current_level = calculate_level(total_xp)

			course = get_object_or_404 (Course, pk=course_id)


			if not os.path.isfile(settings.MEDIA_ROOT +str(local_student.image)):
				local_student.image = ""

	
			quest_status_list = Quest_Status.objects.filter(student=local_student).all()

			quests_started = ''
			for quest_started in quest_status_list:
				quests_started += str(quest_started.quest)


			url = 'course.html'

			html = prerender_nav(local_student, url, current_level, settings, request)

			context = { 'navbar_content': html,
						'course' : course,
						'quests_started': quests_started,
						'SUNRISE_URL': settings.SUNRISE_URL, 
						 }

			return render(request, 'qubalapp/course.html', context)


	else:

		return HttpResponseRedirect(settings.SUNRISE_URL+"landing/")


def quest_started(request):

	local_user = request.user
	local_student = get_object_or_404 (Student, pk=local_user.id)

	quest_id = request.POST.get('quest_id_sent')
	quest = Quest.objects.get(id=quest_id)

	quest_status_exist = Quest_Status.objects.filter(student=local_student, quest=quest).count()

	if (quest_status_exist == 0):
		qubal_init.create_quest_status(local_student, quest)
		action.send(request.user, verb='action_quest_start', description='Quest started!', target=quest, mostrado='no')

	
	course_with_that_quest = get_object_or_404(Course, has_quests=quest_id)
	return  HttpResponseRedirect("/course/"+ str(course_with_that_quest.id))

def task(request, task_id):

	if request.user.is_authenticated():

		local_user = request.user

		real_person = Person.objects.get_subclass(user=local_user.id)
	
		if isinstance(real_person, Student):

			local_student = get_object_or_404 (Student, pk=local_user.id)

			total_xp = local_student.xp
			current_level = calculate_level(total_xp)

			real_task = Task.objects.get_subclass(id=task_id)

			# assign_task_to_student(local_student)

			# Comprobamos de que instancia es la task, tipo video, deliverable o quiz
			if isinstance(real_task, Task_Video):
				task = get_object_or_404 (Task_Video, pk=task_id)
			elif isinstance(real_task, Task_Deliverable):
				task = get_object_or_404 (Task_Deliverable, pk=task_id)
			elif isinstance(real_task, Task_Quiz):
				task = get_object_or_404 (Task_Quiz, pk=task_id)
				

			has_material_list = task.has_material.all()
			has_support_material_list = task.has_support_material.all()

			# Comprobamos el numero de task_status para saber si existe o no ese task status en concreto	
			task_status_exist = Task_Status.objects.filter(student=local_student, task=task).count()

			challenge = get_object_or_404(Challenge, has_tasks=task_id)
			challenge_status_exist = Challenge_Status.objects.filter(student=local_student, challenge=challenge).count()

			# if (task_status_exist == 0):
			# 	# Si no existe la task_status inicializamos task_status pasandole el student y task
			# 	qubal_init.create_task_status(local_student, task)
			# 	action.send(request.user, verb='action_task_start', description='Task started!', target=task, mostrado='no')
			# elif (challenge_status_exist == 0) and (task_status_exist == 0):
			# 	qubal_init.create_task_status(local_student, task)
			# 	qubal_init.create_challenge_status(local_student, challenge)
			# 	action.send(request.user, verb='action_task_start', description='Task started!', target=task, mostrado='no')
			# 	action.send(request.user, verb='action_challenge_start', description='Challenge started!', target=challenge, mostrado='no')


			if (challenge_status_exist == 0) and (task_status_exist == 0):

				qubal_init.create_task_status(local_student, task)
				qubal_init.create_challenge_status(local_student, challenge)
				action.send(request.user, verb='action_task_start', description='Task started!', target=task, mostrado='no')
				action.send(request.user, verb='action_challenge_start', description='Challenge started!', target=challenge, mostrado='no')

			elif (task_status_exist == 0) and (challenge_status_exist != 0):
				# Si no existe la task_status inicializamos task_status pasandole el student y task
				qubal_init.create_task_status(local_student, task)
				action.send(request.user, verb='action_task_start', description='Task started!', target=task, mostrado='no')

			task_status = get_object_or_404(Task_Status, student=local_student, task=task)

			challenge_with_that_task = get_object_or_404(Challenge, has_tasks=task_id)
			quest_with_that_challenge = get_object_or_404(Quest, has_challenges=challenge_with_that_task.id)
			course_with_that_quest = get_object_or_404(Course, has_quests=quest_with_that_challenge.id)

			# Condicion para ver si el estudiante tiene foto o no y que la aplicacion no de error
			if not os.path.isfile(settings.MEDIA_ROOT +str(local_student.image)):
				local_student.image = ""

			url = 'task.html'

			html = prerender_nav(local_student, url, current_level, settings, request)

			notifications_script = prerender_notifications(local_student)

			context = { 'navbar_content': html,
						'task_status': task_status,
						'task': task,
						'challenge': challenge_with_that_task,
						'quest' : quest_with_that_challenge,
						'course' : course_with_that_quest,
						'notifications_content': notifications_script,
						'deliverable_form': Deliverable_Form(),
						'task_material_list': has_material_list,
						'task_support_material_list': has_support_material_list,
						'SUNRISE_URL': settings.SUNRISE_URL,
						}
						
						 

			return render(request, 'qubalapp/task.html', context)

	else:

		return HttpResponseRedirect(settings.SUNRISE_URL+"landing/")


def task_completed (request):

	local_user = request.user
	local_student = get_object_or_404 (Student, pk=local_user.id)

	task_id = request.POST.get('task_sent')
	real_task = Task.objects.get_subclass(id=task_id)

	# Comprobamos de que instancia es la task, tipo video, deliverable o quiz
	if isinstance(real_task, Task_Video):
		task = get_object_or_404 (Task_Video, pk=task_id)
		go_to_process = True

	elif isinstance(real_task, Task_Deliverable):
		task = get_object_or_404 (Task_Deliverable, pk=task_id)

		# we get the real person to point to the educational document
		real_person = Person.objects.get_subclass(user=local_user.id)
	
		deliverable_file = request.FILES.get('deliverable_button')
		qubal_init.create_educational_document(local_student, deliverable_file)

		f = Educational_Document.objects.get(is_from_person=real_person, name=deliverable_file)

		task.deliverables = f
		task.save()
		go_to_process = True
		
	elif isinstance(real_task, Task_Quiz):
		task = get_object_or_404 (Task_Quiz, pk=task_id)

		answer = request.POST.get('radioButton')

		if (answer == task.quiz.right_answer.text):
			go_to_process = True
		else:
			go_to_process = False
			action.send(request.user, verb='action_finish_task', description='Wrong answer, you dont have any more tries! to cabron...', target=task, mostrado='no')

	if go_to_process:
		qubal_reward.process_task_reward(local_student, task)
		reward_xp = qubal_reward.return_task_xp(task)
		# Salvamos la "accion" para registrar que el student ha completado una task y darle puntos
		action.send(request.user, verb='action_finish_task', description='Task completed! +'+ str(reward_xp) +'XP', target=task, mostrado='no')

	ts = Task_Status.objects.get(student=local_student, task=task)
	
	ts.completed_on_date=datetime.datetime.now()
	ts.send_for_evaluation=True
	ts.completed=True

	ts.save()

	# We check that all the challenge tasks are completed.
	student_challenge = Challenge.objects.get(has_tasks=task.id)
	qubal_check.check_challenge(local_student, student_challenge)

	student_quest = Quest.objects.get(has_challenges=student_challenge.id)
	student_course = Course.objects.get(has_quests=student_quest.id)

	return  HttpResponseRedirect("/task/"+ task_id)


def enroll(request):

	local_user = request.user
	
	real_person = Person.objects.get_subclass(user=local_user.id)
	local_student = get_object_or_404 (Student, pk=local_user.id)
	course_id = request.POST.get('course_id')

	qubal_init.assign_course_to_student(local_student, course_id)
	course = Course.objects.get(pk=course_id)

	action.send(request.user, verb='action_course_start', description='You are enrolled in a new adventure! ' + str(course.name), target=course, mostrado='no')

	return HttpResponseRedirect(settings.SUNRISE_URL+"course_listing/")




#############
# ORacle views

def oracle_landing(request):


	context = {'QUBAL_VERSION': settings.QUBAL_VERSION,
			   'form': Oracle_Form(), 
			   }

	return render(request, 'qubalapp/oracle_landing.html', context)


def oracle_process(request):

	#pillar el user de la llamada
	
	local_user = request.user
	
	student_class = request.POST.get('character_class_choice')

	qubal_init.class_power_init(local_user,student_class)

	action.send(local_user, verb='action_use_the_oracle', description='Your class has been reset to: ' + str(student_class), target=local_user, mostrado='no')

	return HttpResponseRedirect(settings.SUNRISE_URL)


def quiz_landing(request):

	context = {'QUBAL_VERSION': settings.QUBAL_VERSION,
				#'form': ExampleForm(),
			   'quiz_form': Quiz_Form(), 
			   }

	return render(request, 'qubalapp/quiz_landing.html', context)



################
################
################
## Temporary views for Qubal SPEX

def spex_index(request):

	if request.user.is_authenticated():

		local_user = request.user

		# we need to check the type of local_person (Student or Teacher)
		local_person = request.user

		# we do it with the fancy django_model_utils lib
		# we ask the parent class Person which kind of instance is the user logged_in (teacher or student)

		# Check for avoiding a crash on the user not being a person YET!
		if Person.objects.filter(user=local_person.id):

			# We check the login_rule to add XP to the user if last action is logged.
			qubal_rules.login_rule(local_user)

			real_person = Person.objects.get_subclass(user=local_person.id)

			# We ask if it is student or not
			
			if isinstance(real_person, Student):
				# we know the user is a student

				# Student.objects.get(pk=local_person.id):

				local_student = get_object_or_404(Student, pk=local_person.id)

				total_xp = local_student.xp

				current_xp = qubal_xp.calculate_current_xp(total_xp)

				current_level = qubal_xp.calculate_level(total_xp) 

				xp_needed = Rules_Xp_per_Level.objects.get(level=current_level).xp 

				teams_list = local_student.is_team_member_of.all()[:3]

				achievement_list = local_student.has_achievements.all().order_by('id')
				achievement_list = achievement_list.reverse()[1:4]

				last_achievement_list = local_student.has_achievements.all().order_by('id')
				last_achievement_list = last_achievement_list.reverse()[:1]

				# We get the specific student powers and assign it to the student_powers var
				# to send it as context to the index.html
				
				student_powers = local_student.has_powers

				percent = current_level * 10

				percent_xp = total_xp * 100 / qubal_xp.sumatorium_levels()

				if current_xp != 0:
					percent_current_xp = current_xp * 100 / xp_needed	
				else:
					percent_current_xp = 0


				# Check for avoid a crash when the image doesn't exist
				
				if not os.path.isfile(settings.MEDIA_ROOT +str(local_student.image)):
		
					local_student.image = ""

				next_level = current_level + 1
				next_level_at = xp_needed - current_xp


				notifications_script = prerender_notifications(local_student)
				
				admin_logout_block = prerender_admin_logout()
				navbar_top_block = prerender_navbar_top()
				navbar_bottom_block = prerender_navbar_bottom()

				footer_block = prerender_footer()


				latest_activity_deadlines_list = qubal_latest_activity.calculate_deadlines(local_student)


				context = {'student' : local_student,
					   'current_level' : current_level,
					   'current_xp' : current_xp,
					   'xp_needed_for_level_up' : xp_needed,
					   'total_xp' : total_xp,
					   'student_teams_list' : teams_list,
					   'local_person_id' : local_person.id,
					   'student_achievement_list' : achievement_list,
					   'percent' : percent,
					   'percent_current_xp' : percent_current_xp,
					   'last_achievement_list': last_achievement_list,
					   'next_level_at' : next_level_at,
					   'next_level':next_level,
					   'student_powers': student_powers,
					   'admin_logout_block': admin_logout_block,
					   'navbar_top_block': navbar_top_block,
					   'navbar_bottom_block': navbar_bottom_block,
					   'footer_block': footer_block,
					   'notifications_content': notifications_script,
					   'latest_activity_deadlines_list': latest_activity_deadlines_list,
					   'SUNRISE_URL': settings.SUNRISE_URL,
					   'QUBAL_VERSION': settings.QUBAL_VERSION }

			


				return render(request, 'spex_qubal/index.html', context)


			elif isinstance(real_person, Teacher):
				# we know the user is a teacher


				local_teacher = get_object_or_404(Teacher, pk=local_person.id)

				#####
				# Check for avoid a crash when the image doesn't exist
				
				if not os.path.isfile(settings.MEDIA_ROOT +str(local_teacher.image)):
		
					local_teacher.image = ""
				
				#####

				total_xp = local_teacher.xp

				current_level = calculate_level(total_xp) 

				footer_block = prerender_footer()

				context = { 'teacher' : local_teacher,
							'SUNRISE_URL': settings.SUNRISE_URL,
							'footer_block': footer_block,
					   		'QUBAL_VERSION': settings.QUBAL_VERSION }

				return render(request, 'spex_qubal/index_teacher.html', context)

			else:
				# we know you're a user, but you've no type!

				return render(request, 'Not yet done...and you are an unknown entity sneaking around!!!!!')		

		else:

			# we know you're a user, and not yet decided if student or teacher
			# return  HttpResponse("You should choose what to be!!! you're just thi user: " + local_user.username )		

			# we temporarily (for the moment) redirect to create Student if you're not decided yet (only a user)
			# still we have to implement a switch for the teacher or use the old pen and paper tactic...
			return HttpResponseRedirect( settings.SUNRISE_URL  + "register_character_landing/")


		
	else: #Drop him to landing if he's not authenticated
		return HttpResponseRedirect( settings.SUNRISE_URL  + "landing/")


#############
# ORacle views

def spex_oracle_landing(request):


	context = {'QUBAL_VERSION': settings.QUBAL_VERSION,
			   'form': Spex_Oracle_Form(), 
			   }

	return render(request, 'spex_qubal/spex_oracle_landing.html', context)


def spex_oracle_process(request):

	#pillar el user de la llamada
	
	local_user = request.user
	
	student_class = request.POST.get('character_class_choice')

	qubal_init.class_power_init(local_user,student_class)

	action.send(local_user, verb='action_use_the_oracle', description='Your class has been reset to: ' + str(student_class), target=local_user, mostrado='no')

	return HttpResponseRedirect(settings.SUNRISE_URL+"spex_/")



def spex_course_listing(request):

	if request.user.is_authenticated():

		local_person = request.user

		real_person = Person.objects.get_subclass(user=local_person.id)

		if isinstance(real_person, Student):

			if Student.objects.get(pk=local_person.id):

				local_student = get_object_or_404 (Student, pk=local_person.id)
				local_student_courses = local_student.active_courses.all().order_by('-starting_date')

				course_list = Course.objects.all().order_by('-starting_date')[:10]

				total_xp = local_student.xp
				current_level = calculate_level(total_xp)


				#####
				# Check for avoid a crash when the image doesn't exist
		
				if not os.path.isfile(settings.MEDIA_ROOT +str(local_student.image)):
					local_student.image = ""

				admin_logout_block = prerender_admin_logout()
				navbar_top_block = prerender_navbar_top()
				navbar_bottom_block = prerender_navbar_bottom()

				footer_block = prerender_footer()

				notifications_script = prerender_notifications(local_student)

				context = { 'local_student' : local_student,
							'local_student_courses': local_student_courses,
				   			'course_list': course_list,
				   			'SUNRISE_URL': settings.SUNRISE_URL,
				   			'notifications_content': notifications_script,
				   			'admin_logout_block': admin_logout_block,
							'navbar_top_block': navbar_top_block,
							'navbar_bottom_block': navbar_bottom_block,
							'footer_block': footer_block }
			
			return render(request, 'spex_qubal/spex_course_listing.html', context)


		elif isinstance(real_person, Teacher):

			if Teacher.objects.get(pk=local_person.id):

				local_teacher = get_object_or_404(Teacher, pk=local_person.id)
				total_xp = local_teacher.xp
				current_level = calculate_level(total_xp)
				#####
				# Check for avoid a crash when the image doesn't exist
				if not os.path.isfile(settings.MEDIA_ROOT +str(local_teacher.image)):
					local_teacher.image = ""

				authored_course_list = Course.objects.filter(author=local_person.id)
				not_authored_course_list = Course.objects.exclude(author=local_person.id)



				url = 'course_listing.html'

				html = prerender_nav(local_teacher, url, current_level, settings, request)


				context = { 'local_teacher' : local_teacher,
							'authored_course_list' : authored_course_list,
							'not_authored_course_list' : not_authored_course_list,
							'SUNRISE_URL': settings.SUNRISE_URL,
							'navbar_content' : html	}

			return render(request, 'spex_qubal/spex_course_listing.html', context)



		
	else:
		return HttpResponseRedirect(settings.SUNRISE_URL+"landing/")

def spex_teams(request):

	if request.user.is_authenticated():

		local_person = request.user

		real_person = real_person = Person.objects.get_subclass(user=local_person.id)

		if isinstance(real_person,Student):

			if Student.objects.get(pk=local_person.id):

				local_student = get_object_or_404 (Student, pk=local_person.id)
				local_student_teams = local_student.is_team_member_of.all().order_by('id')

				total_xp = local_student.xp
				current_level = calculate_level(total_xp)

				#####
				# Check for avoid a crash when the image doesn't exist
		
				if not os.path.isfile(settings.MEDIA_ROOT +str(local_student.image)):
					local_student.image = ""

				admin_logout_block = prerender_admin_logout()
				navbar_top_block = prerender_navbar_top()
				navbar_bottom_block = prerender_navbar_bottom()

				footer_block = prerender_footer()

				context = { 'local_student' : local_student,
							'local_student_teams': local_student_teams,
							'SUNRISE_URL': settings.SUNRISE_URL,
							'admin_logout_block': admin_logout_block,
							'navbar_top_block': navbar_top_block,
							'navbar_bottom_block': navbar_bottom_block,
							'footer_block': footer_block
				   		  }

			return render(request, 'spex_qubal/spex_teams.html', context)

		elif isinstance(real_person, Teacher):

			if Teacher.objects.get(pk=local_person.id):

				local_teacher = get_object_or_404(Teacher, pk=local_person.id)
				
				local_teacher_mentor_teams = local_teacher.is_tutor_of_teams.all()

				# We get the xp to calculate the current level for the navbar			
				total_xp = local_teacher.xp
				current_level = calculate_level(total_xp)
				#####
				# Check for avoid a crash when the image doesn't exist
		
				if not os.path.isfile(settings.MEDIA_ROOT +str(local_teacher.image)):
					local_teacher.image = ""

				context = { 'local_teacher' : local_teacher,
							'local_teacher_mentor_teams': local_teacher_mentor_teams
				   		  }

			return render(request, 'qubalapp/teams_teacher.html', context)
		else:
			HttpResponse('oh oh what are you doing here? mister: '+real_person.name)

	else:
		return HttpResponseRedirect(settings.SUNRISE_URL+"landing/")


def spex_quests(request):

	if request.user.is_authenticated():

		local_user = request.user

		real_person = Person.objects.get_subclass(user=local_user.id)
		
		# If local_person is a Student
		if isinstance(real_person, Student):
					
			local_student = get_object_or_404(Student, pk=local_user.id)
			
			# We get the xp to calculate the current level for the navbar			
			total_xp = local_student.xp
			current_level = calculate_level(total_xp) 

			# We get all the courses where the student is enrolled.
			local_student_active_courses_list = local_student.active_courses.all().order_by('id')
			
			local_student_quests_completed_list = local_student.quests_completed.all().order_by('id')

			local_student_quests_status = Quest_Status.objects.filter(student=local_student.user_id).order_by('started_on_date')

			if not os.path.isfile(settings.MEDIA_ROOT +str(local_student.image)):
				local_student.image = ""

			admin_logout_block = prerender_admin_logout()
			navbar_top_block = prerender_navbar_top()
			navbar_bottom_block = prerender_navbar_bottom()

			footer_block = prerender_footer()

			context = { 'student' : local_student,
				   		'current_level' : current_level,
				   		'local_student_quests_status' : local_student_quests_status,
				   		'local_student_quests_completed_list': local_student_quests_completed_list,
				   		'local_student_active_courses_list': local_student_active_courses_list, 
				   		'SUNRISE_URL': settings.SUNRISE_URL,
				   		'admin_logout_block': admin_logout_block,
						'navbar_top_block': navbar_top_block,
						'navbar_bottom_block': navbar_bottom_block,
						'footer_block': footer_block 
						}

			return render(request, 'spex_qubal/spex_quest_listing.html', context)
		
		elif isinstance(real_person, Teacher):

			




			return HttpResponseRedirect(settings.SUNRISE_URL+"course_listing/")

	else:
		
		return HttpResponseRedirect(settings.SUNRISE_URL+"landing/")


def spex_profile(request):	

	if request.user.is_authenticated():

		local_user = request.user

		real_person = Person.objects.get_subclass(user=local_user.id)
		
		# If local_person is a Student
		if isinstance(real_person, Student):
					
			local_student = get_object_or_404(Student, pk=local_user.id)
			
			# We get the xp to calculate the current level for the navbar			
			total_xp = local_student.xp
			current_level = calculate_level(total_xp) 

			# We get all the courses where the student is enrolled.
			local_student_active_courses_list = local_student.active_courses.all().order_by('id')
			
			local_student_quests_completed_list = local_student.quests_completed.all().order_by('id')

			local_student_quests_status = Quest_Status.objects.filter(student=local_student.user_id).order_by('started_on_date')

			if not os.path.isfile(settings.MEDIA_ROOT +str(local_student.image)):
				local_student.image = ""

			admin_logout_block = prerender_admin_logout()
			navbar_top_block = prerender_navbar_top()
			navbar_bottom_block = prerender_navbar_bottom()

			footer_block = prerender_footer()

			context = { 'student' : local_student,
				   		'current_level' : current_level,
				   		'local_student_quests_status' : local_student_quests_status,
				   		'local_student_quests_completed_list': local_student_quests_completed_list,
				   		'local_student_active_courses_list': local_student_active_courses_list, 
				   		'SUNRISE_URL': settings.SUNRISE_URL,
				   		'admin_logout_block': admin_logout_block,
						'navbar_top_block': navbar_top_block,
						'navbar_bottom_block': navbar_bottom_block,
						'footer_block': footer_block
						 }

			return render(request, 'spex_qubal/spex_profile.html', context)
		
		elif isinstance(real_person, Teacher):

			




			return HttpResponseRedirect(settings.SUNRISE_URL+"course_listing/")

	else:
		
		return HttpResponseRedirect(settings.SUNRISE_URL+"landing/")





#####################
#####################
##	JAWA views

def jawa_index(request):

	if request.user.is_authenticated():

		local_user = request.user

		# we need to check the type of local_person (Student or Teacher)
		local_person = request.user

		# we do it with the fancy django_model_utils lib
		# we ask the parent class Person which kind of instance is the user logged_in (teacher or student)

		# Check for avoiding a crash on the user not being a person YET!
		if Person.objects.filter(user=local_person.id):

			# We check the login_rule to add XP to the user if last action is logged.
			qubal_rules.login_rule(local_user)

			real_person = Person.objects.get_subclass(user=local_person.id)

			# We ask if it is student or not
			
			if isinstance(real_person, Student):
				# we know the user is a student

				# Student.objects.get(pk=local_person.id):

				local_student = get_object_or_404(Student, pk=local_person.id)

				total_xp = local_student.xp

				current_xp = qubal_xp.calculate_current_xp(total_xp)

				current_level = qubal_xp.calculate_level(total_xp) 

				xp_needed = Rules_Xp_per_Level.objects.get(level=current_level).xp 

				teams_list = local_student.is_team_member_of.all()[:3]

				achievement_list = local_student.has_achievements.all().order_by('id')
				achievement_list = achievement_list.reverse()[1:4]

				last_achievement_list = local_student.has_achievements.all().order_by('id')
				last_achievement_list = last_achievement_list.reverse()[:1]

				# We get the specific student powers and assign it to the student_powers var
				# to send it as context to the index.html
				
				student_powers = local_student.has_powers

				percent = current_level * 10

				percent_xp = total_xp * 100 / qubal_xp.sumatorium_levels()

				if current_xp != 0:
					percent_current_xp = current_xp * 100 / xp_needed	
				else:
					percent_current_xp = 0


				# Check for avoid a crash when the image doesn't exist
				
				if not os.path.isfile(settings.MEDIA_ROOT +str(local_student.image)):
		
					local_student.image = ""

				next_level = current_level + 1
				next_level_at = xp_needed - current_xp





				notifications_script = prerender_notifications(local_student)
				
				# admin_logout_block = prerender_admin_logout()
				# navbar_top_block = prerender_navbar_top()
				# navbar_bottom_block = prerender_navbar_bottom()

				footer_block = prerender_footer()


				latest_activity_deadlines_list = qubal_latest_activity.calculate_deadlines(local_student)

				latest_twenty_actions = qubal_latest_activity.calculate_your_journey(local_student)

				

				profile_widget_block = prerender_profile_widget(local_student)

				nexus_menu_block = prerender_nexus_menu(local_student)

				classtype_color = prerender_classtype_color(local_student)




				# context = {'student' : local_student,
				# 	   'current_level' : current_level,
				# 	   'current_xp' : current_xp,
				# 	   'xp_needed_for_level_up' : xp_needed,
				# 	   'total_xp' : total_xp,
				# 	   'student_teams_list' : teams_list,
				# 	   'local_person_id' : local_person.id,
				# 	   'student_achievement_list' : achievement_list,
				# 	   'percent' : percent,
				# 	   'percent_current_xp' : percent_current_xp,
				# 	   'last_achievement_list': last_achievement_list,
				# 	   'next_level_at' : next_level_at,
				# 	   'next_level':next_level,
				# 	   'student_powers': student_powers,
				# 	   'admin_logout_block': admin_logout_block,
				# 	   'navbar_top_block': navbar_top_block,
				# 	   'navbar_bottom_block': navbar_bottom_block,
				# 	   'footer_block': footer_block,
				# 	   'notifications_content': notifications_script,
				# 	   'latest_activity_deadlines_list': latest_activity_deadlines_list,
				# 	   'SUNRISE_URL': settings.SUNRISE_URL,
				# 	   'QUBAL_VERSION': settings.QUBAL_VERSION }

				context ={
						'student' : local_student,
						'SUNRISE_URL': settings.SUNRISE_URL,
					    'QUBAL_VERSION': settings.QUBAL_VERSION,
					    'profile_widget': profile_widget_block,
					    'nexus_menu_block' : nexus_menu_block,
					    'latest_activity_deadlines_list': latest_activity_deadlines_list,
					    'percent' : percent,
					    'notifications_content': notifications_script,
					    'classtype_color': classtype_color
						}


				return render(request, 'jawa_qubal/index.html', context)


			# elif isinstance(real_person, Teacher):
			# 	# we know the user is a teacher


			# 	local_teacher = get_object_or_404(Teacher, pk=local_person.id)

			# 	#####
			# 	# Check for avoid a crash when the image doesn't exist
				
			# 	if not os.path.isfile(settings.MEDIA_ROOT +str(local_teacher.image)):
		
			# 		local_teacher.image = ""
				
			# 	#####

			# 	total_xp = local_teacher.xp

			# 	current_level = calculate_level(total_xp) 

			# 	footer_block = prerender_footer()

			# 	context = { 'teacher' : local_teacher,
			# 				'SUNRISE_URL': settings.SUNRISE_URL,
			# 				'footer_block': footer_block,
			# 		   		'QUBAL_VERSION': settings.QUBAL_VERSION }

			# 	return render(request, 'spex_qubal/index_teacher.html', context)

			else:
				# we know you're a user, but you've no type!

				return render(request, 'Not yet done...and you are an unknown entity sneaking around!!!!!')		

		else:

			# we know you're a user, and not yet decided if student or teacher
			# return  HttpResponse("You should choose what to be!!! you're just thi user: " + local_user.username )		

			# we temporarily (for the moment) redirect to create Student if you're not decided yet (only a user)
			# still we have to implement a switch for the teacher or use the old pen and paper tactic...
			return HttpResponseRedirect( settings.SUNRISE_URL  + "register_character_landing/")

	else:
		return HttpResponseRedirect(settings.SUNRISE_URL+"landing/")



# def jawa_profile_widget(request):	

# 	if request.user.is_authenticated():

# 		local_user = request.user

# 		real_person = Person.objects.get_subclass(user=local_user.id)
		
# 		# If local_person is a Student
# 		if isinstance(real_person, Student):
					
# 			local_student = get_object_or_404(Student, pk=local_user.id)
			
# 			# We get the xp to calculate the current level for the navbar			
# 			total_xp = local_student.xp
# 			current_level = calculate_level(total_xp) 

# 			background_img = prerender_profile_widget_background(local_student)
# 			print str(background_img) + "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<"
# 			context = { 
# 						'student' : local_student,
# 			    		'current_level' : current_level,
# 			    		'background_img': background_img
# 			    	  }

# 			return render(request, 'jawa_qubal/jawa_profile_widget.html', context)

# 	else:
		
# 		return HttpResponseRedirect(settings.SUNRISE_URL+"landing/")


def jawa_powers(request):

	if request.user.is_authenticated():

		local_user = request.user

		real_person = Person.objects.get_subclass(user=local_user.id)
		
		# If local_person is a Student
		if isinstance(real_person, Student):
					
			local_student = get_object_or_404(Student, pk=local_user.id)
			
			# We get the xp to calculate the current level for the navbar			
			total_xp = local_student.xp
			current_level = calculate_level(total_xp) 

			profile_widget_block = prerender_profile_widget(local_student)
			nexus_menu_block = prerender_nexus_menu(local_student)
			classtype_color = prerender_classtype_color(local_student)

			context = { 
						'student' : local_student,
						'SUNRISE_URL': settings.SUNRISE_URL,
					    'QUBAL_VERSION': settings.QUBAL_VERSION,
					    'profile_widget': profile_widget_block,
					    'nexus_menu_block' : nexus_menu_block,
					    'classtype_color': classtype_color
			    	  }

			return render(request, 'jawa_qubal/jawa_powers.html', context)

	else:
		
		return HttpResponseRedirect(settings.SUNRISE_URL+"landing/")


def jawa_quests(request):

	if request.user.is_authenticated():

		local_user = request.user

		real_person = Person.objects.get_subclass(user=local_user.id)
		
		# If local_person is a Student
		if isinstance(real_person, Student):
					
			local_student = get_object_or_404(Student, pk=local_user.id)
			
			# We get the xp to calculate the current level for the navbar			
			total_xp = local_student.xp
			current_level = calculate_level(total_xp) 

			profile_widget_block = prerender_profile_widget(local_student)


			classtype_color = prerender_classtype_color(local_student)

			local_student_courses = local_student.active_courses.all().order_by('-starting_date')

			course_list = Course.objects.all().order_by('-starting_date')[:10]

			nexus_menu_block = prerender_nexus_menu(local_student)


			context = { 
						'student' : local_student,
						'SUNRISE_URL': settings.SUNRISE_URL,
					    'QUBAL_VERSION': settings.QUBAL_VERSION,
					    'profile_widget': profile_widget_block,
					    'nexus_menu_block' : nexus_menu_block,
					    'classtype_color': classtype_color,
					    'local_student_courses': local_student_courses,
				   		'course_list': course_list
			    	  }

			return render(request, 'jawa_qubal/jawa_quests.html', context)

	else:
		
		return HttpResponseRedirect(settings.SUNRISE_URL+"landing/")	

