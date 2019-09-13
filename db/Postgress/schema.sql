DROP DATABASE IF EXISTS photos;

CREATE DATABASE photos;

GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO postgres;

\connect photos;

CREATE TABLE listings (
  id SERIAL PRIMARY KEY
);

CREATE TABLE images(
  id SERIAL PRIMARY KEY,
  url varchar(1500) NOT NULL,
  description varchar(255),
  user_submit boolean,
  date date
);

CREATE TABLE listings_images(
  id SERIAL PRIMARY KEY,
  listing_id INT NOT NULL,
  image_id INT NOT NULL
);
