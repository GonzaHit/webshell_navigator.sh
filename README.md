# webshell_navigator.sh

# Webshell Navigator

## Descripción

Webshell Navigator es una herramienta en Bash que permite interactuar con una webshell de manera continua y guardar los resultados en un archivo de texto. Es útil para ejecutar comandos en un servidor comprometido a través de una webshell.

## Funcionalidades

1. **Interfaz Interactiva**: Permite ejecutar comandos de manera interactiva hasta que el usuario decida salir.
2. **Formato de Comandos**: Convierte los espacios en los comandos a `+` para que sean interpretados correctamente por la webshell.
3. **Manejo de Errores**: Muestra un mensaje en rojo si no se encuentra ningún dato.
4. **Guardar Resultados**: Guarda todos los comandos y sus resultados en un archivo de texto al finalizar la sesión.

## Requisitos

- Sistema operativo basado en Unix/Linux.
- Intérprete de comandos Bash.
- Herramienta `curl` instalada.

## Uso

### Crear y Ejecutar el Script

1. **Crear el Archivo del Script**:
   Guarda el contenido del script en un archivo llamado `webshell_navigator.sh`.

2. **Dar Permisos de Ejecución al Archivo**:
   ```bash
   chmod +x webshell_navigator.sh

