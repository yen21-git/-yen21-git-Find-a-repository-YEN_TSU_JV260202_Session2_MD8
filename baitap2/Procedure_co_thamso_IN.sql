CREATE DATABASE 
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10,2),
    category VARCHAR(50)
);
DELIMITER //

CREATE PROCEDURE sp_get_products_by_category(
    IN p_category VARCHAR(50)
)
BEGIN
    SELECT *
    FROM products
    WHERE category = p_category;
END //

DELIMITER ;
CALL sp_get_products_by_category('Điện thoại');