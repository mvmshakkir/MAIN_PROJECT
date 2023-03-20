from django.urls import path
from crop import views



urlpatterns=[
    path('',views.main,name="main"),
    path('dataset',views.dataset,name="dataset"),
    path('exp_reg',views.exp_reg,name="exp_reg"),
    path('notifi',views.notifi,name="notifi"),
    path('polici',views.polici,name="polici"),
    path('vdataset',views.vdataset,name="vdataset"),
    path('vdisease',views.vdisease,name="vdisease"),
    path('vreg',views.vreg,name="vreg"),
    path('vfertilizer',views.vfertilizer,name="vfertilizer"),
    path('vnotifi',views.vnotifi,name="vnotifi"),
    path('vpolici',views.vpolici,name="vpolici"),
    path('vuser',views.vuser,name="vuser"),
    path('adisease',views.adisease,name="adisease"),
    path('adfertilizer',views.adfertilizer,name="adfertilizer"),
    path('adtip',views.adtip,name="adtip"),
    path('vdis',views.vdis,name="vdis"),
    path('vfert',views.vfert,name="vfert"),
    path('vnoti',views.vnoti,name="vnoti"),
    path('vtp',views.vtp,name="vtp"),
    path('reg',views.reg,name="reg"),
    path('vds',views.vds,name="vds"),
    path('vnt',views.vnt,name="vnt"),
    path('vpol',views.vpol,name="vpol"),
    path('vtip',views.vtip,name="vtip"),
    path('mainhome',views.mainhome,name="mainhome"),
    path('ehome',views.ehome,name="ehome"),
    path('fhome',views.fhome,name="fhome"),
    path('farmreg',views.farmreg,name="farmreg"),
    path('logn',views.logn,name="logn"),
    path('exp',views.exp,name="exp"),
    path('notification1',views.notification1,name="notification1"),
    path('policy1',views.policy1,name="policy1"),


         























]