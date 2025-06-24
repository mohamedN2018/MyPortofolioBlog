from django.contrib import admin

# Register your models here.

from .models import Project, Contact, About
@admin.register(Project)
class ProjectAdmin(admin.ModelAdmin):
    list_display = ('title', 'description', 'url')
    search_fields = ('title', 'description')

@admin.register(Contact)
class ContactAdmin(admin.ModelAdmin):
    list_display = ('name', 'email')
    search_fields = ('name', 'email')
@admin.register(About)
class AboutAdmin(admin.ModelAdmin):
    list_display = ('content',)
    search_fields = ('content',)
    