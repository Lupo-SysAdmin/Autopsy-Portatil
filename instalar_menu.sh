#!/bin/bash

# -----------------------------------------------------------------------
# LEGAL DISCLAIMER:
# This project is an unofficial portable distribution. 
# Autopsy® and The Sleuth Kit® are registered trademarks of their 
# respective owners. This installer is provided under the Apache 2.0 License.
# -----------------------------------------------------------------------

# Script de integración nativa para Autopsy Portátil (Versión Pro)
echo "-------------------------------------------------------"
echo "🛠️  Instalando Autopsy en el menú de aplicaciones..."
echo "-------------------------------------------------------"

# Definir el nombre del archivo original
FILE="autopsy.desktop"
TEMP_FILE="autopsy_temp.desktop"

# 1. Comprobar si el archivo .desktop existe
if [ ! -f "$FILE" ]; then
    echo "❌ Error: No se encuentra el archivo $FILE en esta carpeta."
    exit 1
fi

# 2. Ajustar la ruta del icono dinámicamente
# Reemplaza 'USUARIO' por el nombre del usuario actual (ej. kali)
echo "🔧 Ajustando rutas para el usuario: $USER..."
sed "s/USUARIO/$USER/g" "$FILE" > "$TEMP_FILE"

# 3. Copiar el archivo procesado a la ruta de aplicaciones de Linux
# Usamos el archivo temporal que ya tiene la ruta corregida
sudo cp "$TEMP_FILE" /usr/share/applications/autopsy.desktop

# 4. Dar permisos de lectura para que el sistema lo reconozca
sudo chmod 644 /usr/share/applications/autopsy.desktop

# 5. Limpiar el archivo temporal
rm "$TEMP_FILE"

echo "-------------------------------------------------------"
echo "✅ ¡Instalación completada con éxito!"
echo "🔎 Ya puedes buscar 'Autopsy' en tu menú de aplicaciones."
echo "-------------------------------------------------------"
