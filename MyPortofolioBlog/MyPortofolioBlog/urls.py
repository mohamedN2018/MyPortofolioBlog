"""
URL configuration for MyPortofolioBlog project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/5.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.urls import include # Import include to include app URLs
from django.conf.urls.static import static
from django.conf import settings
from django.urls import re_path
from django.conf.urls.i18n import i18n_patterns
from django.conf.urls.i18n import set_language
from django.utils.translation import gettext_lazy as _
from django.conf.urls import handler404
from django.shortcuts import redirect


def redirect_to_home(request, exception=None):
    return redirect('core:index')

handler404 = redirect_to_home

urlpatterns = i18n_patterns(
    path("accounts/", include("django.contrib.auth.urls")),
    re_path('accounts/', include('accounts.urls'), name='accounts'),
    path('i18n/setlang/', set_language, name='set_language'),
    path('admin/', admin.site.urls),
    path('', include('core.urls')),  # Include the portfolio app URLs
    path('/', include('hero.urls')),  # Include the portfolio app URLs
    path('about/', include('about.urls')),  # Include the portfolio app URLs
    path('/', include('stats.urls')),  # Include the portfolio app URLs
    path('/', include('skils.urls')),  # Include the portfolio app URLs  
    path('portfolio/', include('portfolio.urls')),  # Include the portfolio app URLs    
    path('services/', include('services.urls')),  # Include the portfolio app URLs     
    path('testimonials/', include('testimonials.urls')),  # Include the portfolio app URLs         
) + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)



    # path('resume/', include('resume.urls')),  # Include the portfolio app URLs
    # path('testimonials/', include('testimonials.urls')),  # Include the portfolio app URLs
    # path('contact/', include('contact.urls')),  # Include the portfolio app URLs
