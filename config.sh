#!/bin/bash
# config.sh -> procesa los argumentos (maximo 2)
#   $1 = palabra a buscar (obligatorio)
#   $2 = carpeta/trayectoria (opcional; por defecto todo el sistema "/")

if [ "$#" -gt 2 ]; then
  echo "Error: se permiten como maximo 2 argumentos."
  echo "Uso: ./main.sh <palabra> [carpeta]"
  exit 1
fi

if [ "$#" -lt 1 ]; then
  echo "Error: debes indicar la palabra a buscar."
  echo "Uso: ./main.sh <palabra> [carpeta]"
  exit 1
fi

PALABRA="$1"

# Si no se da carpeta, se busca en todo el sistema de almacenamiento
if [ -z "$2" ]; then
  CARPETA="/"
else
  CARPETA="$2"
fi
