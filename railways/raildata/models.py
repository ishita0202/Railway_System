from django.db import models

# Create your models here.

class User(models.Model):
    fullname=models.CharField(max_length=50)
    email=models.CharField(max_length=40)
    id = models.AutoField(primary_key="id")
    age=models.IntegerField()
    contact=models.IntegerField()

class Passenger(models.Model):
    username=models.CharField(max_length=20,primary_key=True)
    passsword=models.CharField(max_length=30)

class Admin(models.Model):
    username=models.CharField(max_length=20,primary_key=True)
    password=models.CharField(max_length=30)


class Train(models.Model):
    Trainno=models.IntegerField(primary_key=True)
    Trainname=models.CharField(max_length=50)
    Source=models.CharField(max_length=30)
    Destination=models.CharField(max_length=30)

class Reservation(models.Model):
    noOfPassenger=models.IntegerField()
    Age=models.IntegerField()
    Gender=models.CharField(max_length=1)

class Tickets(models.Model):
    Ticketno=models.IntegerField(primary_key=True)
    Source=models.CharField(max_length=30)
    Destination=models.CharField(max_length=30)
    ticketStatus=models.CharField(max_length=10)

class Payment(models.Model):
    Amount=models.IntegerField()
    