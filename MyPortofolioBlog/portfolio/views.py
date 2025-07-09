from django.shortcuts import render
from django.shortcuts import render, get_object_or_404
from .models import Project, Category
from hero.models import Hero
from accounts.models import Profile
from django.core.paginator import Paginator
from about.models import About
from contact.models import social_media_icons
# Create your views here.
from .filters import ProjectFilter

def home_portfolio(request):
    abouts = About.objects.all()
    projects = Project.objects.all().order_by('-created_at')[:6]
    my_social_media_icons = social_media_icons.objects.all()
    heroes = Hero.objects.all()
    profile = Profile.objects.all()
    if request.user.is_authenticated:
        try:
            profile = Profile.objects.get(user=request.user)
        except Profile.DoesNotExist:
            profile = None    # Render the profile page

    # projects = Project.objects.order_by('-rating')
   # Base queryset
    projects = Project.objects.all()
    
 # Apply search filter
    query = request.GET.get('search')
    if query:
        projects = projects.filter(name_project__icontains=query)

    # Apply sorting
    sort_option = request.GET.get('sort', '-created_at')
    if sort_option == 'updated':
        projects = projects.order_by('-updated_at')
    else:
        projects = projects.order_by('-created_at')
    

    # Pass categories to template for the dropdown list
    categories = Category.objects.all()
    categorys = Category.objects.values_list('name_caregory', flat=True)

        # Filter by category slug if present
 # Filter by category slug if provided (assuming category foreign key named 'category' and Category has 'slug')
    category_slug = request.GET.get('category')
    if category_slug:
        projects = projects.filter(category__slug=category_slug)

    # Sorting options
    sort_option = request.GET.get('sort', 'latest')
    if sort_option == 'rating':
        projects = projects.order_by('-rating')
    elif sort_option == 'minimum_price':
        projects = projects.order_by('minimum_price')
    elif sort_option == 'updated':
        projects = projects.order_by('-updated_at')
    else:  # default or 'latest'
        projects = projects.order_by('-created_at')


    # Pagination (using the already filtered/sorted queryset)
    paginator = Paginator(projects, 3)
    page_number = request.GET.get('page')
    projects = paginator.get_page(page_number)  
    

    return render(request, 'portfolio/home_portfolio.html',
                  {
                      'projects': projects, 'heroes': heroes, 'profile': profile, 'categories': categories,
                      'categorys': categorys, 'paginator': paginator, 'page_number': page_number, 'sort_option': sort_option,
                      'abouts': abouts, 'my_social_media_icons': my_social_media_icons
                   })

def view_card_portfolio(request, slug):
    heroes = Hero.objects.all()
    my_social_media_icons = social_media_icons.objects.all()
    profile = Profile.objects.all()
    if request.user.is_authenticated:
        try:
            profile = Profile.objects.get(user=request.user)
        except Profile.DoesNotExist:
            profile = None    # Render the profile page
    projects = get_object_or_404(Project, slug=slug)
    return render(request, 'portfolio/view_card_portfolio.html',
                  {
                      'projects': projects, 'profile': profile, 'heroes': heroes, 'my_social_media_icons': my_social_media_icons
                   })
                  



def get_queryset(self):
        queryset = super().get_queryset()
        category = self.request.GET.get('category')
        if category:
            queryset = queryset.filter(category_id=category)
        return queryset                  



