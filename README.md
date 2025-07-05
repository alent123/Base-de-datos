# Base-de-datos
#santiago salas
/*

<!--
# Oracle PL/SQL – CRUD Package y Triggers para Gestión de Ventas

Este archivo contiene:

1. Un **Package PL/SQL** con operaciones CRUD sobre la tabla `VENTA`
2. Dos **Triggers** aplicados sobre `DETALLE_VENTA`:
   - Evento DELETE: actualiza el campo `TOTAL` de la venta
   - Evento UPDATE: recalcula el campo `TOTAL` al modificar `CANTIDAD` o `PRECIO_UNITARIO`
-->

<!-- ## 📦 Package: venta_pkg -->

<!--
Contiene los siguientes procedimientos:

- crear_venta
- obtener_venta
- actualizar_venta
- eliminar_venta

Ejemplos de uso:

CALL venta_pkg.crear_venta(...);
CALL venta_pkg.obtener_venta(...);
CALL venta_pkg.actualizar_venta(...);
CALL venta_pkg.eliminar_venta(...);
-->

<!-- ## 🔁 Triggers -->

<!--
### Trigger: trg_actualizar_total_delete
Tipo: AFTER DELETE
Acción: Resta del total en la tabla VENTA al eliminar un detalle de venta
-->

<!--
### Trigger: trg_actualizar_total_update
Tipo: AFTER UPDATE OF cantidad, precio_unitario
Acción: Recalcula el total restando el valor anterior y sumando el nuevo valor
-->

<!-- ## 📌 Requisitos -->
<!--
- Base de datos Oracle (XE o superior)
- SQL Developer u Oracle Live SQL
- Las tablas VENTA y DETALLE_VENTA deben existir previamente
-->

<!-- ## 🧪 Recomendaciones de prueba -->

- Insertar un detalle de venta → El total se incrementa
- Eliminar un detalle → El total disminuye
- Actualizar cantidad o precio_unitario → El total se recalcula

<!-- ## ✍️ Autor -->

J. Hernández  
Base de Datos Avanzadas – Laboratorio 2025-1

-->
*/
