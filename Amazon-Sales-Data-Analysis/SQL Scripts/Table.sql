CREATE OR REPLACE TABLE amazon_sales_data (
    product_id STRING,
    product_name STRING,
    category STRING,
    discounted_price STRING,  -- Store prices as STRING to include symbols
    actual_price STRING,      -- Store prices as STRING to include symbols
    discount_percentage STRING,
    rating STRING,
    rating_count STRING,
    about_product STRING,
    user_id STRING,
    user_name STRING,
    review_id STRING,
    review_title STRING,
    review_content STRING,
    img_link STRING,
    product_link STRING
);
