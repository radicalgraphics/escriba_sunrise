# Create your views here.
from django.http import HttpResponse, HttpResponseRedirect
from django.shortcuts import render, get_object_or_404, render_to_response
from qubalapp.models import Course, Student, Rules_Xp_per_Level, Team, Power
from django.core.context_processors import csrf
from django.contrib import auth
from qubal_xp import *
from imagekit.models import ImageSpecField
from imagekit import ImageSpec, register
from imagekit import processors
from imagekit.processors import ResizeToFill
from qubal_images import *
import os
from django.template import Context, Template
from django.conf import settings
from qubal_prerender import *

register.generator('qubalapp:thumbnail30x30', Thumbnail30x30)
register.generator('qubalapp:thumbnail50x50', Thumbnail50x50)
register.generator('qubalapp:thumbnail100x100', Thumbnail100x100)
register.generator('qubalapp:thumbnail150x150', Thumbnail150x150)

def index(request):

	
	if request.user.is_authenticated():

		local_person = request.user

		# we check if local person is student
		if Student.objects.get(pk=local_person.id):

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

			student_powers = Power.objects.get(has_person_id=local_person.id)
			
			percent = current_level * 10

			percent_xp = total_xp * 100 / sumatorium_levels()

			if current_xp != 0:
				percent_current_xp = current_xp * 100 / xp_needed	
			else:
				percent_current_xp = 0

			#####

			next_level = current_level + 1
			next_level_at = xp_needed - current_xp

			url = 'index.html'
	
			html = prerender_nav(local_student, url, settings, current_level, request)

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
				   'navbar_content': html }

		return render(request, 'qubalapp/index.html', context)
	else:
		return HttpResponseRedirect("/test/landing/")



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
		return render(request, 'qubalapp/search_results.html', {'students': students_list, 'query': q})
	else:
		error_message='Escribe un termino a buscar.'
		return render(request, 'qubalapp/search_results.html', {'error_message' : error_message})



def profile(request, student_id):
	local_student = get_object_or_404 (Student, pk=student_id)
	local_student_courses = local_student.is_enrolled_in_courses.all()


	total_xp = local_student.xp

	current_level = calculate_level(total_xp) 

	url = 'profile.html'
	
	html = prerender_nav(local_student, url, settings, current_level, request)

	return render(request, 'qubalapp/profile.html',
						  {'student': local_student,
						   'courses_list':local_student_courses,
						   'navbar_content': html })



def landing(request):

	if 'error' in request.GET:
		mensaje_puerco = "Has olvidado tu clave? comeme el rabo!"
	else:
		mensaje_puerco = ""
	# c = {}
	# c.update(csrf(request))
	#return render_to_response('qubalapp/landing.html', c, {'mensaje_de_mierda':mensaje_puerco})

	return render(request, 'qubalapp/landing.html', {'mensaje_de_mierda':mensaje_puerco} )



def login(request):

	username = request.POST.get('username', '')
	password = request.POST.get('password', '')
	user = auth.authenticate(username=username, password=password)

	if user is not None and user.is_active:
		auth.login(request, user)
		return HttpResponseRedirect("/test/")
	else:
		return HttpResponseRedirect("/test/landing/?error")



def logout(request):

	auth.logout(request)

	return HttpResponseRedirect('/')



def teams(request):

	if request.user.is_authenticated():

		local_person = request.user

		if Student.objects.get(pk=local_person.id):

			local_student = get_object_or_404 (Student, pk=local_person.id)
			local_student_teams = local_student.is_team_member_of.all().order_by('id')
			total_xp = local_student.xp

			current_level = calculate_level(total_xp) 
	

			url = 'teams.html'

			html = prerender_nav(local_student, url, settings, current_level, request)

			context = { 'local_student' : local_student,
						'local_student_teams': local_student_teams,
			   			'navbar_content': html }

		return render(request, 'qubalapp/teams.html', context)
	else:
		return HttpResponseRedirect("test/landing/")


def course_listing(request):

	if request.user.is_authenticated():

		local_person = request.user

		if Student.objects.get(pk=local_person.id):

			local_student = get_object_or_404 (Student, pk=local_person.id)
			local_student_courses = local_student.is_enrolled_in_courses.all().order_by('-starting_date')

			total_xp = local_student.xp

			current_level = calculate_level(total_xp) 
	

			course_list = Course.objects.all().order_by('-starting_date')[:10]

			url = 'course_listing.html'

			html = prerender_nav(local_student, url, settings, current_level, request)

			context = { 'local_student' : local_student,
						'local_student_courses': local_student_courses,
			   			'course_list': course_list,
			   			'navbar_content': html }

		return render(request, 'qubalapp/course_listing.html', context)
	else:
		return HttpResponseRedirect("test/landing/")