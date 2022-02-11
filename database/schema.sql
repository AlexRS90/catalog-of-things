CREATE TABLE author (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100)
);

CREATE TABLE label (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  title VARCHAR(100),
  color VARCHAR(50)
);

CREATE TABLE genre (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(100)
);

CREATE TABLE game (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  multiplayer BOOLEAN,
  last_played_at DATE,
  genre INT,
  author INT,
  label INT,
  publish_date DATE,
  archived BOOLEAN,
  CONSTRAINT genre_id_fk FOREIGN KEY(genre) REFERENCES genre(id),
  CONSTRAINT author_id_fk FOREIGN KEY(author) REFERENCES author(id),
  CONSTRAINT label_id_fk FOREIGN KEY(label) REFERENCES label(id)
);

CREATE TABLE musicAlbum (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  on_spotify BOOLEAN,
  genre INT,
  author INT,
  label INT,
  publish_date DATE,
  archived BOOLEAN,
  CONSTRAINT genre_id_fk FOREIGN KEY(genre) REFERENCES genre(id),
  CONSTRAINT author_id_fk FOREIGN KEY(author) REFERENCES author(id),
  CONSTRAINT label_id_fk FOREIGN KEY(label) REFERENCES label(id)
);

CREATE TABLE book (
  id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  publisher VARCHAR(100),
  cover_state VARCHAR(100),
  genre INT,
  author INT,
  label INT,
  publish_date DATE,
  archived BOOLEAN,
  CONSTRAINT genre_id_fk FOREIGN KEY(genre) REFERENCES genre(id),
  CONSTRAINT author_id_fk FOREIGN KEY(author) REFERENCES author(id),
  CONSTRAINT label_id_fk FOREIGN KEY(label) REFERENCES label(id)
);
