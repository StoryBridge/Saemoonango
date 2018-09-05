-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        10.2.16-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- saemoonango 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `saemoonango` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `saemoonango`;

-- 테이블 saemoonango.chapter 구조 내보내기
CREATE TABLE IF NOT EXISTS `chapter` (
  `Cno` int(11) NOT NULL AUTO_INCREMENT,
  `Chapter_Name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Cno`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- 테이블 데이터 saemoonango.chapter:~2 rows (대략적) 내보내기
/*!40000 ALTER TABLE `chapter` DISABLE KEYS */;
INSERT INTO `chapter` (`Cno`, `Chapter_Name`) VALUES
	(1, 'chapter1'),
	(2, 'chapter2');
/*!40000 ALTER TABLE `chapter` ENABLE KEYS */;

-- 테이블 saemoonango.location 구조 내보내기
CREATE TABLE IF NOT EXISTS `location` (
  `Lno` int(11) NOT NULL AUTO_INCREMENT,
  `Lat` double DEFAULT NULL,
  `Lng` double DEFAULT NULL,
  `Place_Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Lno`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- 테이블 데이터 saemoonango.location:~10 rows (대략적) 내보내기
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` (`Lno`, `Lat`, `Lng`, `Place_Name`) VALUES
	(1, 127.143797, 37.447294, '태평제일교회'),
	(2, 127.14426, 37.44591, '성남초교'),
	(3, 127.14161, 37.444104, '신세계백화점'),
	(4, 127.140194, 37.447358, '금빛초등학교'),
	(5, 127.143069, 37.44982, '성남여중'),
	(6, 127.143477, 37.450535, '신흥초등학교'),
	(7, 127.145537, 37.450262, '수정구청'),
	(8, 127.150075, 37.446701, '성남도서관'),
	(9, 127.150429, 37.447382, '희망대공원'),
	(10, 127.139571, 37.44446, '성남시민회관');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;

-- 테이블 saemoonango.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `Id` varchar(50) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Total_Point` int(11) DEFAULT 0,
  `Lng` double DEFAULT NULL,
  `Lat` double DEFAULT NULL,
  `Img` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 saemoonango.member:~10 rows (대략적) 내보내기
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`Id`, `Name`, `Total_Point`, `Lng`, `Lat`, `Img`) VALUES
	('id1', 'name1', 570, NULL, NULL, NULL),
	('id10', 'name10', NULL, NULL, NULL, NULL),
	('id2', 'name2', 130, NULL, NULL, NULL),
	('id3', 'name3', 400, NULL, NULL, NULL),
	('id4', 'name4', 957, NULL, NULL, NULL),
	('id5', 'name5', 505, NULL, NULL, NULL),
	('id6', 'name6', 1000, NULL, NULL, NULL),
	('id7', 'name7', 140, NULL, NULL, NULL),
	('id8', 'name8', NULL, NULL, NULL, NULL),
	('id9', 'name9', 200, NULL, NULL, NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;

-- 테이블 saemoonango.member_detail 구조 내보내기
CREATE TABLE IF NOT EXISTS `member_detail` (
  `MDno` int(11) NOT NULL AUTO_INCREMENT,
  `Get_Point` int(11) NOT NULL,
  `Id` varchar(50) NOT NULL,
  `Qno` int(11) NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`MDno`),
  KEY `FK_member_detail_question` (`Qno`),
  KEY `FK_member_detail_member` (`Id`),
  CONSTRAINT `FK_member_detail_member` FOREIGN KEY (`Id`) REFERENCES `member` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_member_detail_question` FOREIGN KEY (`Qno`) REFERENCES `question` (`Qno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- 테이블 데이터 saemoonango.member_detail:~21 rows (대략적) 내보내기
/*!40000 ALTER TABLE `member_detail` DISABLE KEYS */;
INSERT INTO `member_detail` (`MDno`, `Get_Point`, `Id`, `Qno`, `Date`) VALUES
	(1, 100, 'id1', 1, '2018-08-29 21:41:35'),
	(2, 150, 'id1', 2, '2018-08-29 21:45:00'),
	(3, 120, 'id1', 3, '2018-08-29 21:45:05'),
	(4, 130, 'id2', 4, '2018-08-29 21:45:22'),
	(5, 200, 'id4', 3, '2018-08-29 21:45:29'),
	(6, 300, 'id6', 6, '2018-08-29 21:45:37'),
	(7, 140, 'id7', 8, '2018-08-29 21:46:35'),
	(8, 200, 'id9', 7, '2018-08-29 21:46:36'),
	(9, 700, 'id6', 6, '2018-08-29 21:46:38'),
	(10, 500, 'id4', 5, '2018-08-29 21:46:40'),
	(11, 400, 'id3', 4, '2018-08-29 21:46:42'),
	(12, 130, 'id4', 6, '2018-08-29 21:46:47'),
	(14, 100, 'id1', 10, '2018-09-03 20:32:00'),
	(15, 100, 'id1', 4, '2018-09-03 20:38:32'),
	(16, 10, 'id5', 4, '2018-09-03 20:41:16'),
	(17, 99, 'id5', 4, '2018-09-03 20:43:45'),
	(18, 99, 'id5', 4, '2018-09-03 20:44:47'),
	(19, 99, 'id5', 4, '2018-09-03 20:46:29'),
	(20, 99, 'id5', 4, '2018-09-03 20:47:20'),
	(21, 99, 'id5', 4, '2018-09-03 22:14:26'),
	(23, 127, 'id4', 4, '2018-09-05 21:40:45');
/*!40000 ALTER TABLE `member_detail` ENABLE KEYS */;

-- 테이블 saemoonango.question 구조 내보내기
CREATE TABLE IF NOT EXISTS `question` (
  `Qno` int(11) NOT NULL AUTO_INCREMENT,
  `Question` varchar(50) NOT NULL DEFAULT '0',
  `Right_Answer` varchar(50) NOT NULL DEFAULT '0',
  `Point` int(11) NOT NULL DEFAULT 0,
  `Cno` int(11) NOT NULL DEFAULT 0,
  `Lno` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Qno`),
  KEY `FK_question_chapter` (`Cno`),
  KEY `FK_question_location` (`Lno`),
  CONSTRAINT `FK_question_chapter` FOREIGN KEY (`Cno`) REFERENCES `chapter` (`Cno`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_question_location` FOREIGN KEY (`Lno`) REFERENCES `location` (`Lno`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- 테이블 데이터 saemoonango.question:~10 rows (대략적) 내보내기
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
INSERT INTO `question` (`Qno`, `Question`, `Right_Answer`, `Point`, `Cno`, `Lno`) VALUES
	(1, 'Question1', 'Right_Answer1', 100, 1, 1),
	(2, 'Question2', 'Right_Answer2', 150, 1, 2),
	(3, 'Question3', 'Right_Answer3', 120, 1, 3),
	(4, 'Question4', 'Right_Answer4', 130, 1, 4),
	(5, 'Question5', 'Right_Answer5', 170, 1, 5),
	(6, 'Question6', 'Right_Answer6', 200, 1, 6),
	(7, 'Question7', 'Right_Answer7', 300, 1, 7),
	(8, 'Question8', 'Right_Answer8', 500, 1, 8),
	(9, 'Question9', 'Right_Answer9', 350, 1, 9),
	(10, 'Question10', 'Right_Answer10', 250, 1, 10);
/*!40000 ALTER TABLE `question` ENABLE KEYS */;

-- 테이블 saemoonango.question_detail 구조 내보내기
CREATE TABLE IF NOT EXISTS `question_detail` (
  `QDno` int(11) NOT NULL AUTO_INCREMENT,
  `Answer` int(11) NOT NULL,
  `Qno` int(11) NOT NULL,
  PRIMARY KEY (`QDno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 테이블 데이터 saemoonango.question_detail:~0 rows (대략적) 내보내기
/*!40000 ALTER TABLE `question_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `question_detail` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
