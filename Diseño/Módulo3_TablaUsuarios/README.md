# Endpoints Tabla Usuarios

# Ver todos los registros de la tabla


|         No       |Property                    |Value                      |
|----------------|-------------------------------|-------
1|Description|endpoint para ver los registros de la tabla|
|2      |Method            |Get    |
|3|URI    |http://8000/USUARIOS|
|4|Query|  id_usuario
|5|Data | N/A
6|Estatus code|202
7|Response type|json
8|Response|{"mensaje": "id_usuario" "1"
"nombre" : "nombre1",
"apellido1" : "apellido1",
"apellido2" : "apellido2",
"correo" : "persona1@email.com",
"folio": "#####"}
{"id_usuario" "2"
"nombre" : "nombre2",
"apellido1" : "apellido1",
"apellido2" : "apellido1",
"correo" : "persona2@email.com",
"folio": "####"}
9|Estatus code| 400|
10|Response|{"mensaje":"Error no hay registros"}


|         No       |Property                    |Value                      |
|----------------|-------------------------------|-------
1|Description|endpoint para insertar un usuario |
|2      |Method            |Post           |
|3|URI    |http://8000/USUARIOS||
|4|Query|N/A
|5|Data |{"id_usuario"
"nombre" : "varchar",
"apellido1" : "varchar",
"apellido2" : "varchar",
"correo" : "varchar",
"contraseña" : "varchar",
"folio": "string"}
6|Estatus code|202
7|Response type|json
8|Response|{"mensaje": "Usario registrado correctamente"}
9|Estatus code| 400|
10|Response|{"mensaje": "Error al registrar el usuario"}
# Consultar un usuario


|         No       |Property                    |Value                      |
|----------------|-------------------------------|-------
1|Description|endpoint para consultar un usuario |
|2      |Method            |Get           |
|3|URI    |http://8000/USUARIOS{id_usuario}||
|4|Query|  id_usuario
|5|Data |{"id_usuario"
"nombre" : "varchar",
"apellido1" : "varchar",
"apellido2" : "varchar",
"correo" : "varchar",
"folio": "string"}
6|Estatus code|202
7|Response type|json
8|Response|{"mensaje": "nombre" : "nombre1",
"apellido1" : "apellido1",
"apellido2" : "apellido2",
"correo" : "nombre@email.com"
"folio": "####"}
9|Estatus code| 400|
10|Response|{"mensaje":"Error usuario no encontrado"}

# Actualizar los datos de un usuario


|         No       |Property                    |Value                      |
|----------------|-------------------------------|-------
1|Description|endpoint para actualizar los datos de un usuario|
|2      |Method            |Put          |
|3|URI    |http://8000/USUARIOS{id_usuario}||
|4|Query|  id_usuario
|5|Data |{"nombre" : "varchar",
"apellido1" : "varchar",
"apellido2" : "varchar",
"correo" : "varchar"}
6|Estatus code|202
7|Response|{"mensaje": "datos actualizados"}
9|Estatus code| 400|
10|Response|{"mensaje":"Error al actualizar datos"}

# Eliminar un usuario

|         No       |Property                    |Value                      |
|----------------|-------------------------------|-------
1|Description|endpoint para borrar un usuario|
|2      |Method            |Delete      |
|3|URI    |http://8000/USUARIOS{id_usuario}||
|4|Query|  id_usuario
|5|Data | N/A
6|Estatus code|202
7|Response type|json
8|Response|{"mensaje": " usuario eliminado correctamente"}
9|Estatus code| 400|
10|Response|{"mensaje":"Error  al eliminar el usuario"}
11|curl| -X {-H http://8000/USUARIOS{id_usuario}

