import os
import sys
from actstream.models import user_stream
from actstream import action
from actstream.models import Action
from qubalapp.models import Person
from datetime import timedelta
from django.utils.timezone import utc
import datetime


# To make this work you have to import "from qubal_rules import *"
# in the file where you call any function/procedure here.

def login_rule (local_user):

	# This is the hardcode XP amount that the user is gonna get.
	login_rule_xp_amount = 2



	# We save a filtered list with all the local_user actions by 'actor_object_id'
	ultima_notification_welcome = Action.objects.filter(actor_object_id=local_user.id,verb='notification_welcome')[0:1].get()
	# We get the last user action from the filtered actions list
	
	list_temp = Action.objects.filter(actor_object_id=local_user.id,verb='notification_got_welcome_xp').reverse()[0:1]

	local_persona = Person.objects.get_subclass(user=local_user.id)

	if list_temp:
		

		ultima_notification_got_welcome_xp = Action.objects.filter(actor_object_id=local_user.id,verb='notification_got_welcome_xp')[0:1].get()
	
		# To be sure that the last action is about to be loged, we check it,
		# if true -> we add +login_rule_xp_amount to the localand .save
		# ahora = datetime.datetime.now()
		
		time_passed = ultima_notification_welcome.timestamp - ultima_notification_got_welcome_xp.timestamp


		#Los puntos de xp solo se dan una vez cada dia
		if time_passed > timedelta(days=1):

			local_persona.xp += + login_rule_xp_amount
			local_persona.save()
			action.send(local_user, verb='notification_got_welcome_xp', description='You got some XP!', mostrado='no')


	else:
		# If never loggedout then is the very first time he loggedin. Base case
		
			local_persona.xp += + login_rule_xp_amount
			local_persona.save()
			action.send(local_user, verb='notification_got_welcome_xp', description='You got some XP!', mostrado='no')


# def task_completed_rule(local_user):

# 	task_completed_rule_xp_amount = 10

# 	local_persona = Person.objects.get_subclass(user=local_user.id)

# 	# ultima_notification_task_completed_xp = Action.objects.filter(actor_object_id=local_user.id,verb='notification_task_completed')[0].get()

# 	local_persona.xp += + task_completed_rule_xp_amount
# 	local_persona.save()