COPY users(user_id, name, email, password)
FROM 'E:\skims\zomato-schema - users.csv'
DELIMITER ','
CSV HEADER;

COPY restaurants(r_id, r_name,cuisine)
FROM 'E:\skims\zomato-schema - restaurants.csv'
DELIMITER ','
CSV HEADER;

COPY food(f_id, f_name,typr)
FROM 'E:\skims\zomato-schema - food.csv'
DELIMITER ','
CSV HEADER;

COPY menu(menu_id, r_id, f_id, price)
FROM 'E:\skims\zomato-schema - menu.csv'
DELIMITER ','
CSV HEADER;

COPY orders(order_id,user_id, r_id, amount,date,partner_id,delivery_time,delivery_rating, restaurant_rating)
FROM 'E:\skims\zomato-schema - orders.csv'
DELIMITER ','
CSV HEADER;

COPY delivery_partner(partner_id, partner_name)
FROM 'E:\skims\zomato-schema - delivery_partner.csv'
DELIMITER ','
CSV HEADER;

COPY order_details(id,order_id,f_id)
FROM 'E:\skims\zomato-schema - order_details.csv'
DELIMITER ','
CSV HEADER;
