SELECT
	categories_name, 
	COUNT(*),
    AVG(order_details_quantity) 
FROM temp_order_summary
GROUP BY categories_name 