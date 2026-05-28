CREATE DATABASE employees_db;
USE employees_db;

CREATE TABLE employees (
emp_id INT PRIMARY KEY,
full_name VARCHAR(100),
salary DECIMAL (15,2),
department VARCHAR(100)
);

DELIMITER //

CREATE PROCEDURE sp_check_employee_income(
IN p_full_name VARCHAR(100),
IN p_salary DECIMAL (15,2)
)


BEGIN
 IF p_salary >=15000000 THEN 
	SELECT 
  p_full_name AS emp_name,
  'Thu nhap cao' AS income_level;
  ELSEIF  p_salary >=8000000 THEN 
	SELECT 
  p_full_name AS emp_name,
  'Thu nhap TB' AS income_level;
  ELSE 
  SELECT 
  p_full_name AS emp_name,
  'Thu nhap thap' AS income_level;
  END IF;
END//

DELIMITER ;  
 
 Call sp_check_employee_income('Nguyen Van A',16000000);
  
