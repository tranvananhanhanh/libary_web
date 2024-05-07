-- Insert data into authors table
INSERT INTO authors (author_id, name, nationality, birth_year)
VALUES 
    (1, 'George Orwell', 'British', '1903-06-25'),
    (2, 'Harper Lee', 'American', '1926-04-28'),
    (3, 'Leo Tolstoy', 'Russian', '1828-09-09'),
    (4, 'Emily Brontë', 'British', '1818-07-30'),
    (5, 'Mark Twain', 'American', '1835-11-30'),
    (6, 'J.R.R. Tolkien', 'British', '1892-01-03'),
    (7, 'Jane Austen', 'British', '1775-12-16'),
    (8, 'Fyodor Dostoevsky', 'Russian', '1821-11-11'),
    (9, 'Agatha Christie', 'British', '1890-09-15');

    

-- Insert data into users table
INSERT INTO users (user_id, name, birth_year, email, address, password)
VALUES 
    (1, 'Alice Johnson', '1990-05-15', 'alice.johnson@example.com', '123 Main St, Anytown, USA', 'password123'),
    (2, 'Bob Smith', '1985-10-25', 'bob.smith@example.com', '456 Elm St, Othertown, USA', 'pass123'),
    (3, 'Charlie Brown', '1993-07-12', 'charlie.brown@example.com', '789 Oak St, Anothertown, USA', 'abc123'),
    (4, 'David Jones', '1980-03-18', 'david.jones@example.com', '101 Pine St, Somewhere, USA', 'qwerty'),
    (5, 'Ella Davis', '1988-11-02', 'ella.davis@example.com', '246 Cedar St, Nowhere, USA', 'hello123'),
    (6, 'Frank White', '1975-09-30', 'frank.white@example.com', '369 Maple St, Anywhere, USA', 'p@ssw0rd'),
    (7, 'Grace Lee', '1995-02-14', 'grace.lee@example.com', '555 Birch St, Nowheretown, USA', 'letmein'),
    (8, 'Henry Adams', '1982-06-09', 'henry.adams@example.com', '777 Walnut St, Uptown, USA', 'admin123'),
    (9, 'Isabel Garcia', '1991-12-05', 'isabel.garcia@example.com', '888 Oak St, Downtown, USA', 'passw0rd');
   
-- Insert data into report table
INSERT INTO report (report_id, user_id, book_id, status, reserve_book, available_book)
VALUES 
    (1, 1, 1, 'Overdue', '1984', 'To Kill a Mockingbird'),
    (2, 2, 2, 'On Time', 'Pride and Prejudice', 'Moby-Dick'),
    (3, 3, 3, 'Overdue', 'War and Peace', 'Wuthering Heights'),
    (4, 4, 4, 'On Time', 'The Adventures of Huckleberry Finn', 'The Great Gatsby'),
    (5, 5, 5, 'Overdue', 'The Hobbit', 'Jane Eyre'),
    (6, 6, 6, 'On Time', 'Emma', 'Crime and Punishment'),
    (7, 7, 7, 'Overdue', 'Murder on the Orient Express', 'For Whom the Bell Tolls'),
    (8, 8, 8, 'On Time', 'To the Lighthouse', 'Oliver Twist'),
    (9, 9, 9, 'Overdue', 'Harry Potter and the Chamber of Secrets', 'The Catcher in the Rye');


-- Insert data into staff table
select * from staff
INSERT INTO staff (staff_id, name, phone_number, email, login, password, report_id)
VALUES 
    (1, 'Sarah Johnson', 890, 'sarah.johnson@example.com', 'sarah', 'password456', 1),
    (2, 'Michael Brown', 210, 'michael.brown@example.com', 'michael', 'pass456', 2),
    (3, 'Emma Wilson', 555, 'emma.wilson@example.com', 'emma', 'password789', 3),
    (4, 'James Taylor', 4, 'james.taylor@example.com', 'james', 'password123', 4),
    (5, 'Olivia Martinez', 33, 'olivia.martinez@example.com', 'olivia', 'password456', 5),
    (6, 'William Anderson', 2, 'william.anderson@example.com', 'william', 'password789', 6),
    (7, 'Sophia Thomas', 11, 'sophia.thomas@example.com', 'sophia', 'password123', 7),
    (8, 'Daniel Garcia', 66, 'daniel.garcia@example.com', 'daniel', 'password456', 8),
    (9, 'Isabella Brown', 77, 'isabella.brown@example.com', 'isabella', 'password789', 9);

-- Insert data into books table--
select * from books
INSERT INTO books (book_id, title, genre, quantity, status, publish_year, publishing_house, book_file, avg_star, book_cover, total_chapter, book_description, staff_id, author_id)
VALUES 
    (1, '1984', 'Dystopian Fiction', 15, 1, '1949-06-08', 'Secker & Warburg', '1984.pdf', 4, '1984_cover.jpg', 24, 'A dystopian novel by George Orwell.', 1, 1),
    (2, 'To Kill a Mockingbird', 'Southern Gothic', 10, 1, '1960-07-11', 'J. B. Lippincott & Co.', 'mockingbird.pdf', 5, 'mockingbird_cover.jpg', 31, 'A novel by Harper Lee set in the American South.', 2, 2),
    (3, 'War and Peace', 'Historical Fiction', 20, 1, '1869-01-01', 'The Russian Messenger', 'war_and_peace.pdf', 4, 'war_and_peace_cover.jpg', 365, 'A novel by Leo Tolstoy depicting Russian society during the Napoleonic Wars.', 3, 3),
    (4, 'Wuthering Heights', 'Gothic Fiction', 12, 1, '1847-12-01', 'Thomas Cautley Newby', 'wuthering_heights.pdf', 4, 'wuthering_heights_cover.jpg', 34, 'A novel by Emily Brontë set in the Yorkshire moors.', 4, 4),
    (5, 'The Adventures of Huckleberry Finn', 'Adventure Fiction', 18, 1, '1884-12-10', 'Charles L. Webster And Company', 'huckleberry_finn.pdf', 4, 'huckleberry_finn_cover.jpg', 43, 'A novel by Mark Twain about a boy and a runaway slave.', 5, 5),
    (6, 'The Hobbit', 'Fantasy', 14, 1, '1937-09-21', 'Allen & Unwin', 'hobbit.pdf', 5, 'hobbit_cover.jpg', 19, 'A fantasy novel by J.R.R. Tolkien about Bilbo Baggins''s journey.', 6, 6),
    (7, 'Emma', 'Comedy of Manners', 16, 1, '1815-12-23', 'John Murray', 'emma.pdf', 4, 'emma_cover.jpg', 61, 'A novel by Jane Austen about the perils of misconstrued romance.', 7, 7),
    (8, 'Crime and Punishment', 'Psychological Fiction', 10, 1, '1866-11-14', 'The Russian Messenger', 'crime_and_punishment.pdf', 4, 'crime_and_punishment_cover.jpg', 61, 'A novel by Fyodor Dostoevsky exploring moral dilemmas.', 8, 8),
    (9, 'Murder on the Orient Express', 'Mystery', 22, 1, '1934-01-01', 'Collins Crime Club', 'murder_on_the_orient_express.pdf', 4, 'murder_on_the_orient_express_cover.jpg', 36, 'A detective novel by Agatha Christie featuring Hercule Poirot.', 9, 9);

-- Insert data into re table
INSERT INTO re (book_id, user_id, reserve_date, return_date, due)
VALUES 
    (1, 1, '2024-04-01', '2024-04-20', '2024-05-01'),
    (2, 2, '2024-04-10', '2024-04-25', '2024-05-05'),
    (3, 3, '2024-04-15', '2024-05-01', '2024-05-15'),
    (4, 4, '2024-04-20', '2024-05-05', '2024-05-20'),
    (5, 5, '2024-04-25', '2024-05-10', '2024-05-25'),
    (6, 6, '2024-05-01', '2024-05-20', '2024-06-01'),
    (7, 7, '2024-05-05', '2024-05-25', '2024-06-05'),
    (8, 8, '2024-05-10', '2024-05-30', '2024-06-10'),
    (9, 9, '2024-05-15', '2024-06-05', '2024-06-15');
  

-- Insert data into read table
INSERT INTO read (book_id, user_id, star, comment)
VALUES 
    (1, 1, 5, 'I love this book!'),
    (2, 2, 4, 'It was a thrilling read.'),
    (3, 3, 5, 'A masterpiece!'),
    (4, 4, 4, 'A classic.'),
    (5, 5, 4, 'Enjoyable adventure.'),
    (6, 6, 5, 'Couldn''t put it down.'),
    (7, 7, 4, 'Clever mystery.'),
    (8, 8, 4, 'Deeply thought-provoking.'),
    (9, 9, 5, 'Kept me guessing until the end.');
	


   
