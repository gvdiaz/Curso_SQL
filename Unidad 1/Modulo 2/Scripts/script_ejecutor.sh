#!/bin/bash
# Ejecuta script de mysql que se ingresa como argumento.
mysql -u "root" -p < $1 > $2
