from django.shortcuts import render, get_object_or_404
from .models import About, About_list
from django.shortcuts import redirect
from hero.models import Hero
# Create your views here.
from django.shortcuts import render, get_list_or_404

appname = "about"


def about(request):
    heros = Hero.objects.all()
    Abouts = About.objects.all()
    return redirect('core:index', {'Abouts': Abouts, 'heros': heros})


def about_details(request):
    Abouts = About.objects.all()
    data_list = About_list.objects.all()
    heroes = Hero.objects.all()
    return render(request, 'about_details.html', {'Abouts': Abouts, 'heroes': heroes, 'data_list': data_list})


def About_list_details(request, slug):
    data_list  = get_object_or_404(About_list, slug=slug)
    Abouts = About.objects.all()
    heroes = Hero.objects.all()
    return render(request, 'about/about_list_details.html', 
                  {
                      'Abouts': Abouts, 'data_list ': data_list, 'heroes': heroes,
                   })
