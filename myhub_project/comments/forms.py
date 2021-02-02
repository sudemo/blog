'''
# @Time    : 2021/2/1 10:46
# @FileName: forms.py
# @Author  : Neo
'''
from django import forms
from .models import Comment


class CommentForm(forms.ModelForm):
    class Meta:
        model = Comment
        fields = ['name', 'email', 'url', 'text']