CREATE DATABASE `book_shop`;
CREATE TABLE `clients` (`id` INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
`client_name` VARCHAR(255) NOT NULL,
`client_surname` VARCHAR(255) NOT NULL
);
CREATE TABLE `clients_discount` (`client_id` INT UNSIGNED NOT NULL PRIMARY KEY,
`discount` FLOAT NOT NULL
);
CREATE TABLE `books` (`id` INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
`book_name` VARCHAR(255) NOT NULL
);
CREATE TABLE `stock` (`book_id` INT UNSIGNED NOT NULL,
`stock_qty` SMALLINT UNSIGNED NOT NULL
);
CREATE TABLE `sells` (`book_id` INT UNSIGNED NOT NULL,
`sells_qty` SMALLINT UNSIGNED NOT NULL
);
CREATE TABLE `book_discount` (`book_id` INT UNSIGNED NOT NULL,
`discount` FLOAT NOT NULL
);

INSERT INTO `clients` (`client_name`,`client_surname`) VALUES ('petya','petrov'),
('ivan','ivanov'),
('fedor','fedorov')
;

INSERT INTO `clients_discount` (`client_id`,`discount`) VALUES ('1','0.9'),
('ivan','0.95'),
('fedor','0.96')
;

INSERT INTO `books` (`book_name`) VALUES ('Незнайка'),
('Война и мир'),
('Преступление и наказание'),
('Колобок'),
('Финансист'),('Властелин колец')
;

INSERT INTO `stock` (`book_id`,`stock_qty`) VALUES ('1','10'),
('2','30'),
('3','40'),
('4','56'),
('5','10'),
('6','42')
;

INSERT INTO `sells` (`book_id`,`sells_qty`) VALUES ('1','5'),
('2','4'),
('3','15'),
('4','20'),
('5','5'),
('6','12')
;

INSERT INTO `book_discount` (`book_id`,`discount`) VALUES ('1','0.9'),
('2','0.95'),
('3','0.96'),
('4','0.96'),
('5','0.98'),
('6','0.93'),
;

SELECT `book_name` FROM `books` WHERE `id` IN
(SELECT `book_id` FROM `stock` ORDER BY `stock_qty` DESC LIMIT 1);



