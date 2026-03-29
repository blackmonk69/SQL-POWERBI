# Pricing & Margin Analysis Project (2023-2025)

## Project Overview
This project focuses on a comprehensive end-to-end data analysis to address a critical business challenge: a significant decline in profit margins over a three-year span. By integrating SQL for data engineering and Power BI for advanced visualization, I transformed raw sales records into actionable pricing strategies and business insights.
One of the aims is to show we can upload csv files into sql server, then do the cleaning and queries and introduce them into the Power BI pipeline in advanced option when c
connecting with the server. Then we build the dashboard and build some new measures with DAX.

## Objectives
* **Identify** products with a gross margin percentage below the 30% corporate threshold.
* **Consolidate** three years of fragmented sales data (2023–2025) into a unified data model.
* **Develop** an interactive dashboard to monitor Revenue, in later stages we can add Profit, and Margin KPIs.
* **Provide** data-backed recommendations for pricing interventions or product discontinuations.

## Tech Stack
* **Data Extraction & Transformation:** SQL Server (T-SQL)
* **Data Visualization:** Power BI Desktop
* **Analytical Calculations:** DAX (Data Analysis Expressions)
* **Data Source:** Multi-year CSV flat files (Sales, Customers, and Products)

## Technical Implementation

### 1. Data Engineering (SQL)
I developed a robust data architecture to unify the disparate datasets. Key steps included:
* **Data Consolidation:** Used `UNION ALL` to merge annual order tables (2023, 2024, 2025).
* **Relational Mapping:** Performed `LEFT JOIN` operations to enrich order data with customer regions and product categories.
* **Data Cleaning:** Implemented logic to handle `NULL` revenue values by recalculating totals based on `Quantity * Price` and filtered out incomplete customer records to ensure data integrity.

### 2. Advanced Analytics (DAX)
To provide deep insights, I authored several custom DAX measures:
* **Metric Selector:** Created a dynamic switching mechanism using `SELECTEDVALUE` and `SWITCH`, allowing stakeholders to toggle the entire dashboard between Revenue, Profit, Margin, and Quantity metrics.
* **Margin Calculations:** Developed explicit measures for Gross Margin Percentage to track profitability trends accurately at the product level.

### 3. Visualization & UX
The Power BI dashboard was designed for both high-level executive overviews and granular product analysis:
* **Dynamic Subtitles:** Implemented titles that update based on the selected metric.
* **Weekly Trend Analysis:** Aggregated daily data into weekly buckets to smooth out volatility and identify seasonal trends.


## Key Insights & Business Recommendations
* **Margin Erosion:** The analysis revealed that declining margins were primarily driven by rising **Cost of Goods Sold (COGS)** rather than a drop in sales volume.
* **Underperforming Products:** Identified three key product lines (certain brewing equipment and merchandise) where margins fell below 30% due to static pricing despite rising production costs.
* **Strategic Roadmap:** * **Price Increase:** Recommended immediate pricing adjustments for high-volume, low-margin items.
    * **Cost Optimization:** Suggested sourcing alternative suppliers for products with structurally high COGS.
    * **Discontinuation:** Advised reviewing specific items where price increases might lead to unacceptable volume loss.

---
## 🔵 Workflow (SQL → Power BI)

### 1. Data Loading (SQL Server)
- Import CSV files into SQL Server  
- Create tables (e.g., Orders_2023, Orders_2024, Orders_2025)  
- Verify that data was loaded correctly  

---

### 2. Validation and Transformation (SQL)
- Run queries to validate data  
- Combine tables using `UNION ALL`  
- Create metrics (e.g., profit = revenue - cogs)  
- Work with dates:
  - Year → `YEAR(OrderDate)`
  - Week → `DATEPART(ISO_WEEK, OrderDate)`
- Join tables using `JOIN` (customers, products)  

👉 Result: clean and structured dataset  

---

### 3. Connect to Power BI
- Open Power BI  
- Select data source: **SQL Server**  
- Connect to the database  
- Use a **custom query**  

👉 Improves performance and control  

---

### 4. Data Modeling in Power BI
- Validate data types  
- Review relationships  
- Optimize the model  

---

### 5. Dashboard Creation
- Visualizations:
  - Sales  
  - Profit  
  - KPIs  
  - Time-based trends  
- Use filters (slicers)  

---

### 6. Measure Creation (DAX)
- Total Revenue  
- Total Profit  
- Profit Margin  
- Comparative KPIs  

👉 Enables dynamic analysis  

---

## 🎯 Professional Summary

First, I load data into SQL Server from CSV files. Then, I clean, transform, and unify it using SQL (CTEs, joins, and calculations). After that, I connect Power BI directly to this query to work with an optimized dataset. Finally, I build the data model, develop dashboards, and create DAX measures to generate business insights.

---

## 🔥 Key Tip

👉 Always perform transformations in SQL instead of Power BI:

- Better performance  
- More scalable  
- More professional

  **Thanks to Gaelim Holland for the tutorial
