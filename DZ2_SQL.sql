# 1. Создать таблицу "sales" заполнить ее данными.
CREATE TABLE sales(
id INT UNIQUE auto_increment,
order_date DATE, 
count_product INT
);

INSERT INTO sales(order_date, count_product) VALUES 
("2022-01-01", "156"), 
("2022-01-02", "180"), 
("2022-01-03", "21"),
("2022-01-04", "124"),
("2022-01-05", "341");   

SELECT * FROM sales;

# 2. Для Данных таблицы "sales" укажите тип заказа в зависимости от кол-вы:
# Меньше 100 - Маленький заказ.
# от 100 до 300 - Средний заказ.
# больше 300 - Большой заказ.

SELECT id AS "id заказа",
IF (count_product < 100, "Маленький заказ",
	IF (count_product >= 100 AND count_product <300, "Средний заказ", "Большой заказ")) AS "Тип заказа"
FROM sales;

# 3. Создать таблицу "orders", заполнить ее значениями
 CREATE TABLE orders(
id INT UNIQUE auto_increment,
employee_id varchar(45), 
amount INT,
order_status varchar(45)
);

INSERT INTO orders(employee_id, amount, order_status) VALUES 
("e03", "15.00", "OPEN"), 
("e01", "25.50", "OPEN"), 
("e05", "100.70", "CLOSED"),
("e02", "22.18", "OPEN"),
("e04", "9.50", "CANCALLED");   

SELECT * FROM orders;


# Выберете все заказы. В зависимости от поля order_status выведете столбец full_order_status:
# OPEN - " Order is in open state";
# CLOSED - " Order is closed";
# CANCELLED - " Order is cancelled";

select id AS "ID",
employee_id AS "ORDER ID",
case 
	WHEN order_status = 'OPEN' THEN "Order is in open state"
	WHEN order_status = 'CLOSED' THEN "Order is closed"
	WHEN order_status = 'CANCALLED' THEN "Order is cancelled"
END AS "full_order_status"
from orders;

# 4 Чем 0 отличается от NULL?
# "0" — это значение, константа. 
# A null указывает на "пустое место" — объявленную, но неинициализированную переменную.
