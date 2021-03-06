CREATE TABLE Towns
(
Id INT NOT NULL IDENTITY(1,1),
Name NVARCHAR(30) NOT NULL,
PRIMARY KEY(Id)
)

CREATE TABLE Addresses
(
Id INT NOT NULL IDENTITY(1,1),
AddressText NVARCHAR(30) NOT NULL,
TownId INT NOT NULL,
PRIMARY KEY(Id),
CONSTRAINT fk_TownId FOREIGN KEY(TownId) REFERENCES Towns(Id)
)

CREATE TABLE Departments
(
Id INT NOT NULL IDENTITY(1,1),
Name NVARCHAR(30) NOT NULL,
PRIMARY KEY(Id)
)

CREATE TABLE Employees
(
Id INT NOT NULL IDENTITY(1,1),
FirstName NVARCHAR(20) NOT NULL,
MiddleName NVARCHAR(20),
LastName NVARCHAR(20) NOT NULL,
JobTitle NVARCHAR(30) NOT NULL,
DepartmentId INT NOT NULL,
HireDate DATE NOT NULL,
Salary DECIMAL(15,2) NOT NULL,
AddresId INT NOT NULL,
PRIMARY KEY(Id),
CONSTRAINT fk_DepartmentId FOREIGN KEY(DepartmentId) REFERENCES Departments(Id),
CONSTRAINT fk_AddresId FOREIGN KEY(AddresId) REFERENCES Addresses(Id),
)