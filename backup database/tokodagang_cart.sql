-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: tokodagang
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cart` (
  `IdProduct` int(1) NOT NULL AUTO_INCREMENT,
  `NamaProduk` varchar(45) NOT NULL,
  `Harga` varchar(45) NOT NULL,
  `Gambar` varchar(450) NOT NULL,
  `username` varchar(45) NOT NULL,
  PRIMARY KEY (`IdProduct`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'laptop ROG','12600000','https://www.hartonoelektronika.com/images/detailed/29/90NB0DX3-M01670.jpg','b'),(2,'laptop ROG','12600000','https://www.hartonoelektronika.com/images/detailed/29/90NB0DX3-M01670.jpg','b'),(3,'laptop alienware mini','10600000','https://icdn1.digitaltrends.com/image/alienware-15-r3-sideleds3-720x720.jpg','b'),(4,'laptop alienware','14600000','https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6228/6228319_sd.jpg','b'),(5,'laptop alienware mini','10600000','https://icdn1.digitaltrends.com/image/alienware-15-r3-sideleds3-720x720.jpg','b'),(6,'laptop alienware mini','10600000','https://icdn1.digitaltrends.com/image/alienware-15-r3-sideleds3-720x720.jpg','b'),(7,'msi','1000000','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKGpKxC7ClEVJk1NFSRA_29V84XlHurSuth1tBNX0gm9MQ3HXb','b'),(8,'msi','1000000','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKGpKxC7ClEVJk1NFSRA_29V84XlHurSuth1tBNX0gm9MQ3HXb','b');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-21 16:23:28
