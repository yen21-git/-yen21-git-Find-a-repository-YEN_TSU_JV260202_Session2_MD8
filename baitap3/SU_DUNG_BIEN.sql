CREATE DATABASE employees_db;
USE employees_db;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    salary DECIMAL(10,2)
);
DELIMITER //

CREATE PROCEDURE sp_get_avg_salary()
BEGIN
    -- Khai báo biến lưu lương trung bình
    DECLARE avg_salary DECIMAL(10,2);

    -- Gán giá trị cho biến
    SELECT AVG(salary)
    INTO avg_salary
    FROM employees;

    -- Hiển thị kết quả
    SELECT avg_salary AS average_salary;
END //

DELIMITER ;
CALL sp_get_avg_salary();