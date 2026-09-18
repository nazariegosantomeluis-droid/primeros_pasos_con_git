Buscador de Palabra Clave en Archivos (.sh)

Este proyecto es una herramienta en Bash desarrollada de forma colaborativa usando Git y GitHub. El script analiza una serie de casos de prueba organizados en un directorio y devuelve la ubicación exacta en el sistema de los archivos que contienen la palabra clave "home".

📁 Estructura del Proyecto

.
├── casos_de_prueba/
│   ├── archivo1.txt
│   ├── archivo2.txt
│   └── ... (hasta archivo8.txt)
├── config.sh       # Definición de variables y rutas
├── busqueda.sh     # Lógica de escaneo e identificación de coincidencias
├── main.sh         # Orquestador principal y formato de resultados
└── README.md


👥 Trabajo Colaborativo (Ramas)

El proyecto fue desarrollado por un equipo de 3 personas, donde cada integrante aportó una parte modular mediante su propia rama en Git:

Integrante 1 (branch-1-config): Creación del entorno de pruebas (casos_de_prueba/) y configuración inicial (config.sh).

Integrante 2 (branch-2-busqueda): Desarrollo de la lógica de búsqueda iterativa sobre los 8 archivos (busqueda.sh).

Integrante 3 (branch-3-salida): Integración de módulos, manejo de salida e impresión de ubicaciones absolutas (main.sh).

🚀 Requisitos y Ejecución

No se requieren librerías ni dependencias externas. Solo necesitas un entorno Bash (Linux, macOS o Git Bash en Windows).

Clonar el repositorio:

git clone (https://github.com/nazariegosantomeluis-droid/primeros_pasos_con_git/tree/feature/archivos-prueba)
cd casos_de_prueba


Dar permisos de ejecución al script principal:

chmod +x main.sh


Ejecutar el programa:

./main.sh


📤 Ejemplo de Salida

=== Coincidencias para la palabra 'home' ===
Ubicacion: /ruta/absoluta/del/proyecto/casos_de_prueba/archivo3.txt
Ubicacion: /ruta/absoluta/del/proyecto/casos_de_prueba/archivo7.txt
