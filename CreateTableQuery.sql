CREATE TABLE movies (
	id INT PRIMARY KEY,
	title VARCHAR ( 60 ) UNIQUE,
	director VARCHAR ( 30 ),
	released INT NOT NULL,
	ratings DECIMAL ( 2, 1 ) DEFAULT '0.0' 
);