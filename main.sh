#!/bin/bash
# main.sh -> orquesta todo e imprime la ubicacion absoluta
source config.sh
source busqueda.sh

if [ ! -d "$CARPETA" ]; then
  echo "Error: La carpeta '$CARPETA' no existe."
  exit 1
fi

echo "Buscando '$PALABRA' en '$CARPETA'..."
ejecutar_busqueda

if [ ${#coincidencias[@]} -eq 0 ]; then
  echo "No se encontro la palabra '$PALABRA' en '$CARPETA'."
else
  echo "=== Coincidencias para la palabra '$PALABRA' ==="
  for item in "${coincidencias[@]}"; do
    ruta_completa="$(cd "$(dirname "$item")" 2>/dev/null && pwd)/$(basename "$item")"
    echo "Ubicacion: $ruta_completa"
  done
fi
