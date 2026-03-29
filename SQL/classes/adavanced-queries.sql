#CTE common table expressions
WITH ListaEpisodios AS (
SELECT serie_id, episodio_id, titulo FROM episodios
), #CTE temporal

ListaSeries AS (
SELECT serie_id, descripcion FROM series
) #CTE temporal

SELECT * FROM ListaEpisodios
LEFT JOIN ListaSeries
ON ListaEpisodios.serie_id = ListaSeries.serie_id;

WITH primerepisodio AS (
SELECT serie_id, MIN(fecha_estreno) AS fecha_primer_episodio
FROM episodios
GROUP BY serie_id #para agrupar correctamente los resultados
)

SELECT s.titulo AS 'Título de la Serie', pe.fecha_primer_episodio AS 'Fecha del Primer Episodio'
FROM series s
JOIN primerepisodio pe
ON s.serie_id = pe.serie_id
ORDER BY pe.fecha_primer_episodio ASC;

WITH totalseries AS(
SELECT año_lanzamiento, COUNT(*) AS total_series
FROM series WHERE genero = 'Ciencia ficción' GROUP BY año_lanzamiento)

SELECT * FROM totalseries ORDER BY año_lanzamiento;

#Funciones de Ventana ROW NUMBRE
WITH ordenseries AS (
SELECT titulo, año_lanzamiento, 
ROW_NUMBER () OVER (ORDER BY año_lanzamiento DESC)
AS orden_lanzamiento FROM series)

SELECT * FROM ordenseries WHERE orden_lanzamiento IN (1,2,3);

#PARTITION BY
SELECT
	titulo,
    genero,
    año_lanzamiento,
    ROW_NUMBER() OVER (PARTITION BY genero ORDER BY año_lanzamiento DESC) as ranking_por_genero
    FROM series;

SELECT
    temporada,
    titulo,
    fecha_estreno,
    ROW_NUMBER () OVER (PARTITION BY temporada ORDER BY fecha_estreno DESC) AS ranking_temporada
    FROM episodios;
    
SELECT
    temporada,
    titulo,
    rating_imdb,
    ROW_NUMBER () OVER (PARTITION BY temporada ORDER BY rating_imdb DESC) AS 'Ranking IMDb'
    FROM episodios
    WHERE serie_id = 2 
    ORDER BY temporada, 'Ranking IMDb';

#RANK
SELECT
	titulo,
    rating_imdb,
    RANK () OVER(ORDER BY rating_imdb) AS ranking_imdb
FROM episodios;

SELECT
    titulo,
    rating_imdb,
    RANK () OVER (ORDER BY rating_imdb DESC) AS ranking_imdb
    FROM episodios;

#DENSE_RANK
SELECT 
	titulo,
    rating_imdb,
    RANK() OVER (ORDER BY rating_imdb DESC) AS rank_imdb,
    DENSE_RANK() OVER (ORDER BY rating_imdb DESC) AS dense_rank_imdb
    FROM episodios;
    
SELECT
	titulo,
    rating_imdb,
    DENSE_RANK() OVER(ORDER BY rating_imdb DESC) AS ranking_imdb
    FROM episodios;
    
SELECT
    titulo,
    duracion,
    DENSE_RANK() OVER(ORDER BY duracion DESC) AS ranking_por_duracion
    FROM episodios;
    
#REGEXP
	SELECT titulo, descripcion
    FROM series
    WHERE descripcion REGEXP '(?i)más';
    
    SELECT titulo, descripcion
    FROM series
    WHERE descripcion REGEXP '(?i)un';