# E-commerce Sales Analysis & Data Audit (SQL)

## 📌 Project Overview
In this project, I acted as a Junior Data Analyst for a fast-growing Czech e-commerce platform. The primary objective was to perform deep data filtering, quality auditing, and business analysis on a raw transactional dataset from 2026. The insights generated help optimize marketing campaigns, refine regional logistics, and assist the security team in identifying transactional anomalies and system errors.

## 📊 Dataset Description
The analysis utilizes the `czech_store_sales` table (250 records), which reflects a realistic retail database containing various data anomalies and "dirty" records.
**Key Fields:**
* `order_id` — Unique transaction identifier
* `customer_id` — Unique customer identifier
* `order_date` — Date of transaction (Timeline: Jan - May 2026)
* `city` — Delivery location (Prague, Brno, Ostrava, Plzen, etc.)
* `category` — Product department (*Electronics, Clothing, Food & Nutrition, etc.*)
* `amount_czk` — Order value in Czech Korunas (includes system errors: `0` and negative values)
* `delivery_status` — Current status of the shipment (*Delivered, Cancelled, In Progress*)

## 🛠️ SQL Skills & Operators Demonstrated:
* **Basic Filtering & Data Retrieval:** `SELECT`, `FROM`, comparison operators (`>`, `<=`)
* **Complex Business Logic:** Advanced conditional filtering using `AND` & `OR` combined with proper parenthesis management `()` to control evaluation priority.
* **Pattern Matching & Range Filtering:** Substring searching via `LIKE '%...%'` and boundary filtering with `BETWEEN`.
* **Data Quality & Integrity Audits:** Filtering lists via `NOT IN` and detecting missing data with `IS NULL` / `IS NOT NULL`.

## 🎯 Business Problems Solved in the Code:
1. **For Marketing:** Generated a targeted customer list purchasing health-related products (`Nutrition`) to fuel upcoming email campaigns.
2. **For Logistics:** Isolated regional orders outside major tech hubs (excluding Prague and Brno) to help optimize suburban courier routing.
3. **For Finance:** Filtered out high-value transactions (> 15,000 CZK) to support the CFO's quarterly financial audit.
4. **For Information Security:** Developed a robust multi-conditional script that successfully flagged high-risk cancelled orders within the Electronics department that contained negative return values.

## 📂 How to Explore the Project
1. The complete production-ready SQL script can be found in the file: `advanced_ecommerce_analytics.sql`
2. The raw dataset used to populate the PostgreSQL database is attached in the root directory.
