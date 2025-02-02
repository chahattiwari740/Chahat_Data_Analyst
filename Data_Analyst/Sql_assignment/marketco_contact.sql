-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: marketco
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `ContactID` int NOT NULL,
  `CompanyID` int DEFAULT NULL,
  `Firstname` varchar(45) DEFAULT NULL,
  `Lastname` varchar(45) DEFAULT NULL,
  `Street` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `Zip` varchar(10) DEFAULT NULL,
  `IsMain` tinyint(1) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Phone` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`ContactID`),
  KEY `CompanyID` (`CompanyID`),
  CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`CompanyID`) REFERENCES `company` (`companyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,1,'John','Doe','123 Main St','New York','NY','10001',1,'johndoe@techcorp.com','123-456-7890'),(2,2,'Jane','Smith','456 Oak Ave','Los Angeles','CA','90001',0,'janesmith@bizsolutions.com','234-567-8901'),(3,3,'Mike','Johnson','789 Pine Rd','San Francisco','CA','94101',1,'mikejohnson@innovatex.com','345-678-9012'),(4,4,'Emily','Clark','321 Elm St','Chicago','IL','60601',0,'emilyclark@nextgen.com','456-789-0123'),(5,5,'David','Brown','654 Maple Dr','Houston','TX','77001',1,'davidbrown@futuresoft.com','567-890-1234'),(6,6,'Sarah','Miller','987 Cedar Ln','Boston','MA','02101',0,'sarahmiller@dataminds.com','678-901-2345'),(7,7,'Kevin','Wilson','741 Birch Ct','Seattle','WA','98101',1,'kevinwilson@cloudnet.com','789-012-3456'),(8,8,'Rachel','Moore','852 Spruce St','Austin','TX','73301',0,'rachelmoore@aihub.com','890-123-4567'),(9,9,'Chris','Anderson','963 Redwood Dr','Miami','FL','33101',1,'chrisanderson@cybertech.com','901-234-5678'),(10,10,'Laura','Hall','159 Willow Ln','Denver','CO','80201',0,'laurahall@softwave.com','012-345-6789');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-02 22:31:23
