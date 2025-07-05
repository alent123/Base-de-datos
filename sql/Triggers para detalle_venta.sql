--1
CREATE OR REPLACE TRIGGER trg_actualizar_total_delete
AFTER DELETE ON detalle_venta
FOR EACH ROW
BEGIN
    UPDATE venta
    SET total = NVL(total, 0) - (:OLD.cantidad * :OLD.precio_unitario)
    WHERE id_venta = :OLD.id_venta;
END;
/


--2
CREATE OR REPLACE TRIGGER trg_actualizar_total_update
AFTER UPDATE OF cantidad, precio_unitario ON detalle_venta
FOR EACH ROW
BEGIN
    UPDATE venta
    SET total = NVL(total, 0)
        - (:OLD.cantidad * :OLD.precio_unitario)
        + (:NEW.cantidad * :NEW.precio_unitario)
    WHERE id_venta = :OLD.id_venta;
END;
/
