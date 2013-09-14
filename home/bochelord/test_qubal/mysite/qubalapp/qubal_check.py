from actstream import action
from actstream.models import Action
from qubalapp.models import Person, Task_Status, Challenge_Status
import qubal_reward
import datetime

def check_challenge (local_student, student_challenge):
	"""
	If all the challenge tasks are completed it sets the challenge to completed.
	"""
	challenge_completed = False
	number_of_tasks_completed = 0
	number_of_tasks = student_challenge.has_tasks.count()

	for task in student_challenge.has_tasks.all():

		task_status_exist = Task_Status.objects.filter(student=local_student, task=task).count()
		
		if (task_status_exist != 0):

			task_status = Task_Status.objects.get(student=local_student, task=task)
			
			if task_status.completed:
				
				number_of_tasks_completed += 1
	
	
	if number_of_tasks == number_of_tasks_completed:

		challenge_completed = True


	if challenge_completed:

		cs = Challenge_Status.objects.get(student=local_student, challenge=student_challenge)

		cs.completed_on_date = datetime.datetime.now()
		cs.completed = True

		cs.save()

		qubal_reward.process_challenge_reward (local_student, student_challenge)
		reward_xp = qubal_reward.return_challenge_xp(student_challenge)
		action.send(local_student.user, verb='action_finish_challenge', description='Challenge completed! +'+ str(reward_xp) +'XP', target=student_challenge, mostrado='no')

