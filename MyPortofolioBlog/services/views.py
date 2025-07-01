from django.shortcuts import render
from django.shortcuts import get_object_or_404
from .models import Services_list, Services_main
from hero.models import Hero
from accounts.models import Profile
 
# Create your views here.

appname = "services"

def Services_list_view(reuquest):
    my_Services_main = Services_main.objects.all()
    my_Services_list = Services_list.objects.all()
    heroes = Hero.objects.all()
    profile = Profile.objects.all()
    
    return render(reuquest, 'services/services_home.html', {
        'heroes': heroes, 'profile': profile, 'my_Services_main': my_Services_main, 'my_Services_list': my_Services_list
    })


def services_details(reuquest, slug):
    heroes = Hero.objects.all()
    profile = Profile.objects.all()
    my_Services_list = Services_list.objects.all()
    my_Services_main = Services_main.objects.all()

    services_details = get_object_or_404(Services_list, slug=slug)

    return render(reuquest, 'services/services_details.html', {
        'services_details': services_details, 'heroes': heroes, 'profile': profile, 'my_Services_list': my_Services_list, 'my_Services_main': my_Services_main
        })


