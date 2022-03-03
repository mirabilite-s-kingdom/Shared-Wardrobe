from django.db import models
# from dateutil.relativedelta import relativedelta
from login.models import  Usersinfo, Manager
import django.utils.timezone as timezone
import datetime

class Category(models.Model):
    cate_id = models.CharField(primary_key=True, max_length=1)
    cate_name = models.CharField(max_length=8)

    class Meta:
        managed = True
        db_table = 'category'


class Customerservice(models.Model):
    user = models.OneToOneField(Usersinfo, models.DO_NOTHING, primary_key=True)
    manager = models.ForeignKey(Manager, models.DO_NOTHING)

    class Meta:
        managed = True
        db_table = 'customerservice'
        unique_together = (('user', 'manager'),)


class Goods(models.Model):
    goods_id = models.CharField(primary_key=True, max_length=9)
    goods_name = models.CharField(max_length=50)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    pic_address = models.CharField(max_length=100)
    goods_desc = models.CharField(max_length=50, blank=True, null=True)
    onsale_count = models.IntegerField(blank=True, null=True)
    clear_count = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'goods'


class Goodsbelong(models.Model):
    goods = models.OneToOneField(Goods, models.DO_NOTHING, primary_key=True)
    cate = models.ForeignKey(Category, models.DO_NOTHING)

    class Meta:
        managed = True
        db_table = 'goodsbelong'
        unique_together = (('goods', 'cate'),)


class Interfacemanagement(models.Model):
    manager = models.OneToOneField(Manager, models.DO_NOTHING, primary_key=True)
    goods = models.ForeignKey(Goods, models.DO_NOTHING)
    operatetype = models.CharField(db_column='OperateType', max_length=1, blank=True, null=True)  # Field name made lowercase.

    class Meta:
        managed = True
        db_table = 'interfacemanagement'
        unique_together = (('manager', 'goods'),)


class Orderinfo(models.Model):
    def __str__(self):
        return "商品号:"+str(self.goods.goods_id)+' '+self.goods.goods_name+' '#+str(self.create_time)[:19]
    user = models.ForeignKey(Usersinfo, models.DO_NOTHING)
    goods = models.ForeignKey(Goods, models.DO_NOTHING)
    purc_count = models.IntegerField(blank=True, null=True)
    order_state = models.IntegerField(blank=True, null=True)
    audit_manager_id1 = models.CharField(max_length=9, blank=True, null=True)
    audit_manager_id2 = models.CharField(max_length=9, blank=True, null=True)
    #create_time = models.DateTimeField(default=timezone.now, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'orderinfo'

class Shopcart(models.Model):
    add_time = models.DateTimeField(default=timezone.now, primary_key=True)
    user = models.ForeignKey(Usersinfo, models.DO_NOTHING)
    goods = models.ForeignKey(Goods, models.DO_NOTHING)
    goods_num = models.IntegerField(blank=True, null=True)
    if_buy = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'shopcart'
