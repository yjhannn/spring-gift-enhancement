DROP TABLE IF EXISTS product;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS wishlist;
DROP TABLE IF EXISTS category;
CREATE TABLE product (
    id LONG AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    price INT,
    image_url VARCHAR(255),
    category_id LONG NOT NULL
);
CREATE TABLE users (
    id LONG AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255) ,
    password VARCHAR(255),
    role VARCHAR(255)
);
CREATE TABLE wishlist (
    id LONG AUTO_INCREMENT PRIMARY KEY,
    user_id LONG NOT NULL,
    product_id LONG NOT NULL,
    quantity INT
);
CREATE TABLE category (
    id LONG AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    color VARCHAR(255),
    image_url VARCHAR(255),
    description VARCHAR(255)
);