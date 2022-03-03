from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect, request, response

import login
from .models import Usersinfo, Manager
from information.models import *
from django.contrib import auth
import re

# Create your views here.

def index(request):
    # 获取登录界面
    if request == "GET":
        username = '用户名'
        passwords = '密码'
        values = '/'
        return render(request, 'login/login.html', {'username': username, 'passwords': passwords, 'values': values})
    # 获取用户登录信息
    else:
        username = request.POST.get('username', '')
        passwords = request.POST.get('passwords', '')
        isu = False
        user = ''
        for u in Usersinfo.objects.all():
            if u.user_name == username:
                user = u
                isu = True
                break
        if user == '':
            for m in Manager.objects.all():
                if m.manager_name == username:
                    user = m
        if user == '':
            passwords = '密码'
            values = '/'
            return render(request, 'login/login.html', {'username': username, 'passwords':passwords, 'values': values})
        elif isu:
            if user.user_passwd == passwords:
                userid = user.user_id
                response = HttpResponseRedirect('/mainpage')
                response.set_cookie('userid', userid)
                response.set_cookie('state', 'client')
                return response
            else:
                passwords = '密码错误'
                values = username
                username = '用户名'
                return render(request, 'login/login.html',
                            {'username': username, 'passwords': passwords, 'values': values})
        # 管理员界面
        else:
            if user.manager_passwd == passwords:
                manager = Manager.objects.get(manager_name=username)
                pass
            else:
                passwords = '密码错误'
                values = username
                username = '用户名'
                return render(request, 'login/login.html',
                              {'username': username, 'passwords': passwords, 'values': values})
    
def validateEmail(email):

    if len(email) > 7:
        if re.match("^.+\\@(\\[?)[a-zA-Z0-9\\-\\.]+\\.([a-zA-Z]{2,3}|[0-9]{1,3})(\\]?)$", email) != None:
            return 1
    return 0 
    
def register(request):
    # 获取注册界面
    if request.method == "GET":
        username = '用户名'
        passwords1 = '密码'
        passwords2 = '密码'
        tel = '手机号码'
        email = '电子邮箱'
        address = '收货地址'
        return render(request, 'login/register.html',
                     {'username': username, 'passwords1': passwords1, 'passwords2': passwords2, 'tel': tel,
                     'email': email, 'address': address})
    # 获取用户注册信息
    else:
        username = request.POST.get('username', '')
        passwords1 = request.POST.get('passwords1', '')
        passwords2 = request.POST.get('passwords2', '')
        tel = request.POST.get('tel', '')
        email = request.POST.get('email', '')
        address = request.POST.get('address', '安徽大学磬苑校区')
        if username == ''or passwords1 == '' or passwords2 == '' or tel == ''  or email == '' or address == '' or passwords1 != passwords2 or not validateEmail(email):
            #print(1)
            return render(request, 'login/register.html', {'username': username, 'passwords1': passwords1, 'passwords2': passwords2,
                        'tel': tel, 'email': email, 'address': address})

        try:
            u = Usersinfo(user_name=username, user_passwd=passwords1, tel=tel, email=email, address=address, credit_star=5)
            u.save()
        except:
            return render(request, 'login/register.html',
                        {'username': '用户名已被占用', 'passwords1':passwords1, 'passwords2': passwords2,
                        'tel': tel, 'email': email, 'address': address})
                        
        return render(request, 'login/register_success.html')

