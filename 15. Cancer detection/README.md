# 🩺 Cancer Detection & Clinical Outcomes Dashboard

![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Healthcare Analytics](https://img.shields.io/badge/Healthcare_Analytics-005C8A?style=for-the-badge&logo=health&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-success?style=for-the-badge)

## 📌 Project Overview
This project is an **Advanced Clinical Intelligence Suite** designed to transform raw patient oncology records into actionable strategic insights for healthcare administrators and medical professionals.

By processing complex medical datasets and integrating them seamlessly into **Power BI**, I created a highly dynamic clinical reporting environment. The final deliverable features a sophisticated dashboard that visualizes early detection efficacy, treatment lifecycles, and overall patient survivability, enabling data-driven healthcare decisions.

---

## 🏗️ Data Architecture & Clinical Records
The underlying data architecture processes comprehensive patient oncology records to track the entire clinical journey from detection to outcome.

*   **Primary Clinical Dataset (`Cancer_Detection_Dataset`):** Captures individual patient granularity.
*   **Key Dimensions:**
    *   **Patient Demographics:** `Patient_ID`, `Age`, `Gender`, and dynamically calculated `Age Group`.
    *   **Clinical Diagnosis:** `Cancer_Type`, `Detection_Method`, `Detection_Result`, `Stage`, and `Risk_Factors`.
    *   **Hospital Operations:** `Hospital_Name`, `Department`, `Admission_Date`, `Discharged_Date`, and the operational measure `Length of Stay Days`.
    *   **Treatment & Outcomes:** `Treatment_Recommended`, `Treatment_Status`, and ultimate `Outcome`.

**Key Model Attributes:** The schema allows comprehensive cross-filtering by demographic segments, detection methods, and clinical stages to evaluate treatment efficacy without bidirectional ambiguity.

---

## ⚙️ Technical Workflow & Methodology

### 1. Data Processing & Feature Engineering (Power Query)
The clinical data was cleansed and transformed in Power BI via Import Mode:
*   **Date Operations:** Engineered dynamic `Length of Stay Days` by calculating the difference between `Admission_Date` and `Discharged_Date`.
*   **Demographic Grouping:** Applied custom conditional logic to bracket continuous `Age` data into categorical `Age Group` segments for population health analysis.
*   **Data Quality Validation:** Standardized staging categorizations and ensured accurate classification of `Outcome` attributes (e.g., Recovered vs. Deceased).

### 2. Advanced Clinical Analytics (DAX)
Implicit measures were strictly avoided. A dedicated `Measurements` table was created to house all explicitly coded DAX, ensuring scalability and clinical precision.
*   **Core Operational Metrics:** `Total Patients`, `Active Treatment Cases`, and `Deceased Count`.
*   **Efficacy Metrics:** 
    *   `Positivity Rate`: Measuring `Total Positive Cases` against total screenings.
    *   `Late Stage Diagnosis Rate`: Identifying the proportion of critical late-stage discoveries.
*   **Outcome Algorithms:** `Mortality Rate` and `Recovery Rate` dynamically evaluated against `Total Positive Cases`.
*   **Resource Management:** `Avg Length of Stay` tracking hospital bed utilization across departments and treatment types.

### 3. Innovative UI / UX Design (Advanced Visuals)
This dashboard utilizes cutting-edge visual techniques to create a premium, immersive medical aesthetic.
*   **Animated DAX Backgrounds:** Features 5 distinct, highly-optimized animated HTML backgrounds generated entirely via DAX measures (e.g., `Clinical Harmony HTML`, `Neural Network HTML`, `Integrated Bio Grid HTML`).
*   **Transparent Overlay System:** Visuals are deliberately styled with translucent properties to blend seamlessly over the interactive backdrops.

---

## 📊 Dashboard Construction & Visuals

The report provides a comprehensive command center for clinical oversight:

### Clinical Command Center
**Goal:** High-level status check for Chief Medical Officers and Department Leads.
*   **Key Performance Indicators (KPIs):** Tracking critical outcomes including Positivity Rate, Mortality Rate, and Average Length of Stay.
*   **Detection Efficacy:** Visualizing the correlation between `Detection_Method` (e.g., MRI, Biopsy) and diagnosis `Stage`.
*   **Operational Flow:** Monitoring `Active Treatment Cases` across different `Hospital_Name` branches and specific `Department` wards.
*   **Demographic Risk Profiling:** Analyzing outcomes distributed by `Cancer_Type`, `Risk_Factors`, and `Age Group`.

---

## 💡 Potential Clinical Insights

Based on the robust data structure established, this dashboard is capable of revealing critical insights such as:

| Insight Theme | Clinical Discovery |
| :--- | :--- |
| **Detection Efficacy** | Identifying which `Detection_Method` yields the highest percentage of early-stage diagnoses vs. late-stage discoveries. |
| **Outcome Correlations** | Tracking the direct impact of `Stage` at diagnosis on the overall `Mortality Rate` vs. `Recovery Rate`. |
| **Operational Bottlenecks** | Pinpointing specific combinations of `Cancer_Type` and `Treatment_Recommended` that drive the highest `Avg Length of Stay`, allowing for better capacity planning. |
| **Risk Factor Analysis** | Correlating high `Risk_Factors` with specific `Age Group` demographic profiles to target preventative screening initiatives. |

---

## 📁 Repository Structure

```text
├── Dataset/
│   └── (Patient medical records data source)
│
├── Report/
│   ├── Cancer_Detection_Dashboard.pbix      # Main Power BI Report
│   └── Cancer_Detection_Project_Report.md   # Detailed Analysis Report
│
├── Images_pdfs/
│   └── Cancer_Detection_Dashboard.pdf       # Dashboard visual reference
│
└── README.md                                # This file
```

---

## 🚀 How to Run This Project

### Connect Power BI
1. Open `Report/Cancer_Detection_Dashboard.pbix` in Power BI Desktop.
2. (If applicable) Navigate to **Transform Data** → **Data Source Settings** → **Change Source** to point to your local dataset path.
3. Click **Refresh** to load the data model and trigger the animated HTML backgrounds.

---

## 👤 Author
**Nikhil Shrivastav**  
*Data Analyst & BI Developer*
