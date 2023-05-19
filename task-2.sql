CREATE DATABASE library;

USE library;

CREATE TABLE authors (
  authorId INT PRIMARY KEY AUTO_INCREMENT,
  authorName VARCHAR(50) NOT NULL
);

CREATE TABLE books (
  bookId INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(100) NOT NULL,
  authorId INT,
  FOREIGN KEY (authorId) REFERENCES authors(authorId) ON DELETE CASCADE
);

CREATE TABLE borrowers (
  borrowerId INT PRIMARY KEY AUTO_INCREMENT,
  borrowerName VARCHAR(50) NOT NULL,
  email VARCHAR(50)
);

CREATE TABLE transactions (
  transactionId INT PRIMARY KEY AUTO_INCREMENT,
  bookId INT,
  borrowerId INT,
  FOREIGN KEY (bookId) REFERENCES books(bookId) ON DELETE CASCADE,
  FOREIGN KEY (borrowerId) REFERENCES borrowers(borrowerId) ON DELETE CASCADE
);
