import os
from qubalapp.models import Power, Task_Status, Educational_Document, Rules_Class_Power_Distribution, Student, Course, Challenge_Status, Quest_Status
import datetime
import sys

def check_powers (local_student):

	
	student_powers = Power.objects.filter(id=local_student.has_powers_id)

	if not student_powers:
		power = Power.objects.create(teamwork=1,
									 communication=1,
									 responsability=1,
									 perseverance=1,
									 mastery=1,
									 focus=1)
		local_student.has_powers = power
		local_student.save()

# Inicializamos el task_status con el estudiante y la task
def create_task_status (local_student, task):

	t = Task_Status.objects.create(
		student=local_student, 
		task=task,
		started_on_date=datetime.datetime.now(),
		send_for_evaluation=False,
		rating='not_set',
		completed=False
		)

	t.save()

def create_quest_status (local_student, quest):

	qs = Quest_Status.objects.create(
		student=local_student, 
		quest=quest,
		started_on_date=datetime.datetime.now(),
		completed=False
		)

	qs.save()

# Inicializamos el challenge_status con el estudiante y el challenge
def create_challenge_status (local_student, challenge):

	c = Challenge_Status.objects.create(
		student=local_student,
		challenge=challenge,
		started_on_date=datetime.datetime.now(),
		)

	c.save()


def create_educational_document (local_student, deliverable_file):

	e = Educational_Document.objects.create(
		name=deliverable_file,
		educational_file=deliverable_file,
		is_from_person=local_student
		)

	e.save()


def class_power_init(local_user, student_class):

	#IT does change the class for the student and his powers

	if student_class != 'no_class':
		power_rules = Rules_Class_Power_Distribution.objects.get(character_class=student_class)

		local_student = Student.objects.get(pk=local_user.id)

		old_student_class = local_student.character_class

		local_student.character_class = student_class

		student_power = Power.objects.get(pk=local_student.has_powers.id)


		if old_student_class == 'no_class': #first time oracle has been chosen

			student_power.teamwork = local_student.has_powers.teamwork + power_rules.teamwork_points 
			student_power.communication += + power_rules.communication_points 
			student_power.responsability +=  + power_rules.responsability_points 
			student_power.perseverance += + power_rules.perseverance_points 
			student_power.mastery += + power_rules.mastery_points 
			student_power.focus += + power_rules.focus_points
		else:
			student_power.teamwork = power_rules.teamwork_points
			student_power.communication = power_rules.communication_points 
			student_power.responsability = power_rules.responsability_points 
			student_power.perseverance = power_rules.perseverance_points 
			student_power.mastery = power_rules.mastery_points 
			student_power.focus = power_rules.focus_points

	else:

		local_student = Student.objects.get(pk=local_user.id)
		student_power = Power.objects.get(pk=local_student.has_powers.id)

		local_student.character_class = student_class


		student_power.teamwork = 1
		student_power.communication = 1
		student_power.responsability = 1 
		student_power.perseverance = 1 
		student_power.mastery = 1
		student_power.focus = 1


	local_student.save()
	student_power.save()


def assign_course_to_student(local_student, course_id):

	course = Course.objects.get(pk=course_id)
	local_student.active_courses.add(course)
	local_student.save()
	
