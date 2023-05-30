CREATE DATABASE DemoApp
USE DemoApp
CREATE TABLE USERS(
ID int PRIMARY KEY IDENTITY(1,1),
Name NVARCHAR(50) NOT NULL,
Surname NVARCHAR(50) NOT NULL,
Email NVARCHAR(50) UNIQUE,
RegistrationDate DATE DEFAULT GETDATE(),
CONSTRAINT Date_Time
CHECK (RegistrationDate >= '2023-02-01' AND RegistrationDate <= GETDATE()),
ContactNumber NVARCHAR(50) DEFAULT '+994000000000',
Age int NOT NULL,
CONSTRAINT User_age
CHECK (Age >= 18),
Adress NVARCHAR(50)
)




INSERT INTO USERS (Name, Surname, Email, RegistrationDate, ContactNumber, Age, Adress)
VALUES
('Metleb', 'Huseynov', 'hovm1999@gmail.com', '2023-03-10', '+994993991019', 19, 'VASMOY'),
('OMER', 'IMANLI', 'OMER@gmail.com', '2023-03-10', '+994513412539', 18, 'BAYIL'),
('ILHAM', 'ELIYEV', 'ILHAMqwq@gmail.com', '2023-03-10', '+9942111111', 55, 'AZERBAYCANIN HER YERI')

CREATE TABLE Categories (
    Id INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(50) NOT NULL,
    Slug NVARCHAR(50) UNIQUE,
    CreatedAt DATETIME DEFAULT GETDATE(),
    IsActive BIT
);

INSERT INTO Categories (Name, Slug, IsActive)
VALUES
    ('Category 1', 'category-1', 1),
    ('Category 2', 'category-2', 0),
    ('Category 3', 'category-3', 1);

	SELECT Name, Surname, Email FROM Users;

	SELECT Name, IsActive FROM Categories;

