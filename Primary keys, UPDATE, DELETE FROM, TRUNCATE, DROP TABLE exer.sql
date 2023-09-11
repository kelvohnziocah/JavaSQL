use sys;
#Create the customers table with an auto-increment primary key

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email VARCHAR(255)
);

#Insert some customers

INSERT INTO Customers (first_name, last_name, email)
VALUES
    ('John', 'Doe', 'john.doe@example.com'),
    ('Jane', 'Smith', 'jane.smith@example.com'),
    ('Bob', 'Johnson', 'bob.johnson@example.com');

#Update customers using the UPDATE statement with a WHERE clause referring to the id. For example, to update the email of a customer with ID 1

UPDATE Customers
SET email = 'newemail@example.com'
WHERE customer_id = 1;

#Delete customers with the DELETE statement using a WHERE clause referring to the id. For example, to delete a customer with ID 2

DELETE FROM Customers
WHERE customer_id = 2;

#Delete all customers with a TRUNCATE statement:

TRUNCATE TABLE Customers;

#Making primary key 

-- customers table
CREATE TABLE Customers (
 customer_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 first_name VARCHAR(255) NOT NULL,
 last_name VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL
);

-- Products
CREATE TABLE Products (
 product_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 product_name VARCHAR(255) NOT NULL,
 product_description VARCHAR(255) NOT NULL,
 product_price DECIMAL(10, 2) NOT NULL,
 product_quantity INT NOT NULL
);

-- Orders table
CREATE TABLE Orders (
 order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 customer_id INT NOT NULL,
 expected_arrival_time DATE,
 FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Product_Orders table
CREATE TABLE Product_Orders (
 order_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 product_name VARCHAR(255) NOT NULL,
 total_revenue DOUBLE
);


