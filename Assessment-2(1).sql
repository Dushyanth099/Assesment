-- CREATE TABLE Customer (
--     ID INT PRIMARY KEY,
--     Customer_FName VARCHAR(50),
--     Customer_Lname VARCHAR(50)
-- );
-- INSERT INTO Customer (ID, Customer_FName, Customer_Lname)
-- VALUES
--     (10001, 'John', 'Smith'),
--     (10002, 'Dave', 'Franklin'),
--     (10003, 'Febby', 'Johns'),
--     (10004, 'Mary', 'Gibson'),
--     (10005, 'Glory', 'Anson');
-- CREATE TABLE Buying (
--     Customer_ID INT,
--     Product_ID INT,
--     Order_Time DATE
-- );
-- INSERT INTO Buying (Customer_ID, Product_ID, Order_Time)
-- VALUES
--     (10001, 772, '2016-09-01'),
--     (10002, 774, '2015-08-02'),
--     (10003, 775, '2017-04-15'),
--     (10004, 712, '2016-09-28'),
--     (10005, 772, '2019-07-05');
-- CREATE TABLE Product (
--     ID INT PRIMARY KEY,
--     Name VARCHAR(50),
--     Address VARCHAR(100)
-- );

-- INSERT INTO Product (ID, Name, Address)
-- VALUES
--     (772, 'Telephone', '22 Ave, Burwood'),
--     (774, 'Movie', '33 Flower st, Burwood'),
--     (775, 'Book', 'Software Pack'),
--     (712, 'Software Pack', '2 Garden Rd, Geelong');

-- SELECT ID, Customer_FName || ' ' || Customer_Lname AS ConcatenatedName
-- FROM Customer;

-- SELECT Product_ID, COUNT(*) AS OrderCount
-- FROM Buying
-- GROUP BY Product_ID;

-- SELECT *
-- FROM Customer
-- LEFT JOIN Buying ON Customer.ID = Buying.Customer_ID;
-- SELECT *
-- FROM Customer
-- LIMIT 3;
-- SELECT *
-- FROM Buying
-- WHERE Customer_ID BETWEEN 10003 AND 10005;
-- SELECT *
-- FROM Product
-- ORDER BY ID DESC;

-- SELECT Customer_ID, Product_ID, Order_Time
-- FROM Buying
-- UNION
-- SELECT NULL, ID, NULL
-- FROM Product;
-- SELECT *
-- FROM Customer
-- WHERE Customer_FName IN ('Dave', 'Mary');
-- Assuming you want both FName and LName to be unique together
ALTER TABLE Customer
ADD CONSTRAINT unique_name_combination UNIQUE (Customer_FName, Customer_Lname);

