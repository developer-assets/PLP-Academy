-- Check if LibraryDB exists, and drop it if it does
DROP DATABASE IF EXISTS LibraryDB;

-- Create the LibraryDB database
CREATE DATABASE LibraryDB ;

-- Use the LibraryDB  database
USE LibraryDB;

-- Create the books table
CREATE TABLE Books (
	BookID INT PRIMARY KEY,
    Title VARCHAR(500),
    Author VARCHAR(100),
    Genre VARCHAR(100),
    PublicationYear DATE
);

-- Insert dummy values into the table
INSERT INTO Books (BookID, Title, Author, Genre, PublicationYear) VALUES
(1, 'To Kill a Mockingbird', 'Harper Lee', 'Fiction', '1960-07-11'),
(2, '1984', 'George Orwell', 'Dystopian', '1949-06-08'),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Classic', '1925-04-10'),
(4, 'Pride and Prejudice', 'Jane Austen', 'Romance', '1813-01-28'),
(5, 'Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', 'Fantasy', '1997-06-26'),
(6, 'Chronicles of AI', 'Patrick Obama', 'Technology(AI)', '2020-04-21');

-- Fetch everything from the table
SELECT * FROM Books WHERE YEAR(PublicationYear) = 2020;

-- Getting distinct genres available in the Books table
SELECT DISTINCT Genre FROM Books;

-- Aliasing the column Author as BookAuthor in a query result
SELECT BookID, Title, Author AS BookAuthor, Genre, PublicationYear FROM Books;
