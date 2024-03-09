  USE walbase;
  GO
  CREATE PROCEDURE createVerification AS
  BEGIN
  CREATE TABLE Verification (
       Id int NOT NULL PRIMARY KEY IDENTITY (1,1),
	   exist bit DEFAULT 0,
	   vip bit DEFAULT 0,)
  END;