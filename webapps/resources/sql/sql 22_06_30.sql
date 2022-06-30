SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS notice;




/* Create Tables */

CREATE TABLE notice
(
	no int NOT NULL AUTO_INCREMENT,
	category varchar(15),
	title varchar(50),
	writer varchar(30),
	contents varchar(255),
	date date,
	views int,
	PRIMARY KEY (no)
);



