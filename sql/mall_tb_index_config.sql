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
-- Table structure for table `tb_index_config`
--

DROP TABLE IF EXISTS `tb_index_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_index_config` (
  `config_id` bigint NOT NULL AUTO_INCREMENT COMMENT '首页配置项主键id',
  `config_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '显示字符(配置搜索时不可为空，其他可为空)',
  `config_type` tinyint NOT NULL DEFAULT '0' COMMENT '1-搜索框热搜 2-搜索下拉框热搜 3-(首页)热销商品 4-(首页)新品上线 5-(首页)为你推荐',
  `goods_id` bigint NOT NULL DEFAULT '0' COMMENT '商品id 默认为0',
  `redirect_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '##' COMMENT '点击后的跳转地址(默认不跳转)',
  `config_rank` int NOT NULL DEFAULT '0' COMMENT '排序值(字段越大越靠前)',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `create_user` int NOT NULL DEFAULT '0' COMMENT '创建者id',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最新修改时间',
  `update_user` int DEFAULT '0' COMMENT '修改者id',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='首页配置项表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_index_config`
--

LOCK TABLES `tb_index_config` WRITE;
/*!40000 ALTER TABLE `tb_index_config` DISABLE KEYS */;
INSERT INTO `tb_index_config` VALUES (1,'热销商品 小辣椒 15S',3,10284,'##',10,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(2,'热销商品 华为 Mate20',3,10779,'##',100,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(3,'热销商品 Apple 12',3,10906,'##',300,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(4,'热销商品 Apple AirPods',3,10159,'##',101,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(5,'新品上线 Apple 12',4,10905,'##',100,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(6,'新品上线 荣耀 nova 8',4,10755,'##',100,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(7,'新品上线 iPhone 11',4,10283,'##',102,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(8,'新品上线 iPhone 11 Pro',4,10320,'##',101,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(9,'新品上线 华为无线耳机',4,10186,'##',100,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(10,'纪梵希高定香榭天鹅绒唇膏',5,10233,'##',98,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(11,'MAC 磨砂系列',5,10237,'##',100,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(12,'索尼 WH-1000XM3',5,10195,'##',102,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(13,'Apple AirPods',5,10180,'##',101,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(14,'小米 Redmi AirDots',5,10160,'##',100,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(15,'Apple 12',5,10905,'##',500,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(16,'女式粗棉线条纹长袖T恤',5,10158,'##',99,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(17,'塑料浴室座椅',5,10154,'##',100,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(18,'靠垫',5,10147,'##',101,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(19,'小型超声波香薰机',5,10113,'##',100,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(20,'11',5,1,'##',0,1,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(21,'热销商品 小米12 ultra',3,10907,'##',200,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(22,'新品上线 x小米12S Ultra',4,10907,'##',200,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(23,'新品上线 华为 Mate 30',4,10895,'##',199,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0),(24,'华为 Mate 30 Pro',5,10894,'##',101,0,'2022-06-25 17:05:27',0,'2022-06-25 17:05:27',0);
/*!40000 ALTER TABLE `tb_index_config` ENABLE KEYS */;
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
