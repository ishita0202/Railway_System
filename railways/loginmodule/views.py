from raildata.models import UserDetails
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
        return HttpResponseRedirect('/loginmodule/loggedin/')
    else:
        return render(request,'invalidlogin.html')

def loggedin(request):
    return render(request,'loggedin.html', {"full_name":request.user.username})

def invalidlogin(request):
    return render(request,'invalidlogin.html')

def logout(request):
    auth.logout(request)
    return render(request,'logout.html')

def signup(request):
<<<<<<< HEAD
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
            return render(request,'loggedin.html')

    else:
        
        return render(request,'signup.html')


=======
     
    return render(request,'signup.html')
>>>>>>> d2c27f818d007c52462a9282f3004758d0a9002f
