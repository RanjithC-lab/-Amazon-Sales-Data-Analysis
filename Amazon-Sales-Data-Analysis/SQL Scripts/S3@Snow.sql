COPY INTO amazon_sales_data
FROM @amazon_sales_stage/amazon.csv
FILE_FORMAT = (TYPE = 'CSV' FIELD_OPTIONALLY_ENCLOSED_BY = '"' SKIP_HEADER = 1);
