GO
CREATE PROCEDURE ADD_Verification /* Verification*/
				 @exist bit,
				 @vip bit
AS
BEGIN
    INSERT INTO Verification
	(
	 exist,
	 vip
	 )
 VALUES 
     (
	  @exist ,
	  @vip 
	  )
END;