USE DATABASE IF NOT EXIST alx_book_store

CREATE TABLE Books (
    book_id INT Auto_Increment PRIMARY KEY,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Authors (
    author_id INT Auto_Increment PRIMARY KEY,
    author_name VARCHAR(215) NOT NULL
);


CREATE TABLE Customers (
    customer_id INT Auto_Increment PRIMARY KEY,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) UNIQUE,
    address TEXT
);

CREATE TABLE Orders (
    order_id INT Auto_Increment PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_Details (
    orderdetailid INT Auto_Increment PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity DOUBLE,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);