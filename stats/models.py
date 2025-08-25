from django.db import models

# Create your models here.

class Stats(models.Model):
    title_stats = models.CharField(max_length=100)
    value_stats = models.IntegerField()
    icon_stats = models.CharField(max_length=100)

    def __str__(self):
        return self.title_stats

    class Meta:
        verbose_name = 'Stat'
        verbose_name_plural = 'Stats'