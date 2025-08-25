from django.urls import path
from . import views

appname = "resume"


urlpatterns = [
    path('', views.resume, name='resume'),
]