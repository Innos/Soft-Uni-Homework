CREATE TABLE Orders
(
Id INT NOT NULL IDENTITY(1,1),
ProductName NVARCHAR(50) NOT NULL,
OrderDate DATETIME NOT NULL,
CONSTRAINT pk_orders PRIMARY KEY(Id)
)

INSERT INTO Orders (ProductName, OrderDate) VALUES
('Butter',CONVERT(DATETIME,'2016-09-19 00:00:00.000')),
('Milk',CONVERT(DATETIME,'2016-09-30 00:00:00.000')),
('Cheese',CONVERT(DATETIME,'2016-09-04 00:00:00.000')),
('Bread',CONVERT(DATETIME,'2015-12-20 00:00:00.000')),
('Tomatoes',CONVERT(DATETIME,'2015-12-30 00:00:00.000'))