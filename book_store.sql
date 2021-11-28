-- membuat query
-- Show databases
show databases;

-- create database
create database bookstore;

-- Using Database
use bookstore;

-- Show TABLES
show tables;

-- Create table
create table books (
    id int auto_increment primary key,
    author1 varchar(100) not null,
    author2 varchar(100),
    author3 varchar(100),
    title varchar(100),
    description text,
    place_sell char(3),
    stock int default(0),
    creation_date timestamp default current_timestamp on UPDATE CURRENT_
);


-- Mengupdate / menambahkan column
alter table books add price int default(0);
alter table books add status enum('available', 'out of stock', 'limited');


-- Menghapus column
alter table books drop column place_sell;


-- Insert Data
insert into books(author1, author2, author3, title, description, stock, price, status)
    values
    (
        'Singgih', 'Pratama', 'Mas Tama', 'TamSucces', 'Cara Meraih Kesuksesan', 100, 399000, 'limited'
    ),
    (
        'Habibah', 'Nuraeni', 'Hanni', 'Keungan Termudah', 'Cara Mengatur Keuangan Lembaga', 99, 199000, 'available'
    ),
    (
        'Nikita', 'Dewi', 'Nikiku', 'Hati yang Kuat', 'Cara Menjaga Hati', 10, 99000, 'out of stock'
    );

-- Select semua row pada table
select * from books;

-- select menggunakan alias
select id AS ID, author1 AS A1, author2 AS A2, author3 AS A3 from books;

-- Select menggunakan WHERE untuk ID tertentu
select * from books where ID=2;

-- SELECT data menggunakan WHERE untuk dengan operator logical AND
select price, stock from books where price < 200000 AND stock >50;

-- SELECT data menggunakan WHERE untuk dengan operator logical OR
select stock, price from books where stock > 101 or price < 300000 ;

-- SELECT data menggunakan WHERE untuk dengan operator logical NOT
select * from books where NOT id = 3;

-- SELECT seluruh column dari table bookstore dan diurutkan secara ASC berdasarkan id
select * from books ORDER BY id ASC;

-- SELECT seluruh column dan berikan LIMIT untuk 2 row saja
select * from books LIMIT 2;

-- Pilih 1 row untuk dilakukan UPDATE pada column author1 dan price.
update books set title = 'Tama Succes' where id = 1;

-- Pilih 1 row untuk dilakukan DELETE
delete from books where id = 3;