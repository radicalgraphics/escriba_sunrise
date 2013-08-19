import os
from qubalapp.models import Power, Task_Status, Educational_Document
import datetime

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

def create_educational_document (local_student, deliverable_file):

	e = Educational_Document.objects.create(
		name=deliverable_file,
		educational_file=deliverable_file,
		is_from_person=local_student
		)

	e.save()