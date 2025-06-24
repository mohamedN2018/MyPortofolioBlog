from django.urls import path
from . import views

nameapp = 'portfolio'
# URL configuration for the portfolio app
# This file defines the URL patterns for the portfolio app, which includes
# the home page, about page, projects page, and contact page.
    
urlpatterns = [
    path('', views.home, name='home'),
    path('about/', views.about, name='about'),
    path('projects/', views.projects, name='projects'),
    path('contact/', views.contact, name='contact'),
]
