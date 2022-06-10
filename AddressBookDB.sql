-- UC1
create database AddressbookService;
show databases;
use AddressbookService;

-- UC2
create table addressBook (firstname varchar(20),lastname varchar(20),address varchar(20),
city varchar(20),state varchar(20),zip varchar(6),phone varchar(12),email varchar(20));

desc addressBook;

-- UC3
Insert into addressBook (firstname,lastname,address,city,state,zip,phone,email) values ('Raju','D V','HSD','Karnataka','KA','577527',
'8880050102','raju@gmail.com' );
Insert into addressBook values ('Surakshith','VS','MLORE','Karnataka','KA','671324',
'7559805229','sura@gmail.com' );
Insert into addressBook values ('Rakshith','VS','MLORE','Karnataka','KA','671326',
'7907272098','rak@gmail.com' );

select * from addressBook;

-- UC4
use AddressbookService;
update addressBook set phone = '8888888888' where firstname = 'Raju';
select * from addressBook;

-- UC5
delete from addressBook where firstname = 'Raju';
select * from addressBook;

-- UC6
select * from addressBook where city = 'Karnataka';

-- UC7
select count(*) from addressBook where state = 'KA' && city='Karnataka';

-- UC8
select * from addressBook where city = 'Karnataka' order by firstname;

-- UC9
alter table addressBook add column bookname varchar(20), add column booktype varchar(20);
update addressBook set bookname='Book1',booktype='Family' where firstname = 'Rakshith';
update addressBook set bookname='Book2',booktype='Friend' where firstname = 'Surakshith';
select * from addressBook;

-- UC10
select count(*) from addressBook where booktype='Family';

-- UC11
Insert into addressBook (firstname,lastname,address,city,state,zip,phone,email,bookname,booktype) values ('Rajesh','H','HYD','Karnataka','KA','577527',
'8880050102','rajesh@gmail.com','Book2','Friend' );
Insert into addressBook (firstname,lastname,address,city,state,zip,phone,email,bookname,booktype) values ('Ravi','C','Mumbai','Maharastra','MH','933527',
'4262829202','ravi@gmail.com','Book1','Family' );
select * from addressBook;
