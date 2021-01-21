/*
USE master;
GO
DROP DATABASE KutdusovIlshat;
*/

/*
USE KutdusovIlshat;
DROP TABLE Car;
DROP TABLE Client;
DROP TABLE Production;
DROP TABLE Tariff;
*/

/*
USE master
GO
CREATE DATABASE KutdusovIlshat
ON (
NAME = KutdusovIlshat_data,
FILENAME = 'C:\Users\800216\source\repos\Kursach_DB\KutdusovIlshatSQL\KutdusovIlshat_data.mdf'
)
LOG ON (
NAME = KutdusovIlshat_log,
FILENAME = 'C:\Users\800216\source\repos\Kursach_DB\KutdusovIlshatSQL\KutdusovIlshat_log.ldf'
);
*/

/*
USE KutdusovIlshat;
GO
CREATE TABLE Production (
ModelName VARCHAR(10) NOT NULL PRIMARY KEY,
ProductionName VARCHAR(10) NOT NULL,
ReleaseStart VARCHAR(4) NOT NULL,
ReleaseStop VARCHAR(4) NOT NULL
);

CREATE TABLE Car (
VIN VARCHAR(17) NOT NULL PRIMARY KEY,
Color VARCHAR(10) NOT NULL,
Release VARCHAR(4) NOT NULL,
Mileage INT NOT NULL DEFAULT 0,
ProductionModelName VARCHAR(10) NOT NULL,
TariffID INT NOT NULL DEFAULT 1,
Status VARCHAR(10) NOT NULL DEFAULT 'Ready',
ClientID INT,
RentTo DATETIME,
);

CREATE TABLE Client (
ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
FirstName VARCHAR(20) NOT NULL,
LastName VARCHAR(20) NOT NULL,
PhoneNumber	INT NOT NULL,
);

CREATE TABLE Tariff (
ID INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
TariffName VARCHAR(20) NOT NULL,
Cost INT NOT NULL DEFAULT 1000,
Info VARCHAR(250) NOT NULL DEFAULT 'No bonuses'
);

ALTER TABLE Car ADD CONSTRAINT CheckYear_Car CHECK
(Release LIKE '[1-2][0,8,9][0-9][0-9]');
ALTER TABLE Production ADD CONSTRAINT CheckYear_Production_Start CHECK
(ReleaseStart LIKE '[1-2][0,8,9][0-9][0-9]');
ALTER TABLE Production ADD CONSTRAINT CheckYear_Production_Stop CHECK
(ReleaseStop LIKE '[1-2][0,8,9][0-9][0-9]');

ALTER TABLE Car ADD CONSTRAINT Car_Production
	FOREIGN KEY (ProductionModelName)
	REFERENCES Production (ModelName)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
ALTER TABLE Car ADD CONSTRAINT Car_Client
	FOREIGN KEY (ClientID)
	REFERENCES Client (ID)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;
ALTER TABLE Car ADD CONSTRAINT Car_Tariff
	FOREIGN KEY (TariffID)
	REFERENCES Tariff (ID)
	ON DELETE NO ACTION
	ON UPDATE NO ACTION;

INSERT INTO Production (ModelName, ProductionName, ReleaseStart, ReleaseStop) VALUES ('Amarok','Volkswagen',2010,2020);
INSERT INTO Production (ModelName, ProductionName, ReleaseStart, ReleaseStop) VALUES ('Arteon','Volkswagen',2020,2020);
INSERT INTO Production (ModelName, ProductionName, ReleaseStart, ReleaseStop) VALUES ('Golf','Volkswagen',1997,2020);
INSERT INTO Production (ModelName, ProductionName, ReleaseStart, ReleaseStop) VALUES ('Jetta','Volkswagen',2005,2020);
INSERT INTO Production (ModelName, ProductionName, ReleaseStart, ReleaseStop) VALUES ('Passat','Volkswagen',1993,2020);
INSERT INTO Production (ModelName, ProductionName, ReleaseStart, ReleaseStop) VALUES ('Polo','Volkswagen',2002,2020);

INSERT INTO Production (ModelName, ProductionName, ReleaseStart, ReleaseStop) VALUES ('Kodiaq','Skoda',2017,2020);
INSERT INTO Production (ModelName, ProductionName, ReleaseStart, ReleaseStop) VALUES ('Octavia','Skoda',1996,2020);
INSERT INTO Production (ModelName, ProductionName, ReleaseStart, ReleaseStop) VALUES ('Rapid','Skoda',2013,2020);
INSERT INTO Production (ModelName, ProductionName, ReleaseStart, ReleaseStop) VALUES ('SuperB','Skoda',2002,2020);
INSERT INTO Production (ModelName, ProductionName, ReleaseStart, ReleaseStop) VALUES ('Yeti','Skoda',2009,2020);

INSERT INTO Client (FirstName, LastName, PhoneNumber) VALUES ('Liam','Olivia',102030);
INSERT INTO Client (FirstName, LastName, PhoneNumber) VALUES ('Noah','Emma',202030);
INSERT INTO Client (FirstName, LastName, PhoneNumber) VALUES ('Oliver','Ava',302030);
INSERT INTO Client (FirstName, LastName, PhoneNumber) VALUES ('William','Sophia',402030);
INSERT INTO Client (FirstName, LastName, PhoneNumber) VALUES ('Elijah','Isabella',502030);

INSERT INTO Tariff (TariffName) VALUES ('Standart');
INSERT INTO Tariff (TariffName,Cost,Info) VALUES ('Standart+',1100,'Small bonus');
INSERT INTO Tariff (TariffName,Cost) VALUES ('Pro',1200);
INSERT INTO Tariff (TariffName,Cost,Info) VALUES ('Pro+',1300,'Normal bonus');
INSERT INTO Tariff (TariffName,Cost) VALUES ('Ultimate',1400);
INSERT INTO Tariff (TariffName,Cost,Info) VALUES ('Ultimate+',1500,'More bonuses');

INSERT INTO Car (VIN, Color, Release, Mileage, ProductionModelName, TariffID, Status, ClientID, RentTo) VALUES (12345678901234567,'White',2014,18,'Amarok',3,'Rented',1,'2020-01-10');
INSERT INTO Car (VIN, Color, Release, Mileage, ProductionModelName, TariffID, Status, ClientID, RentTo) VALUES (22345678901234567,'Black',2020,5,'Arteon',6,'Rented',2,'2020-02-10');
INSERT INTO Car (VIN, Color, Release, Mileage, ProductionModelName, TariffID) VALUES (32345678901234567,'White',2007,267,'Octavia',1);
INSERT INTO Car (VIN, Color, Release, Mileage, ProductionModelName, TariffID, Status, ClientID, RentTo) VALUES (42345678901234567,'Red',2016,1587,'Rapid',2,'Rented',3,'2020-04-10');
INSERT INTO Car (VIN, Color, Release, Mileage, ProductionModelName, TariffID, Status, ClientID, RentTo) VALUES (52345678901234567,'Green',2019,10,'Jetta',4,'Rented',4,'2020-05-10');
INSERT INTO Car (VIN, Color, Release, Mileage, ProductionModelName, TariffID, Status, ClientID, RentTo) VALUES (62345678901234567,'Blue',2018,316,'SuperB',5,'Rented',5,'2020-06-10');
*/

/*
USE KutdusovIlshat;
GO
EXEC sp_helpdb KutdusovIlshat;
EXEC sp_help Car;
*/

USE KutdusovIlshat;
GO
