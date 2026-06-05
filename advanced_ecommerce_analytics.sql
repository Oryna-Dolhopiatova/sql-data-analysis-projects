-- ====================================================================
-- PROJECT: E-commerce Sales Analysis & Data Audit (Czech Market, 2026)
-- AUTHOR: Oryna Dolhopiatova
-- TOOL: PostgreSQL
-- ====================================================================

-- Task 1: Identifying health and fitness related product categories (Marketing Request)
-- Business Goal: Extract all sales records where the category contains the keyword 'Nutrition'
SELECT * 
FROM czech_store_sales 
WHERE category LIKE '%Nutrition%';


-- Task 2: Isolating regional sales data (Logistics Request)
-- Business Goal: Exclude major metropolitan hubs (Prague and Brno) and eliminate NULL values for regional supply chain analysis
SELECT * 
FROM czech_store_sales 
WHERE city NOT IN ('Prague', 'Brno') 
  AND city IS NOT NULL;


-- Task 3: Multi-conditional audit for potential system errors or fraud (Security Request)
-- Business Goal: Detect suspicious electronics order cancellations that have negative or anomalously high amounts
SELECT * 
FROM czech_store_sales 
WHERE category = 'Electronics' 
  AND delivery_status = 'Cancelled' 
  AND NOT BETWEEN 0 AND 15000;
