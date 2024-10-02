SELECT *,
       ROW_NUMBER() OVER (PARTITION BY product_id, user_id ORDER BY product_id) AS row_num
FROM amazon_sales_data;
