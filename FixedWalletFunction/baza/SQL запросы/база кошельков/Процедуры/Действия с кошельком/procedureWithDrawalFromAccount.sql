USE walbase;
GO
CREATE PROCEDURE withdrawal_from_account
@temp_rub DECIMAL(18,4)
AS
BEGIN
IF @temp_rub>(SELECT rub FROM Wallets) OR @temp_rub<0
RETURN
UPDATE Wallets
SET rub = rub-@temp_rub 
END;