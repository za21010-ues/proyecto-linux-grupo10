#!/bin/bash

echo "***** REPORTE DEL SISTEMA *****"
echo

#Fecha y hora actual
echo "Fecha y hora actual: "
date
echo

#Nombre del host
echo "Nombre del host: "
hostname
echo

#Numero de usuarios conectados
echo "Numero de usuarios conectados: "
who | wc -l
echo

#Espacio libre en el disco principal
echo "Espacio libre en el disco principal: "
df -h / | awk 'NR==2 {print $4}'
echo

#Memoria RAM disponible
echo "Memoria RAM disponible: "
free -h | awk '/Mem:/ {print $7}'
echo

#Numero de contenedores Docker activos
echo "Contenedores Docker activos: "
docker ps -q | wc -l
echo

echo "***** FIN DEL REPORTE *****"
