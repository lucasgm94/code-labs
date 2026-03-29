INSERT INTO Departamentos (nombre, ubicacion) VALUES
('Recursos Humanos', 'Edificio 8'),
('Marketing','Edificio Central');

SELECT * FROM Departamentos;

UPDATE departamentos SET ubicacion = 'Edificio M' WHERE nombre = 'Marketing';

#DELETE FROM departamentos WHERE nombre = 'Marketing';
