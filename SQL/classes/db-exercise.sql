-- Creación de la base de datos EmpresaDB
CREATE DATABASE IF NOT EXISTS BibliotecaDB;
USE BibliotecDB;

-- Creación de la tabla Libros
CREATE TABLE IF NOT EXISTS Libros (
    id_libro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    id_autor INT,
    año_de_publicacion DATE,
    FOREIGN KEY (id_autor) REFERENCES Autores(id_autor)
);

-- Creación de la tabla Autores
CREATE TABLE IF NOT EXISTS Autores (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    nacionalidad VARCHAR(255) UNIQUE NOT NULL,
    id_libro INT,
    FOREIGN KEY (id_libro) REFERENCES Libros(id_libros)
    ON DELETE SET NULL
);

-- Creación de la tabla Proyectos
CREATE TABLE IF NOT EXISTS Proyectos (
    proyecto_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    fecha_inicio DATE,
    fecha_fin DATE
);

-- Creación de la tabla AsignacionesDeProyectos
CREATE TABLE IF NOT EXISTS AsignacionesDeProyectos (
    asignacion_id INT AUTO_INCREMENT PRIMARY KEY,
    proyecto_id INT,
    empleado_id INT,
    horas_asignadas INT NOT NULL,
    FOREIGN KEY (proyecto_id) REFERENCES Proyectos(proyecto_id),
    FOREIGN KEY (empleado_id) REFERENCES Empleados(empleado_id)
);

CREATE TABLE IF NOT EXISTS LogEmpleados (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    empleado_id INT,
    fecha_registro DATETIME,
    FOREIGN KEY (empleado_id) REFERENCES Empleados(empleado_id)
);