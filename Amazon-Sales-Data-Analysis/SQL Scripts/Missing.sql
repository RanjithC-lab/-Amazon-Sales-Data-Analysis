-- Check for missing values in each column
SELECT 
  SUM(CASE WHEN product_id IS NULL THEN 1 ELSE 0 END) AS missing_product_id,
  SUM(CASE WHEN product_name IS NULL THEN 1 ELSE 0 END) AS missing_product_name,
  SUM(CASE WHEN discounted_price IS NULL THEN 1 ELSE 0 END) AS missing_discounted_price,
  SUM(CASE WHEN actual_price IS NULL THEN 1 ELSE 0 END) AS missing_actual_price,
  SUM(CASE WHEN rating IS NULL THEN 1 ELSE 0 END) AS missing_rating
FROM amazon_sales_data;
