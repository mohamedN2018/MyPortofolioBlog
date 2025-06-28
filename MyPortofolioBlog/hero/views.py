from django.shortcuts import render
from .models import Hero

app_name = 'hero'

# Create your views here.
def HeroPage(request):
    heroes = Hero.objects.all()
    return render(request, 'hero/heropage.html',{'heroes': heroes})