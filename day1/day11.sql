show databases;
create database order_management;
use order_management;

CREATE TABLE orders (
	order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    product_name VARCHAR(100) NOT NULL,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    order_date DATE NOT NULL,
    status VARCHAR(20) DEFAULT 'pending'
);

INSERT INTO orders (customer_name, product_name, quantity, price, order_date, status) VALUES
('Alice Johnson', 'Wireless Mouse', 2, 25.99, '2025-09-15', 'completed'),
('Bob Smith', 'Mechanical Keyboard', 1, 79.50, '2025-09-16', 'pending'),
('Charlie Brown', 'USB-C Hub', 3, 19.99, '2025-09-17', 'shipped'),
('Diana Prince', '27" Monitor', 1, 229.99, '2025-09-18', 'pending'),
('Ethan Hunt', 'Laptop Stand', 2, 39.99, '2025-09-18', 'completed'),
('Fiona Gallagher', 'Noise Cancelling Headphones', 1, 129.95, '2025-09-19', 'shipped'),
('George Martin', 'Webcam', 2, 59.90, '2025-09-20', 'pending');

select * from orders;

select * from orders order by price desc;

select * from orders order by price desc limit 1;

select * from orders order by price desc limit 1 offset 1;

select * from orders where status in('shipped');

select max(price) from orders;

select min(price) from orders;

select avg(price) from orders;

select count(*), status from orders group by status;
