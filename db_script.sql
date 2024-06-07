DROP DATABASE IF EXISTS CarDealership;

CREATE DATABASE CarDealership;
 
 USE CarDealership;
 
 DROP TABLE IF EXISTS dealerships;
 DROP TABLE IF EXISTS vehicles;
 DROP TABLE IF EXISTS inventory;
 
 
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
 
 