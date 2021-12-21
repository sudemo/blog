'''
# @Time    : 2021/1/28 17:13
# @FileName: urls.py
# @Author  : Neo
'''
from django.conf.urls import url
from django.urls import path

from . import views
from .views import index

# urlpatterns = [
#     # url(r'^$', IndexView.as_view(template_name='index.html'), name='index'),
#     url(r'',index)
#
# ]
app_name = 'blog'
urlpatterns = [
    path('', views.index, name='index'),
    path('posts/<int:pk>/', views.detail, name='detail'),
    path('indexLv/', views.tp, name='index2'),

]