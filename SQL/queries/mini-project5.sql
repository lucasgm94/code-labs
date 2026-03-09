--Proyecto 5
-- Práctica de Stored Procedure
DELIMITER //
CREATE PROCEDURE AgregarDepartamento (IN _nombre VARCHAR (255), IN _ubicacion VARCHAR(255))
BEGIN
	INSERT INTO departamentos(nombre, ubicacion) VALUES (_nombre, _ubicacion);
END //
DELIMITER ; 

--Ejemplos
CALL AgregarDepartamento('Cuentas Corrientes', 'Edificio L');
CALL AgregarDepartamento('Sistemas', 'Edificio Y');

SELECT * FROM Departamentos;