INSERT INTO customers (`customer ID`, name, email)
VALUES (1, 'John Doe', 'johndoe@example.com'),
       (2, 'Jane Smith', 'janesmith@example.com'),
       (3, 'Bob Johnson', 'bobjohnson@example.com');
       
ALTER TABLE cars ALTER COLUMN `identification number (VIN)` VARCHAR(30) NOT NULL;
ALTER TABLE cars MODIFY  `identification number (VIN)` varchar(255) not null;
ALTER TABLE lab_mysql.cars MODIFY COLUMN `identification number (VIN)` VARCHAR(20) NOT NULL;

INSERT INTO cars (`identification number (VIN)`, manufacturer, model, year, color)
VALUES (1, 'Volkswagen', 'Tiguan', 2019, 'Blue'),
       (2, 'Peugeot', 'Rifter', 2019, 'Red');