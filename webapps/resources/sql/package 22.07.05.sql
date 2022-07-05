SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS package_Itinerary_1;
DROP TABLE IF EXISTS package_Itinerary_10;
DROP TABLE IF EXISTS package_Itinerary_11;
DROP TABLE IF EXISTS package_Itinerary_12;
DROP TABLE IF EXISTS package_Itinerary_2;
DROP TABLE IF EXISTS package_Itinerary_3;
DROP TABLE IF EXISTS package_Itinerary_4;
DROP TABLE IF EXISTS package_Itinerary_5;
DROP TABLE IF EXISTS package_Itinerary_6;
DROP TABLE IF EXISTS package_Itinerary_7;
DROP TABLE IF EXISTS package_Itinerary_8;
DROP TABLE IF EXISTS package_Itinerary_9;
DROP TABLE IF EXISTS package_product;




/* Create Tables */

CREATE TABLE package_Itinerary_1
(
	morning varchar(10),
	lunch varchar(10),
	dinner varchar(10),
	contents varchar(255),
	img blob,
	golf varchar(50),
	hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_10
(
	morning varchar(10),
	lunch varchar(10),
	dinner varchar(10),
	contents varchar(255),
	img blob,
	golf varchar(50),
	hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_11
(
	morning varchar(10),
	lunch varchar(10),
	dinner varchar(10),
	contents varchar(255),
	img blob,
	golf varchar(50),
	hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_12
(
	morning varchar(10),
	lunch varchar(10),
	dinner varchar(10),
	contents varchar(255),
	img blob,
	golf varchar(50),
	hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_2
(
	morning varchar(10),
	lunch varchar(10),
	dinner varchar(10),
	contents varchar(255),
	img blob,
	golf varchar(50),
	hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_3
(
	morning varchar(10),
	lunch varchar(10),
	dinner varchar(10),
	contents varchar(255),
	img blob,
	golf varchar(50),
	hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_4
(
	morning varchar(10),
	lunch varchar(10),
	dinner varchar(10),
	contents varchar(255),
	img blob,
	golf varchar(50),
	hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_5
(
	morning varchar(10),
	lunch varchar(10),
	dinner varchar(10),
	contents varchar(255),
	img blob,
	golf varchar(50),
	hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_6
(
	morning varchar(10),
	lunch varchar(10),
	dinner varchar(10),
	contents varchar(255),
	img blob,
	golf varchar(50),
	hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_7
(
	morning varchar(10),
	lunch varchar(10),
	dinner varchar(10),
	contents varchar(255),
	img blob,
	golf varchar(50),
	hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_8
(
	morning varchar(10),
	lunch varchar(10),
	dinner varchar(10),
	contents varchar(255),
	img blob,
	golf varchar(50),
	hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_9
(
	morning varchar(10),
	lunch varchar(10),
	dinner varchar(10),
	contents varchar(255),
	img blob,
	golf varchar(50),
	hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_product
(
	package_product_code int NOT NULL AUTO_INCREMENT,
	package_region varchar(20),
	package_city varchar(20),
	package_productName varchar(100),
	package_day int,
	package_manager varchar(20),
	package_lowestPrice int,
	package_arrival varchar(30),
	package_depart varchar(30),
	package_period_start int,
	package_period_fin date,
	package_number_of_days int,
	package_hotel varchar(20),
	package_airline varchar(20),
	package_golfCourse varchar(20),
	package_weekday_fee int,
	package_weekend_fee int,
	package_no_reservation_day1 date,
	package_no_reservation_memo1 varchar(30),
	package_no_reservation_day2 date,
	package_no_reservation_memo2 varchar(30),
	package_no_reservation_day3 date,
	package_no_reservation_memo3 varchar(30),
	package_no_reservation_day4 date,
	package_no_reservation_memo4 varchar(30),
	package_img blob,
	pacage_serveimg blob,
	package_golfCourse_information varchar(30),
	package_golf_img1 blob,
	package_golf_img2 blob,
	package_hotel_information varchar(50),
	package_hotel_img1 blob,
	package_hotel_img2 blob,
	package_include varchar(255),
	package_not_include varchar(255),
	package_etc varchar(255),
	package_precaution varchar(255),
	PRIMARY KEY (package_product_code)
);



/* Create Foreign Keys */

ALTER TABLE package_Itinerary_1
	ADD FOREIGN KEY (package_product_code)
	REFERENCES package_product (package_product_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE package_Itinerary_10
	ADD FOREIGN KEY (package_product_code)
	REFERENCES package_product (package_product_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE package_Itinerary_11
	ADD FOREIGN KEY (package_product_code)
	REFERENCES package_product (package_product_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE package_Itinerary_12
	ADD FOREIGN KEY (package_product_code)
	REFERENCES package_product (package_product_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE package_Itinerary_2
	ADD FOREIGN KEY (package_product_code)
	REFERENCES package_product (package_product_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE package_Itinerary_3
	ADD FOREIGN KEY (package_product_code)
	REFERENCES package_product (package_product_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE package_Itinerary_4
	ADD FOREIGN KEY (package_product_code)
	REFERENCES package_product (package_product_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE package_Itinerary_5
	ADD FOREIGN KEY (package_product_code)
	REFERENCES package_product (package_product_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE package_Itinerary_6
	ADD FOREIGN KEY (package_product_code)
	REFERENCES package_product (package_product_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE package_Itinerary_7
	ADD FOREIGN KEY (package_product_code)
	REFERENCES package_product (package_product_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE package_Itinerary_8
	ADD FOREIGN KEY (package_product_code)
	REFERENCES package_product (package_product_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE package_Itinerary_9
	ADD FOREIGN KEY (package_product_code)
	REFERENCES package_product (package_product_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



