-- Create the alx_book_store database
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- Use the alx_book_store database
USE alx_book_store;

-- Create the Authors table
CREATE TABLE IF NOT EXISTS authors (
	author_id INT PRIMARY KEY AUTO_INCREMENT,
	author_name VARCHAR(215) NOT NULL
);

-- Create Books table
CREATE TABLE IF NOT EXISTS books (
	book_id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(130) NOT NULL,
	author_id INT,	
	price DOUBLE NOT NULL,
	publication_date DATE,
	FOREIGN KEY (author_id) REFERENCES authors(author_id),
);

-- Create Customers table
CREATE TABLE IF NOT EXISTS customers (
	customer_id INT PRIMARY KEY AUTO_INCREMENT,
	customer_name VARCHAR(215) NOT NULL,
	email VARCHAR(215) NOT NULL,
	address TEXT NOT NULL
);

-- Create Orders table
CREATE TABLE IF NOT EXISTS orders (
	order_id INT PRIMARY KEY AUTO_INCREMENT,
	customer_id INT,
	order_date DATE NOT NULL,
	 FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
)

-- Create Order_Details table
CREATE TABLE IF NOT EXISTS order_details (
	orderdetailid INT PRIMARY KEY AUTO_INCREMENT,
	order_id INT,
	book_id INT,
	quantity DOUBLE NOT NULL,
	FOREIGN KEY (order_id) REFERENCES orders(order_id),
	Foreign Key (book_id) REFERENCES books(book_id)
)