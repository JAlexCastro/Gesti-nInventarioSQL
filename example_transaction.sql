--- Una vez creada las tablas juntos a sus funciones, trigger, etc. Utilizar los siguientes 
--- scripts para agregar datos a y realizar pruebas del sistema. 


--- Datos para: categorias
INSERT INTO categorias(nombre_categoria, descripcion) VALUES('GRANOS','REPRESENTA LOS PRODUCTOS EN FORMAS DE GRANOS');

--- Datos para: productos
INSERT INTO productos(nombre_producto,id_categoria,precio_unitario) VALUES('ARROZ INTEGRAL 25KG', 1, 22500);


--- Datos para: 
INSERT INTO almacenes(nombre_almacen)VALUES('BODEGA GRANOS');



------- Ejecución de Función (Prueba de Movimiento de inventario)
BEGIN;

-- Registrar un movimiento de entrada
INSERT INTO movimientos_stock (id_producto, id_almacen, tipo_movimiento, cantidad)
VALUES (1, 1, 'entrada', 9);

-- Verificar stock actualizado (aislamiento garantizado)
SELECT stock_actual FROM productos WHERE id_producto = 1 FOR UPDATE;

COMMIT;


------- Ejecución de Vista
SELECT * FROM vista_stock_bajo;

