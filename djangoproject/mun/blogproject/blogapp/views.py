from django.shortcuts import render
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login
# Create your views here.
def  registration(request):
    if request.method=='POST':
        first_name=request.POST['first_name']
        last_name=request.POST['last_name']
        username=request.POST['username']
        password=request.POST['password']
        email=request.POST['email']

        user = User.objects.create_user(username=username, email=email, password=password)
        # user.first_name = first_name
        # user.last_name = last_name
        # user.save()
        # messages.success(request, 'Account created successfully. Please log in.')
        print("user succesfully created")
        #return redirect('login')
        return render(request, 'registration.html')

    else:
         return render(request,'registration.html')

def login(request):
    if request.method=='POST':
        username=request.POST['username']
        password=request.POST['password']

        user = authenticate(request, username=username, password=password)
        if user is not None:
          login(request, user)
          return redirect('home')
        else:
          error_message = "Invalid username or password."
          return render(request, 'login.html', {'error_message': error_message})

    else:
        return render(request, 'login.html')

