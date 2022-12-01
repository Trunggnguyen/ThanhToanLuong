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
-- Table structure for table `tblnhanvien`
--

DROP TABLE IF EXISTS `tblnhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblnhanvien` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gioitinh` varchar(255) NOT NULL,
  `tendangnhap` varchar(255) NOT NULL,
  `matkhau` varchar(255) NOT NULL,
  `ngaysinh` varchar(255) NOT NULL,
  `sdt` varchar(255) NOT NULL,
  `sonha` varchar(255) NOT NULL,
  `duong` varchar(255) NOT NULL,
  `tinh` varchar(255) NOT NULL,
  `quocgia` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblnhanvien`
--

LOCK TABLES `tblnhanvien` WRITE;
/*!40000 ALTER TABLE `tblnhanvien` DISABLE KEYS */;
INSERT INTO `tblnhanvien` VALUES (1,'Nv A','trungvannguyen282@gmail.com','Nam','NvA','abc','20/10/19998','083888383838','1','Thanh binh','Ha Nam','VietNam'),(2,'Nv B','trungvannguyen282@gmail.com','Nam','NvA','abc','20/10/19998','083888383838','1','Thanh binh','Ha Nam','VietNam'),(3,'NT C','trungva@gmail.com','Nam','NvA','abc','20/10/19998','083888383838','1','Thanh binh','Ha Nam','VietNam'),(4,'Nguyen Van T','abc@gmail.com','Nam','NvA','abc','20/10/19998','083888383838','1','Thanh binh','Ha Nam','VietNam'),(5,'Nguyen Thi C','trungvannguyen282@gmail.com','Nu','NvA','abc','20/10/19998','083888383838','1','Thanh binh','Ha Nam','VietNam');
/*!40000 ALTER TABLE `tblnhanvien` ENABLE KEYS */;
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
