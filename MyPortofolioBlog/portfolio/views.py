from django.shortcuts import render

# Create your views here.

def home(request):
    """
    Render the home page of the portfolio.
    """
    return render(request, 'portfolio/home.html')

def about(request):
    """
    Render the about page of the portfolio.
    """
    return render(request, 'portfolio/about.html')

def projects(request):
    """
    Render the projects page of the portfolio.
    """
    return render(request, 'portfolio/projects.html')

def contact(request):
    """
    Render the contact page of the portfolio.
    """
    return render(request, 'portfolio/contact.html')

