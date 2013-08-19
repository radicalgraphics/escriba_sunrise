"""
This file demonstrates writing tests using the unittest module. These will pass
when you run "manage.py test".

Replace this with more appropriate tests for your application.
"""

import datetime
from django.utils import timezone
from django.test import TestCase
# from django.utils import unittest
from qubalapp.models import Course, Student, Rules_Xp_per_Level
import qubal_xp



# to run the test write "python -Wall manage.py test" or 
# "python -Wall manage.py test qubalappMethodTests", the -Wall flag
# enables warnings in the test.

class SimpleTest(TestCase):
    def test_basic_addition(self):
        """
        Tests that 1 + 1 always equals 2.
        """
        self.assertEqual(1 + 1, 2)

class qubalappMethodTests(TestCase):

	fixtures = ['test_dump_data.json']

	def test_is_long_course_long(self):
		"""
		Test to check that long_course is longer or equal than 3 days.
		"""
		curso_corto = Course(starting_date=timezone.now(), ending_date=timezone.now() + datetime.timedelta(days=1))
		curso_largo = Course(starting_date=timezone.now(), ending_date=timezone.now() + datetime.timedelta(days=3))
		curso_hiperlargo = Course(starting_date=timezone.now(), ending_date=timezone.now() + datetime.timedelta(days=4))

		self.assertEqual(curso_hiperlargo.long_course(), True)
		self.assertEqual(curso_largo.long_course(), True)
		self.assertEqual(curso_corto.long_course(), False)

	def test_calculate_current_xp(self):
		"""
		level 1 - 50
		level 2 - 100
		level 3 - 175
		"""
		

		self.assertEqual(qubal_xp.calculate_current_xp(0), 0)
		# self.assertEqual(calculate_current_xp(49), 49)
		self.assertEqual(qubal_xp.calculate_current_xp(50), 0)
		var = qubal_xp.calculate_current_xp(51)
		print str(var) + "WWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWW"
		self.assertEqual(var, 1)
		self.assertEqual(qubal_xp.calculate_current_xp(51), 1)
		# self.assertEqual(qubal_xp.calculate_current_xp(100), 50)
		# self.assertEqual(qubal_xp.calculate_current_xp(149), 99)
		# self.assertEqual(qubal_xp.calculate_current_xp(150), 0)
		# self.assertEqual(qubal_xp.calculate_current_xp(151), 1)