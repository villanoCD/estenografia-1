amarillo_luminoso='\033[1;33m'
sin_color='\033[0m'

archivo=$(ls)
contador=0

mkdir imagen_con_mensaje

for variable in $archivo
do
 tipo=(file -bi "$variable")
 if [[ $tipo == image/* ]]
 then
 contador=$((contador+1))
 steghide embed -ef secreto.txt -cf "$variable" -sf imagen_con_secreto"$contador".jpeg -p '123123'
if
done

mv imagen_con_secreto* imagen_con_mensaje/

echo -e "${amarillo_luminoso}Se ha creado una carpeta llamada imagen_con_mensaje donde se guardara todas las imagenes${sin_color}"
echo -e "${amarillo_luminoso}la contrasena para extraer el archivo de cada una de las imagenes es 123123${sin_color}"

