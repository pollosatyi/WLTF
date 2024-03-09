USE walbase;
GO
CREATE PROCEDURE ADD_Number_phone /* Nmb_phone*/
				 @phone_Id int
AS
BEGIN
    INSERT INTO Number_phone
	(
	 phone_Id 
	 )
 VALUES 
     ( 
	  @phone_Id 
	  )
END;