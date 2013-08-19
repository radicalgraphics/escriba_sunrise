__author__ = 'Leunam'

from django.contrib import admin
from qubalapp.models import Nickname, Achievement, Power, Course, Team, Courses_Completed_By_Student, Student, Teacher, Address, Quest, Challenge, Task, Edu_Skill, Reward, Educational_Document, Rules_Xp_per_Level, Quest_Status, Challenge_Status, Task_Status, Task_Video, Task_Deliverable

# class StudentInline(admin.TabularInline):
# 	model = Student
# 	extra = 1

#A lo mejor se puede arreglar cambiando el TabularInline to 
# class StudentInline(admin.TabularInline):
#      model = Student.active_courses.through
#      extra=1

# class CourseAdmin(admin.ModelAdmin):
# 	fieldsets = [
# 		('Nombre',			{'fields': ['name']}),
# 		('Fecha inicial',	{'fields': ['starting_date'], 'classes': ['collapse']}),
# 		('Fecha final',		{'fields': ['ending_date'], 'classes': ['collapse']}),
# 		('Fecha final',		{'fields': ['has_students'],}),
# 	]
# 	inlines = [StudentInline]
	
# 	#esto ensenia las diferentes columnas con el dato
# 	list_display = ('name', 'starting_date', 'ending_date', 'long_course')

# 	#aniade un filtro a la derecha por el parametro que le pasas (aqui date)
# 	list_filter = ['starting_date']

# 	#sale un search field que busca por el termino que se le pasa (name)
# 	search_fields = ['name']

# 	#
# 	date_hierarchy = 'starting_date'

admin.site.register(Course)
admin.site.register(Address)	
admin.site.register(Student)
admin.site.register(Nickname)
admin.site.register(Achievement)
admin.site.register(Power)
admin.site.register(Team)
admin.site.register(Teacher)
admin.site.register(Quest)
admin.site.register(Challenge)
admin.site.register(Edu_Skill)
admin.site.register(Reward)
admin.site.register(Educational_Document)
admin.site.register(Rules_Xp_per_Level)
admin.site.register(Quest_Status)
admin.site.register(Challenge_Status)
admin.site.register(Task_Status)
admin.site.register(Task_Video)
admin.site.register(Task_Deliverable)


#admin.site.register(Students_in_Course)
