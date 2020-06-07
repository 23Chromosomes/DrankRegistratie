-- --------------------------------------------------------
-- Host:                         (local)\sqlexpress
-- Server version:               Microsoft SQL Server 2017 (RTM) - 14.0.1000.169
-- Server OS:                    Windows 10 Home 10.0 <X64> (Build 18362: )
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES  */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for DrankRegistratie
CREATE DATABASE IF NOT EXISTS "DrankRegistratie";
USE "DrankRegistratie";

-- Dumping structure for table DrankRegistratie.dranken
CREATE TABLE IF NOT EXISTS "dranken" (
	"ID" INT(10,0) NOT NULL,
	"Naam" VARCHAR(50) NULL DEFAULT NULL,
	"Soort" VARCHAR(50) NULL DEFAULT NULL,
	"Prijs" DECIMAL(15,2) NULL DEFAULT NULL,
	PRIMARY KEY ("ID")
);

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
