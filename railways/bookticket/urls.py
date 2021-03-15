# from .views import cancle,registration,search,source_dest,payment,timetable
from django.contrib.auth import views as auth_views
from django.conf.urls import url
from . import views
app_name='bookticket'
urlpatterns = [
    url('cancle/', views.cancle,name="cancle"),
    url('registration/', views.registration,name="registration"),
    url('source_dest/', views.source_dest,name="source_dest"),
    url('search/',views.search,name="search"),
    url('payment/',views.payment,name="payment"),
    url('timetable',views.timetable,name="timetable"),
    url('ticket',views.ticket,name="ticket")
]