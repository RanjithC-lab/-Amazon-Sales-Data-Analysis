SELECT 
  CORR(
    TRY_TO_NUMBER(REPLACE(REPLACE(discounted_price, '₹', ''), ',', ''))::FLOAT,
    TRY_TO_NUMBER(rating)::FLOAT
  ) AS price_rating_correlation
FROM amazon_sales_data;
