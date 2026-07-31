-- Nulos en columnas clave de ventas_2017
SELECT
    SUM(CASE WHEN numero_pedido IS NULL THEN 1 ELSE 0 END)
        AS nulos_numero_pedido,
    SUM(CASE WHEN clave_producto IS NULL THEN 1 ELSE 0 END)
        AS nulos_clave_producto,
    SUM(CASE WHEN clave_territorio IS NULL THEN 1 ELSE 0 END)
        AS nulos_clave_territorio
FROM ventas_2017;
-- Resultado: 0, 0, 0

-- Cantidades no válidas en ventas_2017
SELECT COUNT(*) AS filas_cantidad_no_valida
FROM ventas_2017
WHERE cantidad_pedido <= 0;
-- Resultado: 0

-- Productos con precio no válido
SELECT COUNT(*) AS productos_precio_no_valido
FROM productos
WHERE precio_producto <= 0;
-- Resultado: 0
