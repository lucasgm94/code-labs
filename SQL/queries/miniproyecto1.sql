-- Pregunta 1
-- ¿Quien es el actor o actriz que ha participado en la mayor cantidad de series?
SELECT actor_id, COUNT(serie_id) AS cantidad_de_actuaciones FROM actuaciones GROUP BY actor_id HAVING COUNT(serie_id) > 1;

-- Pregunta 2
-- ¿Cual es la serie con mejor rating promedio segun imdb?
SELECT serie_id, AVG(rating_imdb) AS total_promedio FROM episodios GROUP BY serie_id ORDER BY total_promedio DESC LIMIT 5;

-- Pregunta 3
-- ¿Cual es el episodio con la duración más larga?
SELECT * FROM episodios ORDER BY duracion DESC LIMIT 5;