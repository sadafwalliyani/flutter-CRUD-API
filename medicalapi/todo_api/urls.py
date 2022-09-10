# todo/todo_api/urls.py : API urls.py
from django.conf.urls import url as todo_urls
from django.urls import path, include
from .views import (
    TodoListApiView,
)

urlpatterns = [
    path('api', TodoListApiView.as_view()),
]