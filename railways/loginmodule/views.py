from raildata.models import Feedback, Train, UserDetails
from django.contrib.auth.base_user import AbstractBaseUser
from django.shortcuts import redirect, render
from django.http import HttpResponseRedirect
from django.contrib import auth
from django.template.context_processors import csrf
from django.contrib.auth.models import User

def login(request):
    c = {}
    c.update(csrf(request))
    return render(request,'login.html', c)

def auth_view(request):
    username = request.POST.get('username', '')
    password = request.POST.get('password', '')
    user = auth.authenticate(username=username,password=password)

    if user is not None:
        auth.login(request, user)
        return HttpResponseRedirect('/loginmodule/home.html/')
    else:
        return render(request,'invalidlogin.html')


def invalidlogin(request):
    return render(request,'invalidlogin.html')

def logout(request):
    auth.logout(request)
    return render(request,'login.html')

def signup(request):
    if request.method=="POST":
        
        fname=request.POST.get('fname')
        lname=request.POST.get('lname')
        email=request.POST.get('email')
        password=request.POST.get('pass1')
        conf_pass=request.POST.get('pass2')
        age=request.POST.get('bdate')
        contact=request.POST.get('contact')
        gender=request.POST.get('gender')
        try:
            user = User.objects.get(email=request.POST.get('username'))
            return render(request, 'signup.html', {'error': "Email Already Exists "})
        except User.DoesNotExist: 
            user = User.objects.create_user(username=request.POST.get('username'), password=request.POST.get('pass1'),first_name=request.POST.get('fname'),last_name=request.POST.get('lname'), email=request.POST.get('email'))
            # print(user)
            user.save()
            x=UserDetails(fname=fname,lname=lname,email=email,password=password,conf_pass=conf_pass,age=age,contact=contact,gender=gender)
            x.save()
            auth.login(request, user)
            return render(request,'home.html')

    else:
        
        return render(request,'signup.html')


def home(request):
    
     if request.method=="POST":
        source = request.POST.get("source")
        destination=request.POST.get("dest")
        print(source)
        print(destination)
        trains=Train.objects.filter(Source__icontains=source,Destination__icontains=destination)
        print(trains)
        return render(request,'search.html',{'trains':trains})
     else:
        return render(request,'home.html')

def test(request):
    return render(request,'test.html')

def feedback(request):
    if request.method=="POST":
       email=request.POST.get('email')
       feedback=request.POST.get('feedback')
       
       x=Feedback(email=email,Feedback=feedback)
       x.save()
       return render(request,'loggedin.html')
    else:    
        return render(request,'feedback.html')