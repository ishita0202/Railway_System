
<<<<<<< HEAD
from .views import login, auth_view,loggedin,invalidlogin,logout,signup
from django.contrib.auth import views as auth_views
from django.conf.urls import url
urlpatterns = [
    url('login/', login),
    url('auth/', auth_view),
    url('logout/', logout),
    url('loggedin/', loggedin),
    url('invalidlogin/', invalidlogin),
    url('signup/',signup),
=======
from loginmodule.views import login, auth_view,loggedin,invalidlogin,logout,signup
from django.contrib.auth import views as auth_views
from django.conf.urls import url
urlpatterns = [
            url('login/', login),
            url('auth/', auth_view),
            url('logout/', logout),
            url('loggedin/', loggedin),
            url('invalidlogin/', invalidlogin),
            url('signup/',signup),
>>>>>>> d2c27f818d007c52462a9282f3004758d0a9002f
]