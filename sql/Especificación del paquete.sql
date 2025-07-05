CREATE OR REPLACE PACKAGE venta_pkg IS
    -- Crear una venta
    PROCEDURE crear_venta(
        p_id_cliente     IN venta.id_cliente%TYPE,
        p_id_empleado    IN venta.id_empleado%TYPE,
        p_fecha_venta    IN venta.fecha_venta%TYPE,
        p_total          IN venta.total%TYPE,
        p_id_venta       OUT venta.id_venta%TYPE
    );

    -- Leer una venta por su ID
    PROCEDURE obtener_venta(
        p_id_venta       IN venta.id_venta%TYPE,
        p_id_cliente     OUT venta.id_cliente%TYPE,
        p_id_empleado    OUT venta.id_empleado%TYPE,
        p_fecha_venta    OUT venta.fecha_venta%TYPE,
        p_total          OUT venta.total%TYPE
    );

    -- Actualizar una venta
    PROCEDURE actualizar_venta(
        p_id_venta       IN venta.id_venta%TYPE,
        p_id_cliente     IN venta.id_cliente%TYPE,
        p_id_empleado    IN venta.id_empleado%TYPE,
        p_fecha_venta    IN venta.fecha_venta%TYPE,
        p_total          IN venta.total%TYPE
    );

    -- Eliminar una venta
    PROCEDURE eliminar_venta(
        p_id_venta       IN venta.id_venta%TYPE
    );
END venta_pkg;
/
