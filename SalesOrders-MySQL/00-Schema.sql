CREATE TABLE Categories (
	CategoryID 					INT  			NOT NULL AUTO_INCREMENT PRIMARY KEY,
	CategoryDescription 		VARCHAR (75)	NULL 
);

CREATE TABLE Customers (
	CustomerID 					INT  			NOT NULL AUTO_INCREMENT PRIMARY KEY,
	CustomerFirstName 			VARCHAR (25) 	NULL,
	CustomerLastName 			VARCHAR (25) 	NULL,
	CustomerStreetAddress 		VARCHAR (50) 	NULL,
	CustomerCity 				VARCHAR (30) 	NULL,
	CustomerState 				VARCHAR (2) 	NULL,
	CustomerZipCode 			VARCHAR (10) 	NULL,
	CustomerAreaCode 			SMALLINT 		NULL,
	CustomerPhoneNumber 		VARCHAR (8) 	NULL 
);

ALTER TABLE Customers AUTO_INCREMENT = 1001;

CREATE TABLE Employees (
	EmployeeID 					INT  			NOT NULL AUTO_INCREMENT PRIMARY KEY,
	EmployeeFirstName 			VARCHAR (25) 	NULL,
	EmployeeLastName 			VARCHAR (25) 	NULL,
	EmployeeStreetAddress 		VARCHAR (50) 	NULL,
	EmployeeCity 				VARCHAR (30)	NULL,
	EmployeeState 				VARCHAR (2) 	NULL,
	EmployeeZipCode 			VARCHAR (10) 	NULL,
	EmployeeAreaCode 			SMALLINT 		NULL,
	EmployeePhoneNumber 		VARCHAR (8) 	NULL 
);

ALTER TABLE Employees AUTO_INCREMENT = 701;

CREATE TABLE Vendors (
	VendorID 					INT  			NOT NULL AUTO_INCREMENT PRIMARY KEY,
	VendorName 					VARCHAR (25) 	NULL,
	VendorStreetAddress 		VARCHAR (50) 	NULL,
	VendorCity 					VARCHAR (30) 	NULL,
	VendorState 				VARCHAR (2) 	NULL,
	VendorZipCode 				VARCHAR (10) 	NULL,
	VendorPhoneNumber 			VARCHAR (15) 	NULL,
	VendorFaxNumber 			VARCHAR (15) 	NULL,
	VendorWebPage 				TEXT 			NULL,
	VendorEMailAddress 			VARCHAR (50) 	NULL
);

CREATE TABLE Products (
	ProductID 					INT  			NOT NULL AUTO_INCREMENT PRIMARY KEY,
	ProductName 				VARCHAR (50) 	NULL,
	ProductDescShort 			VARCHAR (255) 	NULL,
	ProductDescLong 			VARCHAR (255) 	NULL,
	ProductImage				VARCHAR (255) 	NULL,
	ProductPrice 				DECIMAL (15,2) 	NULL,
	ProductQty 					INT 			NULL,
	CategoryID 					INT 			NULL 
);

CREATE TABLE ProductVendors (
	ProductID  					INT,
	VendorID 					INT 			NOT NULL,
	ProductVendorWholesalePrice	DECIMAL (15,2) 	NULL,
	ProductVendorDaysToDeliver	SMALLINT 		NULL,
	PRIMARY KEY (ProductID, VendorID) 
);

CREATE TABLE Orders (
	OrderID  					INT 			NOT NULL AUTO_INCREMENT PRIMARY KEY,
	OrderDate 					datetime 		NULL,
	OrderShipDate 				datetime 		NULL,
	CustomerID 					INT 			NULL,
	EmployeeID 					INT 			NULL 
);

CREATE TABLE OrderDetails (
	OrderID 					INT,
	ProductID 					INT 			NOT NULL,
	OrderDetailQuotedPrice 		DECIMAL (15,2) 	NULL,
	OrderDetailQuantityOrdered 	INT 			NULL,
	PRIMARY KEY (OrderID, ProductID)
);