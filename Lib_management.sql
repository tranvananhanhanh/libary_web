CREATE SCHEMA myschema1;
CREATE TABLE myschema1.authors (
    author_id INTEGER PRIMARY KEY,
    name VARCHAR(255),
     nationality VARCHAR(255),
     birth_year TIMESTAMP
 );
CREATE TABLE myschema1.users (
    user_id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    birth_year TIMESTAMP,
    email VARCHAR(255),
    address VARCHAR(255),
    password VARCHAR(255)
);
--in report have user_id& book_id who are not return book on time


CREATE TABLE myschema1.staff (
    staff_id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    phone_number INTEGER,
    email VARCHAR(255),
    password VARCHAR(255)
);


CREATE TABLE myschema1.books (
    book_id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(255),
    quantity INTEGER,
    status VARCHAR(255),
    publish_year TIMESTAMP,
    publishing_house VARCHAR(255),
    book_file VARCHAR(255),
    avg_star real,
    book_cover VARCHAR(255),
    total_chapter INTEGER,
    book_description VARCHAR(255)
);



CREATE TABLE myschema1.report (
    report_id INTEGER PRIMARY KEY,
	user_id integer not null,
	book_id integer not null,
    status VARCHAR(255),
    reserve_book INTEGER,
    available_book INTEGER,
	FOREIGN KEY (user_id) REFERENCES myschema1.users(user_id),
    FOREIGN KEY (book_id) REFERENCES myschema1.books(book_id)
);


CREATE TABLE myschema1.re (
    book_id integer not null,
    user_id integer not null,
    PRIMARY KEY(book_id,user_id),
    FOREIGN KEY (book_id) REFERENCES myschema1.books(book_id),
    FOREIGN KEY (user_id) REFERENCES myschema1.users(user_id),
    reserve_date TIMESTAMP,
    return_date TIMESTAMP,
    due TIMESTAMP
);


CREATE TABLE myschema1.read (
    book_id INTEGER not null,
    user_id INTEGER not null,
    PRIMARY KEY (book_id, user_id),
    star INTEGER,
    comment VARCHAR(255),
	FOREIGN KEY (book_id) REFERENCES myschema1.books(book_id),
    FOREIGN KEY (user_id) REFERENCES myschema1.users(user_id)
);

CREATE TABLE myschema1.maintain (
    book_id integer not null,
    staff_id INTEGER not null,
    PRIMARY KEY (book_id, staff_id),
    FOREIGN KEY (book_id) REFERENCES myschema1.books(book_id),
    FOREIGN KEY (staff_id) REFERENCES myschema1.staff(staff_id)
);

CREATE TABLE myschema1.write (
    book_id integer not null,
    author_id INTEGER not null,
    PRIMARY KEY (book_id,author_id),
    FOREIGN KEY (book_id) REFERENCES myschema1.books(book_id),
    FOREIGN KEY (author_id) REFERENCES myschema1.authors(author_id)
)


INSERT INTO myschema1.authors
VALUES (1000, 'Nguyen Nhat Anh', 'Vietnam', '1960'),
        (1001, 'Nguyen Ngoc Ngan', 'Vietnam', '1950'),
        (1003, 'Macxim Gorki', 'Russia', '1883' );


-- CREATE TABLE myschema1.users (
--     user_id INTEGER PRIMARY KEY,
--     name VARCHAR(255),
--     birth_year TIMESTAMP,
--     email VARCHAR(255),
--     address VARCHAR(255),
--     password VARCHAR(255)
-- );
INSERT INTO myschema1.users
VALUES (001, 'Son', '2004', 'nhatson@gmail.com', 'Hanoi', '2004'),
        (002, 'Manh', '2004', 'manh@gmail.com', 'Hanoi', '2004'),
        (003, 'Van Anh', '2004', 'vananh@gmail.com', 'Hanoi', '2004');

-- CREATE TABLE myschema1.staff (
--     staff_id INTEGER PRIMARY KEY,
--     name VARCHAR(255),
--     phone_number INTEGER,
--     email VARCHAR(255),
--     password VARCHAR(255)
-- );

INSERT INTO myschema1.staff
VALUES (100, 'A', 0012, 'sdffs', 3224),
        (101, 'B', 00123, 'sgfegn', 4256);

-- CREATE TABLE myschema1.books (
--     book_id INTEGER PRIMARY KEY,
--     title VARCHAR(255),
--     genre VARCHAR(255),
--     quantity INTEGER,
--     status VARCHAR(255),
--     publish_year TIMESTAMP,
--     publishing_house VARCHAR(255),
--     book_file VARCHAR(255),
--     avg_star real,
--     book_cover VARCHAR(255),
--     total_chapter INTEGER,
--     book_description VARCHAR(255)
-- );

INSERT INTO myschema1.books
VALUES (500, 'Nguoi Me', 'Tieu thuyet', 2, 'Con', 1980, 'NXB Vanhoa', 'https...', 4, 'https...', 21, 'sdfafsf'),
        (501, 'De men phieu luu ky', 3, 'Con', 1991, 'NXB Kim Dong', 'https....', 4.3, 'https...', 12, 'sdfsdfds');



-- CREATE TABLE myschema1.report (
--     report_id INTEGER PRIMARY KEY,
-- 	user_id integer not null,
-- 	book_id integer not null,
--     status VARCHAR(255),
--     reserve_book INTEGER,
--     available_book INTEGER,
-- 	FOREIGN KEY (user_id) REFERENCES myschema1.users(user_id),
--     FOREIGN KEY (book_id) REFERENCES myschema1.books(book_id)
-- );

INSERT INTO myschema1.report
VALUES (20, 001, 500, 'Con', 2, 3);

-- CREATE TABLE myschema1.re (
--     book_id integer not null,
--     user_id integer not null,
--     PRIMARY KEY(book_id,user_id),
--     FOREIGN KEY (book_id) REFERENCES myschema1.books(book_id),
--     FOREIGN KEY (user_id) REFERENCES myschema1.users(user_id),
--     reserve_date TIMESTAMP,
--     return_date TIMESTAMP,
--     due TIMESTAMP
-- );

INSERT INTO myschema1.re
VALUES (001, 500, '20-12-2004', '23-01-2005', '22-01-2005');

-- CREATE TABLE myschema1.read (
--     book_id INTEGER not null,
--     user_id INTEGER not null,
--     PRIMARY KEY (book_id, user_id),
--     star INTEGER,
--     comment VARCHAR(255),
-- 	FOREIGN KEY (book_id) REFERENCES myschema1.books(book_id),
--     FOREIGN KEY (user_id) REFERENCES myschema1.users(user_id)
-- );

INSERT INTO myschema1.read
VALUES (001, 500, 4, SFSDF);

-- CREATE TABLE myschema1.maintain (
--     book_id integer not null,
--     staff_id INTEGER not null,
--     PRIMARY KEY (book_id, staff_id),
--     FOREIGN KEY (book_id) REFERENCES myschema1.books(book_id),
--     FOREIGN KEY (staff_id) REFERENCES myschema1.staff(staff_id)
-- );

INSERT INTO myschema1.maintain
VALUES (001, 101);

-- CREATE TABLE myschema1.write (
--     book_id integer not null,
--     author_id INTEGER not null,
--     PRIMARY KEY (book_id,author_id),
--     FOREIGN KEY (book_id) REFERENCES myschema1.books(book_id),
--     FOREIGN KEY (author_id) REFERENCES myschema1.authors(author_id)
-- )

INSERT INTO myschema1.write
VALUES (001, 1003);