-- Trigger
DELIMITER $$

CREATE TRIGGER RegistraNuevoEmpleado
AFTER INSERT ON empleados
FOR EACH ROW
BEGIN
	INSERT INTO logempleados (empleado_id, fecha_registro) VALUES (NEW.empleado_id, NOW());
END$$

DELIMITER ;

-- DROP TRIGGER RegistraNuevoEmpleado;

INSERT INTO empleados (nombre, apellido, email) VALUES ('Lucas', 'Martinez', 'lucasm@email.com');
INSERT INTO empleados (nombre, apellido, email) VALUES ('Gonzalo', 'Montenegro', 'gonzalom@email.com');

SELECT * FROM logempleados;

SHOW Tables;