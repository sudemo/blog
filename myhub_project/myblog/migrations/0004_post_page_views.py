# Generated by Django 3.1.1 on 2021-02-05 13:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myblog', '0003_auto_20210201_1043'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='page_views',
            field=models.PositiveIntegerField(default=0),
        ),
    ]
