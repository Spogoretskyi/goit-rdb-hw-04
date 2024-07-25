DROP TABLE IF EXISTS temp_order_summary;
CREATE TEMPORARY TABLE temp_order_summary AS
SELECT 
    order_details.id AS order_details_id,
    products.id AS product_id,
    products.name AS product_name,
    suppliers.id AS supplier_id,
    suppliers.name AS supplier_name,
    suppliers.contact AS supplier_contact,
    suppliers.address AS supplier_address,
    suppliers.city AS supplier_city,
    suppliers.postal_code AS supplier_postal_code,
    suppliers.country AS supplier_country,
    suppliers.phone AS supplier_phone,
    categories.id AS categorie_id,
    categories.name AS categories_name,
    categories.description AS categories_description,
    products.unit AS product_unit,
    products.price AS product_price,
    customers.id AS customer_id,
    customers.name AS customer_name,
    customers.contact AS customer_contact,
    customers.address AS customer_address,
    customers.city AS customer_city,
    customers.postal_code AS customer_postal_code,
    customers.country AS customer_country,
    employees.employee_id AS employee_id,
    employees.last_name AS employee_last_name,
    employees.first_name AS employee_first_name,
    employees.birthdate AS employee_birthdate,
    employees.photo AS employee_photo,
    employees.notes AS employee_notes,
    order_details.quantity AS order_details_quantity,
    orders.id AS order_id,
    orders.date AS order_date,
    shippers.id AS shipper_id,
    shippers.name AS shippers_name,
    shippers.phone AS shippers_phone
FROM order_details
INNER JOIN orders ON order_details.order_id = orders.id 
INNER JOIN products ON order_details.product_id = products.id
INNER JOIN suppliers ON products.supplier_id = suppliers.id
INNER JOIN categories ON products.category_id = categories.id
INNER JOIN customers ON orders.customer_id = customers.id
INNER JOIN employees ON orders.employee_id = employees.employee_id
INNER JOIN shippers ON orders.shipper_id = shippers.id;