from django.shortcuts import render, get_object_or_404, redirect
from .models import About, About_list, downloadcv
from hero.models import Hero
from accounts.models import Profile
from django.contrib.auth.decorators import login_required
from contact.models import social_media_icons, Contact_Main



appname = "about"


@login_required
def about(request):
    try:
        profile = Profile.objects.get(user=request.user)
    except Profile.DoesNotExist:
        return render(request, 'profile/profile_not_found.html', {'error': 'Profile not found'})

    heros = Hero.objects.all()
    abouts = About.objects.all()
    my_contact_main = Contact_Main.objects.first()
    my_social_media_icons = social_media_icons.objects.all()

    # Redirect with context is not typical, so instead render the template or redirect properly
    # Assuming you want to render your index page with context:
    return render(request, 'core/index.html', {'about': abouts, 'heros': heros, 'profile': profile, 'my_contact_main': my_contact_main, 'my_social_media_icons': my_social_media_icons})


def about_details(request):
    profile = Profile.objects.all()
    my_social_media_icons = social_media_icons.objects.all()
    my_contact_main = Contact_Main.objects.first()
    if request.user.is_authenticated:
        try:
            profile = Profile.objects.get(user=request.user)
        except Profile.DoesNotExist:
            profile = None
    
    
    
    abouts = About.objects.all()
    data_list = About_list.objects.all()
    down_cv = downloadcv.objects.all()
    heroes = Hero.objects.all()

    context = {
        'abouts': abouts,
        'heroes': heroes,
        'data_list': data_list,
        'profile': profile,
        'down_cv': down_cv,
        'my_social_media_icons': my_social_media_icons,
        'my_contact_main': my_contact_main
    }

    

    return render(request, 'about_details.html', context)


def About_list_details(request, slug):
    about_details = get_object_or_404(About_list, slug=slug)
    data_list = About_list.objects.all()
    down_cv = downloadcv.objects.all()
    Abouts = About.objects.all()
    heroes = Hero.objects.all()
    my_social_media_icons = social_media_icons.objects.all()
    my_contact_main = Contact_Main.objects.first()
    profile = Profile.objects.all()
    if request.user.is_authenticated:
        try:
            profile = Profile.objects.get(user=request.user)
        except Profile.DoesNotExist:
            profile = None
            
    return render(request, 'about/about_list_details.html', 
    {
        'Abouts': Abouts, 'data_list': data_list, 'heroes': heroes, 'profile': profile, 'about_details': about_details,
        'down_cv': down_cv, 'my_social_media_icons': my_social_media_icons, 'my_contact_main': my_contact_main
    })


def online_cv(request):
    down_cv = downloadcv.objects.all()
    return render(request, 'cv/online_cv.html', {'down_cv': down_cv})