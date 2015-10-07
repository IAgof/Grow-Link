#!/bin/sh
# launcher.sh
# Navega hasta el directorio en el que se encuentra el script y lo ejecuta como$ 

cd /
cd /home/pi
/usr/bin/tmux new -s sesion1 -d 'sudo python GROW8LINK.py'
#/usr/bin/tmux new -s sesion2 -d 'sudo python spy_def.py'
cd /
