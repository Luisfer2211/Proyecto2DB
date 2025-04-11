-- Tabla de roles de usuario
CREATE TABLE rol_usuario (
    id_rol SERIAL PRIMARY KEY,
    nombre_rol VARCHAR(50) NOT NULL UNIQUE
);

-- Tabla de usuarios
CREATE TABLE usuarios (
    id_usuario SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100) UNIQUE NOT NULL,
    contraseña VARCHAR(100) NOT NULL,
    id_rol INT REFERENCES rol_usuario(id_rol)
);

-- Tabla de eventos
CREATE TABLE eventos (
    id_evento SERIAL PRIMARY KEY,
    tipo_evento VARCHAR(100) NOT NULL,
    detalle TEXT NOT NULL,
    fecha TIMESTAMP NOT NULL
);

-- Tabla de asientos
CREATE TABLE asientos (
    id_asiento SERIAL PRIMARY KEY,
    id_evento INT REFERENCES eventos(id_evento) ON DELETE CASCADE,
    numero_asiento VARCHAR(10) NOT NULL,
    fila VARCHAR(5),
    disponible BOOLEAN DEFAULT TRUE,
    UNIQUE(id_evento, numero_asiento)
);

-- Tabla reserva maestro
CREATE TABLE reserva_maestro (
    id_reserva SERIAL PRIMARY KEY,
    id_usuario INT REFERENCES usuarios(id_usuario),
    id_evento INT REFERENCES eventos(id_evento),
    fecha_reserva TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla reserva detalle
CREATE TABLE reserva_detalle (
    id_detalle SERIAL PRIMARY KEY,
    id_reserva INT REFERENCES reserva_maestro(id_reserva) ON DELETE CASCADE,
    id_asiento INT REFERENCES asientos(id_asiento),
    UNIQUE(id_reserva, id_asiento)
);

-- Tabla factura maestro
CREATE TABLE factura_maestro (
    id_factura SERIAL PRIMARY KEY,
    id_usuario INT REFERENCES usuarios(id_usuario),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    total NUMERIC(10, 2) NOT NULL
);

-- Tabla factura detalle
CREATE TABLE factura_detalle (
    id_detalle SERIAL PRIMARY KEY,
    id_factura INT REFERENCES factura_maestro(id_factura) ON DELETE CASCADE,
    descripcion TEXT NOT NULL,
    monto NUMERIC(10, 2) NOT NULL
);

-- Tabla bitácora
CREATE TABLE bitacora (
    id_log SERIAL PRIMARY KEY,
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_usuario INT REFERENCES usuarios(id_usuario),
    accion TEXT NOT NULL,
    tabla_afectada VARCHAR(50),
    descripcion TEXT
);


