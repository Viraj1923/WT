CREATE TABLE Customer27(
    CustomerID SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Contact VARCHAR(15) NOT NULL,
    Address VARCHAR(255) NOT NULL
);

CREATE TABLE Services27 (
    ServiceID SERIAL PRIMARY KEY,
    ServiceName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Billing27 (
    BillID SERIAL PRIMARY KEY,
    CustomerID INT NOT NULL,
    ServiceID INT NOT NULL,
    OrderDate DATE NOT NULL DEFAULT CURRENT_DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customer27 (CustomerID),
    FOREIGN KEY (ServiceID) REFERENCES Services27 (ServiceID)
);


INSERT INTO Services27 VALUES 
(1, 'Dry Cleaning', 150),
(2, 'Laundry', 100),
(3, 'Ironing', 50);