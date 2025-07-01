from django.shortcuts import render
from .models import skils, skils_main, skils_tow
# Create your views here.

def skils(request):
    main_skils = skils_main.objects.all()
    my_skils = skils.objects.all()
    my_skils_tow = skils_tow.objects.all()
    return render(request, 'skils.html', {'my_skils': my_skils, 'main_skils': main_skils, 'my_skils_tow': my_skils_tow})