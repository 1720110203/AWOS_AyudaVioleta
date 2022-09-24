# TABLA OFICIALES

## Ver todos los registros de la tabla.

|   NO.| Property                        |Value                                       |
|------|---------------------------------|--------------------------------------------|
| 1    |Descripción Endpoint             |Para consultar un registro de Oficiales     |
| 2    |MÉTODO                           |GET                                         |
| 3    |URI                              |http://localhost.8000/oficiales             |
| 4    |Query                            |N/A                                         |
| 5    |Data                             |N/A                                         |
| 6    |Status code                      |202                                         |
| 7    |response                         |[{"id_oficial ": int},                      |
|      |                                 |        {"nombre" : "cadena"},              |
|      |                                 |      {"apellido1" : "cadena"},             |
|      |                                 |        {"apellido2" : "cadena"},           |
|      |                                 |        {"carga": "cadena"},                |
|      |                                 |        {"abscripcion" : "cadena"},         |
|      |                                 |        {"num_patrulla" : int},             |
|      |                                 |        {"contraseña" : "cadena"}]          |
|      |                                 |[{"id_oficial2 : int},                      |
|      |                                 |        {"nombre" : "cadena"},              |
|      |                                 |      {"apellido1" : "cadena"},             |
|      |                                 |        {"apellido2" : "cadena"},           |
|      |                                 |        {"carga": "cadena"},                |
|      |                                 |        {"abscripcion" : "cadena"},         |
|      |                                 |        {"num_patrulla" : int},             |
|      |                                 |        {"contraseña" : "cadena"}]          |
| 8    |Status code                      |400                                         |
| 9    |response                         |{"mensaje" : "Oficial no existe"}           |
| 10   |response type                    |JSON                                        |
| 11   |CURL                             |-x GET -h http://localhost.8000/oficiales   |


------------------------------------------------------------------------------------------------------------------------

## Consultar un registro.
|   NO.| Property                        |Value                                       |
|------|---------------------------------|--------------------------------------------|
| 1    |Descripción Endpoint             |Para consultar un registro de Oficiales     |
| 2    |MÉTODO                           |GET                                         |
| 3    |URI                              |http://localhost.8000/oficiales/            |
| 4    |Query                            |N/A                                         |
| 5    |Data                             |N/A                                         |
| 6    |Status code                      |202                                         |
| 7    |response                         |[{"id_oficial" : int},                    |
|      |                                 |        {"nombre" : "cadena"},              |
|      |                                 |      {"apellido1" : "cadena"},             |   
|      |                                 |        {"apellido2" : "cadena"},           |
|      |                                 |        {"carga": "cadena"},                |
|      |                                 |        {"abscripcion" : "cadena"},         |
|      |                                 |        {"num_patrulla" : int},             | 
|      |                                 |        {"contraseña" : "cadena"}]          |
| 8    |Status code                      |400                                         |
| 9    |response                         |{"mensaje" : "Oficial no existe"}           |
| 10   |response type                    |JSON                                        |
| 11   |CURL                             |-x GET -h http://localhost.8000/oficiales/10|


----------------------------------------------------------------------------------------------
## Agregar un nuevo registro.


|   NO.| Property                        |Value                                           |
|------|---------------------------------|------------------------------------------------|
| 1    |Descripción Endpoint             |Para un nuevo registro en Oficiales             |
| 2    |MÉTODO                           |POST                                            |
| 3    |URI                              |http://localhost.8000/oficiales/                |
| 4    |Query                            |N/A                                             |
| 5    |Data                             |{"id_oficial" : int,                            |
|      |                                 |    "nombre" : "cadena",                        |
|      |                                 |    "apellido1" : "cadena",                     |    
|      |                                 |    "apellido2" : "cadena",                     |
|      |                                 |    "carga": "cadena",                          |
|      |                                 |    "abscripcion" : "cadena",                   |
|      |                                 |    "num_patrulla" : int,                       |
|      |                                 |    "contraseña" : "cadena"}                    |
| 6    |Status code                      |202                                             |
| 7    |response                         |{"mensaje" : "Oficial insertado correctamente"} |
| 8    |Status code                      |400                                             |
| 9    |response                         |{"mensaje" : "Error al ingresar datos"}         |
| 10   |response type                    |JSON                                            |
| 11   |CURL                             |x POST -d {} -h http://localhost.8000/oficiales/|

----------------------------------------------------------------------------------------------
## Actualizar un registro por ID.

|   NO.| Property                        |Value                                           |
|------|---------------------------------|------------------------------------------------|
| 1    |Descripción Endpoint             |Para actualizar datos de Oficiales              |
| 2    |MÉTODO                           |PUT                                             |
| 3    |URI                              |http://localhost.8000/oficiales/{id_oficial}    |
| 4    |Path Params                      |id_oficial                                     |
| 5    |Data                             |{"id_oficial" : int},                         |
|      |                                 |   {"nombre" : "cadena"},                       |
|      |                                 |   {"apellido1" : "cadena"}                     |    
|      |                                 |   {"apellido2" : "cadena"},                    |
|      |                                 |   {"carga": "cadena"},                         |
|      |                                 |   {"abscripcion" : "cadena"},                  |
|      |                                 |   {"num_patrulla" : int},                      |
|      |                                 |   {"contraseña" : "cadena"}                    |
| 6    |Status code                      |202                                             |
| 7    |response                         |{"mensaje": "Oficial actualizado correctamente"}|
| 8    |Status code                      |400                                             |
| 9    |response                         |{"mensaje" : "Error al actualizar datos "}      |
| 10   |response type                    |JSON                                            |
| 11   |CURL                             |-x PUT -h http://localhost.8000/oficiales/11    |

----------------------------------------------------------------------------------------------------------
## Borrar un registro por ID.

|   NO.| Property                        |Value                                             |
|------|---------------------------------|--------------------------------------------      |
| 1    |Descripción Endpoint             |Para eliminar datos de Oficiales                  |
| 2    |MÉTODO                           |DELETE                                            |
| 3    |URI                              |http://localhost.8000/oficiales/{id_oficial}      |
| 4    |Path Params                      |id_oficial                                        |
| 5    |Data                             |N/A                                               |
| 6    |Status code                      |202                                               |
| 7    |response                         |{"mensaje":"Oficial eliminado correctamente"}     |
| 8    |Status code                      |400                                               |
| 9    |response                         |{"mensaje" : "Error al eliminar dato del Oficial"}|
| 10   |response type                    |JSON                                              |
| 11   |CURL                             |-x Eliminar -h http://localhost.8000/oficiales/1  |
