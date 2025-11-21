#Proyecto 3
SELECT
	series.titulo AS 'titulo_de_la_serie',
    series.año_lanzamiento AS 'año_de_lanzamiento',
    series.genero AS 'género',
    AVG(episodios.rating_imdb) AS 'rating_promedio_imdb'
FROM
	series
JOIN
	episodios ON series.serie_id = episodios.serie_id
WHERE
	series.genero IN (SELECT genero FROM (
					  SELECT genero, COUNT(*) AS cantidad_de_series
                      FROM series
                      GROUP BY genero
                      ORDER BY cantidad_de_series DESC
                      LIMIT 3) AS top_3)
GROUP BY 
	series.serie_id
ORDER BY
	rating_promedio_imdb DESC;
    