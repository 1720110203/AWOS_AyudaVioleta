CREATE TABLE oficiales (
    id_oficial INTEGER PRIMARY KEY AUTOINCREMENT NOTNULL,
    nombre varchar (30) NOTNULL,
    apellido_paterno varchar (30) NOTNULL,
    apellido_materno varchar (30) NOTNULL,
    cargo_grado varchar (50) NOTDEFAULT,
    abscripcion varchar (50) NOTNULL,
    num_patrulla varchar (30) NOTNULL,
    passw varchar (30)NOTNULL,  

);

INSERT INTO oficiales (nombre, apellido_paterno, apellido_materno, cargo_grado, abscripcion, num_patrulla, passw) VALUES 
("Federico", "Hernandez", "Leyva", "Administrativa", "Subalterno","Politica","2564_Ab", "IHbyg3nj");