from django.conf.urls import patterns, include, url
from mockup import views
# Uncomment the next two lines to enable the admin:
# from django.contrib import admin
# admin.autodiscover()

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'graphics.views.home', name='home'),
    # url(r'^graphics/', include('graphics.foo.urls')),
    #http://192.168.0.181:8000/qfresco_mota_madrid_cp_10_grower/temperature/
    # Uncomment the admin/doc line below to enable admin documentation:
    # url(r'^admin/doc/', include('django.contrib.admindocs.urls')),
    

    #url(r'^(?P<servicio>[a-z]+)?(?P<user_id>[a-z]+)&(?P<idas>[0-9]+)/$', views.user , name="graph"),
    url(r'^(?P<servicio>[\w-]+)/(?P<id_di>[\w-].+)/$', views.graph),
    # Uncomment the next line to enable the admin:
    # url(r'^admin/', include(admin.site.urls)),
    #url(r'^sample_graph/$', views.graph , name="graph"),
    #url(r'^(?P<servicio>[a-z]+)_mota_(?P<word>[a-z]+)_cp_(?P<num>[0-9]+)_grower/(?P<mesure>[a-z]+)/$', views.graph , name="graph"),
    #url(qfresco_mota_madrid_cp_10_grower
    	)
