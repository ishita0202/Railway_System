from .views import login, auth_view,loggedin,invalidlogin,signup,home,feedback
from django.contrib.auth import views as auth_views
from django.conf.urls import url
from . import views
urlpatterns = [
    url('login/', login),
    url('auth/', auth_view),
    url('loggedin/', loggedin),
    url('invalidlogin/', invalidlogin),
    url('signup/',signup),
    url('home/',home),
    url('feedback/',feedback)
]