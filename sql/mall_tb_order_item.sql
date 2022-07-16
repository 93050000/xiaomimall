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
-- Table structure for table `tb_order_item`
--

DROP TABLE IF EXISTS `tb_order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_order_item` (
  `order_item_id` bigint NOT NULL AUTO_INCREMENT COMMENT '订单关联购物项主键id',
  `order_id` bigint NOT NULL DEFAULT '0' COMMENT '订单主键id',
  `goods_id` bigint NOT NULL DEFAULT '0' COMMENT '关联商品id',
  `goods_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '下单时商品的名称(订单快照)',
  `goods_cover_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '下单时商品的主图(订单快照)',
  `selling_price` int NOT NULL DEFAULT '1' COMMENT '下单时商品的价格(订单快照)',
  `goods_count` int NOT NULL DEFAULT '1' COMMENT '数量(订单快照)',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`order_item_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='订单关联购物项表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_order_item`
--

LOCK TABLES `tb_order_item` WRITE;
/*!40000 ALTER TABLE `tb_order_item` DISABLE KEYS */;
INSERT INTO `tb_order_item` VALUES (1,1,10895,'HUAWEI Mate 30 4000万超感光徕卡影像','/goods-img/mate30-3.png',3999,1,'2022-05-25 11:14:06'),(2,1,10779,'华为 HUAWEI Mate 20','/goods-img/08f9a912-f049-4cf8-a839-115fc6582398.jpg',3199,1,'2022-05-25 11:14:06'),(3,2,10283,'Apple iPhone 11 (A2223)','/goods-img/075a188a-9045-45f0-9c67-1e42e0552aa2.jpg',6799,1,'2022-05-25 11:22:22'),(4,3,10700,'荣耀8X 千元屏霸 91%屏占比 2000万AI双摄','/goods-img/6a160b96-9b4a-4844-b335-feb31b1f5d8c.jpg',999,1,'2022-05-26 10:52:15'),(5,3,10779,'华为 HUAWEI Mate 20','/goods-img/08f9a912-f049-4cf8-a839-115fc6582398.jpg',3199,1,'2022-05-26 10:52:15'),(6,4,10180,'Apple AirPods 配充电盒','/goods-img/64768a8d-0664-4b29-88c9-2626578ffbd1.jpg',1246,1,'2022-05-26 10:58:31'),(7,5,10700,'荣耀8X 千元屏霸 91%屏占比 2000万AI双摄','/goods-img/6a160b96-9b4a-4844-b335-feb31b1f5d8c.jpg',999,1,'2022-05-26 15:37:14'),(8,6,10700,'荣耀8X 千元屏霸 91%屏占比 2000万AI双摄','/goods-img/6a160b96-9b4a-4844-b335-feb31b1f5d8c.jpg',999,1,'2022-05-26 16:18:44'),(9,7,10700,'荣耀8X 千元屏霸 91%屏占比 2000万AI双摄','/goods-img/6a160b96-9b4a-4844-b335-feb31b1f5d8c.jpg',999,1,'2022-05-28 10:20:52'),(10,8,10158,'无印良品 女式粗棉线条纹长袖T恤','/goods-img/5488564b-8335-4b0c-a5a4-52f3f03ee728.jpg',70,1,'2022-05-28 14:07:13'),(11,9,10147,'MUJI 羽毛 靠垫','/goods-img/0f701215-b782-40c7-8bbd-97b51be56461.jpg',65,2,'2022-05-11 11:48:27'),(12,9,10779,'华为 HUAWEI Mate 20','/goods-img/08f9a912-f049-4cf8-a839-115fc6582398.jpg',3199,1,'2022-05-11 11:48:27'),(13,10,10237,'MAC 雾面丝绒哑光子弹头口红','/goods-img/1930d79b-88bd-4c5c-8510-0697c9ad2578.jpg',165,1,'2022-05-11 15:39:38'),(14,11,10283,'Apple iPhone 11 (A2223)','/goods-img/075a188a-9045-45f0-9c67-1e42e0552aa2.jpg',6799,1,'2022-05-11 16:39:45'),(15,11,10700,'荣耀8X 千元屏霸 91%屏占比 2000万AI双摄','/goods-img/6a160b96-9b4a-4844-b335-feb31b1f5d8c.jpg',999,1,'2022-05-11 16:39:45'),(16,11,10254,'Apple 2019款 MacBook Air 13.3','/goods-img/7810bc9d-236f-4386-a0ef-45a831b49bf2.jpg',8499,1,'2022-05-11 16:39:45'),(17,11,10160,'小米 Redmi AirDots','/goods-img/c47403f1-b706-453b-88d8-2bfdee0316be.jpg',129,1,'2022-05-11 16:39:45'),(18,11,10158,'无印良品 女式粗棉线条纹长袖T恤','/goods-img/5488564b-8335-4b0c-a5a4-52f3f03ee728.jpg',70,1,'2022-05-11 16:39:45'),(19,12,10180,'Apple AirPods 配充电盒','/goods-img/64768a8d-0664-4b29-88c9-2626578ffbd1.jpg',1246,1,'2022-07-13 11:38:48'),(20,13,10906,'Apple iPhone12 Pro (A2408) 1...','https://newbee-mall.oss-cn-beijing.aliyuncs.com/images/iphone-12-pro-blue-hero.png',8499,1,'2022-07-13 19:42:11'),(21,14,10147,'MUJI 羽毛 靠垫','/goods-img/0f701215-b782-40c7-8bbd-97b51be56461.jpg',65,1,'2022-07-13 23:59:26'),(22,15,10894,'HUAWEI Mate 30 Pro','/goods-img/mate30p3.png',5399,1,'2022-07-14 00:44:06'),(23,16,10907,'xiaomi 12S Ultra','/goods-img/xiaomi12s ut.png',5999,1,'2022-07-14 00:56:50'),(24,17,10180,'Apple AirPods 配充电盒','/goods-img/64768a8d-0664-4b29-88c9-2626578ffbd1.jpg',1246,1,'2022-07-14 01:05:46'),(25,18,10154,'无印良品 MUJI 塑料浴室座椅','/goods-img/15395057-94e9-4545-a8ee-8aee025f40c5.jpg',85,1,'2022-07-14 14:55:38');
/*!40000 ALTER TABLE `tb_order_item` ENABLE KEYS */;
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
