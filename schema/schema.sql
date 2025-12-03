PRAGMA foreign_keys = ON;

CREATE TABLE Clients (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    FirstName TEXT NOT NULL,
    LastName TEXT,
    Phone TEXT,
    Email TEXT UNIQUE,
    Passport TEXT
);

CREATE TABLE Properties (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Address TEXT NOT NULL,
    Area REAL,
    Rooms INTEGER,
    Type TEXT,
    Status TEXT
);

CREATE TABLE Contracts (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    ClientID INTEGER NOT NULL,
    PropertyID INTEGER NOT NULL,
    StartDate DATE,
    EndDate DATE,
    PaymentAmount REAL,
    PaymentStatus TEXT,
    FOREIGN KEY (ClientID) REFERENCES Clients(ID),
    FOREIGN KEY (PropertyID) REFERENCES Properties(ID)
);

CREATE TABLE Payments (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    ContractID INTEGER,
    PaymentDate DATE,
    Amount REAL,
    Method TEXT,
    FOREIGN KEY (ContractID) REFERENCES Contracts(ID)
);

CREATE TABLE RentalHistory (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    ClientID INTEGER,
    PropertyID INTEGER,
    StartDate DATE,
    EndDate DATE,
    TotalPaid REAL
);

CREATE TABLE AdminActions (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    ActionDate DATE,
    ActionType TEXT,
    TableName TEXT,
    RecordID INTEGER,
    Description TEXT
);
