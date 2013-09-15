# Functions controlling the AJAX requests
# (c) 2013 Radical Graphics Studios
from qubalapp.models import Student, Course, Quest_Status
from dajax.core import Dajax
from dajaxice.decorators import dajaxice_register


import qubal_prerender
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

		if Quest_Status.objects.filter(student=local_student, quest=quest):
			active_quests += 1

		if quest in quests_completed_list:
			quests_completed += 1

	quests_html += "<div class='quests-quests-actives-box'>"
	quests_html += "<div class='quests-quests-actives-number'>"+ str(active_quests) + "</div>"
	quests_html += "<div class='quests-quests-actives-text'>ACTIVE</div>"
	quests_html += "<div class='quests-quests-actives-summary'>" + str(quests_completed) + " / " + str(quests_list.count()) + "</div>"
	quests_html += "<div class='quests-quests-actives-summary-text'>COMPLETED</div>"
	quests_html += "</div> <!-- quests-quests-actives-box div -->"

	dajax.assign('#idquests-list-boxes', 'innerHTML', quests_html)

	return dajax.json()



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