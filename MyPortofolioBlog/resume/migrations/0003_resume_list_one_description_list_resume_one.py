# Generated by Django 5.2.3 on 2025-06-29 11:36

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('resume', '0002_list_one_resume_text_list_tow_resume_text'),
    ]

    operations = [
        migrations.AddField(
            model_name='resume_list_one',
            name='description_list_resume_one',
            field=models.TextField(blank=True, null=True),
        ),
    ]
