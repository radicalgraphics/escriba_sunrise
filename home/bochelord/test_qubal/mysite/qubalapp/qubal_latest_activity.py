#
# Qubalapp v0.6.4 Chicken Unleashed
# Library checking the latest activity checking the notifications system
# (c)2013 Radical Graphics Studios
#

import datetime
from django.utils import timezone
from django.conf import settings
from django.shortcuts import get_object_or_404
from qubalapp.models import Course

def calculate_deadlines(student):

	# ver en que cursos esta
	# ver cuales no ha completado aun (Quest_status, Challenge_status, Task_status)
	# de los no completados, ver cuales terminan en una semana a partir de ahora ( para los de duration hacer, now - started_on_date < duration + oneweek  )
	# ver cuales cursos tienen que terminan pronto (en una semana)

	enrolled_courses_list = student.active_courses.all().order_by('-ending_date')

	ending_courses_list = []

	for course in enrolled_courses_list:

		
		time_to_end = course.ending_date - timezone.make_aware(datetime.datetime.now(),timezone.get_default_timezone())

		if time_to_end < datetime.timedelta(days=7): #if it is less than a week when the course ends then we notice the user :D
			
			#c = get_object_or_404(Course,pk=course.id)
			ending_courses_list.append(course)

	return ending_courses_list

	# # we prepare the return
	# num_deadlines = len(ending_courses_list)
	# deadline_link_list = []
	# for deadline in ending_courses_list:
	# 	deadline_link_list.append("<a href='" + settings.SUNRISE_URL + "course/" + str(deadline.id) + "'>" + str(deadline.id) + "</a> ")

	# if ending_courses_list:
	# 	deadlines = "You've got " + str(num_deadlines) + " deadlines coming up!"

	# 	for link in deadline_link_list:
	# 		deadlines += link
		
	# else:
	# 	deadlines = ""



def calculate_your_journey():
	pass
	# check the notifications from the student
	# Look for the verbs 