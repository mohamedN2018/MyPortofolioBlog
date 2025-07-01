from django.db import models
from django.utils.text import slugify
# Create your models here.

class Services_main(models.Model):
    services_title = models.CharField(max_length=100)
    services_description = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def __str__(self):
        return self.services_title
    
    def Meta(self):
        verbose_name = 'Services'
        verbose_name_plural = 'Services'



class Services_list(models.Model):
    services_icon = models.CharField(max_length=100)
    services_title = models.CharField(max_length=100)        
    services_description = models.TextField()
    slug = models.SlugField(unique=True, blank=True, null=True)
    
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    def save(self, *args, **kwargs):
        if not self.slug:
            base_slug = slugify(self.name_project or '')
            unique_slug = base_slug
            num = 1

            while Services_list.objects.filter(slug=unique_slug).exclude(pk=self.pk).exists():
                unique_slug = f"{base_slug}-{num}"
                num += 1

            self.slug = unique_slug

        super().save(*args, **kwargs)


    def __str__(self):
        return self.services_title
    

    def Meta(self):
        verbose_name = 'Services'
        verbose_name_plural = 'Services'
        