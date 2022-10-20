#Librerias
from fastapi import FastAPI 
import sqlite3
from typing import List 
from pydantic import BaseModel
from fastapi import HTTPException,status
from fastapi.responses import JSONResponse
#-------------------------------------------------------------------------------------
#clases
class Mensaje(BaseModel):
    mensaje:str

class Oficial(BaseModel):
    id_oficial : int
    nombre : str
    apellido_paterno : str
    apellido_materno : str
    cargo_grado : str
    abscripcion : str
    num_patrulla : str
    passw : str

class OficialIN(BaseModel):
    nombre : str
    apellido_paterno : str
    apellido_materno : str
    cargo_grado : str
    abscripcion : str
    num_patrulla : str
    passw : str

#-------------------------------------------------------------------------------------------
#

description = """
    #Contactos API REST
    API de Tabla Oficiales
    """
app = FastAPI (
    title="API REST Oficiales",
    description = description,
    version = "0.1",
    terms_of_service="http://example.com/terms",
    contact  = {
        "name": "pilarlm",
        "url" : "http://github.com/1720110203",
        "email": "1720110203@utectulancingo.edu.mx",
    },
    license_info = {
        "name": "Apache 2.0",
        "url" : "http://www.apache.org/licenses/LICENSE-2.0.html",
    },
)

#-------------------------------------------------------------------------------------+
#Metodo bienvenida
@app.get (
    "/",
    response_model = Mensaje,
    status_code = status.HTTP_202_ACCEPTED,
    summary = "Endpoint principal",
    description = "Regresa mensaje de bienvenida",
)
async def get_root():
    response = {"mensaje" : "Tabla Oficiales Version 0.1"}
    return response

#------------------------------------------------------
#METODO  PARA CONSULTAR TODOS LOS DATOS

@app.get (
    "/oficiales/", #inicia
    response_model = List [Oficial], #lista
    status_code = status.HTTP_202_ACCEPTED,
    summary = "Lista de contactos",
    description = "Endpoint que regresa un array con todos los oficiales"
)

async def get_contactos():
    try:
        with sqlite3.connect("SQL/ayudaV.db") as connection: #conecta a mi base
            connection.row_factory = sqlite3.Row
            cursor = connection.cursor()
            cursor.execute ("SELECT * FROM oficiales;") #consulta de la lista
            response = cursor.fetchall() #para todos
            return response
    except Exception as error:  #en caso de error
        print (f"error interno : {error.args}")
        raise HTTPException(
            status_code = status.HTTP_400_BAD_REQUEST, #mostrara
            detail="Error al consultar datos" #mostrara
        )

#------------------------------------------------------------------------------------
#METODO PARA CONSULTAR UN SOLO CONTACTO

@app.get (
    "/oficiales/{id_oficial}", #inicia
    response_model = Oficial, #lista
    status_code = status.HTTP_202_ACCEPTED,
    summary = "Oficial",
    description = "Endpoint que registra un oficial"
)  
async def get_contactos(id_oficial : int):
    try:
        with sqlite3.connect("SQL/ayudaV.db") as connection: #conecta a mi base
            connection.row_factory = sqlite3.Row
            cursor = connection.cursor()
            sqlV =  "SELECT * FROM oficiales WHERE id_oficial = ?;" #consulta atraves del id
            values = (id_oficial,)
            cursor.execute (sqlV,values)#se ejecutaran en tupla
            response = cursor.fetchone() #uno solo
            if response == None: #en caso de error al no mostrar el id encontrado
                return JSONResponse (status_code=404, content= {"mensaje":"Sin registro del oficial"}) #Estatus de no encontrado 
            else: 
                return response
    except Exception as error:  #en caso de error
        print (f"error interno : {error.args}")
        raise HTTPException(
            status_code = status.HTTP_400_BAD_REQUEST, #mostrara
            detail="Error al consultar datos" #mostrara
        )

#----------------------------------------------------------------------------
#METODO PARA INSERTAR UN OFICIAL 

