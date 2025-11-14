-- ¿Qué géneros son más prevalentes en la base de datos NetflixDB? 
-- Genera una lista de los distintos géneros y la cantidad de series por cada uno.
SELECT genero, COUNT(genero) -- COUNT (*) -- 
AS total_series FROM series GROUP BY genero ORDER BY total_series DESC;

-- ¿Cuáles son las tres series con mayor rating IMDB y cuántos episodios tienen? 
-- Considera usar un JOIN para combinar la información de las tablas de series y episodios.
SELECT series.titulo AS 'titulo_serie', COUNT(episodios.episodio_id) AS 'cantidad_episodios', AVG(episodios.rating_imdb)
AS 'promedio_imdb'
FROM series INNER JOIN episodios ON series.serie_id = episodios.serie_id GROUP BY series.serie_id
ORDER BY promedio_imdb DESC LIMIT 3;

-- ¿Cuál es la duración total de todos los episodios de la serie "Stranger Things"?
SELECT series.titulo, SUM(episodios.duracion) AS 'total_duracion' FROM series INNER JOIN episodios 
ON series.serie_id = episodios.serie_id
WHERE series.titulo = 'Stranger Things';