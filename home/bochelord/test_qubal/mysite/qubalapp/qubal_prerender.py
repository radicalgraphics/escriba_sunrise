	
import os
from django.template import Context, Template
from django.shortcuts import render
from django.template import loader


def prerender_nav(local_student, active_url, settings, cabeza_level, request):

	#navbar_path = os.path.join('qubalapp/templates/qubalapp/navbar.inc')
	#navbar = open(navbar_path, 'r')
	#navbar_content = navbar.read()

	#navbar.close()
	#t = loader.get_template('qubalapp/navbar.inc')
	
	c = Context({'student': local_student,
				 'STATIC_URL': settings.STATIC_URL,
				 'active_url': active_url,
				 'current_level' : cabeza_level })

	# html = t.render(c)

	html = render(request,'qubalapp/navbar.inc', c)
	
	return html