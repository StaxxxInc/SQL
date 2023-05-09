--
CREATE TABLE `myfirstdb`.`salespeople` (
  `snum` INT NOT NULL,
  `sname` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `comm` VARCHAR(45) NULL,
  PRIMARY KEY (`snum`));

INSERT INTO `myfirstdb`.`salespeople` (`snum`, `sname`, `city`, `comm`) VALUES ('1001', 'Peel', 'London', '.12');
INSERT INTO `myfirstdb`.`salespeople` (`snum`, `sname`, `city`, `comm`) VALUES ('1002', 'Serres', 'San Jose', '.13');
INSERT INTO `myfirstdb`.`salespeople` (`snum`, `sname`, `city`, `comm`) VALUES ('1004', 'Motika', 'London', '.11');
INSERT INTO `myfirstdb`.`salespeople` (`snum`, `sname`, `city`, `comm`) VALUES ('1007', 'Rifkin', 'Barcelona', '.15');
INSERT INTO `myfirstdb`.`salespeople` (`snum`, `sname`, `city`, `comm`) VALUES ('1003', 'Axelrod', 'New York', '.10');

CREATE TABLE `myfirstdb`.`customers` (
  `cnum` INT NOT NULL,
  `cname` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `rating` VARCHAR(45) NULL,
  `snum` INT NULL,
  PRIMARY KEY (`cnum`));

INSERT INTO `myfirstdb`.`customers` (`cnum`, `cname`, `city`, `rating`, `snum`) VALUES ('2001', 'Hoffman', 'London', '100', '1001');
INSERT INTO `myfirstdb`.`customers` (`cnum`, `cname`, `city`, `rating`, `snum`) VALUES ('2002', 'Giovanni', 'Rome', '200', '1003');
INSERT INTO `myfirstdb`.`customers` (`cnum`, `cname`, `city`, `rating`, `snum`) VALUES ('2003', 'Liu', 'SanJose', '200', '1002');
INSERT INTO `myfirstdb`.`customers` (`cnum`, `cname`, `city`, `rating`, `snum`) VALUES ('2004', 'Grass', 'Berlin', '300', '1002');
INSERT INTO `myfirstdb`.`customers` (`cnum`, `cname`, `city`, `rating`, `snum`) VALUES ('2006', 'Clemens', 'London', '100', '1001');
INSERT INTO `myfirstdb`.`customers` (`cnum`, `cname`, `city`, `rating`, `snum`) VALUES ('2008', 'Cisneros', 'SanJose', '300', '1007');
INSERT INTO `myfirstdb`.`customers` (`cnum`, `cname`, `city`, `rating`, `snum`) VALUES ('2007', 'Pereira', 'Rome', '100', '1004');

CREATE TABLE `myfirstdb`.`orders` (
  `onum` INT NOT NULL,
  `amt` INT NULL,
  `odate` DATETIME NULL,
  `cnum` INT NULL,
  `snum` INT NULL,
  PRIMARY KEY (`onum`));

INSERT INTO `myfirstdb`.`orders` (`onum`, `amt`, `odate`, `cnum`, `snum`) VALUES ('3001', '18.69', '1990-03-10', '2008', '1007');
INSERT INTO `myfirstdb`.`orders` (`onum`, `amt`, `odate`, `cnum`, `snum`) VALUES ('3003', '767.19', '1990-03-10', '2001', '1001');
INSERT INTO `myfirstdb`.`orders` (`onum`, `amt`, `odate`, `cnum`, `snum`) VALUES ('3002', '1900.10', '1990-03-10', '2007', '1004');
INSERT INTO `myfirstdb`.`orders` (`onum`, `amt`, `odate`, `cnum`, `snum`) VALUES ('3005', '5160.45', '1990-03-10', '2003', '1002');
INSERT INTO `myfirstdb`.`orders` (`onum`, `amt`, `odate`, `cnum`, `snum`) VALUES ('3006', '1098.16', '1990-03-10', '2008', '1007');
INSERT INTO `myfirstdb`.`orders` (`onum`, `amt`, `odate`, `cnum`, `snum`) VALUES ('3009', '1713.23', '1990-04-10', '2002', '1003');
INSERT INTO `myfirstdb`.`orders` (`onum`, `amt`, `odate`, `cnum`, `snum`) VALUES ('3007', '75.75', '1990-04-10', '2004', '1002');
INSERT INTO `myfirstdb`.`orders` (`onum`, `amt`, `odate`, `cnum`, `snum`) VALUES ('3008', '4723.00', '1990-05-10', '2006', '1001');
INSERT INTO `myfirstdb`.`orders` (`onum`, `amt`, `odate`, `cnum`, `snum`) VALUES ('3010', '1309.95', '1990-06-10', '2004', '1002');
INSERT INTO `myfirstdb`.`orders` (`onum`, `amt`, `odate`, `cnum`, `snum`) VALUES ('3011', '9891.88', '1990-06-10', '2006', '1001');

--1
SELECT city, sname, snum, comm 
FROM salespeople;

--2
SELECT rating,cname FROM customers WHERE city = 'San Jose';

--3
SELECT distinct snum FROM orders;

--4
SELECT * FROM orders WHERE amt > 1000;

--5
SELECT MIN(amt)
FROM orders;

--6
SELECT * FROM customers WHERE rating > 100 AND NOT city = 'Rome';

--7
SELECT * FROM classworktable ORDER BY salary DESC;
SELECT * FROM classworktable ORDER BY salary ASC;

--8
SELECT id, specialty, sum(salary) FROM classworktable
WHERE sum(salary) > 100000
GROUP BY specialty;


