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
8|Response|{"mensaje": "Esuario registrado"}
9|Estatus code| 400|
10|Response|{"mensaje": "Error al registrar el usuario"}
