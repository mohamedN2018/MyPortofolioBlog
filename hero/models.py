from django.db import models
from django.utils.translation import gettext_lazy as _

# Create your models here.

class Hero(models.Model):
    title = models.CharField(max_length=255, blank=True, null=True)
    title_ar = models.CharField(max_length=255, blank=True, null=True)
    content = models.TextField(max_length=255, blank=True, null=True)
    content_ar = models.TextField(max_length=255, blank=True, null=True)
    image_hero = models.ImageField(upload_to='media/hero/', blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    site_name = models.CharField(max_length=100, default="MySite")
    site_name_ar = models.CharField(max_length=100, default="موقعي")

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Hero'
        verbose_name_plural = 'Heroes'


