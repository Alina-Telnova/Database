CREATE DATABASE website;
USE website;
CREATE TABLE users (
user_id INT PRIMARY KEY NOT Null UNIQUE AUTO_INCREMENT, 
user_name varchar(255),
email varchar(255),
password_hash varchar(255),
login_time varchar (255), 
logout_time varchar (255)
);
SELECT * FROM users;

INSERT into users Values
("1", "Иван Иванов", "ivan@example.com", "5f4dcc3", "2023-10-01 08:30", "2023-10-01 17:45"),
("2", "Мария Петрова", "maria@example.com", "098f6b", "2023-10-01 09:15", "2023-10-01 18:30"),
("3", "Алексей Смирнов", "alexey@example.com", "0c944bc72", "2023-10-01 10:00", "2023-10-01 19:00"),
("4", "Елена Кузнецова", "elena@example.com", "b0ceba", "2023-10-01 08:45", "2023-10-01 17:30"),
("5", "Дмитрий Васильев", "dmitry@example.com", "423a40c", "2023-10-01 09:00", "2023-10-01 18:15");

SELECT * FROM users;

CREATE TABLE content (
content_id INT PRIMARY KEY NOT Null UNIQUE AUTO_INCREMENT,
title varchar(255),
genre varchar(255), 
release_date varchar(255), 
duration varchar(255), 
cast varchar(255), 
director varchar(255), 
country varchar(255), 
desc_cont varchar(255)
); 
SELECT * FROM content;

INSERT into content Values
("1", "Интерстеллар", "Фантастика, Драма", "2014-11-06", "169 мин", "Мэттью Макконахи, Энн Хэтэуэй, Джессика Честейн", "Кристофер Нолан", "США, Великобритания", "Группа исследователей отправляется в путешествие через червоточину в поисках нового дома для человечества."),
("2", "Властелин колец: Братство Кольца", "Фэнтези, Приключения", "2001-12-19", "178 мин", "Элайджа Вуд, Иэн Маккеллен, Вигго Мортенсен", "Питер Джексон", "Новая Зеландия, США", "Фродо Бэггинс отправляется в опасное путешествие, чтобы уничтожить магическое кольцо и спасти Средиземье."),
("3", "Крестный отец", "Криминал, Драма", "1972-03-24", "175 мин", "Марлон Брандо, Аль Пачино, Джеймс Каан", "Фрэнсис Форд Коппола", "США", "История семьи Корлеоне, одной из самых могущественных мафиозных семей в Америке."),
("4", "Побег из Шоушенка", "Драма", "1994-09-23", "142 мин", "Тим Роббинс, Морган Фриман, Боб Гантон", "Фрэнк Дарабонт", "США", "Два заключенных заводят дружбу и находят надежду в тюрьме Шоушенк."),
("5", "Начало", "Фантастика, Боевик", "2010-07-16", "148 мин", "Леонардо ДиКаприо, Джозеф Гордон-Левитт, Эллиот Пейдж", "Кристофер Нолан", "США, Великобритания", "Группа специалистов по внедрению в сны пытается совершить идеальное преступление.");

SELECT * FROM content;

CREATE TABLE user_history (
history_id INT PRIMARY KEY NOT Null UNIQUE AUTO_INCREMENT,
user_id INT NOT Null,
content_id INT NOT Null,
stop_time TIME NOT Null, 
last_watched_date DATE,  
FOREIGN KEY (user_id) REFERENCES users(user_id), 
FOREIGN KEY (content_id) REFERENCES content(content_id)); 
-- Пробую удаление таблиц
DROP TABLE user_history;
DROP TABLE content;
-- Проставляем правильный тип данных 
CREATE TABLE users (
user_id INT PRIMARY KEY NOT Null UNIQUE AUTO_INCREMENT, 
user_name varchar(255),
email varchar(255),
password_hash varchar(255),
login_time DATETIME, 
logout_time DATETIME
);
SELECT * FROM users;
INSERT into users Values
("1", "Иван Иванов", "ivan@example.com", "5f4dcc3", "2023-10-01 08:30", "2023-10-01 17:45"),
("2", "Мария Петрова", "maria@example.com", "098f6b", "2023-10-01 09:15", "2023-10-01 18:30"),
("3", "Алексей Смирнов", "alexey@example.com", "0c944bc72", "2023-10-01 10:00", "2023-10-01 19:00"),
("4", "Елена Кузнецова", "elena@example.com", "b0ceba", "2023-10-01 08:45", "2023-10-01 17:30"),
("5", "Дмитрий Васильев", "dmitry@example.com", "423a40c", "2023-10-01 09:00", "2023-10-01 18:15");

SELECT * FROM users;

CREATE TABLE content (
content_id INT PRIMARY KEY NOT Null UNIQUE AUTO_INCREMENT,
title varchar(255),
genre varchar(255), 
release_date DATE, 
duration TIME, 
cast varchar(255), 
director varchar(255), 
country varchar(255), 
desc_cont varchar(255)
); 
SELECT * FROM content;
INSERT into content Values
("1", "Интерстеллар", "Фантастика, Драма", "2014-11-06", "01:30", "Мэттью Макконахи, Энн Хэтэуэй, Джессика Честейн", "Кристофер Нолан", "США, Великобритания", "Группа исследователей отправляется в путешествие через червоточину в поисках нового дома для человечества."),
("2", "Властелин колец: Братство Кольца", "Фэнтези, Приключения", "2001-12-19", "02:32", "Элайджа Вуд, Иэн Маккеллен, Вигго Мортенсен", "Питер Джексон", "Новая Зеландия, США", "Фродо Бэггинс отправляется в опасное путешествие, чтобы уничтожить магическое кольцо и спасти Средиземье."),
("3", "Крестный отец", "Криминал, Драма", "1972-03-24", "01:30", "Марлон Брандо, Аль Пачино, Джеймс Каан", "Фрэнсис Форд Коппола", "США", "История семьи Корлеоне, одной из самых могущественных мафиозных семей в Америке."),
("4", "Побег из Шоушенка", "Драма", "1994-09-23", "01:42", "Тим Роббинс, Морган Фриман, Боб Гантон", "Фрэнк Дарабонт", "США", "Два заключенных заводят дружбу и находят надежду в тюрьме Шоушенк."),
("5", "Начало", "Фантастика, Боевик", "2010-07-16", "01:48", "Леонардо ДиКаприо, Джозеф Гордон-Левитт, Эллиот Пейдж", "Кристофер Нолан", "США, Великобритания", "Группа специалистов по внедрению в сны пытается совершить идеальное преступление.");
SELECT * FROM content;

CREATE TABLE user_history (
history_id INT PRIMARY KEY NOT Null UNIQUE AUTO_INCREMENT,
user_id INT NOT Null,
content_id INT NOT Null,
stop_time TIME, 
last_watched_date DATE,  
FOREIGN KEY (user_id) REFERENCES users(user_id), 
FOREIGN KEY (content_id) REFERENCES content(content_id)); 

SELECT * FROM user_history;

INSERT into user_history Values
("1", "1", "3", "01:15:30", "2023-10-01"),
("2", "1", "1", "02:30:00", "2023-10-03"),
("3", "2", "2", "01:50:45", "2023-10-05"),
("4", "4", "4", "01:10:00", "2023-10-07"),    
("5", "5", "5", "01:25:45", "2023-10-09");  
SELECT * FROM user_history;

DELETE FROM user_history WHERE stop_time < '01:11:00'AND history_id > 0;

ALTER TABLE user_history ADD COLUMN rating INT;
UPDATE user_history SET rating = 5 WHERE history_id = 1;
UPDATE user_history SET rating = 3 WHERE history_id = 4;
UPDATE user_history SET rating = 5 WHERE history_id = 5;

ALTER TABLE user_history DROP COLUMN rating;

-- ЗАПРОСЫ 
SELECT * FROM content; 
SELECT title FROM content Where country = 'США';
SELECT title, genre FROM content Where country = 'США' AND duration > '01:32:00';
SELECT * FROM user_history;
SELECT user_id, stop_time, last_watched_date FROM user_history Where stop_time > '01:15:35' AND (last_watched_date = '2023-10-03' OR last_watched_date ='2023-10-05');