USE walbase;
GO
CREATE PROCEDURE buy_eur_rub
@temp_rub DECIMAL(18,4)
AS
BEGIN
IF(@temp_rub>(SELECT rub FROM Wallets)OR @temp_rub<0)
RETURN
UPDATE Wallets
SET eur_rub =eur_rub +( @temp_rub/(SELECT eur FROM test_course_table))
END;
EXEC withdrawal_from_account @temp_rub;