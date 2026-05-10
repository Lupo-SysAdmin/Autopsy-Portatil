#!/bin/bash

# Script de integración nativa para Autopsy Portátil
echo "-------------------------------------------------------"
echo "🛠️  Instalando Autopsy en el menú de aplicaciones..."
echo "-------------------------------------------------------"

# Definir el nombre del archivo
FILE="autopsy.desktop"

# Comprobar si el archivo .desktop existe en la carpeta actual
if [ ! -f "$FILE" ]; then
    echo "❌ Error: No se encuentra el archivo autopsy.desktop en esta carpeta."
    exit 1
fi

# Copiar el archivo a la ruta global de aplicaciones de Linux
sudo cp "$FILE" /usr/share/applications/autopsy.desktop

# Dar permisos de lectura para que el sistema lo reconozca
sudo chmod 644 /usr/share/applications/autopsy.desktop

echo "-------------------------------------------------------"
echo "✅ ¡Instalación completada con éxito!"
echo "🔎 Ya puedes buscar 'Autopsy' en tu menú de aplicaciones."
echo "-------------------------------------------------------"
