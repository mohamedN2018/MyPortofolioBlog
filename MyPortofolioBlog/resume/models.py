from django.db import models

# Create your models here.

class resume(models.Model):
    resume = models.FileField(upload_to='resume', null=True, blank=True)
    title_resume = models.CharField(max_length=200, null=True, blank=True)
    description_resume = models.TextField(null=True, blank=True)

    def __str__(self):
        return self.title_resume

    class Meta:
        verbose_name = 'Resume'
        verbose_name_plural = 'Resumes'

class resume_list_one(models.Model):
    resume_list_one = models.FileField(upload_to='resume_list', null=True, blank=True)
    title_main_resume_list_one = models.CharField(max_length=200, null=True, blank=True)
    title_resume_list_one = models.CharField(max_length=200, null=True, blank=True)
    time_Current_resume_list_one = models.CharField(max_length=200, null=True, blank=True)
    time_End_resume_list_one = models.CharField(max_length=200, null=True, blank=True)
    location_resume_list_one = models.CharField(max_length=200, null=True, blank=True)
    description_resume_list_one = models.TextField(null=True, blank=True)
    description_list_resume_one = models.TextField(null=True, blank=True)


    def __str__(self):
        return self.title_main_resume_list_one

    class Meta:
        verbose_name = 'Resume List One'
        verbose_name_plural = 'Resume Lists One'

class list_one(models.Model):
    resume_text = models.ForeignKey(resume_list_one, on_delete=models.CASCADE, null=True, blank=True)
    list_one = models.CharField(max_length=200, null=True, blank=True) 

    def __str__(self):
        return self.list_one

    class Meta:
        verbose_name = 'list_one'
        verbose_name_plural = 'list_one'  

class resume_list_two(models.Model):
    resume_list_tow = models.FileField(upload_to='resume_list', null=True, blank=True)
    title_main_resume_list_tow = models.CharField(max_length=200, null=True, blank=True)
    title_resume_list_tow = models.CharField(max_length=200, null=True, blank=True)
    time_Current_resume_list_tow = models.CharField(max_length=200, null=True, blank=True)
    time_End_resume_list_tow = models.CharField(max_length=200, null=True, blank=True)
    location_resume_list_tow = models.CharField(max_length=200, null=True, blank=True)
    description_resume_list_tow = models.TextField(null=True, blank=True)
    description_list_resume_tow = models.TextField(null=True, blank=True)

    def __str__(self):
        return self.title_main_resume_list_tow

    class Meta:
        verbose_name = 'Resume List Tow'
        verbose_name_plural = 'Resume Lists Tow'

class list_tow(models.Model):
    resume_text = models.ForeignKey(resume_list_two, on_delete=models.CASCADE, null=True, blank=True)
    list_tow = models.CharField(max_length=200, null=True, blank=True) 

    def __str__(self):
        return self.list_tow

    class Meta:
        verbose_name = 'list_tow'
        verbose_name_plural = 'list_tow'
