from .views import payment,registration,search,source_dest
from django.contrib.auth import views as auth_views
from django.conf.urls import url
urlpatterns = [
    url('payment/', payment),
    url('registration/', registration),
    url('source_dest/', source_dest),
    url('search/',search),
    
    
]