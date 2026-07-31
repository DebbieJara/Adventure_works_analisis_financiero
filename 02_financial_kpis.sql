-- Ingresos y costos por país
SELECT
    pais,
    clave_territorio,
    SUM(ingreso_total)::integer AS ingresos,
    SUM(costo_total)::integer   AS costos
FROM ventas_clean
GROUP BY pais, clave_territorio
ORDER BY ingresos DESC;
-- Guardado como: pais_ingreso_costo

-- Ingresos, costos y gasto de campaña por país
SELECT
    v.pais,
    v.clave_territorio,
    SUM(v.ingreso_total)::integer AS ingresos,
    SUM(v.costo_total)::integer   AS costos,
    COALESCE(SUM(c.costo_campana::integer), 0) AS costo_campana
FROM ventas_clean AS v
LEFT JOIN campanas AS c
    ON v.clave_territorio = c.clave_territorio::integer
GROUP BY v.pais, v.clave_territorio
ORDER BY ingresos DESC;
-- Guardado como: pais_campanas

-- Rentabilidad por país: beneficio bruto, margen % y ROI %
SELECT
    p.pais,
    p.clave_territorio,
    SUM(p.ingresos)::integer AS ingresos,
    SUM(p.costos)::integer   AS costos,
    COALESCE(SUM(c.costo_campana), 0)::integer AS costo_campana,
    SUM(p.ingresos)::integer - SUM(p.costos)::integer AS beneficio_bruto,
    (SUM(p.ingresos) - SUM(p.costos)) * 100.0
        / NULLIF(SUM(p.ingresos), 0) AS margen_pct,
    (SUM(p.ingresos) - SUM(p.costos)) * 100.0
        / NULLIF(SUM(c.costo_campana), 0) AS roi_pct
FROM pais_ingreso_costo AS p
LEFT JOIN pais_campanas AS c
    ON p.clave_territorio = c.clave_territorio
GROUP BY p.pais, p.clave_territorio
ORDER BY p.clave_territorio, ingresos, costos;
