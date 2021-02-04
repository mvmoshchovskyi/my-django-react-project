-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: my_app_django_react
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts_useraccount`
--

DROP TABLE IF EXISTS `accounts_useraccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_useraccount` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_useraccount`
--

LOCK TABLES `accounts_useraccount` WRITE;
/*!40000 ALTER TABLE `accounts_useraccount` DISABLE KEYS */;
INSERT INTO `accounts_useraccount` VALUES (2,'pbkdf2_sha256$216000$Dz4b20OWcRtr$3VSogmr+hgAYidR0uoqPQZGVyvAKwwFs+0whDJESU8c=','2021-01-26 13:40:12.346581',1,'admin@gmail.com','admin',1,1),(3,'pbkdf2_sha256$216000$dL9rge6XXUMq$BdSIEPoLJPZXWpE9HFo36gu6oGtlvf4Tg5FQsrOy7R0=',NULL,0,'vovanchyk@gmail.com','vovanchyk',1,0),(27,'pbkdf2_sha256$216000$ma5WCBqZNXY2$NFhVJDbnhIqTmjDtPy1xjJYLkwrZjp0utW3e9Vi1z2Q=',NULL,0,'mvmoshchovskyi@gmail.com','Mykhailo Moshchovskyi',1,0),(28,'pbkdf2_sha256$216000$HLQ8skbWfyzf$JYP8c1MQvHHjpw5+JPtqVhbtXZzpdXF4VmrY4/u19aY=',NULL,0,'tmvmoshchovskyi@gmail.com','Mykhailo Moshchovskyi',1,0),(29,'pbkdf2_sha256$216000$clhC9HWTz5Z6$TEzxwBIZjaqK+xgJhu2KBO8oQwJ3F+sDE56AKPljglM=',NULL,0,'madmin@gmail.com','Mykhailo',1,0);
/*!40000 ALTER TABLE `accounts_useraccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_useraccount_groups`
--

DROP TABLE IF EXISTS `accounts_useraccount_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_useraccount_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `useraccount_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_useraccount_gro_useraccount_id_group_id_9e1772b3_uniq` (`useraccount_id`,`group_id`),
  KEY `accounts_useraccount_groups_group_id_07495d90_fk_auth_group_id` (`group_id`),
  CONSTRAINT `accounts_useraccount_groups_group_id_07495d90_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `accounts_useraccount_useraccount_id_1eefb17f_fk_accounts_` FOREIGN KEY (`useraccount_id`) REFERENCES `accounts_useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_useraccount_groups`
--

LOCK TABLES `accounts_useraccount_groups` WRITE;
/*!40000 ALTER TABLE `accounts_useraccount_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_useraccount_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accounts_useraccount_user_permissions`
--

DROP TABLE IF EXISTS `accounts_useraccount_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts_useraccount_user_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `useraccount_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_useraccount_use_useraccount_id_permissio_54014a73_uniq` (`useraccount_id`,`permission_id`),
  KEY `accounts_useraccount_permission_id_5751e5ed_fk_auth_perm` (`permission_id`),
  CONSTRAINT `accounts_useraccount_permission_id_5751e5ed_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `accounts_useraccount_useraccount_id_9ee22c82_fk_accounts_` FOREIGN KEY (`useraccount_id`) REFERENCES `accounts_useraccount` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts_useraccount_user_permissions`
--

LOCK TABLES `accounts_useraccount_user_permissions` WRITE;
/*!40000 ALTER TABLE `accounts_useraccount_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `accounts_useraccount_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user account',6,'add_useraccount'),(22,'Can change user account',6,'change_useraccount'),(23,'Can delete user account',6,'delete_useraccount'),(24,'Can view user account',6,'view_useraccount'),(25,'Can add products model',7,'add_productsmodel'),(26,'Can change products model',7,'change_productsmodel'),(27,'Can delete products model',7,'delete_productsmodel'),(28,'Can view products model',7,'view_productsmodel'),(29,'Can add Order',8,'add_ordermodel'),(30,'Can change Order',8,'change_ordermodel'),(31,'Can delete Order',8,'delete_ordermodel'),(32,'Can view Order',8,'view_ordermodel'),(33,'Can add order item model',9,'add_orderitemmodel'),(34,'Can change order item model',9,'change_orderitemmodel'),(35,'Can delete order item model',9,'delete_orderitemmodel'),(36,'Can view order item model',9,'view_orderitemmodel'),(37,'Can add order items model',10,'add_orderitemsmodel'),(38,'Can change order items model',10,'change_orderitemsmodel'),(39,'Can delete order items model',10,'delete_orderitemsmodel'),(40,'Can view order items model',10,'view_orderitemsmodel'),(41,'Can add shipping address model',11,'add_shippingaddressmodel'),(42,'Can change shipping address model',11,'change_shippingaddressmodel'),(43,'Can delete shipping address model',11,'delete_shippingaddressmodel'),(44,'Can view shipping address model',11,'view_shippingaddressmodel'),(45,'Can add cart items model',12,'add_cartitemsmodel'),(46,'Can change cart items model',12,'change_cartitemsmodel'),(47,'Can delete cart items model',12,'delete_cartitemsmodel'),(48,'Can view cart items model',12,'view_cartitemsmodel'),(49,'Can add order model',13,'add_ordermodel'),(50,'Can change order model',13,'change_ordermodel'),(51,'Can delete order model',13,'delete_ordermodel'),(52,'Can view order model',13,'view_ordermodel'),(53,'Can add shipping address model',14,'add_shippingaddressmodel'),(54,'Can change shipping address model',14,'change_shippingaddressmodel'),(55,'Can delete shipping address model',14,'delete_shippingaddressmodel'),(56,'Can view shipping address model',14,'view_shippingaddressmodel');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `qty` int NOT NULL,
  `image` varchar(250) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_items_product_id_9398bb89_fk_products_id` (`product_id`),
  CONSTRAINT `cart_items_product_id_9398bb89_fk_products_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
INSERT INTO `cart_items` VALUES (1,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(38,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(39,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(40,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(41,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(42,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(43,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(44,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(45,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(46,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(47,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(48,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(49,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(50,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(51,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(52,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(53,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(54,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(55,'Adidas Fit Shirt',2,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(56,'Puma Slim Pant\'',1,'http://localhost:8000/media/images/2020/12/26/p5.jpg',65.00,5),(57,'Adidas Fit Pant',2,'http://localhost:8000/media/images/2020/12/26/p6.jpg',139.00,6),(58,'Nike Slim Pant',2,'http://localhost:8000/media/images/2020/12/26/p4.jpg',78.00,4),(59,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(60,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(61,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(62,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(63,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(64,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(65,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(66,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(67,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(68,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(69,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(70,'Nike Slim Pant',1,'http://localhost:8000/media/images/2020/12/26/p4.jpg',78.00,4),(71,'Nike Slim Pant',1,'http://localhost:8000/media/images/2020/12/26/p4.jpg',78.00,4),(72,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(73,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(74,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(75,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(76,'Nike Slim Pant',1,'http://localhost:8000/media/images/2020/12/26/p4.jpg',78.00,4),(77,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(78,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(79,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(80,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(81,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(82,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(83,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(84,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(85,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(86,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(87,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(88,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(89,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(90,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(91,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(92,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(93,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(94,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(95,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(96,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(97,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(98,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(99,'Adidas Fit Pant',1,'http://localhost:8000/media/images/2020/12/26/p6.jpg',139.00,6),(100,'Nike Slim Pant',1,'http://localhost:8000/media/images/2020/12/26/p4.jpg',78.00,4),(101,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(102,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(103,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(104,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(105,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(106,'Adidas Fit Pant',1,'http://localhost:8000/media/images/2020/12/26/p6.jpg',139.00,6),(107,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(108,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(109,'Nike Slim Shirt',5,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(110,'Dior Midi sundress',2,'http://localhost:8000/media/images/2021/01/30/dress1.jpg',129.90,7),(111,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(112,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(113,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(114,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(115,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(116,'Gucci Dress in pink',1,'http://localhost:8000/media/images/2021/01/30/dress3.jpg',14.90,9),(117,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(118,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(119,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(120,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(121,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(122,'Chanel Dress in yellow polka dot',2,'http://localhost:8000/media/images/2021/01/30/dress5.jpg',110.90,11),(123,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(124,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(125,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(126,'Chanel Dress in yellow polka dot',1,'http://localhost:8000/media/images/2021/01/30/dress5.jpg',110.90,11),(127,'Dior Dress in polka dot',2,'http://localhost:8000/media/images/2021/01/30/dress4.jpg',125.90,10),(128,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(129,'Dior Midi sundress',3,'http://localhost:8000/media/images/2021/01/30/dress1.jpg',129.90,7),(130,'Adidas Fit Shirt',1,'http://localhost:8000/media/images/2020/12/26/p2.jpg',100.00,2),(131,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1),(132,'Nike Slim Shirt',1,'http://localhost:8000/media/images/2020/12/26/p1.jpg',120.00,1);
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
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
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_accounts_useraccount_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_useraccount_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_useraccount` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-12-26 16:21:50.581340','1','Nike Slim Shirt',1,'[{\"added\": {}}]',7,2),(2,'2020-12-26 16:22:58.034744','2','Adidas Fit Shirt',1,'[{\"added\": {}}]',7,2),(3,'2020-12-26 16:24:42.512981','3','Lacoste Free Shirt',1,'[{\"added\": {}}]',7,2),(4,'2020-12-26 16:26:35.788210','4','Nike Slim Pant',1,'[{\"added\": {}}]',7,2),(5,'2020-12-26 16:27:29.677935','5','Puma Slim Pant\'',1,'[{\"added\": {}}]',7,2),(6,'2020-12-26 16:28:26.736149','6','Adidas Fit Pant',1,'[{\"added\": {}}]',7,2),(7,'2021-01-10 11:14:59.378164','1','Order 1',1,'[{\"added\": {}}, {\"added\": {\"name\": \"order item model\", \"object\": \"OrderItemModel object (1)\"}}, {\"added\": {\"name\": \"order item model\", \"object\": \"OrderItemModel object (2)\"}}]',8,2),(8,'2021-01-12 18:01:19.556719','1','ShippingAddressModel object (1)',1,'[{\"added\": {}}]',14,2),(9,'2021-01-12 18:03:39.320667','1','CartItemsModel object (1)',1,'[{\"added\": {}}]',12,2),(10,'2021-01-12 18:12:45.730290','1','OrderModel object (1)',1,'[{\"added\": {}}]',13,2),(11,'2021-01-12 18:14:04.244825','1','CartItemsModel object (1)',2,'[{\"changed\": {\"fields\": [\"Image\"]}}]',12,2),(12,'2021-01-14 10:36:40.881694','1','OrderModel object (1)',3,'',13,2),(13,'2021-01-14 10:38:03.133417','1','mvmoshchovskyi@gmail.com',3,'',6,2),(14,'2021-01-14 10:38:12.610166','16','moshchovskyi@gmail.com',3,'',6,2),(15,'2021-01-14 14:58:09.327852','2','ShippingAddressModel object (2)',1,'[{\"added\": {}}]',14,2),(16,'2021-01-14 14:58:30.865245','2','ShippingAddressModel object (2)',3,'',14,2),(17,'2021-01-14 14:59:02.477924','2','OrderModel object (2)',1,'[{\"added\": {}}]',13,2),(18,'2021-01-14 15:32:19.898980','3','ShippingAddressModel object (3)',1,'[{\"added\": {}}]',14,2),(19,'2021-01-14 17:29:00.176577','6','OrderModel object (6)',1,'[{\"added\": {}}]',13,2),(20,'2021-01-30 19:45:36.118601','7','Dior Midi sundress',1,'[{\"added\": {}}]',7,2),(21,'2021-01-30 19:48:18.898408','8','Chanel Sundress with ruched front',1,'[{\"added\": {}}]',7,2),(22,'2021-01-30 19:50:03.266349','9','Gucci Dress in pink',1,'[{\"added\": {}}]',7,2),(23,'2021-01-30 19:51:47.322314','10','Dior Dress in polka dot',1,'[{\"added\": {}}]',7,2),(24,'2021-01-30 19:53:34.646788','11','Chanel Dress in yellow polka dot',1,'[{\"added\": {}}]',7,2),(25,'2021-01-30 19:55:16.686615','12','Gucci Dress in blue',1,'[{\"added\": {}}]',7,2);
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
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (6,'accounts','useraccount'),(14,'address','shippingaddressmodel'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(12,'cart','cartitemsmodel'),(4,'contenttypes','contenttype'),(13,'order','ordermodel'),(9,'orders','orderitemmodel'),(10,'orders','orderitemsmodel'),(8,'orders','ordermodel'),(11,'orders','shippingaddressmodel'),(7,'products','productsmodel'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-12-26 14:27:23.498309'),(2,'contenttypes','0002_remove_content_type_name','2020-12-26 14:27:24.040793'),(3,'auth','0001_initial','2020-12-26 14:27:24.337456'),(4,'auth','0002_alter_permission_name_max_length','2020-12-26 14:27:25.144528'),(5,'auth','0003_alter_user_email_max_length','2020-12-26 14:27:25.166635'),(6,'auth','0004_alter_user_username_opts','2020-12-26 14:27:25.187844'),(7,'auth','0005_alter_user_last_login_null','2020-12-26 14:27:25.202677'),(8,'auth','0006_require_contenttypes_0002','2020-12-26 14:27:25.218257'),(9,'auth','0007_alter_validators_add_error_messages','2020-12-26 14:27:25.240153'),(10,'auth','0008_alter_user_username_max_length','2020-12-26 14:27:25.253565'),(11,'auth','0009_alter_user_last_name_max_length','2020-12-26 14:27:25.298324'),(12,'auth','0010_alter_group_name_max_length','2020-12-26 14:27:25.342768'),(13,'auth','0011_update_proxy_permissions','2020-12-26 14:27:25.367004'),(14,'auth','0012_alter_user_first_name_max_length','2020-12-26 14:27:25.380180'),(15,'accounts','0001_initial','2020-12-26 14:27:25.660417'),(16,'admin','0001_initial','2020-12-26 14:27:26.811717'),(17,'admin','0002_logentry_remove_auto_add','2020-12-26 14:27:27.267939'),(18,'admin','0003_logentry_add_action_flag_choices','2020-12-26 14:27:27.280012'),(19,'sessions','0001_initial','2020-12-26 14:27:27.360851'),(20,'products','0001_initial','2020-12-26 15:31:17.200466'),(21,'orders','0001_initial','2021-01-10 11:09:09.771652'),(22,'orders','0002_orderitemmodel_quantity','2021-01-10 11:09:10.933158'),(23,'cart','0001_initial','2021-01-12 10:32:33.577776'),(24,'order','0001_initial','2021-01-12 10:48:41.284394'),(25,'address','0001_initial','2021-01-12 11:48:57.614259'),(26,'order','0002_ordermodel_user','2021-01-12 18:09:52.602265'),(27,'order','0003_auto_20210112_1809','2021-01-12 18:09:53.218961'),(28,'order','0004_auto_20210112_1810','2021-01-12 18:10:49.086200'),(29,'order','0005_auto_20210112_1810','2021-01-12 18:10:49.514802'),(30,'order','0006_auto_20210112_1818','2021-01-12 18:18:24.531982'),(31,'order','0007_auto_20210114_0959','2021-01-14 09:59:41.141492'),(32,'order','0008_auto_20210114_1503','2021-01-14 15:03:43.325953'),(33,'order','0009_auto_20210114_1514','2021-01-14 15:14:25.209849'),(34,'order','0010_auto_20210114_1727','2021-01-14 17:27:27.290783'),(35,'order','0011_auto_20210114_1847','2021-01-14 18:50:40.484508'),(36,'order','0012_auto_20210114_1849','2021-01-14 18:50:41.855305'),(37,'order','0013_auto_20210114_1900','2021-01-14 19:00:08.505748'),(38,'order','0014_auto_20210129_1614','2021-01-29 16:14:58.399500'),(39,'products','0002_auto_20210130_1924','2021-01-30 19:24:42.579026'),(40,'products','0003_auto_20210130_1932','2021-01-30 19:32:15.348127'),(41,'products','0004_productsmodel_sex','2021-01-30 19:38:31.886245');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5jqc5almkqi2l3e98yrgy7cbsy263j9e','.eJxVjDsOwyAQBe9CHSHAsOCU6X0GtLtA7CQCyZ8qyt1jSy6S9s3Me4uI2zrGbclznJK4CiMuvxshP3M9QHpgvTfJra7zRPJQ5EkXObSUX7fT_TsYcRn3mhQ68MogEDB3FMC6pLxh74Jxuu8YAbRRoLtQVObcE-5iMolsAVvE5wvL2zfE:1kuLmT:SqaD9ACktpiancK4PYbCkSFQIxNcdmmETa7MK-0BTC4','2021-01-12 20:39:45.410559'),('6e1w5ybtbcpvwnic97lyqkewlq4d1w0g','.eJxVjDsOwyAQBe9CHSHAsOCU6X0GtLtA7CQCyZ8qyt1jSy6S9s3Me4uI2zrGbclznJK4CiMuvxshP3M9QHpgvTfJra7zRPJQ5EkXObSUX7fT_TsYcRn3mhQ68MogEDB3FMC6pLxh74Jxuu8YAbRRoLtQVObcE-5iMolsAVvE5wvL2zfE:1kyYdD:k-22IHu3DOwYDVKTLCmJugyU0ygayeUFppwbn4NwegE','2021-01-24 11:11:35.051965'),('7ovmtbexgqff3ffrlhcokz2d5s9p5cvz','.eJxVjDsOwyAQBe9CHSHAsOCU6X0GtLtA7CQCyZ8qyt1jSy6S9s3Me4uI2zrGbclznJK4CiMuvxshP3M9QHpgvTfJra7zRPJQ5EkXObSUX7fT_TsYcRn3mhQ68MogEDB3FMC6pLxh74Jxuu8YAbRRoLtQVObcE-5iMolsAVvE5wvL2zfE:1l4OZo:zxcoWlFx9fzy_3kfQAvqy_wq5z3WtG28QOf3vJCBPEY','2021-02-09 13:40:12.350192'),('dg2bawa3sostf9frnqt4bchlkpvwkopv','.eJxVjDsOwyAQBe9CHSHAsOCU6X0GtLtA7CQCyZ8qyt1jSy6S9s3Me4uI2zrGbclznJK4CiMuvxshP3M9QHpgvTfJra7zRPJQ5EkXObSUX7fT_TsYcRn3mhQ68MogEDB3FMC6pLxh74Jxuu8YAbRRoLtQVObcE-5iMolsAVvE5wvL2zfE:1kzzzC:R7u-ISV-ifUP-0KfJwwW7Zt7dPW6vUEkwymzqRzEvHY','2021-01-28 10:36:14.815936'),('pzfkggmlj9f2h1rro8xc8azp25yg3oev','.eJxVjDsOwyAQBe9CHSHAsOCU6X0GtLtA7CQCyZ8qyt1jSy6S9s3Me4uI2zrGbclznJK4CiMuvxshP3M9QHpgvTfJra7zRPJQ5EkXObSUX7fT_TsYcRn3mhQ68MogEDB3FMC6pLxh74Jxuu8YAbRRoLtQVObcE-5iMolsAVvE5wvL2zfE:1ktBcm:BI5pByjDH0zYTy4FO3m23gvG92cbNJk5NYoQ9CUkGKE','2021-01-09 15:36:56.032809');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `items_price` decimal(10,2) NOT NULL,
  `delivery_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `is_paid` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL,
  `is_delivered` tinyint(1) NOT NULL,
  `shipping_address_id` int NOT NULL,
  `updated` datetime(6) NOT NULL,
  `payment_method` varchar(100) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_shipping_address_id_bf7237b0` (`shipping_address_id`),
  KEY `orders_user_id_7e2523fb_fk_accounts_useraccount_id` (`user_id`),
  CONSTRAINT `orders_shipping_address_id_bf7237b0_fk_shipping_address_id` FOREIGN KEY (`shipping_address_id`) REFERENCES `shipping_address` (`id`),
  CONSTRAINT `orders_user_id_7e2523fb_fk_accounts_useraccount_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_useraccount` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (31,320.00,48.00,368.00,0,'2021-01-26 18:49:17.403777',0,19,'2021-01-26 18:49:17.403808','liqPay',2),(32,220.00,33.00,253.00,0,'2021-01-26 18:54:27.645406',0,21,'2021-01-26 18:54:27.645456','liqPay',2),(33,100.00,15.00,115.00,0,'2021-01-26 20:47:37.352463',0,24,'2021-01-26 20:47:37.352505','liqPay',2),(34,100.00,15.00,115.00,0,'2021-01-26 20:49:03.472213',0,24,'2021-01-26 20:49:03.472248','liqPay',2),(35,120.00,18.00,138.00,0,'2021-01-28 16:47:26.055969',0,3,'2021-01-28 16:47:26.056012','liqPay',2),(36,120.00,18.00,138.00,0,'2021-01-28 16:49:49.317121',0,35,'2021-01-28 16:49:49.317174','liqPay',2),(37,120.00,15.00,135.00,0,'2021-01-28 17:00:24.829154',0,3,'2021-01-28 17:00:24.829207','LiqPay',2),(38,120.00,15.00,135.00,0,'2021-01-28 17:01:35.559445',0,3,'2021-01-28 17:01:35.559485','LiqPay',2),(39,120.00,18.00,138.00,0,'2021-01-28 17:11:01.853324',0,3,'2021-01-28 17:11:01.853367','liqPay',2),(40,320.00,48.00,368.00,0,'2021-01-29 13:16:45.712015',0,3,'2021-01-29 13:16:45.712127','liqPay',2),(41,320.00,48.00,368.00,0,'2021-01-29 13:20:38.000064',0,3,'2021-01-29 13:20:38.000105','liqPay',2),(42,320.00,48.00,368.00,0,'2021-01-29 16:15:40.880199',0,3,'2021-01-29 16:15:40.880235','liqPay',2),(43,320.00,48.00,368.00,0,'2021-01-29 16:19:50.512529',0,3,'2021-01-29 16:19:50.586774','liqPay',2),(44,343.00,51.45,394.45,0,'2021-01-29 16:45:23.978658',0,43,'2021-01-29 16:45:24.045243','liqPay',2),(45,156.00,23.40,179.40,0,'2021-01-29 16:52:06.317677',0,44,'2021-01-29 16:52:06.353892','liqPay',2),(46,100.00,15.00,115.00,0,'2021-01-29 17:04:23.345959',0,45,'2021-01-29 17:04:23.379687','creditCard',2),(47,120.00,18.00,138.00,0,'2021-01-29 17:11:47.126906',0,47,'2021-01-29 17:11:47.157692','liqPay',2),(48,100.00,15.00,115.00,0,'2021-01-29 17:16:06.213955',0,48,'2021-01-29 17:16:06.246054','liqPay',2),(49,120.00,18.00,138.00,0,'2021-01-29 17:46:16.736204',0,3,'2021-01-29 17:46:16.771808','creditCard',2),(50,120.00,18.00,138.00,0,'2021-01-29 20:04:08.159583',0,49,'2021-01-29 20:04:08.202870','liqPay',2),(51,100.00,15.00,115.00,0,'2021-01-29 20:22:41.702563',0,3,'2021-01-29 20:22:41.731950','liqPay',2),(52,100.00,15.00,115.00,0,'2021-01-29 20:39:23.549032',0,50,'2021-01-29 20:39:23.585591','liqPay',27),(53,120.00,18.00,138.00,0,'2021-01-29 20:42:39.125416',0,3,'2021-01-29 20:42:39.160199','liqPay',27),(54,100.00,15.00,115.00,0,'2021-01-29 20:49:43.882038',0,3,'2021-01-29 20:49:43.916004','liqPay',27),(55,120.00,18.00,138.00,0,'2021-01-29 21:01:38.966180',0,3,'2021-01-29 21:01:38.996695','liqPay',27),(56,100.00,15.00,115.00,0,'2021-01-29 21:04:23.006685',0,51,'2021-01-29 21:04:23.037357','liqPay',2),(57,78.00,11.70,89.70,0,'2021-01-29 21:10:26.792830',0,3,'2021-01-29 21:10:26.825095','liqPay',2),(58,78.00,11.70,89.70,0,'2021-01-29 21:12:54.057570',0,3,'2021-01-29 21:12:54.091060','liqPay',2),(59,120.00,18.00,138.00,0,'2021-01-29 21:17:10.504628',0,3,'2021-01-29 21:17:10.539976','liqPay',2),(60,100.00,15.00,115.00,0,'2021-01-29 21:18:01.516844',0,3,'2021-01-29 21:18:01.546698','liqPay',2),(61,120.00,18.00,138.00,0,'2021-01-29 21:22:11.398238',0,3,'2021-01-29 21:22:11.432785','liqPay',2),(62,100.00,15.00,115.00,0,'2021-01-29 21:26:49.195248',0,3,'2021-01-29 21:26:49.226804','liqPay',2),(63,78.00,11.70,89.70,0,'2021-01-29 21:30:24.261156',0,3,'2021-01-29 21:30:24.293463','liqPay',2),(64,100.00,15.00,115.00,0,'2021-01-29 21:37:04.461823',0,3,'2021-01-29 21:37:04.506290','liqPay',2),(65,120.00,18.00,138.00,0,'2021-01-29 21:40:03.820181',0,3,'2021-01-29 21:40:03.855072','liqPay',2),(66,100.00,15.00,115.00,0,'2021-01-29 21:48:05.824748',0,3,'2021-01-29 21:48:05.880048','liqPay',2),(70,120.00,18.00,138.00,0,'2021-01-29 22:06:14.836349',0,3,'2021-01-29 22:06:14.869016','liqPay',2),(71,100.00,15.00,115.00,0,'2021-01-29 22:08:03.240107',0,3,'2021-01-29 22:08:03.276992','liqPay',2),(72,100.00,15.00,115.00,0,'2021-01-29 22:26:08.474336',0,3,'2021-01-29 22:26:08.504603','liqPay',2),(73,120.00,18.00,138.00,0,'2021-01-29 22:30:04.176805',0,3,'2021-01-29 22:30:04.212261','liqPay',2),(74,100.00,15.00,115.00,0,'2021-01-30 13:20:56.205204',0,3,'2021-01-30 13:20:56.242107','liqPay',2),(76,120.00,18.00,138.00,0,'2021-01-30 13:26:28.071738',0,3,'2021-01-30 13:26:28.102580','liqPay',2),(77,100.00,15.00,115.00,0,'2021-01-30 13:27:21.670811',0,3,'2021-01-30 13:27:21.703167','liqPay',2),(78,120.00,18.00,138.00,0,'2021-01-30 13:36:01.220025',0,3,'2021-01-30 13:36:01.245622','liqPay',2),(79,100.00,15.00,115.00,0,'2021-01-30 13:37:24.216888',0,3,'2021-01-30 13:37:24.254193','liqPay',2),(80,120.00,18.00,138.00,0,'2021-01-30 13:37:57.896597',0,3,'2021-01-30 13:37:57.920267','liqPay',2),(81,120.00,18.00,138.00,0,'2021-01-30 13:53:37.274980',0,3,'2021-01-30 13:53:37.305008','liqPay',2),(82,100.00,15.00,115.00,0,'2021-01-30 13:54:49.517045',0,52,'2021-01-30 13:54:49.560230','liqPay',2),(83,100.00,15.00,115.00,0,'2021-01-30 13:59:59.915994',0,3,'2021-01-30 13:59:59.946334','liqPay',2),(84,100.00,15.00,115.00,0,'2021-01-30 14:02:08.943796',0,3,'2021-01-30 14:02:09.005285','liqPay',2),(85,120.00,18.00,138.00,0,'2021-01-30 14:06:11.735519',0,3,'2021-01-30 14:06:11.766867','liqPay',2),(86,139.00,20.85,159.85,0,'2021-01-30 14:23:44.029441',0,3,'2021-01-30 14:23:44.073871','liqPay',2),(87,78.00,11.70,89.70,0,'2021-01-30 14:34:03.766733',0,3,'2021-01-30 14:34:03.796271','liqPay',2),(88,120.00,18.00,138.00,0,'2021-01-30 14:38:01.766729',0,3,'2021-01-30 14:38:01.811620','liqPay',2),(89,120.00,18.00,138.00,0,'2021-01-30 14:40:44.786709',0,3,'2021-01-30 14:40:44.824668','liqPay',2),(90,120.00,18.00,138.00,0,'2021-01-30 14:53:28.222510',0,3,'2021-01-30 14:53:28.258435','liqPay',2),(91,120.00,18.00,138.00,0,'2021-01-30 14:55:37.749828',0,3,'2021-01-30 14:55:37.819476','liqPay',2),(92,100.00,15.00,115.00,0,'2021-01-30 15:04:04.592057',0,53,'2021-01-30 15:04:04.627520','liqPay',2),(93,259.00,38.85,297.85,0,'2021-01-30 15:10:19.295581',0,3,'2021-01-30 15:10:19.354673','liqPay',2),(94,100.00,15.00,115.00,0,'2021-01-30 15:16:24.983110',0,53,'2021-01-30 15:16:25.011643','liqPay',2),(95,600.00,90.00,690.00,0,'2021-01-30 19:10:28.927125',0,3,'2021-01-30 19:10:28.972006','creditCard',2),(96,259.80,38.97,298.77,0,'2021-01-30 20:01:42.774669',0,3,'2021-01-30 20:01:42.812883','liqPay',2),(97,220.00,33.00,253.00,0,'2021-01-30 20:45:49.051281',0,3,'2021-01-30 20:45:49.114173','liqPay',2),(98,100.00,15.00,115.00,0,'2021-01-30 20:47:01.083771',0,3,'2021-01-30 20:47:01.123064','liqPay',2),(99,120.00,18.00,138.00,0,'2021-01-30 20:54:55.090657',0,54,'2021-01-30 20:54:55.124200','creditCard',2),(100,100.00,15.00,115.00,0,'2021-01-30 21:20:59.537511',0,55,'2021-01-30 21:20:59.569389','liqPay',2),(101,14.90,2.23,17.13,0,'2021-01-30 21:39:37.560124',0,56,'2021-01-30 21:39:37.590455','liqPay',2),(102,120.00,18.00,138.00,0,'2021-01-30 21:44:27.102196',0,57,'2021-01-30 21:44:27.144654','liqPay',2),(103,120.00,18.00,138.00,0,'2021-01-30 21:46:36.242758',0,58,'2021-01-30 21:46:36.272557','liqPay',2),(105,100.00,15.00,115.00,0,'2021-01-30 21:53:01.915353',0,60,'2021-01-30 21:53:01.945515','liqPay',2),(106,100.00,15.00,115.00,0,'2021-01-30 21:57:46.784519',0,61,'2021-01-30 21:57:46.821276','liqPay',2),(107,321.80,48.27,370.07,0,'2021-01-30 22:19:50.046488',0,63,'2021-01-30 22:19:50.116649','liqPay',2),(112,100.00,15.00,115.00,0,'2021-01-30 22:40:42.847062',0,68,'2021-01-30 22:40:42.882952','liqPay',2),(114,100.00,15.00,115.00,0,'2021-01-31 10:44:43.778249',0,70,'2021-01-31 10:44:43.811471','liqPay',27),(115,120.00,15.00,135.00,0,'2021-01-31 10:54:23.493870',0,3,'2021-01-31 10:54:23.557411','LiqPay',2);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_order_items`
--

DROP TABLE IF EXISTS `orders_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_order_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ordermodel_id` int NOT NULL,
  `cartitemsmodel_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_order_items_ordermodel_id_cartitemsmodel_id_d5ca8648_uniq` (`ordermodel_id`,`cartitemsmodel_id`),
  KEY `orders_order_items_cartitemsmodel_id_c0fbb26d_fk_cart_items_id` (`cartitemsmodel_id`),
  CONSTRAINT `orders_order_items_cartitemsmodel_id_c0fbb26d_fk_cart_items_id` FOREIGN KEY (`cartitemsmodel_id`) REFERENCES `cart_items` (`id`),
  CONSTRAINT `orders_order_items_ordermodel_id_8215b1b9_fk_orders_id` FOREIGN KEY (`ordermodel_id`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_order_items`
--

LOCK TABLES `orders_order_items` WRITE;
/*!40000 ALTER TABLE `orders_order_items` DISABLE KEYS */;
INSERT INTO `orders_order_items` VALUES (1,43,54),(2,43,55),(3,44,56),(4,44,57),(5,45,58),(6,46,59),(7,47,60),(8,48,61),(9,49,62),(10,50,63),(11,51,64),(12,52,65),(13,53,66),(14,54,67),(15,55,68),(16,56,69),(17,57,70),(18,58,71),(19,59,72),(20,60,73),(21,61,74),(22,62,75),(23,63,76),(24,64,77),(25,65,78),(26,66,79),(30,70,83),(31,71,84),(32,72,85),(33,73,86),(34,74,87),(36,76,89),(37,77,90),(38,78,91),(39,79,92),(40,80,93),(41,81,94),(42,82,95),(43,83,96),(44,84,97),(45,85,98),(46,86,99),(47,87,100),(48,88,101),(49,89,102),(50,90,103),(51,91,104),(52,92,105),(53,93,106),(54,93,107),(55,94,108),(56,95,109),(57,96,110),(58,97,111),(59,97,112),(60,98,113),(61,99,114),(62,100,115),(63,101,116),(64,102,117),(65,103,118),(67,105,120),(68,106,121),(69,107,122),(70,107,123),(75,112,128),(77,114,130),(78,115,131),(79,115,132);
/*!40000 ALTER TABLE `orders_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `countInStock` int NOT NULL,
  `brand` varchar(62) NOT NULL,
  `rating` double NOT NULL,
  `numReviews` int NOT NULL,
  `description` longtext NOT NULL,
  `sex` varchar(62) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Nike Slim Shirt','Shirts','images/2020/12/26/p1.jpg',120,10,'Adidas',4.5,10,'high quality product','Man'),(2,'Adidas Fit Shirt','Shirts','images/2020/12/26/p2.jpg',100,20,'Adidas',4,10,'high quality product','Man'),(3,'Lacoste Free Shirt','Shirts','images/2020/12/26/p3.jpg',220,0,'Lacoste',4.8,17,'high quality product','Man'),(4,'Nike Slim Pant','Pants','images/2020/12/26/p4.jpg',78,15,'Nike',4.5,14,'high quality product','Man'),(5,'Puma Slim Pant\'','Pants','images/2020/12/26/p5.jpg',65,5,'Puma',4.5,10,'high quality product','Man'),(6,'Adidas Fit Pant','Pants','images/2020/12/26/p6.jpg',139,12,'Adidas',4.5,15,'high quality product','Man'),(7,'Dior Midi sundress','Dress','images/2021/01/30/dress1.jpg',129.9,10,'Dior',4.5,15,'Midi sundress with shirring detail','Woman'),(8,'Chanel Sundress with ruched front','Dress','images/2021/01/30/dress2.jpg',118.9,20,'Chanel',4,20,'Midi sundress with ruched front','Woman'),(9,'Gucci Dress in pink','Dress','images/2021/01/30/dress3.jpg',14.9,10,'Gucci',3.5,10,'Midi dress in pink ditsy floral','Woman'),(10,'Dior Dress in polka dot','Dress','images/2021/01/30/dress4.jpg',125.9,8,'Dior',4.5,15,'cami maxi dress in polka dot','Woman'),(11,'Chanel Dress in yellow polka dot','Dress','images/2021/01/30/dress5.jpg',110.9,5,'Chanel',4,20,'Frill mini dress in yellow polka dot','Woman'),(12,'Gucci Dress in blue','Dress','images/2021/01/30/dress6.jpg',149.9,5,'Gucci',4.5,10,'Midi tea dress in blue and red spot','Woman');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_address`
--

DROP TABLE IF EXISTS `shipping_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `postal_code` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_address`
--

LOCK TABLES `shipping_address` WRITE;
/*!40000 ALTER TABLE `shipping_address` DISABLE KEYS */;
INSERT INTO `shipping_address` VALUES (3,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(4,'vova','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(16,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(17,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(18,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(19,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(20,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(21,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(22,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(23,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(24,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(25,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(26,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(27,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(28,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(29,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(30,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(31,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(32,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(33,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(34,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(35,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(36,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(37,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(38,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(39,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(40,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(41,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(42,'Vovanchyk','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(43,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(44,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(45,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(46,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(47,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(48,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(49,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(50,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(51,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(52,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(53,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(54,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(55,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(56,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(57,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(58,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(59,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(60,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(61,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(62,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(63,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(64,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(65,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(66,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(67,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(68,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(69,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940'),(70,'Mykhailo','Moshchovskyi','Shkilna','81444','S.Pidhaychyky','0961603940');
/*!40000 ALTER TABLE `shipping_address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-01 22:07:37
