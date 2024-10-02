SELECT 
  category,
  AVG(REPLACE(REPLACE(discounted_price, '₹', ''), ',', '')::FLOAT) AS avg_price
FROM amazon_sales_data
GROUP BY category
ORDER BY avg_price DESC;
