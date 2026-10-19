-- ══════════════════════════════════════════
-- MiniStore — Soluciones con Outer JOINs
-- Autor: Mariano
-- Fecha: 19-10-2026
-- ══════════════════════════════════════════

-- ── CONSULTA 1: LEFT JOIN ─────────────────
-- Pregunta de negocio: ¿Qué productos del catálogo nunca fueron vendidos?
-- Mostrá todos los productos y sus ventas asociadas.
-- Los productos sin ventas aparecerán con NULL en las columnas de ventas.

-- [Tu consulta aquí]
SELECT
    productos.categoria, 
    productos.nombre, 
    productos.producto_id, 
    ventas.venta_id
FROM productos
LEFT JOIN ventas ON productos.producto_id = ventas.producto_id

Los productos que nunca fueron vendidos son:
-	Hub USB-C 7p de la categoría Accesorios.
-	Parlante Bluetooth de la categoría Audio.


-- ── CONSULTA 2: RIGHT JOIN ────────────────
-- Pregunta de negocio: ¿Existen ventas registradas con productos
-- que no figuran en nuestro catálogo? (posible error de carga de datos)
-- Los registros huérfanos aparecerán con NULL en las columnas de productos.

-- [Tu consulta aquí]
SELECT 
    ventas.venta_id, 
    ventas.producto_id AS id_en_venta, -- El 999 de la venta
    productos.producto_id AS id_en_catalogo, -- Aquí saldrá NULL
    ventas.cantidad, 
    ventas.fecha_venta
FROM productos
RIGHT JOIN ventas ON productos.producto_id = ventas.producto_id;

Las ventas registradas de productos que no figuran en el catálogo corresponde al id_en_venta 999.

-- ── CONSULTA 3: FULL OUTER JOIN ───────────
-- Pregunta de negocio: Vista completa de auditoría que muestre
-- todos los productos y todas las ventas sin perder ninguna fila,
-- identificando tanto productos sin ventas como ventas sin producto.

-- [Tu consulta aquí]
    SELECT
    productos.producto_id,
    productos.categoria,
    productos.nombre,
    productos.precio,
    ventas.venta_id,
    ventas.producto_id,
    ventas.cantidad,
    ventas.cliente_id,
    ventas.fecha_venta
    FROM productos
    FULL OUTER JOIN ventas ON productos.producto_id = ventas.producto_id
