-- 1. LIMPIEZA: En SQL Server, usamos DROP TABLE IF EXISTS igual que en los otros,
-- pero el orden sigue siendo vital por las llaves foráneas.
DROP TABLE IF EXISTS Actuaciones;
DROP TABLE IF EXISTS Episodios;
DROP TABLE IF EXISTS Actores;
DROP TABLE IF EXISTS Series;
GO -- El comando GO le dice a SQL Server: "Termina esto antes de seguir con lo de abajo"

-- 2. TABLA SERIES
CREATE TABLE Series (
    serie_id INT IDENTITY(1,1) PRIMARY KEY, -- MODIFICACIÓN: IDENTITY(1,1) es el AUTO_INCREMENT de SQL Server.
    titulo NVARCHAR(255) NOT NULL,          -- MODIFICACIÓN: Usamos NVARCHAR para que soporte tildes y caracteres especiales (Unicode).
    descripcion NVARCHAR(MAX),              -- MODIFICACIÓN: NVARCHAR(MAX) es el equivalente al TEXT de MySQL.
    anio_lanzamiento INT,
    genero NVARCHAR(255)
);
GO

-- 3. TABLA EPISODIOS
CREATE TABLE Episodios (
    episodio_id INT IDENTITY(1,1) PRIMARY KEY,
    serie_id INT,
    titulo NVARCHAR(255) NOT NULL,
    duracion INT,
    rating_imdb DECIMAL(3,1),
    temporada INT,
    descripcion NVARCHAR(MAX),
    fecha_estreno DATE,
    -- MODIFICACIÓN: Es buena práctica ponerle nombre a las Constraints en SQL Server
    CONSTRAINT FK_Series_Episodios FOREIGN KEY (serie_id) REFERENCES Series(serie_id)
);
GO

-- 4. TABLA ACTORES
CREATE TABLE Actores (
    actor_id INT IDENTITY(1,1) PRIMARY KEY,
    nombre NVARCHAR(255) NOT NULL,
    fecha_nacimiento DATE
);
GO

-- 5. TABLA ACTUACIONES (Muchos a Muchos)
CREATE TABLE Actuaciones (
    actor_id INT,
    serie_id INT,
    personaje NVARCHAR(255),
    CONSTRAINT FK_Actores_Actuaciones FOREIGN KEY (actor_id) REFERENCES Actores(actor_id),
    CONSTRAINT FK_Series_Actuaciones FOREIGN KEY (serie_id) REFERENCES Series(serie_id),
    PRIMARY KEY (actor_id, serie_id)
);
GO