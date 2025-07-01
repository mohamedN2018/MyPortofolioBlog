from django.shortcuts import render
from .models import resume, resume_list_one, resume_list_two, list_one, list_tow


# Create your views here.
def resume(request):
    my_resume = resume.objects.all()
    my_resume_list_one = resume_list_one.objects.all()
    my_list_one = list_one.objects.all()
    my_resume_list_two = resume_list_two.objects.all()
    my_list_tow = list_tow.objects.all()

    return render(request, 'resume/resume.html', 
        {
    'my_resume': my_resume, 'my_resume_list_one': my_resume_list_one, 'my_list_one': my_list_one, 
    'my_resume_list_two': my_resume_list_two, 'my_list_tow': my_list_tow,
    })