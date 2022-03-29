USE KP_Tourist_agency

GO

CREATE PROCEDURE InsertDataClient(
	@nameClient VARCHAR(50),
	@firstName VARCHAR(50),
	@lastName VARCHAR(50),
	@phone VARCHAR(12),
	@numberPass VARCHAR(4),
	@serialPass VARCHAR(6)
)
AS
INSERT INTO Clients_ VALUES (
	@nameClient,
	@firstName,
	@lastName,
	@phone,
	@numberPass,
	@serialPass
)

GO

CREATE PROCEDURE InsertDataPositions(
	@id INT,
	@namePosition VARCHAR(255)
)
AS
INSERT INTO Positions_ VALUES (
	@id,
	@namePosition
)

GO

CREATE PROCEDURE InsertDataEmployee(
	@idEmp INT,
	@idPos INT,
	@nameEmp VARCHAR(50),
	@firstName VARCHAR(50),
	@lastName VARCHAR(50),
	@phone VARCHAR(12),
	@nuberPass VARCHAR(4),
	@serialPass VARCHAR(6)
)
AS
INSERT INTO Employee_ VALUES (
	@idEmp,
	@idPos,
	@nameEmp,
	@firstName,
	@lastName,
	@phone,
	@nuberPass,
	@serialPass
)
GO

CREATE PROCEDURE InsertDataTransport(
	@id INT,
	@type VARCHAR(255),
	@number VARCHAR(50)
)
AS
INSERT INTO Transport_ VALUES (
	@id,
	@type,
	@number
)

GO

CREATE PROCEDURE InsertDataTour(
	@idT INT,
	@idTran INT,
	@nameT VARCHAR(255),
	@caption VARCHAR(1024),
	@dateStartTour DATE,
	@dateEndTour DATE,
	@price FLOAT
)
AS
INSERT INTO Tour_ VALUES (
	@idT,
	@idTran,
	@nameT,
	@caption,
	@dateStartTour,
	@dateEndTour,
	@price
)

GO

CREATE PROCEDURE InsertDataPayment(
	@id INT,
	@idT INT,
	@datePay DATE,
	@type VARCHAR(255),
	@price FLOAT
)
AS
INSERT INTO Payment_ VALUES (
	@id,
	@idT,
	@datePay,
	@type,
	@price
)

GO

CREATE PROCEDURE InsertDataContract(
	@idContract INT,
	@idEmp INT,
	@idCli INT,
	@idTour INT,
	@idPay INT,
	@dateCon DATE,
	@statusBooking VARCHAR(15),
	@caption VARCHAR(1024)
)
AS
INSERT INTO Contract_ VALUES (
	@idContract,
	@idEmp,
	@idCli,
	@idTour,
	@idPay,
	@dateCon,
	@statusBooking,
	@caption
)