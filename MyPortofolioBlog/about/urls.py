from django.urls import path
from . import views
from django.conf.urls.i18n import i18n_patterns
from django.conf.urls.i18n import set_language
from django.utils.translation import gettext_lazy as _
from django.conf import settings
from django.conf.urls.static import static



nameapp = 'about'
# URL configuration for the about app

# This file defines the URL patterns for the about app, which includes
# the home page, about page, projects page, and contact page.
    
urlpatterns = [
    path('', views.About_list, name='About_list'),
    path('about_details', views.about_details, name='about_details'),
    path('about_details/<slug:slug>/', views.About_list_details, name='About_list_details'),
    path('online_cv', views.online_cv, name='online_cv'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
