CREATE DATABASE IF NOT EXISTS supermarket;
USE supermarket; 

DROP TABLE IF EXISTS branch;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS invoice;
DROP TABLE IF EXISTS revenue;

CREATE TABLE branch (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    branch_id VARCHAR(1) NOT NULL,
    city VARCHAR(50) NOT NULL,
    rating DECIMAL(4,2) NOT NULL
);

CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_type VARCHAR(50) NOT NULL,
    gender VARCHAR(20) NOT NULL
);

CREATE TABLE product (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    product_line VARCHAR(100) NOT NULL,
    unit_price DECIMAL(10, 2) NOT NULL
    );

CREATE TABLE invoice (
    invoice_id CHAR(50) PRIMARY KEY,
    date_ DATE NOT NULL,
    time_ TIME NOT NULL,
    payment VARCHAR(50),
    quantity INT NOT NULL, 
    total DECIMAL(10, 2) NOT NULL,
    tax DECIMAL(10, 2) NOT NULL,
    customer_id INT AUTO_INCREMENT, 
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE revenue (
    gross_margin_percentage DECIMAL(5, 2),
    gross_income DECIMAL(10, 2),
    cogs DECIMAL(10, 2),
    invoice_id CHAR(50),
    FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id)
);