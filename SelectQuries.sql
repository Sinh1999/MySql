-- Get all date for employee table 
SELECT 
  * 
FROM 
  `employee`.`employee`;
  
-- Get all date for employee_hobby table
SELECT 
  * 
FROM 
  `employee`.`employee_hobby`;
  
-- Get all date for employee_salary table  
SELECT 
  * 
FROM 
  `employee`.`employee_salary`;

-- Get all date for employee table
SELECT 
  * 
FROM 
  `employee`.`hobby`;

-- Get all employee name, all hobby_name in single column
SELECT 
  (
    SELECT 
      employee.`first_name` 
    FROM 
      `employee`.`employee` AS employee 
    WHERE 
      employee.`id` = employee_hobby.`employee_id`
  ) AS employee_name, 
  (
    SELECT 
      hobby.name 
    FROM 
      `employee`.`hobby` AS hobby 
    WHERE 
      hobby.id = hobby.`employee_hobby_id`
  ) AS hobby_name 
FROM 
  `employee_hobby` AS employee_hobby;
 
-- Get employee name, his/her employee_salary 
SELECT 
  employee.`first_name`, 
  employee.`last_name`, 
  salary.`salary` 
FROM 
  `employee`.`employee_salary` AS salary 
  INNER JOIN `employee`.`employee` AS employee ON salary.`employee_id` = employee.`id` 
WHERE 
  employee.id = 2;
  
-- Get employee name, total salary of employee, hobby name  
SELECT 
  CONCAT(
    employee.`first_name`, ' ', employee.`last_name`
  ) AS employee_name, 
  GROUP_CONCAT(
    DISTINCT(
      SELECT 
        hobby.name 
      FROM 
        `employee`.`hobby` AS hobby 
      WHERE 
        hobby.id = employee_hobby.`employee_hobby_id`
    )
  ) AS hobby, 
  SUM(DISTINCT salary.`salary`) AS total_salary 
FROM 
  `employee`.`employee` AS employee 
  INNER JOIN `employee`.`employee_salary` AS salary ON employee.id = salary.`employee_id` 
  INNER JOIN `employee`.`employee_hobby` AS employee_hobby ON salary.`employee_id` = employee_hobby.`employee_id` 
WHERE 
  employee.`id` = 2;
  
