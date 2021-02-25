from django.contrib import admin
from .models import UserDetails



class RailAdmin(admin.ModelAdmin):
    list_display=('fname','lname','email','contact')


admin.site.register(UserDetails,RailAdmin)