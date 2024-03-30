create database books;
use books;

CREATE TABLE Books (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  author VARCHAR(255) NOT NULL,
  genre VARCHAR(255),
  price DECIMAL(10,2) NOT NULL,
  publication_date DATE NOT NULL
);

CREATE TABLE Customers (
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  phone_number VARCHAR(20) NOT NULL
);

CREATE TABLE Orders (
  id SERIAL PRIMARY KEY,
  customer_id INTEGER NOT NULL REFERENCES Customers(id),
  order_date DATE NOT NULL,
  total_amount DECIMAL(10,2) NOT NULL
);

CREATE TABLE Order_Details (
  order_id INTEGER NOT NULL REFERENCES Orders(id),
  book_id INTEGER NOT NULL REFERENCES Books(id),
  quantity INTEGER NOT NULL,
  subtotal DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (order_id, book_id)
);

INSERT INTO Books (title, author, genre, price, publication_date)
VALUES
('Book 1', 'Author 1', 'Genre 1', 10.99, '2022-01-01'),
('Book 2', 'Author 2', 'Genre 2', 12.99, '2022-02-03'),
('Book 3', 'Author 3', 'Genre 3', 9.99, '2022-03-05'),
('Book 4', 'Author 4', 'Genre 1', 11.99, '2022-04-07'),
('Book 5', 'Author 5', 'Genre 2', 14.99, '2022-05-09'),
('Book 6', 'Author 6', 'Genre 3', 8.99, '2022-06-11'),
('Book 7', 'Author 7', 'Genre 1', 10.99, '2022-07-13'),
('Book 8', 'Author 8', 'Genre 2', 12.99, '2022-08-15'),
('Book 9', 'Author 9', 'Genre 3', 9.99, '2022-09-17'),
('Book 10', 'Author 10', 'Genre 1', 11.99, '2022-10-19'),
('Book 11', 'Author 11', 'Genre 2', 14.99, '2022-11-21'),
('Book 12', 'Author 12', 'Genre 3', 8.99, '2022-12-23'),
('Book 13', 'Author 13', 'Genre 1', 10.99, '2023-01-25'),
('Book 14', 'Author 14', 'Genre 2', 12.99, '2023-02-27'),
('Book 15', 'Author 15', 'Genre 3', 9.99, '2023-03-29'),
('Book 16', 'Author 16', 'Genre 1', 11.99, '2023-04-01'),
('Book 17', 'Author 17', 'Genre 2', 14.99, '2023-05-03'),
('Book 18', 'Author 18', 'Genre 3', 8.99, '2023-06-05'),
('Book 19', 'Author 19', 'Genre 1', 10.99, '2023-07-07'),
('Book 20', 'Author 20', 'Genre 2', 12.99, '2023-08-09'),
('Book 21', 'Author 21', 'Genre 3', 9.99, '2023-09-11'),
('Book 22', 'Author 22', 'Genre 1', 11.99, '2023-10-13'),
('Book 23', 'Author 23', 'Genre 2', 14.99, '2023-11-15'),
('Book 24', 'Author 24', 'Genre 3', 8.99, '2023-12-17'),
('Book 25', 'Author 25', 'Genre 1', 10.99, '2024-01-19');

INSERT INTO Customers (first_name, last_name, email, address, phone_number)
VALUES
('John', 'Doe', 'john@example.com', '123 Main St', '555-1234'),
('Jane', 'Smith', 'jane@example.com', '456 Elm St', '555-5678'),
('Michael', 'Johnson', 'michael@example.com', '789 Oak St', '555-9101'),
('Emily', 'Brown', 'emily@example.com', '101 Pine St', '555-1212'),
('William', 'Jones', 'william@example.com', '1313 Mockingbird Ln', '555-1414'),
('Sophia', 'Davis', 'sophia@example.com', '1515 Cherry Ave', '555-1616'),
('Matthew', 'Miller', 'matthew@example.com', '1717 Maple St', '555-1818'),
('Olivia', 'Wilson', 'olivia@example.com', '1919 Cedar St', '555-2020'),
('Daniel', 'Moore', 'daniel@example.com', '2121 Pine St', '555-2222'),
('Isabella', 'Taylor', 'isabella@example.com', '2323 Oak St', '555-2424'),
('David', 'Anderson', 'david@example.com', '2525 Elm St', '555-2626'),
('Emma', 'Thomas', 'emma@example.com', '2727 Maple St', '555-2828'),
('Alexander', 'Jackson', 'alexander@example.com', '2929 Cedar St', '555-3030'),
('Ava', 'White', 'ava@example.com', '3131 Pine St', '555-3232'),
('Ethan', 'Harris', 'ethan@example.com', '3333 Oak St', '555-3434'),
('Mia', 'Martin', 'mia@example.com', '3535 Elm St', '555-3636'),
('James', 'Thompson', 'james@example.com', '3737 Maple St', '555-3838'),
('Charlotte', 'Garcia', 'charlotte@example.com', '3939 Cedar St', '555-4040'),
('Benjamin', 'Martinez', 'benjamin@example.com', '4141 Pine St', '555-4242'),
('Amelia', 'Robinson', 'amelia@example.com', '4343 Oak St', '555-4444'),
('Lucas', 'Clark', 'lucas@example.com', '4545 Elm St', '555-4646'),
('Harper', 'Rodriguez', 'harper@example.com', '4747 Maple St', '555-4848'),
('Henry', 'Lewis', 'henry@example.com', '4949 Cedar St', '555-5050'),
('Liam', 'Lee', 'liam@example.com', '5151 Pine St', '555-5252');


INSERT INTO Orders (customer_id, order_date, total_amount)
VALUES
(1, '2022-01-01', 50.95),
(2, '2022-02-03', 75.91),
(3, '2022-03-05', 40.97),
(4, '2022-04-07', 60.93),
(5, '2022-05-09', 85.89),
(6, '2022-06-11', 30.99),
(7, '2022-07-13', 45.95),
(8, '2022-08-15', 70.91),
(9, '2022-09-17', 35.97),
(10, '2022-10-19', 55.93),
(11, '2022-11-21', 80.89),
(12, '2022-12-23', 25.99),
(13, '2023-01-25', 40.95),
(14, '2023-02-27', 65.91),
(15, '2023-03-29', 30.97),
(16, '2023-04-01', 50.93),
(17, '2023-05-03', 75.89),
(18, '2023-06-05', 20.99),
(19, '2023-07-07', 35.95),
(20, '2023-08-09', 60.91),
(21, '2023-09-11', 25.97),
(22, '2023-10-13', 45.93),
(23, '2023-11-15', 70.89),
(24, '2023-12-17', 15.99),
(25, '2024-01-19', 30.95);

INSERT INTO Order_Details (order_id, book_id, quantity, subtotal)
VALUES
(1, 1, 1, 10.99),
(2, 2, 2, 12.99),
(3, 3, 3, 9.99),
(4, 4, 4, 11.99),
(5, 5, 5, 14.99),
(6, 6, 6, 8.99),
(7, 7, 7, 10.99),
(8, 8, 8, 12.99),
(9, 9, 9, 9.99),
(10, 10, 10, 11.99),
(11, 11, 11, 14.99),
(12, 12, 12, 8.99),
(13, 13, 13, 10.99),
(14, 14, 14, 12.99),
(15, 15, 15, 9.99),
(16, 16, 16, 11.99),
(17, 17, 17, 14.99),
(18, 18, 18, 8.99),
(19, 19, 19, 10.99),
(20, 20, 20, 12.99),
(21, 21, 21, 9.99),
(22, 22, 22, 11.99),
(23, 23, 23, 14.99),
(24, 24, 24, 8.99),
(25, 25, 25, 10.99);

 -- 1. Total Number of Customers:
SELECT COUNT(*) AS total_customers
FROM customers;

 -- 2. Average Order Value:
SELECT AVG(total_amount) AS average_order_value
FROM (
    SELECT o.id, SUM(od.subtotal) AS total_amount
    FROM Orders o
    JOIN Order_Details od ON o.id = od.order_id
    GROUP BY o.id
) AS order_totals;

 -- 3. Most Frequent Genre:
SELECT genre, COUNT(*) AS genre_count
FROM Books
GROUP BY genre
ORDER BY genre_count DESC
LIMIT 1;

 -- 4. Top 5 Customers by Total Spending:
SELECT c.id AS customer_id,
       CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
       SUM(od.quantity * b.price) AS total_spending
FROM Customers c
JOIN Orders o ON c.id = o.customer_id
JOIN Order_Details od ON o.id = od.order_id
JOIN Books b ON od.book_id = b.id
GROUP BY c.id, customer_name
ORDER BY total_spending DESC
LIMIT 5;

 -- 5. Number of Orders per Customer:
SELECT c.id AS customer_id, 
       CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
       COUNT(o.id) AS num_orders
FROM Customers c
LEFT JOIN Orders o ON c.id = o.customer_id
GROUP BY c.id, customer_name;

 -- 6. Earliest and Latest Order Dates:
SELECT MIN(order_date) AS earliest_order_date, MAX(order_date) AS latest_order_date
FROM Orders;

 -- 7. Total Number of Books Sold:
SELECT SUM(quantity) AS total_books_sold
FROM Order_Details;

 -- 8. Revenue by Genre:
SELECT b.genre, SUM(od.subtotal) AS total_revenue
FROM Order_Details od
JOIN Books b ON od.book_id = b.id
GROUP BY b.genre;

 -- 9. Average Order Value by Customer:
SELECT c.id AS customer_id,
       CONCAT(c.first_name, ' ', c.last_name) AS customer_name,
       AVG(o.total_amount) AS average_order_value
FROM Customers c
JOIN Orders o ON c.id = o.customer_id
GROUP BY c.id, customer_name;

 -- 10. Orders Placed on a Specific Date:
SELECT *
FROM Orders
WHERE order_date = '2022-01-01'; -- Replace '2022-01-01' with the specific date you want to query

