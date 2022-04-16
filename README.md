# RetoTecnicoSofka
Saludos.
Primeramente en el repositorio se encuentra la carpeta src en donde está todo el código fuente. Cabe aclarar que el programa está hecho para ser ejecutado por interfaz de consola.
Segundo, en el repo se encuentra el script sql para ser ejecutado para la creación de la base de datos. Como algo adicional a esto, también se encuentra montado aquí el modelado de datos de la base de datos nombrado como concurso_preguntas.png.

### Pasos previos a la ejecución

1. Tener instalado xampp: La base de datos está montada en mysql (editado en el gestor de base de datos MySQL Workbench, utilizar el de su preferencia, puede ser el propio PhpMyAdmin o cualquiera que soporte MySql) y por lo tanto hay que habilitar el puerto para la comunicación con esta base de datos desde este servidor.
2. Crear la base de datos: ejecutar el archivo scriptConcurso.sql adjunto en el repositorio en el gestor de base de datos utilizado.
3. configurar credenciales de la base de datos y servidor: Dentro de la carpeta src, se encuentra el archivo ConexionBD.py, en él debe cambiar la variable 'user' por el usuario que usted tenga configurado en el gestor de base de datos, al igual que 'password' si es que posee una clave, sino es el caso, entonces dejar ese campo en blanco('')
4. Por si existen errores: La versión que yo utilizo de xampp es la 7.4.16 y de Workbench la 8.0.23. La versión de python utilizada es la 3.9.5

### Pasos para la ejecución

1. Tener habilitado el puerto para MySql (por defecto es el 3306)
2. abrir el archivo Interfaz.py dentro de la carpeta src o abrir el proyecto completo dentro de su IDE o editor de código de preferencia y luego ejecutar el archivo Interfaz.py para que empiece a correr por consola.

