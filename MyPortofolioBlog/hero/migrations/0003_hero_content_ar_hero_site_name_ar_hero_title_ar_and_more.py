# Generated by Django 5.2.3 on 2025-07-06 04:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hero', '0002_hero_site_name'),
    ]

    operations = [
        migrations.AddField(
            model_name='hero',
            name='content_ar',
            field=models.TextField(blank=True, max_length=255, null=True),
        ),
        migrations.AddField(
            model_name='hero',
            name='site_name_ar',
            field=models.CharField(default='موقعي', max_length=100),
        ),
        migrations.AddField(
            model_name='hero',
            name='title_ar',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='hero',
            name='content',
            field=models.TextField(blank=True, max_length=255, null=True),
        ),
        migrations.AlterField(
            model_name='hero',
            name='title',
            field=models.CharField(blank=True, max_length=255, null=True),
        ),
    ]
