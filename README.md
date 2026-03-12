📑 Guía de Gestión: Carpeta Cifrada
Este directorio está protegido mediante EFS (Encrypting File System) de Windows a través del comando cipher.

🔐 Comandos de Mantenimiento
Si necesitas realizar cambios en el cifrado de esta carpeta, utiliza los siguientes comandos en el CMD:

1. Verificar el estado actual
Para ver qué archivos están cifrados (E) y cuáles no (U):

DOS
cipher
2. Cifrar nuevos archivos
Si agregas archivos manualmente y no se cifran automáticamente, fuerza el cifrado de la carpeta y subcarpetas:

DOS
cipher /e /s:.
3. Descifrar la carpeta (Quitar protección)
Si decides que ya no necesitas el cifrado en esta ubicación:

DOS
cipher /d /s:.
⚠️ ADVERTENCIA DE SEGURIDAD
El cifrado está vinculado a tu cuenta de usuario de Windows. Si reinstalas el sistema operativo o pierdes el acceso a tu usuario, perderás el acceso a estos archivos para siempre.

🔑 Respaldo Obligatorio
Para evitar la pérdida de datos, asegúrate de haber exportado tu certificado de cifrado:

Ejecuta: cipher /x backup_llave

Guarda el archivo .pfx generado en una unidad USB externa.

No olvides la contraseña que le asignes al certificado.

¿Cómo crear este archivo rápido desde el CMD?
Si quieres crear este archivo README.md ahora mismo dentro de tu carpeta, puedes ejecutar este comando (estando dentro de cifrado-de-datos):

DOS
echo # Carpeta Cifrada con Cipher > README.md
