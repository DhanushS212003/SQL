create database if not exists kowmart;
use kowmart;
/*
create table tablename(
column1 column1_datatype(size) constraints;
column2 column2_datatype(size) constraints;
);
*/
create table if not exists user(
user_name varchar(50),
user_id varchar(50),
phone_no varchar(20)primary key,
address varchar(255),
password varchar(50)
);

DESCRIBE user;

ALTER TABLE user
ADD whatsapp_no INT;

DESCRIBE user;
ALTER TABLE user
MODIFY whatsapp_no VARCHAR(20);

DESCRIBE user;
ALTER TABLE user
DROP whatsapp_no;

DESCRIBE user;
ALTER TABLE user
RENAME COLUMN user_name TO name;

DESCRIBE user;

SELECT * 
FROM user;
INSERT INTO user (name, user_id, phone_no, address, password)
VALUES 
("SR Vignesh", "U2", "2222222222", "K.K.Nagar", "123"),
("Sandy", "U3", "3333333333", "S.Nagar", "123"),
("Karthi", "U4", "4444444444", "V.Nagar", "123");

-- UPDATE TABLE 
UPDATE user
SET address = "K.Nagar"
WHERE phone_no = "4444444444";

-- DELETE 1
DELETE FROM user
WHERE phone_no = "4444444444";

INSERT INTO user (name, user_id, phone_no, address)
VALUES 
("Thamim","U4","4444444444","Coimbatore");

INSERT INTO user (name, user_id, phone_no, address)
VALUES 
("King","U5","5555555555","null");

use kowmart;

create table if not exists cattle(
cattle_name varchar(50),
cattle_id varchar(50) primary key,
milk varchar(20),
age varchar(50),
gender varchar(50),
images varchar(50),
lactation varchar(50),
price varchar(50),
category varchar(50),
breed varchar(50),
weight varchar(50),
description varchar(50)
);

DESCRIBE cattle;

ALTER TABLE user
DROP address;

DESCRIBE user;

ALTER TABLE user
ADD address_line1 varchar(255), ADD address_line2 varchar(255), ADD pincode int(6), ADD image varchar(255);

DESCRIBE user;

ALTER TABLE cattle
ADD posted_date date;

DESCRIBE cattle;

create table if not exists favourite(
favourite_id varchar(50) primary key
);

DESCRIBE favourite;
ALTER TABLE favourite
ADD user_id VARCHAR(50), ADD cattle_id VARCHAR(50);

ALTER TABLE favourite
ADD FOREIGN KEY (user_id) REFERENCES user(user_id);

ALTER TABLE user
ADD phone_no int(10);

DESCRIBE user;