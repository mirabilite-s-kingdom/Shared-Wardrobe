from django.contrib import admin
from django.urls import path
from . import views
from .models import Goods

urlpatterns = [
    path('mainpage/<str:category>',views.information),
    path('mainpage/',views.mainpage,name = 'mainpage'),
    path('mainpage/<str:category>/<str:id>',views.goodsdetail),
]