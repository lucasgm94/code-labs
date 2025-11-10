#Sentencia Select
SELECT * FROM actuaciones;
SELECT titulo, año_lanzamiento FROM series;
SELECT nombre, fecha_nacimiento FROM actores;

#Cláusula DISTINCT
SELECT DISTINCT genero FROM series;
SELECT DISTINCT personaje FROM actuaciones;

#Cláusula ORDER BY
SELECT titulo, duracion FROM episodios ORDER BY duracion DESC;
SELECT titulo, año_lanzamiento FROM  series ORDER BY año_lanzamiento;

#Clásula LIMIT
SELECT * FROM actores LIMIT 10;
SELECT nombre, fecha_nacimiento FROM actores ORDER BY fecha_nacimiento DESC LIMIT 5;

#Cláusula WHERE
SELECT * FROM series WHERE genero = 'Comedia';
SELECT titulo, fecha_estreno FROM episodios WHERE fecha_estreno > '2018-01-01' ORDER BY fecha_estreno DESC;

#Operador de comparación
SELECT * FROM series WHERE año_lanzamiento > 2020;
SELECT * FROM actores WHERE nombre = 'Bryan Cranston';

#Operadores lógicos
SELECT titulo, duracion, rating_imdb FROM episodios WHERE duracion > 60 AND rating_imdb >= 9 ORDER BY rating_imdb DESC;
SELECT titulo, genero, año_lanzamiento FROM series WHERE genero = 'Drama' OR genero = 'Drama histórico';
SELECT titulo, genero FROM series WHERE NOT genero = 'Ciencia ficción';

#Cláusulas NOT IN/IN 
SELECT titulo, rating_imdb FROM episodios WHERE rating_imdb NOT IN ('9','10') ORDER BY rating_imdb DESC;
SELECT titulo, genero FROM series WHERE genero IN ('Ciencia Ficción');

#Cláusula LIKE
SELECT personaje FROM actuaciones WHERE personaje LIKE '%Pablo%';
SELECT personaje FROM actuaciones WHERE personaje NOT LIKE '%Bojack%';

#Funciones de agregados
SELECT SUM(duracion) AS Total_Duracion FROM episodios WHERE serie_id = 10;
SELECT COUNT(*) FROM series;
SELECT MAX(duracion) FROM episodios WHERE serie_id = 8;
SELECT MIN(duracion) FROM episodios WHERE serie_id = 7;
SELECT AVG(duracion) FROM episodios WHERE temporada = 1;

#Cláusula GROUP BY
SELECT serie_id, AVG(rating_imdb) AS promedio_episodios FROM episodios GROUP BY 1;
SELECT temporada, AVG(rating_imdb) AS promedio_temporada FROM episodios WHERE serie_id = 1 GROUP BY 1 ORDER BY promedio_temporada DESC;

#Cláusula HAVING
SELECT temporada, SUM(duracion) AS total_duracion FROM episodios WHERE rating_imdb > 9 GROUP BY temporada HAVING SUM(duracion) ORDER BY total_duracion DESC;
SELECT serie_id, COUNT(episodio_id) AS total_episodios FROM episodios WHERE serie_id IN (2,12) GROUP BY serie_id HAVING COUNT(episodio_id) >= 11