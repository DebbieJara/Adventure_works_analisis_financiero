# Análisis de Desempeño Financiero con SQL — AdventureWorks

## Contexto
El director financiero de AdventureWorks necesita saber en qué mercados se generan más ingresos y rentabilidad para decidir dónde invertir el próximo dólar de marketing. Con datos de órdenes, productos, territorios y campañas, este análisis identifica prioridades de mercado, oportunidades de optimización de presupuesto y rentabilidad por país.

## Objetivo
Calcular ingresos, costos, beneficio bruto, margen % y ROI % por país para determinar qué mercados generan mayor retorno sobre la inversión en campañas de marketing.

## Dataset
Los datos provienen del entorno de TripleTen (plataforma del bootcamp) y no están incluidos en este repositorio. Las tablas utilizadas son:

- `ventas_2017` — transacciones de líneas de pedido (2017)
- `productos` — catálogo con atributos, costo y precio unitario
- `productos_categorias` — jerarquía categoría/subcategoría
- `territorios` — mapa de clave territorio → país y continente
- `campanas` — gasto de marketing por territorio

## Herramientas
- SQL (PostgreSQL)
- Google Sheets — dashboard de resultados ejecutivos

## Flujo del análisis
1. **Exploración inicial** — revisión de estructura de todas las tablas
2. **Construcción del dataset base** — JOIN de ventas, productos, categorías y territorios; cálculo de ingreso_total y costo_total por línea de pedido
3. **Agrupación por país** — suma de ingresos y costos desde ventas_clean
4. **Unión con campañas** — incorporación del gasto de marketing por territorio
5. **Rentabilidad por país** — cálculo de beneficio bruto, margen % y ROI %
6. **Validación de calidad** — verificación de nulos en columnas clave y conteo de registros no válidos

## Hallazgos principales
- **Estados Unidos** lidera con 75.75% ROI — el beneficio bruto generado ($1.45M) supera al de cualquier otro mercado a pesar del alto costo de campaña
- **Australia** es el mercado más eficiente en relación costo/beneficio: invierte $2.15M y genera $1.06M en beneficio bruto
- **Canadá, Francia, Alemania y Reino Unido** presentan ROI bajo a pesar de una inversión combinada de $8.6M en campañas
- Todos los países mantienen márgenes operativos similares (42-44%), lo que indica que el problema no está en la eficiencia operativa sino en la estrategia de marketing

## Archivos
- `analysis.sql` — todas las queries con comentarios organizadas por sección
- `executive_summary.pdf` — dashboard con tabla de resultados e insights ejecutivos

## Autora
Deborah Jara | Data Analyst | México
[LinkedIn](https://linkedin.com/in/deborahjara) · [GitHub](https://github.com/DebbieJara)
