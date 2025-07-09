from django.db import models

# Create your models here.

class ContactMain(models.Model):
    cont_title = models.CharField(max_length=254, blank=True, null=True)
    cont_decription = models.CharField(max_length=254, blank=True, null=True)
    cont_palse = models.CharField(max_length=50)
    cont_phone = models.CharField(max_length=20)
    cont_email = models.EmailField(max_length=254)

    class Meta:
        verbose_name = ("contactmain")
        verbose_name_plural = ("contactmain")

    def __str__(self):
        return self.cont_email


class Contact_Main(models.Model):
    cont_title = models.CharField(max_length=254, blank=True, null=True)
    cont_decription = models.CharField(max_length=254, blank=True, null=True)
    cont_palse = models.CharField(max_length=50)
    cont_phone = models.CharField(max_length=20)
    cont_email = models.EmailField(max_length=254)

    class Meta:
        verbose_name = ("contact main")
        verbose_name_plural = ("contact main")

    def __str__(self):
        return self.cont_email



class social_media_icons(models.Model):
    icon_name = models.CharField(max_length=255, blank=True, null=True)
    link = models.URLField(max_length=255, blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        verbose_name = ("social media icons")
        verbose_name_plural = ("social media icons")

    def __str__(self):
        return self.icon_name