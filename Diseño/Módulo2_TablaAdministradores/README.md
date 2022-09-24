1
# Mostrar todos los registros

|#                |Property                     |Value                         
|----------------|-------------------------------|--------------|
|1|Descripcion de end point |Consultar todos los reguistros            |
|2|Método          |GET            |
|3|URI|[http://localhost.8000/administrador/search?q=*](http://localhost.8000/)|
|4|Queri|N/A|
|5|Data|N/A|
|6|Satus code|202|
|7|Response|[{"mensaje":"Usuarios disponibles",|
|  |        |{"id.admin:1,|           
|  |          |"nombre":"nombre1",|              
|  |          |"passw":"******"
|||},   {|
|  |        |"id.admin:2,|           
|  |          |"nombre":"nombre2",|              
|  |          |"passw":"******"}      ]|
|8|Response type|JSON|
|9|Status code (error)|400|
|10|Response type (error)|JSON|
|11|Response (error)|{"mensaje":"acceso denegado"}|
|12|cURL|-x GET -h [http://localhost.8000/administrador/search?q=*](http://localhost.8000/)

# Mostrar un registro
|#                |Property                     |Value                         
|----------------|-------------------------------|--------------|
|1|Descripcion de end point |Consultar un reguistro             |
|2|Método          |GET           |
|3|URI|[http://localhost.8000/administrador/search?q=1](http://localhost.8000/)|
|4|Queri|N/A|
|5|Data|N/A|
|6|Satus code|202|
|7|Response|[{"mensaje":"Usuarios disponibles",|
|  |        |{"id.admin:1,|           
|  |          |"nombre":"nombre1",|              
|  |          |"passw":"******"}   ] |
|8|Response type|JSON|
|9|Status code (error)|400|
|10|Response type (error)|JSON|
|11|Response (error)|{"mensaje":"acceso denegado"}|
|12|cURL|-x GET -h [http://localhost.8000/administrador/search?q=1](http://localhost.8000/)

# Agregar un registro
|#                |Property                     |Value                         
|----------------|-------------------------------|--------------|
|1|Descripcion de end point |Agregar un reguistro            |
|2|Método          |POST            |
|3|URI|[http://localhost.8000/administrador](http://localhost.8000/)|
|4|Queri|N/A|
|5|Data|{"id.admin:int,|           
|  |          |"nombre":varchar,|              
|  |          |"passw":varchar} |
|6|Satus code|202|
|7|Response|[{"mensaje":"Usuario registrado":|
|8|Response type|JSON|
|9|Status code (error)|400|
|10|Response type (error)|JSON|
|11|Response (error)|{"mensaje":"acceso denegado"}|
|12|cURL| x POST -d {} -h [http://localhost.8000/administrador/]|(http://localhost.8000/oficiales/)
# Actualizar un registro por ID
|#                |Property                     |Value                         
|----------------|-------------------------------|--------------|
|1|Descripcion de end point |Actualizar registro           |
|2|Método          |PUT            |
|3|URI|[[http://localhost.8000/administrador/{id_admin}](http://localhost.8000/)|
|4|Queri|N/A|
|5|Data|{"id.admin:int,|           
|  |          |"nombre":varchar,|              
|  |          |"passw":varchar} |
|6|Satus code|202|
|7|Response|[{"mensaje":"Usuario registrado":|
|8|Response type|JSON|
|9|Status code (error)|400|
|10|Response type (error)|JSON|
|11|Response (error)|{"mensaje":"acceso denegado"}|
|12|cURL|-x PUT -h [http://localhost.8000/administrador/#](http://localhost.8000/)
# Eliminar registro
|#                |Property                     |Value                         
|----------------|-------------------------------|--------------|
|1|Descripcion de end point |Actualizar registro           |
|2|Método          |DELETE            |
|3|URI|[[http://localhost.8000/administrador/{id_admin}](http://localhost.8000/)|
|4|Queri|id.admin|
|5|Data|N/A|           
|6|Satus code|202|
|7|Response|[{"mensaje":"Confirmar accion ":|
|8|Response type|JSON|
|9|Status code (error)|400|
|10|Response type (error)|JSON|
|11|Response (error)|{"mensaje":"acceso denegado"}|
|12|cURL|-x DELETE -h [http://localhost.8000/administrador/#](http://localhost.8000/)

