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

    url(r'^course/(?P<course_id>\d+)/$', views.course),

    url(r'^task/(?P<task_id>\d+)/$', views.task),

    # User starts a Quest
    url(r'^quest_started/$', views.quest_started),

    # //this gets you to index: qubal/
    url(r'^$', views.index, name='index'),

    url(r'^media/(?P<path>.*)$', 'django.views.static.serve', {'document_root': settings.MEDIA_ROOT}),

    url(r'^register_character_landing/$', views.register_character_landing),

    url(r'^register_character/$', views.register_character),

    url(r'^qubal_character_init/$', views.qubal_character_init),

    url(r'^task_completed/$', views.task_completed),

    url(r'^enroll/$', views.enroll),

    url(r'^oracle_landing/$', views.oracle_landing),

    url(r'^oracle_process/$', views.oracle_process),

    url(r'^quiz_landing/$', views.quiz_landing),

    ## SPEX qubal views

    url(r'^spex_/$', views.spex_index),

    url(r'^spex_/spex_oracle_landing/$', views.spex_oracle_landing),

    url(r'^spex_oracle_process/$', views.spex_oracle_process),

    url(r'^spex_/courses/$', views.spex_course_listing),

    url(r'^spex_/teams/$', views.spex_teams),

    url(r'^spex_/quests/$', views.spex_quests),

    url(r'^spex_/profile/$', views.spex_profile),

    ## JAWA qubal views

    url(r'^jawa_/$', views.jawa_index),

    url(r'^jawa_/powers/$', views.jawa_powers),

    url(r'^jawa_/quests/$', views.jawa_quests),



    ## Social Auth views

    # url(r'^$', home, name='home'),
    # url(r'^done/$', done, name='done'),
    # url(r'^error/$', error, name='error'),
    # url(r'^logout/$', logout, name='logout'),
    # url(r'^form/$', form, name='form'),
    # url(r'^form2/$', form2, name='form2'),
    # #url(r'^admin/', include(admin.site.urls)),
    # #url(r'^facebook/', facebook_view, name='fb_app'),
    # #url(r'^ok/$', ok_app, name='ok_app'),
    # #url(r'^ok/info/$', ok_app_info, name='ok_app_info'),
    # url(r'^close_login_popup/$', close_login_popup, name='login_popup_close'),
    
)