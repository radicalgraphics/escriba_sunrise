#urls.py in qubalapp

from django.conf.urls import patterns, url

from django.conf import settings

from qubalapp import views

urlpatterns = patterns('',
	
    # //this gets you to qubalapp/
    # url(r'^(?P<course_id>\d+)/$', views.courses, name='detail'),

    url(r'^course_listing/$', views.course_listing, name='course_listing'),

    # url(r'^static/main_engine/bootstrap.css', views.bootstrap, name='bootstrap'),

    url(r'^static/(?P<path>.*)$', 'django.views.static.serve', {'document_root': settings.STATIC_ROOT}),

    url(r'^search-form/$', views.search_form, name='search-form'),
    url(r'^search/$', views.search),

    url(r'^profile/(?P<student_id>\d+)/$', views.profile),
    # url(r'^address/(?P<address_id>\d+)/$', views.address),

    url(r'^login/$', views.login),

    url(r'^teams/$', views.teams),

    url(r'^landing/$', views.landing),

    url(r'^logout/$', views.logout),

    url(r'^quest_listing/$', views.quest_listing, name='quest_listing'),

    url(r'^quest/(?P<quest_id>\d+)/$', views.quest),

    # //this gets you to index: qubal/
    url(r'^$', views.index, name='index'),

    url(r'^media/(?P<path>.*)$', 'django.views.static.serve', {'document_root': settings.MEDIA_ROOT}),

    url(r'^register_character_landing/$', views.register_character_landing),

    url(r'^register_character/$', views.register_character),
)