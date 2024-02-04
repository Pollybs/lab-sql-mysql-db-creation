

-- -----------------------------------------------------
-- Schema lab_mysql
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `lab_mysql` DEFAULT CHARACTER SET utf8 ;
USE `lab_mysql` ;

-- -----------------------------------------------------
-- Table `lab_mysql`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Cars` (
  `identification number (VIN)` INT NOT NULL,
  `manufacturer` VARCHAR(45) NULL,
  `model` VARCHAR(45) NULL,
  `year` YEAR(4) NULL,
  `color` VARCHAR(45) NULL,
  PRIMARY KEY (`identification number (VIN)`),
  UNIQUE INDEX `identification number (VIN)_UNIQUE` (`identification number (VIN)` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Customers` (
  `customer ID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `phone number` INT NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state/province` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip/postal` VARCHAR(45) NULL,
  PRIMARY KEY (`customer ID`),
  UNIQUE INDEX `customer ID_UNIQUE` (`customer ID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Salespersons` (
  `staff ID` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NULL,
  PRIMARY KEY (`staff ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `lab_mysql`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `lab_mysql`.`Invoices` (
  `invoice number` INT NOT NULL,
  `date` DATE NOT NULL,
  `vehicle identification number` INT NULL,
  `customer ID` INT NOT NULL,
  `staff ID` VARCHAR(45) NOT NULL COMMENT 'salesperson related to the sale',
  `store` VARCHAR(45) NULL,
  PRIMARY KEY (`invoice number`),
  CONSTRAINT fk1 FOREIGN KEY (`customer ID`) REFERENCES customers(`customer ID`),
  CONSTRAINT fk2 FOREIGN KEY (`vehicle identification number`) REFERENCES cars(`identification number (VIN)`)
  -- CONSTRAINT fk3 FOREIGN KEY (`staff ID`) REFERENCES salespersons(`staff ID`)
  )
;
