-- Insertar roles de usuario
INSERT INTO rol_usuario (nombre_rol) VALUES
('cliente'),
('admin'),
('contabilidad'),
('soporte');


-- Insertar usuarios
INSERT INTO usuarios (nombre, correo, contraseña, id_rol) VALUES
-- Clientes
('Carlos Gómez', 'carlos1@mail.com', 'pass123', 1),
('Ana López', 'ana2@mail.com', 'pass123', 1),
('Pedro Sánchez', 'pedro3@mail.com', 'pass123', 1),
('Lucía Martínez', 'lucia4@mail.com', 'pass123', 1),
('Marta Díaz', 'marta5@mail.com', 'pass123', 1),
('Luis Herrera', 'luis6@mail.com', 'pass123', 1),
('Sofía Torres', 'sofia7@mail.com', 'pass123', 1),
('Andrés Méndez', 'andres8@mail.com', 'pass123', 1),
('Laura García', 'laura9@mail.com', 'pass123', 1),
('Ricardo Pérez', 'ricardo10@mail.com', 'pass123', 1),
('Isabel Castro', 'isabel11@mail.com', 'pass123', 1),
('David Reyes', 'david12@mail.com', 'pass123', 1),
('María Rivas', 'maria13@mail.com', 'pass123', 1),
('Julio Morales', 'julio14@mail.com', 'pass123', 1),
-- Admins
('Admin Uno', 'admin1@mail.com', 'adminpass', 2),
('Admin Dos', 'admin2@mail.com', 'adminpass', 2),
-- Contabilidad
('Contador Uno', 'conta1@mail.com', 'contapass', 3),
('Contador Dos', 'conta2@mail.com', 'contapass', 3),
-- Soporte
('Soporte Uno', 'soporte1@mail.com', 'soportepass', 4),
('Soporte Dos', 'soporte2@mail.com', 'soportepass', 4);


-- Insertar eventos
INSERT INTO eventos (tipo_evento, detalle, fecha) VALUES
('Concierto', 'Concierto de rock nacional', '2025-06-01 20:00:00'),
('Teatro', 'Obra clásica de Shakespeare', '2025-06-05 19:00:00'),
('Stand-up', 'Noche de comedia', '2025-06-10 21:00:00'),
('Conferencia', 'Charla de tecnología e innovación', '2025-06-15 10:00:00'),
('Festival', 'Festival cultural al aire libre', '2025-06-20 12:00:00');

-- Insertar asientos
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('1', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('2', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('3', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('4', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('5', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('6', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('7', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('8', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('9', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('10', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('11', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('12', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('13', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('14', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('15', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('16', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('17', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('18', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('19', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('20', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('21', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('22', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('23', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('24', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('25', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('26', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('27', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('28', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('29', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('30', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('31', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('32', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('33', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('34', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('35', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('36', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('37', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('38', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('39', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('40', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('41', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('42', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('43', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('44', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('45', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('46', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('47', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('48', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('49', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('50', 'A', true, 1);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('1', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('2', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('3', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('4', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('5', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('6', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('7', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('8', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('9', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('10', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('11', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('12', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('13', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('14', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('15', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('16', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('17', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('18', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('19', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('20', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('21', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('22', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('23', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('24', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('25', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('26', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('27', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('28', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('29', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('30', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('31', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('32', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('33', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('34', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('35', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('36', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('37', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('38', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('39', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('40', 'A', true, 2);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('1', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('2', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('3', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('4', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('5', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('6', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('7', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('8', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('9', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('10', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('11', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('12', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('13', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('14', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('15', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('16', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('17', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('18', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('19', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('20', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('21', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('22', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('23', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('24', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('25', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('26', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('27', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('28', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('29', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('30', 'A', true, 3);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('1', 'A', true, 4);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('2', 'A', true, 4);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('3', 'A', true, 4);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('4', 'A', true, 4);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('5', 'A', true, 4);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('6', 'A', true, 4);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('7', 'A', true, 4);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('8', 'A', true, 4);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('9', 'A', true, 4);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('10', 'A', true, 4);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('11', 'A', true, 4);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('12', 'A', true, 4);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('13', 'A', true, 4);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('14', 'A', true, 4);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('15', 'A', true, 4);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('16', 'A', true, 4);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('17', 'A', true, 4);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('18', 'A', true, 4);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('19', 'A', true, 4);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('20', 'A', true, 4);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('1', 'A', true, 5);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('2', 'A', true, 5);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('3', 'A', true, 5);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('4', 'A', true, 5);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('5', 'A', true, 5);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('6', 'A', true, 5);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('7', 'A', true, 5);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('8', 'A', true, 5);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('9', 'A', true, 5);
INSERT INTO asientos (numero_asiento, fila, disponible, id_evento) VALUES ('10', 'A', true, 5);


-- Insertar reservas
INSERT INTO reserva_maestro (id_usuario, id_evento, fecha_reserva) VALUES (14, 1, '2025-05-15 17:00:00');
INSERT INTO reserva_maestro (id_usuario, id_evento, fecha_reserva) VALUES (1, 1, '2025-05-08 13:00:00');
INSERT INTO reserva_maestro (id_usuario, id_evento, fecha_reserva) VALUES (8, 5, '2025-05-14 13:00:00');
INSERT INTO reserva_maestro (id_usuario, id_evento, fecha_reserva) VALUES (4, 3, '2025-05-10 18:00:00');
INSERT INTO reserva_maestro (id_usuario, id_evento, fecha_reserva) VALUES (3, 4, '2025-05-03 15:00:00');
INSERT INTO reserva_maestro (id_usuario, id_evento, fecha_reserva) VALUES (4, 5, '2025-05-05 19:00:00');
INSERT INTO reserva_maestro (id_usuario, id_evento, fecha_reserva) VALUES (11, 4, '2025-05-31 13:00:00');
INSERT INTO reserva_maestro (id_usuario, id_evento, fecha_reserva) VALUES (12, 2, '2025-05-04 18:00:00');
INSERT INTO reserva_maestro (id_usuario, id_evento, fecha_reserva) VALUES (3, 3, '2025-05-15 12:00:00');
INSERT INTO reserva_maestro (id_usuario, id_evento, fecha_reserva) VALUES (1, 3, '2025-05-23 20:00:00');

-- Insertar detalles de reservas
INSERT INTO reserva_detalle (id_reserva, id_asiento) VALUES (1, (SELECT id_asiento FROM asientos WHERE numero_asiento = '1' AND id_evento = 1));
INSERT INTO reserva_detalle (id_reserva, id_asiento) VALUES (2, (SELECT id_asiento FROM asientos WHERE numero_asiento = '2' AND id_evento = 1));
INSERT INTO reserva_detalle (id_reserva, id_asiento) VALUES (3, (SELECT id_asiento FROM asientos WHERE numero_asiento = '1' AND id_evento = 5));
INSERT INTO reserva_detalle (id_reserva, id_asiento) VALUES (4, (SELECT id_asiento FROM asientos WHERE numero_asiento = '1' AND id_evento = 3));
INSERT INTO reserva_detalle (id_reserva, id_asiento) VALUES (4, (SELECT id_asiento FROM asientos WHERE numero_asiento = '2' AND id_evento = 3));
INSERT INTO reserva_detalle (id_reserva, id_asiento) VALUES (4, (SELECT id_asiento FROM asientos WHERE numero_asiento = '3' AND id_evento = 3));
INSERT INTO reserva_detalle (id_reserva, id_asiento) VALUES (5, (SELECT id_asiento FROM asientos WHERE numero_asiento = '1' AND id_evento = 4));
INSERT INTO reserva_detalle (id_reserva, id_asiento) VALUES (6, (SELECT id_asiento FROM asientos WHERE numero_asiento = '2' AND id_evento = 5));
INSERT INTO reserva_detalle (id_reserva, id_asiento) VALUES (7, (SELECT id_asiento FROM asientos WHERE numero_asiento = '2' AND id_evento = 4));
INSERT INTO reserva_detalle (id_reserva, id_asiento) VALUES (7, (SELECT id_asiento FROM asientos WHERE numero_asiento = '3' AND id_evento = 4));
INSERT INTO reserva_detalle (id_reserva, id_asiento) VALUES (7, (SELECT id_asiento FROM asientos WHERE numero_asiento = '4' AND id_evento = 4));
INSERT INTO reserva_detalle (id_reserva, id_asiento) VALUES (8, (SELECT id_asiento FROM asientos WHERE numero_asiento = '1' AND id_evento = 2));
INSERT INTO reserva_detalle (id_reserva, id_asiento) VALUES (8, (SELECT id_asiento FROM asientos WHERE numero_asiento = '2' AND id_evento = 2));
INSERT INTO reserva_detalle (id_reserva, id_asiento) VALUES (9, (SELECT id_asiento FROM asientos WHERE numero_asiento = '4' AND id_evento = 3));
INSERT INTO reserva_detalle (id_reserva, id_asiento) VALUES (9, (SELECT id_asiento FROM asientos WHERE numero_asiento = '5' AND id_evento = 3));
INSERT INTO reserva_detalle (id_reserva, id_asiento) VALUES (9, (SELECT id_asiento FROM asientos WHERE numero_asiento = '6' AND id_evento = 3));
INSERT INTO reserva_detalle (id_reserva, id_asiento) VALUES (10, (SELECT id_asiento FROM asientos WHERE numero_asiento = '7' AND id_evento = 3));
INSERT INTO reserva_detalle (id_reserva, id_asiento) VALUES (10, (SELECT id_asiento FROM asientos WHERE numero_asiento = '8' AND id_evento = 3));

-- Insertar facturas
INSERT INTO factura_maestro (id_usuario, fecha, total) VALUES (14, '2025-05-15 17:00:00', 100.0);
INSERT INTO factura_maestro (id_usuario, fecha, total) VALUES (1, '2025-05-08 13:00:00', 100.0);
INSERT INTO factura_maestro (id_usuario, fecha, total) VALUES (8, '2025-05-14 13:00:00', 100.0);
INSERT INTO factura_maestro (id_usuario, fecha, total) VALUES (4, '2025-05-10 18:00:00', 300.0);
INSERT INTO factura_maestro (id_usuario, fecha, total) VALUES (3, '2025-05-03 15:00:00', 100.0);
INSERT INTO factura_maestro (id_usuario, fecha, total) VALUES (4, '2025-05-05 19:00:00', 100.0);
INSERT INTO factura_maestro (id_usuario, fecha, total) VALUES (11, '2025-05-31 13:00:00', 300.0);
INSERT INTO factura_maestro (id_usuario, fecha, total) VALUES (12, '2025-05-04 18:00:00', 200.0);
INSERT INTO factura_maestro (id_usuario, fecha, total) VALUES (3, '2025-05-15 12:00:00', 300.0);
INSERT INTO factura_maestro (id_usuario, fecha, total) VALUES (1, '2025-05-23 20:00:00', 200.0);

-- Insertar detalles de facturas
INSERT INTO factura_detalle (id_factura, descripcion, monto) VALUES (1, 'Asiento 1 - Evento 1', 100.00);
INSERT INTO factura_detalle (id_factura, descripcion, monto) VALUES (2, 'Asiento 2 - Evento 1', 100.00);
INSERT INTO factura_detalle (id_factura, descripcion, monto) VALUES (3, 'Asiento 1 - Evento 5', 100.00);
INSERT INTO factura_detalle (id_factura, descripcion, monto) VALUES (4, 'Asiento 1 - Evento 3', 100.00);
INSERT INTO factura_detalle (id_factura, descripcion, monto) VALUES (4, 'Asiento 2 - Evento 3', 100.00);
INSERT INTO factura_detalle (id_factura, descripcion, monto) VALUES (4, 'Asiento 3 - Evento 3', 100.00);
INSERT INTO factura_detalle (id_factura, descripcion, monto) VALUES (5, 'Asiento 1 - Evento 4', 100.00);
INSERT INTO factura_detalle (id_factura, descripcion, monto) VALUES (6, 'Asiento 2 - Evento 5', 100.00);
INSERT INTO factura_detalle (id_factura, descripcion, monto) VALUES (7, 'Asiento 2 - Evento 4', 100.00);
INSERT INTO factura_detalle (id_factura, descripcion, monto) VALUES (7, 'Asiento 3 - Evento 4', 100.00);
INSERT INTO factura_detalle (id_factura, descripcion, monto) VALUES (7, 'Asiento 4 - Evento 4', 100.00);
INSERT INTO factura_detalle (id_factura, descripcion, monto) VALUES (8, 'Asiento 1 - Evento 2', 100.00);
INSERT INTO factura_detalle (id_factura, descripcion, monto) VALUES (8, 'Asiento 2 - Evento 2', 100.00);
INSERT INTO factura_detalle (id_factura, descripcion, monto) VALUES (9, 'Asiento 4 - Evento 3', 100.00);
INSERT INTO factura_detalle (id_factura, descripcion, monto) VALUES (9, 'Asiento 5 - Evento 3', 100.00);
INSERT INTO factura_detalle (id_factura, descripcion, monto) VALUES (9, 'Asiento 6 - Evento 3', 100.00);
INSERT INTO factura_detalle (id_factura, descripcion, monto) VALUES (10, 'Asiento 7 - Evento 3', 100.00);
INSERT INTO factura_detalle (id_factura, descripcion, monto) VALUES (10, 'Asiento 8 - Evento 3', 100.00);
