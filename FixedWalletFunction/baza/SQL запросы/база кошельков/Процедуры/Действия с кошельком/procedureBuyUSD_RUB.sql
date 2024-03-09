USE walbase;
GO
CREATE PROCEDURE buy_usd_rub
@temp_rub DECIMAL(18,4)
AS
BEGIN
IF @temp_rub > (SELECT rub FROM Wallets)
RETURN
UPDATE Wallets
SET usd_rub=usd_rub  +( @temp_rub/(SELECT usd FROM test_course_table))
END;
EXEC withdrawal_from_account @temp_rub;