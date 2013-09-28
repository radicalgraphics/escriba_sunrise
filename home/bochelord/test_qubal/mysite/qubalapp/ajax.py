# Functions controlling the AJAX requests
# (c) 2013 Radical Graphics Studios
from qubalapp.models import Student, Course, Quest_Status, Team
from dajax.core import Dajax
from dajaxice.decorators import dajaxice_register


import qubal_prerender
import qubal_images
from qubalapp import views
from django.conf import settings

@dajaxice_register
def multiply(request, a, b, student_id):

	dajax = Dajax()
	result = int(a) * float(b)

	dajax.assign('#result','value',str(result))

	local_student = Student.objects.get(pk=student_id)

	dajax.assign('#idName','innerHTML', local_student.name)
	dajax.assign('#idDay', 'innerHTML', local_student.birth.strftime("%B %d"))
	dajax.assign('#idImage', 'src', local_student.image.url)
	return dajax.json()


@dajaxice_register
def get_student(request, student_id):

	dajax = Dajax()

	local_student = Student.objects.get(pk=student_id)


	dajax.assign('#idName','innerHTML', local_student.name)
	dajax.assign('#idDay', 'innerHTML', local_student.birth.strftime("%B %d"))
	dajax.assign('#idImage', 'innerHTML', local_student.image.url)
	return dajax.json()




@dajaxice_register
def get_course(request, course_id, student_id):

	dajax = Dajax()

	local_student = Student.objects.get(pk=student_id)
	course = Course.objects.get(pk=course_id)

	quests_list = course.has_quests.all()
	quests_completed_list = local_student.quests_completed.all();

	quests_html = ""
	active_quests = 0
	quests_completed = 0
	for x, quest in enumerate(quests_list.all()):
		if x <= 3:
			quests_html += "<div class='quests-quests-boxes' rel='tooltip' title='"+ str(quest.name) +"'>"
			quests_html += "<a href='#'>"
			if course.name.__len__() > 10:
				quests_html += "<div class='quests-quests-boxes-course-name'>"+ course.name[:11] +"...</div>"
			else:
				quests_html += "<div class='quests-quests-boxes-course-name'>"+ course.name +"</div>"

			if quest in quests_completed_list.all():
				quests_html += "<div class='quests-quests-boxes-icon'><i class='icon-check big-icon'></i></div>"

			quests_html += "</a>"
			quests_html += "</div>"

		if (Quest_Status.objects.filter(student=local_student, quest=quest)):
			quest_status_object = Quest_Status.objects.get(student=local_student, quest=quest)
			if not quest_status_object.completed:
				active_quests += 1

		if quest in quests_completed_list:
			quests_completed += 1

	class_color = ''
	color = ''
	if local_student.character_class == 'explorer':
		class_color = "style='background-color: #648f2f;'"
		color = "style='color:#648f2f;'"
	elif local_student.character_class == 'inventor':
		class_color = "style='background-color: #b38c2f;'"
		color = "style='color:#b38c2f;'"
	elif local_student.character_class == 'unifier':
		class_color = "style='background-color: #a24a26;'"
		color = "style='color:#a24a26;'"
	elif local_student.character_class == 'activist':
		class_color = "style='background-color: #378181;'"
		color = "style='color:#378181;'"
	else:
		class_color = "style='background-color: #000;'"
		color = "style='color:#000;'"

	quests_html += "<div class='quests-quests-actives-box'>"
	quests_html += "<div class='quests-quests-actives-number'>"+ str(active_quests) + "</div>"
	quests_html += "<div class='quests-quests-actives-text'>ACTIVE</div>"
	quests_html += "<div class='quests-quests-actives-summary'>" + str(quests_completed) + " / " + str(quests_list.count()) + "</div>"
	quests_html += "<div class='quests-quests-actives-summary-text'>COMPLETED</div>"
	quests_html += "</div> <!-- quests-quests-actives-box div -->"
	
	quests_html += "<div class='quests-quests-continue-box'>"
	quests_html += "<div class='quests-quests-continue-box-started'>STARTED: "+ str(course.starting_date.strftime('%d %B %Y')) +"</div>"
	quests_html += "<div class='quests-quests-continue-box-deadline'>DEADLINE: "+ str(course.ending_date.strftime('%d %B %Y')) +"</div>"
	quests_html += "<a href='#' class='quests-quests-continue-button'"+ str(class_color) +">CONTINUE</a>"
	quests_html += "</div> <!-- quests-quests-continue-box div -->"

	dajax.assign('#idquests-list-boxes', 'innerHTML', quests_html)

	details_html = ""
	details_html += "<div class='quests-details-course-image-column'>"
	details_html += "<div class='quests-details-course-image'>"
	details_html += "<img class='img-rounded' src='"+ str(course.image.url) +"' style='width:80px; height: 80px;'/>"
	details_html += "</div>"
	# details_html += "<div class='progress'>"
	# details_html += "<div class='bar' style='width:70%;'><span>70%</span></div>"
	# details_html += "</div>"
	details_html += "</div>"

	dajax.assign('#idquests-course-details', 'innerHTML', details_html)

	return dajax.json()


@dajaxice_register
def get_team(request, team_id, student_id):

	dajax = Dajax()

	local_student = Student.objects.get(pk=student_id)
	team = Team.objects.get(pk=team_id)

	
	teams_from_student = local_student.is_team_member_of.all();

	teams_html = ""

	

	teams_html += "<div class='quests-quests-boxes-container'>"

	for n, kid in enumerate(team.has_students.all()):

		if n <=2:
			teams_html += "<div class='quests-quests-boxes' rel='tooltip' title='"+ str(kid.name) +"'>"
			teams_html += "<a href='#'>"
			teams_html += "<div><img class='img-rounded' src='"+ kid.image.url  +"' style='width:64px; height: 64px;'></div>"


			if kid.name.__len__() > 11:
				teams_html += "<div class='quests-quests-boxes-course-name'>"+ kid.name[:12] +"...</div>"
			else:
				teams_html += "<div class='quests-quests-boxes-course-name'>"+ kid.name +"</div>"

			teams_html += "</a>"
			teams_html += "</div>"


	teams_html += "</div>"

	teams_html += "<p class='quests-quests-column-select-text'><span>" + team.name.upper() + "</span></p><br>"

	dajax.assign('#idquests-list-boxes', 'innerHTML', teams_html)


	return dajax.json()




	# quests_list = course.has_quests.all()
	# quests_completed_list = local_student.quests_completed.all();

	# quests_html = ""
	# active_quests = 0
	# quests_completed = 0
	# for x, quest in enumerate(quests_list.all()):
	# 	if x <= 3:
	# 		quests_html += "<div class='quests-quests-boxes' rel='tooltip' title='"+ str(quest.name) +"'>"
	# 		quests_html += "<a href='#'>"
	# 		if course.name.__len__() > 10:
	# 			quests_html += "<div class='quests-quests-boxes-course-name'>"+ course.name[:11] +"...</div>"
	# 		else:
	# 			quests_html += "<div class='quests-quests-boxes-course-name'>"+ course.name +"</div>"

	# 		if quest in quests_completed_list.all():
	# 			quests_html += "<div class='quests-quests-boxes-icon'><i class='icon-check big-icon'></i></div>"

	# 		quests_html += "</a>"
	# 		quests_html += "</div>"

	# 	if (Quest_Status.objects.filter(student=local_student, quest=quest)):
	# 		quest_status_object = Quest_Status.objects.get(student=local_student, quest=quest)
	# 		if not quest_status_object.completed:
	# 			active_quests += 1

	# 	if quest in quests_completed_list:
	# 		quests_completed += 1

	# quests_html += "<div class='quests-quests-actives-box'>"
	# quests_html += "<div class='quests-quests-actives-number'>"+ str(active_quests) + "</div>"
	# quests_html += "<div class='quests-quests-actives-text'>ACTIVE</div>"
	# quests_html += "<div class='quests-quests-actives-summary'>" + str(quests_completed) + " / " + str(quests_list.count()) + "</div>"
	# quests_html += "<div class='quests-quests-actives-summary-text'>COMPLETED</div>"
	# quests_html += "</div> <!-- quests-quests-actives-box div -->"
	# dajax.assign('#idquests-list-boxes', 'innerHTML', quests_html)

	# return dajax.json()



@dajaxice_register
def get_dashboard(request, student_id):

	dajax = Dajax()

	local_student = Student.objects.get(pk=student_id)

	html = qubal_prerender.prerender_ajax_dashboard(request)
	html = str(html)

	fixed_html = html.replace("Content-Type: text/html; charset=utf-8","")

	dajax.assign('#idContentAJAX', 'innerHTML', fixed_html)
	# dajax.assign('#idContentSideRight','src', local_student.image.url)

	dajax.script('$(document).ready(knob_mastery());')

	return dajax.json()

@dajaxice_register
def get_courses(request, student_id):

	dajax = Dajax()

	local_student = Student.objects.get(pk=student_id)

	html = qubal_prerender.prerender_ajax_course_listing(request)
	html = str(html)
	fixed_html = html.replace("Content-Type: text/html; charset=utf-8","")
	# html = views.course_listing(request)

	dajax.assign('#idContentAJAX', 'innerHTML', fixed_html)

	return dajax.json()

@dajaxice_register
def get_oracle_modal(request):

	dajax = Dajax()

	html = qubal_prerender.prerender_ajax_oracle(request)
	html = str(html)

	fixed_html = html.replace("Content-Type: text/html; charset=utf-8","")

	dajax.assign('#idAjaxOracle', 'innerHTML', fixed_html)

	return dajax.json()