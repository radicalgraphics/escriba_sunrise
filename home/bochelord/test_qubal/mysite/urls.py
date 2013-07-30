# urls.py in mysite
from django.conf.urls import patterns, include, url

from django.contrib import admin

# from mysite import qubalapp


admin.autodiscover()

urlpatterns = patterns('',
    #url(r'^courses/', include('qubalapp.urls')),
    url(r'^admin/', include(admin.site.urls)),
    url(r'^', include('qubalapp.urls')),
)