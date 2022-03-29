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