--- Función: calcular_valor_inventario
CREATE OR REPLACE FUNCTION calcular_valor_inventario()
RETURNS TABLE(nombre_almacen TEXT, valor_total NUMERIC) AS $$
BEGIN
    RETURN QUERY
    SELECT a.nombre_almacen, SUM(p.precio_unitario * m.cantidad)
    FROM almacenes a
    JOIN movimientos_stock m ON a.id_almacen = m.id_almacen
    JOIN productos p ON m.id_producto = p.id_producto
    WHERE m.tipo_movimiento = 'entrada'
    GROUP BY a.nombre_almacen;
END;
$$ LANGUAGE plpgsql;

