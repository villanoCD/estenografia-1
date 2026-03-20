
#!/bin/bash

amarillo_luminoso='\033[1;33m'
sin_color='\033[0m'

contador=0

# Crear la carpeta solo si no existe
mkdir -p imagen_con_mensaje

# Iterar sobre archivos (mejor que usar ls)
for variable in *
do
    # 1. Error corregido: Uso de $() para ejecutar el comando file
    tipo=$(file -bi "$variable")

    # Validar si el archivo es una imagen
    if [[ $tipo == image/* ]]
    then
        contador=$((contador+1))
        # 2. Nota: steghide requiere que el archivo original exista
        steghide embed -ef secreto.txt -cf "$variable" -sf imagen_con_secreto"$contador".jpeg -p '123123'
    fi # 3. Error corregido: Cierre correcto del if
done

# Mover resultados
mv imagen_con_secreto* imagen_con_mensaje/ 2>/dev/null

echo -e "${amarillo_luminoso}Se ha creado una carpeta llamada imagen_con_mensaje${sin_color}"
echo -e "${amarillo_luminoso}La contraseña para extraer es: 123123${sin_color}"
