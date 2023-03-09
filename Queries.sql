-- Insert in `employee` table 
INSERT INTO `employee` (`id`, `first_name`, `last_name`, `age`,`mobile_number`, `address`) VALUES 
  ('1', 'Shailesh', 'Sinh', '24', '6355939105', 'Rajkot'), 
  ('2', 'Vishal', 'Patel', '25', '312457894','valsad'), 
  ('3', 'Rohan', 'Vyas', '26', '7894652314','Surat'), 
  ('4', 'Ketan', 'Gosawami', '27', '6547891231', 'Ahmadabad');

-- Insert in `hobby` table  
INSERT INTO `hobby` (`id`, `name`) VALUES 
  ('1', 'Reading'), 
  ('2', 'Writting'), 
  ('3', 'PalyIndoorGames'), 
  ('4', 'PalyOutdoorGames');

-- Insert in `employee_hobby` table 
INSERT INTO `employee_hobby`(`id`, `fk_employee_id`, `fk_employee_hobby_id`) VALUES 
  ('1', '1', '3'), 
  ('2', '1', '4'), 
  ('3', '2', '1'), 
  ('4', '3', '2'), 
  ('5', '3', '1'), 
  ('6', '4', '1'), 
  ('7', '4', '4');
  
-- Insert in `employee_salary` table   
INSERT INTO `employee_salary` (`id`, `fk_employee_id`, `salary`, `salary_date`) VALUES 
  ('1', '1', '28000', '2022-12-29'), 
  ('2', '2', '35000', '2022-12-29'), 
  ('3', '3', '33000', '2022-12-29'), 
  ('4', '4', '45000', '2022-12-29'), 
  ('5', '2', '30000', '2023-01-29'), 
  ('6', '3', '29000', '2023-01-29');
  
  -- Update for `employee` table data 
UPDATE `employee` SET `first_name` = 'Susil', `last_name` = 'Rathod', `age` = '19', `mobile_number` = '987457465231', `address` = 'Kolkata' WHERE `id` = '5';
UPDATE `employee` SET `first_name` = 'Shivani', `last_name` = 'Rajput', `age` = '20', `mobile_number` = '7894651231', `address` = 'Rajstan' WHERE `id` = '6';
UPDATE `employee` SET `first_name` = 'Rahul', `last_name` = 'Umaretiya', `age` = '29', `mobile_number` = '46137894565', `address` = 'Surat' WHERE `id` = '7';
UPDATE `employee` SET `first_name` = 'Sweta', `last_name` = 'Dholariya', `age` = '22', `mobile_number` = '78946515623', `address` = 'Kalwad' WHERE `id` = '8';

 -- Update for `hobby` table data
UPDATE `hobby` SET `name` = 'HistoricalBooks' WHERE `id` = '5';
UPDATE `hobby` SET `name` = 'Painting' WHERE `id` = '6';
UPDATE `hobby` SET `name` = 'Singinig' WHERE `id` = '7';
UPDATE `hobby` SET `name` = 'Acting' WHERE `id` = '8';
  
-- Update for `employee_salary` table data 
UPDATE `employee_salary` SET  `salary_date` = '2022-10-29', `fk_employee_id` = '6' WHERE `id` = '8';
UPDATE `employee_salary` SET  `salary_date` = '2022-09-29', `fk_employee_id` = '5' WHERE `id` = '7';
UPDATE `employee_salary` SET  `salary_date` = '2022-10-21', `fk_employee_id` = '7' WHERE `id` = '9';
UPDATE `employee_salary` SET  `salary_date` = '2022-10-29', `fk_employee_id` = '8' WHERE `id` = '10';
UPDATE `employee_salary` SET  `salary_date` = '2022-08-25', `fk_employee_id` = '5' WHERE `id` = '11';
UPDATE `employee_salary` SET  `salary_date` = '2023-01-26', `fk_employee_id` = '7' WHERE `id` = '12';

-- Update for `employee_hobby` table data
UPDATE `employee_hobby` SET `fk_employee_hobby_id` = '7' WHERE `id` = '8';
UPDATE `employee_hobby` SET `fk_employee_hobby_id` = '6' WHERE `id` = '9';
UPDATE `employee_hobby` SET `fkemployee_hobby_id` = '8' WHERE `id` = '14';
UPDATE `employee_hobby` SET `fk_employee_hobby_id` = '6' WHERE `id` = '13';
UPDATE `employee_hobby` SET `fk_employee_hobby_id` = '4' WHERE `id` = '12';

-- Get all date for employee table 
SELECT * FROM `employee`;
  
-- Get all date for employee_hobby table
SELECT * FROM `employee_hobby`;
  
-- Get all date for employee_salary table  
SELECT * FROM `employee_salary`;

-- Get all date for employee table
SELECT * FROM `hobby`;

-- Get all employee name, all hobby_name in single column
SELECT (SELECT emp.`first_name` FROM `employee` AS emp WHERE emp.`id` = emp_hby.`fk_employee_id`) AS employee_name, 
  (SELECT hby.name FROM `hobby` AS hby WHERE hby.id = emp_hby.`fk_employee_hobby_id`) AS hobby_name FROM `employee_hobby` AS emp_hby;
 
-- Get employee name, his/her employee_salary 
SELECT emp.`first_name`, emp.`last_name`, emp_slry.`salary` FROM `employee_salary` AS emp_slry 
  INNER JOIN `employee` AS emp ON emp_slry.`fk_employee_id` = emp.`id` WHERE emp.id = 2;
  
-- Get employee name, total salary of employee, hobby name  
SELECT CONCAT(emp.`first_name`, ' ', emp.`last_name`) AS employee_name, 
  GROUP_CONCAT(DISTINCT(SELECT hby.name FROM `hobby` AS hby WHERE hby.id = employee_hobby.`fk_employee_hobby_id`)) AS hobby, 
  SUM(DISTINCT emp_slry.`salary`) AS total_salary FROM `employee` AS emp 
  INNER JOIN `employee_salary` AS emp_slry ON emp.id = emp_slry.`fk_employee_id` 
  INNER JOIN `employee_hobby` AS emp_hby ON emp_slry.`fk_employee_id` = emp_hby.`fk_employee_id` WHERE emp.`id` = 2;

-- Truncate `employee` tables
TRUNCATE TABLE `employee`;

-- Truncate `employee_hobby` tables
TRUNCATE TABLE `employee_hobby`;

-- Truncate `employee_salary` tables
TRUNCATE TABLE `employee_salary`;

-- Truncate `hobby` tables
TRUNCATE TABLE `hobby`;

-- Delete `employee`table in two data  
DELETE FROM `employee_hobby` WHERE `fk_employee_id` IN (3, 7);

-- Delete `employee`table in two data
DELETE FROM `employee_salary` WHERE `fk_employee_id` IN (3, 7);

-- Delete `employee`table in two data 
DELETE FROM `employee` WHERE id IN (3, 7);

-- Delete `employee`table in two data
DELETE FROM `hobby` WHERE NAME IN ("Singing", "Acting");  
  