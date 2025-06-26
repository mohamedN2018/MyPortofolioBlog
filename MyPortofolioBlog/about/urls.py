from django.urls import path
from . import views
from django.conf.urls.i18n import i18n_patterns
from django.conf.urls.i18n import set_language
from django.utils.translation import gettext_lazy as _


nameapp = 'about'
# URL configuration for the about app

# This file defines the URL patterns for the about app, which includes
# the home page, about page, projects page, and contact page.
    
urlpatterns = [
    path('', views.home, name='home'),
]