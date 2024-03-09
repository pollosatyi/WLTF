GO
CREATE PROCEDURE ADD_Authentication /* Authentication*/
				 @NickName nvarchar (max),
				 @email nvarchar (max),
				 @Personal_data_Id int,
				 @Wallet_Id int
AS
BEGIN
    INSERT INTO Authentication
	(
     NickName,
     email,
	 Personal_data_Id,
	 Wallet_Id
	 )
 VALUES 
     (
	  @NickName,
	  @email,
	  @Personal_data_Id,
	  @Wallet_Id)
END;