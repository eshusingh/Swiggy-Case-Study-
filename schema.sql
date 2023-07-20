CREATE TABLE users
(
	user_id int PRIMARY KEY,
	name varchar(70),
	email varchar(90),
	password varchar(90)
);

CREATE TABLE restaurants
(
	r_id  int PRIMARY KEY,
	r_name  varchar(90),
	cuisine varchar(90)
);

CREATE TABLE food(
  f_id int PRIMARY KEY,
	f_name varchar(90),
	typr varchar(90)
);

CREATE TABLE menu(
menu_id int PRIMARY KEY,
	r_id int,
	f_id int,
	price int
);

CREATE TABLE orders(
	order_id int PRIMARY KEY,
	user_id int,
	r_id int,
	amount int,
	date date,
	partner_id int,
	delivery_time time,
	delivery_rating int,
	restaurant_rating int
);

CREATE TABLE delivery_partner(
partner_id int PRIMARY KEY,
	partner_name varchar(90)
);

CREATE TABLE order_details(
 id int PRIMARY KEY,
	order_id int,
	f_id int
);
