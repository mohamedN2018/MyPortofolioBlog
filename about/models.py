from django.db import models

# Create your models here.
from django.utils.text import slugify


class About(models.Model):
    about = models.TextField(max_length=255, blank=True, null=True)
    description_about = models.TextField(max_length=255, blank=True, null=True)
    description_main_about = models.TextField(max_length=300, blank=True, null=True)
    title_head_line = models.CharField(max_length=255, blank=True, null=True)
    images_about = models.ImageField(upload_to='about/', blank=True, null=True)
    birthday_about = models.DateField(blank=True, null=True) 
    website_link = models.CharField(max_length=200, blank=True, null=True)
    age_about = models.IntegerField(blank=True, null=True)
    degree = models.CharField(max_length=255, blank=True, null=True)
    freelance_about = models.CharField(max_length=255, blank=True, null=True)
    description_bottom_about = models.TextField(max_length=255, blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.about

    class Meta:
        verbose_name = 'About'
        verbose_name_plural = 'About'


class About_list(models.Model):
    about_list = models.CharField(max_length=255, blank=True, null=True)
    title_about = models.CharField(max_length=255, blank=True, null=True)
    images_about_list = models.ImageField(upload_to='list/', blank=True, null=True)
    slug = models.SlugField(unique=True, blank=True, null=True)
    description_list = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.about_list

    class Meta:
        verbose_name = 'About List'
        verbose_name_plural = 'About Lists'



class downloadcv(models.Model):
    title_down = models.CharField(max_length=255, blank=True, null=True)
    name_down = models.CharField(max_length=255, blank=True, null=True)
    file = models.FileField(upload_to='files/', blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.name_down

    class Meta:
        verbose_name = 'Download'
        verbose_name_plural = 'Downloads'
