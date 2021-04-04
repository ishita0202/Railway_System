import loginmodule
from raildata.models import Reservation, Tickets, Train, UserDetails
from django.contrib.auth.base_user import AbstractBaseUser
from django.shortcuts import redirect, render
from django.http import HttpResponseRedirect
from django.contrib import auth
from django.template.context_processors import csrf
from django.contrib.auth.models import User
from django.contrib.auth.decorators import login_required
import random


@login_required(login_url='loginmodule:login')
def cancle(request):
    if request.method=="POST":
        if 'cancel' in request.POST:
            ticket = request.POST.get("ticket")
            t=Tickets.objects.get(Ticketno=ticket)
            t.delete()
            return HttpResponseRedirect("/loginmodule/home/")
        else:
            ticket = request.POST.get("ticket")
            t=Tickets.objects.get(Ticketno=ticket)
            return render(request,'cancle.html',{'t':t})
    else:
        return render(request,'cancle.html')

@login_required(login_url='loginmodule:login')
def payment(request):
     if request.method=="POST":
        return HttpResponseRedirect("/bookticket/ticket/")
     else:
        return render(request,'payment.html')

@login_required(login_url='loginmodule:login')
def registration(request): 
    if request.method=="POST":
          gender=request.POST.get('gender')
          seats=request.POST.get('seats')
          age=request.POST.get('age')
          print(seats)
          x=Reservation(Age=age,noOfPassenger=seats,Gender=gender)
          x.save()
          
          return HttpResponseRedirect("/bookticket/payment/")
    else:
        return render(request,'registration.html')

@login_required(login_url='loginmodule:login')
def search(request):
    if request.method == "POST":
        if request.POST.get("book"):
            arrival = request.POST.get('arrival')
            departure = request.POST.get('departure')
            trainno = request.POST.get('trainno')
            print(arrival)
            request.session['trainno']=trainno
            request.session['arrival']=arrival
            request.session['departure']=departure
            return HttpResponseRedirect("/bookticket/registration/")
        else:
            source = request.POST.get("source")
            destination=request.POST.get("dest")
            print(source)
            print(destination)
            request.session['source'] = source
            request.session['destination']=destination
            trains=Train.objects.filter(Source__icontains=source,Destination__icontains=destination)
            print(trains)
            return render(request,'search.html',{'trains':trains})

@login_required(login_url='loginmodule:login')
def source_dest(request):
    if request.method=="POST":
        source = request.POST.get("source")
        destination=request.POST.get("dest")
        print(source)
        print(destination)
        request.session['source'] = source
        request.session['destination']=destination
        trains=Train.objects.filter(Source__icontains=source,Destination__icontains=destination)
        print(trains)
        # request.session['trainno']=trains.Trainno
        # request.session['arrival']=trains.arrivaltime
        # request.session['departure']=trains.departuretime
        
        print(trains)
        return render(request,'search.html',{'trains':trains})
        # return HttpResponseRedirect()
    else:
        return render(request,'source_dest.html')


def timetable(request):
    t=Train.objects.all()
    print(t)
    return render(request,'timetable.html',{'t':t})


def ticket(request):
    c=request.user
    print(c)
    print(c.first_name)
    print(c.last_name)
 
    source=request.session['source']
    destination= request.session['destination']
    trainno=request.session['trainno']
    arrival=request.session['arrival']
    departure=request.session['departure']
    print(arrival)
    t=Tickets(Source=source,Destination=destination,Trainno=trainno,arrivaltime=arrival,departuretime=departure)
    
    t.save()
    return render(request,'ticket.html',{'t':t}) 
