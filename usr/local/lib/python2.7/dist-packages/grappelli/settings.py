# coding: utf-8

# DJANGO IMPORTS
from django.conf import settings

# Admin Site Title
ADMIN_HEADLINE = getattr(settings, "GRAPPELLI_ADMIN_HEADLINE", 'Qubal v0.3 Toro Admin')
ADMIN_TITLE = getattr(settings, "GRAPPELLI_ADMIN_TITLE", 'Admin Qubal v0.3 Toro')

# Link to your Main Admin Site (no slashes at start and end)
ADMIN_URL = getattr(settings, "GRAPPELLI_ADMIN_URL", '/admin/')

# AUTOCOMPLETE LIMIT
AUTOCOMPLETE_LIMIT = getattr(settings, "GRAPPELLI_AUTOCOMPLETE_LIMIT", 10)
