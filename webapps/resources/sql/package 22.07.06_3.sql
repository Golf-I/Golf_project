SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS package_Itinerary;
DROP TABLE IF EXISTS package_no_reservation;
DROP TABLE IF EXISTS package_product_comment;
DROP TABLE IF EXISTS package_product_review;
DROP TABLE IF EXISTS package_product;




/* Create Tables */

CREATE TABLE package_Itinerary
(
	product_code int NOT NULL,
	idx int NOT NULL AUTO_INCREMENT,
	day_of_itinerary int,
	morning varchar(10),
	lunch varchar(10),
	dinner varchar(10),
	contents varchar(255),
	img blob,
	golfCourse varchar(50),
	PRIMARY KEY (idx)
);


CREATE TABLE package_no_reservation
(
	product_code int NOT NULL,
	idx int NOT NULL AUTO_INCREMENT,
	day date,
	memo varchar(30),
	PRIMARY KEY (idx)
);


CREATE TABLE package_product
(
	product_code int NOT NULL AUTO_INCREMENT,
	region varchar(20),
	city varchar(20),
	productName varchar(100),
	day_park int,
	day_il int,
	manager varchar(20),
	minimum_number_of_people int,
	lowestPrice int,
	arrival varchar(30),
	depart varchar(30),
	period_start date,
	period_fin date,
	number_of_days int,
	hotel varchar(20),
	airline varchar(20),
	golfCourse varchar(20),
	weekday_fee int,
	weekend_fee int,
	img blob,
	serveimg blob,
	golfCourse_info varchar(30),
	golf_img1 blob,
	golf_img2 blob,
	hotel_info varchar(50),
	hotel_img1 blob,
	hotel_img2 blob,
	include varchar(255),
	not_include varchar(255),
	etc varchar(255),
	precaution varchar(255),
	PRIMARY KEY (product_code),
	CONSTRAINT PRIMARY_KEY UNIQUE (arrival)
);


CREATE TABLE package_product_comment
(
	product_code int NOT NULL,
	comment_no int NOT NULL AUTO_INCREMENT,
	user varchar(15),
	user_profile blob,
	user_comment varchar(255),
	user_comment_regdate date,
	score_fairways double,
	score_playSpeed double,
	score_caddy double,
	score_facilities double,
	score_guide double,
	average_score double,
	PRIMARY KEY (comment_no)
);


CREATE TABLE package_product_review
(
	product_code int NOT NULL,
	review_no int NOT NULL AUTO_INCREMENT,
	user varchar(15),
	user_profile blob,
	title varchar(255),
	contents varchar(255),
	regdate date,
	PRIMARY KEY (review_no)
);



/* Create Foreign Keys */

ALTER TABLE package_Itinerary
	ADD FOREIGN KEY (product_code)
	REFERENCES package_product (product_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE package_no_reservation
	ADD FOREIGN KEY (product_code)
	REFERENCES package_product (product_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE package_product_comment
	ADD FOREIGN KEY (product_code)
	REFERENCES package_product (product_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE package_product_review
	ADD FOREIGN KEY (product_code)
	REFERENCES package_product (product_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



