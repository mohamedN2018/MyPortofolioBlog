from django.db import models

# Create your models here.


class Testimonials_main(models.Model):
    Testimonials_name_main = models.CharField(max_length=100)
    Testimonials_description_main = models.TextField()

    def __str__(self):
        return self.Testimonials_name_main
    
    class Meta:
        verbose_name = 'Testimonials main'
        verbose_name_plural = 'Testimonials main'


class Testimonials(models.Model):
    Testimonials_name = models.CharField(max_length=100)
    Testimonials_Kotation = models.TextField()
    Testimonials_Speciality = models.CharField(max_length=100)
    Testimonials_image = models.ImageField(upload_to='testimonials/', null=True, blank=True)

    def __str__(self):
        return self.Testimonials_name
    
    class Meta:
        verbose_name = 'Testimonial'
        verbose_name_plural = 'Testimonials'