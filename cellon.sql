-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: cellon
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nguoidung` (
  `idnguoidung` int(11) NOT NULL AUTO_INCREMENT,
  `hoten` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ho` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ten` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pass` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `quyen` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'user',
  PRIMARY KEY (`idnguoidung`),
  UNIQUE KEY `new_tablecol_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoidung`
--

LOCK TABLES `nguoidung` WRITE;
/*!40000 ALTER TABLE `nguoidung` DISABLE KEYS */;
INSERT INTO `nguoidung` VALUES (2,'mạnh chu choe móe','chu','đức mạnh','manh@gmail.com','123123','admin'),(17,'hung lê','hồ','đình an','hungbmt@gmail.com','123123','user'),(21,'An','An','Dinh','an@gmail.com','123123','user'),(22,'Hà','Hà','Hà','ha@gmail.com','345345','user'),(23,'admin','admin','Quyền lực nhất xóm','admin@gmail.com','admin','admin'),(25,'mạnh ghê','ghê','mạnh','manh123@gmail.com','manh123','user'),(26,'buồn cho An','Buồn','Cho An','anhd@gmail.com','123123','user'),(27,'anh Hùng','Anh','Hùng','anhhung69@gmail.com','anhhung','user'),(28,'','','','','','user');
/*!40000 ALTER TABLE `nguoidung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanphamdientu`
--

DROP TABLE IF EXISTS `sanphamdientu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanphamdientu` (
  `idsanphamdientu` int(10) NOT NULL AUTO_INCREMENT,
  `tensanpham` varchar(100) NOT NULL,
  `anhdaidien` varchar(45) NOT NULL,
  `gia` varchar(45) NOT NULL,
  `chitiet` mediumtext NOT NULL,
  PRIMARY KEY (`idsanphamdientu`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanphamdientu`
--

LOCK TABLES `sanphamdientu` WRITE;
/*!40000 ALTER TABLE `sanphamdientu` DISABLE KEYS */;
INSERT INTO `sanphamdientu` VALUES (8,'Cây xương rồng','x1.jpg','999 $','Cây xương rồng là loại cây mọc hoang dại trên sỏi đá, đất cát khô cằn, những nơi như hoang mạc khô nóng. Đó là lý do khiến cành lá cây tiêu biến, trở thành gai nhọn, chỉ còn lại thân mọng nước. Người ta ước tính có từ 1500 đến 1800 loài xương rồng khác nhau trên thế giới với nhiều đặc điểm hình thái và màu sắc khác nhau.</span>');
/*!40000 ALTER TABLE `sanphamdientu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tintuc`
--

DROP TABLE IF EXISTS `tintuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tintuc` (
  `idtintuc` int(11) NOT NULL AUTO_INCREMENT,
  `tieude` varchar(200) DEFAULT NULL,
  `motangan` varchar(1000) DEFAULT NULL,
  `anhdaidien` varchar(100) DEFAULT NULL,
  `chitietbaiviet` varchar(455) DEFAULT NULL,
  `nguoidang` varchar(45) DEFAULT NULL,
  `ngaydang` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`idtintuc`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tintuc`
--

LOCK TABLES `tintuc` WRITE;
/*!40000 ALTER TABLE `tintuc` DISABLE KEYS */;
INSERT INTO `tintuc` VALUES (5,'Chậu xương rồng đẹp','       					xương rồng xinh','x2.jpg','đẹp','Mạnh','10-10-2020');
/*!40000 ALTER TABLE `tintuc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-03 20:22:06
