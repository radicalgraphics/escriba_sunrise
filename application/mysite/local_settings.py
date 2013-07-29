DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3', # Add 'postgresql_psycopg2', 'mysql', 'sqlite3' or 'oracle'.
        'NAME': 'K:/Root/Radical Graphics Studios/GitHub/escriba/database/qubaldb.db', # Or path to database file if using sqlite3.
        #'NAME': '../database/qubaldb.db', #Leunam's machine path
        # The following settings are not used with sqlite3:
        'USER': '',
        'PASSWORD': '',
        'HOST': '',                      # Empty for localhost through domain sockets or '127.0.0.1' for localhost through TCP.
        'PORT': '',                      # Set to empty string for default.
    }
}

TEMPLATE_DIRS = (
    # Put strings here, like "/home/html/django_templates" or "C:/www/django/templates".
    # Always use forward slashes, even on Windows.
    # Don't forget to use absolute paths, not relative paths.
    'K:/Root/Radical Graphics Studios/GitHub/escriba/mysite/templates',
)


STATIC_ROOT = 'K:/Root/Radical Graphics Studios/GitHub/escriba/qubalapp/static/'

STATICFILES_DIRS = (
    # Put strings here, like "/home/html/static" or "C:/www/django/static".
    # Always use forward slashes, even on Windows.
    # Don't forget to use absolute paths, not relative paths.
    'K:/Root/Radical Graphics Studios/GitHub/escriba/qubalapp/static/',
    #os.path.join(os.path.dirname(__file__),'media').replace('\\','/'),
)


STATIC_URL = 'http://192.168.1.127:80/static/'

MEDIA_ROOT = 'K:/Root/Radical Graphics Studios/GitHub/escriba/qubalapp/media/'


MEDIA_URL = 'http://192.168.1.127:80/media/'