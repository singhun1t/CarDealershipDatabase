DROP DATABASE IF EXISTS car_dealership;

CREATE DATABASE car_dealership;

USE car_dealership;

DROP TABLE IF EXISTS dealerships;
DROP TABLE IF EXISTS vehicles;
DROP TABLE IF EXISTS inventory;
DROP TABLE IF EXISTS sales_contracts;

CREATE Table dealerships(
dealership_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
address VARCHAR(50),
phone VARCHAR(12)
);

CREATE Table vehicles(
VIN  INT NOT NULL PRIMARY KEY,
Model VARCHAR (20) NOT NULL,
Make VARCHAR (20) NOT NULL,
isUsed BOOLEAN
);

CREATE Table inventory(
dealership_id INT,
VIN INT,
FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);

CREATE Table sales_contracts(
ID INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
DateSold DATE,
SalePrice INT NOT NULL,
VIN INT,
FOREIGN KEY (VIN) REFERENCES vehicles (VIN)
);

INSERT INTO dealerships
( name , address, phone)
VALUES
( "KIA SOUTH", "134 Block Avenue", "412-886-9899"),
( "BMW FRANKFURT", "189 REICHSTAT ROAD","878-986-9065"),
( "LEXUS NORTHHILLS", "178 NORTHILLS BOULEVARD", "412-767-9899"),
( "TOYOTA WEST", " 117 CRESCENT STREET", "412-564-2345"),
( "MITSUBISHI MARION", "124 MARION STREET", "862-242-4223"),
( "LEXUS SOUTHHILLS", "124 SOUTHHILLS BOULEVARD", "412-732-9399");

INSERT INTO vehicles
(VIN, Model, Make, isUsed)
VALUES
(1764, "NX-350h","Lexus",1),
(1876, "335i", "BMW", 0),
(1866, "Landcruiser", "Toyota", 1),
(1912, "Sorento", "Kia", 0),
(1242, "Eclipse", "Mitsubishi", 1),
(1762, "RC350", "Lexus",1);

INSERT INTO inventory
(dealership_id, VIN)
VALUES
( 3,1764),
( 2, 1876),
( 4, 1866),
(1, 1912),
(5,1242),
(6, 1762);

INSERT INTO sales_contracts
( SalePrice, VIN, DateSold)
VALUES
(52500,1764, '2024-01-02'),
(38000,1876,'2024-05-02'),
(55000,1866, '2023-10-02'),
(26700,1912, '2023-02-03'),
(18500,1242,'2024-06-02');











