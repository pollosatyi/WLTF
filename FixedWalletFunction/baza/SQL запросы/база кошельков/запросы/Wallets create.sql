CREATE TABLE Wallets(
id BIGINT IDENTITY(1,1) PRIMARY KEY,
rub_usd DECIMAL(18,4) DEFAULT(0),
rub_eur DECIMAL(18,4) DEFAULT(0),
usd_eur DECIMAL(18,4) DEFAULT(0)
)  

/*Создание таблицы База кошельков *\