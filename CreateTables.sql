CREATE DATABASE KP_Tourist_agency

GO

CREATE TABLE Contract_ (
	idContract INT PRIMARY KEY NOT NULL,
	idEmployee INT NOT NULL,
	idClient INT NOT NULL,
	idTour INT NOT NULL,
	idPayment INT NOT NULL,
	dateConclusion DATE NOT NULL,
	statusBooking VARCHAR(15) NOT NULL,
	captionContract VARCHAR(1024)
)

GO

CREATE TABLE Employee_ (
	idEmployee INT PRIMARY KEY NOT NULL,
	idPositions INT NOT NULL,
	nameEmployee VARCHAR(50) NOT NULL,
	firstName VARCHAR(50) NOT NULL,
	lastName VARCHAR(50) NOT NULL,
	phone VARCHAR(12) NOT NULL,
	numberPass VARCHAR(4) NOT NULL,
	serialPass VARCHAR(6) NOT NULL
)

GO

CREATE TABLE Positions_ (
	idPosition INT PRIMARY KEY NOT NULL,
	namePosition VARCHAR(255) NOT NULL
)

GO

CREATE TABLE Clients_ (
	idClients INT PRIMARY KEY NOT NULL,
	nameClient VARCHAR(50) NOT NULL,
	firstName VARCHAR(50) NOT NULL,
	lastName VARCHAR(50) NOT NULL,
	phone VARCHAR(12) NOT NULL,
	numberPass VARCHAR(4) NOT NULL,
	serialPass VARCHAR(6) NOT NULL,
)

GO

CREATE TABLE Tour_ (
	idTour INT PRIMARY KEY NOT NULL,
	idTransport INT NOT NULL,
	nameTour VARCHAR(255) NOT NULL,
	captionTour VARCHAR(1024) NOT NULL,
	dateStartTour DATE NOT NULL,
	dateEndTour DATE NOT NULL,
	priceTour FLOAT NOT NULL
)

GO

CREATE TABLE Transport_ (
	idTransport INT PRIMARY KEY NOT NULL,
	typeTransport VARCHAR(255) NOT NULL,
	numberTransport VARCHAR(50) NOT NULL
)

GO

CREATE TABLE Payment_ (
	idPayment INT PRIMARY KEY NOT NULL,
	idTour INT NOT NULL,
	datePayment DATE NOT NULL,
	typePayment VARCHAR(255) NOT NULL,
	pricePayment FLOAT NOT NULL,
)