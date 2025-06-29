from django.shortcuts import render
from hero.models import Hero
from accounts.models import Profile
from about.models import About
from stats.models import Stats
# Create your views here.

app_name = 'core'

def index(request):
    heroes = Hero.objects.all()
    my_stats = Stats.objects.all()
    abouts = About.objects.all()
    profile = Profile.objects.all()
    if request.user.is_authenticated:
        try:
            profile = Profile.objects.get(user=request.user)
        except Profile.DoesNotExist:
            profile = None
            
    return render(request, 'index.html', {'heroes': heroes, 'profile': profile, 'abouts': abouts, 'my_stats': my_stats})