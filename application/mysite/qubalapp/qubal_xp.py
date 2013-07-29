#
# Qubalapp v0.1
# Library where the XP is calculated
# (c)2013 Radical Graphics Studios

from qubalapp.models import Rules_Xp_per_Level



def calculate_current_xp(total_xp):

	current_xp = 0
	

	old_xp = 0

	for rule in Rules_Xp_per_Level.objects.all():
		
		old_xp = rule.xp + old_xp

		if old_xp > total_xp:
			current_xp = total_xp - ( old_xp - rule.xp)		
			break
	
		if old_xp == total_xp:
			current_xp = total_xp - old_xp

	return current_xp

def calculate_level(total_xp):

	sumatorium = 0
	ret = 0
	for rule in Rules_Xp_per_Level.objects.all():

		sumatorium = rule.xp + sumatorium

		if sumatorium > total_xp:
			# ret = old_level

			obj_rule = Rules_Xp_per_Level.objects.get(pk=rule.id)
			ret = obj_rule.level

			break

		if sumatorium == total_xp:
			ret = rule.level + 1
			break

		old_level = rule.level

	return ret


def sumatorium_levels():

	sumatorium = 0
	for rule in Rules_Xp_per_Level.objects.all():
		sumatorium = rule.xp + sumatorium

	
	return sumatorium