CREATE DATABASE student_db;
USE student_db;
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    class_name VARCHAR(50)
);
INSERT INTO students VALUES
(1, 'Nguyen Van A', 'CNTT1'),
(2, 'Tran Thi B', 'CNTT2'),
(3, 'Le Van C', 'CNTT1');
DELIMITER //

CREATE PROCEDURE sp_get_all_students()
BEGIN
    SELECT * FROM students;
END //

DELIMITER ;
CALL sp_get_all_students();