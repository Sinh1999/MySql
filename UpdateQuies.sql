-- Update for `employee` table data 
UPDATE 
  `employee`.`employee` 
SET 
  `first_name` = 'Susil', 
  `last_name` = 'Rathod', 
  `age` = '19', 
  `mobile_number` = '987457465231', 
  `address` = 'Kolkata' 
WHERE 
  `id` = '5';
UPDATE 
  `employee`.`employee` 
SET 
  `first_name` = 'Shivani', 
  `last_name` = 'Rajput', 
  `age` = '20', 
  `mobile_number` = '7894651231', 
  `address` = 'Rajstan' 
WHERE 
  `id` = '6';
UPDATE 
  `employee`.`employee` 
SET 
  `first_name` = 'Rahul', 
  `last_name` = 'Umaretiya', 
  `age` = '29', 
  `mobile_number` = '46137894565', 
  `address` = 'Surat' 
WHERE 
  `id` = '7';
UPDATE 
  `employee`.`employee` 
SET 
  `first_name` = 'Sweta', 
  `last_name` = 'Dholariya', 
  `age` = '22', 
  `mobile_number` = '78946515623', 
  `address` = 'Kalwad' 
WHERE 
  `id` = '8';

 -- Update for `hobby` table data
UPDATE 
  `employee`.`hobby` 
SET 
  `name` = 'HistoricalBooks' 
WHERE 
  `id` = '5';
UPDATE 
  `employee`.`hobby` 
SET 
  `name` = 'Painting' 
WHERE 
  `id` = '6';
UPDATE 
  `employee`.`hobby` 
SET 
  `name` = 'Singinig' 
WHERE 
  `id` = '7';
UPDATE 
  `employee`.`hobby` 
SET 
  `name` = 'Acting' 
WHERE 
  `id` = '8';
  
-- Update for `employee_salary` table data 
UPDATE 
  `employee`.`employee_salary` 
SET 
  `date` = '2022-09-29', 
  `employee_id` = '5' 
WHERE 
  `id` = '7';
UPDATE 
  `employee`.`employee_salary` 
SET 
  `date` = '2022-10-29', 
  `employee_id` = '6' 
WHERE 
  `id` = '8';
UPDATE 
  `employee`.`employee_salary` 
SET 
  `date` = '2022-10-21', 
  `employee_id` = '7' 
WHERE 
  `id` = '9';
UPDATE 
  `employee`.`employee_salary` 
SET 
  `date` = '2022-10-29', 
  `employee_id` = '8' 
WHERE 
  `id` = '10';
UPDATE 
  `employee`.`employee_salary` 
SET 
  `date` = '2022-08-25', 
  `employee_id` = '5' 
WHERE 
  `id` = '11';
UPDATE 
  `employee`.`employee_salary` 
SET 
  `date` = '2023-01-26', 
  `employee_id` = '7' 
WHERE 
  `id` = '12';

-- Update for `employee_hobby` table data
UPDATE 
  `employee`.`employee_hobby` 
SET 
  `employee_hobby_id` = '7' 
WHERE 
  `id` = '8';
UPDATE 
  `employee`.`employee_hobby` 
SET 
  `employee_hobby_id` = '6' 
WHERE 
  `id` = '9';
UPDATE 
  `employee`.`employee_hobby` 
SET 
  `employee_hobby_id` = '8' 
WHERE 
  `id` = '14';
UPDATE 
  `employee`.`employee_hobby` 
SET 
  `employee_hobby_id` = '6' 
WHERE 
  `id` = '13';
UPDATE 
  `employee`.`employee_hobby` 
SET 
  `employee_hobby_id` = '4' 
WHERE 
  `id` = '12';
