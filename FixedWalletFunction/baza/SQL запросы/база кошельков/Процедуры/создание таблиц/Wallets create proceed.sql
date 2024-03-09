USE walbase;
GO
CREATE PROCEDURE createWallets AS
BEGIN
CREATE TABLE Wallets(
id BIGINT IDENTITY(1,1) PRIMARY KEY,
rub DECIMAL(18,4) DEFAULT(0),
usd_rub DECIMAL(18,4) DEFAULT(0),
eur_rub DECIMAL(18,4) DEFAULT(0),
eur_usd DECIMAL(18,4) DEFAULT(0)
)  
END

/*Создание таблицы База кошельков*/
