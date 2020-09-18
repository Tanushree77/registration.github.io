-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.14-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.6037
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table register_practical_slot.student
CREATE TABLE IF NOT EXISTS `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `fname` varchar(100) NOT NULL DEFAULT '',
  `student_id` int(11) NOT NULL DEFAULT 0,
  `email` varchar(100) NOT NULL DEFAULT '',
  `practical_slot` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `email` (`email`(50))
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table register_practical_slot.student: ~32 rows (approximately)
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`id`, `name`, `fname`, `student_id`, `email`, `practical_slot`) VALUES
	(1, 'tanu', 'tan sen', 564564564, 'tanu@bracu.com', ''),
	(2, 'saurav', 'saurav singha', 152010467, 'saurav@gmail.com', ''),
	(3, 'trisha', 'trisha sen', 142010467, 'trisha@gmail.com', ''),
	(4, 'disha', 'disha sen', 15301008, 'disha@gmail.com', ''),
	(5, 'rahul', 'rahul sen', 204810093, 'rahul@gmail.com', ''),
	(6, 'joyee', 'joyee dutta', 162010045, 'joyee@gmail.com', ''),
	(7, 'shree', 'shree dutta', 173010567, 'shree@gmail.com', ''),
	(8, 'anusree', 'anusree sen', 198023651, 'anusree@gmail.com', ''),
	(9, 'palash', 'palash das', 673087123, 'palash@gmail.com', ''),
	(10, 'annesha', 'annesha das', 20194633, 'annesha@gmail.com', ''),
	(11, 'amrita', 'amrita saha', 78391033, 'amrita@gmail.com', ''),
	(12, 'arjun', 'arjun sen', 152010477, 'arjun@gmail.com', ''),
	(13, 'amartya ', 'amartya sen', 1520108933, 'amartya@gmail.com', ''),
	(14, 'raj', 'raj hazra', 182010488, 'raj@gmail.com', ''),
	(15, 'priyoti', 'priyoti hazra', 192038466, 'priyoti@gmail.com', ''),
	(16, 'pritam', 'pritam hazra', 1230100566, 'pritam@gmail.com', ''),
	(17, 'susmita', 'susmita sen', 30104622, 'susmita@gmail.com', ''),
	(18, 'alexa', 'alexa smith', 2010467, 'alexa@gmail.com', ''),
	(19, 'dhurvo', 'dhruvo sen', 90132056, 'dhruvo@gmail.com', ''),
	(20, 'priyangshu', 'priyangshu dutta', 152010344, 'priyo@gmail.com', ''),
	(21, 'bob', 'bob smith', 2010433, 'bob@gmail.com', ''),
	(22, 'amit', 'amit sen', 102088, 'amit@gmail.com', ''),
	(23, 'raiyan ', 'raiyan condie', 2010462, 'raiyan@gmail.com', ''),
	(24, 'dipro', 'dipro biswas', 153010092, 'dipro@gmail.com', ''),
	(25, 'oishi', 'oishi biswas', 132010498, 'oisi@gmail.com', ''),
	(26, 'aniruddha', 'aniruddha barman', 132010984, 'aniruddha@gmail.com', ''),
	(27, 'safin', 'sadman safin', 123010432, 'safin@gmail.com', ''),
	(28, 'tasnuva', 'tasnuva ahmed', 20108923, 'tasnuva@gmail.com', ''),
	(29, 'nova', 'nova nowshin', 20104987, 'nova@gmail.com', ''),
	(30, 'nirjhar', 'nirjhar saha', 162010432, 'nirjhar@gmail.com', ''),
	(31, 'ruponti', 'ruponti khan', 151020987, 'ruponti@gmail.com', ''),
	(32, 'mouri', 'mouri khan', 30102917, 'mouri@gmail.com', '');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;

-- Dumping structure for table register_practical_slot.timeslot_student_mapping
CREATE TABLE IF NOT EXISTS `timeslot_student_mapping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `timeslot_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table register_practical_slot.timeslot_student_mapping: ~17 rows (approximately)
/*!40000 ALTER TABLE `timeslot_student_mapping` DISABLE KEYS */;
INSERT INTO `timeslot_student_mapping` (`id`, `student_id`, `timeslot_id`) VALUES
	(1, 142010467, 6),
	(2, 152010344, 6),
	(3, 15301008, 6),
	(4, 162010045, 6),
	(5, 173010567, 0),
	(6, 192038466, 0),
	(7, 162010432, 0),
	(8, 198023651, 0),
	(9, 2010433, 0),
	(10, 2010462, 0),
	(11, 2010467, 0),
	(12, 20104987, 0),
	(13, 20108923, 0),
	(14, 20194633, 0),
	(15, 204810093, 0),
	(16, 30104622, 0),
	(17, 564564564, 0);
/*!40000 ALTER TABLE `timeslot_student_mapping` ENABLE KEYS */;

-- Dumping structure for table register_practical_slot.time_slot
CREATE TABLE IF NOT EXISTS `time_slot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `week_day` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table register_practical_slot.time_slot: ~4 rows (approximately)
/*!40000 ALTER TABLE `time_slot` DISABLE KEYS */;
INSERT INTO `time_slot` (`id`, `start_time`, `end_time`, `week_day`) VALUES
	(1, '15:00:00', '17:00:00', 3),
	(2, '14:00:00', '16:00:00', 4),
	(3, '11:00:00', '13:00:00', 6),
	(4, '10:00:00', '12:00:00', 7);
/*!40000 ALTER TABLE `time_slot` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
