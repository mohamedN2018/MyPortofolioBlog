from django.shortcuts import render, get_object_or_404
from .models import About, About_list, downloadcv
from django.shortcuts import redirect
from hero.models import Hero
from accounts.models import Profile
# Create your views here.
from django.shortcuts import render, get_list_or_404, get_object_or_404

from django.http import HttpResponse

appname = "about"


def about(request):
    profile = Profile.objects.get(user=request.user)
    heros = Hero.objects.all()
    Abouts = About.objects.all()
    return redirect('core:index', {'Abouts': Abouts, 'heros': heros, 'profile': profile})


def about_details(request):
    profile = Profile.objects.get(user=request.user)
    Abouts = About.objects.all()
    data_list = About_list.objects.all()
    down_cv = downloadcv.objects.all()
    heroes = Hero.objects.all()
    return render(request, 'about_details.html', {
    'Abouts': Abouts, 'heroes': heroes, 'data_list': data_list, 'profile': profile,
    'down_cv': down_cv,
    })


def About_list_details(request, slug):
    about_details = get_object_or_404(About_list, slug=slug)
    data_list = About_list.objects.all()
    down_cv = downloadcv.objects.all()
    Abouts = About.objects.all()
    heroes = Hero.objects.all()
    profile = Profile.objects.get(user=request.user)
    return render(request, 'about/about_list_details.html', 
    {
        'Abouts': Abouts, 'data_list': data_list, 'heroes': heroes, 'profile': profile, 'about_details': about_details,
        'down_cv': down_cv
    })


def online_cv(request):
    down_cv = downloadcv.objects.all()
    return render(request, 'cv/online_cv.html', {'down_cv': down_cv})