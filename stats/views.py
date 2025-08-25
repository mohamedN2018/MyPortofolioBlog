from django.shortcuts import render
from .models import Stats
# Create your views here.

def stats(request):
    my_stats = Stats.objects.all()
    return render(request, 'stats/stats.html', {'my_stats': my_stats})