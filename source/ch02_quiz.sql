-- Active: 1749606776741@@127.0.0.1@3306@quiz
CREATE DATABASE quiz;
USE quiz;

CREATE TABLE employees (
	id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    position VARCHAR(50),
    salary INT
);

INSERT INTO 
	employees (id, name, department, position, salary)
VALUES 
	(1, '김철수', '개발', '사원', 3500000),
	(2, '박영희', '개발', '대리', 4200000),
	(3, '이민호', '기획', '팀장', 5500000),
	(4, '최수진', '기획', '사원', 3300000),
	(5, '정하늘', '영업', '사원', 3100000),
	(6, '오준수', '영업', '대리', 4000000),
	(7, '서지우', '마케팅', '팀장', 6000000),
	(8, '이은지', '마케팅', '사원', 3200000),
	(9, '안현준', '개발', '팀장', 5800000),
	(10, '홍길동', '영업', '사원', 3000000);
    
INSERT INTO
	employees (id, name, department, position, salary)
VALUE 
	(11, '장미희', '기획', '사원', 3400000);
    
SELECT * FROM employees;

SELECT name, salary
FROM employees
WHERE department = '개발';

SELECT name, department
FROM employees
WHERE position = '팀장';

SET SQL_SAFE_UPDATES = 0;

UPDATE employees
SET salary = salary + 300000
WHERE department = '영업';

DELETE FROM employees
WHERE salary <= 3200000;

SELECT * FROM employees;

SET SQL_SAFE_UPDATES = 1;

