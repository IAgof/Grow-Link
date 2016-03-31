from django.conf.urls import patterns, include, url
from integration import views
# Uncomment the next two lines to enable the admin:
# from django.contrib import admin
# admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'integration.views.home', name='home'),
    # url(r'^integration/', include('integration.foo.urls')),

    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    # url(r'^admin/', include(admin.site.urls)),

    #url(r'^(?P<servicio>[\w-]+)/(?P<id_di>[\w-].+)/$', views.user),
    #url(r'^(?P<idas>[\w-]+)/(?P<operacion>[\w-]+)/(?P<sensor>[\w-].+)$', views.basico),
    #url(r'^(?P<idas>[\w-]+)/(?P<mote>[\w-]+)/(?P<operacion>[\w-]+)/(?P<sensor>[\w-].+)$', views.medio),    
    url(r'^(?P<idas>[\w-]+)/(?P<data_ini>[\w-]+)/(?P<data_fin>[\w-]+)/(?P<mote>[\w-]+)/(?P<sensor>[\w-]+)/(?P<operacion>[\w-].+)$', views.avanzado),
    #operacion:media
    #promedio-vi-vf
)