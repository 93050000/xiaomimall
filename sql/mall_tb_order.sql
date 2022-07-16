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
-- Table structure for table `tb_order`
--

DROP TABLE IF EXISTS `tb_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_order` (
  `order_id` bigint NOT NULL AUTO_INCREMENT COMMENT '订单表主键id',
  `order_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单号',
  `user_id` bigint NOT NULL DEFAULT '0' COMMENT '用户主键id',
  `total_price` int NOT NULL DEFAULT '1' COMMENT '订单总价',
  `pay_status` tinyint NOT NULL DEFAULT '0' COMMENT '支付状态:0.未支付,1.支付成功,-1:支付失败',
  `pay_type` tinyint NOT NULL DEFAULT '0' COMMENT '0.无 1.支付宝支付 2.微信支付',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `order_status` tinyint NOT NULL DEFAULT '0' COMMENT '订单状态:0.待支付 1.已支付 2.配货完成 3:出库成功 4.交易成功 -1.手动关闭 -2.超时关闭 -3.商家关闭',
  `extra_info` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '订单body',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人姓名',
  `user_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人手机号',
  `user_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '收货人收货地址',
  `is_deleted` tinyint NOT NULL DEFAULT '0' COMMENT '删除标识字段(0-未删除 1-已删除)',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最新修改时间',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC COMMENT='订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_order`
--

LOCK TABLES `tb_order` WRITE;
/*!40000 ALTER TABLE `tb_order` DISABLE KEYS */;
INSERT INTO `tb_order` VALUES (1,'16115444461026940',3,7198,0,0,NULL,0,'','','','广东省梅州市五华县水寨村',0,'2022-05-25 11:14:06','2022-05-25 11:14:06'),(2,'16115449424742977',3,6799,1,1,'2022-05-25 11:22:33',4,'','','','广东省梅州市五华县水寨村',0,'2022-05-25 11:22:22','2022-05-25 11:24:52'),(3,'16116295357955583',3,4198,0,0,NULL,0,'','','','广东省梅州市五华县水寨村',0,'2022-05-26 10:52:15','2022-05-26 10:52:15'),(4,'16116299110733816',3,1246,1,1,'2022-05-26 11:31:11',4,'','','','广东省梅州市五华县水寨村',0,'2022-05-26 10:58:31','2022-05-26 13:06:59'),(5,'16116466340461860',3,999,0,0,NULL,0,'','','','广东省梅州市五华县水寨村',0,'2022-05-26 15:37:14','2022-05-26 15:37:14'),(6,'16116491243691931',3,999,0,0,NULL,0,'','','','广东省梅州市五华县水寨村',0,'2022-05-26 16:18:44','2022-05-26 16:18:44'),(7,'16118004525538448',3,999,1,1,'2022-05-28 10:22:42',1,'','','','广东省梅州市五华县水寨村',0,'2022-05-28 10:20:52','2022-05-28 10:22:42'),(8,'16118140339391303',3,70,1,1,'2022-05-28 14:25:52',1,'','','','广东省汕头市陆丰市',0,'2022-05-28 14:07:13','2022-05-28 14:25:52'),(9,'16207049072301030',4,3329,1,1,'2022-05-11 11:49:09',4,'','','','黑龙江省牡丹江市牡丹江村',0,'2022-05-11 11:48:27','2022-05-11 11:56:23'),(10,'16207187788216409',4,165,0,0,NULL,0,'','','','黑龙江省牡丹江市牡丹江村',0,'2022-05-11 15:39:38','2022-05-11 15:39:38'),(11,'16207223852571338',4,16496,1,1,'2022-05-11 16:41:27',1,'','','','黑龙江省牡丹江市牡丹江村',0,'2022-05-11 16:39:45','2022-05-11 16:41:27'),(12,'16576835280466897',5,1246,1,2,'2022-07-13 03:39:00',1,'','','','广东省广州市白云区轴轱辘村',0,'2022-07-13 11:38:48','2022-07-13 03:39:00'),(13,'16577125311404695',5,8499,1,2,'2022-07-13 11:45:45',1,'','','','广东省广州市白云区轴轱辘村',0,'2022-07-13 19:42:11','2022-07-13 11:45:45'),(14,'16577279664575046',5,65,1,2,'2022-07-13 15:59:56',1,'','','','广东省广州市白云区轴轱辘村',0,'2022-07-13 23:59:26','2022-07-13 15:59:56'),(15,'16577306460985255',5,5399,1,2,'2022-07-13 16:44:17',1,'','','','广东省广州市白云区轴轱辘村',0,'2022-07-14 00:44:06','2022-07-13 16:44:17'),(16,'16577314101888429',5,5999,0,0,NULL,0,'','','','广东省广州市白云区轴轱辘村',0,'2022-07-14 00:56:50','2022-07-14 00:56:50'),(17,'16577319464416675',5,1246,1,1,'2022-07-13 17:06:27',2,'','','','广东省广州市白云区轴轱辘村',0,'2022-07-14 01:05:46','2022-07-14 01:11:23'),(18,'16577817388051383',7,85,1,2,'2022-07-14 06:55:55',3,'','','','广东省广州市白云区轴轱辘村',0,'2022-07-14 14:55:38','2022-07-14 14:59:14');
/*!40000 ALTER TABLE `tb_order` ENABLE KEYS */;
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
