#!/bin/bash

# Es necesario JQ para hacer la lectura del formato JSON de la API
# https://jqlang.github.io/jq/
# Agregar el .exe a la ruta PATH

read -p "Ingresa un nombre: " nombre

endpoint="https://api.agify.io/?name=${nombre}"

response=$(curl -s "${endpoint}")


edad=$(echo $response | jq -r '.age')
count=$(echo $response | jq -r '.count')
    
if [ "$edad" != "null" ] && [ "$count" != "null" ]; then
    echo "La edad probable para el nombre ${nombre} es de ${edad} años con un total de ${count} registros."
else
    echo "No se encontraron datos para el nombre ${nombre}."
fi