from django.urls import path
from . import views

nameapp = 'portfolio'
# URL configuration for the portfolio app
# This file defines the URL patterns for the portfolio app, which includes
# the home page, about page, projects page, and contact page.
    
urlpatterns = [
    path('', views.home_portfolio, name='home_portfolio'),
    path('<slug:slug>/', views.view_card_portfolio, name='view_card_portfolio'),
]
