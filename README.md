SHOPY: E-Commerce Sales Analytics — End-to-End Data Pipeline
![Dashboard Page 1](https://github.com/Adarsh-Singh-codes/Shopy_Ecommerce_Sales_Project/blob/main/visuals/d-1.jpg)

A complete end-to-end data analytics project for SHOPY, an e-commerce platform.
This project showcases the full lifecycle of data — from raw CSV files to an interactive Power BI dashboard, using Python ETL, Google BigQuery SQL, and modern BI design practices.
![Project Infographic](https://github.com/Adarsh-Singh-codes/Shopy_Ecommerce_Sales_Project/blob/main/visuals/Asset/Gemini_Generated_Image_8vj9vt8vj9vt8vj9.png)

🚀 Project Highlights

✔ Python-based ETL pipeline (Google Colab)

✔ Data cleaning, wrangling & feature engineering

✔ Data validation & EDA using BigQuery SQL

✔ Cloud-first data storage using GCP

✔ End-to-end transformation into a clean master dataset

✔ Interactive multi-page Power BI dashboard

✔ Actionable insights for business decision-making

![Dashboard Page 2](https://github.com/Adarsh-Singh-codes/Shopy_Ecommerce_Sales_Project/blob/main/visuals/d-2.jpg)

🛠️ Tech Stack
Layer	Tools
ETL & Cleaning	Python (Pandas, NumPy), Google Colab
Data Storage	Google Cloud Storage
Data Warehouse	BigQuery SQL
Visualization	Power BI
Version Control	Git & GitHub
📁 Folder Structure
Shopy_Ecommerce_Sales_Project/
│
├── dashboard/
│   └── SALES_DASHBAOARD.pbix
│
├── data/
│   ├── raw/
│   │   ├── shopee_customers.xlsx
│   │   ├── shopee_sellers.xlsx
│   │   ├── shopee_orders.xlsx
│   │   └── other raw files
│   │
│   └── cleaned/
│       └── Shopy_Master_Cleaned_Final.csv
│
├── reports/
│   └── SHOPY_SALES_DASHBOARD.pdf
│
├── Sql & Python/
│   ├── shopy.py
│   └── shopy_sql.sql
│
├── visuals/
│   ├── dashboard_page1.png
│   ├── dashboard_page2.png
│   └── dashboard_page3.png
│
└── README.md

🔄 End-to-End Workflow
1️⃣ Raw Data Collection

Collected multiple raw datasets:

Orders

Customers

Sellers

Products

Performed initial checks for schema alignment and missing data.
![Python ETL](https://github.com/Adarsh-Singh-codes/Shopy_Ecommerce_Sales_Project/blob/main/visuals/py.png)

2️⃣ Python ETL (Google Colab)

Tasks performed in shopy.py:

Data cleaning

Handling missing values

Removing duplicates

Fixing data types

Merging datasets

Standardizing columns

Feature engineering (delivery time, satisfaction score, etc.)

Output → Clean Master Dataset
data/cleaned/Shopy_Master_Cleaned_Final.csv
![SQL BigQuery](https://github.com/Adarsh-Singh-codes/Shopy_Ecommerce_Sales_Project/blob/main/visuals/sql.png)

3️⃣ Google Cloud Storage → BigQuery

Uploaded cleaned dataset to GCP

Queried and validated using BigQuery SQL

Performed exploratory analysis:

Revenue trends

Category performance

Region-wise sales

Customer ratings

Delivery delays

SQL available in:
Sql & Python/shopy_sql.sql

4️⃣ Exploratory Data Analysis (EDA) Insights

Key observations:

Electronics & Fashion dominate sales and revenue

Higher delivery time contributes to lower customer ratings

Discounts significantly boost order volume

Region-wise performance varies with customer density and logistics

Customer repeat purchases positively correlate with satisfaction scores

5️⃣ Power BI Dashboard

A fully interactive multi-page dashboard:

📊 Page 1 — Sales Overview

Total Revenue

Total Orders

Gross Profit

Average Rating

Region Performance

Category-Level Trends

📈 Page 2 — Customer & Seller Insights

Ratings distribution

Delivery trends

Repeat purchase analysis

City-wise segmentation

📉 Page 3 — Product & Profitability

Profit by category

Discount impact

Time-series charts

High/low performing products

Dashboard file:
dashboard/SALES_DASHBAOARD.pbix
PDF version:
reports/SHOPY_SALES_DASHBOARD.pdf

⭐ Key KPIs
KPI	Definition
Total Revenue	Total GMV generated
Total Orders	Total successful transactions
Avg. Rating	Customer satisfaction score
Avg. Delivery Time	Logistics performance
Repeat Purchase Rate	Customer loyalty metric
Profitability	Net margin after discounts
🌟 Business Value Delivered

Identified bottlenecks in delivery performance

Improved visibility into customer satisfaction patterns

Enabled category-level profit optimization

Mapped high-performing regions & products

Established a scalable analytics pipeline

Delivered a professional BI dashboard for stakeholders
![Dashboard Page 3](https://github.com/Adarsh-Singh-codes/Shopy_Ecommerce_Sales_Project/blob/main/visuals/d-3.jpg)


Introduce anomaly detection for fraud or unusual orders

👤 Author

Adarsh Singh
GitHub: Adarsh-Singh-codes
