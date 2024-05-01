-- 2024-04-16
-- jspUser / mysql  / jspdb

create table board(
bno int not null auto_increment,
title varchar(100) not null,
writer varchar(50) not null,
content text,
regdate datetime default now(),
moddate datetime default now(),
primary key(bno));

-- 2024-04-17
create table member(
id varchar(100),
pwd varchar(200) not null,
email varchar(200) not null,
age int default 0,
phone varchar(50),
regdate datetime default now(),
lastlogin datetime default now(),
primary key(id));

-- 2024-04-19
CREATE TABLE COMMENT(
cno INT AUTO_INCREMENT,
bno INT NOT NULL,
writer VARCHAR(100) DEFAULT "unknown",
content VARCHAR(1000) NOT NULL,
regdate DATETIME DEFAULT NOW(),
PRIMARY KEY(cno));

-- 2024-04-29
ALTER TABLE board ADD imageFile VARCHAR(100);
ALTER TABLE board ADD readCount INT DEFAULT 0;
