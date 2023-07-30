USE esquema_libros

INSERT users(first_name,last_name,created_at,updated_at) VALUES
('Jane','Austen',Now(),Now()),
('Emily','Dickinson',Now(),Now()),
('Fyodor','Dostoevsky',Now(),Now()),
('William','Shakespeare',Now(),Now()),
('Lau','Tzu',Now(),Now());

INSERT books (tittle,num_of_pages,created_at,updated_at) VALUES
('C Sharp',100,Now(),Now()),
('Java',120,Now(),Now()),
('Python',80,Now(),Now()),
('PHP',90,Now(),Now()),
('Ruby',160,Now(),Now());

UPDATE books 
SET tittle = 'C #'
WHERE id = 1

UPDATE users
SET first_name = 'Bill'
WHERE id = 4;

INSERT favorites(user_id,book_id)VALUES
(1,1),
(1,2);

INSERT favorites(user_id,book_id)VALUES
(2,1),
(2,2),
(2,3);

INSERT favorites(user_id,book_id)VALUES
(3,1),
(3,2),
(3,3),
(3,4);

INSERT favorites(user_id,book_id)VALUES
(4,1),
(4,2),
(4,3),
(4,4),
(4,5);

SELECT users.first_name, favorites.book_id, books.tittle
FROM books
JOIN favorites ON books.id = favorites.book_id
JOIN users ON users.id = favorites.user_id
WHERE books.id = 3;

DELETE FROM favorites
WHERE user_id = 1 AND book_id = 3;

INSERT favorites(user_id,book_id)VALUES
(5,2);

SELECT users.id, users.first_name, books.tittle
FROM users
JOIN favorites ON users.id = favorites.user_id
JOIN books ON books.id = favorites.book_id
WHERE favorites.user_id = 3

SELECT users.id, users.first_name, books.tittle
FROM users
JOIN favorites ON users.id = favorites.user_id
JOIN books ON books.id = favorites.book_id
WHERE favorites.book_id = 5