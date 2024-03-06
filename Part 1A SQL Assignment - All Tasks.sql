# Part 1 / Task 1
USE sql_store;
SELECT last_name, first_name, points, (points*10) + 100 
from customers;
SELECT last_name, first_name, points, (points+10)*100 as Discount_factor
from customers; 

# Part 1 / Task 2
Alter table products
add column New_price dec (10,2)
GENERATED ALWAYS AS (unit_price*1.1) STORED;
select Product_id, name, unit_price, New_price
from products;

# Part 1 / Task 3
SELECT * FROM customers WHERE birth_date >= '1990-01-01';

# Part 1 / Task 4
use sql_inventory; 
select product_id, name, quantity_in_stock
from products
WHERE quantity_in_stock=(SELECT MAX(quantity_in_stock) FROM products);

# Part 1 / Task 5
select product_id, name, unit_price
from products
WHERE unit_price=(SELECT MAX(unit_price) FROM products);

# Part 1 / Task 6
USE sql_store;
select first_name, last_name, address, birth_date
from customers
WHERE birth_date=(SELECT min(birth_date) FROM customers);