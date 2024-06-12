DROP DATABASE IF EXISTS CarDealership;

CREATE DATABASE CarDealership;
 
 USE CarDealership;
 
 DROP TABLE IF EXISTS dealerships;
 DROP TABLE IF EXISTS vehicles;
 DROP TABLE IF EXISTS inventory;
 DROP TABLE IF exists SalesContract;
 
 CREATE TABLE dealerships (
	dealership_id int AUTO_INCREMENT PRIMARY KEY NOT NULL,
	name VARCHAR(50) NOT NULL,
    address VARCHAR(50),
    phone VARCHAR(12)
 );
 
 CREATE TABLE vehicles(
 VIN int PRIMARY KEY NOT NULL,
 year char(4) not null,
 make VARCHAR(10) NOT NULL,
 model VARCHAR(10) NOT NULL,
 vehicletype VARCHAR(20) NOT NULL,
 color VARCHAR(10) NOT NULL,
 odometer int NOT NULL,
 price FLOAT NOT NULL
 );
  CREATE TABLE inventory(
 dealership_id int PRIMARY KEY AUTO_INCREMENT NOT NULL,
 vin VARCHAR
 );
 
 CREATE TABLE SalesContract (
 ContractID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT NOT NULL,
    ContractDate DATE NOT NULL);
    
CREATE TABLE lease_contracts(
Lease_started DATE NOT NULL,
lease_ended DATE NOT NULL,
);

INSERT INTO dealerships (name, address, phone) VALUES
('Auto World', '123 Main St, Springfield', '123-456-7890'),
('Super Cars', '456 Elm St, Shelbyville', '234-567-8901'),
('Speedy Motors', '789 Oak St, Ogdenville', '345-678-9012'),
('Luxury Wheels', '101 Maple St, Capital City', '456-789-0123'),
('Budget Auto', '202 Pine St, North Haverbrook', '567-890-1234');

INSERT INTO vehicles (VIN, year, make, model, vehicletype, color, odometer, price) VALUES
(10000001, '2020', 'Toyota', 'Camry', 'Sedan', 'Blue', 15000, 22000.00),
(10000002, '2019', 'Honda', 'Civic', 'Sedan', 'Black', 30000, 18000.00),
(10000003, '2018', 'Ford', 'F-150', 'Truck', 'Red', 45000, 25000.00),
(10000004, '2021', 'Chevrolet', 'Equinox', 'SUV', 'White', 5000, 27000.00),
(10000005, '2022', 'Tesla', 'Model 3', 'Electric', 'Silver', 10000, 35000.00);

INSERT INTO inventory (dealership_id, vin) VALUES
(1, 10000001),
(1, 10000002),
(2, 10000003),
(3, 10000004),
(4, 10000005);

INSERT INTO SalesContract (CustomerID, ContractDate) VALUES
(1, '2023-06-01'),
(2, '2023-06-05'),
(3, '2023-06-10'),
(4, '2023-06-15'),
(5, '2023-06-20');

INSERT INTO lease_contracts (lease_started, lease_ended) VALUES
('2023-01-01', '2023-12-31'),
('2023-02-15', '2024-02-14'),
('2023-03-01', '2023-08-31'),
('2023-04-10', '2023-10-09'),
('2023-05-05', '2024-05-04');








 
 
 
 