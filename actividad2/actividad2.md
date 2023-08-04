# ACTIVIDAD 2
Andrea María Cabrera Rosito - 202010918

## Explicación del script:

`#!/bin/bash`
>Shebang - se describe el intérprete.


`read -p "Ingrese su Github user: " GITHUB_USER`
>Se lee el input, en este caso el User de github

`res=$(curl -s -H "Accept: application/json" "https://api.github.com/users/$GITHUB_USER")`
>Con la API de github, se obtienen los datos del usuario proporcionado

`id=$(echo $res | jq '.id')`
`date=$(echo $res | jq -r '.created_at')`
>En las 2 líneas anteriores se guardan los atributos id y fecha respectivamente. En el caso de date se agrega '-r' para que la fecha no aparezca con comillas (")


`mensaje="Hola $GITHUB_USER. User ID: $id. Cienta fue creada el: $date"`
>Se guarda como mensaje para posteriormente imprimirlo en consola y poder guardarlo en el log.

`echo $mensaje`
>Se imprime el mensaje.

`actual=$(date '+%m_%d_%Y-%H_%M_%S')`
>Se guarda la fecha - en este caso, se adaptó el formato para poder crear una carpeta con un nombre válido.

`if [ ! -d "/tmp/$actual" ]; then`
    `mkdir /tmp/$actual`
`fi`
>Si la carpeta con la fecha actual no existe, se crea.


`exec > /tmp/$actual/saludos.log 2>&1`
>Se crea el log.

`echo $mensaje`
>Se guarda el mensaje en el log.

## Explicación cronjob:

En este caso, para la ejecución del cronjob se utilizó:
`*/5 * * * * /bin/bash /home/andrea/Universidad/so1_actividades_202010918/actividad2/actividad2.sh`
dichos argumentos son: 
minuto - (0-59)
hora - (0-24)
día del mes - (1-31) 
mes - (1-12)
día de la semana - (0-6 donde 0 es Domingo.)

como puede verse, el primer argumento es `*/5` - el `*` es any, mientras que `/` indica una el paso, nuestro caso es de 5 y ya que se encuentra en la primera posición, minutos.
en los demás argumentos igualmente se utiliza `*` any.

después `/bin/bash` indica el shebang.

por último `/home/andrea/Universidad/so1_actividades_202010918/actividad2/actividad2.sh` indica el comando, en este caso el script.
