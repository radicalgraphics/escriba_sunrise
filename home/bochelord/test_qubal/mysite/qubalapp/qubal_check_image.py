#
# Qubalapp v0.3 Toro
# Library where the check to avoid crash when the image doesn't exist is done
# Checks for courses, teams and achievements so far
# (c)2013 Radical Graphics Studios
from qubalapp.models import Student, Course, Achievement, Team, Quest
import sys
import os
from django.shortcuts import get_object_or_404
from django.conf import settings


def courses():
    """Checks all the courses on Course Table to check if the path claimed
     to be an image is actually on the server. If not , it inserts a "" on the field"""

    # local_student = get_object_or_404 (Student, pk=student_id)
    # local_student_courses = local_student.active_courses.all()

    list_of_courses = Course.objects.all()

    #print "CABEZA"
    #print list_of_courses


    for course in list_of_courses:
        if not os.path.isfile(settings.MEDIA_ROOT + str(course.image)):

            #c = get_object_or_404(Course.objects, id=course.id)
            # Check para ver si lo hemos puesto a "" already
            if course.image != "":
                course.image = ""
                course.save()

def achievements():
    """Checks all the achievements on Achievement Table to check if the path claimed
     to be an image is actually on the server. If not , it inserts a "" on the field"""

    list_of_achievements = Achievement.objects.all()

    for achievement in list_of_achievements:
        if not os.path.isfile(settings.MEDIA_ROOT + str(achievement.image)):
           
            # Check para ver si lo hemos puesto a "" already
            if achievement.image != "":
                achievement.image = ""
                achievement.save()


def teams():
    """Checks all the teams on Team Table to check if the path claimed
     to be an image is actually on the server. If not , it inserts a "" on the field"""

    list_of_teams = Team.objects.all()

    for team in list_of_teams:
        if not os.path.isfile(settings.MEDIA_ROOT + str(team.image)):

            # Check para ver si lo hemos puesto a "" already
            if team.image != "":
                team.image = ""
                team.save()


def quests():
    """Checks all the quests on Quest Table to check if the path claimed
     to be an image is actually on the server. If not , it inserts a "" on the field"""

    list_of_quests = Quest.objects.all()

    for quest in list_of_quests:
        if not os.path.isfile(settings.MEDIA_ROOT + str(quest.image)):

            # Check para ver si lo hemos puesto a "" already
            if quest.image != "":
                quest.image = ""
                quest.save()