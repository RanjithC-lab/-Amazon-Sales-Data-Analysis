SELECT 
  CASE 
    WHEN REPLACE(REPLACE(discounted_price, '₹', ''), ',', '')::FLOAT < 1000 THEN '< ₹1000'
    WHEN REPLACE(REPLACE(discounted_price, '₹', ''), ',', '')::FLOAT BETWEEN 1000 AND 5000 THEN '₹1000 - ₹5000'
    WHEN REPLACE(REPLACE(discounted_price, '₹', ''), ',', '')::FLOAT BETWEEN 5000 AND 10000 THEN '₹5000 - ₹10000'
    ELSE '> ₹10000'
  END AS price_range,
  COUNT(*) AS product_count
FROM amazon_sales_data
GROUP BY price_range
ORDER BY price_range;
