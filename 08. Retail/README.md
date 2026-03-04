# 🛒 Retail Strategic Performance Dashboard

![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![SQL Server](https://img.shields.io/badge/SQL_Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

## 📌 Project Overview
This project is an **End-to-End Business Intelligence and Analytics Suite** designed to transform raw transactional retail data into high-level actionable strategic insights. 

By architecting a fully normalized **SQL Server** database utilizing a **Star Schema** design and integrating it seamlessly with **Power BI**, I created a highly dynamic reporting environment. The final deliverable features a multi-layered dashboard (Executive Summary & Operational Deep Dive) that visualizes both top-line financial health and granular product/customer performance.

---

## 🏗️ Data Architecture & Star Schema
The underlying data architecture was constructed from scratch following industry-standard **Star Schema** practices to ensure optimal query performance and accurate reporting semantics in Power BI.

*   **Fact Table (`FactSales`):** Captures the transactional level grain, including quantities, actual sale prices, applied discounts, and conditional boolean flags for returned items.
*   **Dimension Tables:**
    *   **`DimProducts`:** Product master data including Name, Category, SubCategory, Brand, UnitCost, UnitPrice, and active status.
    *   **`DimCustomers`:** Customer demographics including segmentation, geography (City, Region, Country), and Income Groups.
    *   **`DimStores`:** Data on physical and online points of sale, including Store Type and Store Managers.

**Key Model Attributes:** The schema allows cross-filtering and slicing by Time (Year/Month), Geography, and Hierarchy (Category → Brand → Product) without bidirectional ambiguity.

---

## ⚙️ Technical Workflow & Methodology

### 1. Database Engineering (SQL Server)
The backend was built entirely on MS SQL Server using a relational model with strict constraints to ensure absolute data integrity.
*   **Action:** Created the `RetailAnalyticsDB` database.
*   **Logic:** Defined explicit Primary Keys (PK) and Foreign Keys (FK) scripts to establish relationships at the database engine level before import.
*   **Value Add:** Designed deep, analytical-ready attributes like `StoreType`, `IsReturned`, and `UnitCost` natively into the schema.

### 2. Data Connection & ETL (Power Query)
The data was imported into Power BI via Import Mode, triggering essential transformation steps:
*   **Cost Integration:** Merged `FactSales` with `DimProducts` logically to compute row-level costs.
*   **Calculated Columns:** Computed `RowTotalCost` (Quantity * UnitCost) and `RowGrossRevenue`.
*   **Conditional Cleansing:** Established `NetRevenue` column using `IF` logic to dynamically exclude returned items (`IF IsReturned = TRUE THEN 0 ELSE GrossRevenue`).
*   **Data Typing:** Enforced "Fixed Decimal Number" for all currency/financial fields to prevent floating-point aggregation errors.

### 3. Advanced Analytical Logic (DAX)
Implicit measures were strictly avoided. A dedicated `Measurements` table was created to house all explicitly coded DAX, ensuring scalability.
*   **Core Metrics:** `Total Sales`, `Total Profit`, and `Total Discount`.
*   **Profit Margin %:** `DIVIDE([Total Profit], [Total Sales], 0)`
*   **Return Rate %:** Statistical handling of Boolean logic (`IsReturned = TRUE`) against total transaction counts.
*   **Dynamic Benchmarks:** Created `Max Total Sales` and `Max Profit` targets using `CALCULATE([Total Sales], ALL(FactSales))` to feed the dynamic Gauge visuals dynamically regardless of filtering context.

---

## � PBIX Internal Architecture Deep Dive
By extracting and parsing the raw internal `Layout` JSON of the `.pbix` file, the following structural components were reverse-engineered:

**Canvas Resolution:** Native 16:9 (`1280x720`) across all pages.

### Page 1: "Executive Overview" (19 Visuals)
*   **KPI Tracking:** 4x Native `gauge` visuals.
*   **Geospatial:** 1x `azureMap` for interactive territorial sales plotting.
*   **Distributions:** 1x `donutChart` and 1x `lineChart`.
*   **Controls:** 5x `slicer`, 1x `Timeline` custom visual, and 1x native `pageNavigator`.

### Page 2: "Product & Customer Deep Dive" (18 Visuals)
*   **AI Discovery:** 1x `decompositionTreeVisual`.
*   **Advanced Analytics:** 1x `scatterChart` for multi-axis quadrant analysis.
*   **KPI Tracking:** 4x Native `gauge` visuals.
*   **Controls:** 5x `slicer`, 1x `Timeline` custom visual, and 1x native `pageNavigator`.

### Embedded Custom Visuals
The report leverages specific Microsoft AppSource custom visuals to extend native capabilities:
1.  **`htmlContent`:** By Daniel Marsh-Patrick (Used to render dynamic HTML/CSS elements like custom animated backgrounds or cards directly on the canvas).
2.  **`Timeline`:** Microsoft's advanced time-brushing slicer.
3.  **`advanceCard`:** By SQLBI for multi-state KPI cards.

---

## �📊 Dashboard Construction & Visuals

The report is split into distinct pages serving different psychological profiles:

### Page 1: Executive Sales Performance
**Goal:** High-level status check for C-Suite and Directors.
*   **Dynamic Gauges:** Tracks current performance explicitly against Global Max benchmarks.
*   **Map Visual:** Geospatial analysis identifying profit density across regions.
*   **Trend Line:** Monthly run-rate analysis plotting Sales vs. Profit.
*   **Donut Chart:** Quick breakdown of category distribution.

### Page 2: Product & Customer Deep Dive
**Goal:** Operational root-cause analysis for Floor Managers and Strategists.
*   **Scatter Plot (Quadrant Analysis):** Plots **Volume vs. Efficiency (Margin)**. Beautifully identifies "Cash Cows" (Top Right quadrant) vs. "Money Losers" (Bottom Right quadrant). Includes dynamic average lines for immediate context.
*   **Decomposition Tree (AI Custom Visual):** Empowers users to drill down autonomously into Profit by `Store Type` → `Region` → `Brand` to discover precisely where margins are bleeding or thriving.

---

## 💡 Final Insights Gathered

Based on the data processed through this model, the following insights were produced:

| Insight Theme | Business Discovery |
| :--- | :--- |
| **Healthy Margins** | The overall Profit Margin is exceptionally strong at **~33.80%**, representing solid financial health. |
| **Category Dominance vs. Efficiency** | While "Electronics" drives the highest top-line revenue, the Decomposition Tree revealed that specific "Furniture" units offer significantly better margin efficiency per unit sold. |
| **High Quality Control** | The Return Rate is currently sitting at ~0%, indicating incredibly high customer satisfaction and robust product quality across the board. |
| **Actionable Strategy** | The Quadrant Analysis scatter plot successfully identified specific high-volume / low-margin products. **Recommendation:** Strategically reduce or restructure discounts entirely on these specific high-volume items to instantly boost overall net profit with minimal impact to demand flow. |

---

## � Repository Structure

```text
├── Dataset/
│   ├── RetailAnalytics.sql           # SQL DB Schema, Constraints, & Tables
│   └── Insert Data.sql               # Mock transactional test data population scripts
│
├── Report/
│   ├── Product Overview Dashboard.pbix      # Main Power BI Report
│   └── Retail Product Overview Report.docx  # Detailed MS Word overview documentation
│
└── README.md                         # This file
```

---

## 🚀 How to Run This Project

### Step 1: Initialize Database
1. Open SQL Server Management Studio (SSMS).
2. Execute `Dataset/RetailAnalytics.sql` to generate the normalized schema.
3. Execute `Dataset/Insert Data.sql` to populate the tables.

### Step 2: Connect Power BI
1. Open `Report/Product Overview Dashboard.pbix` in Power BI Desktop.
2. Navigate to **Transform Data** → **Data Source Settings** → **Change Source**.
3. Point the connection to your local instance (e.g., `localhost` or `.\SQLEXPRESS`) and click **Refresh** to load the data model.

---

## 👤 Author
**Nikhil Shrivastav**  
*Data Analyst & BI Developer*
