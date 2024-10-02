SELECT 
  discounted_price
FROM amazon_sales_data;
SELECT 
  MIN(REPLACE(REPLACE(discounted_price, '₹', ''), ',', '')::FLOAT) AS min_price,
  MAX(REPLACE(REPLACE(discounted_price, '₹', ''), ',', '')::FLOAT) AS max_price,
  AVG(REPLACE(REPLACE(discounted_price, '₹', ''), ',', '')::FLOAT) AS avg_price
FROM amazon_sales_data;
