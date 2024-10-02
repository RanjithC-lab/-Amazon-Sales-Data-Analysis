DELETE FROM amazon_sales_data
WHERE (product_id, user_id) IN (
  SELECT product_id, user_id
  FROM (
    SELECT product_id, user_id,
           ROW_NUMBER() OVER (PARTITION BY product_id, user_id ORDER BY product_id) AS row_num
    FROM amazon_sales_data
  )
  WHERE row_num > 1
);

