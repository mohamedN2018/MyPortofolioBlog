from django.shortcuts import render
from .models import Testimonials_main, Testimonials

# Create your views here.
def testimonials_page(request):
    my_Testimonials_main = Testimonials_main.objects.all()
    my_Testimonials = Testimonials.objects.all()
    contex = {'my_Testimonials_main': my_Testimonials_main, 'my_Testimonials': my_Testimonials}
    return render(request, 'main_page/main_page.html', context=contex)
       