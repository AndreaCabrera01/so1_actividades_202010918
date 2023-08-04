#!/bin/bash
read -p "Ingrese su Github user: " GITHUB_USER

res=$(curl -s -H "Accept: application/json" "https://api.github.com/users/$GITHUB_USER")

id=$(echo $res | jq '.id')
date=$(echo $res | jq -r '.created_at')

mensaje="Hola $GITHUB_USER. User ID: $id. Cienta fue creada el: $date"
echo $mensaje

actual=$(date '+%m_%d_%Y-%H_%M_%S')

if [ ! -d "/tmp/$actual" ]; then
    mkdir /tmp/$actual
fi

exec > /tmp/$actual/saludos.log 2>&1
echo $mensaje