-- 1. Insertar la Serie (Usando 'anio' como definimos en el CREATE)
INSERT INTO Series (titulo, descripcion, anio_lanzamiento, genero)
VALUES ('Stranger Things', 'A group of kids discover supernatural forces.', 2016, 'Sci-Fi');

-- 2. Insertar el Actor
INSERT INTO Actores (nombre, fecha_nacimiento)
VALUES ('Millie Bobby Brown', '2004-02-19');

-- 3. Insertar la Relación
-- Postgres maneja los IDs automáticos igual que MySQL (empiezan en 1)
INSERT INTO Actuaciones (actor_id, serie_id, personaje)
VALUES (1, 1, 'Eleven');

--4. Prueba SELECT
SELECT 
    s.titulo AS "Serie", 
    a.nombre AS "Actor", 
    act.personaje AS "Papel"
FROM Series s
JOIN Actuaciones act ON s.serie_id = act.serie_id
JOIN Actores a ON act.actor_id = a.actor_id;