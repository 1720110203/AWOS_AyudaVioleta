CREATE TABLE administradores(
    id_administrador INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre_u varchar (125),
    nick_admin varchar (32),
    passw varchar(32)
);

CREATE TABLE denuncia_oficial (
   id_denuncia int(11) NOT NULL,
   id_oficial int(11)  references oficiales not NULL,
   fecha date DEFAULT NULL,
   hora time DEFAULT NULL,
   datos_reserv varchar(2) NOT NULL,
   nombre varchar(150) NOT NULL,
   apellido_paterno varchar(150) NOT NULL,
   apellido_materno varchar(150) DEFAULT NULL,
   calidad varchar(150) NOT NULL,
   nacionalidad varchar(150) NOT NULL,
   genero varchar(50) NOT NULL,
   edad varchar(3) NOT NULL CHECK (`edad` >= 0 and `edad` <= 130),
   ine varchar(23) NOT NULL,
   num_telefono varchar(10) NOT NULL,
   correo varchar(150) NOT NULL,
   calle varchar(150) NOT NULL,
   colonia varchar(150) NOT NULL,
   num_exterior varchar(3) DEFAULT NULL,
   num_interior varchar(3) DEFAULT NULL,
   cp  varchar(6) DEFAULT NULL,
   municipio varchar(32) NOT NULL,
   entidad_federativa varchar(150) NOT NULL,
   referencias varchar(600) NOT NULL,
   relato_de_los_echos varchar(300) NOT NULL,
   traslado varchar(2) NOT NULL,
   lugar_t varchar(50) DEFAULT NULL,
   fecha_creacion date DEFAULT current_timestamp(),
   estado varchar(50) DEFAULT NULL
) ;

CREATE TABLE oficiales (
    id_oficial INTEGER PRIMARY KEY AUTOINCREMENT,
    nombre varchar (30) NOT NULL,
    apellido_paterno varchar (30) NOT NULL,
    apellido_materno varchar (30) NOT NULL,
    cargo_grado varchar (50) ,
    abscripcion varchar (50) NOT NULL,
    num_patrulla varchar (30) NOT NULL,
    passw varchar (30)NOT NULL  

);
CREATE TABLE usuarios (
  id_usuario INTEGER PRIMARY KEY AUTOINCREMENT,
  nombre varchar(150) NOT NULL,
  apellido_1 varchar(150) NOT NULL,
  apellido_2 varchar(150) ,
  folio varchar(150) NOT NULL,
  passw varchar(32) NOT NULL
);


  
