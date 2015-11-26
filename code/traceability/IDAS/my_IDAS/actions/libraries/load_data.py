#!/usr/bin/python

#Este script realiza una prueba de la conexion a los diferentes servicios 
# (Orion, Fiware)
# Desarrollado por Gustavo Hernandez (ghp@gatv.ssr.upm.es, )

import ConfigParser
import io
import sys

CONFIG_FILE = "/home/pi/my_IDAS/config.ini"

#--------------------------------------------

class configuracion(object):
	IDAS_HOST = ""
	IDAS_ADMIN_PORT = ""
	IDAS_UL20_PORT = ""
	IDAS_AAA  = ""
	HOST_ID = ""
	CONTEXT_HOST=""
	CONTEXT_PORT=""
	USERNAME=""
	TOKEN=""
	URL=""
	FIWARE_SERVICE=""
	FIWARE_SERVICE_PATH=""
	GROW_USER =""
	CYG_PORT=""
	URL_CYGNUS=""


def load_data():
	try:
		with open(CONFIG_FILE, 'r+') as f:
			sample_config=f.read()
			config = ConfigParser.RawConfigParser(allow_no_value=True)
			config.readfp(io.BytesIO(sample_config))
			f.close()						
	except (OSError, IOError) as e:
		print "file not found, please check config.ini exists and locate in myIDAS folder"
		print "archivo no encontrado, verifique que existe y dejelo en el directorio raiz myIDAS "
		sys.exit([arg])
	try:
		configuracion.IDAS_HOST=config.get('idas','host')
		print "configuracion del host %s" % configuracion.IDAS_HOST
		configuracion.IDAS_ADMIN_PORT=config.get('idas', 'adminport')
		print "configuracion del host %s" % configuracion.IDAS_ADMIN_PORT
		configuracion.IDAS_UL20_PORT=config.get('idas', 'ul20port')
		print "configuracion Puerto URL local %s" % configuracion.IDAS_UL20_PORT
		configuracion.IDAS_AAA=config.get('idas', 'OAuth')
		print "IDAS_AAA ?? %s" % configuracion.IDAS_AAA
		configuracion.HOST_ID=config.get('local', 'host_id')
		print "configuracion del host %s" % configuracion.HOST_ID
		print "... checking Context broker settings"
		configuracion.CONTEXT_HOST=config.get('contextbroker','host')
		print "CONTEXT broker IP %s" % configuracion.CONTEXT_HOST
		configuracion.CONTEXT_PORT=config.get('contextbroker','port')
		print "CONTEXT broker PORT %s" % configuracion.CONTEXT_PORT
		configuracion.USERNAME=config.get('user','username')
		print "USERNAME %s" % configuracion.USERNAME
		configuracion.TOKEN = config.get('user','token')	
		print "TOKEN %s" % configuracion.TOKEN
		configuracion.URL =  "http://"+configuracion.CONTEXT_HOST+":"+configuracion.CONTEXT_PORT +'/'
		print "URL %s" % configuracion.URL
		configuracion.FIWARE_SERVICE=config.get('idas', 'fiware-service')
		print "FIWARE_SERVICE %s" % configuracion.FIWARE_SERVICE
		configuracion.FIWARE_SERVICE_PATH=config.get('idas', 'fiware-service-path')
		print "FIWARE_SERVICE_PATH %s" % configuracion.FIWARE_SERVICE
		configuracion.GROW_USER=config.get('grow8link', 'user_id')
		print "Configuracion de usuario grow8link %s " % configuracion.GROW_USER
		configuracion.CP=config.get('grow8link', 'CP')
		print "Configuracion de codigo psotal grow8link %s " % configuracion.CP
		configuracion.CYG_PORT=config.get('grow8link', 'CYG_PORT')
		print "Configuracion de puerto cygnus  para persistencia %s " % configuracion.CYG_PORT
		configuracion.URL_CYGNUS =  "http://"+configuracion.CONTEXT_HOST+":"+configuracion.CYG_PORT +'/notify'
		return configuracion
	except ConfigParser.NoOptionError as e:
		print "error en configuracion, wrong configuration in : %s"  % e.option 
		sys.exit([arg])
