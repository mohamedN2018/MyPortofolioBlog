from django.conf import settings
from django.conf.urls.static import static
from django.urls import path    

from . import views

app_name = 'skils'

urlpatterns = [
    path('', views.skils, name='skils'),
    # path('', views.Skils_list, name='Skils_list'),
    # path('skils_details/<slug:slug>/', views.Skils_list_details, name='Skils_list_details'),
    # path('skils_details', views.skils_details, name='skils_details'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)