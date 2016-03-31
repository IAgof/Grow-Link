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
from datetime import datetime, date, timedelta
from dateutil.relativedelta import *
import dateutil.parser
from time import mktime
import time 
import datetime
# hacer diccionario s para temperatura y humedadtempe
dict2 = {'temperatura' : 'Temperature', 'humedad':'Air_humidity', 'Temperature' : 'Temperature', 'Air_humidity' : 'Air_humidity', 'air_humidity': 'Air_humidity' }
dict1 = {'mota1' : '1'}
dict3= {}


def avanzado(request,idas,data_ini,data_fin,mote,sensor,operacion):
	try:
		definitivo=[]
		client =  MongoClient('localhost:27017')
		db = client.sth_databases
		#db = client.sth_admin_domain
		print operacion
		datoini=data_ini+"T00:00:00Z"
		dato1=dateutil.parser.parse(datoini)
		datofin=data_fin+"T23:59:59Z"
		dato2=dateutil.parser.parse(datofin)
		if operacion == "media":
			print "entrado aqui"
			print mote
			print operacion
			media_definitiva=[]
			fecha_definitiva=[]
			measure_media=[]
			timestamp=[]
			timestamp1=[]
			timestamp2=[]
			timestamp3=[]
			media1=[]
			media2=[]
			media3=[]
			check = True
			cambio_hora= (int(dato1.year)*8760)+(int(dato1.month)*730)+(int(dato1.day)*24)+int(dato1.hour)
			cambios=0
			old=dato1
			if mote == "todas":
				#next = dato1+timedelta(hours=1)				
				#print 'sth_/qfresco_'+idas+mota+'_motes'
				consulta1 = db['sth_/qfresco_carlos_albertocarlos_alberto_idas'+str(0)+'_motes'].find({ "attrName" : dict2[sensor] , "recvTime" : { "$gte" : dato1 , "$lt" : dato2 } } )
				for row  in consulta1:				
					hora_comp=(int(row['recvTime'].year)*8760)+(int(row['recvTime'].month)*730)+(int(row['recvTime'].day)*24)+int(row['recvTime'].hour)
					if hora_comp > cambio_hora:
						a=len(measure_media)
						if a != 0:							
							media_def=sum(measure_media)/a 
							media1.append(media_def)
							float(str(media_def).replace(',','.'))								
							fechastamp=time.mktime(datetime.datetime.strptime(str(row['recvTime']), "%Y-%m-%d %H:%M:%S").timetuple()) 
							timestamp1.append(fechastamp)
							timestamp.append(fechastamp)
							cambio_hora=hora_comp															
						measure_media=[]
					measure_media.append(float(row['attrValue']))	
				consulta2 = db['sth_/qfresco_carlos_albertocarlos_alberto_idas'+str(1)+'_motes'].find({ "attrName" : dict2[sensor] , "recvTime" : { "$gte" : dato1 , "$lt" : dato2 } } )
				cambio_hora= (int(dato1.year)*8760)+(int(dato1.month)*730)+(int(dato1.day)*24)+int(dato1.hour)
				for row  in consulta2:
					hora_comp=(int(row['recvTime'].year)*8760)+(int(row['recvTime'].month)*730)+(int(row['recvTime'].day)*24)+int(row['recvTime'].hour)
					if hora_comp > cambio_hora:
						a=len(measure_media)
						if a != 0:							
							media_def=sum(measure_media)/a 
							media2.append(media_def)
							float(str(media_def).replace(',','.'))								
							fechastamp=time.mktime(datetime.datetime.strptime(str(row['recvTime']), "%Y-%m-%d %H:%M:%S").timetuple()) 
							timestamp.append(fechastamp)
							timestamp2.append(fechastamp)
							cambio_hora=hora_comp															
						measure_media=[]
					measure_media.append(float(row['attrValue']))	
				consulta3 = db['sth_/qfresco_carlos_albertocarlos_alberto_idas'+str(2)+'_motes'].find({ "attrName" : dict2[sensor] , "recvTime" : { "$gte" : dato1 , "$lt" : dato2 } } )
				cambio_hora= (int(dato1.year)*8760)+(int(dato1.month)*730)+(int(dato1.day)*24)+int(dato1.hour)
				for row  in consulta3:					
					hora_comp=(int(row['recvTime'].year)*8760)+(int(row['recvTime'].month)*730)+(int(row['recvTime'].day)*24)+int(row['recvTime'].hour)
					if hora_comp > cambio_hora:
						a=len(measure_media)
						if a != 0:							
							media_def=sum(measure_media)/a 
							media3.append(media_def)
							float(str(media_def).replace(',','.'))								
							fechastamp=time.mktime(datetime.datetime.strptime(str(row['recvTime']), "%Y-%m-%d %H:%M:%S").timetuple()) 
							timestamp.append(fechastamp)
							timestamp3.append(fechastamp)
							cambio_hora=hora_comp															
						measure_media=[]
					measure_media.append(float(row['attrValue']))						
				contador=0				
				fechacompare=[]
				cont2=0
				check=True
				timestamp=sorted(set(timestamp))
				for i in range(0,len(timestamp)):
					valor = []
					if int(timestamp[i]) in timestamp1:
						pos=timestamp1.index(timestamp[i])
						valor.append(media1[pos])
						#print "funciona en el 1"
					if int(timestamp[i]) in timestamp2:
						#print "funciona en el 2"
						pos=timestamp2.index(timestamp[i])
						valor.append(media2[pos])
					if int(timestamp[i]) in timestamp3:
						#print "funciona en el 3"
						pos=timestamp3.index(timestamp[i])
						valor.append(media3[pos])
					a=len(valor)
					if a != 0:
						media_def=sum(valor)/a
						fecha_definitiva.append([int(timestamp[i]),float("%.2f" % media_def)])
			if "mot" in mote:	
				print "una sola mota"
				print 'sth_/qfresco_'+idas+mote+'_motes'
				consulta = db['sth_/qfresco_carlos_albertocarlos_alberto_idas'+str(mote[4])+'_motes'].find({ "attrName" : dict2[sensor] , "recvTime" : { "$gte" : dato1 , "$lt" : dato2 } } )
				for row in consulta:
					hora_comp=(int(row['recvTime'].year)*8760)+(int(row['recvTime'].month)*730)+(int(row['recvTime'].day)*24)+int(row['recvTime'].hour)
					if hora_comp > cambio_hora:
						cambios=cambios+1
						a=len(measure_media)
						if a != 0:
							media_def=sum(measure_media)/a
							float(str(media_def).replace(',','.'))
							media_definitiva.append(media_def)
							fechastamp=time.mktime(datetime.datetime.strptime(str(row['recvTime']), "%Y-%m-%d %H:%M:%S").timetuple())
							fecha_definitiva.append([int(fechastamp),float("%.2f" % media_def)])
							cambio_hora=hora_comp
							measure_media=[]
					measure_media.append(float(row['attrValue']))
			total = fecha_definitiva
			return HttpResponse(json.dumps(total,separators=(',',',')), mimetype="application/json")
		if "promed" in operacion:
			print "calculando promedio"
			a=0
			promedio_def=0
			longitud=0
			operacion= operacion.split("&")
			if mote == "todas":
				print "todas las motas"
				print 'sth_/qfresco_'+idas+mote+'_motes'
				valido=[]
				consulta = db['sth_/qfresco_carlos_albertocarlos_alberto_idas'+str(0)+'_motes'].find({ "attrName" : dict2[sensor] , "recvTime" : { "$gte" : dato1 , "$lt" : dato2 } } )
				for row in consulta:
					if (float(operacion[1]) < float(row['attrValue'])):
						if(float(operacion[2]) > float(row['attrValue'])):
							a=a+1
					longitud=longitud+1
				consulta2 = db['sth_/qfresco_carlos_albertocarlos_alberto_idas'+str(1)+'_motes'].find({ "attrName" : dict2[sensor] , "recvTime" : { "$gte" : dato1 , "$lt" : dato2 } } )
				for row in consulta2:
					if (float(operacion[1]) < float(row['attrValue'])):
						if(float(operacion[2]) > float(row['attrValue'])):
							a=a+1
					longitud=longitud+1
				consulta3 = db['sth_/qfresco_carlos_albertocarlos_alberto_idas'+str(2)+'_motes'].find({ "attrName" : dict2[sensor] , "recvTime" : { "$gte" : dato1 , "$lt" : dato2 } } )
				for row in consulta3:
					if (float(operacion[1]) < float(row['attrValue'])):
						if(float(operacion[2]) > float(row['attrValue'])):
							a=a+1
					longitud=longitud+1
				if (longitud > 0):
					promedio_def= ( a * 100) / longitud				
			total = promedio_def
			if "mot" in mote:
				print "una sola mota"
				print 'sth_/qfresco_'+idas+mote+'_motes'
				consulta = db['sth_/qfresco_carlos_albertocarlos_alberto_idas'+str(mote[4])+'_motes'].find({ "attrName" : dict2[sensor] , "recvTime" : { "$gte" : dato1 , "$lt" : dato2 } } )
				valido=[]
				for row in consulta:
					if (float(operacion[1]) < float(row['attrValue'])):
						if(float(operacion[2]) > float(row['attrValue'])):							
							a=a+1
					longitud=longitud+1
				if (longitud > 0):
					promedio_def= ( a * 100) / longitud
			total = promedio_def
			return HttpResponse(json.dumps(total,separators=(',',',')), mimetype="application/json")
	except:
		print "URL no encontrada"
		return HttpResponse('<h1>Page not found</h1>')   

					
		#return HttpResponse(definitivo, mimetype="application/json")
	#except:
	#	print "URL no encontrada"
	#	return HttpResponse('<h1>Page not found</h1>')   


