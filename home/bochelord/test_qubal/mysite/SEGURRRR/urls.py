# urls.py in mysite
from django.conf.urls import patterns, include, url

from django.contrib import admin

admin.autodiscover()

from dajaxice.core import dajaxice_autodiscover, dajaxice_config
dajaxice_autodiscover()

from django.contrib.staticfiles.urls import staticfiles_urlpatterns

urlpatterns = patterns('',
    #url(r'^courses/', include('qubalapp.urls')),
    url(r'^admin/', include(admin.site.urls)),
    url(r'^grappelli/', include('grappelli.urls')),
    url(r'^activity/', include('actstream.urls')),
    url(r'^accounts/', include('registration.backends.default.urls')),
    url(r'^django-session-idle-timeout/', include('django-session-idle-timeout.urls')),
    url(dajaxice_config.dajaxice_url, include('dajaxice.urls')),
    url(r'', include('social_auth.urls')),
    url(r'^', include('qubalapp.urls')),
)

urlpatterns += staticfiles_urlpatterns()