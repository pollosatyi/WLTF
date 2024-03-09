USE walbase;
GO
CREATE PROCEDURE top_account_rub 
@temp_rub DECIMAL(18,4)
AS
BEGIN
IF(@temp_rub<0)
RETURN
UPDATE Wallets
SET rub=rub+@temp_rub
END;

