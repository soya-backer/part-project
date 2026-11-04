-- Library Management Database
create database library_db;
use library_db;

create table category(
category_id int primary key,
category_name varchar (60) not null unique);

create table books(
book_id int primary key,
title varchar(100) not null,
author varchar (75) not null,
price decimal(10,2),
category_id int,
foreign key (category_id) references category (category_id));
 
 create table author(
 author_id int primary key,
 author_name varchar(86) not null,
 country varchar(50));
 
 create table member(
 member_id int primary key,
 name varchar(60) not null,
 phone varchar(10) not null unique,
 join_date date not null);
 
 create table borrowings(
 borrowing_id int primary key,
  member_id int not null,
  book_id int not null,
  borrow_date date not null,
  return_date date not null,
  foreign key ( member_id) references member ( member_id),
   foreign key (book_id) references books ( book_id));
   
   insert into category(category_id,category_name )
   values
   (1,'fairy tales'),
   (2,	'Fantasy'),
   (3,	'Adventure'),
   (4,	'Princess Stories'),
   (5,	'Magical Stories');
   select * from category;
   
   insert into  books(book_id ,title,author,price ,category_id )
   values
   (1,'moana','disney storybook',500,1),
   (2,'sleeping beauty','charles perrault',649,2),
   (3,'beauty and the beast',' Gabrielle-Suzanne Barbot de Villeneuve',550,3),
   (4,'alice in wonderland','lewis carroll',499,4),
   (5,'cinderella','charles perrault',699,5);
   select * from books;
   
   insert into author(author_id, author_name ,country )
   values
   (1,'disney storybook','usa'),
   (2,'charles perrault','usa'),
   (3,' Gabrielle-Suzanne Barbot de Villeneuve','france'),
   (4,'lewis carroll','italy'),
   (5,'charles perrault','australia');
   select* from author;
   
   insert into member( member_id,name, phone , join_date)
   values
   (1,'emily','7511288565','2023-02-12'),
   (2,'sonu','7568815506','2023-02-12'),
   (3,'sukku','9867881232','2023-02-12'),
   (4,'naja','7357713308','2023-02-12'),
   (5,'femine','9345176985','2023-02-12');
   select* from member;
   
  insert into borrowings(borrowing_id ,member_id,book_id ,borrow_date,return_date) 
  values
(1,1,1,'2026-02-12','2026-03-01'),
(2,2,2,'2026-04-12','2026-05-09'),
(3,3,3,'2026-02-12','2026-03-01'),
(4,4,4,'2025-02-11','2025-03-01'),
(5,5,5,'2026-02-12','2026-03-01');
select* from borrowings;
   
   
   
   
   
   
