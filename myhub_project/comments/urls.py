'''
# @Time    : 2021/2/1 15:52
# @FileName: urls.py
# @Author  : Neo
'''
from django.urls import path

from . import views

app_name = 'comments'
urlpatterns = [
    path('comment/<int:post_pk>', views.comment, name='comment'),
]