#from matplotlib import pylab
#from pylab import *
from django.core.urlresolvers import reverse
import PIL
import PIL.Image
import json
from bson import json_util
import StringIO
from django.http import HttpResponse 
from django.template import RequestContext, loader
from pymongo import MongoClient
import re


import datetime

class DateTimeEncoder(json.JSONEncoder):
    def default(self, obj):
        if isinstance(obj, datetime.datetime):
            return obj.isoformat()
        elif isinstance(obj, datetime.date):
            return obj.isoformat()
        elif isinstance(obj, datetime.timedelta):
            return (datetime.datetime.min + obj).time().isoformat()
        else:
            return super(DateTimeEncoder, self).default(obj)


def user(request,servicio,id_di):
	try:
		definitivo=[]
		client =  MongoClient('localhost:27017')	
		db = client.sth_databases	
		if (servicio == 'grower-info'):			
			measure= id_di
			consulta = db["sth_/qfresco_carlos_alberto_grower"].find({},{"_id":0,"attrType":0,"recvTime":0}).sort([("_id", -1)]).limit(3)			
			for row in consulta:
				payload=json.dumps({row['attrName']:row['attrValue']},)	
				definitivo.append(payload)			
			
		if (servicio == 'idas-info'):			
			consulta = db["sth_/qfresco_carlos_albertocarlos_alberto_idas_idas"].find({},{"_id":0,"attrType":0,"recvTime":0}).sort([("_id", -1)]).limit(3)			
			for row in consulta:				
				payload=json.dumps({row['attrName']:row['attrValue']},)	
				definitivo.append(payload)			

		if (servicio == 'mote-info'):
			measure = id_di[2]
			consulta = db['sth_/qfresco_carlos_albertocarlos_alberto_idas'+measure+'_motes'].find({},{"_id":0,"attrType":0}).sort([("_id", -1)]).limit(4)			
			seen = set()
			for row in consulta:				
				if row['attrName'] not in seen:
					timehoy= DateTimeEncoder().encode(row["recvTime"])
					payload=json.dumps({row['attrName']:row['attrValue'],'recvTime':timehoy},)
					definitivo.append(payload)
					seen.add(row['attrName'])				

		if (servicio == 'sensor-info'):
			measure= id_di.split("&")
			consulta = db['sth_/qfresco_carlos_albertocarlos_alberto_idas'+measure[0][2]+'_motes'].find({"attrName":measure[1]},{"_id":0,"attrType":0}).sort([("_id", -1)])							
			for row in consulta:
				if (row['attrValue'] != '0'):
					timehoy= DateTimeEncoder().encode(row["recvTime"])
					payload=json.dumps({measure[1]:row['attrValue'],"recvTime":timehoy},)				
					definitivo.append(payload)
					
		return HttpResponse(definitivo, mimetype="application/json")
	except:
		print "URL no encontrada"
		return HttpResponse('<h1>Page not found</h1>')


