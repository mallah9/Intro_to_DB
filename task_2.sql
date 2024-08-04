CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;

-- Create Books table
CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    isbn VARCHAR(20) UNIQUE,
    title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    genre VARCHAR(50),
    publisher VARCHAR(100),
    description TEXT,
    quantity_in_stock INT,
    image_url VARCHAR(255),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Create Authors table
CREATE TABLE Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(215)
);

-- Create Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

-- Create Orders table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Create Order_Details table
CREATE TABLE Order_Details (
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);
