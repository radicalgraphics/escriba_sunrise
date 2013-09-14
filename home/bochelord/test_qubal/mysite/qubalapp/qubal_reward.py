import os
import sys

from qubalapp.models import Person, Task, Task_Deliverable, Task_Video


def process_task_reward (local_student, task):
	"""
	The points would have a multiplier depending on the rating system
	"""
	reward_list = task.has_rewards.all()
	
	for reward in reward_list:
		local_student.xp += + reward.xp
		local_student.has_powers.teamwork += reward.teamwork_points
		local_student.has_powers.teamwork_quubs += reward.teamwork_quubs
		local_student.has_powers.communication += reward.communication_points
		local_student.has_powers.communication_quubs += reward.communication_quubs
		local_student.has_powers.responsability += reward.responsability_points
		local_student.has_powers.responsability_quubs += reward.responsability_quubs
		local_student.has_powers.perseverance += reward.perseverance_points
		local_student.has_powers.perseverance_quubs += reward.perseverance_quubs
		local_student.has_powers.mastery += reward.mastery_points
		local_student.has_powers.mastery_quubs += reward.mastery_quubs
		local_student.has_powers.focus += reward.focus_points
		local_student.has_powers.focus_quubs += reward.focus_quubs

	local_student.save()

def process_challenge_reward (local_student, challenge):
	"""
	The points would have a multiplier depending on the rating system
	"""
	reward_list = challenge.has_rewards.all()

	for reward in reward_list:
		local_student.xp += + reward.xp
		local_student.has_powers.teamwork += reward.teamwork_points
		local_student.has_powers.teamwork_quubs += reward.teamwork_quubs
		local_student.has_powers.communication += reward.communication_points
		local_student.has_powers.communication_quubs += reward.communication_quubs
		local_student.has_powers.responsability += reward.responsability_points
		local_student.has_powers.responsability_quubs += reward.responsability_quubs
		local_student.has_powers.perseverance += reward.perseverance_points
		local_student.has_powers.perseverance_quubs += reward.perseverance_quubs
		local_student.has_powers.mastery += reward.mastery_points
		local_student.has_powers.mastery_quubs += reward.mastery_quubs
		local_student.has_powers.focus += reward.focus_points
		local_student.has_powers.focus_quubs += reward.focus_quubs



def return_task_xp(task):

	reward_list = task.has_rewards.all()
	xp = 0
	for reward in reward_list:
		xp += reward.xp

	return xp

def return_challenge_xp(challenge):

	reward_list = challenge.has_rewards.all()
	xp = 0
	for reward in reward_list:
		xp += reward.xp

	return xp