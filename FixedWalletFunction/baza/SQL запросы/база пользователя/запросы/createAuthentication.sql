CREATE TABLE Authentication (
       Id int NOT NULL PRIMARY KEY IDENTITY (1,1),
	   NickName nvarchar (max) NOT NULL,
	   email nvarchar (max)  NOT NULL,
	   Personal_data_Id int NOT NULL,
	   Wallet_Id int NOT NULL,
	   phone_Id int NOT NULL) 