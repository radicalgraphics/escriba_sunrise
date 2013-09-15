#
# Qubalapp v0.6.4 Chicken Unleashed
# Library checking the latest activity checking the notifications system
# (c)2013 Radical Graphics Studios

import datetime
import sys
from django.utils import timezone
from django.conf import settings
from django.shortcuts import get_object_or_404
from qubalapp.models import Course, Challenge, Quest, Task, Task_Deliverable, Task_Video, Task_Quiz
from actstream.models import Action

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

def calculate_your_journey(student):
	
	# check the notifications from the student
	# Look for the verbs 
	# Ideally we should look for the Qubal_Verbs related to actions, so with the verb='action_*' on Task_status

	#good_now = timezone.make_aware(datetime.datetime.now(),timezone.get_default_timezone())
	good_60days = timezone.now() - timezone.timedelta(days=60)
	#good_60days = timezone.make_naive(datetime.timedelta(days=60), timezone.get_default_timezone())
		


	actions_related_to_tasks = Action.objects.filter(actor_object_id=student.user_id, verb='action_task_start', timestamp__gt=str(good_60days)) # atencion a la jugada que es timestamp > se escribe como timestamp__gt

	print actions_related_to_tasks


	actions_related_to_quests = []

	## last_twenty_actions = Action.objects.filter(actor_object_id=student.user_id).order_by('-timestamp')[:20]

	for action in actions_related_to_tasks:

		#print actions_related_to_tasks
		# sys.exit()
		real_task = Task.objects.get_subclass(pk=action.target_object_id)
		print 'TASK GORDA'
		print real_task
		if isinstance(real_task, Task_Video):
			task = get_object_or_404 (Task_Video, pk=real_task.id)
		elif isinstance(real_task, Task_Deliverable):
			task = get_object_or_404 (Task_Deliverable, pk=real_task.id)
		elif isinstance(real_task, Task_Quiz):
			task = get_object_or_404 (Task_Quiz, pk=real_task.id)
		else:
			break

		break

		challenge = Challenge.objects.get(has_tasks=task.id)
		#quest = Quest.objects.get(has_challenges=challenge.id)
		print "CHALLENGEEEE!!!"
		print challenge

		quest = Quest_Status.objects.get()

		actions_related_to_quests.append(action)
		print action
		print 'POOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOOO'
	# for action in last_twenty_actions:

	# 	print action


	return ""



