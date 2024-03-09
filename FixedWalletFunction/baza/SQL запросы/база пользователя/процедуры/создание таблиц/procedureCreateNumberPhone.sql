USE walbase;
GO 
CREATE PROCEDURE createNumberPhone AS
BEGIN
CREATE TABLE Number_phone (
       Id int NOT NULL PRIMARY KEY IDENTITY (1,1),
	   phone_Id int
	   NOT NULL)
END;