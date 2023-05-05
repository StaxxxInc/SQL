-- 1 
CREATE TABLE `myfirstdb`.`sales` (
  `id` INT NOT NULL,
  `order_date` DATETIME NULL,
  `count_product` INT NULL,
  PRIMARY KEY (`id`));

INSERT INTO `myfirstdb`.`sales` (`id`, `order_date`, `count_product`) VALUES ('1', '2022-01-01', '156');
INSERT INTO `myfirstdb`.`sales` (`id`, `order_date`, `count_product`) VALUES ('2', '2022-01-02', '180');
INSERT INTO `myfirstdb`.`sales` (`id`, `order_date`, `count_product`) VALUES ('3', '2022-01-03', '21');
INSERT INTO `myfirstdb`.`sales` (`id`, `order_date`, `count_product`) VALUES ('4', '2022-01-04', '124');
INSERT INTO `myfirstdb`.`sales` (`id`, `order_date`, `count_product`) VALUES ('5', '2022-01-05', '341');

--2
SELECT
  count_product,type_cat,

  CASE
    WHEN count_product<=100 THEN 'Маленький заказ'
    WHEN count_product>=300 THEN 'Большой заказ'
    ELSE 'Средний заказ'
  END type_cat
FROM sales


--3

CREATE TABLE `myfirstdb`.`orders` (
  `id` INT NOT NULL,
  `employee_id` VARCHAR(45) NULL,
  `amount` DOUBLE NULL,
  `order_status` VARCHAR(45) NULL,
  `full_order_status` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

INSERT INTO `myfirstdb`.`orders` (`id`, `employee_id`, `amount`, `order_status`) VALUES ('1', 'e03', '15.00', 'OPEN');
INSERT INTO `myfirstdb`.`orders` (`id`, `employee_id`, `amount`, `order_status`) VALUES ('2', 'e01', '25.50', 'OPEN');
INSERT INTO `myfirstdb`.`orders` (`id`, `employee_id`, `amount`, `order_status`) VALUES ('3', 'e05', '100.70', 'CLOSED');
INSERT INTO `myfirstdb`.`orders` (`id`, `employee_id`, `amount`, `order_status`) VALUES ('4', 'e02', '22.18', 'OPEN');
INSERT INTO `myfirstdb`.`orders` (`id`, `employee_id`, `amount`, `order_status`) VALUES ('5', 'e04', '9.50', 'CANCELLED');


SELECT
  order_status,full_order_status,
  CASE
    WHEN order_status='OPEN' THEN 'Order is in open state'
    WHEN order_status='CLOSED' THEN 'Order is closed'
    WHEN order_status='CANCELLED' THEN 'Order is cancelled'
  END full_order_status
FROM orders

