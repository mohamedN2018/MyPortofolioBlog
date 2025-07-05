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


