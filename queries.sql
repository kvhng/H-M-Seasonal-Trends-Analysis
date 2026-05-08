```sql
SELECT 
    strftime('%Y-%m', t.t_dat) AS month,
    a.product_type_name,
    COUNT(*) AS num_transactions,
    ROUND(SUM(t.price), 4) AS total_revenue
FROM transactions_train t
JOIN articles a ON t.article_id = a.article_id
GROUP BY month, a.product_type_name
ORDER BY month, total_revenue DESC;
```
