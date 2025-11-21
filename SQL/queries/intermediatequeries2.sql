#INNER JOIN
SELECT * FROM series INNER JOIN actuaciones ON series.serie_id = actuaciones.serie_id;

SELECT titulo, personaje FROM series INNER JOIN actuaciones ON series.serie_id = actuaciones.serie_id;

SELECT series.titulo, actuaciones.personaje FROM series INNER JOIN actuaciones ON series.serie_id = actuaciones.serie_id;

SELECT s.titulo, a.personaje FROM series AS S INNER JOIN actuaciones AS a ON s.serie_id = a.serie_id WHERE s.titulo = 'Breaking Bad';

SELECT series.titulo AS titulo_serie, episodios.titulo AS titulo_episodio, episodios.duracion FROM series
INNER JOIN episodios ON series.serie_id = episodios.serie_id WHERE series.titulo = 'Stranger Things' ORDER BY duracion DESC;

#LEFT JOIN
SELECT series.titulo AS 'titulo_serie', episodios.titulo AS 'titulo_episodio', episodios.duracion AS 'duracion' FROM series
LEFT JOIN episodios ON series.serie_id = episodios.serie_id ORDER BY titulo_serie;

SELECT series.titulo AS 'Título de la Serie', episodios.titulo AS 'Título del Episodio',
episodios.rating_imdb AS 'Rating IMDB' FROM series LEFT JOIN episodios
ON series.serie_id = episodios.serie_id WHERE series.titulo = 'Stranger Things' ORDER BY episodios.rating_imdb DESC;

SELECT actores.nombre AS 'nombre_actor', actores.fecha_nacimiento AS 'fecha_nacimiento', actuaciones.personaje AS 'personaje' FROM actores
LEFT JOIN actuaciones ON actores.actor_id = actuaciones.actor_id ORDER BY actores.nombre;

#RIGHT JOIN
SELECT series.titulo AS 'titulo_de_la_serie', episodios.titulo AS 'titulo_del_episodio' FROM series
RIGHT JOIN episodios ON episodios.serie_id = series.serie_id ORDER BY series.titulo;

SELECT series.titulo AS 'Título de la Serie', episodios.titulo AS 'Título del Episodio',
episodios.duracion AS 'Duración' FROM episodios RIGHT JOIN series ON 
series.serie_id = episodios.serie_id
WHERE episodios.duracion > 30 ORDER BY series.titulo;

#UNION ALL
SELECT * FROM series WHERE genero = 'Comedia'
UNION ALL
SELECT * FROM series WHERE genero = 'Fantasía';

#UNION 
SELECT titulo, genero FROM series WHERE genero = 'Comedia'
UNION
SELECT titulo, genero FROM series WHERE genero = 'Fantansía';

SELECT titulo, descripcion, duracion, rating_imdb FROM episodios WHERE duracion >20
UNION
SELECT titulo, descripcion, duracion, rating_imdb FROM episodios WHERE rating_imdb >9 ORDER BY rating_imdb DESC;
