import os
import sys




sys.path.append('/home/bochelord/test_qubal/mysite')
sys.path.append('/var/www/qubal_public')

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "settings")

os.environ['PYTHON_EGG_CACHE'] = '/home/bochelord/test_qubal/.python-egg'
#os.environ['DJANGO_SETTINGS_MODULE'] = 'settings'

import django.core.handlers.wsgi
application = django.core.handlers.wsgi.WSGIHandler()
