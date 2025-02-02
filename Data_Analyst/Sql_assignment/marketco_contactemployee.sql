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
-- Table structure for table `contactemployee`
--

DROP TABLE IF EXISTS `contactemployee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactemployee` (
  `ContactEmployeeID` int DEFAULT NULL,
  `ContactID` int DEFAULT NULL,
  `EmployeID` int DEFAULT NULL,
  `ContactDate` date DEFAULT NULL,
  `Description` varchar(100) DEFAULT NULL,
  KEY `ContactID` (`ContactID`),
  KEY `EmployeID` (`EmployeID`),
  CONSTRAINT `contactemployee_ibfk_1` FOREIGN KEY (`ContactID`) REFERENCES `contact` (`ContactID`),
  CONSTRAINT `contactemployee_ibfk_2` FOREIGN KEY (`EmployeID`) REFERENCES `employee` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactemployee`
--

LOCK TABLES `contactemployee` WRITE;
/*!40000 ALTER TABLE `contactemployee` DISABLE KEYS */;
INSERT INTO `contactemployee` VALUES (1,1,1,'2024-01-10','Initial client meeting'),(2,2,2,'2024-02-15','Follow-up call'),(3,3,3,'2024-03-05','Discussed project scope'),(4,4,4,'2024-04-12','Negotiated contract terms'),(5,5,5,'2024-05-18','Reviewed marketing strategy'),(6,6,6,'2024-06-25','Budget planning meeting'),(7,7,7,'2024-07-05','Discussed IT security measures'),(8,8,8,'2024-08-10','Explored new UX designs'),(9,9,9,'2024-09-22','Reviewed financial reports'),(10,10,10,'2024-10-30','Finalized software development plan');
/*!40000 ALTER TABLE `contactemployee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-02 22:31:24
