# Endpoints Tabla Usuarios
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
|3|URI    |http://8000/USUARIOS||
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
