from django.shortcuts import render

# Create your views here.
def HeroPage(request):
    Hero = Hero.objects.all()
    return render(request, 'hero/heropage.html')