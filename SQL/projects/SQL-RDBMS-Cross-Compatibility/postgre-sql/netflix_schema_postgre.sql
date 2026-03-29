DROP TABLE IF EXISTS Actuaciones;
DROP TABLE IF EXISTS Episodios;
DROP TABLE IF EXISTS Actores;
DROP TABLE IF EXISTS Series;

-- Creación de la tabla Series
CREATE TABLE Series (
    serie_id SERIAL PRIMARY KEY, -- MODIFICACIÓN: En Postgres usamos SERIAL (genera una secuencia interna) en lugar de AUTO_INCREMENT.
    titulo VARCHAR(255) NOT NULL,
    descripcion TEXT,
    anio_lanzamiento INT,        -- MODIFICACIÓN: Cambié la 'ñ' por 'anio' para evitar errores de codificación (UTF-8).
    genero VARCHAR(255)
);

-- Creación de la tabla Episodios
CREATE TABLE Episodios (
    episodio_id SERIAL PRIMARY KEY, -- MODIFICACIÓN: Cambio a SERIAL.
    serie_id INT,                   -- NOTA: Aquí se deja como INT porque es una llave foránea (FK), no debe ser SERIAL.
    titulo VARCHAR(255) NOT NULL,
    duracion INT,
    rating_imdb DECIMAL(3,1),
    temporada INT,
    descripcion TEXT,
    fecha_estreno DATE,
    FOREIGN KEY (serie_id) REFERENCES Series(serie_id)
);

-- Creación de la tabla Actores
CREATE TABLE Actores (
    actor_id SERIAL PRIMARY KEY,    -- MODIFICACIÓN: Cambio a SERIAL.
    nombre VARCHAR(255) NOT NULL,
    fecha_nacimiento DATE
);

-- Creación de la tabla Actuaciones (relación muchos a muchos entre Actores y Series)
CREATE TABLE Actuaciones (
    actor_id INT,                   -- NOTA: Se mantiene INT para referenciar al SERIAL de Actores.
    serie_id INT,                   -- NOTA: Se mantiene INT para referenciar al SERIAL de Series.
    personaje VARCHAR(255),
    FOREIGN KEY (actor_id) REFERENCES Actores(actor_id),
    FOREIGN KEY (serie_id) REFERENCES Series(serie_id),
    PRIMARY KEY (actor_id, serie_id) -- CLAVE COMPUESTA: Se mantiene igual que en MySQL (estándar ANSI SQL).
);