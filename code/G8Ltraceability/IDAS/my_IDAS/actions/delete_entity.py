#!/usr/bin/python

#Este script realiza una prueba de la conexion a los diferentes servicios 
# (Orion, Fiware)
# Desarrollado por Gustavo Hernandez (ghp@gatv.ssr.upm.es, ghernandez@visiona-ip.es)

import requests, json
import io
import sys
sys.path.append('/home/pi/my_IDAS/actions/libraries')
import load_data
import argparse

parser=argparse.ArgumentParser(
    description=''' Descripcion comandos -h ayuda,  ejemplo: python create_entity.py -ce mi_entidad''',
    epilog="""All's well that ends well.""")
#parser.add_argument('--foo', type=int, default=42, help='FOO!')
parser.add_argument('-ce', type=str, default=[1, 2, 3], help='name of entity to be created (example:  python create_entity.py -ce madrid1  )')
args=parser.parse_args()

def main():
	configuracion= load_data.load_data()
	send_request(configuracion)


def send_request(config):
	try:
		sys.argv[2]
		print "nombre de la entidad: " + sys.argv[2]
		HEADERS = {'content-type': 'application/json' , 'X-Auth-Token' : config.TOKEN, 'Fiware-Service' : config.FIWARE_SERVICE, 'Fiware-ServicePath' : config.FIWARE_SERVICE_PATH }
		#HEADERS = { 'Content-type': 'application/json'  }		
		PAYLOAD = '{ \
						"contextElements": [ \
						{ \
							"type": "grower", \
							"isPattern": "false", \
							"id": "'+sys.argv[2]+'" \
						} \
						], \
						"updateAction": "DELETE" \
					}'
		url_pet = config.URL + 'v1/updateContext' 
		print url_pet
		print json.dumps(json.loads(PAYLOAD), indent=4)
		r = requests.post(url_pet, data = PAYLOAD, headers=HEADERS)
		print
		print "* Status Code: "+str(r.status_code)
		print "* Response: "
		print r.text
	except:
		print "Debe poner el nombre de la entidad a crear, para mmas info use -h"

if __name__ == "__main__":
	main()




#HEADERS = {'content-type': 'application/json' , 'X-Auth-Token' : TOKEN, 'Fiware-Service' : FIWARE_SERVICE, 'Fiware-ServicePath' : FIWARE_SERVICE_PATH }
#HEADERS = {'''-s -S --header 'Content-Type: application/json' --header 'Accept: application/json' -d @- | python -mjson.tool'''}
#PAYLOAD = '{ "contextElements": [ { "type": "grower", "isPattern": "false", "id": "Madrid_28025_2", "metadata": [ {  "name": "direccion", "type": "text", "value": "alfaro41" }, { "name": "CP", "type": "integer", "value": "28025" } ] } ], "updateAction": "APPEND" }'
		