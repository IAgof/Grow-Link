from matplotlib import pylab
from pylab import *
from django.core.urlresolvers import reverse
import PIL
import PIL.Image
import re
from django.http import Http404
import StringIO
from django.http import HttpResponse 
from django.template import RequestContext, loader
from django.shortcuts import render_to_response
from django.shortcuts import render
from pymongo import MongoClient


dict = {'temperatura' : 'Temperature', 'humedadaire':'Air_humidity'}

def graph(request,servicio,id_di):	
	try: 
		if (servicio == 'sensor-info'):
			measure= id_di.split("&")
			client =  MongoClient('localhost:27017')	
			db = client.sth_databases			
			consulta = db["sth_/qfresco_madrid_1192.168.0.49"+measure[0]+"_mote"].find({"attrName":measure[1]},{"_id":0,"attrType":0,"recvTime":0}).limit(1000)
			cadena=[]
			for row in consulta:
				graficay=re.findall("\d+.\d+",str(row))		
				f= "".join(map(str,graficay))
				if f:
					cadena.append(float(f))

			x=range(len(cadena))
			plot(x,cadena, linewidth=2)
			xlabel('Number of Measures gathered')
			ylabel(measure[1])
			title("Mote Number "+measure[0] + " graph")
			grid(True)
			buffer = StringIO.StringIO()
			canvas = pylab.get_current_fig_manager().canvas
			canvas.draw()
			graphIMG = PIL.Image.fromstring("RGB",canvas.get_width_height(),canvas.tostring_rgb())
			graphIMG.save(buffer,"PNG")
			pylab.close()
			return HttpResponse(buffer.getvalue(),mimetype="image/png")
	except:
			raise Http404("Mote or sensor does not exist")
	