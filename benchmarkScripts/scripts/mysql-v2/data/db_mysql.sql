DROP DATABASE IF EXISTS `masterDb`;
CREATE DATABASE `masterDb`;
USE masterDb;
CREATE TABLE `device` (
	`deviceid` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`deviceid`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB;

CREATE TABLE `test` (
	`testid` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`deviceid` INT UNSIGNED NOT NULL,
	`type` INT UNSIGNED NOT NULL,
	PRIMARY KEY (`testid`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB;

CREATE TABLE `testresult` (
	`testresultid` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`testid` INT UNSIGNED NOT NULL,
	`date` INT(10) NOT NULL,
	`value` FLOAT NOT NULL,
	PRIMARY KEY (`testresultid`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB;
