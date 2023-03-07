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
  
  
  
  
  
INSERT INTO `employee`.`employee` (`id`, `first_name`, `last_name`, `age`, `mobile_number`, `address`) VALUES
 ( '5','Shailesh', 'Sinh', '24', '6355939105', 'Rajkot'),
 ( '6','Vishal', 'Patel', '25', '312457894', 'valsad'),
  ( '7','Rohan', 'Vyas', '26', '7894652314', 'Surat'),
 ( '8','Ketan', 'Gosawami', '27', '6547891231', 'Ahmadabad'); 
  
  
   INSERT INTO `employee`.`hobby` (`id`,`name`) 
 VALUES ('5','Reading'),('6','Writting'),('7','PalyIndoorGames'), ('8','PalyOutdoorGames');
 
 INSERT INTO `employee`.`employee_hobby`(`id`,`employee_id`,`employee_hobby_id`)
  VALUES ('8','1','3'), ('9','1','4') ,('10','2','1'), ('11','3','2') , ('12','3','1'), ('13','4','1'),('14','4','4') ;
  
  INSERT INTO `employee`.`employee_salary` (`id`, `employee_id`, `salary`, `date`) 
  VALUES ('7', '1', '28000', '2022-12-29'),('8', '2', '35000', '2022-12-29'), ('9', '3', '33000', '2022-12-29'),('10', '4', '45000', '2022-12-29'),('11', '2', '30000', '2023-01-29'),('12', '3', '29000', '2023-01-29') ; 