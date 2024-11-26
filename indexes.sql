--- Indice para: nombre de producto:
CREATE INDEX idx_nombre_producto ON productos (nombre_producto);

--- Índice para: movimientos frecuentes del stock:
CREATE INDEX idx_movimientos_almacen ON movimientos_stock (id_almacen);

