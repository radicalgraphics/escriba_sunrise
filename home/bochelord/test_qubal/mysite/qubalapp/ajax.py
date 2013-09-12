# Functions controlling the AJAX requests
# (c) 2013 Radical Graphics Studios
from qubalapp.models import Student
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