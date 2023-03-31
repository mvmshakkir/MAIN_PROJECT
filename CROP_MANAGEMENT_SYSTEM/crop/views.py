from django.shortcuts import render
from crop.models import *
from django.http import HttpResponse
from django.shortcuts import redirect
from datetime import datetime
# Create your views here.

def main(request):
    return render(request,"index.html")

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
    ob=disease.objects.all()
    return render(request,"ADMIN/view_disease.html",{'val':ob})

def vreg(request):
    ob=expert.objects.all()
    return render(request,"ADMIN/view_ereg.html",{'val':ob})

def vfertilizer(request):
    ob=fertilizer.objects.all()
    return render(request,"ADMIN/view_fertilizer.html",{'val':ob})

def vnotifi(request):
    ob=notification.objects.all()
    return render(request,"ADMIN/view_notification.html",{'val':ob})

def vpolici(request):
    ob=policies.objects.all()
    return render(request,"ADMIN/view_policy.html",{'val':ob})

def vuser(request):
    ob=user.objects.all()
    return render(request,"ADMIN/view_user.html",{'val':ob})

def mainhome(request):
    return render(request,"index1.html")    



def adisease(request):
    return render(request,"EXPERT/add_disease.html") 

def adfertilizer(request):
    return render(request,"EXPERT/add_fertilizer.html")

def adtip(request):
    return render(request,"EXPERT/add_tip.html")             

def vdis(request):
    ob=disease.objects.filter(eid__lid__id=request.session['lid'])
    return render(request,"EXPERT/view_disease.html",{'val':ob})

def vfert(request):
    ob=fertilizer.objects.filter(eid__lid__id=request.session['lid'])
    return render(request,"EXPERT/view_fertilizer.html",{'val':ob}) 

def vnoti(request):
    ob=notification.objects.all()
    return render(request,"EXPERT/view_notification.html",{'val':ob})

def vtp(request):
    ob=tips.objects.filter(eid__lid__id=request.session['lid'])
    return render(request,"EXPERT/view_tip.html",{'val':ob})

def ehome(request):
    return render(request,"expertindex.html")      





def reg(request):
    return render(request,"index3.html")

def vds(request):
    ob=disease.objects.all()
    return render(request,"FARMER/view_disease_farmer.html",{'val':ob}) 

def vnt(request):
    ob=notification.objects.all()
    return render(request,"FARMER/view_notification_farmer.html",{'val':ob})

def vpol(request):
    ob=policies.objects.all()
    return render(request,"FARMER/view_policie_farmer.html",{'val':ob})

def vtip(request):
    ob=tips.objects.all()
    return render(request,"FARMER/view_tip_farmer.html",{'val':ob})  

def fhome(request):
    return render(request,"farmerindex.html")

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
    try:
        ob=login.objects.get(username=username,password=password)
        if ob.type=='admin':
            return redirect('/mainhome')
        elif ob.type=='expert':
            request.session['lid']=ob.id
            return redirect('/ehome')
        elif ob.type=='farmer':
            request.session['lid']=ob.id

            return redirect('/fhome')
        else:
            return HttpResponse('''<script>alert("Invalid user name or password");window.location='/'</script> ''')
    except:
        return HttpResponse('''<script>alert("Invalid user name or password");window.location='/'</script> ''')

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
    return HttpResponse('''<script>alert("Registration Successfull");window.location='/vreg'</script> ''')

def notification1(request):
    name=request.POST['textfield']
    description=request.POST['textarea']

    ob=notification()
    ob.name=name
    ob.description=description   
    ob.date=datetime.today()
    ob.save()
    return HttpResponse('''<script>alert("Notification Added");window.location='/vnotifi'</script> ''')


def policy1(request):
    name=request.POST['textfield']
    description=request.POST['textarea']

    ob=policies()
    ob.name=name
    ob.description=description
    ob.date=datetime.today()
    ob.save()
    return HttpResponse('''<script>alert("Scheme Added");window.location='/vpolici'</script> ''')



def dis(request):
    disease_name=request.POST['textfield']
    description=request.POST['textarea']

    

    obb=disease()
    obb.disease_name=disease_name
    obb.description=description
    obb.date=datetime.today()
    obb.eid=expert.objects.get(lid__id=request.session['lid'])
    obb.save()
    return HttpResponse('''<script>alert("Disease Added");window.location='/vdis'</script> ''')


def fer(request):
    name=request.POST['textfield']
    description=request.POST['textarea']


    ob=fertilizer()
    ob.name=name
    ob.description=description
    ob.eid=expert.objects.get(lid__id=request.session['lid'])
    ob.save()
    return HttpResponse('''<script>alert("Fertilizer Added");window.location='/vfert'</script> ''')


def tip1(request):
    name=request.POST['textfield']
    description=request.POST['textarea']


    ob=tips()
    ob.name=name
    ob.description=description
    ob.eid=expert.objects.get(lid__id=request.session['lid'])
    ob.save()
    return HttpResponse('''<script>alert("Tip Added");window.location='/vtp'</script> ''')


def editexp(request,id):
    ob=expert.objects.get(id=id)
    request.session['eid']=id
    return render(request,"ADMIN/editexpert.html",{'val':ob})

def edexp(request):
    fname=request.POST['textfield']
    lname=request.POST['textfield2']
    place=request.POST['textfield3']
    pin=request.POST['textfield5']
    post=request.POST['textfield4']
    email=request.POST['textfield8']
    phone=request.POST['textfield7']
    
    obb=expert.objects.get(id=request.session['eid'])

    obb.fname=fname
    obb.lname=lname
    obb.place=place
    obb.pin=pin
    obb.post=post
    obb.email=email
    obb.phone=phone
    obb.save()
    return HttpResponse('''<script>alert("Updated");window.location='/vreg'</script> ''') 

def delexpert(request,id):
    ob=expert.objects.get(lid__id=id)
    ob.delete()
    iob=login.objects.get(id=id)
    iob.delete()
    return HttpResponse('''<script>alert("Deleted");window.location='/vreg'</script> ''') 


def editpol(request,id):
    request.session['eid']=id
    ob=policies.objects.get(id=id)
    return render(request,"ADMIN/editpolicy.html",{'val':ob})
def edpolicy(request):
    name=request.POST['textfield']
    description=request.POST['textarea']

    obb=policies.objects.get(id=request.session['eid'])
    obb.name=name
    obb.description=description
    obb.date=datetime.today()
    obb.save()
    return HttpResponse('''<script>alert("Updated");window.location='/vpolici'</script> ''') 

def delpolicy(request,id):
    ob=policies.objects.get(id=id)
    ob.delete()
    return HttpResponse('''<script>alert("Deleted");window.location='/vpolici'</script> ''') 

def editnot(request,id):
    request.session['eid']=id
    ob=notification.objects.get(id=id)
    return render(request,"ADMIN/editnot.html",{'val':ob})

def ednot(request):
    name=request.POST['textfield']
    description=request.POST['textarea']
    obb=notification.objects.get(id=request.session['eid'])
    obb.name=name
    obb.description=description
    obb.date=datetime.today()
    obb.save()
    return HttpResponse('''<script>alert("Updated");window.location='/vnotifi#about'</script> ''')    

def delnot(request,id):
    ob=notification.objects.get(id=id)
    ob.delete()
    return HttpResponse('''<script>alert("Deleted");window.location='/vnotifi#about'</script> ''') 

def editdis(request,id):
    request.session['eid']=id
    ob=disease.objects.get(id=id)
    return render(request,"EXPERT/editdisease.html",{'val':ob})

def eddis(request):
    disease_name=request.POST['textfield']
    description=request.POST['textarea']
    obb=disease.objects.get(id=request.session['eid'])
    obb.disease_name=disease_name
    obb.description=description
    obb.date=datetime.today()
    obb.save()
    return HttpResponse('''<script>alert("Updated");window.location='/vdis'</script> ''')


def deldis(request,id):
    ob=disease.objects.get(id=id)
    ob.delete()
    return HttpResponse('''<script>alert("Deleted");window.location='/vdis'</script> ''')

def editfer(request,id):
    request.session['eid']=id
    ob=fertilizer.objects.get(id=id)
    return render(request,"EXPERT/editfert.html",{'val':ob})

def edfer(request):
    name=request.POST['textfield']
    description=request.POST['textarea']
    obb=fertilizer.objects.get(id=request.session['eid'])
    obb.name=name
    obb.description=description
    obb.save()
    return HttpResponse('''<script>alert("Updated");window.location='/vfert'</script> ''')

def delfer(request,id):
    ob=fertilizer.objects.get(id=id)
    ob.delete()
    return HttpResponse('''<script>alert("Deleted");window.location='/vfert'</script> ''') 


def edittip(request,id):
    request.session['eid']=id
    ob=tips.objects.get(id=id)
    return render(request,"EXPERT/edittip.html",{'val':ob})

def edtip(request):
    name=request.POST['textfield']
    description=request.POST['textarea']
    obbb=tips.objects.get(id=request.session['eid'])
    obbb.name=name
    obbb.description=description
    obbb.save()
    return HttpResponse('''<script>alert("Updated");window.location='/vtp'</script> ''')


def deltip(request,id):
    ob=tips.objects.get(id=id)
    ob.delete()
    return HttpResponse('''<script>alert("Deleted");window.location='/vtp'</script> ''')
def viewchatbot(request):
    return render(request,"FARMER/chatbot.html")

def chatbot(request):
    n=request.POST['textfield']
    p=request.POST['textfield2']
    K=request.POST['textfield3']
    temperature=request.POST['textfield4']
    humidity=request.POST['textfield5']
    ph=request.POST['textfield6']
    rainfall=request.POST['textfield7']
    label=request.POST['textfield8']

    return render(request,"FARMER/chatbot.html")      

def viewrslt(request):
    return render(request,"FARMER/viewresult.html")




        





            


