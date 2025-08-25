from django.db import models

# Create your models here.

class skils_main(models.Model):
    main_title = models.CharField(max_length=100)
    description_skils = models.TextField(max_length=255, blank=True, null=True)

    def __str__(self):
        return self.main_title

    class Meta:
        verbose_name = 'main_title'
        verbose_name_plural = 'main_title'

class skils(models.Model):
    title_skils = models.CharField(max_length=100)
    aria_valuenow = models.IntegerField()
    date = models.DateField()

    def __str__(self):
        return self.title_skils

    class Meta:
        verbose_name = 'Skils'
        verbose_name_plural = 'Skils'


class skils_tow(models.Model):
    title_skils = models.CharField(max_length=100)
    aria_valuenow = models.IntegerField()
    date = models.DateField()

    def __str__(self):
        return self.title_skils

    class Meta:
        verbose_name = 'Skils-tow'
        verbose_name_plural = 'Skils-tow'