from django.shortcuts import render
from django.shortcuts import get_object_or_404
from .models import Services_list, Services_main
from hero.models import Hero
from accounts.models import Profile
 
# Create your views here.

appname = "services"

def Services_list_view(request):
    my_Services_main = Services_main.objects.all()
    my_Services_list = Services_list.objects.all()
    heroes = Hero.objects.all()
    profile = Profile.objects.all()
    if request.user.is_authenticated:
        try:
            profile = Profile.objects.get(user=request.user)
        except Profile.DoesNotExist:
            profile = None

    return render(request, 'services/services_home.html', {
        'heroes': heroes, 'profile': profile, 'my_Services_main': my_Services_main, 'my_Services_list': my_Services_list
    })


def services_details(request, slug):
    heroes = Hero.objects.all()
    profile = Profile.objects.all()
    if request.user.is_authenticated:
        try:
            profile = Profile.objects.get(user=request.user)
        except Profile.DoesNotExist:
            profile = None
    my_Services_list = Services_list.objects.all()
    my_Services_main = Services_main.objects.all()

    services_details = get_object_or_404(Services_list, slug=slug)

    return render(request, 'services/services_details.html', {
        'services_details': services_details, 'heroes': heroes, 'profile': profile, 'my_Services_list': my_Services_list, 'my_Services_main': my_Services_main
        })


