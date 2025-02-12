# Homework 3: BigQuery & Data Warehousing

## 🚀 Overview
This repository contains my work for Homework 3 of my Data Engineering learning journey. The goal of this project was to **load, query, and optimize NYC Yellow Taxi trip data** in **Google BigQuery**.


```
## 🛠️ Steps Taken
### **1️⃣ Data Ingestion**
- Downloaded **January–June 2024 NYC Yellow Taxi trip data** (Parquet format).
- Uploaded the data to **Google Cloud Storage (GCS)** using `load_yellow_taxi_data.py`.
- Created an **External Table** in BigQuery to query the data directly from GCS.
- Created a **Materialized Table** in BigQuery for better performance.

### **2️⃣ Data Exploration & Querying**
- Counted total records and unique `PULocationID`s.
- Compared bytes processed between **External Table vs Materialized Table**.
- Queried trips with `fare_amount = 0` to identify possible anomalies.

### **3️⃣ Optimizations**
- Created **Partitioned Table** (by `tpep_dropoff_datetime`) to improve query performance.
- Created **Clustered Table** (by `VendorID`) to optimize filtering and sorting.
- Compared query performance before and after optimizations.

## 📜 SQL Queries

All SQL queries used in this homework are in the `sql_queries/` folder. Key files include:
- `create_tables.sql`: Defines the **external** and **materialized** tables.
- `partitioning.sql`: Queries demonstrating **partitioning benefits**.
- `clustering.sql`: Queries using **clustering for efficiency**.
- `analysis.sql`: General **data exploration** queries.
- `optimizations.sql`: Queries showcasing **query cost reductions**.

## 🐍 Running the Python Script
To upload data from local storage to Google Cloud Storage:

1. Install dependencies:
```sh
pip install -r requirements.txt
```
2. Authenticate with Google Cloud:
```sh
gcloud auth activate-service-account --key-file=your-key.json
```
3. Run the script:
```sh
python load_yellow_taxi_data.py
```
