SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `raume` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `raume`;

CREATE TABLE `raume` (
  `Raum_nr` varchar(50) NOT NULL,
  `rm_typ` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `raum_typ` (
  `rm_typ` varchar(50) NOT NULL,
  `rm_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `raum_typ` (`rm_typ`, `rm_id`) VALUES
('Informatik', 1),
('Allgemeiner unterrichts Raum', 2),
('Werkstatt', 3),
('Toilette', 4),
('Lehrer Zimmer', 5);


ALTER TABLE `raume`
  ADD PRIMARY KEY (`Raum_nr`);

ALTER TABLE `raum_typ`
  ADD PRIMARY KEY (`rm_typ`),
  ADD UNIQUE KEY `rm_id` (`rm_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;