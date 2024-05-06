CREATE TABLE authors (
    author_id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    nationality VARCHAR(255),
    birth_year TIMESTAMP
);
CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    birth_year TIMESTAMP,
    email VARCHAR(255),
    address VARCHAR(255),
    password VARCHAR(255)
);
--in report have user_id& book_id who are not return book on time
CREATE TABLE report (
    report_id INTEGER PRIMARY KEY,
    user_id INTEGER,
    book_id INTEGER,
    status VARCHAR(255),
    reserve_book VARCHAR(255),
    available_book VARCHAR(255)
);

CREATE TABLE staff (
    staff_id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    phone_number INTEGER,
    email VARCHAR(255),
    login VARCHAR(255),
    password VARCHAR(255),
    report_id INTEGER,
    FOREIGN KEY (report_id) REFERENCES report(report_id)
);


CREATE TABLE books (
    book_id INTEGER PRIMARY KEY,
    title VARCHAR(255),
    genre VARCHAR(255),
    quantity INTEGER,
    status INTEGER,
    publish_year TIMESTAMP,
    publishing_house VARCHAR(255),
    book_file VARCHAR(255),
    avg_star INTEGER,
    book_cover VARCHAR(255),
    total_chapter INTEGER,
    book_description VARCHAR(255),
    staff_id INTEGER,
    author_id INTEGER,
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);



CREATE TABLE re (
    book_id INTEGER,
    user_id INTEGER,
    PRIMARY KEY (book_id, user_id),
    reserve_date TIMESTAMP,
    return_date TIMESTAMP,
    due TIMESTAMP,
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);


CREATE TABLE read (
    book_id INTEGER,
    user_id INTEGER,
    PRIMARY KEY (book_id, user_id),
    star INTEGER,
    comment VARCHAR(255),
	FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
	
);