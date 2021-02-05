'''
# @Time    : 2021/2/5 9:34
# @FileName: config_gunicorn.py
# @Author  : Neo
'''
import sys
import os
import multiprocessing

path_of_current_file = os.path.abspath(__file__)
path_of_current_dir = os.path.split(path_of_current_file)[0]

_file_name = os.path.basename(__file__)

sys.path.insert(0, path_of_current_dir)


# worker_class = 'gevent' #使用gevent模式，还可以使用sync 模式，默认的是sync模式
worker_class = 'sync'
# workers = multiprocessing.cpu_count() * 2 + 1
workers = 10
chdir = path_of_current_dir

worker_connections = 1000
timeout = 60
max_requests = 20000
graceful_timeout = 60

loglevel = 'info'

reload = True
debug = True

bind = "%s:%s" % ("0.0.0.0", 8000)
# pidfile = '%s/run/%s.pid' % (path_of_current_dir, _file_name)
# errorlog = '%s/logs/%s_error.log' % (path_of_current_dir, _file_name)
# accesslog = '%s/logs/%s_access.log' % (path_of_current_dir, _file_name)
"""
其每个选项的含义如下：
h          remote address
l          '-'
u          currently '-', may be user name in future releases
t          date of the request
r          status line (e.g. ``GET / HTTP/1.1``)
s          status
b          response length or '-'
f          referer
a          user agent
T          request time in seconds
D          request time in microseconds
L          request time in decimal seconds
p          process ID
"""
