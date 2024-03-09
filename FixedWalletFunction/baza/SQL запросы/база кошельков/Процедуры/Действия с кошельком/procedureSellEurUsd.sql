USE walbase;
GO 
CREATE PROCEDURE sell_eur_usd
@temp_eur_usd DECIMAL(18,4)
AS
BEGIN
IF(@temp_eur_usd>(SELECT eur_usd FROM Wallets))
RETURN
DECLARE @temp_rub DECIMAL(18,4)
SET @temp_rub = @temp_eur_usd *(SELECT (eur/usd)*usd FROM test_course_table)
UPDATE Wallets 
SET eur_usd = eur_usd - @temp_eur_usd
END;
EXEC top_account_rub @temp_rub;