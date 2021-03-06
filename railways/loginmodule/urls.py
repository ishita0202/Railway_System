<<<<<<< HEAD
from .views import login, auth_view,loggedin,invalidlogin,signup,home,feedback
=======
from .views import login, auth_view,invalidlogin,logout,signup,home,feedback
>>>>>>> dceed0cdda4bd66176333ea60a1494fd7236518e
from django.contrib.auth import views as auth_views
from django.conf.urls import url
from . import views
urlpatterns = [
    url('login/', login),
    url('auth/', auth_view),
<<<<<<< HEAD
    url('loggedin/', loggedin),
    url('invalidlogin/', invalidlogin),
    url('signup/',signup),
    url('home/',home),
    url('feedback/',feedback)
=======
    url('logout/', logout),
  
    url('invalidlogin/', invalidlogin),
    url('signup/',signup),
    url('home',home),
    url('feedback',feedback),
  
>>>>>>> dceed0cdda4bd66176333ea60a1494fd7236518e
]