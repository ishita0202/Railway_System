from django.contrib import admin
from .models import Feedback, Tickets, UserDetails
from .models import Train



admin.site.register(UserDetails)

admin.site.register(Train)

admin.site.register(Tickets)

admin.site.register(Feedback)