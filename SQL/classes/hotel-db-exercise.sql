-- Insertar datos de prueba
INSERT INTO Clientes (nombre, contacto) VALUES ('Lucas Martinez', 'lucasm@email.com');
INSERT INTO Habitaciones (tipo, capacidad) VALUES ('Suite', 2);

-- Consulta para insertar una reserva
INSERT INTO Reservas (cliente_id, fecha_reserva, numero_personas) VALUES (1,'2023-04-01', 2);

-- Consulta para buscar disponibilidad de habitaciones
SELECT * FROM Habitaciones WHERE Capacidad >= 2;