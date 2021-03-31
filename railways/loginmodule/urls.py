# from .views import login,invalidlogin,logout,signup,home,feedback,auth_view
from django.contrib.auth import views as auth_views
from django.conf.urls import url
from . import views

app_name = 'loginmodule'

urlpatterns = [
    url('login/', views.login , name="login"),
    url('auth/', views.auth_view, name="auth_view"),
    url('logout/', views.logout_view ,name="logout"),
    url('invalidlogin/', views.invalidlogin,name="invalidlogin"),
    url('signup/',views.signup,name="signup"),
    url('feedback/',views.feedback,name="feedback"),
    url('',views.home,name="home")
]