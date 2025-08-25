from .views import testimonials_page
from django.urls import path


appname = "testimonials"


urlpatterns = [
    path('', testimonials_page, name='testimonials_page'),
]