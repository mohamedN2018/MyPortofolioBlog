from django.contrib import admin
from django.contrib import admin
from .models import resume, resume_list_one, resume_list_two, list_one, list_tow

admin.site.register(resume)
admin.site.register(resume_list_one)
admin.site.register(list_one)

admin.site.register(resume_list_two)
admin.site.register(list_tow)
