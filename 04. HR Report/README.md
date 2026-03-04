# 👥 HR Analytics Report

![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

## 📌 Project Overview

A comprehensive HR Employee Data Analytics dashboard built in Power BI for **Clariwell Global Solutions**. Commissioned by the Senior HR Manager, this project provides a central dashboard for the HR department to track salaries, employee sick leave, and calculate the financial impact of absenteeism on the company. 

The analysis is based on a dataset of **3,520 employees** (both past and present), with a specific focus on financial loss due to sick days, broken down by Department, Business Unit, Location, and Gender.

### 🚀 Key Features & Technical Implementation

- **Data Preparation (Power Query):** Cleaned raw HR records (Excel/CSV), standardized department names, and created dynamic rules to classify employees as "Active" or "Non-Active".
- **Data Modeling:** Designed a robust **Star Schema** linking a central Employee Performance fact table with dimension tables for Departments, Locations, and Dates.
- **Advanced DAX Calculations:** Developed custom DAX measures for:
  - *Daily Cost:* `Annual Salary / 260` (standard working days)
  - *Financial Loss:* `Daily Cost * Total Sick Days`
  - *Payroll Metrics:* Average Salary, Total Payroll Cost, slicing by Full-Time and Part-Time workers.
- **Interactive UI/UX:** Built with intuitive navigation (arrow buttons, "Clear All" filters), Gauge Charts for KPIs, Map visuals for geographic insights, and detailed matrix tables.

---

## 📊 Dashboard Pages, Visuals & Insights

### 1. Home
- **Visuals:** Navigation system (Action Buttons, Page Navigator) and Images.
- **Purpose:** Entry point for the HR dashboard, providing seamless navigation to distinct analytical sections.

### 2. Employee Salary Analyst
- **Visuals Used:** Gauge Charts, Slicers, KPI Cards, Bar Charts, Clustered Column Charts, Timeline Slicer, Column Charts, and Bookmark Navigator.
- **Insights:**
  - **Total Payroll Cost:** Evaluated at **$335 Million** (tracked via KPI Cards).
  - **Average Salary:** **$95,250** per employee (Gauge chart performance).
  - The *Sales and Marketing* and *Tech Support* departments account for the highest salary expenditures. Geographically, New York and Seattle host the most employees.

### 3. Employee Sick Analyst
- **Visuals Used:** Azure Map, Line Chart, Gauge Charts, KPI Cards, Bar Charts, Timeline Slicer, Column Charts, and Bookmark Navigator.
- **Insights:**
  - **Volume:** The company recorded a staggering **23,000 sick days**.
  - **Geographic Trends:** The Azure Map visual geographically highlights that the **East Coast (New York)** experiences significantly more sick days than the West Coast.
  - **Time Trends:** Noticeable seasonal spikes observed via the Line Chart (e.g., flu season, end-of-year stress).

### 4. Employee Final Report
- **Visuals Used:** Pivot Table (Matrix), Timeline Slicer, Column Charts, Slicers, Bookmark Navigator, and Textboxes.
- **Insights (Active Employees):**
  - **Current Staffing:** Filtering for "Active" status yields **1,766 employees** detailed in the pivot table.
  - **Financial Impact:** Sick leave among active employees has cost the company **$4.27 Million**.
  - **Risk Areas:** The *Quality Assurance (QA)* department shows disproportionately high sick leave (867 days), indicating potential management issues or a high-stress environment.

---

## 🎯 Strategic Recommendations for HR

Based on the dashboard's data insights, the following actions are recommended for HR leadership:
1. **Investigate Quality Assurance:** Due to the severe sickness rate in QA, HR must investigate potential causes such as workplace stress, poor management, or environmental health issues.
2. **Review Attendance Policies:** Re-evaluate the "Unlimited Time Off" policy to ensure it supports genuinely ill employees without being broadly misused, given the $4.2M+ financial leak.
3. **Launch NY Wellness Programs:** Introduce targeted health and wellness initiatives in the New York office to reduce baseline illness, improve employee well-being, and save organizational costs.

---

## 📂 Repository Structure

```text
├── Dataset/
│   ├── HR Report.pbix               # Source data models
│   └── human resources.csv          # Raw employee data
│
├── Report/
│   ├── HRReport completed.pbix      # Final Power BI Dashboard
│   └── Project Report_ HR Employee Data Analytics.docx # Detailed findings
│
└── README.md                        # Project Documentation
```

---

## ⚙️ How to Run This Project

1. Open `Report/HRReport completed.pbix` in Power BI Desktop
2. The data is embedded within the PBIX file
3. Explore the various dashboard pages (Salary Overview, Sick Leave Analysis, Active Employees) and interact with the visualizations (Maps, Gauges, Tables).

---

## 👤 Author

**Nikhil Shrivastav**  
*Data Analyst & BI Developer*

---

⭐ If you find this project useful, please star this repository!
