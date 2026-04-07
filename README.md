# Financial Performance Analysis with SQL — AdventureWorks

## The Business Problem

AdventureWorks was spending millions on marketing campaigns across multiple countries — but no one could clearly answer which markets were actually worth the investment. The CFO needed a data-driven answer before the next budget cycle.

I took that question and turned it into an analysis.

## What I Did

Using sales transactions, product data, territory mapping, and marketing spend, I built a financial performance model from scratch in SQL. I calculated revenue, costs, gross profit, margin, and ROI for each country — joining five tables and validating data quality along the way.

## What the Data Revealed

The numbers told a clear story:

- **The United States** led with a 75.75% ROI — generating $1.45M in gross profit despite high campaign costs
- **Australia** was the most efficient market: modest investment, strong return
- **Canada, France, Germany, and the UK** showed low ROI despite a combined $8.6M in campaign spend
- Every country maintained similar operating margins (42–44%) — meaning the problem wasn't operational efficiency, it was marketing strategy

The insight wasn't just "these markets perform better." It was: *the company is overspending in the wrong places.*

## Technical Details

### Dataset

The data comes from the TripleTen bootcamp environment and is not included in this repository. Tables used:

| Table | Description |
|---|---|
| `ventas_2017` | Order line transactions (2017) |
| `productos` | Product catalogue with attributes, cost and unit price |
| `productos_categorias` | Category/subcategory hierarchy |
| `territorios` | Territory key → country and continent mapping |
| `campanas` | Marketing spend by territory |

### Analytical Workflow

| Step | Description |
|---|---|
| 1. Initial exploration | Review of all table structures |
| 2. Base dataset | JOIN of sales, products, categories and territories; calculation of revenue and cost per order line |
| 3. Aggregation by country | Sum of revenue and costs from ventas_clean |
| 4. Campaign join | Incorporation of marketing spend by territory |
| 5. Profitability by country | Calculation of gross profit, margin % and ROI % |
| 6. Data quality validation | Null checks on key columns and invalid record counts |

### Tools
SQL (PostgreSQL) · Google Sheets

### Files
- `analysis.sql` — all queries with comments, organized by section
- `executive_summary.pdf` — dashboard with results table and executive insights

---

*By Deborah Jara | Data Analyst | México*
[LinkedIn](https://linkedin.com/in/deborahjara) · [GitHub](https://github.com/DebbieJara)
