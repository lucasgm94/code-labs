-- Ejercicio de entrevista 2
-- Enunciado:
-- Consulta SQL: Escribe una consulta SQL que seleccione el nombre del departamento y la suma total de horas asignadas a los proyectos por los empleados de ese departamento.
-- Agrupación de Resultados: Los resultados deben estar agrupados por departamento.
-- Orden de Resultados: Los resultados deben estar ordenados por el total de horas de mayor a menor.
-- Recuerda utilizar los siguientes alias para el resultado final: Nombre Departamento y Total Horas Asignadas

SELECT d.nombre AS "Nombre Departamento", SUM(a.horas_asignadas) AS "Total Horas Asignadas"
FROM departamentos d
JOIN empleados e ON d.depto_id = e.depto_id
JOIN asignacionesdeproyectos a ON e.empleado_id = a.empleado_id
GROUP BY d.nombre
ORDER BY SUM(a.horas_asignadas) DESC;