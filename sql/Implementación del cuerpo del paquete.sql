CREATE OR REPLACE PACKAGE BODY venta_pkg IS

    PROCEDURE crear_venta(
        p_id_cliente     IN venta.id_cliente%TYPE,
        p_id_empleado    IN venta.id_empleado%TYPE,
        p_fecha_venta    IN venta.fecha_venta%TYPE,
        p_total          IN venta.total%TYPE,
        p_id_venta       OUT venta.id_venta%TYPE
    ) IS
    BEGIN
        INSERT INTO venta (id_cliente, id_empleado, fecha_venta, total)
        VALUES (p_id_cliente, p_id_empleado, p_fecha_venta, p_total)
        RETURNING id_venta INTO p_id_venta;
    END crear_venta;

    PROCEDURE obtener_venta(
        p_id_venta       IN venta.id_venta%TYPE,
        p_id_cliente     OUT venta.id_cliente%TYPE,
        p_id_empleado    OUT venta.id_empleado%TYPE,
        p_fecha_venta    OUT venta.fecha_venta%TYPE,
        p_total          OUT venta.total%TYPE
    ) IS
    BEGIN
        SELECT id_cliente, id_empleado, fecha_venta, total
        INTO p_id_cliente, p_id_empleado, p_fecha_venta, p_total
        FROM venta
        WHERE id_venta = p_id_venta;
    END obtener_venta;

    PROCEDURE actualizar_venta(
        p_id_venta       IN venta.id_venta%TYPE,
        p_id_cliente     IN venta.id_cliente%TYPE,
        p_id_empleado    IN venta.id_empleado%TYPE,
        p_fecha_venta    IN venta.fecha_venta%TYPE,
        p_total          IN venta.total%TYPE
    ) IS
    BEGIN
        UPDATE venta
        SET id_cliente = p_id_cliente,
            id_empleado = p_id_empleado,
            fecha_venta = p_fecha_venta,
            total = p_total
        WHERE id_venta = p_id_venta;
    END actualizar_venta;

    PROCEDURE eliminar_venta(
        p_id_venta       IN venta.id_venta%TYPE
    ) IS
    BEGIN
        DELETE FROM venta
        WHERE id_venta = p_id_venta;
    END eliminar_venta;

END venta_pkg;
/
