-- Host: localhost


SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE IF NOT EXISTS `announcement` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(40) NOT NULL,
  `body` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE IF NOT EXISTS `routes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `routeName` varchar(40) NOT NULL,
  `totalNumberOfSeats` mediumint(9) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `routeName`, `totalNumberOfSeats`) VALUES
(1, 'Athens-London', 250),
(2, 'Athens-Spain', 250),
(5, 'Athens-United Arab Emirates', 150),
(4, 'Athens-France', 100);
-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `routeName` varchar(40) NOT NULL,
  `date` varchar(40) NOT NULL,
  `time` varchar(40) NOT NULL,
  `seat` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `routeName`, `date`, `time`, `seat`) VALUES
(1, 'Athens-London', '17/5/2015', '12:55', 20),
(5, 'Athens-Spain', '1/6/2015', '15:00', 198),
(6, 'Athens-United Arab Emirates', '16/8/2015', '23:00', 64);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `surname` varchar(40) NOT NULL,
  `username` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT '0',
  `isCashier` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `username`, `password`, `address`, `email`, `telephone`, `isAdmin`, `isCashier`) VALUES
(1, 'Admin-Panos-Giorgos-Xristos', 'TEIPEIRAIA', 'admin', 'admin', 'Thivon', 'teipir1@gmail.com', 2103530000, 1, 0),
(2, 'Cashier-Panos-Giorgos-Xristos', 'TEIPEIRAIA', 'cashier', 'cashier', 'Thivon', 'teipir1@gmail.com', 2103530000, 0, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
