SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS academy_register;
DROP TABLE IF EXISTS academy_list;
DROP TABLE IF EXISTS authority_management;
DROP TABLE IF EXISTS entering_store_register;
DROP TABLE IF EXISTS entering_store;
DROP TABLE IF EXISTS event_register;
DROP TABLE IF EXISTS event;
DROP TABLE IF EXISTS free_product;
DROP TABLE IF EXISTS member_list;
DROP TABLE IF EXISTS member;
DROP TABLE IF EXISTS membership;
DROP TABLE IF EXISTS staff_register;
DROP TABLE IF EXISTS staff;




/* Create Tables */

CREATE TABLE academy_list
(
	no int NOT NULL AUTO_INCREMENT,
	day date,
	title varchar(50),
	manager varchar(20),
	PRIMARY KEY (no)
);


CREATE TABLE academy_register
(
	title varchar(50),
	manager varchar(20),
	contents varchar(255),
	no int NOT NULL
);


CREATE TABLE authority_management
(
	id varchar(20),
	pw varchar(20),
	goods varchar(10),
	reservation varchar(10),
	calculate varchar(10),
	member varchar(10),
	board varchar(10),
	site varchar(10)
);


CREATE TABLE entering_store
(
	no int NOT NULL AUTO_INCREMENT,
	day date,
	title varchar(50),
	manager varchar(20),
	PRIMARY KEY (no)
);


CREATE TABLE entering_store_register
(
	company varchar(50),
	address varchar(50),
	web varchar(50),
	manager varchar(20),
	department varchar(30),
	contact varchar(10),
	phone varchar(10),
	brand varchar(30),
	category varchar(30),
	introduce varchar(255),
	filename varchar(200),
	filetype char,
	no int NOT NULL
);


CREATE TABLE event
(
	no int NOT NULL AUTO_INCREMENT,
	day date,
	title varchar(50),
	manager varchar(20),
	PRIMARY KEY (no)
);


CREATE TABLE event_register
(
	title varchar(50),
	manager varchar(20),
	contents varchar(255),
	no int NOT NULL
);


CREATE TABLE free_product
(
	region varchar(20),
	city varchar(20),
	golf_course varchar(30),
	img blob,
	serveimg blob,
	day date,
	day1 date,
	price int,
	cartby int,
	caddy int,
	caddy_tip int,
	hotelregion varchar(20),
	hotelcity varchar(20),
	carregion varchar(20),
	carcity varchar(20),
	optional varchar(50)
);


CREATE TABLE member
(
	id varchar(20) NOT NULL,
	pw varchar(20) NOT NULL,
	name varchar(10) NOT NULL,
	phone varchar(20) NOT NULL,
	birth date,
	gender varchar(3),
	sns varchar(10),
	mms varchar(10),
	mail varchar(10),
	push varchar(10),
	icon blob NOT NULL,
	PRIMARY KEY (id)
);


CREATE TABLE membership
(
	division varchar(20),
	region varchar(20),
	city varchar(20),
	golf_course varchar(30),
	hall int,
	open int,
	members int,
	address varchar(50),
	type varchar(30),
	price int,
	introduce varchar(255),
	uniqueness varchar(255),
	web varchar(100)
);


CREATE TABLE member_list
(
	no int NOT NULL AUTO_INCREMENT,
	client varchar(30),
	phone varchar(20),
	day date,
	login int,
	id varchar(20) NOT NULL,
	PRIMARY KEY (no)
);


CREATE TABLE staff
(
	no int NOT NULL AUTO_INCREMENT,
	department varchar(20),
	employee varchar(20),
	join1 date,
	email varchar(40),
	phone varchar(40),
	PRIMARY KEY (no)
);


CREATE TABLE staff_register
(
	department varchar(20),
	join1 date,
	manager varchar(20),
	email varchar(40),
	phone varchar(40),
	file blob,
	etc varchar(20),
	no int NOT NULL
);



/* Create Foreign Keys */

ALTER TABLE academy_register
	ADD FOREIGN KEY (no)
	REFERENCES academy_list (no)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE entering_store_register
	ADD FOREIGN KEY (no)
	REFERENCES entering_store (no)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE event_register
	ADD FOREIGN KEY (no)
	REFERENCES event (no)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE member_list
	ADD FOREIGN KEY (id)
	REFERENCES member (id)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE staff_register
	ADD FOREIGN KEY (no)
	REFERENCES staff (no)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



