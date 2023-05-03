-- 1
CREATE TABLE `myfirstdb`.`mobile_phones_2` (
  `id` INT NOT NULL,
  `product_name` VARCHAR(45) NULL,
  `manufactured` VARCHAR(45) NULL,
  `product_count` INT NULL,
  `price` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE);


INSERT INTO `myfirstdb`.`mobile_phones_2` (`id`, `product_name`, `manufactured`, `product_count`, `price`) VALUES ('1', 'iPhone X', 'Apple', '3', '76000');
INSERT INTO `myfirstdb`.`mobile_phones_2` (`id`, `product_name`, `manufactured`, `product_count`, `price`) VALUES ('2', 'iPhone 8', 'Apple', '2', '51000');
INSERT INTO `myfirstdb`.`mobile_phones_2` (`id`, `product_name`, `manufactured`, `product_count`, `price`) VALUES ('3', 'galaxy S9', 'Samsung', '2', '56000');
INSERT INTO `myfirstdb`.`mobile_phones_2` (`id`, `product_name`, `manufactured`, `product_count`, `price`) VALUES ('4', 'galaxy S8', 'Samsung', '1', '31000');
INSERT INTO `myfirstdb`.`mobile_phones_2` (`id`, `product_name`, `manufactured`, `product_count`, `price`) VALUES ('5', 'P20 Pro', 'Huawei', '5', '36000');

-- 2
SELECT product_name, product_count
FROM mobile_phones
WHERE product_count > 2;

--3
SELECT product_name, product_count
FROM mobile_phones
WHERE manufactured = "Samsung";
