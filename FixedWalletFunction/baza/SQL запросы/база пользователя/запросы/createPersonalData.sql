
        CREATE TABLE Personal_data (
       Id int NOT NULL PRIMARY KEY IDENTITY (1,1),
	   Name nvarchar (max) NOT NULL,
	   Surname nvarchar (max)  NOT NULL,
	   Patronymic nvarchar (max)  NOT NULL,
	   Birthdate date NOT NULL CONSTRAINT dat CHECK (Birthdate>'2006-01-01'))