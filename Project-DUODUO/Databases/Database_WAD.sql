-- create database WAD;
-- SET FOREIGN_KEY_CHECKS=0; 

DROP TABLE IF exists customers;
CREATE TABLE customers (
customer_id INT PRIMARY KEY AUTO_INCREMENT,
customername VARCHAR(50),
password VARCHAR(50),
address VARCHAR(255),
email VARCHAR(50),
phone VARCHAR(20)
);

DROP TABLE IF exists vendors;
CREATE TABLE vendors (
vendor_id INT PRIMARY KEY AUTO_INCREMENT,
vendor_name VARCHAR(50),
password VARCHAR(50),
address VARCHAR(255),
email VARCHAR(50),
phone VARCHAR(20),
UNIQUE (vendor_id) -- add unique constrain
);

DROP TABLE IF exists categories;
CREATE TABLE categories (
category_name VARCHAR(50) PRIMARY KEY,
description TEXT
);

DROP TABLE IF exists products;
CREATE TABLE products (
product_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100),
description text,
price DECIMAL(10, 2),
vendor_name VARCHAR(50),
vendor_id INT,
FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id),
store_id INT,
FOREIGN KEY (store_id) REFERENCES stores(store_id),
category_name VARCHAR(50),
FOREIGN KEY (category_name) REFERENCES categories(category_name),
promotion_id INT,
FOREIGN KEY (promotion_id) REFERENCES discount_promotion(promotion_id),
cart_id INT,
FOREIGN KEY (cart_id) REFERENCES shopping_cart(cart_id),
image_url varchar(255),
likes INT,
dislikes INT,
add_to_cart VARCHAR(255)
);

DROP TABLE IF exists comments;
CREATE TABLE comments(
comment_id INT primary KEY AUTO_INCREMENT,
tims DATE,
content TEXT,
customername VARCHAR(50),
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
product_id INT,
FOREIGN KEY (product_id) REFERENCES products(product_id)
);

DROP TABLE IF exists purchase_record;
CREATE TABLE purchase_record (
purchase_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
vendor_id INT,
FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id),
product_id INT,
FOREIGN KEY (product_id) REFERENCES products(product_id),
date DATE,
numbers int,
price DECIMAL(10,2),
status BOOLEAN NOT NULL DEFAULT false,
courier_number INT,
courier_company_name varchar(50),
tracking_info TEXT, -- Displays information about the current location of the item
delivery_time DATETIME 
);

DROP TABLE IF exists shopping_cart;
CREATE TABLE shopping_cart (
cart_id INT PRIMARY KEY AUTO_INCREMENT,
customer_id INT UNIQUE,
FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
product_id INT,
FOREIGN KEY (product_id) REFERENCES products(product_id),
quantity INT
);

DROP TABLE IF exists stores;
CREATE TABLE stores (
  store_id INT PRIMARY KEY AUTO_INCREMENT,
  store_name VARCHAR(50),
  vendor_name VARCHAR(50),
  vendor_id INT UNIQUE, -- Unique
  FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id) ON DELETE CASCADE
);

DROP TABLE IF exists discount_promotion;
CREATE TABLE discount_promotion(
promotion_id INT PRIMARY KEY AUTO_INCREMENT,
store_id INT,
FOREIGN KEY (store_id) REFERENCES stores(store_id),
product_id INT,
FOREIGN KEY (product_id) REFERENCES products(product_id),
start_date DATE,
end_date DATE,
new_price DECIMAL(10, 2)
);

DROP TABLE IF exists message;
CREATE TABLE message(
message_id INT PRIMARY KEY AUTO_INCREMENT,
vendor_id INT NOT NULL, 
customer_id INT NOT NULL, 
product_name VARCHAR(100) NOT NULL,
content TEXT NOT NULL, 
send_time DATETIME DEFAULT CURRENT_TIMESTAMP, -- 消息发送时间，默认为当前时间
FOREIGN KEY (customer_id) REFERENCES customers(customer_id), -- 外键关联customers表的customer_id
FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id)
);
