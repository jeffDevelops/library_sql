-- BASIC QUERIES
-- Unless otherwise stated, all queries should return all columns



-- Get all information about all authors
SELECT * FROM authors;
-- Get just the name and birth year of all authors
SELECT name, birth_year FROM authors;
-- Get all authors born in the 20th centruy or later
SELECT * FROM authors WHERE birth_year >= 1900;
-- Get all authors born in the USA
SELECT * FROM authors WHERE nationality = 'United States of America';
-- Get all books published on 1985
SELECT * FROM books WHERE publication_date = 1985;
-- Get all books published before 1989
SELECT * FROM books WHERE publication_date < 1989;
-- Get just the title of all books.
SELECT title FROM books;
-- Get just the year that 'A Dance with Dragons' was published
  -- Cry when you realize how long it's been
SELECT publication_date FROM books WHERE title = 'A Dance with Dragons'; 
-- Get all books which have `the` somewhere in their title (hint, look up LIKE/ILIKE)
SELECT title FROM books WHERE title LIKE '%the%';
-- Add yourself as an author
INSERT INTO authors (id, name, nationality, birth_year) VALUES
(9, 'Jeffery Reynolds', 'United States of America', 1992);
-- Add two books that you'd like to write (you can hard-code your id as the author id)
INSERT INTO books (id, title, publication_date, author_id) VALUES
(69, 'Music Theory for the Electronic Musician', 2040, 9),
(70, 'How To Not Spend Inordinate Amounts of Money At Target: A Foolproof Guide to Avoiding Target At All Costs', 2030, 9);
-- Update one of your books to have a new title
UPDATE books SET title='How To Not Spend Entire Paychecks At Target: Just Don''t Go' WHERE id=70;
--(Hooray for escaping quotes!)
-- Delete your books (nobody wants to read those anyway...)
DELETE FROM books WHERE author_id=9;
-- Delete your author entry
DELETE FROM authors WHERE name='Jeffery Reynolds';