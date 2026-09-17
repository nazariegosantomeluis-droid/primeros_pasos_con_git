ejecutar_busqueda() {
    coincidencias=()
    for i in {1..8}; do
        archivo="$CARPETA/archivo$i.txt"
        # Verifica que exista y busca la palabra sin distinguir mayusculas/minusculas
        if [ -f "$archivo" ]; then
            if grep -qi "$PALABRA" "$archivo"; then
                coincidencias+=("$archivo")
            fi
        fi
    done
}