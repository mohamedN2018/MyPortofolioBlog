from django.db import models
from django.utils.text import slugify
from django.utils.translation import gettext_lazy as _


class Category(models.Model):
    name_caregory = models.CharField(max_length=100)
    slug = models.SlugField(unique=True, blank=True, null=True)

    def save(self, *args, **kwargs):
        if not self.slug:
            base_slug = slugify(self.name_caregory)
            unique_slug = base_slug
            num = 1

            while Category.objects.filter(slug=unique_slug).exclude(pk=self.pk).exists():
                unique_slug = f"{base_slug}-{num}"
                num += 1

            self.slug = unique_slug

        super().save(*args, **kwargs)

    def __str__(self):
        return self.name_caregory

    class Meta:
        verbose_name = 'Category'
        verbose_name_plural = 'Categories'


class Project(models.Model):
    name_project = models.CharField(max_length=100, blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    category = models.ForeignKey('Category', on_delete=models.CASCADE, blank=True, null=True)
    slug = models.SlugField(unique=True, blank=True, null=True)
    image = models.ImageField(upload_to='projects/', blank=True, null=True)
    image2 = models.ImageField(upload_to='projects/', blank=True, null=True)
    image3 = models.ImageField(upload_to='projects/', blank=True, null=True)
    image4 = models.ImageField(upload_to='projects/', blank=True, null=True)
    url = models.URLField(blank=True, null=True)
    rating = models.FloatField(default=0.0)
    minimum_price = models.FloatField(default=0.0)
    created_at = models.DateTimeField(auto_now_add=True, blank=True, null=True)
    updated_at = models.DateTimeField(auto_now=True, blank=True, null=True)

    def save(self, *args, **kwargs):
        if not self.slug:
            base_slug = slugify(self.name_project or '')
            unique_slug = base_slug
            num = 1

            while Project.objects.filter(slug=unique_slug).exclude(pk=self.pk).exists():
                unique_slug = f"{base_slug}-{num}"
                num += 1

            self.slug = unique_slug

        super().save(*args, **kwargs)

    def __str__(self):
        return self.name_project or self.description or ''

    class Meta:
        verbose_name = _('Project')
        verbose_name_plural = _('Projects')



class main_page(models.Model):
    main_title = models.CharField(max_length=100)
    main_description = models.TextField()

    def __str__(self):
        return self.main_title


    class Meta:
        verbose_name = 'Main Page'
        verbose_name_plural = 'Main Pages'        