
---Trigger: actualizar_stock
CREATE OR REPLACE FUNCTION actualizar_stock()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        UPDATE productos
        SET stock_actual = stock_actual + NEW.cantidad
        WHERE id_producto = NEW.id_producto;
    ELSIF TG_OP = 'DELETE' THEN
        UPDATE productos
        SET stock_actual = stock_actual - OLD.cantidad
        WHERE id_producto = OLD.id_producto;
    ELSIF TG_OP = 'UPDATE' THEN
        UPDATE productos
        SET stock_actual = stock_actual - OLD.cantidad + NEW.cantidad
        WHERE id_producto = NEW.id_producto;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_actualizar_stock
AFTER INSERT OR UPDATE OR DELETE
ON movimientos_stock
FOR EACH ROW
EXECUTE FUNCTION actualizar_stock();

