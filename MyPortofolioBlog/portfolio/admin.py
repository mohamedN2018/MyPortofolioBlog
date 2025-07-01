from django.contrib import admin
from .models import Project, Category, main_page
from django.utils.translation import gettext_lazy as _

# Register your models here.

admin.site.register(Project)
admin.site.register(Category)
admin.site.register(main_page)

# @admin.register(Project)
# class ProjectAdmin(admin.ModelAdmin):
#     list_display = ('title', 'description', 'url')
#     search_fields = ('title', 'description')

# @admin.register(Contact)
# class ContactAdmin(admin.ModelAdmin):
#     list_display = ('name', 'email')
#     search_fields = ('name', 'email')
# @admin.register(About)
# class AboutAdmin(admin.ModelAdmin):
#     list_display = ('content',)
#     search_fields = ('content',)
    