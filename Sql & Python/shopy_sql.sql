SELECT *
FROM `scalaa.shopy_dataset.shopy_master_cleaned`
LIMIT 10;

SELECT COUNT(*) AS total_rows
FROM `scalaa.shopy_dataset.shopy_master_cleaned`;

SELECT
  COUNT(order_id) AS order_id_count,
  COUNT(order_date) AS order_date_count,
  COUNT(delivery_date) AS delivery_date_count,
  COUNT(customer_id) AS customer_id_count,
  COUNT(final_price) AS final_price_count,
  COUNT(quantity) AS quantity_count
FROM `scalaa.shopy_dataset.shopy_master_cleaned`;


CREATE OR REPLACE TABLE `scalaa.shopy_dataset.shopy_master_cleaned_clean` AS
SELECT *
FROM `scalaa.shopy_dataset.shopy_master_cleaned`
WHERE order_id IS NOT NULL
  AND order_date IS NOT NULL
  AND final_price > 0
  AND quantity > 0
  AND region IN ('North','South','East','West')
  AND payment_method IN ('Credit Card','Debit Card','Wallet','Upi','Cod')
  AND delivery_status IN ('Delivered','Cancelled','Pending');

SELECT COUNT(*) AS total_clean_rows
FROM `scalaa.shopy_dataset.shopy_master_cleaned_clean`;

SELECT *,
  CASE
    WHEN delivery_date IS NULL THEN 'Missing Delivery Date'
    WHEN final_price <= 0 THEN 'Invalid Final Price'
    ELSE 'Clean'
  END AS data_quality_flag
FROM `scalaa.shopy_dataset.shopy_master_cleaned`;

SELECT 
  delivery_status,
  COUNT(*) AS order_count
FROM 
  `scalaa.shopy_dataset.shopy_master_cleaned_clean`
GROUP BY 
  delivery_status
ORDER BY 
  order_count DESC;

  SELECT 
  region,
  COUNT(*) AS total_orders,
  ROUND(AVG(final_price),2) AS avg_order_value
FROM 
  `scalaa.shopy_dataset.shopy_master_cleaned_clean`
GROUP BY 
  region
ORDER BY 
  total_orders DESC;

  SELECT 
  product_category,
  COUNT(*) AS total_orders,
  ROUND(SUM(final_price), 2) AS total_revenue,
  ROUND(AVG(final_price),2) AS avg_order_value
FROM 
  `scalaa.shopy_dataset.shopy_master_cleaned_clean`
GROUP BY 
  product_category
ORDER BY 
  total_orders DESC;

SELECT
  payment_method,
  COUNT(*) AS total_orders,
  ROUND(SUM(final_price), 2) AS total_revenue,
  ROUND(AVG(final_price), 2) AS avg_order_value
FROM
  `scalaa.shopy_dataset.shopy_master_cleaned_clean`
GROUP BY
  payment_method
ORDER BY
  total_revenue DESC;

SELECT
  region,
  COUNT(*) AS total_orders,
  ROUND(SUM(final_price), 2) AS total_revenue,
  ROUND(AVG(final_price), 2) AS avg_order_value
FROM
  `scalaa.shopy_dataset.shopy_master_cleaned_clean`
GROUP BY
  region
ORDER BY
  total_revenue DESC;

SELECT
  payment_method,
  COUNT(*) AS total_orders,
  ROUND(SUM(final_price), 2) AS total_revenue,
  ROUND(AVG(final_price), 2) AS avg_order_value
FROM
  `scalaa.shopy_dataset.shopy_master_cleaned_clean`
GROUP BY
  payment_method
ORDER BY
  total_orders DESC;

SELECT
  delivery_status,
  COUNT(*) AS total_orders,
  ROUND(AVG(delivery_time_days), 2) AS avg_delivery_days,
  SUM(CASE WHEN delay_reason IS NOT NULL THEN 1 ELSE 0 END) AS delayed_orders
FROM
  `scalaa.shopy_dataset.shopy_master_cleaned_clean`
GROUP BY
  delivery_status
ORDER BY
  total_orders DESC;

  SELECT
  customer_segment,
  COUNT(DISTINCT customer_id) AS total_customers,
  SUM(CASE WHEN repeat_purchase_flag = TRUE THEN 1 ELSE 0 END) AS repeat_orders,
  ROUND(SUM(CASE WHEN repeat_purchase_flag = TRUE THEN 1 ELSE 0 END) / COUNT(DISTINCT customer_id) * 100, 2) AS repeat_purchase_percent
FROM
  `scalaa.shopy_dataset.shopy_master_cleaned_clean`
GROUP BY
  customer_segment
ORDER BY
  repeat_purchase_percent DESC;

  SELECT
  payment_method,
  COUNT(order_id) AS total_orders,
  ROUND(AVG(final_price), 2) AS avg_order_value,
  SUM(final_price) AS total_revenue
FROM
  `scalaa.shopy_dataset.shopy_master_cleaned_clean`
GROUP BY
  payment_method
ORDER BY
  total_revenue DESC;

SELECT
  logistics_partner,
  COUNT(order_id) AS total_orders,
  SUM(CASE WHEN delivery_status = 'Delivered' THEN 1 ELSE 0 END) AS delivered_orders,
  SUM(CASE WHEN delivery_status = 'Cancelled' THEN 1 ELSE 0 END) AS cancelled_orders,
  ROUND(AVG(delivery_time_days), 2) AS avg_delivery_time
FROM
  `scalaa.shopy_dataset.shopy_master_cleaned_clean`
GROUP BY
  logistics_partner
ORDER BY
  delivered_orders DESC;

  SELECT
  customer_segment,
  COUNT(customer_id) AS total_customers,
  ROUND(AVG(satisfaction_score), 2) AS avg_satisfaction,
  ROUND(AVG(customer_rating), 2) AS avg_rating,
  SUM(CASE WHEN repeat_purchase_flag = TRUE THEN 1 ELSE 0 END) AS repeat_customers
FROM
  `scalaa.shopy_dataset.shopy_master_cleaned_clean`
GROUP BY
  customer_segment
ORDER BY
  avg_satisfaction DESC;

  SELECT
  product_category,
  COUNT(order_id) AS total_orders,
  SUM(CASE WHEN repeat_purchase_flag = TRUE THEN 1 ELSE 0 END) AS repeat_orders,
  ROUND(SUM(CASE WHEN repeat_purchase_flag = TRUE THEN 1 ELSE 0 END)/COUNT(order_id)*100, 2) AS repeat_order_percentage
FROM
  `scalaa.shopy_dataset.shopy_master_cleaned_clean`
GROUP BY
  product_category
ORDER BY
  repeat_order_percentage DESC;

  WITH
-- Total orders
total_orders AS (
  SELECT COUNT(*) AS total_orders FROM `scalaa.shopy_dataset.shopy_master_cleaned_clean`
),
-- Delivered orders
delivered_orders AS (
  SELECT COUNT(*) AS delivered_orders
  FROM `scalaa.shopy_dataset.shopy_master_cleaned_clean`
  WHERE delivery_status = 'Delivered'
),
-- Cancelled orders
cancelled_orders AS (
  SELECT COUNT(*) AS cancelled_orders
  FROM `scalaa.shopy_dataset.shopy_master_cleaned_clean`
  WHERE delivery_status = 'Cancelled'
),
-- Average order value
avg_order AS (
  SELECT ROUND(AVG(final_price),2) AS avg_order_value
  FROM `scalaa.shopy_dataset.shopy_master_cleaned_clean`
),
-- Average discount
avg_discount AS (
  SELECT ROUND(AVG(discount_percent),2) AS avg_discount
  FROM `scalaa.shopy_dataset.shopy_master_cleaned_clean`
),
-- Total revenue
total_revenue AS (
  SELECT ROUND(SUM(final_price),2) AS total_revenue
  FROM `scalaa.shopy_dataset.shopy_master_cleaned_clean`
)
-- Combine all results
SELECT
  t.total_orders,
  d.delivered_orders,
  c.cancelled_orders,
  a.avg_order_value,
  ad.avg_discount,
  tr.total_revenue
FROM total_orders t
CROSS JOIN delivered_orders d
CROSS JOIN cancelled_orders c
CROSS JOIN avg_order a
CROSS JOIN avg_discount ad
CROSS JOIN total_revenue tr;








