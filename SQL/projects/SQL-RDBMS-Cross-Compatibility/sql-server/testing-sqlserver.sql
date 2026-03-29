-- 1. Insertar la Serie
-- La 'N' antes del string asegura la compatibilidad con NVARCHAR
INSERT INTO Series (titulo, descripcion, anio_lanzamiento, genero)
VALUES (N'Stranger Things', N'A group of kids discover supernatural forces.', 2016, N'Sci-Fi');
GO

-- 2. Insertar el Actor
INSERT INTO Actores (nombre, fecha_nacimiento)
VALUES (N'Millie Bobby Brown', '2004-02-19');
GO

-- 3. Insertar la Relación
-- Al igual que en los otros, si es el primer registro, los IDs son 1 y 1
INSERT INTO Actuaciones (actor_id, serie_id, personaje)
VALUES (1, 1, N'Eleven');
GO

--4. Prueba SELECT
SELECT 
    s.titulo AS [Serie], 
    a.nombre AS [Actor], 
    act.personaje AS [Papel]
FROM Series s
INNER JOIN Actuaciones act ON s.serie_id = act.serie_id
INNER JOIN Actores a ON act.actor_id = a.actor_id;