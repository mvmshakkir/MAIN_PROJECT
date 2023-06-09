# Generated by Django 3.2.15 on 2023-03-16 06:59

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='datasets',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('question', models.CharField(max_length=100)),
                ('answer', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='expert',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fname', models.CharField(max_length=100)),
                ('lname', models.CharField(max_length=100)),
                ('address', models.CharField(max_length=100)),
                ('place', models.CharField(max_length=100)),
                ('pin', models.IntegerField(max_length=100)),
                ('post', models.CharField(max_length=100)),
                ('email', models.CharField(max_length=100)),
                ('phone', models.BigIntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='login',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(max_length=100)),
                ('password', models.CharField(max_length=100)),
                ('type', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='notification',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('description', models.CharField(max_length=100)),
                ('date', models.DateField(max_length=150)),
            ],
        ),
        migrations.CreateModel(
            name='policies',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('description', models.CharField(max_length=100)),
                ('date', models.DateField(max_length=150)),
            ],
        ),
        
        migrations.CreateModel(
            name='user',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('fname', models.CharField(max_length=100)),
                ('lname', models.CharField(max_length=100)),
                ('place', models.CharField(max_length=100)),
                ('post', models.IntegerField()),
                ('pin', models.IntegerField()),
                ('gender', models.CharField(max_length=100)),
                ('email', models.CharField(max_length=100)),
                ('lid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='crop.login')),
            ],
        ),
        migrations.CreateModel(
            name='fertilizer',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('description', models.CharField(max_length=100)),
                ('eid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='crop.expert')),
            ],
        ),
        migrations.AddField(
            model_name='expert',
            name='lid',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='crop.login'),
        ),
        migrations.CreateModel(
            name='disease',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('disease_name', models.CharField(max_length=100)),
                ('description', models.CharField(max_length=100)),
                ('date', models.DateField(max_length=150)),
                ('eid', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='crop.expert')),
            ],
        ),
    ]
