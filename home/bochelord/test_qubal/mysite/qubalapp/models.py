import datetime, logging
from django.utils import timezone
from django.db import models
from django.contrib import admin
from django.contrib.auth.models import User
from imagekit.models import ImageSpecField
from imagekit.processors import ResizeToFill

# Create your models here.

class Nickname(models.Model):
    title = models.CharField(max_length=250)
    description = models.TextField()

    def __unicode__(self):
        return str(self.id)+": "+self.title


class Achievement(models.Model):
    name = models.CharField(max_length=250)
    description = models.TextField()
    # points = models.IntegerField(default=0)
    image = models.ImageField(upload_to="images/achievements", blank=True, null=True)
    image_thumbnail = ImageSpecField(source='image',
                                      processors=[ResizeToFill(50, 50)],
                                      format='JPEG',
                                      options={'quality': 70})
    unlock_nicknames = models.OneToOneField('Nickname', primary_key=False, blank=True, null=True)
    unlocked_date = models.DateTimeField('Unlocked Date', blank=True, null=True)
    # has_achievements = models.ForeignKey(Achievement)

    def __unicode__(self):
        return str(self.id)+": "+self.name


class Power(models.Model):
    social_skill = models.IntegerField(default=0)
    communication = models.IntegerField(default=0)
    responsability = models.IntegerField(default=0)
    activity = models.IntegerField(default=0)
    mastery = models.IntegerField(default=0)
    focus = models.IntegerField(default=0)
    has_person = models.OneToOneField('Person', primary_key=True)

    def __unicode__(self):
        return str(self.has_person.name)+": Mas "+str(self.activity)+" Foc "+str(self.focus)+" Soc "+str(self.social_skill)+" Com "+str(self.communication)+" Res "+str(self.responsability)+" Act "+str(self.activity)


# class Students_in_Course(models.Model):
#     student = models.ForeignKey('Student')
#     course = models.ForeignKey('Course')


# Course that helds several students
class Course(models.Model):
    image = models.ImageField(upload_to="images/courses", blank=True, null=True)
    image_thumbnail = ImageSpecField(source='image',
                                      processors=[ResizeToFill(50, 50)],
                                      format='JPEG',
                                      options={'quality': 70})
    name = models.CharField(max_length=100)
    description = models.TextField()
    starting_date = models.DateTimeField('Course Starting Date')
    ending_date = models.DateTimeField('Course Ending Date')
    has_students = models.ManyToManyField('Student', blank=True, null=True) # , through=Students_in_Course
    has_quests = models.ForeignKey('Quest')
    has_teams = models.ManyToManyField('Team', blank=True, null=True)
    has_achievements = models.ForeignKey('Achievement')
    has_documents = models.ManyToManyField('Educational_Document', blank=True, null=True) #through educational_documents_in_course? hay que probar el manytomany sin el through

    def __unicode__(self):
        return self.name

    def long_course(self):
        duration = self.ending_date - self.starting_date 
        if duration < datetime.timedelta(days=3):
            islong = False
        else:
            islong = True

        return islong
        
            
        long_course.admin_order_field = 'date'
        long_course.boolean = True
        long_course.short_description = 'Course Duration'


class Team(models.Model):
    name = models.CharField(max_length=100)
    is_in_course = models.ForeignKey('Course')
    description = models.TextField()
    image = models.ImageField(upload_to="images/teams", blank=True, null=True)
    image_thumbnail = ImageSpecField(source='image',
                                      processors=[ResizeToFill(50, 50)],
                                      format='JPEG',
                                      options={'quality': 70})
    has_students = models.ManyToManyField('Student')
    has_teachers = models.ManyToManyField('Teacher')
    captain = models.ForeignKey('Student', related_name='Team_Captain')
#    has_challenges = models.ManyToManyField('Challenge', blank=True, null=True)

    def __unicode__(self):
        return self.name
    
# Student that have been enrolled in a course :D
class Person(models.Model):
    
    # role = Student, Teacher
    user = models.OneToOneField(User, primary_key=True)
    name = models.CharField(max_length=100)
    lastname = models.CharField(max_length=100)
    birth = models.DateTimeField('Birthdate')
    email = models.EmailField(max_length=75)
    image = models.ImageField(upload_to="images/persons", blank=True, null=True)
    image_thumbnail = ImageSpecField(source='image',
                                      processors=[ResizeToFill(50, 50)],
                                      format='JPEG',
                                      options={'quality': 70})
    xp  = models.IntegerField(default=0)
    #level = models.IntegerField(default=1)

    has_nicknames = models.ManyToManyField('Nickname', blank=True, null=True)
    has_achievements = models.ManyToManyField('Achievement', blank=True, null=True)

    twitter = models.CharField(max_length=250, blank=True, null=True)
    facebook = models.CharField(max_length=250, blank=True, null=True)
    dropbox = models.CharField(max_length=250, blank=True, null=True)

    has_address = models.ForeignKey('Address', blank=True, null=True)

    # has_edu_skills = models.ManyToManyField('Edu_Skill')
    # has_personal_skills = models.ManyToManyField('Personal_Skill')

    def __unicode__(self):
        return self.name+" "+self.lastname

    
class Courses_Completed_By_Student(models.Model):
    student = models.ForeignKey('Student')
    course = models.ForeignKey('Course')


class Student(Person):

    is_team_member_of = models.ManyToManyField('Team', blank=True, null=True)
    #is_captain_of = models.ForeignKey('Team', blank=True, null=True, related_name='Student_Captain_of_Team')
    courses_completed = models.ManyToManyField('Course', related_name='Courses_Completed_By_Student', blank=True, null=True)
    quests_completed = models.ManyToManyField('Quest', blank=True, null=True)
    challenged_completed = models.ManyToManyField('Challenge', blank=True, null=True)
    tasks_completed = models.ManyToManyField('Task', blank=True, null=True)
    is_enrolled_in_courses = models.ManyToManyField('Course', blank=True, null=True) # , through='Students_in_Course'

class Teacher(Person):
    
    is_tutor_of_teams = models.ManyToManyField('Team', blank=True, null=True)
    teach_in_courses = models.ManyToManyField('Course', blank=True, null=True)
    background_cv = models.TextField()


# Address
class Address(models.Model):
    street = models.CharField(max_length=100)
    number = models.IntegerField(default=0)
    floor = models.IntegerField(default=0)
    door = models.CharField(max_length=50)
    city = models.CharField(max_length=50)
    postcode = models.CharField(max_length=10)
    country = models.CharField(max_length=30)
    
    def __unicode__(self):
        return self.street


class Quest(models.Model):

    name = models.CharField(max_length=250)
    description = models.TextField()
    has_documents = models.ManyToManyField('Educational_Document', blank=True, null=True)
    has_challenges = models.ManyToManyField('Challenge')
    has_rewards = models.ManyToManyField('Reward')

    def __unicode__(self):
        return str(self.id)+": "+self.name


class Challenge(models.Model):

    name = models.CharField(max_length=250)
    description = models.TextField()
    has_documents = models.ManyToManyField('Educational_Document', blank=True, null=True)
    has_tasks = models.ManyToManyField('Task')
    has_rewards = models.ManyToManyField('Reward')
    
    def __unicode__(self):
        return str(self.id)+": "+self.name


class Task(models.Model):

    name = models.CharField(max_length=250)
    description = models.TextField()
    has_documents = models.ManyToManyField('Educational_Document', blank=True, null=True)
    has_rewards = models.ManyToManyField('Reward')

    def __unicode__(self):
        return str(self.id)+": "+self.name


class Edu_Skill(models.Model):
    name = models.CharField(max_length=250)
    score = models.IntegerField(default=0)
    is_from_person = models.OneToOneField('Person', primary_key=False,blank=True, null=True)
    
    
    def __unicode__(self):
        return str(self.id)+": "+self.name


class Reward(models.Model):
    name = models.CharField(max_length=250, default='')
    xp  = models.IntegerField(default=0)
    has_edu_skill_points = models.ManyToManyField('Edu_Skill', blank=True, null=True)
    has_achievement = models.ManyToManyField('Achievement', blank=True, null=True)
    has_powers_points = models.ManyToManyField('Power', blank=True, null=True)

    def __unicode__(self):
        return unicode(self.id)+": "+self.name+" - "+unicode(self.xp)


class Educational_Document(models.Model):
    name = models.CharField(max_length=250)
    path = models.FilePathField(path="qubalapp/docs")
    is_from_team = models.OneToOneField('Team', primary_key=False, blank=True, null=True)
    is_from_person = models.OneToOneField('Person', primary_key=False, blank=True, null=True)
    

    def __unicode__(self):
        return str(self.id)+": "+self.name


class Rules_Xp_per_Level(models.Model):
    level = models.IntegerField(default=0)
    xp = models.IntegerField(default=0)

    def __unicode__(self):
        return str(self.level)+": "+str(self.xp)

class Rules_Edu_Skills_per_Course(models.Model):
    is_from_edu_skill = models.OneToOneField('Edu_Skill', primary_key=True)
    is_from_course = models.ForeignKey('Course')

    def __unicode__(self):
        return str(self.is_from_edu_skill)+": "+str(self.is_from_course)