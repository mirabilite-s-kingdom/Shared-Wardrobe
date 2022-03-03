from django.contrib import admin
from django.urls import path
from . import views


urlpatterns = [
    path('login/',views.index,name = 'login'),
    path('register/',views.register,name='register'),
]