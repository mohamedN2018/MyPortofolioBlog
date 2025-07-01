from django.contrib import admin
from .models import skils, skils_main, skils_tow

appname = "skils"

# Register your models here.
admin.site.register(skils)
admin.site.register(skils_main)
admin.site.register(skils_tow)
