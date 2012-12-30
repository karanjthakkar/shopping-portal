-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 30, 2012 at 07:26 PM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shoppingportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE IF NOT EXISTS `accessories` (
  `Sno` int(10) NOT NULL AUTO_INCREMENT,
  `ItemName` varchar(50) NOT NULL,
  `ItemPrice` varchar(10) NOT NULL,
  `ItemUrl` varchar(40) NOT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`Sno`, `ItemName`, `ItemPrice`, `ItemUrl`) VALUES
(2, 'Necklace', '200', 'accessories\\2.jpg'),
(1, 'Purse', '500', 'accessories\\1.jpg'),
(3, 'Necklace', '300', 'accessories\\3.jpg'),
(4, 'Bracelet', '100', 'accessories\\4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `clothes`
--

CREATE TABLE IF NOT EXISTS `clothes` (
  `Sno` int(10) NOT NULL AUTO_INCREMENT,
  `ItemName` varchar(50) NOT NULL,
  `ItemPrice` varchar(50) NOT NULL,
  `ItemUrl` varchar(50) NOT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `clothes`
--

INSERT INTO `clothes` (`Sno`, `ItemName`, `ItemPrice`, `ItemUrl`) VALUES
(2, 'Mens T-Shirt', '450', 'clothes\\2.jpg'),
(1, 'Mens Shirt', '1500', 'clothes\\1.jpg'),
(3, 'Suits', '600', 'clothes\\3.jpg'),
(4, 'Suits', '2200', 'clothes\\4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mobphone`
--

CREATE TABLE IF NOT EXISTS `mobphone` (
  `Sno` int(10) NOT NULL AUTO_INCREMENT,
  `ItemName` varchar(50) NOT NULL,
  `ItemPrice` varchar(50) NOT NULL,
  `ItemUrl` varchar(50) NOT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mobphone`
--

INSERT INTO `mobphone` (`Sno`, `ItemName`, `ItemPrice`, `ItemUrl`) VALUES
(1, 'Nokia Lumia 800', '18990', 'mobphone\\1.jpg'),
(2, 'Xperia S', '25990', 'mobphone\\2.jpg'),
(3, 'Galaxy Note II', '36900', 'mobphone\\3.jpg'),
(4, 'Xperia Tipo', '8990', 'mobphone\\4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orderinprocess`
--

CREATE TABLE IF NOT EXISTS `orderinprocess` (
  `Sno` int(10) NOT NULL AUTO_INCREMENT,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `orderinprocess`
--

INSERT INTO `orderinprocess` (`Sno`, `Status`) VALUES
(9, 'Ordered'),
(10, 'Ordered'),
(11, 'Ordered'),
(12, 'Ordered'),
(13, 'Ordered');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE IF NOT EXISTS `userdata` (
  `Sno` int(10) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) NOT NULL,
  `UserPass` varchar(100) NOT NULL,
  PRIMARY KEY (`Sno`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`Sno`, `UserName`, `UserPass`) VALUES
(1, 'Admin', 'Admin'),
(2, 'user', 'user');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
