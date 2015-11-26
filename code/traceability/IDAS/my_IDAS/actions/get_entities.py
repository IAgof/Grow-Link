#!/usr/bin/python

#Este script realiza una prueba de la conexion a los diferentes servicios 
# (Orion, Fiware)
# Desarrollado por Gustavo Hernandez (ghp@gatv.ssr.upm.es, )

import requests, json
import io
import sys
sys.path.append('/home/pi/my_IDAS/actions/libraries')
import load_data

def main():
	configuracion= load_data.load_data()
	configuracion.URL = configuracion.URL+'v1/contextEntities'
	#configuracion.URL = configuracion.URL + configuracion.FIWARE_SERVICE_PATH

	print configuracion.URL
	send_request(configuracion)


def send_request(config):
	#HEADERS = {'content-type': 'application/json' , 'X-Auth-Token' : config.TOKEN, 'Fiware-Service' : config.FIWARE_SERVICE, 'Fiware-ServicePath' : config.FIWARE_SERVICE_PATH }
	HEADERS = {'content-type': 'application/json' }
	print HEADERS
	print "preaprando soliucitud"
	r = requests.get(config.URL, headers=HEADERS)
	print
	print "* Status Code: "+str(r.status_code)
	print "* Response: "
	print r.text
	
if __name__ == "__main__":
	main()