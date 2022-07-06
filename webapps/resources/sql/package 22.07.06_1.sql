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
DROP TABLE IF EXISTS package_product_review;
DROP TABLE IF EXISTS package_product;




/* Create Tables */

CREATE TABLE package_Itinerary_1
(
	Itinerary1_morning varchar(10),
	Itinerary1_lunch varchar(10),
	Itinerary1_dinner varchar(10),
	Itinerary1_contents varchar(255),
	Itinerary1_img blob,
	Itinerary1_golfCourse varchar(50),
	Itinerary1_hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_10
(
	Itinerary10_morning varchar(10),
	Itinerary10_lunch varchar(10),
	Itinerary10_dinner varchar(255),
	Itinerary10_contents varchar(255),
	Itinerary10_img blob,
	Itinerary10_golfCourse varchar(50),
	Itinerary10_hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_11
(
	Itinerary11_morning varchar(10),
	Itinerary11_lunch varchar(10),
	Itinerary11_dinner varchar(10),
	Itinerary11_contents varchar(255),
	Itinerary11_img blob,
	Itinerary11_golfCourse varchar(50),
	Itinerary11_hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_12
(
	Itinerary12_morning varchar(10),
	Itinerary12_lunch varchar(10),
	Itinerary12_dinner varchar(10),
	Itinerary12_contents varchar(255),
	Itinerary12_img blob,
	Itinerary12_golfCourse varchar(50),
	Itinerary12_hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_2
(
	Itinerary2_morning varchar(10),
	Itinerary2_lunch varchar(10),
	Itinerary2_dinner varchar(10),
	Itinerary2_contents varchar(255),
	Itinerary2_img blob,
	Itinerary2_golfCourse varchar(50),
	Itinerary2_hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_3
(
	Itinerary3_morning varchar(10),
	Itinerary3_lunch varchar(10),
	Itinerary3_dinner varchar(10),
	Itinerary3_contents varchar(255),
	Itinerary3_img blob,
	Itinerary3_golfCourse varchar(50),
	Itinerary3_hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_4
(
	Itinerary4_morning varchar(10),
	Itinerary4_lunch varchar(10),
	Itinerary4_dinner varchar(10),
	Itinerary4_contents varchar(255),
	Itinerary4_img blob,
	Itinerary4_golfCourse varchar(50),
	Itinerary4_hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_5
(
	Itinerary5_morning varchar(10),
	Itinerary5_lunch varchar(10),
	Itinerary5_dinner varchar(10),
	Itinerary5_contents varchar(255),
	Itinerary5_img blob,
	Itinerary5_golfCourse varchar(50),
	Itinerary5_hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_6
(
	Itinerary6_morning varchar(10),
	Itinerary6_lunch varchar(10),
	Itinerary6_dinner varchar(10),
	Itinerary6_contents varchar(255),
	Itinerary6_img blob,
	Itinerary6_golfCourse varchar(50),
	Itinerary6_hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_7
(
	Itinerary7_morning varchar(10),
	Itinerary7_lunch varchar(10),
	Itinerary7_dinner varchar(10),
	Itinerary7_contents varchar(255),
	Itinerary7_img blob,
	Itinerary7_golfCourse varchar(50),
	Itinerary7_hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_8
(
	Itinerary8_morning varchar(10),
	Itinerary8_lunch varchar(10),
	Itinerary8_dinner varchar(255),
	Itinerary8_contents varchar(255),
	Itinerary8_img blob,
	Itinerary8_golfCourse varchar(50),
	Itinerary8_hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_Itinerary_9
(
	Itinerary9_morning varchar(10),
	Itinerary9_lunch varchar(10),
	Itinerary9_dinner varchar(10),
	Itinerary9_contents varchar(255),
	Itinerary9_img blob,
	Itinerary9_golfCourse varchar(50),
	Itinerary9_hotel varchar(50),
	package_product_code int NOT NULL
);


CREATE TABLE package_product
(
	package_product_code int NOT NULL AUTO_INCREMENT,
	package_region varchar(20),
	package_city varchar(20),
	package_productName varchar(100),
	package_day_park int,
	package_day_il int,
	package_manager varchar(20),
	package_minimum_number_of_people int,
	package_lowestPrice int,
	package_arrival varchar(30),
	package_depart varchar(30),
	package_period_start date,
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


CREATE TABLE package_product_review
(
	package_review_no int NOT NULL AUTO_INCREMENT,
	package_reviewer varchar(15),
	package_reviewer_profile blob,
	package_review_comment varchar(255),
	package_review_comment_regdate date,
	package_review_title varchar(255),
	package_review_contents varchar(255),
	package_review_regdate date,
	package_review_score_fairways double,
	package_review_score_playSpeed double,
	package_review_score_caddy double,
	package_review_score_facilities double,
	package_review_score_guide double,
	package_review_average_score double,
	package_product_code int NOT NULL,
	PRIMARY KEY (package_review_no)
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


ALTER TABLE package_product_review
	ADD FOREIGN KEY (package_product_code)
	REFERENCES package_product (package_product_code)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



