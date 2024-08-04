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

CREATE TABLE Authors (
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(215)
);

