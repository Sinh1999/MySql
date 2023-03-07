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
SELECT (SELECT emp.`first_name` FROM `employee`.`employee` AS emp WHERE emp.`id` = hobby.`employee_id`) AS employee_name,
SELECT 
  (
    SELECT 
      emp.`first_name` 
    FROM 
      `employee`.`employee` AS emp 
    WHERE 
      emp.`id` = hobby.`employee_id`
  ) AS employee_name, 
  (
    SELECT 
      h.name 
    FROM 
      `employee`.`hobby` AS h 
    WHERE 
      h.id = hobby.`employee_hobby_id`
  ) AS hobby_name 
FROM 
  `employee_hobby` AS hobby;
 
-- Get employee name, his/her employee_salary 
SELECT 
  emp.`first_name`, 
  emp.`last_name`, 
  salary.`salary` 
FROM 
  `employee`.`employee_salary` AS salary 
  INNER JOIN `employee`.`employee` AS emp ON salary.`employee_id` = emp.`id` 
WHERE 
  emp.id = 2;
  
-- Get employee name, total salary of employee, hobby name  
SELECT 
  CONCAT(
    emp.`first_name`, ' ', emp.`last_name`
  ) AS employee_name, 
  GROUP_CONCAT(
    DISTINCT(
      SELECT 
        h.name 
      FROM 
        `employee`.`hobby` AS h 
      WHERE 
        h.id = hobby.`employee_hobby_id`
    )
  ) AS hobbay, 
  SUM(DISTINCT salar.`salary`) AS total_salary 
FROM 
  `employee`.`employee` AS emp 
  INNER JOIN `employee`.`employee_salary` AS salar ON emp.id = salar.`employee_id` 
  INNER JOIN `employee`.`employee_hobby` AS hobby ON salar.`employee_id` = hobby.`employee_id` 
WHERE 
  emp.`id` = 2;
  
--   select Concat(`first_name`,`last_name`) from `employee`.`employee` where id =5 ;
--   
--   select sum(`salary`) from `employee_salary` where `employee_id` =2 ;