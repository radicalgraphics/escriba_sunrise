
import os
import sys
from django.template import Context, Template
from actstream.models import Action
from django.shortcuts import render, get_object_or_404, render_to_response
import qubal_xp
# Used by the DEBUG menu.
from django.contrib.auth.models import User
from qubalapp.models import Student, Teacher, Team, Course, Quest, Challenge, Task, Achievement, Person, Rules_Xp_per_Level
import qubal_rules, qubal_init, qubal_reward, qubal_xp
from django.conf import settings
from django.http import HttpResponse, HttpResponseRedirect
from qubal_forms import Spex_Oracle_Form

# libs for the DEBUG menu end.

# ============================================
# This fucntion it's only for DEBUG purposes =
# ============================================
def prerender_debug():
	# We check if we are in the webserver or localhost
	debug_placeholder = settings.STATIC_URL
	if debug_placeholder == 'http://127.0.0.1:8000/static/' or debug_placeholder == 'http://localhost:8000/static/':
		debug_placeholder = '<h1><i class="icon-coffee" title="Localhost" rel="tooltip-left"></i></h1>' + '<br>'
	else:
		debug_placeholder = '<h1><i class="icon-sun" title="Sunrise" rel="tooltip-left"></i></h1>' + '<br>'

	# We check the total Users
	users_list = User.objects.all().count()
	debug_placeholder += '<i class="icon-male debug-icons" title="Users" rel="tooltip-left"> : ' + str(users_list) + '</i><br>'

	# We check the Total Students
	students_list = Student.objects.all().count()
	debug_placeholder += '<i class="icon-gamepad debug-icons" title="Students" rel="tooltip-left"> : ' + str(students_list) + '</i><br>'

	# We check the Total Teachers
	teachers_list = Teacher.objects.all().count()
	debug_placeholder += '<i class="icon-book debug-icons" title="Teachers" rel="tooltip-left"> : ' + str(teachers_list) + '</i><br>'

	# We check the Total Teams
	teams_list = Team.objects.all().count()
	debug_placeholder += '<i class="icon-rocket debug-icons" title="Teams" rel="tooltip-left"> : ' + str(teams_list) + '</i><br>'

	# We check the Total Courses
	courses_list = Course.objects.all().count()
	debug_placeholder += '<i class="icon-reorder debug-icons" title="Courses" rel="tooltip-left"> : ' + str(courses_list) + '</i><br>'

	# We check the Total Quests
	quests_list = Quest.objects.all().count()
	debug_placeholder += '<i class="icon-shield debug-icons" title="Quests" rel="tooltip-left"> : ' + str(quests_list) + '</i><br>'	

	# We check the Total Challenges
	challenges_list = Challenge.objects.all().count()
	debug_placeholder += '<i class="icon-trophy debug-icons" title="Challenges" rel="tooltip-left"> : ' + str(challenges_list) + '</i><br>'

	# We check the Total Tasks
	tasks_list = Task.objects.all().count()
	debug_placeholder += '<i class="icon-puzzle-piece debug-icons" title="Tasks" rel="tooltip-left"> : ' + str(tasks_list) + '</i><br>'

	# We check the Total Achievements
	achievements_list = Achievement.objects.all().count()
	debug_placeholder += '<i class="icon-star debug-icons" title="Achievements" rel="tooltip-left"> : ' + str(achievements_list) + '</i><br>'

	return debug_placeholder

# ==================================================
# request is only necessary for the DEBUG purposes =
# the if condition is for DEBUG ====================
# the debug_placeholder var is for DEBUG purposes =
# the debug_placeholder is in index.html too ======
# the request is the views.py too to call this func=
# ==================================================
def prerender_nav(local_person, active_url, level, settings, request):

	# navbar_path = os.path.abspath('qubalapp/templates/qubalapp/navbar.inc')
	# navbar = open(navbar_path, 'r')
	# navbar_content = navbar.read()
	# navbar.close()

	if request.user.is_superuser:
		debug_placeholder = prerender_debug()
	else:
		debug_placeholder = ''

	#t = Template(navbar_content)
	
	c = Context({'student': local_person,
				 'STATIC_URL': settings.STATIC_URL,
				 'active_url': active_url,
				 'current_level': level,
				 'QUBAL_VERSION': settings.QUBAL_VERSION,
				 'SUNRISE_URL' : settings.SUNRISE_URL,
				 'debug_placeholder': debug_placeholder })
		
	html = render(request, 'qubalapp/navbar.inc', c)



	#html = t.render(c)
	
	return html


def prerender_notifications(request):

	# notifications_path = os.path.abspath('qubalapp/templates/qubalapp/notifications.inc')
	# notifications = open(notifications_path, 'r')
	# notifications_content = notifications.read()
	# notifications.close()

	#t = Template(notifications_content)

	local_person = request.user
	actions_list = Action.objects.filter(actor_object_id=local_person.id, data={'mostrado':'no'})

	c = Context({'notifications' : actions_list })

	#html = t.render(c)
	html = render(request, 'qubalapp/notifications.inc', c)
	html = str(html)
	fixed_html = html.replace("Content-Type: text/html; charset=utf-8","")

	for action in actions_list:
		action.data={'mostrado':'si'}
		action.save()
			
	

	return fixed_html


def prerender_footer():

	context_footer = {'QUBAL_VERSION': settings.QUBAL_VERSION}
	
	footer_block = render ('','spex_qubal/footer.html', context_footer)
	footer_block = str(footer_block)
	fixed_footer = footer_block.replace("Content-Type: text/html; charset=utf-8","")

	return fixed_footer


def prerender_admin_logout():

	context_admin_logout = {'QUBAL_VERSION': settings.QUBAL_VERSION,
							'SUNRISE_URL' : settings.SUNRISE_URL
						   }
	
	admin_logout_block = render ('','spex_qubal/admin_logout_menu.inc', context_admin_logout)
	admin_logout_block = str(admin_logout_block)
	fixed_admin_logout_block = admin_logout_block.replace("Content-Type: text/html; charset=utf-8","")

	return fixed_admin_logout_block


def prerender_navbar_top():

	context_navbar_top = {'QUBAL_VERSION': settings.QUBAL_VERSION,
				          'SUNRISE_URL' : settings.SUNRISE_URL
					     }
	
	navbar_top_block = render ('','spex_qubal/navbar_top_code.inc', context_navbar_top)
	navbar_top_block = str(navbar_top_block)
	fixed_navbar_top_block = navbar_top_block.replace("Content-Type: text/html; charset=utf-8","")

	return fixed_navbar_top_block


def prerender_navbar_bottom():

	context_navbar_bottom = {'QUBAL_VERSION': settings.QUBAL_VERSION,
				             'SUNRISE_URL' : settings.SUNRISE_URL
					        }
	
	navbar_bottom_block = render ('','spex_qubal/navbar_bottom_code.inc', context_navbar_bottom)
	navbar_bottom_block = str(navbar_bottom_block)
	fixed_navbar_bottom_block = navbar_bottom_block.replace("Content-Type: text/html; charset=utf-8","")

	return fixed_navbar_bottom_block



def prerender_profile_widget(request):

		local_user = request.user

		real_person = Person.objects.get_subclass(user=local_user.id)
		
		# If local_person is a Student
		if isinstance(real_person, Student):
					
			local_student = get_object_or_404(Student, pk=local_user.id)
			
			# We get the xp to calculate the current level for the navbar			
			total_xp = local_student.xp
			
			current_level = qubal_xp.calculate_level(total_xp) 

			current_xp = qubal_xp.calculate_current_xp(total_xp)

			xp_needed = Rules_Xp_per_Level.objects.get(level=current_level).xp 

			background_img = prerender_profile_widget_background(local_student)
			background_color = prerender_profile_widget_backgoround_color(local_student)

			context = { 'student' : local_student,
			    		'current_level' : current_level,
			    		'current_xp' : current_xp,
			    		'xp_needed' : xp_needed,
						'background_img': background_img,
						'background_color': background_color
			    	  }

			profile_widget_block = render (request,'jawa_qubal/jawa_profile_widget.inc', context)
			profile_widget_block = str(profile_widget_block)
			fixed_profile_widget_block = profile_widget_block.replace("Content-Type: text/html; charset=utf-8","")

			return fixed_profile_widget_block

def prerender_nexus_menu():

	context={'SUNRISE_URL' : settings.SUNRISE_URL,
			 'QUBAL_VERSION' : settings.QUBAL_VERSION}

	nexus_menu_block = render ('', 'jawa_qubal/jawa_nexus_menu.inc',context)
	nexus_menu_block = str(nexus_menu_block)
	fixed_nexus_menu_block = nexus_menu_block.replace("Content-Type: text/html; charset=utf-8","")

	return fixed_nexus_menu_block


def prerender_ajax_course_listing(request):

	if request.user.is_authenticated():

		local_person = request.user

		real_person = Person.objects.get_subclass(user=local_person.id)

		if isinstance(real_person, Student):

			if Student.objects.get(pk=local_person.id):

				local_student = get_object_or_404 (Student, pk=local_person.id)
				local_student_courses = local_student.active_courses.all().order_by('-starting_date')

				course_list = Course.objects.all().order_by('-starting_date')[:10]

				total_xp = local_student.xp
				current_level = qubal_xp.calculate_level(total_xp)


				#####
				# Check for avoid a crash when the image doesn't exist
		
				if not os.path.isfile(settings.MEDIA_ROOT +str(local_student.image)):
					local_student.image = ""

				# url = 'course_listing.html'

				# html = prerender_nav(local_student, url, current_level, settings, request)
				html = ''

				notifications_script = prerender_notifications(local_student)

				context = { 'local_student' : local_student,
							'local_student_courses': local_student_courses,
				   			'course_list': course_list,
				   			'SUNRISE_URL': settings.SUNRISE_URL,
				   			'notifications_content': notifications_script,
				   			'navbar_content': html }
			
			return render(request, 'spex_qubal/course_listing_ajax.html', context)


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



				url = 'course_listing_ajax.html'

				html = prerender_nav(local_teacher, url, current_level, settings, request)


				context = { 'local_teacher' : local_teacher,
							'authored_course_list' : authored_course_list,
							'not_authored_course_list' : not_authored_course_list,
							'SUNRISE_URL': settings.SUNRISE_URL,
							'navbar_content' : html	}

			return render(request, 'qubalapp/course_listing_teacher.html', context)



		
	else:
		return HttpResponseRedirect(settings.SUNRISE_URL+"landing/")

# ==========================================================================================

def prerender_ajax_dashboard(request):

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

				url = 'dashboard_ajax.html'
		
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

			


				return render(request, 'spex_qubal/dashboard_ajax.html', context)


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

				url = 'spex_index.html'


				html = prerender_nav(local_teacher, url, current_level, settings, request)

				context = { 'teacher' : local_teacher,
							'navbar_content': html,
							'SUNRISE_URL': settings.SUNRISE_URL,
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
			return HttpResponseRedirect("/register_character_landing/")


		
	else: #Drop him to landing if he's not authenticated
		return HttpResponseRedirect("/landing/")


def prerender_ajax_oracle(request):


	context = {'QUBAL_VERSION': settings.QUBAL_VERSION,
			   'form': Spex_Oracle_Form(), 
			   }

	return render(request, 'spex_qubal/spex_oracle_landing.html', context)

def prerender_classtype_color(local_student):

	if local_student.character_class == 'explorer':

		class_color = "style='background-color: #648f2f;'"

	elif local_student.character_class == 'inventor':

		class_color = "style='background-color: #b38c2f;'"

	elif local_student.character_class == 'unifier':

		class_color = "style='background-color: #a24a26;'"

	elif local_student.character_class == 'activist':

		class_color = "style='background-color: #378181;'"

	return class_color


def prerender_profile_widget_background(local_student):

	if local_student.character_class == 'explorer':

		class_color = "style='background: url("+ settings.STATIC_URL +"/jawa_qubal/img/profile_background_explorer.png); background-size: 260px 248px;'"

	elif local_student.character_class == 'inventor':

		class_color = "style='background: url("+ settings.STATIC_URL +"/jawa_qubal/img/profile_background_inventor.png); background-size: 260px 248px;'"

	elif local_student.character_class == 'unifier':

		class_color = "style='background: url("+ settings.STATIC_URL +"/jawa_qubal/img/profile_background_unifier.png); background-size: 260px 248px;'"

	elif local_student.character_class == 'activist':

		class_color = "style='background: url("+ settings.STATIC_URL +"/jawa_qubal/img/profile_background_activist.png); background-size: 260px 248px;'"

	return class_color


def prerender_profile_widget_backgoround_color(local_student):

	if local_student.character_class == 'explorer':

		class_color = "style='background-color: #648f2f;'"

	elif local_student.character_class == 'inventor':

		class_color = "style='background-color: #b38c2f;'"

	elif local_student.character_class == 'unifier':

		class_color = "style='background-color: #a24a26;'"

	elif local_student.character_class == 'activist':

		class_color = "style='background-color: #378181;'"

	return class_color




