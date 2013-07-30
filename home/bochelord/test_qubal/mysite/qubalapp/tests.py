"""
This file demonstrates writing tests using the unittest module. These will pass
when you run "manage.py test".

Replace this with more appropriate tests for your application.
"""

import datetime
from django.utils import timezone
from django.test import TestCase
from qubalapp.models import Course, Student

class SimpleTest(TestCase):
    def test_basic_addition(self):
        """
        Tests that 1 + 1 always equals 2.
        """
        self.assertEqual(1 + 1, 2)

class qubalappMethodTests(TestCase):
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