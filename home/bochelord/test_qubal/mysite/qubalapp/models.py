import datetime, logging
from django.utils import timezone
from django.db import models
from django.contrib import admin
from django.contrib.auth.models import User
from imagekit.models import ImageSpecField
from imagekit.processors import ResizeToFill
from model_utils.managers import InheritanceManager

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
    image = models.ImageField(upload_to="images/achievements",default="default_images/default_achievement.jpg")
    image_thumbnail = ImageSpecField(source='image',
                                      processors=[ResizeToFill(50, 50)],
                                      format='JPEG',
                                      options={'quality': 100})
    unlock_nickname = models.OneToOneField('Nickname', primary_key=False, blank=True, null=True)
    unlocked_date = models.DateTimeField('Unlocked Date', blank=True, null=True)
    is_key = models.BooleanField(default=False)
    # de momento no sabemos que desbloquea la key.

    def __unicode__(self):
        return str(self.id)+": "+self.name


class Power(models.Model):
    teamwork = models.IntegerField(default=0)
    teamwork_quubs = models.IntegerField(default=0)
    # quubs earned can be calculated
    communication = models.IntegerField(default=0)
    communication_quubs = models.IntegerField(default=0)
    responsability = models.IntegerField(default=0)
    responsability_quubs = models.IntegerField(default=0)
    perseverance = models.IntegerField(default=0)
    perseverance_quubs = models.IntegerField(default=0)
    mastery = models.IntegerField(default=0)
    mastery_quubs = models.IntegerField(default=0)
    focus = models.IntegerField(default=0)
    focus_quubs = models.IntegerField(default=0)


    def __unicode__(self):
        return str(self.id)+": Mas "+str(self.mastery)+" Foc "+str(self.focus)+" Tem "+str(self.teamwork)+" Com "+str(self.communication)+" Res "+str(self.responsability)+" Per "+str(self.perseverance)


# class Students_in_Course(models.Model):
#     student = models.ForeignKey('Student')
#     course = models.ForeignKey('Course')


# Course that helds several students
class Course(models.Model):
    image = models.ImageField(upload_to="images/courses",default="default_images/default_course_dark.jpg")
    image_thumbnail = ImageSpecField(source='image',
                                      processors=[ResizeToFill(50, 50)],
                                      format='JPEG',
                                      options={'quality': 100})
    name = models.CharField(max_length=100)
    description = models.TextField()
    starting_date = models.DateTimeField('Course Starting Date')
    ending_date = models.DateTimeField('Course Ending Date')
    has_students = models.ManyToManyField('Student', blank=True, null=True) # , through=Students_in_Course
    has_quests = models.ManyToManyField('Quest')
    has_teams = models.ManyToManyField('Team', blank=True, null=True)
    has_achievements = models.ManyToManyField('Achievement')
    has_documents = models.ManyToManyField('Educational_Document', blank=True, null=True) #through educational_documents_in_course? hay que probar el manytomany sin el through
    what_should_i_know_list = models.ManyToManyField('Course', blank=True, null=True)
    what_should_i_know_description = models.TextField()
    what_should_i_learn_list = models.ManyToManyField('Course', blank=True, null=True, related_name='what_should_i_learn_courses_list')
    what_should_i_learn_description = models.TextField()

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
    
    HAPPINESS = (
        ('normal', 'Normal'),
        ('unhappy', 'Unhappy'),
        ('happy', 'Happy'),
    )

    name = models.CharField(max_length=100)
    is_in_course = models.ForeignKey('Course')
    description = models.TextField()
    image = models.ImageField(upload_to="images/teams",default="default_images/default_team_avatar.jpg")
    image_thumbnail = ImageSpecField(source='image',
                                      processors=[ResizeToFill(50, 50)],
                                      format='JPEG',
                                      options={'quality': 100})
    has_students = models.ManyToManyField('Student')
    has_teachers = models.ManyToManyField('Teacher')
    captain = models.ForeignKey('Student', related_name='Team_Captain')
#    has_challenges = models.ManyToManyField('Challenge', blank=True, null=True)
    happiness = models.CharField(max_length=7, choices=HAPPINESS)
    has_documents = models.ForeignKey('Educational_Document', blank=True, null=True)

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
    image = models.ImageField(upload_to="images/persons",default="default_images/default_avatar_grey.jpg")
    image_thumbnail = ImageSpecField(source='image',
                                      processors=[ResizeToFill(50, 50)],
                                      format='JPEG',
                                      options={'quality': 100})
    xp  = models.IntegerField(default=0)
    #level = models.IntegerField(default=1)

    has_nicknames = models.ManyToManyField('Nickname', blank=True, null=True)
    has_achievements = models.ManyToManyField('Achievement', blank=True, null=True)

    twitter = models.CharField(max_length=250, blank=True, null=True)
    facebook = models.CharField(max_length=250, blank=True, null=True)
    dropbox = models.CharField(max_length=250, blank=True, null=True)

    has_address = models.ForeignKey('Address', blank=True, null=True)
    has_powers = models.OneToOneField('Power', blank=True, null=True)
    # has_edu_skills = models.ManyToManyField('Edu_Skill')
    # has_personal_skills = models.ManyToManyField('Personal_Skill')
    has_documents = models.ForeignKey('Educational_Document', blank=True, null=True)

    objects = InheritanceManager()

    def __unicode__(self):
        return self.name+" "+self.lastname

    
class Courses_Completed_By_Student(models.Model):
    student = models.ForeignKey('Student')
    course = models.ForeignKey('Course')


class Student(Person):

    CHARACTER_CLASS = (
        ('no_class', 'No Character Class'),
        ('explorer', 'Explorer'),
        ('competitor', 'Competitor'),
        ('colaborator', 'Colaborator'),
        ('inventor', 'Inventor'),
        )

    is_team_member_of = models.ManyToManyField('Team', blank=True, null=True)
    #is_captain_of = models.ForeignKey('Team', blank=True, null=True, related_name='Student_Captain_of_Team')
    courses_completed = models.ManyToManyField('Course', related_name='Courses_Completed_By_Student', blank=True, null=True)
    quests_completed = models.ManyToManyField('Quest', related_name='Quests_Completed_By_Student', blank=True, null=True)
    challenged_completed = models.ManyToManyField('Challenge', related_name='Challenges_Completed_By_Student', blank=True, null=True)
    tasks_completed = models.ManyToManyField('Task', related_name='Tasks_Completed_By_Student', blank=True, null=True)
    active_courses = models.ManyToManyField('Course', blank=True, null=True) # , through='Students_in_Course'
    active_quests = models.ManyToManyField('Quest', blank=True, null=True)
    active_challenges = models.ManyToManyField('Challenge', blank=True, null=True)
    active_tasks = models.ManyToManyField('Task', blank=True, null=True)
    character_class = models.CharField(max_length=11, choices=CHARACTER_CLASS)
    # Add abilities for February.

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


class Quest_Status(models.Model):
    student = models.ForeignKey('Student') # ForeignKey is Many to One
    quest = models.OneToOneField('Quest')
    started_on_date = models.DateTimeField()
    completed_on_date = models.DateTimeField(blank=True, null=True)
    unlocked = models.BooleanField(default=True)

    def __unicode__(self):
        return self.student.name+" - "+self.quest.name


class Quest(models.Model):
    image = models.ImageField(upload_to="images/quests",default="default_images/default_quest.png")
    image_thumbnail = ImageSpecField(source='image',
                                      processors=[ResizeToFill(50, 50)],
                                      format='JPEG',
                                      options={'quality': 100})
    name = models.CharField(max_length=250)
    description = models.TextField()
    has_documents = models.ManyToManyField('Educational_Document', blank=True, null=True)
    has_challenges = models.ManyToManyField('Challenge')
    has_rewards = models.ManyToManyField('Reward')
    duration = models.DateTimeField()
    team_quest = models.BooleanField(default=False)
    quest_chain = models.ForeignKey('Quest', blank=True, null=True)
    # si quest chain esta vacio significa que no es una quest chain

    def __unicode__(self):
        return str(self.id)+": "+self.name


class Challenge_Status(models.Model):
    student = models.OneToOneField('Student')
    challenge = models.OneToOneField('Challenge')
    started_on_date = models.DateTimeField()
    completed_on_date = models.DateTimeField(blank=True, null=True)
    
    def __unicode__(self):
        return self.student.name+" - "+self.challenge.name


class Challenge(models.Model):

    name = models.CharField(max_length=250)
    description = models.TextField()
    has_documents = models.ManyToManyField('Educational_Document', blank=True, null=True)
    has_tasks = models.ManyToManyField('Task')
    has_rewards = models.ManyToManyField('Reward', related_name='challenge_has_rewards')
    has_key = models.ManyToManyField('Reward', blank=True, null=True)
    duration = models.DateTimeField() # used to calculate the deadlines.
    team_challenge = models.BooleanField(default=False)

    def __unicode__(self):
        return str(self.id)+": "+self.name






class Task_Status(models.Model):

    STARS = (
        ('zero_star', 'zero'),
        ('half_star', 'half'),
        ('one_star', 'one'),
        ('one_half_star', 'one half'),
        ('two_stars', 'two'),
        ('two_half_star', 'two half'),
        ('three_stars', 'three'),
        ('three_half_star', 'three half'),
        ('four_stars', 'four'),
        ('four_half_star', 'four half'),
        ('five_stars', 'five'),
        )

    student = models.OneToOneField('Student', primary_key=True)
    task = models.OneToOneField('Task')
    started_on_date = models.DateTimeField()
    completed_on_date = models.DateTimeField(blank=True, null=True)
    deliverables = models.ForeignKey('Educational_Document', blank=True, null=True)
    send_for_evaluation = models.BooleanField(default=False)
    rating = models.CharField(max_length=10, choices=STARS) # si no funciona, crear tipo enumerado zero
    feedback = models.TextField(blank=True, null=True)


    def __unicode__(self):
        return self.student.name+" - "+self.task.name


class Task(models.Model):

    name = models.CharField(max_length=250)
    description = models.TextField() # task details
    has_material = models.ManyToManyField('Educational_Document', blank=True, null=True)
    has_support_material = models.ManyToManyField('Educational_Document', blank=True, null=True, related_name='Support_Material')
    goals = models.TextField()
    narrative = models.TextField()
    instructions = models.TextField()

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
    teamwork_points = models.IntegerField(default=0)
    teamwork_quubs = models.IntegerField(default=0)
    communication_points = models.IntegerField(default=0)
    communication_quubs = models.IntegerField(default=0)
    responsability_points = models.IntegerField(default=0)
    responsability_quubs = models.IntegerField(default=0)
    perseverance_points = models.IntegerField(default=0)
    perseverance_quubs = models.IntegerField(default=0)
    mastery_points = models.IntegerField(default=0)
    mastery_quubs = models.IntegerField(default=0)
    focus_points = models.IntegerField(default=0)
    focus_quubs = models.IntegerField(default=0)

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