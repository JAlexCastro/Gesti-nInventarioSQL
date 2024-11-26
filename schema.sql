--- Tabla: categorías
CREATE TABLE categorias (
    id_categoria SERIAL PRIMARY KEY,
    nombre_categoria VARCHAR(100) NOT NULL,
    descripcion TEXT
);

--- Tabla: productos
CREATE TABLE productos (
    id_producto SERIAL PRIMARY KEY,
    nombre_producto VARCHAR(150) NOT NULL,
    id_categoria INT NOT NULL REFERENCES categorias(id_categoria) ON DELETE CASCADE,
    precio_unitario NUMERIC(10, 2) NOT NULL CHECK (precio_unitario > 0),
    stock_actual INT DEFAULT 0 CHECK (stock_actual >= 0)
);

--- Tabla: proveedores
CREATE TABLE proveedores (
    id_proveedor SERIAL PRIMARY KEY,
    nombre_proveedor VARCHAR(150) NOT NULL,
    telefono VARCHAR(15),
    email VARCHAR(100)
);

--- Tabla: almacenes
CREATE TABLE almacenes (
    id_almacen SERIAL PRIMARY KEY,
    nombre_almacen VARCHAR(100) NOT NULL,
    ubicacion TEXT
);

--- Tabla: movimientos_stock
CREATE TABLE movimientos_stock (
    id_movimiento SERIAL PRIMARY KEY,
    id_producto INT NOT NULL REFERENCES productos(id_producto) ON DELETE CASCADE,
    id_almacen INT NOT NULL REFERENCES almacenes(id_almacen) ON DELETE CASCADE,
    tipo_movimiento VARCHAR(10) NOT NULL CHECK (tipo_movimiento IN ('entrada', 'salida')),
    cantidad INT NOT NULL CHECK (cantidad > 0),
    fecha_movimiento TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);