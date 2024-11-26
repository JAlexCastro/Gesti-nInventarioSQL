--- Vista para: monitorear productos con bajo stock:
CREATE OR REPLACE VIEW vista_stock_bajo AS
SELECT p.nombre_producto, p.stock_actual, a.nombre_almacen
FROM productos p
JOIN movimientos_stock m ON p.id_producto = m.id_producto
JOIN almacenes a ON m.id_almacen = a.id_almacen
WHERE p.stock_actual < 10;
