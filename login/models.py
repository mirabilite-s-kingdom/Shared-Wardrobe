from django.db import models

# Create your models here.

class Usersinfo(models.Model):
    user_id = models.AutoField(primary_key=True)
    user_name = models.CharField(max_length=8)
    user_passwd = models.CharField(max_length=20)
    tel = models.CharField(max_length=11, blank=True, null=True)
    email = models.CharField(max_length=50, blank=True, null=True)
    address = models.TextField(blank=True, null=True)
    credit_star = models.IntegerField(blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'usersinfo'


class Manager(models.Model):
    manager_id = models.AutoField(primary_key=True)
    manager_name = models.CharField(max_length=8)
    manager_passwd = models.CharField(max_length=20)
    privilege = models.CharField(max_length=1, blank=True, null=True)

    class Meta:
        managed = True
        db_table = 'manager'