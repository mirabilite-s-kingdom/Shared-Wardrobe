CREATE DATABASE  IF NOT EXISTS `shared_wardrobe` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `shared_wardrobe`;
-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: shared_wardrobe
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add manager',6,'add_manager'),(22,'Can change manager',6,'change_manager'),(23,'Can delete manager',6,'delete_manager'),(24,'Can view manager',6,'view_manager'),(25,'Can add usersinfo',7,'add_usersinfo'),(26,'Can change usersinfo',7,'change_usersinfo'),(27,'Can delete usersinfo',7,'delete_usersinfo'),(28,'Can view usersinfo',7,'view_usersinfo'),(29,'Can add session',8,'add_session'),(30,'Can change session',8,'change_session'),(31,'Can delete session',8,'delete_session'),(32,'Can view session',8,'view_session'),(33,'Can add category',9,'add_category'),(34,'Can change category',9,'change_category'),(35,'Can delete category',9,'delete_category'),(36,'Can view category',9,'view_category'),(37,'Can add goods',10,'add_goods'),(38,'Can change goods',10,'change_goods'),(39,'Can delete goods',10,'delete_goods'),(40,'Can view goods',10,'view_goods'),(41,'Can add shopcart',11,'add_shopcart'),(42,'Can change shopcart',11,'change_shopcart'),(43,'Can delete shopcart',11,'delete_shopcart'),(44,'Can view shopcart',11,'view_shopcart'),(45,'Can add orderinfo',12,'add_orderinfo'),(46,'Can change orderinfo',12,'change_orderinfo'),(47,'Can delete orderinfo',12,'delete_orderinfo'),(48,'Can view orderinfo',12,'view_orderinfo'),(49,'Can add interfacemanagement',13,'add_interfacemanagement'),(50,'Can change interfacemanagement',13,'change_interfacemanagement'),(51,'Can delete interfacemanagement',13,'delete_interfacemanagement'),(52,'Can view interfacemanagement',13,'view_interfacemanagement'),(53,'Can add customerservice',14,'add_customerservice'),(54,'Can change customerservice',14,'change_customerservice'),(55,'Can delete customerservice',14,'delete_customerservice'),(56,'Can view customerservice',14,'view_customerservice'),(57,'Can add goodsbelong',15,'add_goodsbelong'),(58,'Can change goodsbelong',15,'change_goodsbelong'),(59,'Can delete goodsbelong',15,'delete_goodsbelong'),(60,'Can view goodsbelong',15,'view_goodsbelong');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(150) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `businesssuit`
--

DROP TABLE IF EXISTS `businesssuit`;
/*!50001 DROP VIEW IF EXISTS `businesssuit`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `businesssuit` AS SELECT 
 1 AS `goods_name`,
 1 AS `price`,
 1 AS `pic_address`,
 1 AS `goods_desc`,
 1 AS `onsale_count`,
 1 AS `cate_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `cate_id` char(1) COLLATE utf8_bin NOT NULL,
  `cate_name` varchar(8) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`cate_id`),
  CONSTRAINT `category_chk_1` CHECK ((`cate_id` in (_utf8mb4'1',_utf8mb4'2',_utf8mb4'3',_utf8mb4'4')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('1','正装'),('2','婚纱'),('3','高端品牌'),('4','快时尚品牌');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customerservice`
--

DROP TABLE IF EXISTS `customerservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customerservice` (
  `user_id` int NOT NULL,
  `manager_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`manager_id`),
  KEY `manager_id` (`manager_id`),
  CONSTRAINT `customerservice_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usersinfo` (`user_id`),
  CONSTRAINT `customerservice_ibfk_2` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customerservice`
--

LOCK TABLES `customerservice` WRITE;
/*!40000 ALTER TABLE `customerservice` DISABLE KEYS */;
/*!40000 ALTER TABLE `customerservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(9,'information','category'),(14,'information','customerservice'),(10,'information','goods'),(15,'information','goodsbelong'),(13,'information','interfacemanagement'),(12,'information','orderinfo'),(11,'information','shopcart'),(6,'login','manager'),(7,'login','usersinfo'),(8,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-10-12 13:23:22.701294'),(2,'auth','0001_initial','2021-10-12 13:23:23.796346'),(3,'admin','0001_initial','2021-10-12 13:23:24.057903'),(4,'admin','0002_logentry_remove_auto_add','2021-10-12 13:23:24.079909'),(5,'admin','0003_logentry_add_action_flag_choices','2021-10-12 13:23:24.099912'),(6,'contenttypes','0002_remove_content_type_name','2021-10-12 13:23:24.376393'),(7,'auth','0002_alter_permission_name_max_length','2021-10-12 13:23:24.538364'),(8,'auth','0003_alter_user_email_max_length','2021-10-12 13:23:24.664904'),(9,'auth','0004_alter_user_username_opts','2021-10-12 13:23:24.684909'),(10,'auth','0005_alter_user_last_login_null','2021-10-12 13:23:24.788932'),(11,'auth','0006_require_contenttypes_0002','2021-10-12 13:23:24.797937'),(12,'auth','0007_alter_validators_add_error_messages','2021-10-12 13:23:24.819939'),(13,'auth','0008_alter_user_username_max_length','2021-10-12 13:23:24.946967'),(14,'auth','0009_alter_user_last_name_max_length','2021-10-12 13:23:25.066012'),(15,'auth','0010_alter_group_name_max_length','2021-10-12 13:23:25.173036'),(16,'auth','0011_update_proxy_permissions','2021-10-12 13:23:25.194023'),(17,'auth','0012_alter_user_first_name_max_length','2021-10-12 13:23:25.461800'),(18,'login','0001_initial','2021-10-12 13:27:26.386314'),(19,'information','0001_initial','2021-10-12 13:27:50.934402'),(20,'sessions','0001_initial','2021-10-12 13:27:50.944403');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `fastfashion`
--

DROP TABLE IF EXISTS `fastfashion`;
/*!50001 DROP VIEW IF EXISTS `fastfashion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fastfashion` AS SELECT 
 1 AS `goods_name`,
 1 AS `price`,
 1 AS `pic_address`,
 1 AS `goods_desc`,
 1 AS `onsale_count`,
 1 AS `cate_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods` (
  `goods_id` char(9) COLLATE utf8_bin NOT NULL,
  `goods_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `pic_address` varchar(100) COLLATE utf8_bin NOT NULL,
  `goods_desc` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `onsale_count` int DEFAULT NULL,
  `clear_count` int DEFAULT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES ('100000000','罗素 小西服套装，新款正装女式商务面试工作制服',498.00,'//img11.360buyimg.com/n7/jfs/t1/185484/30/17533/110111/610a5e82E22203b44/901cb879665d77aa.jpg','此仅为支付测试商品 拍下不会发货',52,47),('100000001','金蒂情 2021年新款长袖正装女高档职业装女装套装小西装工作服气质工装修身面试女裤西服套装',268.00,'//img11.360buyimg.com/n7/jfs/t1/128350/12/18276/202047/5fabed54E3e10a706/ca723ce468e4f73b.jpg','此仅为支付测试商品 拍下不会发货',43,29),('100000002','名流都会职业装，装套装长袖小西装女士，衣服偏小半码',188.00,'//img12.360buyimg.com/n7/jfs/t1/127943/26/18206/117931/5fac1fa6Eab7146cc/0140e2d29358389a.jpg','此仅为支付测试商品 拍下不会发货',25,34),('100000003','佐马仕 短袖衬衫女白色衬衣女士商务休闲修身显瘦职业装',69.00,'//img12.360buyimg.com/n7/jfs/t1/113830/26/4617/308994/5eaed1eaE72e55179/f861eecaae744108.jpg','此仅为支付测试商品 拍下不会发货',53,22),('100000004','J-ME秋装职业套女装套装衬衫女时尚套裙气质小西装外套面试商务正装物业售楼部',308.00,'//img10.360buyimg.com/n7/jfs/t1/190101/16/21479/43982/6131c9d0Eee1d2f06/8cc52249619f4e40.jpg','此仅为支付测试商品 拍下不会发货',45,12),('100000005','小西装女埠陡寸2021秋装新品百搭宽松遮肚子显瘦气质时尚减龄两件单排扣格子',168.00,'//img14.360buyimg.com/n7/jfs/t1/196762/37/18281/134466/6116aa32Eaaeb3bbb/c3bd8f49705dd7fe.jpg','此仅为支付测试商品 拍下不会发货',32,15),('100000006','凯恋 KAILIAN长袖西装大学生面试商务正装女套装时尚西装工作服女气质修身',219.00,'//img12.360buyimg.com/n7/jfs/t1/162944/13/12743/79127/6049ad47E0a63d2ea/2555f27644b83ed9.jpg','此仅为支付测试商品 拍下不会发货',67,47),('200000000','BSHNZH 香港潮牌一字肩主婚纱2021新款新娘法式森系星空大拖尾仙梦幻小个子 ',1699.00,'//img13.360buyimg.com/n7/jfs/t1/138839/16/22716/152842/61505928Eb47b8143/9c843e56953fba60.jpg','此仅为支付测试商品 拍下不会发货',10,5),('200000001','红妆饰佳 一字肩婚纱2021新款新娘气质齐地主纱遮粗手臂拖尾婚纱礼服公主风',598.00,'//img14.360buyimg.com/n7/jfs/t1/147431/18/19996/138330/60b1ca48Ed911317b/e0391b1964bbc6dc.jpg','此仅为支付测试商品 拍下不会发货',20,7),('200000002','范戈堡2021秋冬新款2021新款主婚纱礼服星空梦幻气质新娘法式赫本小个子轻奢华',533.00,'//img14.360buyimg.com/n7/jfs/t1/149115/11/11229/315389/5f8c8ce6E216660bf/7927c33909d1a50a.jpg','此仅为支付测试商品 拍下不会发货',23,9),('200000003','FuNai 馥奈 宫廷立领主纱女2021新款新娘婚纱礼服气质森系超仙大拖尾梦幻奢华',3926.00,'//img10.360buyimg.com/n7/jfs/t1/148476/4/20247/157117/60a781aeE0eb7d643/0eada70c58bef62b.jpg','此仅为支付测试商品 拍下不会发货',14,9),('200000004','衣莜季 品牌女装复古主婚纱新娘2021新款法式轻简约赫本风拖尾出门纱小个子缎面礼服',2958.00,'//img12.360buyimg.com/n7/jfs/t1/204537/12/2741/110107/6124c2ebEc1e62065/7c2ec9540e3e73df.jpg','此仅为支付测试商品 拍下不会发货',23,5),('200000005','枝己（ZEIMSSMM）秀禾服新娘2021新款中式婚纱结婚礼服古装旗袍龙凤褂婚礼服',368.00,'//img10.360buyimg.com/n7/jfs/t1/139666/40/10952/209188/5f894bfdEe47edd8d/08b2172cac601745.jpg','此仅为支付测试商品 拍下不会发货',25,34),('200000006','Lcxmnd轻奢高端星空孕妇一字肩主婚纱2021新款气质新娘法式重工宫廷风拖尾',1828.00,'//img14.360buyimg.com/n7/jfs/t1/203201/30/2418/150440/61209264Eedd66f93/77b4acf61d6bdea3.jpg','此仅为支付测试商品 拍下不会发货',12,4),('300000000','ELLASSAY歌力思商场同款女装2021夏季印花V领长袖荷叶边修身衬衫 红粉混搭 M',899.00,'//img12.360buyimg.com/n7/jfs/t1/202296/39/9426/229123/615b3527E97cf556b/69d27499b00c3b75.jpg','此仅为支付测试商品 拍下不会发货',23,56),('300000001','【商场同款】哈吉斯HAZZYS 秋季新款连衣裙女经典超大格纹衬衫连衣裙米色BI 165/88A 40',1942.00,'//img14.360buyimg.com/n7/jfs/t1/95781/19/18080/148055/6155e9e7E4691f294/919b464a4b25e0f0.jpg','此仅为支付测试商品 拍下不会发货',36,37),('300000002','恩裳蔻2021夏季新款时尚绣花泡泡袖v领法式收腰气质连衣裙薄款 白色 40/L',1291.00,'//img12.360buyimg.com/n7/jfs/t1/211630/39/3454/145208/615ab3b3Ebee05bb9/c58176b523002b87.jpg','此仅为支付测试商品 拍下不会发货',87,23),('300000003','FINITY2021年夏装新款舒适宽松系带连衣裙女显瘦设计感中长款裙子 藏青色 M',998.00,'//img11.360buyimg.com/n7/jfs/t1/206649/7/3321/149074/6157bd0bEfda2e4ef/4388ccb8eecdb839.jpg','此仅为支付测试商品 拍下不会发货',80,26),('300000004','ELLASSAY歌力思女装2021秋季高腰蛋糕型舒适气质半身裙 经典黑 S',1999.00,'//img13.360buyimg.com/n7/jfs/t1/197836/12/11481/205429/615b3c64E6c2813ea/92a78ff74e79f3fe.jpg','此仅为支付测试商品 拍下不会发货',89,23),('300000005','ELLASSAY歌力思女装2021秋季新款修身气质印花半身裙 黑花卉 L',1349.00,'//img11.360buyimg.com/n7/jfs/t1/200219/20/11465/285050/615b3c63E10913e80/b40ab2543eaabca2.jpg','此仅为支付测试商品 拍下不会发货',68,90),('300000006','花儿开了2021夏新款法式复古波点雪纺连衣裙女气质公主裙显瘦短裙 杏底红波点 S',1209.00,'//img11.360buyimg.com/n7/jfs/t1/207979/16/3101/251965/61573ea6Eea00cf17/5883d0e14888b9ff.jpg','此仅为支付测试商品 拍下不会发货',69,23),('300000007','周洁琼明星同款 jessyline2021夏装专柜款 杰茜莱上衣半身裙套装女  牛仔兰 M',1161.00,'//img12.360buyimg.com/n7/jfs/t1/210917/12/3112/300106/6157514fEbb60fbb7/d0c701bd94fd2cc6.jpg','此仅为支付测试商品 拍下不会发货',59,24),('300000008','【宋雨琦同款】莱茵LIME FLARE夏季复古气质西装连衣裙2021新款显瘦温柔小个子收腰短裙',1612.00,'//img10.360buyimg.com/n7/jfs/t1/137955/16/25927/175680/6155f5bcEebbdaa55/c570b4aa93d9aa2e.jpg','此仅为支付测试商品 拍下不会发货',89,45),('300000009','【商场同款】鹿王连衣裙女真丝乔其旗袍长裙印花高腰修身显瘦春夏新款 乔其黑底大花',1590.00,'//img10.360buyimg.com/n7/jfs/t1/148459/1/19733/162248/61573437Eae899520/8e07878a597dc632.jpg','此仅为支付测试商品 拍下不会发货',15,54),('400000000','【ONLY金秋焕新衣】夏季新款乐一通联名款宽松兔八哥布偶T恤女|121301026 A43 奶油白色',195.44,'//img12.360buyimg.com/n7/jfs/t1/147839/9/19987/185678/61597d62E2c62a7c6/2e42f6d44d5bd84b.jpg','此仅为支付测试商品 拍下不会发货',462,234),('400000001','Amii极简通勤气质不对称V领短袖雪纺衫2021春秋秋季新款宽松上衣女 灰蓝 160/84A/M',162.90,'//img11.360buyimg.com/n7/jfs/t1/204464/33/9395/132492/6159f042Ed26b3ecf/4423bb529b7fa231.jpg','此仅为支付测试商品 拍下不会发货',1324,56),('400000002','范思蓝恩蕾丝花边衬衫女2021年夏薄款法式短袖气质上衣设计感小众211560 浅杏色 M',199.00,'//img11.360buyimg.com/n7/jfs/t1/209263/35/3461/156893/6159f961E7abc8e00/41038951584a7205.jpg','此仅为支付测试商品 拍下不会发货',213,103),('400000003','Donoratico/达衣岩夏装2021年夏T恤（寻找兔子先生）',639.00,'//img13.360buyimg.com/n7/jfs/t1/165375/7/25892/261411/6157bcb6Ed1c27adb/75464fa55b5b7676.jpg','此仅为支付测试商品 拍下不会发货',413,462),('400000004','COCOBELLA复古宫廷风压褶衬衫女秋气质OL喇叭袖打揽上衣HT516 L',299.00,'//img12.360buyimg.com/n7/jfs/t1/107345/8/16065/158103/6159efdfE0c1cc97b/4f408e40d9d99bdd.jpg','此仅为支付测试商品 拍下不会发货',563,231),('400000005','ONLY2021夏季新款迪士尼史迪奇联名款宽松百搭T恤女|121201278 S12 亮奶油白色',156.24,'//img11.360buyimg.com/n7/jfs/t1/207180/39/3459/190632/61597d50E5007bdc1/326083dc92be4ebe.jpg','此仅为支付测试商品 拍下不会发货',154,235),('400000006','拓谷潮牌字母印花短袖T恤女夏季2021新款设计感网红修身打底上衣女 黑色 M',268.00,'//img12.360buyimg.com/n7/jfs/t1/184490/17/4080/115237/609f6b14E1a2889f3/dfefb7b5ca8d42f8.jpg','此仅为支付测试商品 拍下不会发货',453,782),('400000007','OtherMix贴布印花衬衫女2021年夏季新款韩版时尚polo领短袖上衣潮 晴空蓝 M',199.00,'//img12.360buyimg.com/n7/jfs/t1/181550/28/5314/242808/60a867b2Ee97157c3/21ff4cd929ab19c8.jpg','此仅为支付测试商品 拍下不会发货',264,563),('400000008','独束大码女装复古双排扣连衣裙女2021夏季新款胖mm设计感显瘦西装裙 蓝色 XL',259.00,'//img12.360buyimg.com/n7/jfs/t1/108534/28/19691/164341/61533d7aE64b3dfc8/5d400e3ccbf33002.jpg','此仅为支付测试商品 拍下不会发货',146,100),('400000009','【商场同款】糖力2021夏季新款短袖复古方领仿钻腰带收腰连衣裙女 薄雾蓝色 S',379.00,'//img10.360buyimg.com/n7/jfs/t1/202539/5/9035/151859/6155f9a2E9db863aa/f06bf24edaa51fdf.jpg','此仅为支付测试商品 拍下不会发货',320,206);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goodsbelong`
--

DROP TABLE IF EXISTS `goodsbelong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goodsbelong` (
  `goods_id` char(9) COLLATE utf8_bin NOT NULL,
  `cate_id` char(9) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`goods_id`,`cate_id`),
  KEY `cate_id` (`cate_id`),
  CONSTRAINT `goodsbelong_ibfk_1` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`),
  CONSTRAINT `goodsbelong_ibfk_2` FOREIGN KEY (`cate_id`) REFERENCES `category` (`cate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goodsbelong`
--

LOCK TABLES `goodsbelong` WRITE;
/*!40000 ALTER TABLE `goodsbelong` DISABLE KEYS */;
INSERT INTO `goodsbelong` VALUES ('100000000','1'),('100000001','1'),('100000002','1'),('100000003','1'),('100000004','1'),('100000005','1'),('100000006','1'),('200000000','2'),('200000001','2'),('200000002','2'),('200000003','2'),('200000004','2'),('200000005','2'),('200000006','2'),('300000000','3'),('300000001','3'),('300000002','3'),('300000003','3'),('300000004','3'),('300000005','3'),('300000006','3'),('300000007','3'),('300000008','3'),('300000009','3'),('400000000','4'),('400000001','4'),('400000002','4'),('400000003','4'),('400000004','4'),('400000005','4'),('400000006','4'),('400000007','4'),('400000008','4'),('400000009','4');
/*!40000 ALTER TABLE `goodsbelong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `highend`
--

DROP TABLE IF EXISTS `highend`;
/*!50001 DROP VIEW IF EXISTS `highend`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `highend` AS SELECT 
 1 AS `goods_name`,
 1 AS `price`,
 1 AS `pic_address`,
 1 AS `goods_desc`,
 1 AS `onsale_count`,
 1 AS `cate_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `interfacemanagement`
--

DROP TABLE IF EXISTS `interfacemanagement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `interfacemanagement` (
  `manager_id` int NOT NULL,
  `goods_id` char(9) COLLATE utf8_bin NOT NULL,
  `OperateType` char(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`manager_id`,`goods_id`),
  KEY `goods_id` (`goods_id`),
  CONSTRAINT `interfacemanagement_ibfk_1` FOREIGN KEY (`manager_id`) REFERENCES `manager` (`manager_id`),
  CONSTRAINT `interfacemanagement_ibfk_2` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`),
  CONSTRAINT `interfacemanagement_chk_1` CHECK ((`OperateType` in (_utf8mb4'0',_utf8mb4'1')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interfacemanagement`
--

LOCK TABLES `interfacemanagement` WRITE;
/*!40000 ALTER TABLE `interfacemanagement` DISABLE KEYS */;
/*!40000 ALTER TABLE `interfacemanagement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manager`
--

DROP TABLE IF EXISTS `manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manager` (
  `manager_id` int NOT NULL AUTO_INCREMENT,
  `manager_name` varchar(8) COLLATE utf8_bin NOT NULL,
  `manager_passwd` varchar(20) COLLATE utf8_bin NOT NULL,
  `privilege` varchar(1) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`manager_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manager`
--

LOCK TABLES `manager` WRITE;
/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderinfo`
--

DROP TABLE IF EXISTS `orderinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderinfo` (
  `user_id` int NOT NULL,
  `goods_id` char(9) COLLATE utf8_bin NOT NULL,
  `purc_count` int DEFAULT NULL,
  `order_state` int DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `audit_manager_id1` char(9) COLLATE utf8_bin DEFAULT NULL,
  `audit_manager_id2` char(9) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`user_id`,`goods_id`),
  KEY `goods_id` (`goods_id`),
  CONSTRAINT `orderinfo_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usersinfo` (`user_id`),
  CONSTRAINT `orderinfo_ibfk_2` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`),
  CONSTRAINT `orderinfo_chk_1` CHECK (((`purc_count` > 0) and (`purc_count` <= 5))),
  CONSTRAINT `orderinfo_chk_2` CHECK (((`order_state` >= 0) and (`order_state` < 9)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderinfo`
--

LOCK TABLES `orderinfo` WRITE;
/*!40000 ALTER TABLE `orderinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shopcart`
--

DROP TABLE IF EXISTS `shopcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopcart` (
  `user_id` int NOT NULL,
  `goods_id` char(9) COLLATE utf8_bin NOT NULL,
  `goods_num` int DEFAULT NULL,
  PRIMARY KEY (`user_id`,`goods_id`),
  KEY `goods_id` (`goods_id`),
  CONSTRAINT `shopcart_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `usersinfo` (`user_id`),
  CONSTRAINT `shopcart_ibfk_2` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`goods_id`),
  CONSTRAINT `shopcart_chk_1` CHECK (((`goods_num` > 0) and (`goods_num` <= 5)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shopcart`
--

LOCK TABLES `shopcart` WRITE;
/*!40000 ALTER TABLE `shopcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shopcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersinfo`
--

DROP TABLE IF EXISTS `usersinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usersinfo` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(8) COLLATE utf8_bin NOT NULL,
  `user_passwd` varchar(20) COLLATE utf8_bin NOT NULL,
  `tel` varchar(11) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `address` longtext COLLATE utf8_bin,
  `credit_star` int DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersinfo`
--

LOCK TABLES `usersinfo` WRITE;
/*!40000 ALTER TABLE `usersinfo` DISABLE KEYS */;
INSERT INTO `usersinfo` VALUES (1,'1','1234','13803085097','1162617491@qq.com','安徽大学磬苑校区',5);
/*!40000 ALTER TABLE `usersinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `wedding`
--

DROP TABLE IF EXISTS `wedding`;
/*!50001 DROP VIEW IF EXISTS `wedding`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `wedding` AS SELECT 
 1 AS `goods_name`,
 1 AS `price`,
 1 AS `pic_address`,
 1 AS `goods_desc`,
 1 AS `onsale_count`,
 1 AS `cate_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `businesssuit`
--

/*!50001 DROP VIEW IF EXISTS `businesssuit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `businesssuit` AS select `g`.`goods_name` AS `goods_name`,`g`.`price` AS `price`,`g`.`pic_address` AS `pic_address`,`g`.`goods_desc` AS `goods_desc`,`g`.`onsale_count` AS `onsale_count`,`c`.`cate_name` AS `cate_name` from ((`goods` `g` join `goodsbelong` `gb` on((`g`.`goods_id` = `gb`.`goods_id`))) join `category` `c` on((`c`.`cate_id` = `gb`.`cate_id`))) where (`c`.`cate_name` = '正装') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `fastfashion`
--

/*!50001 DROP VIEW IF EXISTS `fastfashion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fastfashion` AS select `g`.`goods_name` AS `goods_name`,`g`.`price` AS `price`,`g`.`pic_address` AS `pic_address`,`g`.`goods_desc` AS `goods_desc`,`g`.`onsale_count` AS `onsale_count`,`c`.`cate_name` AS `cate_name` from ((`goods` `g` join `goodsbelong` `gb` on((`g`.`goods_id` = `gb`.`goods_id`))) join `category` `c` on((`c`.`cate_id` = `gb`.`cate_id`))) where (`c`.`cate_name` = '快时尚品牌') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `highend`
--

/*!50001 DROP VIEW IF EXISTS `highend`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `highend` AS select `g`.`goods_name` AS `goods_name`,`g`.`price` AS `price`,`g`.`pic_address` AS `pic_address`,`g`.`goods_desc` AS `goods_desc`,`g`.`onsale_count` AS `onsale_count`,`c`.`cate_name` AS `cate_name` from ((`goods` `g` join `goodsbelong` `gb` on((`g`.`goods_id` = `gb`.`goods_id`))) join `category` `c` on((`c`.`cate_id` = `gb`.`cate_id`))) where (`c`.`cate_name` = '高端品牌') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `wedding`
--

/*!50001 DROP VIEW IF EXISTS `wedding`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_unicode_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `wedding` AS select `g`.`goods_name` AS `goods_name`,`g`.`price` AS `price`,`g`.`pic_address` AS `pic_address`,`g`.`goods_desc` AS `goods_desc`,`g`.`onsale_count` AS `onsale_count`,`c`.`cate_name` AS `cate_name` from ((`goods` `g` join `goodsbelong` `gb` on((`g`.`goods_id` = `gb`.`goods_id`))) join `category` `c` on((`c`.`cate_id` = `gb`.`cate_id`))) where (`c`.`cate_name` = '婚纱') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-12 23:58:04
