from raildata.models import Reservation, Train, UserDetails
from django.contrib.auth.base_user import AbstractBaseUser
from django.shortcuts import redirect, render
from django.http import HttpResponseRedirect
from django.contrib import auth
from django.template.context_processors import csrf
from django.contrib.auth.models import User

def cancle(request):
    return render(request,'cancle.html')


def payment(request):
    return render(request,'payment.html')

def registration(request): 
    if request.method=="POST":
          gender=request.POST.get('gender')
          seats=request.POST.get('seats')
          age=request.POST.get('age')
        #   if(age<18):
        #       return render(request, 'reservation.html', {'error': "Age should greater than 18"})
        #   else:
          x=Reservation(Age=age,noOfPassenger=seats,Gender=gender)
          x.save()
          return render(request,'payment.html')
        
    else:
        return render(request,'registration.html')

def search(request):
   return render(request,'search.html')

def source_dest(request):
    if request.method=="POST":
        source = request.POST.get("source")
        destination=request.POST.get("dest")
        print(source)
        print(destination)
        trains=Train.objects.filter(Source__icontains=source,Destination__icontains=destination)
        print(trains)
        return render(request,'search.html',{'trains':trains})

    else:
        return render(request,'source_dest.html')
    
def timetable(request):
    return render(request,'timetable.html')
