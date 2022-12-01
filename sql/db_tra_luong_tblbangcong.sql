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
-- Table structure for table `tblbangcong`
--

DROP TABLE IF EXISTS `tblbangcong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbangcong` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tongluong` varchar(255) NOT NULL,
  `tonggio` varchar(255) NOT NULL,
  `ngaythanhtoan` varchar(255) NOT NULL,
  `thue` varchar(255) NOT NULL,
  `thucnhan` varchar(255) NOT NULL,
  `trangthai` varchar(255) NOT NULL,
  `BacSitblNhanVienid` int NOT NULL,
  `tblQuanLytblNhanVienid` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbangcong`
--

LOCK TABLES `tblbangcong` WRITE;
/*!40000 ALTER TABLE `tblbangcong` DISABLE KEYS */;
INSERT INTO `tblbangcong` VALUES (7,'4400.0','10','2022/11/09 18:11:35','100','100','Da thanh toan',1,1),(8,'4400.0','10','2022/11/09 18:13:43','100','100','Da thanh toan',1,1),(9,'4400.0','10','2022/11/09 18:23:14','100','100','Da thanh toan',1,1),(10,'4400.0','10','2022/11/09 18:24:36','100','100','Da thanh toan',1,1),(11,'4400.0','10','2022/11/09 18:26:21','100','100','Da thanh toan',1,1),(12,'4400.0','10','2022/11/09 18:32:12','100','100','Da thanh toan',1,1),(13,'4400.0','10','2022/11/09 18:33:27','100','100','Da thanh toan',1,1),(14,'4400.0','10','2022/11/09 18:40:00','100','100','Da thanh toan',1,1),(15,'4400.0','10','2022/11/09 18:43:11','100','100','Da thanh toan',1,1),(16,'4400.0','10','2022/11/09 18:44:32','100','100','Da thanh toan',1,1),(17,'4400.0','10','2022/11/09 18:46:21','100','100','Da thanh toan',1,1),(18,'4400.0','10','2022/11/09 18:52:57','100','100','Da thanh toan',1,1),(19,'4400.0','10','2022/11/09 18:54:23','100','100','Da thanh toan',1,1);
/*!40000 ALTER TABLE `tblbangcong` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-09 19:00:23
