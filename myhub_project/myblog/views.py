import markdown
from django.shortcuts import render

# Create your views here.
from django.views import generic
from django.shortcuts import get_object_or_404, get_list_or_404
from .models import  Category, Tag,Post
from .visit_history import change_info



def index(request):
    # return render(arg,'myblog/index.html', context={
    #     'title': 'NEO的博客首页',
    #     'welcome': '欢迎访问我的博客首页'
    # })
    post_list = Post.objects.all().order_by('-created_time')
    # print(post_list)
    change_info(request, '/')
    return render(request, 'myblog/index.html', context={'post_list': post_list})


# def detail(request, pk):
#     post = get_object_or_404(Post, pk=pk)
#     # return render(request, 'myblog/detail.html', context={'post': post})
#     post.body = markdown.markdown(post.body,
#                                   extensions=[
#                                       'markdown.extensions.extra',
#                                       'markdown.extensions.codehilite',
#                                       'markdown.extensions.toc',
#                                   ])
#     return render(request, 'myblog/detail.html', context={'post': post})

def detail(request, pk):
    post = get_object_or_404(Post, pk=pk)
    change_info(request, '/')
    post.increase_views()
    md = markdown.Markdown(extensions=[
        'markdown.extensions.extra',
        'markdown.extensions.codehilite',
        'markdown.extensions.toc',
    ])
    post.body = md.convert(post.body)
    post.toc = md.toc

    return render(request, 'myblog/detail.html', context={'post': post})