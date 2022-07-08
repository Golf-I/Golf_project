SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS reservation_golf;
DROP TABLE IF EXISTS reservation_hotel;
DROP TABLE IF EXISTS reservation_rentacar;
DROP TABLE IF EXISTS traveler;
DROP TABLE IF EXISTS reservation;




/* Create Tables */

CREATE TABLE reservation
(
	idx int NOT NULL AUTO_INCREMENT,
	sortation varchar(30),
	id varchar(20),
	productName varchar(100),
	region varchar(20),
	city varchar(20),
	departure_date date,
	arrival_date date,
	personnel int,
	booker varchar(10),
	booker_phone int,
	booker_email varchar(30),
	booker_gender varchar(10),
	product_price int,
	day_park int,
	day_il int,
	memo varchar(255),
	option_singleRoom int,
	option_addVehicle int,
	option_businessUpgrade int,
	total_price int,
	regDate date,
	PRIMARY KEY (idx)
);


CREATE TABLE reservation_golf
(
	idx int NOT NULL,
	no int NOT NULL AUTO_INCREMENT,
	region varchar(20),
	city varchar(20),
	productName varchar(100),
	checkin date,
	golftype varchar(50),
	tee_off_time int,
	personnel int,
	remarks varchar(255),
	PRIMARY KEY (no)
);


CREATE TABLE reservation_hotel
(
	idx int NOT NULL,
	no int NOT NULL AUTO_INCREMENT,
	region varchar(20),
	city varchar(20),
	hotel varchar(20),
	productName varchar(100),
	checkin date,
	checkout date,
	day_park int,
	day_il int,
	roomtype varchar(50),
	tee_off_time int,
	personnel int,
	remarks varchar(255),
	PRIMARY KEY (no)
);


CREATE TABLE reservation_rentacar
(
	idx int NOT NULL,
	no int NOT NULL AUTO_INCREMENT,
	region varchar(20),
	city varchar(20),
	productName varchar(100),
	checkin date,
	checkout date,
	cartype varchar(50),
	tee_off_time int,
	remarks varchar(255),
	PRIMARY KEY (no)
);


CREATE TABLE traveler
(
	idx int NOT NULL,
	no int NOT NULL AUTO_INCREMENT,
	productName varchar(100),
	departure_date date,
	arrival_date date,
	booker varchar(10),
	traveler varchar(20),
	traveler_gender varchar(10),
	traveler_firstname varchar(10),
	traveler_lastname varchar(10),
	traveler_phone int(15),
	PRIMARY KEY (no)
);



/* Create Foreign Keys */

ALTER TABLE reservation_golf
	ADD FOREIGN KEY (idx)
	REFERENCES reservation (idx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE reservation_hotel
	ADD FOREIGN KEY (idx)
	REFERENCES reservation (idx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE reservation_rentacar
	ADD FOREIGN KEY (idx)
	REFERENCES reservation (idx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE traveler
	ADD FOREIGN KEY (idx)
	REFERENCES reservation (idx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



