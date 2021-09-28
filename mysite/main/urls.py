from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='home'), # url -- фун-ия запуска файла HTML -- имя, используется для ссыллок в HTML
]
