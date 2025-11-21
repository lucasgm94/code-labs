#SUBQUERIES
SELECT * FROM episodios
WHERE serie_id = (SELECT serie_id FROM series WHERE titulo = 'Breaking Bad') ORDER BY episodio_id;

SELECT titulo FROM series
WHERE serie_id IN (SELECT serie_id FROM episodios GROUP BY serie_id HAVING AVG(rating_imdb)>9);

#CONDICIONAL IF
SELECT titulo, rating_imdb, IF (rating_imdb >= 7, 'Alto', 'Bajo') AS 'categoria_rating' FROM episodios;

SELECT nombre, YEAR(fecha_nacimiento) AS 'año_nacimiento',
IF (YEAR(fecha_nacimiento)>1994,'Joven','Viejo') AS 'categoria_actores' FROM actores ORDER BY año_nacimiento DESC;

#CONDICIONAL CASE
SELECT
	titulo,
    año_lanzamiento,
    CASE
		WHEN año_lanzamiento >= 2020 THEN 'nueva'
        WHEN año_lanzamiento BETWEEN 2012 AND 2019 THEN 'clásica'
        ELSE 'antigua'
        END AS categoria_serie
	FROM series;
    
SELECT titulo,
    CASE 
        WHEN año_lanzamiento < 2010 THEN 'Antigua'
        WHEN año_lanzamiento >= 2010 THEN 'Reciente'
        END AS 'Antigüedad'
    FROM series;
    
SELECT titulo,
    CASE 
    WHEN genero = 'Drama' THEN 'Dramático'
    WHEN genero = 'Comedia' THEN 'Divertido'
    ELSE 'Otro'
    END AS 'Categoría de Género'
    FROM series;

#FUNCIÓN CAST
DESCRIBE series;

DESCRIBE actores;

SELECT * FROM episodios
WHERE CAST(fecha_estreno AS DATE) > '2010-01-01' ORDER BY fecha_estreno;

#FUNCIONES DE FECHA Y HORA
SELECT fecha_estreno, YEAR(fecha_estreno) AS 'Año', MONTH(fecha_estreno) AS 'Mes', DAY(fecha_estreno) AS 'Día' FROM episodios;

SELECT fecha_estreno,
DATE_ADD(fecha_estreno, INTERVAL -30 DAY)
FROM episodios ORDER BY fecha_estreno;

SELECT titulo, descripcion, DATEDIFF(CURDATE(), fecha_estreno) AS dias_de_estreno 
FROM episodios ORDER BY dias_de_estreno DESC LIMIT 10;

#MANIPULACIÓN DE CADENAS DE TEXTO
SELECT UPPER(titulo) AS titulo_mayusculas FROM series;

SELECT LOWER(titulo) AS titulo_minusculas FROM series;

SELECT CONCAT(titulo, ' (', año_lanzamiento, ')') AS titulo_año FROM series;

SELECT titulo, SUBSTRING(titulo, 1, 5) AS extracto_titulo FROM episodios;

SELECT titulo, LENGTH(titulo) AS longitud_titulo FROM series;

SELECT 
	titulo,
    LEFT(titulo, 3) AS inicio_titulo,
    RIGHT(titulo, 3) AS fin_titulo
FROM series;

#FUNCIONES MATEMÁTICAS
SELECT titulo, duracion/60.0 AS hora_completa, ROUND(duracion/60.0,0) AS horas_completa_redondeada FROM episodios;

SELECT titulo, duracion, CEILING(duracion/60.0) AS horas_completas FROM episodios; -- redondea para arriba

SELECT titulo, duracion, FLOOR(duracion/60.0) AS horas_completas FROM episodios; -- redondea para abajo