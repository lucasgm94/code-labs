-- 1. Insertar la Serie (Usando 'año' con ñ)
INSERT INTO Series (titulo, descripcion, año_lanzamiento, genero)
VALUES ('Stranger Things', 'A group of kids discover supernatural forces.', 2016, 'Sci-Fi');

-- 2. Insertar el Actor
INSERT INTO Actores (nombre, fecha_nacimiento)
VALUES ('Millie Bobby Brown', '2004-02-19');

-- 3. Insertar la Relación
-- (Si es la primera vez que lo corres, los IDs serán 1 y 1)
INSERT INTO Actuaciones (actor_id, serie_id, personaje)
VALUES (1, 1, 'Eleven');

-- 4. Prueba Select
SELECT s.titulo, a.nombre, act.personaje
FROM Series s
JOIN Actuaciones act ON s.serie_id = act.serie_id
JOIN Actores a ON act.actor_id = a.actor_id;