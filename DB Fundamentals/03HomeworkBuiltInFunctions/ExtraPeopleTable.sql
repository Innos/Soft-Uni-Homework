CREATE TABLE People
(
Id INT NOT NULL IDENTITY(1,1),
Name NVARCHAR(50) NOT NULL,
Birthdate DATETIME NOT NULL,
CONSTRAINT pk_people PRIMARY KEY(Id)
)

INSERT INTO People (Name, Birthdate) VALUES
('Victor',CONVERT(DATETIME,'2000-12-07 00:00:00.000')),
('Steven',CONVERT(DATETIME,'1992-09-10 00:00:00.000')),
('Stephen',CONVERT(DATETIME,'1910-09-19 00:00:00.000')),
('John',CONVERT(DATETIME,'2010-01-06 00:00:00.000'))