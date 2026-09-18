#!/bin/bash
# busqueda.sh -> busca la palabra de forma recursiva en la trayectoria

ejecutar_busqueda() {
  coincidencias=()
  # -r recursivo | -l solo nombres | -i ignora may/min | -I omite binarios
  # 2>/dev/null silencia errores de permisos al recorrer todo el sistema
  while IFS= read -r archivo; do
    coincidencias+=("$archivo")
  done < <(grep -rliI "$PALABRA" "$CARPETA" 2>/dev/null)
}
