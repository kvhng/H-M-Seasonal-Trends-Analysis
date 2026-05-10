-- Checking for NULL values; Any column where the valid count is less than total_rows has NULL values

SELECT
    COUNT(*) AS total_rows,
    COUNT(t_dat) AS valid_dates,
    COUNT(customer_id) AS valid_customers,
    COUNT(price) AS valid_prices,
    COUNT(article_id) AS valid_articles
FROM transactions_train;

-- Validate ISO 8601 date formatting consistency

SELECT DISTINCT
    LENGTH(t_dat) AS date_length,
    COUNT(*) AS count
FROM transactions_train;

-- Identify duplicate transaction records

SELECT 
    t_dat, 
    customer_id, 
    article_id,
    price,
    sales_channel_id,
    COUNT(*) AS occurrences
FROM transactions_train
GROUP BY t_dat, customer_id, article_id, price, sales_channel_id
HAVING COUNT(*) > 1
ORDER BY occurrences DESC;

-- Removing duplicate transaction records with negligible impact on aggregate trends

CREATE TABLE transactions_clean AS
SELECT DISTINCT
	t_dat,
	customer_id,
	article_id,
	price,
	sales_channel_id
FROM transactions_train;

-- Check for inconsistent product naming conventions

SELECT DISTINCT product_type_name
FROM articles
ORDER BY product_type_name;

-- Correcting inconsistencies in spelling

UPDATE articles
SET product_type_name = 'Dog wear'
WHERE product_type_name = 'Dog Wear';

UPDATE articles
SET product_type_name = 'Flat shoes'
WHERE product_type_name = 'Flat shoe';

UPDATE articles
SET product_type_name = 'Earrings'
WHERE product_type_name = 'Earring';


-- Joining cleaned transaction & article tables to facilitate exploratory data analysis in Excel

SELECT 
    strftime('%Y-%m', t.t_dat) AS month,
    a.product_type_name,
    COUNT(*) AS num_transactions,
    SUM(CASE WHEN t.sales_channel_id = 1 THEN 1 ELSE 0 END) AS in_store_transactions,
    SUM(CASE WHEN t.sales_channel_id = 2 THEN 1 ELSE 0 END) AS online_transactions,
    ROUND(SUM(t.price), 4) AS total_revenue
FROM transactions_clean t
JOIN articles a ON t.article_id = a.article_id
GROUP BY month, a.product_type_name
ORDER BY month, total_revenue DESC;
