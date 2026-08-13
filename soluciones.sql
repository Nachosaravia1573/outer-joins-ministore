-- ══════════════════════════════════════════
-- MiniStore — Soluciones con Outer JOINs
-- Autor: Ignacio Saravia Perelló
-- Fecha: 13/08/2026
-- ══════════════════════════════════════════

-- ── CONSULTA 1: LEFT JOIN ─────────────────
-- Pregunta de negocio: ¿Qué productos del catálogo nunca fueron vendidos?
-- Mostrá todos los productos y sus ventas asociadas.
-- Los productos sin ventas aparecerán con NULL en las columnas de ventas.

SELECT v.venta_id,
       p.nombre,
      v.categoria
FROM ventas v  
LEFT JOIN productos p   ON v.producto_id = p.producto_id
WHERE v.venta_id IS NULL
ORDER BY v.venta_id;
      


-- ── CONSULTA 2: RIGHT JOIN ────────────────
-- Pregunta de negocio: ¿Existen ventas registradas con productos
-- que no figuran en nuestro catálogo? (posible error de carga de datos)
-- Los registros huérfanos aparecerán con NULL en las columnas de productos.

SELECT v.venta_id,
       p.nombre
FROM   productos p
RIGHT JOIN ventas v ON v.producto_id = p.producto_id
WHERE v.venta_id IS NULL
ORDER BY v.venta_id;
       



-- ── CONSULTA 3: FULL OUTER JOIN ───────────
-- Pregunta de negocio: Vista completa de auditoría que muestre
-- todos los productos y todas las ventas sin perder ninguna fila,
-- identificando tanto productos sin ventas como ventas sin producto.
SELECT v.venta_id,
       p.nombre,
       p.categoria,
       v.cantidad
FROM ventas v
FULL OUTER JOIN productos p ON v.producto_id = p.producto_id
ORDER BY v.venta_id;
       








