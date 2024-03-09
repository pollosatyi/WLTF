USE walbase;
GO
CREATE PROCEDURE create_test_course_table AS
BEGIN
CREATE TABLE test_course_table(
rub DECIMAL(18,4) DEFAULT(0),
usd DECIMAL(18,4) DEFAULT(0),
eur DECIMAL(18,4) DEFAULT(0),)
END;