#!/bin/bash 


#programa para instalar el orion 

clear 

file="/workspace/setup/foo.txt"
selinux="/etc/sysconfig/selinux"

if ! [ -d "/workspace" ]
then 
	mkdir -p /workspace
	cd workspace
	mkdir -p setup
fi

cp -r code/ /workspace/setup

check_version(){
	if [ -f "$file" ]
	then
		echo "estoy entrando"
		if [ ' grep -rnw $file -e "update" ' ]
		then 
			echo " el update esta hecho"
		else
			yum -y update
			echo "update hecho" >> $file
		fi
		if [ ' grep -rnw $file -e "update" ' ]
		then
			echo " el upgrade esta hecho "
		else
			yum upgrade
	                echo "upgrade hecho" >>	$file
		fi
		if [ ' grep -rnw $file -e "epel" ' ]
		then 
			echo "epel instalado anteriormente"
		else
			yum install epel-release
			echo "epel hecho" >> $file
		fi
		if hash python 2>/dev/null; then		 
			echo " pythobn instalado"			
		else
			yum install python
			yum install python-pip
			echo "pip hecho" >> $file			
		fi
		if [ ' grep -rnw $file -e "pip" ' ]
                then
                    	echo "pip instalado anteriormente"
                else
                    	yum install python-pip
                        echo "pip hecho" >> $file
                fi					
	else
		yum -y update
		echo "update hecho" >> $file
		yum upgrade
		echo "upgrade hecho" >> $file
		yum install epel-release
		echo "epel hecho" >> $file
		if [ hash python 2>/dev/null ]
               	then
                        echo " pythobn instalado"
               	else
                        yum install python
			yum install python-pip
                fi
	fi 
}

# inicio de codigo de 
echo "instalando el orion fiware"
wget -q --tries=10 --timeout=20 --spider http://google.com
if [[ $? -eq 0 ]]; then
	check_version
	echo "check realizado"
	if hash virtualenv 2>/dev/null; then        
               	echo " virtualenv instalado"
        else
               	pip install virtualenv
                echo "virtualenv instalado"
	fi
	if ! [ -d "/workspace/venv" ]
	then 
		cd /workspace
		virtualenv venv
	fi
	source /workspace/venv/bin/activate
	if hash mongo 2>/dev/null; then 
		echo "mongo instalado anteriormente"
	else
		cp /workspace/setup/mongodb-org-2.6.repo /etc/yum.repos.d/
		yum update
		yum install -y mongo-db-org
	fi
	if [ ' grep -rnw $selinux -e "SELINUX=enforcing" ' ]
	then
		echo " cambiando el archivo de politica de seguridad "
		sed -i 's/SELINUX=enforcing/SELINUX=permissive/g' $selinux
		echo "cambiado  correctamente"
	fi
	if hash contextBroker 2>/dev/null; then
		echo "instalado anteriormente"
		/etc/init.d/contextBroker start
	else
		cp /workspace/setup/testbed-fi-ware.repo /etc/yum.repos.d/
                yum update
                yum install contextBroker
                echo "instalado correctamente"
	fi	
	if  hash java 2>/dev/null; then
        	echo "java se encuentra instalado en el ordenador"
	        version=$(java -version 2>&1  | awk -F '"' '/version/ {print $2} ' )
	        echo version "$version"
	        if [[ "$version" > "1.5" ]]; then
	                echo " la version es mayor que 1.6 "
	        else
	            	echo " la version recomendada es la 1.6 "
	                yum install java-1.6.0-openjdk-devel
	        fi
	else
	    	echo "instalando la version recoemndada"
	        yum install java-1.6.0-openjdk-devel
	        echo "version recomendada instalada"
	fi
	if [[ -n "$JAVA_HOME" ]] && [[ -x "$JAVA_HOME/bin/java" ]];  then
	        echo found java executable in JAVA_HOME
	else
	    	export JAVA_HOME=/usr/lib/jvm/java-1.6.0-openjdk.x86_64/
	        echo "agregado al path"
	        echo $JAVA_HOME
	fi
	if hash cygnus 2>/dev/null; then
		echo "cygnus instalado anteriormente"
	else
		yum install cygnus
		echo "yum instalado correctamente"		
	fi
else
        echo "no hay conexion a internet, por favor asegurese de que esta conectado"
fi
