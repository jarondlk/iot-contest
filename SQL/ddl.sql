CREATE TABLE IF NOT EXISTS Users (
    UserID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    CardID VARCHAR(20) UNIQUE,
    Balance DECIMAL(10,2)
);

CREATE TABLE IF NOT EXISTS Transactions (
    TransactionID INT PRIMARY KEY,
    UserID INT,
    TransactionType VARCHAR(20),
    Amount DECIMAL(10,2),
    Timestamp TIMESTAMP,
    CardID VARCHAR(20),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);
