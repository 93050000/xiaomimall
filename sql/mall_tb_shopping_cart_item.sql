-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: mall
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `tb_shopping_cart_item`
--

DROP TABLE IF EXISTS `tb_shopping_cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_shopping_cart_item` (
  `cart_item_id` bigint NOT NULL AUTO_INCREMENT COMMENT '购物项主键id',
  `user_id` bigint NOT NULL COMMENT '用户主键id',
  `goods_id` bigint NOT NULL DEFAULT '0' COMMENT '关联商品id',
  `goods_count` int NOT NULL DEFAULT '1' COMMENT '数量(最大为5)',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最新修改时间',
  PRIMARY KEY (`cart_item_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='购物项表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_shopping_cart_item`
--

LOCK TABLES `tb_shopping_cart_item` WRITE;
/*!40000 ALTER TABLE `tb_shopping_cart_item` DISABLE KEYS */;
INSERT INTO `tb_shopping_cart_item` VALUES (1,3,10895,1,1,'2022-05-25 11:03:22','2022-05-25 11:03:22'),(2,3,10779,1,1,'2022-05-25 11:03:28','2022-05-25 11:03:28'),(3,3,10283,1,1,'2022-05-25 11:07:14','2022-05-25 11:07:14'),(4,3,10283,1,1,'2022-05-25 11:22:10','2022-05-25 11:22:10'),(5,3,10742,2,1,'2022-05-25 11:33:02','2022-05-26 10:36:06'),(6,3,10700,1,1,'2022-05-26 09:35:14','2022-05-26 10:19:56'),(7,3,10283,1,1,'2022-05-26 10:33:52','2022-05-26 10:33:52'),(8,3,10779,1,1,'2022-05-26 10:44:17','2022-05-26 10:44:17'),(9,3,10180,1,1,'2022-05-26 10:57:35','2022-05-26 10:57:35'),(10,3,10700,1,1,'2022-05-26 15:37:01','2022-05-26 15:37:01'),(11,3,10700,1,1,'2022-05-26 16:18:37','2022-05-26 16:18:37'),(12,3,10700,1,1,'2022-05-28 10:20:40','2022-05-28 10:20:40'),(13,3,10158,1,1,'2022-05-28 14:07:08','2022-05-28 14:07:08'),(14,4,10147,2,1,'2022-05-11 11:47:21','2022-05-11 11:47:49'),(15,4,10893,1,1,'2022-05-11 11:47:27','2022-05-11 11:47:27'),(16,4,10779,1,1,'2022-05-11 11:47:32','2022-05-11 11:47:32'),(17,4,10237,1,1,'2022-05-11 15:27:50','2022-05-11 15:27:50'),(18,4,10283,1,1,'2022-05-11 16:37:08','2022-05-11 16:37:08'),(19,4,10700,1,1,'2022-05-11 16:37:12','2022-05-11 16:37:12'),(20,4,10254,1,1,'2022-05-11 16:37:17','2022-05-11 16:37:17'),(21,4,10160,1,1,'2022-05-11 16:37:36','2022-05-11 16:37:36'),(22,4,10158,1,1,'2022-05-11 16:37:43','2022-05-11 16:37:43'),(23,5,10180,1,1,'2022-07-13 11:37:38','2022-07-13 11:37:38'),(24,5,10180,1,1,'2022-07-13 13:23:16','2022-07-13 13:23:16'),(25,5,10906,1,1,'2022-07-13 19:42:03','2022-07-13 19:42:03'),(26,5,10147,1,1,'2022-07-13 23:51:16','2022-07-13 15:58:10'),(27,5,10894,1,1,'2022-07-14 00:44:02','2022-07-14 00:44:02'),(28,5,10907,1,1,'2022-07-14 00:56:37','2022-07-14 00:56:37'),(29,5,10180,1,1,'2022-07-14 01:05:11','2022-07-13 17:05:22'),(30,7,10154,1,1,'2022-07-14 14:55:14','2022-07-14 06:55:20');
/*!40000 ALTER TABLE `tb_shopping_cart_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-16 16:11:56
