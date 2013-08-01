	
import os
from django.template import Context, Template
from django.shortcuts import render

def prerender_nav(local_student, active_url, level, settings, request):

	# navbar_path = os.path.abspath('qubalapp/templates/qubalapp/navbar.inc')
	# navbar = open(navbar_path, 'r')
	# navbar_content = navbar.read()

	# navbar.close()
	# t = Template(navbar_content)
	
	c = Context({'student': local_student,
				 'STATIC_URL': settings.STATIC_URL,
				 'active_url': active_url,
				 'current_level': level,
				 'QUBAL_VERSION': settings.QUBAL_VERSION })
	
	html = render(request, 'qubalapp/navbar.inc', c)


	#html = t.render(c)
	
	return html