from django.shortcuts import render
from hero.models import Hero
from accounts.models import Profile
from about.models import About
from stats.models import Stats
from skils.models import skils, skils_main, skils_tow
from resume.models import resume, resume_list_one, resume_list_two, list_one, list_tow
from portfolio.models import Project, Category, main_page
from services.models import Services_list, Services_main
from testimonials.models import Testimonials, Testimonials_main
from contact.models import Contact_Main, social_media_icons
from django.core.mail import send_mail
from django.utils.translation import gettext_lazy as _

# Create your views here.

app_name = 'core'

def index(request):
    heroes = Hero.objects.all()
    my_stats = Stats.objects.all()
    my_skils = skils.objects.all()
    my_skils_tow = skils_tow.objects.all()
    main_skils = skils_main.objects.all()
    abouts = About.objects.all()
    projects = Project.objects.all().order_by('-created_at')[:7]

    my_resume = resume.objects.all()
    my_resume_list_one = resume_list_one.objects.all()
    my_list_one = list_one.objects.all()
    my_resume_list_two = resume_list_two.objects.all()
    my_list_tow = list_tow.objects.all()

    my_Services_main = Services_main.objects.all()
    my_Services_list = Services_list.objects.all()


    my_main_page = main_page.objects.all()
    # Pass categories to template for the dropdown list
    categories = Category.objects.all()
    categorys = Category.objects.values_list('name_caregory', flat=True)

     # Filter by category slug if provided (assuming category foreign key named 'category' and Category has 'slug')
    category_slug = request.GET.get('category')
    if category_slug:
        projects = projects.filter(category__slug=category_slug)


    profile = Profile.objects.all()
    if request.user.is_authenticated:
        try:
            profile = Profile.objects.get(user=request.user)
        except Profile.DoesNotExist:
            profile = None
            

    my_contact_main = Contact_Main.objects.first()
    my_social_media_icons = social_media_icons.objects.all()

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

    my_Testimonials_main = Testimonials_main.objects.all()
    my_Testimonials = Testimonials.objects.all()
    contex = {
        'my_Testimonials_main': my_Testimonials_main, 'my_Testimonials': my_Testimonials, 
        'heroes': heroes, 'profile': profile, 'abouts': abouts, 'my_stats': my_stats, 'my_skils': my_skils,
        'main_skils': main_skils, 'my_skils_tow': my_skils_tow,
        'my_resume': my_resume, 'my_resume_list_one': my_resume_list_one, 'my_list_one': my_list_one, 
        'my_resume_list_two': my_resume_list_two, 'my_list_tow': my_list_tow, 'projects': projects, 'my_contact_main': my_contact_main,
        'categorys': categorys, 'categories': categories, 'my_main_page': my_main_page, 'my_Services_main': my_Services_main, 'my_Services_list': my_Services_list,
        'my_social_media_icons': my_social_media_icons,
    }



    return render(request, 'index.html', context=contex)
                  