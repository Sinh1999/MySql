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
  id IN (3, 7);

-- Delete `employee`table in two data
DELETE FROM 
  `hobby` 
WHERE 
  NAME IN ("Singing", "Acting");

