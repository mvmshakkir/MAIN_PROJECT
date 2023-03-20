from django.db import models

# Create your models here.


class login(models.Model):
    username=models.CharField(max_length=100)
    password=models.CharField(max_length=100)
    type=models.CharField(max_length=100)

class user(models.Model):
    lid=models.ForeignKey(login,on_delete=models.CASCADE)
    fname=models.CharField(max_length=100)
    lname=models.CharField(max_length=100)
    place=models.CharField(max_length=100)
    post=models.CharField(max_length=100)
    pin=models.IntegerField()
    gender=models.CharField(max_length=100)
    email=models.CharField(max_length=100) 

class expert(models.Model):
    lid=models.ForeignKey(login,on_delete=models.CASCADE)
    fname=models.CharField(max_length=100)
    lname=models.CharField(max_length=100)
    address=models.CharField(max_length=100)
    place=models.CharField(max_length=100)
    pin=models.IntegerField(max_length=100)
    post=models.CharField(max_length=100)
    email=models.CharField(max_length=100)
    phone=models.BigIntegerField()

class disease(models.Model):
    eid=models.ForeignKey(expert,on_delete=models.CASCADE)
    disease_name=models.CharField(max_length=100)
    description=models.CharField(max_length=100)
    date=models.DateField(max_length=150)

class fertilizer(models.Model):
    eid=models.ForeignKey(expert,on_delete=models.CASCADE)
    name=models.CharField(max_length=100)
    description=models.CharField(max_length=100)

class notification(models.Model):
    name=models.CharField(max_length=100)
    description=models.CharField(max_length=100)
    date=models.DateField(max_length=150)  

class tips(models.Model):
    name=models.CharField(max_length=100)
    description=models.CharField(max_length=100)  

class policies(models.Model):
    name=models.CharField(max_length=100)
    description=models.CharField(max_length=100)
    date=models.DateField(max_length=150)  

class datasets(models.Model):
    question=models.CharField(max_length=100)
    answer=models.CharField(max_length=100)
