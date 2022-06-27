-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 22-06-24 11:05
-- 서버 버전: 10.4.24-MariaDB
-- PHP 버전: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `test`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `academy_list`
--

CREATE TABLE `academy_list` (
  `no` int(11) NOT NULL,
  `day` date DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `manager` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `academy_register`
--

CREATE TABLE `academy_register` (
  `title` varchar(50) DEFAULT NULL,
  `manager` varchar(20) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `authority_management`
--

CREATE TABLE `authority_management` (
  `id` varchar(20) DEFAULT NULL,
  `pw` varchar(20) DEFAULT NULL,
  `goods` varchar(10) DEFAULT NULL,
  `reservation` varchar(10) DEFAULT NULL,
  `calculate` varchar(10) DEFAULT NULL,
  `member` varchar(10) DEFAULT NULL,
  `board` varchar(10) DEFAULT NULL,
  `site` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `entering_store`
--

CREATE TABLE `entering_store` (
  `no` int(11) NOT NULL,
  `day` date DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `manager` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `entering_store_register`
--

CREATE TABLE `entering_store_register` (
  `company` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `manager` varchar(20) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `brand` varchar(30) DEFAULT NULL,
  `category` varchar(30) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `filetype` char(1) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `event`
--

CREATE TABLE `event` (
  `no` int(11) NOT NULL,
  `day` date DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `manager` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `event_register`
--

CREATE TABLE `event_register` (
  `title` varchar(50) DEFAULT NULL,
  `manager` varchar(20) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `free_product`
--

CREATE TABLE `free_product` (
  `region` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `golf_course` varchar(30) DEFAULT NULL,
  `img` blob DEFAULT NULL,
  `serveimg` blob DEFAULT NULL,
  `day` date DEFAULT NULL,
  `day1` date DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `cartby` int(11) DEFAULT NULL,
  `caddy` int(11) DEFAULT NULL,
  `caddy_tip` int(11) DEFAULT NULL,
  `hotelregion` varchar(20) DEFAULT NULL,
  `hotelcity` varchar(20) DEFAULT NULL,
  `carregion` varchar(20) DEFAULT NULL,
  `carcity` varchar(20) DEFAULT NULL,
  `optional` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `member`
--

CREATE TABLE `member` (
  `id` varchar(20) NOT NULL,
  `pw` varchar(20) DEFAULT NULL,
  `name` varchar(10) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `gender` varchar(6) DEFAULT NULL,
  `sns` varchar(10) DEFAULT NULL,
  `mms` varchar(10) DEFAULT NULL,
  `mail` varchar(10) DEFAULT NULL,
  `push` varchar(10) DEFAULT NULL,
  `icon` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 테이블의 덤프 데이터 `member`
--

INSERT INTO `member` (`id`, `pw`, `name`, `phone`, `birth`, `gender`, `sns`, `mms`, `mail`, `push`, `icon`) VALUES
('g@hanmail.net', 'g', '김효경', '01012345678', '2012-06-01', 'female', '', NULL, NULL, NULL, NULL),
('gg@gmai.com', 'g', 'g', 'g', NULL, NULL, NULL, NULL, NULL, NULL, ''),
('ggg@gmail.com', 'gg', 'g', 'g', NULL, NULL, NULL, NULL, NULL, NULL, ''),
('gggg@gmail.com', 'g', 'gggg', '010', NULL, NULL, NULL, NULL, NULL, NULL, ''),
('gyrud13@naver.com', '', '김효경', '010', NULL, NULL, 'naver', 'on', NULL, NULL, ''),
('gyrud17@hanmail.net', '', '', '1', NULL, NULL, 'kakao', 'on', 'on', NULL, ''),
('t@test.com', 'g', 'g', '010', NULL, NULL, NULL, NULL, 'on', NULL, ''),
('te@test.com', 't', 't', 't', NULL, NULL, NULL, 'on', 'on', NULL, ''),
('tes@test.com', 'g', 't', '010', NULL, NULL, NULL, 'on', NULL, NULL, ''),
('test@test.com', 't', 'gg', 'g', NULL, NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- 테이블 구조 `membership`
--

CREATE TABLE `membership` (
  `division` varchar(20) DEFAULT NULL,
  `region` varchar(20) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `golf_course` varchar(30) DEFAULT NULL,
  `hall` int(11) DEFAULT NULL,
  `open` int(11) DEFAULT NULL,
  `members` int(11) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  `uniqueness` varchar(255) DEFAULT NULL,
  `web` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `member_list`
--

CREATE TABLE `member_list` (
  `no` int(11) NOT NULL,
  `client` varchar(30) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `day` date DEFAULT NULL,
  `login` int(11) DEFAULT NULL,
  `id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `staff`
--

CREATE TABLE `staff` (
  `no` int(11) NOT NULL,
  `department` varchar(20) DEFAULT NULL,
  `employee` varchar(20) DEFAULT NULL,
  `join1` date DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `staff_register`
--

CREATE TABLE `staff_register` (
  `department` varchar(20) DEFAULT NULL,
  `join1` date DEFAULT NULL,
  `manager` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` varchar(40) DEFAULT NULL,
  `file` blob DEFAULT NULL,
  `etc` varchar(20) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- 테이블 구조 `users`
--

CREATE TABLE `users` (
  `idx` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `modify_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `academy_list`
--
ALTER TABLE `academy_list`
  ADD PRIMARY KEY (`no`);

--
-- 테이블의 인덱스 `academy_register`
--
ALTER TABLE `academy_register`
  ADD KEY `no` (`no`);

--
-- 테이블의 인덱스 `entering_store`
--
ALTER TABLE `entering_store`
  ADD PRIMARY KEY (`no`);

--
-- 테이블의 인덱스 `entering_store_register`
--
ALTER TABLE `entering_store_register`
  ADD KEY `no` (`no`);

--
-- 테이블의 인덱스 `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`no`);

--
-- 테이블의 인덱스 `event_register`
--
ALTER TABLE `event_register`
  ADD KEY `no` (`no`);

--
-- 테이블의 인덱스 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- 테이블의 인덱스 `member_list`
--
ALTER TABLE `member_list`
  ADD PRIMARY KEY (`no`),
  ADD KEY `id` (`id`);

--
-- 테이블의 인덱스 `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`no`);

--
-- 테이블의 인덱스 `staff_register`
--
ALTER TABLE `staff_register`
  ADD KEY `no` (`no`);

--
-- 테이블의 인덱스 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idx`),
  ADD KEY `idx1_username` (`username`),
  ADD KEY `idx2_email` (`email`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `academy_list`
--
ALTER TABLE `academy_list`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `entering_store`
--
ALTER TABLE `entering_store`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `event`
--
ALTER TABLE `event`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `member_list`
--
ALTER TABLE `member_list`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `staff`
--
ALTER TABLE `staff`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `idx` int(11) NOT NULL AUTO_INCREMENT;

--
-- 덤프된 테이블의 제약사항
--

--
-- 테이블의 제약사항 `academy_register`
--
ALTER TABLE `academy_register`
  ADD CONSTRAINT `academy_register_ibfk_1` FOREIGN KEY (`no`) REFERENCES `academy_list` (`no`);

--
-- 테이블의 제약사항 `entering_store_register`
--
ALTER TABLE `entering_store_register`
  ADD CONSTRAINT `entering_store_register_ibfk_1` FOREIGN KEY (`no`) REFERENCES `entering_store` (`no`);

--
-- 테이블의 제약사항 `event_register`
--
ALTER TABLE `event_register`
  ADD CONSTRAINT `event_register_ibfk_1` FOREIGN KEY (`no`) REFERENCES `event` (`no`);

--
-- 테이블의 제약사항 `member_list`
--
ALTER TABLE `member_list`
  ADD CONSTRAINT `member_list_ibfk_1` FOREIGN KEY (`id`) REFERENCES `member` (`id`);

--
-- 테이블의 제약사항 `staff_register`
--
ALTER TABLE `staff_register`
  ADD CONSTRAINT `staff_register_ibfk_1` FOREIGN KEY (`no`) REFERENCES `staff` (`no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
