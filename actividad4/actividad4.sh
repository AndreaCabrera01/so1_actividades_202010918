#!/bin/bash

while true; do
   ahora=$(date '+%Y-%m-%d %H:%M:%S') 
   echo "[202010918] - Hola mundo: $ahora" | systemd-cat -p info
   sleep 10
done
