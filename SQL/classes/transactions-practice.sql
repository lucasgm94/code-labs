BEGIN;
SAVEPOINT PreValidacion; -- Guardado previo antes de agregar las transacciones en caso de error, se puede volver
-- Códigos de insertar valor
INSERT INTO asignacionesdeproyectos (proyecto_id, empleado_id, horas_asignadas) VALUES (5, 1, 10);
INSERT INTO asignacionesdeproyectos (proyecto_id, empleado_id, horas_asignadas) VALUES (5, 2, 10);
-- Imagina que aquí hay más inserciones
-- Aquí iría el código para validar el total de horas
-- Si el total excede, podemos revertir a nuestro SAVEPOINT
ROLLBACK TO PreValidacion;
