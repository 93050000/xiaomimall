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
-- Table structure for table `tb_carousel`
--

DROP TABLE IF EXISTS `tb_carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_carousel` (
  `carousel_id` int NOT NULL AUTO_INCREMENT COMMENT '首页轮播图主键id',
  `carousel_url` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '轮播图',
  `redirect_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '''##''' COMMENT '点击后的跳转地址(默认不跳转)',
  `carousel_rank` int NOT NULL DEFAULT '0' COMMENT '排序值(字段越大越靠前)',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user` int NOT NULL DEFAULT '0' COMMENT '创建者id',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `update_user` int DEFAULT '0' COMMENT '修改者id',
  PRIMARY KEY (`carousel_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='轮播图表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_carousel`
--

LOCK TABLES `tb_carousel` WRITE;
/*!40000 ALTER TABLE `tb_carousel` DISABLE KEYS */;
INSERT INTO `tb_carousel` VALUES (1,'/goods-img/20220713_16505359.jpg','',13,1,'2022-06-05 10:25:10',0,'2022-07-13 16:55:23',0),(2,'https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/banner2.png','#',0,1,'2022-06-05 10:25:10',0,'2022-07-13 16:55:23',0),(3,'/goods-img/20220713_15062638.jpg','##',0,1,'2022-07-13 15:06:29',0,'2022-07-13 16:55:23',0),(4,'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/1bf9ec043e7c6d1e0d1b5d9c054fe085.jpg?thumb=1&w=1839&h=690&f=webp&q=90','https://www.mi.com/a/h/24692.html?sign=77ae52e5296b8a5b0872b352e09e673f',0,0,'2022-07-13 17:07:53',0,'2022-07-13 11:10:38',0),(5,'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/36b45c624f42fa81732457e3f9773dbd.jpg?thumb=1&w=1839&h=690&f=webp&q=90','https://www.mi.com/miwifihome',0,0,'2022-07-13 17:08:10',0,'2022-07-13 11:10:15',0),(6,'https://cdn.cnbj1.fds.api.mi-img.com/mi-mall/2518809a9946ec56c416d3b677a2ed9c.jpg?w=2452&h=920','https://www.mi.com/shop/buy/detail?product_id=10000405',0,0,'2022-07-13 17:21:37',0,'2022-07-13 11:09:42',0),(7,'http://localhost:8080/upload/20220713_18281164.jpg','##',0,1,'2022-07-13 18:28:16',0,'2022-07-13 18:59:32',0),(8,'http://localhost:8080/upload/20220713_19051111.jpg','##',0,1,'2022-07-13 19:05:12',0,'2022-07-13 19:30:44',0),(9,'http://localhost:8102/upload/20220713_20520355.png','##',0,1,'2022-07-13 20:52:06',0,'2022-07-13 20:53:07',0),(10,'http://localhost:8102/upload/20220714_00024875.png','##',5000,1,'2022-07-14 00:03:00',0,'2022-07-14 00:03:27',0),(11,'http://localhost:8102/upload/20220714_00033469.png','##',0,1,'2022-07-14 00:03:36',0,'2022-07-14 00:09:36',0);
/*!40000 ALTER TABLE `tb_carousel` ENABLE KEYS */;
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
