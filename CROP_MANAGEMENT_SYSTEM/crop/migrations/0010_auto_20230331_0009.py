# Generated by Django 3.2.15 on 2023-03-30 18:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('crop', '0009_alter_disease_description'),
    ]

    operations = [
        migrations.AlterField(
            model_name='fertilizer',
            name='description',
            field=models.TextField(),
        ),
        migrations.AlterField(
            model_name='notification',
            name='description',
            field=models.TextField(),
        ),
        migrations.AlterField(
            model_name='policies',
            name='description',
            field=models.TextField(),
        ),
        migrations.AlterField(
            model_name='tips',
            name='description',
            field=models.TextField(max_length=100),
        ),
        migrations.AlterField(
            model_name='tips',
            name='name',
            field=models.TextField(),
        ),
    ]
