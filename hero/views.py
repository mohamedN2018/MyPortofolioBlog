from django.shortcuts import render
from .models import Hero
from contact.models import Contact_Main, social_media_icons
from django.utils.translation import gettext_lazy as _

app_name = 'hero'

# Create your views here.
def HeroPage(request):
    heroes = Hero.objects.all()
    my_social_media_icons = social_media_icons.objects.all()

    return render(request, 'hero/heropage.html',{'heroes': heroes, 'my_social_media_icons': my_social_media_icons})