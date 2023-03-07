-- Delete `employee`table in two data  
DELETE FROM 
  `employee`.`employee_hobby` 
WHERE 
  `employee_id` IN (3, 7);

-- Delete `employee`table in two data
DELETE FROM 
  `employee_salary` 
WHERE 
  `employee_id` IN (3, 7);

-- Delete `employee`table in two data 
DELETE FROM 
  `employee` 
WHERE 
  IN (3, 7);

-- Delete `employee`table in two data
DELETE FROM 
  `hobby` 
WHERE 
  NAME IN ("Singing", "Acting");

-- delete emp,salary from `employee`.`employee` as emp inner join `employee`.`employee_salary` as salary on emp.`id` = salary.`employee_id` where emp.`id` in (3,7);
-- 
