USE walbase;
GO
CREATE PROCEDURE fill_test_course_table
@rub_temp money,
@usd_temp money,
@eur_temp money
AS
BEGIN
UPDATE test_course_table
SET rub = @rub_temp, usd=@usd_temp, eur=@eur_temp
END;

