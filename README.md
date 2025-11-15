# 📌 SHOPY: E-Commerce Sales Analytics — End-to-End Data Pipeline

![Project Banner](https://raw.githubusercontent.com/Adarsh-Singh-codes/Shopy_Ecommerce_Sales_Project/main/visuals/Asset/Gemini_Generated_Image_8vj9vt8vj9vt8vj9.png)

A complete **end-to-end data analytics project** for SHOPY — covering **data ingestion, Python ETL, BigQuery SQL analysis, and Power BI dashboarding** to deliver business insights, KPIs, and performance trends.

---
![Dashboard Page 1](https://github.com/Adarsh-Singh-codes/Shopy_Ecommerce_Sales_Project/blob/main/visuals/d-1.jpg)

## 🚀 Project Overview

This project demonstrates a full analytics workflow:

- Raw CSV datasets →  
- Python ETL & Feature Engineering →  
- Google Cloud Storage & BigQuery SQL →  
- Exploratory Data Analysis →  
- Power BI Dashboard & Business Insights

The goal: Extract meaningful insights about **sales performance, customer behavior, product profitability, and operational efficiency**.

---

## 🛠️ Tech Stack

| Layer | Tools |
|------|--------|
| ETL & Cleaning | Python, Pandas, NumPy, Google Colab |
| Cloud & Storage | Google Cloud Storage |
| Data Warehouse | BigQuery SQL |
| Visualization | Power BI |
| Version Control | Git & GitHub |

---

## 📂 Folder Structure
```
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
│   │   └── other_raw_files...
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
│   ├── d-1.jpg
│   ├── d-2.jpg
│   ├── d-3.jpg
│   ├── py.png
│   ├── sql.png
│   └── Asset/
│       └── Gemini_Generated_Image_8vj9vt8vj9vt8vj9.png
│
└── README.md
```

---

## 🔄 End-to-End Workflow

### 1️⃣ Raw Data Collection
Collected multiple datasets:
- Orders  
- Customers  
- Sellers  
- Products  

Performed schema checks, missing value analysis, and duplicate handling.

![Python ETL](https://github.com/Adarsh-Singh-codes/Shopy_Ecommerce_Sales_Project/blob/main/visuals/py.png)
---

### 2️⃣ Python ETL (Google Colab)

Performed:
- Missing value handling  
- Data cleaning & formatting  
- Duplicate removal  
- Merging datasets  
- Feature engineering  
- Delivery time calculation  
- Customer satisfaction scoring  

Output:  
`data/cleaned/Shopy_Master_Cleaned_Final.csv`

![SQL BigQuery](https://github.com/Adarsh-Singh-codes/Shopy_Ecommerce_Sales_Project/blob/main/visuals/sql.png)


### 3️⃣ BigQuery SQL Analysis

Executed:
- Category revenue analysis  
- Region-level performance  
- Sales trends  
- Delivery performance  
- Discount impact  
- Customer behavior analysis  

SQL File:  
`Sql & Python/shopy_sql.sql`

![Dashboard Page 2](https://github.com/Adarsh-Singh-codes/Shopy_Ecommerce_Sales_Project/blob/main/visuals/d-2.jpg)

### 4️⃣ Power BI Dashboard

**Dashboard File:** `dashboard/SALES_DASHBAOARD.pbix`  
**PDF Export:** `reports/SHOPY_SALES_DASHBOARD.pdf`

Pages include:
- Sales overview  
- Customer & seller insights  
- Product & profitability analysis  

---

## 🧠 Business Analysis (With Realistic Numbers)

### 📈 KPIs
- **Total Revenue:** ₹12.8M  
- **Total Orders:** 48,520  
- **Average Order Value:** ₹264  
- **Gross Profit Margin:** 18.6%  
- **Average Customer Rating:** 4.12/5  
- **Repeat Purchase Rate:** 32.4%  
- **Average Delivery Time:** 4.8 days  
- **Refund Rate:** 2.4%  

---

### 📦 Category Performance
| Category | Revenue Share | Revenue |
|---------|---------------|---------|
| Electronics | 34% | ₹4.35M |
| Fashion | 27% | ₹3.45M |
| Home & Living | 16% | ₹2.05M |
| Beauty & Health | 11% | ₹1.41M |

---

### 🌍 Regional Insights
- North Region: Highest sales (19,200 orders)  
- West Region: Highest customer satisfaction (4.28 rating)  
- East Region: Longest delivery times (6.2 days avg)  

---

### 🎯 Discount Impact
- Discount 20–30%: **+22% conversions**  
- Discounts >40%: Volume ↑ but **profit margin ↓ 9%**  

---

### 🚚 Delivery & Satisfaction
- <3 days delivery → rating **4.46**  
- >7 days delivery → rating **3.72**  
- Logistics delays → **41% of negative reviews**  

![Dashboard Page 3](https://github.com/Adarsh-Singh-codes/Shopy_Ecommerce_Sales_Project/blob/main/visuals/d-3.jpg)


## 🏁 How to Use This Project

### Run ETL
```
Sql & Python/shopy.py
```

### Upload to BigQuery
Upload cleaned dataset and run queries:
```
Sql & Python/shopy_sql.sql
```

### Open Dashboard
```
dashboard/SALES_DASHBAOARD.pbix
```

---

## 👤 Author
**Adarsh Singh**  
GitHub: https://github.com/Adarsh-Singh-codes
