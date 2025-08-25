from django.urls import path
from . import views

nameapp = 'services'
# URL configuration for the services app
# This file defines the URL patterns for the services app, which includes
# the home page and card details page.
#     
urlpatterns = [
    path('', views.Services_list_view, name='Services_list_view'),
    path('<slug:slug>/', views.services_details, name='services_details'),
]
