from django.db import models

# Create your models here.

class Project(models.Model):
    """
    Model representing a project in the portfolio.
    """
    title = models.CharField(max_length=200)
    description = models.TextField()
    image = models.ImageField(upload_to='projects/')
    url = models.URLField(blank=True)

    def __str__(self):
        return self.title
    
class Contact(models.Model):
    """
    Model representing a contact message.
    """
    name = models.CharField(max_length=100)
    email = models.EmailField()
    message = models.TextField()

    def __str__(self):
        return f"Message from {self.name} ({self.email})"


class About(models.Model):
    """
    Model representing the about section of the portfolio.
    """
    content = models.TextField()

    def __str__(self):
        return "About Section"

