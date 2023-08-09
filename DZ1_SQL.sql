#Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными:
INSERT INTO mobile_phone(product_name, manufacturer, product_count, price) VALUES ("iPhone X", "Apple", "3", "76000");
INSERT INTO mobile_phone(product_name, manufacturer, product_count, price) VALUES ("iPhone 8", "Apple", "2", "51000");
INSERT INTO mobile_phone(product_name, manufacturer, product_count, price) VALUES ("Galaxy S9", "Samsung", "2", "56000");
INSERT INTO mobile_phone(product_name, manufacturer, product_count, price) VALUES ("Galaxy S8", "Samsung", "1", "41000");
INSERT INTO mobile_phone(product_name, manufacturer, product_count, price) VALUES ("P20 Pro", "Huawei", "5", "36000");
SELECT * FROM homework1.mobile_phone;

#Выведите весь ассортимент товаров марки “Samsung”:
SELECT * FROM homework1.mobile_phone
where manufacturer LIKE "Samsung";

#Выведите название, производителя и цену для товаров, количество которых превышает 2:
SELECT product_name, manufacturer, price FROM homework1.mobile_phone
where product_count > 2;
