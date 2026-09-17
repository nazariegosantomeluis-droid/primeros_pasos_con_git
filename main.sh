source config.sh
source busqueda.sh

if [ ! -d "$CARPETA" ]; then
    echo "Error: La carpeta '$CARPETA' no existe."
    exit 1
fi
ejecutar_busqueda

if [ ${#coincidencias[@]} -eq 0 ]; then
    echo "No se encontro la palabra '$PALABRA' en ninguno de los 8 archivos."
else
    echo "Coincidencias para la palabra '$PALABRA'"
    for item in "${coincidencias[@]}"; do
        ruta_completa="$(cd "$(dirname "$item")" && pwd)/$(basename "$item")"
        echo "Ubicacion: $ruta_completa"
    done
fi