# SQL-DataWarehouse
📖 Overview

This project demonstrates a modern Data Warehouse Architecture built on the Medallion (Bronze–Silver–Gold) design pattern.
It follows a structured approach to extract, transform, and load (ETL) data from multiple sources into a centralized data warehouse for analytics, BI, and machine learning use cases.

# High-Level Architecture

The architecture follows three data layers:

Layer	Description	Object Type	Data Model	Purpose
Bronze Layer	Raw, unprocessed data as-is from source systems (e.g., CRM, ERP).	Tables	None (as-is)	Used for traceability, debugging, and historical preservation.
Silver Layer	Cleaned, standardized, and enriched data ready for analysis.	Tables	None (as-is)	Applied for cleansing, normalization, and standardization.
Gold Layer	Business-ready data for reporting and analytics.	Views	Star Schema / Aggregated Tables	Used for BI dashboards, ML models, and reporting.
<img width="1280" height="744" alt="image" src="https://github.com/user-attachments/assets/31ba6426-32f6-4f25-9b95-1ef2a96a97f5" />
Used for Power BI / Tableau Reporting, Ad-hoc SQL queries, and Machine Learning models.
<img width="1280" height="692" alt="image" src="https://github.com/user-attachments/assets/7d2b9571-01a2-4115-91f0-a8b865f20de6" />

# Data Flow
<img width="1024" height="1024" alt="image" src="https://github.com/user-attachments/assets/d2775579-071f-4a6a-8a3a-71ea7105e4b0" />

<img width="1024" height="1024" alt="image" src="https://github.com/user-attachments/assets/37d080a7-2804-4738-ad19-5fd3210320b6" />

# Use Cases
1.Business Intelligence dashboards (Power BI / Tableau)
2.Ad-hoc SQL analysis
3.Machine Learning model training (fraud detection, churn analysis, etc.)
4.Performance monitoring and KPI reporting

# SQL-Data-Warehouse-Project/
│
├── 📁 data_sources/
│   ├── crm_data.csv
│   └── erp_data.csv
│
├── 📁 etl_scripts/
│   ├── bronze_load.sql
│   ├── silver_transformations.sql
│   ├── gold_views.sql
│
├── 📁 reports/
│   ├── powerbi_dashboard.pbix
│   └── tableau_report.twb
│
├── 📁 docs/
│   ├── architecture_diagram.png
│   └── medallion_layers.png
│
└── README.md

Notion Page: https://www.notion.so/SQL-Data-Warehouse-Project-2788b36db6b48026b3bee43073af81a6?source=copy_link

