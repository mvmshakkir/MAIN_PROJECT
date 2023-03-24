# Generated by Django 3.2.15 on 2023-03-23 10:54

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('crop', '0004_alter_user_post'),
    ]

    operations = [
        migrations.CreateModel(
            name='tips',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('description', models.CharField(max_length=100)),
                ('eid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='crop.expert')),
            ],
        ),
    ]
