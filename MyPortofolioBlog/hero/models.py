from django.db import models

# Create your models here.

class Hero(models.Model):
    title = models.CharField(max_length=255)
    content = models.TextField()
    image_hero = models.ImageField(upload_to='media/hero/', blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    site_name = models.CharField(max_length=100, default="MySite")

    def __str__(self):
        return self.title

    class Meta:
        verbose_name = 'Hero'
        verbose_name_plural = 'Heroes'


