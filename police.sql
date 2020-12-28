-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 03, 2018 at 05:16 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `police`
--

-- --------------------------------------------------------

--
-- Table structure for table `crime`
--

CREATE TABLE IF NOT EXISTS `crime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `CrimeType` varchar(245) DEFAULT NULL,
  `Info` text,
  `Date` datetime DEFAULT NULL,
  `longitude` decimal(10,6) DEFAULT NULL,
  `latitude` decimal(10,6) DEFAULT NULL,
  `Police_id` int(11) NOT NULL,
  `User_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Crime_Police` (`Police_id`),
  KEY `fk_Crime_User1` (`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `crime`
--


-- --------------------------------------------------------

--
-- Table structure for table `foundproperty`
--

CREATE TABLE IF NOT EXISTS `foundproperty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `PropertyType` varchar(255) DEFAULT NULL,
  `PropertyName` varchar(45) DEFAULT NULL,
  `Details` longtext,
  `SerialNo` varchar(45) DEFAULT NULL,
  `Location` varchar(45) DEFAULT NULL,
  `Storage` varchar(45) DEFAULT NULL,
  `ContactPerson` varchar(45) DEFAULT NULL,
  `Photo` varchar(45) DEFAULT NULL,
  `Status` varchar(45) NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `foundproperty`
--

INSERT INTO `foundproperty` (`id`, `PropertyType`, `PropertyName`, `Details`, `SerialNo`, `Location`, `Storage`, `ContactPerson`, `Photo`, `Status`, `Date`) VALUES
(1, 'Vehicle', 'RAUM', '', 'UAX 635L', 'MBARARA', 'MBARARA', '0775436783', '1517656072_RAUM UAX 635L.jpg', 'pending', '2018-02-03'),
(2, 'Vehicle', 'RAUM', '', 'UAV 284N', 'JINJA', 'JINJA', '0717436783', '1517656145_RAUM UAV 284N.jpg', 'pending', '2018-02-03'),
(3, 'Motorcycle', 'Boxer', '', 'UEL 796R', 'KAWEMPE', 'KAWEMPE', '0717436222', '1517656237_BOXER UEL 796R.jpg', 'pending', '2018-02-03'),
(4, 'Vehicle', 'PREMO', '', 'UBB 293N', 'ENTEBBE', 'ENTEBBE', '0702036783', '1517656335_PREMO UBB 293N.jpg', 'pending', '2018-02-03'),
(5, 'Vehicle', 'MINIBUS', '', 'UAW 256Y', 'MBARARA', 'MBARARA', '0717436783', '1517656434_MINIBUS UAW 256Y.jpg', 'pending', '2018-02-03'),
(6, 'Motorcycle', 'TVS', '', 'UEL 793K', 'KAWEMPE', 'KAWEMPE', '0714236780', '1517656492_TVS UEL 435J.jpg', 'pending', '2018-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) DEFAULT NULL,
  `User_id` int(11) NOT NULL,
  PRIMARY KEY (`Username`),
  KEY `fk_Login_User1` (`User_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Username`, `Password`, `User_id`) VALUES
('musobah', 'musobah', 1);

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE IF NOT EXISTS `police` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StationName` varchar(45) DEFAULT NULL,
  `Longitude` decimal(10,6) DEFAULT NULL,
  `Latitude` decimal(10,6) DEFAULT NULL,
  `DPC` varchar(45) DEFAULT NULL,
  `Response` varchar(45) DEFAULT NULL,
  `CID` varchar(45) DEFAULT NULL,
  `CFPU` varchar(45) DEFAULT NULL,
  `DogSection` varchar(45) DEFAULT NULL,
  `CT` varchar(45) DEFAULT NULL,
  `Traffic` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`id`, `StationName`, `Longitude`, `Latitude`, `DPC`, `Response`, `CID`, `CFPU`, `DogSection`, `CT`, `Traffic`) VALUES
(1, 'CPS', '0.316186', '32.578257', '+256715638254', '+256715638254', '+256715638254', '+256715638254', '+256715638254', '+256715638254', '+256715638257'),
(2, 'Makerere University', '0.334015', '32.571040', '+256715638291', '+256713338254', '+256715638227', '+256715638263', '+256715638240', '+2567156382390', '+256715638236'),
(3, 'Kiira road', '0.346276', '32.594342', '+256715638251', '+256713338254', '+256715638250', '+256715638251', '+256715638240', '+256715638254', '+256717738236'),
(4, 'Natete PS', '0.300608', '32.530771', '+256715638251', '+256713338254', '+256715638227', '+256715638251', '+256715638277', '+256715638233', '+256715638200'),
(5, 'KISUNGU PS', '0.307803', '32.610145', '+256712155900', '+256712155965', '+256712155988', '+256712155901', '+256712155903', '+2567121059024', '+256712155999'),
(6, 'Mukono CPS', '0.361809', '32.744725', '+256712155909', '+256712155966', '+256712155989', '+256712155903', '+256715555900', '+2567129959024', '+256711155999'),
(7, 'Kawempe PS', '0.362960', '32.561666', '+256712155900', '+256712155965', '+256712155000', '+256712155901', '+256712155903', '+2567166659024', '+256711225999'),
(8, 'Entebbe PS', '0.064463', '32.472250', '+256712155111', '+256712155969', '+256712155000', '+256712155901', '+256712225903', '+2567121059024', '+256711157766'),
(9, 'Kasangati PS', '0.439312', '32.603180', '+256712158760', '+256712155965', '+256712155000', '+256712155901', '+256712155903', '+2567121059024', '+256711155912'),
(11, 'NSANGI PS', '0.283800', '32.453710', '+256714447900', '+256712155966', '+256712155988', '+256712155901', '+256712155903', '+2567166659024', '+256711155912'),
(12, 'WAKISO PS', '0.401264', '32.475972', '+256712155654', '+256712155965', '+256712155989', '+256712155622', '+256712155992', '+2567128859024', '+256711155917'),
(13, 'KATWE PS', '0.294609', '32.572554', '+256712155155', '+256712155966', '+256712155989', '+256712155903', '+256712155992', '+2567129990243', '+256712155993'),
(14, 'KANYANYA PS', '0.377153', '32.576177', '0718731741', '0718731741', '0718731742', '', '', '', '0718731741'),
(15, 'MULAGO PS', '0.340490', '32.575317', '0711042416', '', '0711042416', '', '', '', '0711042416'),
(16, 'KAJJANSI PS', '0.210858', '32.541468', '0715490368', '0414200537', '0414200537', '', '', '', '0414200537'),
(17, 'KISUBI PS', '0.127945', '32.531873', '0712631393', '0712631393', '0772555186', '', '', '', '0712631393'),
(18, 'KIWATULE PS', '0.361131', '32.628596', '0772403089', '', '0772403089', '', '', '', '0772403089'),
(19, 'KIWATULE PS', '0.361131', '32.628596', '0772403089', '', '0772403089', '', '', '', '0772403089'),
(20, 'NTINDA PS', '0.350595', '32.615871', '0414370586', '0414370586', '0782496525 ', '', '', '', '0782496525 '),
(21, 'BULOBA PS', '0.321068', '32.440332', '0704362471', '0704362471', '0782363471', '', '', '', '0782363471'),
(22, 'KISASI PS', '0.379600', '32.601838', '0711042208', '0711042208', '', '', '', '', '0711042208'),
(23, 'NANSANA PS', '0.363968', '32.528317', '0718851254', '', '0718851254', '', '', '', '0718851254'),
(24, 'KAKIRI PS', '0.428013', '32.386308', '0716225392', '', '', '0716225392', '', '', ''),
(25, 'NAGGALAMA PS', '0.521480', '32.774844', '0772538785', '0772538785', '0772853962', '', '', '', '0772853962');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FName` varchar(45) DEFAULT NULL,
  `LName` varchar(45) DEFAULT NULL,
  `OName` varchar(45) DEFAULT NULL,
  `Contact` varchar(45) DEFAULT NULL,
  `phoneCode` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `FName`, `LName`, `OName`, `Contact`, `phoneCode`) VALUES
(1, 'Musinguzi', 'Obah', NULL, '0717812500', NULL),
(2, 'Musisinguzi', 'Obah', '', '0702307377', NULL),
(3, 'Mugume', 'Keneeth', '', '0776337356', NULL),
(4, 'Musinguzi ', 'Gad', '', '0772840060', NULL),
(5, 'ob', 'kft', '', '0775414652', NULL),
(6, 'john', 'turya', '', '0775684328', NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `crime`
--
ALTER TABLE `crime`
  ADD CONSTRAINT `fk_Crime_Police` FOREIGN KEY (`Police_id`) REFERENCES `police` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Crime_User1` FOREIGN KEY (`User_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `fk_Login_User1` FOREIGN KEY (`User_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
