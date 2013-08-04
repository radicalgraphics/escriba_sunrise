import os
from qubalapp.models import Power

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