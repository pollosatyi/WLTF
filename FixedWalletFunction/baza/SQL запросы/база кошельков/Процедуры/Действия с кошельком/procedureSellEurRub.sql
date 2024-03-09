USE walbase;
GO
CREATE PROCEDURE sell_eur_rub
@temp_eur_rub DECIMAL(18,4)
AS 
BEGIN
IF(@temp_eur_rub > (SELECT eur_rub FROM Wallets) OR @temp_eur_rub<0)
RETURN 
DECLARE @temp_rub DECIMAL(18,4)
SET @temp_rub = @temp_eur_rub*(SELECT eur FROM test_course_table)
UPDATE Wallets
SET eur_rub = eur_rub - @temp_eur_rub
END;
EXEC top_account_rub @temp_rub;
