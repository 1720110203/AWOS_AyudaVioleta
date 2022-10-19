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

--INSERT INTO oficiales (nombre, apellido_paterno, apellido_materno, cargo_grado, abscripcion, num_patrulla, passw) VALUES 
--("Federico", "Hernandez", "Leyva", "Administrativa", "Subalterno","Politica","2564_Ab", "IHbyg3nj");