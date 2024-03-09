use walbase;
GO
CREATE PROCEDURE sell_USD_RUB
@temp_usd_rub DECIMAL(18,4)
AS
BEGIN
IF(@temp_usd_rub>(SELECT usd_rub FROM Wallets)OR @temp_usd_rub<0)
RETURN

DECLARE @new_rub DECIMAL(18,4)
SET @new_rub=@temp_usd_rub*(SELECT usd FROM test_course_table)
UPDATE Wallets
SET usd_rub=usd_rub-@temp_usd_rub  
END;
EXEC top_account_rub @new_rub
