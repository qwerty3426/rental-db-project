INSERT INTO Clients (FirstName, LastName, Phone, Email)
VALUES ('Ivan', 'Ivanov', '+380501234567', 'ivan@example.com');

INSERT INTO Properties (Address, Area, Rooms, Type, Status)
VALUES ('вул. Шевченка, 10', 55, 2, 'apartment', 'available');

INSERT INTO Contracts (ClientID, PropertyID, StartDate, EndDate, PaymentAmount, PaymentStatus)
VALUES (1, 1, '2024-01-01', '2024-12-31', 5000, 'Оплачено');

INSERT INTO Payments (ContractID, PaymentDate, Amount, Method)
VALUES (1, '2024-01-01', 5000, 'card');
