from django.http.response import HttpResponse, HttpResponseRedirect
from django.shortcuts import render
from information.models import Shopcart
from information import models
from information.models import Goods, Goodsbelong, Orderinfo

from login.models import Usersinfo

# Create your views here.

def mainpage(request):
    return render(request,'mainpage/mainpage.html')

def information(request, category):
    goodslist = []
    cate = ''
    if category == 'logout':
        res = HttpResponseRedirect('/login')
        res.delete_cookie('username')
        return res
    if category == 'profile':
        username = request.COOKIES.get('username', '')
        return HttpResponse(username)
    if category == 'shopcart':
        if request.method == 'GET':
            userid = request.COOKIES.get('userid', '')
            user = Usersinfo.objects.get(user_id=userid)
            shopcart_list = Shopcart.objects.filter(user=user)
            return render(request, "information/shopcart.html", {"shopcart_list": shopcart_list})
        else:
            operate = request.POST.get('number', 1)

            userid = request.COOKIES.get('userid', '')
            user = Usersinfo.objects.get(user_id=userid)
            shopcart = Shopcart.objects.filter(user=user)
            for goods in shopcart:
                check_buy = 'ifbuy_'+goods.goods.goods_id
                check_num = 'count_'+goods.goods.goods_id
                print(check_buy)
                if_buy = request.POST.get(check_buy)
                new_num = min(int(request.POST.get(check_num)),5)
                if new_num != goods.goods_num:
                    if new_num <= 0:
                        goods.delete()
                        continue
                    else:
                        goods.goods_num = new_num
                        goods.save()
                if if_buy:
                    print('下单：'+goods.goods.goods_id)
                    order = Orderinfo(user=user, goods=goods.goods, purc_count=goods.goods_num)
                    order.save()
                    goods.delete()
                else:
                    goods.if_buy = if_buy
                    goods.save()
        return render(request, "information/shopcart_success.html")
                
    if category == 'changeorder':
        if request.method == 'GET':
            userid = request.COOKIES.get('userid', '')
            user = Usersinfo.objects.get(user_id=userid)
            orders = Orderinfo.objects.filter(user=userid)
            return render(request, "information/change_order.html", {"orders": orders})
        else:
            goods_id = request.POST.get('selected', '').replace('-', '').split()[0][4:]
            userid = request.COOKIES.get('userid', '')
            operate = request.POST.get('operate', '')
            goods = Goods.objects.get(goods_id=goods_id)
            user = Usersinfo.objects.get(user_id=userid)
            order = Orderinfo.objects.get(user=user, goods=goods)
            if operate == 'cancel':
                goods.onsale_count += order.purc_count
                goods.clear_count -= order.purc_count
                goods.save()
                order.delete()
                operate = '订单取消'
                return render(request, 'information/changeorder_success.html', {"operate": operate})
            else:
                operate = '订单修改'
                try:
                    num = int(request.POST.get('number', ''))
                except:
                    num = order.purc_count
                print(num)
                last_num = order.purc_count
                print(last_num)
                goods.onsale_count += (last_num - num)
                goods.clear_count += (num - last_num)
                goods.save()
                order.purc_count = num
                address = request.POST.get('address', '')
                order.save()
                return render(request, 'information/changeorder_success.html', {"operate": operate, "order": order})
    
    else:
        for g in Goods.objects.all():
            goods_cate = Goodsbelong.objects.get(goods=g)
            #print(goods_cate.cate.cate_name)
            if category == 'dressed' and goods_cate.cate.cate_name == '正装':
                goodslist.append(g)
                cate = '正装'
            if category == 'weddingdress' and goods_cate.cate.cate_name == '婚纱':
                goodslist.append(g)
                cate = '婚纱'
            if category == 'hignend' and goods_cate.cate.cate_name == '高端品牌':
                goodslist.append(g)
                cate = '高端品牌'
            if category == 'fastfashion' and goods_cate.cate.cate_name == '快时尚品牌':
                goodslist.append(g)
                cate = '快时尚品牌'
        return render(request, 'information/warelist.html', {'category': cate, 'goodslist': goodslist})

def goodsdetail(request, category, id):
    if request.method == "GET":
        if category == 'changeorder':
            return render(request, "information/service/change_order.html")
        if category == 'dressed' or category == 'weddingdress' or category == 'hignend' or category == 'fastfashion':
            goods = Goods.objects.get(goods_id=id)
            return render(request, "information/ware.html", {'goods': goods})
    else:
        userid = request.COOKIES.get('userid', '')
        if category == 'dressed' or category == 'weddingdress' or category == 'hignend' or category == 'fastfashion':
            goods = Goods.objects.get(goods_id=id)
            user = Usersinfo.objects.get(user_id=userid)
            num = request.POST.get('amount', '')
            address = request.POST.get('address', '')
            shopcart = Shopcart(user=user, goods=goods, goods_num=num, if_buy=1)
            shopcart.save()
            #order = Orderinfo(user=user, goods=goods, purc_count=num)
            #order.save()
            goods.onsale_count -= int(num)
            goods.clear_count += int(num)
            goods.save()
            return render(request, "information/waresuccess.html", {'goods': goods, 'num': num})
    