-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: Company
-- ------------------------------------------------------
-- Server version	8.0.27-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `dname` varchar(40) NOT NULL,
  `dno` varchar(10) NOT NULL,
  `mgr_ssn` varchar(10) NOT NULL,
  `mgr_start_date` date DEFAULT NULL,
  PRIMARY KEY (`dno`),
  KEY `mgr_ssn` (`mgr_ssn`),
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`mgr_ssn`) REFERENCES `employee` (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES ('HR','10','4','2020-11-19'),('Development','11','5','2019-10-12'),('Accounts','13','2','2019-10-12'),('Research','3','1','2021-11-13');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `ssn` varchar(10) NOT NULL,
  `bdate` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `salary` int DEFAULT '30000',
  `sup_ssn` varchar(10) DEFAULT NULL,
  `dno` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ssn`),
  KEY `sup_ssn` (`sup_ssn`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`sup_ssn`) REFERENCES `employee` (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('Raghunathan','R','1','2000-10-28','Bangalore','M',50000,'1','3'),('Kiran','Dev','2','2001-11-17','Chennai','M',45000,'2','13'),('Priya','Kumar','3','2001-01-11','Mumbai','F',50400,'3','11'),('Dhruv','Sharma','4','2000-06-12','Delhi','M',4000,'4','10'),('Abhishek','Kumar','5','2000-04-21','Kolkata','M',45000,'5','11');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `pname` varchar(20) NOT NULL,
  `pno` varchar(10) NOT NULL,
  `dno` varchar(10) DEFAULT NULL,
  `pdate` date DEFAULT NULL,
  `ploc` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pno`),
  KEY `dno` (`dno`),
  CONSTRAINT `project_ibfk_1` FOREIGN KEY (`dno`) REFERENCES `department` (`dno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-29 22:23:48
