CREATE TABLE customer (
  id INTEGER PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
  surname VARCHAR(32) NOT NULL ,
  name VARCHAR(32) NOT NULL,
  email VARCHAR(32) NOT NULL,
  phone VARCHAR(32),
  address VARCHAR(64) NOT NULL,
  city VARCHAR(32) NOT NULL
);

CREATE TABLE movie (
  id INTEGER PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
  title VARCHAR(128) NOT NULL,
  genre VARCHAR(32) NOT NULL,
  director VARCHAR(64),
  language VARCHAR(32),
  releaseYear INTEGER
);

CREATE TABLE rental (
  id INTEGER PRIMARY KEY NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
  CONSTRAINT customer FOREIGN KEY (id) REFERENCES customer(id),
  CONSTRAINT movie FOREIGN KEY (id) REFERENCES movie(id),
  rentDate DATE,
  returnDate DATE
)