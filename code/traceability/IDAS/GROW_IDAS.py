#!/usr/bin/python

import sqlite3 as lite
import time,  datetime, struct, re, sys, os
import RPi.GPIO as GPIO
import math
import Adafruit_CharLCD as LCD
import logging
import serial

#recogida de datos
DB_NAME = "/home/pi/GROW8LINK/GROW8LINK.db"
DATAPATH_LOG = '/home/pi/capturedato.log'
ACTUALOG_PATH = '/home/pi/GROW8LINK/actuacion.log'
DATABASELOG_PATH = '/home/pi/GROW8LINK/BRIO2'
ERRORLOG_PATH = '/home/pi/GROW8LINK/error_log.log'
logging.basicConfig(filename=ERRORLOG_PATH, level=logging.INFO,)
VALORES = range(3) 
dir_motas= {'WASPX': 'Mota_X_casapepe'};  # OJO: mirar subscripcions
lcd_columns = 16
lcd_rows    = 2

#-------------------111-------------funciones-------------------------# 

#def visualizar(letrero):
#	lcd = LCD.Adafruit_CharLCDPlate()	
#	lcd.clear()
#	lcd.message(letrero)

def abre_archivo():
	datos = open(DATAPATH_LOG,'r+')
	cadena = datos.read()		
	with open(DATAPATH_LOG,"w"):
		pass
	return cadena

def init_DB():
	try:
		global DB_NAME
		database = lite.connect(DB_NAME)
		cursor = database.cursor()
		try:			
			cursor.execute("CREATE TABLE datos(mota TEXT, Fecha TEXT, Temperatura TEXT, Humedad TEXT, FOREIGN KEY(mota) REFERENCES motas(id_mota))")
			cursor.execute("CREATE TABLE tramas_erroneas(Fecha TEXT, Trama TEXT, Motivo TEXT)")			
			database.commit()
			#logging.info('La BDD no existe. BDD inicializada.')
			print 'La BDD no existe. BDD inicializada.'
		except lite.OperationalError as e:
			#Ha fallado la operacion de crear las tablas, por tanto la BDD ya existe.
			#logging.info('La BDD ya existe.')
			print 'La BDD ya existe.'
			print e
	except lite.Error, e:
		print ("Error abriendo la BDD: " + str(e.args[0]))



def guardar_datos(fecha, valor):
	try:
		global DB_NAME
		print "guardando datos ..."
		database = lite.connect(DB_NAME)
		cursor = database.cursor()
		cursor.execute('INSERT INTO datos values (?,?,?,?)', 
			[valor[0], fecha, valor[1], valor[2]])
		database.commit()
	except lite.OperationalError as error:
		logging.info('Error insertando datos en datos' + str(error))
		print ('Error insertando datos en datos' + str(error))
	finally:
		if database:
			database.close()


def insert_error(fecha, error, motivo):
	try:
		global DB_NAME
		database = lite.connect(DB_NAME)
		database.text_factory = str
		cursor = database.cursor()
		cursor.execute('INSERT INTO tramas_erroneas values (?,?,?)', 
			[fecha, error, motivo])
		database.commit()
	except lite.OperationalError as error:
		logging.info('Error insertando datos en tramas_erroneas: ' + str(error))
		print ('Error insertando datos en tramas_erroneas: ' + str(error))
	finally:
		if database:
			database.close()



def context_broker(medidas_enviar):
	global dir_motas
	try:		
		relacion = dir_motas[medidas_enviar[0]]    #averiguamos si ha sido suscrito antes
		print relacion
	except KeyError:
		solo_num= re.sub("\D","",medidas_enviar[0])
		relacion = 'mota_madrid_CP_'+solo_num
		dir_motas[medidas_enviar[0]]=relacion    #si no ha sido suscrito, suscribimos		
		entity_creation = 'sudo python /home/pi/my_IDAS/actions/create_entity.py -ce '+relacion
		print entity_creation
		os.system(entity_creation)
		entity_subscrition = 'sudo python /home/pi/my_IDAS/actions/subscribe_entity.py -ce '+relacion
		print entity_subscrition
		os.system(entity_subscrition)		
	context = 'sudo python /home/pi/my_IDAS/actions/add_measure.py -ce '+relacion+' -m1  '+medidas_enviar[1]+ ' -m2 ' +medidas_enviar[2]  #enviamos la medida
	print context
	os.system(context)

				
#------------------------  codigo------------------------------------
def main():
	init_DB()
	while 1:
		time.sleep(5)
		tiempo = time.strftime("%H:%M:%S")
		if os.stat(DATAPATH_LOG).st_size != 0:		
			trama = abre_archivo()
			fin_trama = False
			while fin_trama == False:
				lectura = str(trama)
				#lectura1 = trama.encode('hex')
				print lectura
				#print lectura1
				fecha  = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
				print "medida tomada a las: %s" % fecha
				inicio = lectura.find('??')
				fin =  lectura.find('++')
				if not (inicio == -1):    
					if not fin == -1:
						campos_trama= re.split('##',lectura[inicio:fin])					
						campos_trama[2]=campos_trama[2].replace('#','')
						campos_trama[3]=campos_trama[3].replace('#','')
						for i in range(0,3):
							VALORES[i] = campos_trama[i+1]
						print "Direccion mota: %s" % VALORES[0]
						#visualizar("Trama recibida\nProcesando")
						time.sleep(0.1)
						if 'W' in VALORES[0]:
							print (".. es una mota libelium")
							try:
								if VALORES[1] == "":
									VALORES[1] =-39.6
								else:									
									VALORES[1] = campos_trama[2]
								if VALORES[2] == "":
									VALORES[2]=-2.0468
								else:									
									VALORES[2] = campos_trama[3]
							except ValueError :   
								motivo = "Algun dato no es correcto"
								print (motivo)
								insert_error(fecha,lectura,motivo)
						if 'T' in VALORES[0]:
							print("es una mota TI")
							try:							
								if VALORES[1] == "":
									VALORES[1] =-39.6
								else:
									VALORES[1] = -39.6 + 0.01 *( int(campos_trama[2],16)) # ecuaciones sensor temp
								if VALORES[2] == "":	
									VALORES[2]	= -2.0468											
								else:	
									VALORES[2] = -2.0468+0.0367*(int(campos_trama[3],16))-(1.5955e-6)*pow((int(campos_trama[3],16)),2) # ecua humedad		
							except ValueError : 
								motivo = "Algun dato no es correcto"
								print motivo 
								insert_error(fecha,lectura,motivo)
						print "temperatura: %s" % VALORES[1]
						print "Humedad: %s" % VALORES[2]
						#visualizar("Temp:" + str(VALORES[1]) + "\nHum:" + str(VALORES[2]))																
						guardar_datos(fecha,VALORES)						
						context_broker(VALORES)						
						if '??' in lectura[fin+2:]:
							trama = trama[fin+2:]
						else:						
							fin_trama = True
						#visualizar("Temp:" + str(VALORES[1]) + "\nHum:" + str(VALORES[2]))							
					else:
						motivo = "trama incompleta, sin final"
						print motivo
						insert_error(fecha,lectura,motivo)
						fin_trama = True
				else:
					fin_trama = True
					motivo = "Trama incorrecta:sin inicio "			
					print motivo
					insert_error(fecha,lectura,motivo )	

if __name__ == "__main__":
	main()