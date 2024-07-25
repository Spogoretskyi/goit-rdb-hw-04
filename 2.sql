USE LibraryManagement;

INSERT INTO authors (author_name) VALUES 
('George Orwell'),
('Ernest Hemingway');

INSERT INTO genres (genre_name) VALUES 
('Dystopian'),
('Novella');

INSERT INTO books (title, publication_year, author_id, genre_id) VALUES 
('1984', 1949, 1, 1),
('The Old Man and the Sea', 1952, 2, 2);

INSERT INTO users (username, email) VALUES 
('ivan_kravec', 'ivan@example.com'),
('hanna_petrich', 'hanna@example.com');

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date) VALUES 
(1, 1, '2024-07-01', '2024-07-15'),
(2, 2, '2024-07-05', '2024-07-20');