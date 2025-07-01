import django_filters
from .models import Project

class ProjectFilter(django_filters.FilterSet):
    
    class Meta:
        model = Project
        fields = ['category', 'name_project']  
# الحقول التي تريد الفلترة عليها