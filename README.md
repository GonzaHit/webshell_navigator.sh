# webshell_navigator.sh

## Instrucciones para Usar el Script


## Dar Permisos de Ejecución al Archivo:

bash

chmod +x webshell_navigator.sh

## Ejecutar el Script:

bash
./webshell_navigator.sh

Interacción con la Webshell:

Cuando ejecutes el script, te pedirá la URL base de la webshell. 

Ejemplo: http://172.17.0.2/shell.php?parameter=

Después, te pedirá que ingreses comandos que quieras ejecutar en la webshell.

La salida de cada comando se mostrará en la terminal.

Para salir del script, puedes ingresar exit o presionar Ctrl+C.

## Ejemplo de Uso

bash

$ ./webshell_navigator.sh

Introduce la URL base de la webshell (ejemplo: http://172.17.0.2/shell.php?parameter=): http://172.17.0.2/shell.php?parameter=

Introduce el comando a ejecutar (o 'exit' para salir): whoami

Salida del comando:

root

Introduce el comando a ejecutar (o 'exit' para salir): ls /tmp

Salida del comando:

file1.txt

file2.txt

Introduce el comando a ejecutar (o 'exit' para salir): exit

[!] Saliendo...
