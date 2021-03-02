from .views import cancle,registration,search,source_dest,payment
from django.contrib.auth import views as auth_views
from django.conf.urls import url
urlpatterns = [
    url('cancle/', cancle),
    url('registration/', registration),
    url('source_dest/', source_dest),
    url('search/',search),
    url('payment/',payment),
    
]