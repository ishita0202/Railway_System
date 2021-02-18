# Generated by Django 3.1.5 on 2021-02-17 17:50

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Admin',
            fields=[
                ('username', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('password', models.CharField(max_length=30)),
            ],
        ),
        migrations.CreateModel(
            name='Passenger',
            fields=[
                ('username', models.CharField(max_length=20, primary_key=True, serialize=False)),
                ('passsword', models.CharField(max_length=30)),
            ],
        ),
        migrations.CreateModel(
            name='Payment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Amount', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='Reservation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('noOfPassenger', models.IntegerField()),
                ('Age', models.IntegerField()),
                ('Gender', models.CharField(max_length=1)),
            ],
        ),
        migrations.CreateModel(
            name='Tickets',
            fields=[
                ('Ticketno', models.IntegerField(primary_key=True, serialize=False)),
                ('Source', models.CharField(max_length=30)),
                ('Destination', models.CharField(max_length=30)),
                ('ticketStatus', models.CharField(max_length=10)),
            ],
        ),
        migrations.CreateModel(
            name='Train',
            fields=[
                ('Trainno', models.IntegerField(primary_key=True, serialize=False)),
                ('Trainname', models.CharField(max_length=50)),
                ('Source', models.CharField(max_length=30)),
                ('Destination', models.CharField(max_length=30)),
            ],
        ),
        migrations.CreateModel(
            name='User',
            fields=[
                ('fullname', models.CharField(max_length=50)),
                ('email', models.CharField(max_length=40)),
                ('id', models.AutoField(primary_key=True, serialize=False)),
                ('age', models.IntegerField()),
                ('contact', models.IntegerField()),
            ],
        ),
    ]
