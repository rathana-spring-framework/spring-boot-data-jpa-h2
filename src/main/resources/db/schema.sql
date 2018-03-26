DROP TABLE IF EXISTS author;
DROP TABLE IF EXISTS article;
DROP TABLE IF EXISTS category;

CREATE TABLE author(
  id INTEGER NOT NULL ,
  name VARCHAR (25) NOT  NULL,
  email VARCHAR (50) NOT NULL,
  password VARCHAR (100) NULL NULL ,
  created_date TIMESTAMP ,
  PRIMARY KEY (id)
);

CREATE TABLE category(
  id INTEGER NOT NULL ,
  name VARCHAR (25) NOT  NULL,
  description VARCHAR (300) NULL,
  created_date TIMESTAMP ,
  PRIMARY KEY (id)
);

CREATE TABLE article(
  id INTEGER NOT NULL ,
  title VARCHAR(100) NOT  NULL,
  content_text VARCHAR(MAX) NOT NULL,
  created_date TIMESTAMP,
  author_id INTEGER NOT NULL DEFAULT 0,
  category_id INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (id)
);