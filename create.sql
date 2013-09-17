CREATE DATABASE articledb WITH OWNER username ENCODING 'UTF8';

CREATE TABLE articles (
  id serial PRIMARY KEY,
  title varchar(50) NOT NULL,
  body varchar(32000) NOT NULL,
  created_at timestamp DEFAULT current_timestamp
);

INSERT INTO articles (title, body) VALUES ('Test title 1', 'Test body 1');
INSERT INTO articles (title, body) VALUES ('Test title 2', 'Test body 2');
INSERT INTO articles (title, body) VALUES ('Test title 3', 'Test body 3');
