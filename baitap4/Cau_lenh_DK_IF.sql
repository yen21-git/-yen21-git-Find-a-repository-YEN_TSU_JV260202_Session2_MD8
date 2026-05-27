CREATE DATABASE order_db;
USE order_db;
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    total_amount DECIMAL(15,2)
);
DELIMITER //

CREATE PROCEDURE sp_check_order_value(
    IN p_total_amount DECIMAL(15,2)
)
BEGIN
    IF p_total_amount >= 5000000 THEN
        SELECT 'Đơn hàng giá trị cao' AS message;
    ELSE
        SELECT 'Đơn hàng bình thường' AS message;
    END IF;
END //

DELIMITER ;

CALL sp_check_order_value(7000000);
