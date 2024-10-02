CREATE OR REPLACE STAGE amazon_sales_stage
URL = 's3://amazon-sales-bucket/'
CREDENTIALS = (AWS_KEY_ID = ' ' AWS_SECRET_KEY = '')
FILE_FORMAT = (TYPE = 'CSV');
