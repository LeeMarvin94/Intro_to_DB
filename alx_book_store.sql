-- Mysql script for ALX project learning purposes

-- CREATING THE alx_book_store database
CREATE DATABASE IF NOT EXISTS alx_book_store;

-- Selecting the alx_book_store database
USE alx_book_store;

-- Table: Books 
CREATE TABLE Books(
	book_id INT PRIMARY KEY,
	title VARCHAR(130),
	author_id INT,
	price FLOAT,
	publication_date DATE
);

-- Table: Stores
CREATE TABLE Authors(
	author_id INT PRIMARY KEY,
	author_name VARCHAR(215),
	-- FOREIGN KEY (author_id) REFERENCES Books(author_id)
);

-- Table: Customers
CREATE TABLE Customers(
	customer_id INT PRIMARY KEY,
	customer_name VARCHAR(215),
	email VARCHAR(215),
	address TEXT
);

-- Table: Orders
CREATE TABLE Orders(
	order_id INT PRIMARY KEY,
	customer_id INT,
	order_date DATE
	FOREIGN KEY (customer_id) REFERENCES Customers(cusomer_id)
);

-- Table: Order_Details
CREATE TABLE Order_Details(
	orderdetail_id INT PRIMARY KEY,
	order_id INT,
	book_id INT,
	quantity FLOAT
);


