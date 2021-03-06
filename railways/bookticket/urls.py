from .views import cancle,registration,search,source_dest,payment,timetable,ticket
from django.contrib.auth import views as auth_views
from django.conf.urls import url
from . import views
urlpatterns = [
    url('cancle/', cancle),
    url('registration/', registration),
    url('source_dest/', source_dest),
    url('search/',search),
    url('payment/',payment),
    url('timetable',timetable),
    url('ticket/', ticket),
    
]