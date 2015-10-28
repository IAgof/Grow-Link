from django.conf.urls import patterns, include, url
from mockup import views
# Uncomment the next two lines to enable the admin:
# from django.contrib import admin
# admin.autodiscover()

urlpatterns = patterns('',
    url(r'^(?P<servicio>[\w-]+)/(?P<id_di>[\w-].+)/$', views.graph),
    url(r'^$', views.index, name='index')
)
