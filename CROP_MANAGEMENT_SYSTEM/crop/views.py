from django.shortcuts import render
from crop.models import *
from django.http import HttpResponse
from django.shortcuts import redirect
from datetime import datetime
# Create your views here.

def main(request):
    return render(request,"login.html")

def dataset(request):
    return render(request,"ADMIN/dataset.html")

def exp_reg(request):
    return render(request,"ADMIN/expert_reg.html")    

def notifi(request):
    return render(request,"ADMIN/notification.html") 

def polici(request):
    return render(request,"ADMIN/policies.html")

def vdataset(request):
    return render(request,"ADMIN/view_dataset.html") 

def vdisease(request):
    return render(request,"ADMIN/view_disease.html")

def vreg(request):
    return render(request,"ADMIN/view_ereg.html")

def vfertilizer(request):
    return render(request,"ADMIN/view_fertilizer.html")

def vnotifi(request):
    return render(request,"ADMIN/view_notification.html")

def vpolici(request):
    return render(request,"ADMIN/view_policy.html")

def vuser(request):
    return render(request,"ADMIN/view_user.html")

def mainhome(request):
    return render(request,"ADMIN/home.html")    



def adisease(request):
    return render(request,"EXPERT/add_disease.html") 

def adfertilizer(request):
    return render(request,"EXPERT/add_fertilizer.html")

def adtip(request):
    return render(request,"EXPERT/add_tip.html")             

def vdis(request):
    return render(request,"EXPERT/view_disease.html")

def vfert(request):
    return render(request,"EXPERT/view_fertilizer.html") 

def vnoti(request):
    return render(request,"EXPERT/view_notification.html")

def vtp(request):
    return render(request,"EXPERT/view_tip.html")

def ehome(request):
    return render(request,"EXPERT/expert_home.html")      





def reg(request):
    return render(request,"FARMER/registration.html")

def vds(request):
    return render(request,"FARMER/view_disease_farmer.html") 

def vnt(request):
    return render(request,"FARMER/view_notification_farmer.html")

def vpol(request):
    return render(request,"FARMER/view_policie_farmer.html")

def vtip(request):
    return render(request,"FARMER/view_tip_farmer.html")  

def fhome(request):
    return render(request,"FARMER/farmerhome.html")

def farmreg(request):
    fname=request.POST['textfield']
    lname=request.POST['textfield2']
    place=request.POST['textfield4']
    post=request.POST['textfield5']
    pin=request.POST['textfield6']
    gender=request.POST['radiobutton']
    email=request.POST['textfield8']
    us=request.POST['un']
    pw=request.POST['ps']
  

    ob=login()
    ob.username=us
    ob.password=pw
    ob.type='farmer'
    ob.save()

    fob=user()
    fob.fname=fname
    fob.lname=lname
    fob.place=place
    fob.post=post
    fob.pin=pin
    fob.gender=gender
    fob.email=email
    fob.lid=ob
    fob.save()

    return HttpResponse('''<script>alert("Registration Successfull");window.location='/'</script> ''')


def logn(request):
    username=request.POST['textfield']
    password=request.POST['textfield2']
    ob=login.objects.get(username=username,password=password)
    if ob.type=='admin':
        return redirect('/mainhome')
    elif ob.type=='expert':
        return redirect('/ehome')
    elif ob.type=='farmer':
        return redirect('/fhome')
    else:
        return HttpResponse('''<script>alert("Invalid");window.location='/'</script> ''')

def exp(request):
    fname=request.POST['textfield']
    lname=request.POST['textfield2']
    place=request.POST['textfield3']
    pin=request.POST['textfield5']
    post=request.POST['textfield4']
    email=request.POST['textfield8']
    phone=request.POST['textfield7']
    un=request.POST['user']
    ps=request.POST['pwd']

    ob=login()
    ob.username=un
    ob.password=ps
    ob.type='expert'
    ob.save()

    obb=expert()
    obb.fname=fname
    obb.lname=lname
    obb.place=place
    obb.pin=pin
    obb.post=post
    obb.email=email
    obb.phone=phone
    obb.lid=ob
    obb.save()
    return HttpResponse('''<script>alert("Registration Successfull");window.location='/'</script> ''')

def notification1(request):
    name=request.POST['textfield']
    description=request.POST['textarea']

    ob=notification()
    ob.name=name
    ob.description=description   
    ob.date=datetime.today()
    ob.save()
    return HttpResponse('''<script>alert("Notification Added");window.location='/'</script> ''')


def policy1(request):
    name=request.POST['textfield']
    description=request.POST['textarea']

    ob=policies()
    ob.name=name
    ob.description=description
    ob.date=datetime.today()
    ob.save()
    return HttpResponse('''<script>alert("Policy Added");window.location='/'</script> ''')






        





            


