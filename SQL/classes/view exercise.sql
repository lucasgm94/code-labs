CREATE VIEW VistaEmpleadosProyectos AS
SELECT E.nombre AS nombreempleado, E.apellido AS apellidoempleado, P.nombre AS nombreproyecto
FROM Empleados E 
JOIN asignacionesdeproyectos A ON E.empleado_id = A.empleado_id
JOIN proyectos P ON A.proyecto_id = P.proyecto_id;

SELECT * FROM VistaEmpleadosProyectos