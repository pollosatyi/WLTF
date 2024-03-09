USE walbase;
GO 
CREATE PROCEDURE buy_eur_usd
@temp_rub DECIMAL(18,4)
AS 
BEGIN
IF(@temp_rub>(SELECT rub FROM Wallets) OR @temp_rub<0)
RETURN
DECLARE @temp_usd DECIMAL(18,4)
SET @temp_usd= @temp_rub/(SELECT usd FROM test_course_table)
UPDATE Wallets
SET eur_usd=eur_usd + (@temp_usd/(SELECT eur/usd FROM test_course_table))
END;
EXEC withdrawal_from_account @temp_rub;