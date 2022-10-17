CREATE TABLE oficiales (
    id_oficial INT PRIMARY  KEY AUTOINCREMENT,
    nombre str,
    apellidoPaterno str,
    apellidoMaterno str,
    cargo_grado str,
    abscripcion str,
    num_patrulla str,
    pass str,

);

INSERT INTO nombre, apellidoPaterno, apellidoMaterno, cargo_grado, abscripcion, num_patrulla, pass VALUES 
("Federico", "Hernandez", "Leyva", "Administrativa", "Subalterno","abscripcion")