
import os
import sys
from django.template import Context, Template
from actstream.models import Action
from django.shortcuts import render

# Used by the DEBUG menu.
from django.contrib.auth.models import User
from qubalapp.models import Student, Teacher, Team, Course, Quest, Challenge, Task, Achievement
from django.conf import settings
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
				 'SUNRISE_URL': settings.SUNRISE_URL,
				 'active_url': active_url,
				 'current_level': level,
				 'QUBAL_VERSION': settings.QUBAL_VERSION,
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

	for action in actions_list:
		action.data={'mostrado':'si'}
		action.save()
			
	

	return html