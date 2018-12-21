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
-- Table structure for table `tableitem`
--

DROP TABLE IF EXISTS `tableitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tableitem` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) DEFAULT NULL,
  `deskripsi` varchar(45) DEFAULT NULL,
  `gambar` varchar(400) DEFAULT NULL,
  `categoryid` int(11) NOT NULL,
  `harga` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tableitem`
--

LOCK TABLES `tableitem` WRITE;
/*!40000 ALTER TABLE `tableitem` DISABLE KEYS */;
INSERT INTO `tableitem` VALUES (1,'msi','gtx1050','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKGpKxC7ClEVJk1NFSRA_29V84XlHurSuth1tBNX0gm9MQ3HXb',1,'1000000'),(2,'msi','R9 290','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvUXTPO62seIngf5HBxo9EUFO__fQ0oXd1xzZb26tFsrQMky9j',1,'1500000'),(3,'msi','R9 290','https://ecs7.tokopedia.net/img/cache/700/product-1/2016/9/4/7375702/7375702_ff52af40-6623-42cc-aa1c-ac21e0b24ed5.jpg',1,'1100000'),(4,'asus690','GTx 690','http://www.klikglodok.com/toko/img/cms/Komputer%20Spare%20Part/VGA%20Card/VGA%20Card%20Asus/VGA%20Card%20ASUS%20GTX690-4GD5/VGA%20Card%20ASUS%20GTX690-4GD5.jpg',1,'2000000'),(5,'asusradeon','RT 240','https://www.bhphotovideo.com/images/images2000x2000/asus_r7240_2gd3_l_radeon_r7_240_graphic_1018408.jpg',1,'2100000'),(6,'Razer blackwidow','chroma v2','https://multimedia.bbycastatic.ca/multimedia/products/500x500/105/10567/10567347.jpg',1,'1100000'),(7,'Razer xX','chroma v7','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqmj3IjJXeG6d_gd_n0c_8ic8J7boXol3uF1pOsdpDxCVS8S_8',2,'1100000'),(8,'Razer blackwidow','chrome v2','https://multimedia.bbycastatic.ca/multimedia/products/500x500/105/10567/10567347.jpg',2,'2300000'),(9,'asus mouserog','rog spatha','https://multimedia.bbycastatic.ca/multimedia/products/500x500/104/10497/10497231.jpg',2,'2400000'),(10,'logitec g502','logitec gaming mouse','https://i5.walmartimages.com/asr/2eb80544-5a98-414d-a1da-1e770cb2f7d7_1.5fe18546110436223a5b6b3c710c2b2f.jpeg?odnHeight=450&odnWidth=450&odnBg=FFFFFF',2,'1400000'),(11,'controller ps4 ','blue fire','https://www.moddedzone.com/wp-content/uploads/2017/08/ps4-Blue-Fire-NEW-3-555x454.jpg',3,'400000'),(12,'controller ps4 default','standar','https://images-na.ssl-images-amazon.com/images/I/81vA7oGA7fL._SX466_.jpg',3,'500000'),(13,'controller xbox one','default','https://target.scene7.com/is/image/Target/GUEST_cd803e6d-1173-4231-9304-a3a63cb966ec?wid=488&hei=488&fmt=pjpeg',3,'600000'),(14,'lg gaming monitor','24GM79','https://www.lg.com/us/images/monitors/md05806529/24GM79G-350x350.jpg',4,'1600000'),(15,'Dell gaming monitor','24inch','https://assets.pcmag.com/media/images/444996-dell-24-gaming-monitor-s2417dg.jpg?width=810&height=456',4,'2600000'),(16,'Alienware gaming monitor','25inch','https://images-na.ssl-images-amazon.com/images/I/91EN10GQToL._SX425_.jpg',4,'3600000'),(17,'Nintendo switch','terbaru,official nintendo','https://www.nintendo.com/switch/assets/images/switch/buy-now/bundle_color_portable.jpg',5,'3600000'),(18,'ps4 spiderman','spiderman special edition','https://i.ebayimg.com/images/g/ah4AAOSwVqlZ83XQ/s-l300.jpg',5,'4600000'),(19,'laptop alienware','2018 - 17,3 inch','https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6228/6228319_sd.jpg',6,'14600000'),(20,'laptop alienware mini','2018 - 15 inch','https://icdn1.digitaltrends.com/image/alienware-15-r3-sideleds3-720x720.jpg',6,'10600000'),(21,'laptop ROG','ROG G553','https://www.hartonoelektronika.com/images/detailed/29/90NB0DX3-M01670.jpg',6,'12600000'),(22,'iball speaker','speaker terjangkau','https://n4.sdlcdn.com/imgs/a/k/3/iBall-Soundwave2-Speaker-SDL134545253-1-7fdc5.jpg',7,'126000'),(23,'audioengine speaker','speaker merah extra bass','https://www.bhphotovideo.com/images/images2000x2000/audioengine_a2_r_a2_2_75_powered_desktop_1208190.jpg',7,'726000'),(24,'JBL','xtreme portable','https://images-na.ssl-images-amazon.com/images/I/91HnLmz7bsL._SX425_.jpg',7,'1726000'),(25,'AMD RYXEN','2018-terbaru','https://icdn9.digitaltrends.com/image/amd-ryzen-7-cpu-insocket1-2-1500x1000.jpg',8,'2726000'),(26,'Intel I9','corei9 x-series','https://www.bhphotovideo.com/images/images2500x2500/intel_cd8067303734701_core_i9_7940x_tetradeca_core_14_core_1368050.jpg',8,'3726000'),(27,'Intel I5','7600K','https://images-na.ssl-images-amazon.com/images/I/411CaHHS7aL._SL500_AC_SS350_.jpg',8,'2026000'),(28,'Intel I3','6100','https://images-na.ssl-images-amazon.com/images/I/71TAF2Z73uL._SX425_.jpg',8,'1526000');
/*!40000 ALTER TABLE `tableitem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-21 16:23:26
