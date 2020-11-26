#!/bin/bash
# Ejecuta script de mysql que se ingresa como primer argumento y archivo de salida el segundo argumento (un txt)
mysql -u "root" -p < $1 > $2
