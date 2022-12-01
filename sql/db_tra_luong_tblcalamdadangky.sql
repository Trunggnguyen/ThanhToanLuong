CREATE DATABASE  IF NOT EXISTS `db_tra_luong` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_tra_luong`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: db_tra_luong
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `tblcalamdadangky`
--

DROP TABLE IF EXISTS `tblcalamdadangky`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcalamdadangky` (
  `id` int NOT NULL AUTO_INCREMENT,
  `thoigiandangky` varchar(255) NOT NULL,
  `tblCaLamid` int NOT NULL,
  `tblBenhNhanDaKhamid` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtblCaLamDa81798` (`tblCaLamid`),
  KEY `FKtblCaLamDa60765` (`tblBenhNhanDaKhamid`),
  CONSTRAINT `FKtblCaLamDa60765` FOREIGN KEY (`tblBenhNhanDaKhamid`) REFERENCES `tblbenhnhandakham` (`id`),
  CONSTRAINT `FKtblCaLamDa81798` FOREIGN KEY (`tblCaLamid`) REFERENCES `tblcalam` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcalamdadangky`
--

LOCK TABLES `tblcalamdadangky` WRITE;
/*!40000 ALTER TABLE `tblcalamdadangky` DISABLE KEYS */;
INSERT INTO `tblcalamdadangky` VALUES (1,'20/10/2022',1,1),(2,'20/10/2022',1,1),(3,'20/10/2022',1,2),(4,'20/10/2022',1,2),(5,'20/10/2022',3,3),(6,'20/10/2022',2,3),(7,'20/10/2022',2,4),(8,'20/10/2022',1,5);
/*!40000 ALTER TABLE `tblcalamdadangky` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-09 19:00:24
