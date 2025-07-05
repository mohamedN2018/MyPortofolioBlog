from django.shortcuts import render
from django.core.mail import send_mail
from .models import ContactMain, Contact_Main
from hero.models import Hero
from accounts.models import Profile

from django.conf import settings
# Create your views here.


def send_message(request):
    my_contact_main = Contact_Main.objects.first()

    heroes = Hero.objects.all()

    if  request.method == 'POST':
        subject = request.POST['subject']
        email = request.POST['email']
        message = request.POST['message']

        send_mail(
            subject,
            message,
            settings.EMAIL_HOST_USER,
            [email],
            fail_silently=False,
        )
        
    

    profile = Profile.objects.all()
    if request.user.is_authenticated:
        try:
            profile = Profile.objects.get(user=request.user)
        except Profile.DoesNotExist:
            profile = None


    return render(request, 'contact/contact.html', {'my_contact_main': my_contact_main, 'heroes': heroes, 'profile': profile})