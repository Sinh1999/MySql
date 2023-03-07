-- Insert in `employee` table 
INSERT INTO `employee`.`employee` (
  `id`, `first_name`, `last_name`, `age`, 
  `mobile_number`, `address`
) 
VALUES 
  (
    '1', 'Shailesh', 'Sinh', '24', '6355939105', 
    'Rajkot'
  ), 
  (
    '2', 'Vishal', 'Patel', '25', '312457894', 
    'valsad'
  ), 
  (
    '3', 'Rohan', 'Vyas', '26', '7894652314', 
    'Surat'
  ), 
  (
    '4', 'Ketan', 'Gosawami', '27', '6547891231', 
    'Ahmadabad'
  );

-- Insert in `hobby` table  
INSERT INTO `employee`.`hobby` (`id`, `name`) 
VALUES 
  ('1', 'Reading'), 
  ('2', 'Writting'), 
  ('3', 'PalyIndoorGames'), 
  ('4', 'PalyOutdoorGames');

-- Insert in `employee_hobby` table 
INSERT INTO `employee`.`employee_hobby`(
  `id`, `employee_id`, `employee_hobby_id`
) 
VALUES 
  ('1', '1', '3'), 
  ('2', '1', '4'), 
  ('3', '2', '1'), 
  ('4', '3', '2'), 
  ('5', '3', '1'), 
  ('6', '4', '1'), 
  ('7', '4', '4');
  
-- Insert in `employee_salary` table   
INSERT INTO `employee`.`employee_salary` (
  `id`, `employee_id`, `salary`, `date`
) 
VALUES 
  ('1', '1', '28000', '2022-12-29'), 
  ('2', '2', '35000', '2022-12-29'), 
  ('3', '3', '33000', '2022-12-29'), 
  ('4', '4', '45000', '2022-12-29'), 
  ('5', '2', '30000', '2023-01-29'), 
  ('6', '3', '29000', '2023-01-29');
  
  
  
  
  
