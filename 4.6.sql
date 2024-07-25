SELECT
	categories_name, 
	COUNT(*) AS total_rows,
    AVG(order_details_quantity) AS order_details_quantity_avg 
FROM temp_order_summary
GROUP BY categories_name 
HAVING order_details_quantity_avg > 21
ORDER BY total_rows DESC