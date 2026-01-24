# 🛒 Retail Strategic Performance Dashboard

![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![SQL Server](https://img.shields.io/badge/SQL_Server-CC2927?style=for-the-badge&logo=microsoft-sql-server&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

## 📌 Project Overview

This project is an **End-to-End Business Intelligence solution** designed to transform raw retail transactional data into actionable strategic insights.

By architecting a normalized **SQL Server** database with a **Star Schema** design and integrating it with **Power BI**, this project creates a dynamic reporting environment. The final output features a dual-layer dashboard (Executive & Operational) that visualizes high-level financial health and granular product performance.

### 🚀 Key Features

- **End-to-End Architecture:** From raw SQL data creation to final Power BI visualization
- **Star Schema Design:** Optimized data modeling with Fact and Dimension tables
- **Advanced Analytics:** Utilization of **DAX measures** for complex KPIs like Net Revenue, Return Rate %, and dynamic benchmarking
- **AI Integration:** Use of Decomposition Trees and Key Influencers to find root causes of profit changes

---

## 📂 Repository Structure

This repository is organized into two main components: Data Engineering (SQL) and Reporting (Power BI).

```text
├── Dataset/
│   ├── RetailAnalytics.sql           # Logic to Create Tables, Schema, and Constraints
│   └── Insert Data.sql               # Script to populate the DB with dummy transactional data
│
├── Report/
│   ├── Product Overview Dashboard.pbix      # The main Power BI Source File
│   └── Retail Product Overview Report.docx  # Detailed project documentation
│
└── README.md                         # Project Documentation
```

---

## 🛠️ Technical Workflow

### 1. Data Engineering (SQL Server)

The backend is built on MS SQL Server using a relational model to ensure data integrity.

- **Schema:** Star Schema (1 Fact Table, 3 Dimension Tables)
- **Tables:**
  - `FactSales`: Transactional records, quantities, returns
  - `DimProducts`: Unit costs, brands, categories
  - `DimCustomers`: Segmentation and geography
  - `DimStores`: Physical and online store data

### 2. ETL & Modeling (Power Query & DAX)

- **Transformation:** Merged Cost and Sales tables via Power Query to calculate GrossRevenue and RowTotalCost
- **DAX Measures:** Rejected implicit measures in favor of explicit DAX for scalability
  - Profit Margin %
  - Return Rate % (Conditional logic handling returned items)
  - Dynamic Gauge Targets (Benchmarking against global max)

### 3. Visualization

- **Executive Page:** Gauges for Profit/Sales, geospatial analysis, and monthly trends
- **Deep Dive Page:** Quadrant Analysis (Scatter Plot) to identify "Cash Cows" vs "Money Losers," and Decomposition Trees for drill-down analysis

---

## 📊 Dashboard Previews

| Executive View | Operational Deep Dive |
|----------------|----------------------|
| High-level Financial KPIs | Scatter Plots & AI Decomposition Trees |

---

## ⚙️ How to Run This Project

### Step 1: Database Setup

1. Open SQL Server Management Studio (SSMS)
2. Open `Dataset/RetailAnalytics.sql` and execute the script to create the database and tables
3. Open `Dataset/Insert Data.sql` and execute the script to populate the tables with data

### Step 2: Power BI Setup

1. Open `Report/Product Overview Dashboard.pbix` in Power BI Desktop
2. **Note:** You may need to change the Data Source settings to point to your local SQL Server instance
3. Go to **Transform Data** → **Data Source Settings** → **Change Source**
4. Enter your Server Name (e.g., `localhost` or `.\SQLEXPRESS`)
5. Click **Refresh** to load the data from your local SQL database

---

## 💡 Key Insights Generated

Based on the analysis of the dataset:

| Insight | Details |
|---------|---------|
| **Healthy Margins** | The overall Profit Margin is strong at ~33.8% |
| **Category Leaders** | "Electronics" is the primary revenue driver, though specific "Furniture" items offer better margins per unit |
| **Efficiency** | The Return Rate is negligible (0%), indicating high product quality |
| **Strategy** | Quadrant analysis identified high-volume/low-margin products where discount structures should be optimized |

---

## 👤 Author

**Nikhil Shrivastav**  
*Data Analyst & BI Developer*

---

⭐ If you find this project useful, please star this repository!
