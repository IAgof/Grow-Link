#!/usr/bin/env python

#Este script realiza una prueba de la conexion a los diferentes servicios 
# (Orion, Fiware)
# Desarrollado por Gustavo Hernandez (ghp@gatv.ssr.upm.es, )

import requests
import ConfigParser
import io
import sys

CONFIG_FILE = "config.ini"

#main-----------------------

def main():
	configuracion = check_config()  
	check_values(configuracion)

# -------------------------
# verificar que el archivo de configuracion es correcto

def check_config():
	try:
		with open(CONFIG_FILE, 'r+') as f:
			sample_config=f.read()
			config = ConfigParser.RawConfigParser(allow_no_value=True)
			config.readfp(io.BytesIO(sample_config))
			f.close()
			return config			
	except (OSError, IOError) as e:
		print "file not found, please check config.ini exists and locate in myIDAS folder"
		print "archivo no encontrado, verifique que existe y dejelo en el directorio raiz myIDAS "
		sys.exit([arg])
#--------------------------------------
#check values of the configuration
def check_values(config):
	try:
		IDAS_HOST=config.get('idas','host')
		print "configuracion del host %s" % IDAS_HOST
		IDAS_ADMIN_PORT=config.get('idas', 'adminport')
		print "configuracion del host %s" % IDAS_ADMIN_PORT
		IDAS_UL20_PORT=config.get('idas', 'ul20port')
		print "configuracion Puerto URL local %s" % IDAS_UL20_PORT
		IDAS_AAA=config.get('idas', 'OAuth')
		print "IDAS_AAA ?? %s" % IDAS_AAA
		HOST_ID=config.get('local', 'host_id')
		print "configuracion del host %s" % HOST_ID
		print "... checking Context broker settings"
		CONTEXT_HOST=config.get('contextbroker','host')
		print "CONTEXT broker IP %s" % CONTEXT_HOST
		CONTEXT_PORT=config.get('contextbroker','port')
		print "CONTEXT broker PORT %s" % CONTEXT_PORT
		USERNAME=config.get('user','username')
		print "USERNAME %s" % USERNAME
		TOKEN = config.get('user','token')	
		print "USERNAME %s" % TOKEN
		URL =  "http://"+CONTEXT_HOST+":"+CONTEXT_PORT+'/version'
		print "URL del server : %s" %  URL
		r = requests.get(URL)
		print "server localizado correctamente :  %s" % r.status_code
		print "tipo de respuesta : %s" % r.headers['content-type']
		print r.text
	except ConfigParser.NoOptionError as e:
		print "error en configuracion, wrong configuration in : %s"  % e.option 
		sys.exit([arg])

if __name__ == "__main__":
	main()

