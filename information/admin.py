from django.contrib import admin

from information.models import Goods, Category, Orderinfo, Shopcart, Goodsbelong, Interfacemanagement
from .models import *

admin.site.site_header = '共享衣橱后台管理'
admin.site.site_title = '共享衣橱'

admin.site.register(Usersinfo)


class UsersinfoAdmin(admin.ModelAdmin):
    # listdisplay设置要显示在列表中的字段（id字段是Django模型的默认主键）
    list_display = ['user_id ', 'user_name', 'user_passwd', 'tel', 'email', 'address', 'credit_star']
    # 过滤器功能及能过滤的字段
    list_filter = ['user_id']  # 过滤器
    # 搜索功能及能实现搜索的字段
    search_fields = ['user_name']  # 搜索字段
    # list_per_page设置每页显示多少条记录，默认是100条
    list_per_page = 10
    # ordering设置默认排序字段，负号表示降序排序
    ordering = ('-user_name',)
    # 操作项功能显示位置设置，两个都为True则顶部和底部都显示
    actions_on_top = True
    actions_on_bottom = True
    # 操作项功能显示选中项的数目
    actions_selection_counter = True
    # 字段为空值显示的内容
    empty_value_display = ' -空白- '
    # list_editable 设置默认可编辑字段（name默认不可编辑，因为它是一个链接，点击会进入修改页面）
    list_editable = ['user_passwd', 'tel', 'email', 'address', 'credit_star', ]
    # fk_fields 设置显示外键字段
    # fk_fields = ('member_type',)


admin.site.register(Manager)
admin.site.register(Goods)
admin.site.register(Orderinfo)
admin.site.register(Category)


# # Register your models here.
# # @admin.register(Category)
class CategoryAdmin(admin.ModelAdmin):
    # 列表页属性
    list_display = ['cate_id', 'cate_name']
    list_filter = ['cate_id']  # 过滤器
    search_fields = ['cate_name']  # 搜索字段
    list_per_page = 10
    # ordering设置默认排序字段，负号表示降序排序
    ordering = ('-cate_name',)
    # 操作项功能显示位置设置，两个都为True则顶部和底部都显示
    actions_on_top = True
    actions_on_bottom = True
    # 操作项功能显示选中项的数目
    actions_selection_counter = True
    # 字段为空值显示的内容
    empty_value_display = ' -空白- '
    # list_editable 设置默认可编辑字段（name默认不可编辑，因为它是一个链接，点击会进入修改页面）
    # list_editable = ['user_passwd','tel','email','address','credit_star',]
    # fk_fields 设置显示外键字段
    # fk_fields = ('member_type',)


# @admin.register(Customerservice)
# class CustomerserviceAdmin(admin.ModelAdmin):

#     list_display = ['user_id','manager_id']

# @admin.register(Goods)
class GoodsAdmin(admin.ModelAdmin):
    list_display = ['goods_id', 'goods_name ', 'price ', 'pic_address ', 'goods_desc ', 'onsale_count ', 'clear_count ']
    list_filter = ['goods_id']  # 过滤器
    search_fields = ['goods_name ']  # 搜索字段
    list_per_page = 10
    # ordering设置默认排序字段，负号表示降序排序
    ordering = ('-goods_id',)
    # 操作项功能显示位置设置，两个都为True则顶部和底部都显示
    actions_on_top = True
    actions_on_bottom = True
    # 操作项功能显示选中项的数目
    actions_selection_counter = True
    # 字段为空值显示的内容
    empty_value_display = ' -空白- '
    # list_editable 设置默认可编辑字段（name默认不可编辑，因为它是一个链接，点击会进入修改页面）
    list_editable = ['price ', 'pic_address ', 'goods_desc ', 'onsale_count ', 'clear_count ']
    # fk_fields 设置显示外键字段
    # fk_fields = ('member_type',)


# @admin.register(Goodsbelong)
# class GoodsbelongAdmin(admin.ModelAdmin):

#     list_display = ['goods_id ','cate_id']


# @admin.register(Interfacemanagement)
# class InterfacemanagementAdmin(admin.ModelAdmin):

#     list_display = ['manager_id ','goods_id ','OperateType ']


# @admin.register(Orderinfo)
class OrderinfoAdmin(admin.ModelAdmin):
    list_display = ['user_id ', 'goods_id ', 'purc_count ', 'order_state ']
    list_filter = ['user_id']  # 过滤器
    search_fields = ['user_id ', 'goods_id ', 'goods_name ']  # 搜索字段
    list_per_page = 10
    # ordering设置默认排序字段，负号表示降序排序
    ordering = ('-user_id',)
    # 操作项功能显示位置设置，两个都为True则顶部和底部都显示
    actions_on_top = True
    actions_on_bottom = True
    # 操作项功能显示选中项的数目
    actions_selection_counter = True
    # 字段为空值显示的内容
    empty_value_display = ' -空白- '
    # list_editable 设置默认可编辑字段（name默认不可编辑，因为它是一个链接，点击会进入修改页面）
    list_editable = ['purc_count ', 'order_state ']
    # fk_fields 设置显示外键字段
    # fk_fields = ('member_type',)

# @admin.register(Shopcart)
# class ManagerHouseAdmin(admin.ModelAdmin):
#     list_display = ['user_id ','goods_id  ','goods_num ']
