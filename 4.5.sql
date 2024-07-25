SELECT
	categories_name, 
	COUNT(*),
    AVG(order_details_quantity) AS order_details_quantity_avg 
FROM temp_order_summary
GROUP BY categories_name 
HAVING order_details_quantity_avg > 21