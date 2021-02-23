-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: myblog_db
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add 友情链接',7,'add_friendlink'),(26,'Can change 友情链接',7,'change_friendlink'),(27,'Can delete 友情链接',7,'delete_friendlink'),(28,'Can view 友情链接',7,'view_friendlink'),(29,'Can add 大分类',8,'add_bigcategory'),(30,'Can change 大分类',8,'change_bigcategory'),(31,'Can delete 大分类',8,'delete_bigcategory'),(32,'Can view 大分类',8,'view_bigcategory'),(33,'Can add 分类',9,'add_category'),(34,'Can change 分类',9,'change_category'),(35,'Can delete 分类',9,'delete_category'),(36,'Can view 分类',9,'view_category'),(37,'Can add 文章',10,'add_article'),(38,'Can change 文章',10,'change_article'),(39,'Can delete 文章',10,'delete_article'),(40,'Can view 文章',10,'view_article'),(41,'Can add 关键词',11,'add_keyword'),(42,'Can change 关键词',11,'change_keyword'),(43,'Can delete 关键词',11,'delete_keyword'),(44,'Can view 关键词',11,'view_keyword'),(45,'Can add 标签',12,'add_tag'),(46,'Can change 标签',12,'change_tag'),(47,'Can delete 标签',12,'delete_tag'),(48,'Can view 标签',12,'view_tag'),(49,'Can add post',13,'add_post'),(50,'Can change post',13,'change_post'),(51,'Can delete post',13,'delete_post'),(52,'Can view post',13,'view_post'),(53,'Can add 评论',14,'add_comment'),(54,'Can change 评论',14,'change_comment'),(55,'Can delete 评论',14,'delete_comment'),(56,'Can view 评论',14,'view_comment');
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
  `password` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$216000$82XHG8HBIbSr$j3sYwtb4kz2fpoAUss6LrmL1Hisqnnemz1ME7Elmj8o=','2021-02-23 09:57:21.093201',1,'neo','','','neo@163.com',1,1,'2021-01-28 08:31:00.000000'),(2,'pbkdf2_sha256$216000$GWeCklnWluF2$ty4FGiT4+T9DV4rwl/XL+Bk6Mi9oeabrPHd4q8Vz1i0=','2021-02-23 09:51:14.802822',0,'temp','','','',1,1,'2021-02-01 17:20:00.000000');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
INSERT INTO `auth_user_user_permissions` VALUES (4,1,1),(5,1,2),(6,1,3),(7,1,4),(8,1,5),(9,1,6),(10,1,7),(11,1,8),(12,1,9),(13,1,10),(14,1,11),(15,1,12),(16,1,13),(17,1,14),(18,1,15),(19,1,16),(20,1,17),(21,1,18),(22,1,19),(23,1,20),(24,1,21),(25,1,22),(26,1,23),(27,1,24),(28,1,25),(29,1,26),(30,1,27),(31,1,28),(32,1,29),(33,1,30),(34,1,31),(35,1,32),(36,1,33),(37,1,34),(38,1,35),(39,1,36),(40,1,37),(41,1,38),(42,1,39),(43,1,40),(44,1,41),(45,1,42),(46,1,43),(47,1,44),(48,1,45),(49,1,46),(50,1,47),(51,1,48),(52,1,49),(53,1,50),(54,1,51),(55,1,52),(56,1,53),(57,1,54),(58,1,55),(59,1,56),(1,2,41),(3,2,49),(2,2,52);
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments_comment`
--

DROP TABLE IF EXISTS `comments_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments_comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `post_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_comment_post_id_96a9ac05_fk_myblog_post_id` (`post_id`),
  CONSTRAINT `comments_comment_post_id_96a9ac05_fk_myblog_post_id` FOREIGN KEY (`post_id`) REFERENCES `myblog_post` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments_comment`
--

LOCK TABLES `comments_comment` WRITE;
/*!40000 ALTER TABLE `comments_comment` DISABLE KEYS */;
INSERT INTO `comments_comment` VALUES (3,'neoch zhong','neo1901@163.com','','1212','2021-02-01 16:04:27.379474',5),(4,'pp','1813132852@qq.com','','哈哈','2021-02-01 17:03:22.296187',7),(5,'pp','1813132852@qq.com','','很好很好很好很好','2021-02-01 17:14:09.923779',7),(6,'neoch zhong','neo1901@163.com','','<font face=\"黑体\">我是黑体字</font>\r\n<font face=\"微软雅黑\">我是微软雅黑</font>\r\n<font face=\"STCAIYUN\">我是华文彩云</font>\r\n<font color=#0099ff size=12 face=\"黑体\">黑体</font>\r\n<font color=gray size=5>gray</font>\r\n<font color=#00ffff size=3>null</font>','2021-02-01 17:33:00.188794',3),(7,'neoch zhong','neo1901@163.com','','评论2','2021-02-01 17:33:38.897476',3),(8,'neoch zhong','neo1901@163.com','','评论3','2021-02-01 17:33:48.213384',3),(9,'neoch zhong','neo1901@163.com','','测试评论4','2021-02-01 17:33:59.442853',3),(10,'neoch zhong','neo1901@163.com','','测试评论5','2021-02-01 17:34:07.254886',3),(11,'neoch zhong','neo1901@163.com','','测试评论6','2021-02-01 17:34:14.302681',3),(12,'neoch zhong','neo1901@163.com','','测试评论7\r\n测试评论\r\n测试评论4测试评论4\r\n测试评论4\r\n测试评论4\r\n测试评论4\r\n测试评论4\r\n测试评论4\r\n测试评论4\r\n测试评论4\r\n测试评论4\r\n测试评论4\r\n测试评论4\r\n测试评论4\r\n测试评论4','2021-02-01 17:34:41.336668',3),(13,'neoch zhong','neo1901@163.com','','太坑了！\r\n教程有问题\r\nhttps://www.zmrenwu.com/courses/hellodjango-blog-tutorial/materials/74/','2021-02-04 19:05:28.211978',14);
/*!40000 ALTER TABLE `comments_comment` ENABLE KEYS */;
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
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2021-01-28 09:01:12.369308','1','技术',1,'[{\"added\": {}}]',8,1),(2,'2021-01-28 09:02:37.253652','1','技术',1,'[{\"added\": {}}]',9,1),(3,'2021-01-28 09:03:19.490493','2','python',1,'[{\"added\": {}}]',9,1),(4,'2021-01-28 09:04:00.120427','2','杂感',1,'[{\"added\": {}}]',8,1),(5,'2021-01-28 09:04:53.825498','1','python',1,'[{\"added\": {}}]',12,1),(6,'2021-01-28 09:06:13.266432','3','民间故事',1,'[{\"added\": {}}]',9,1),(7,'2021-01-28 09:07:34.391486','2','故事',1,'[{\"added\": {}}]',12,1),(8,'2021-01-28 09:07:59.638398','1','story',1,'[{\"added\": {}}]',11,1),(9,'2021-01-28 09:08:17.435089','1','名讳',1,'[{\"added\": {}}]',10,1),(10,'2021-01-28 17:09:16.893494','1','名讳',2,'[]',10,1),(11,'2021-01-29 16:24:01.745108','1','Post object (1)',1,'[{\"added\": {}}]',13,1),(12,'2021-01-29 17:00:34.779917','3','数据库',1,'[{\"added\": {}}]',12,1),(13,'2021-01-29 17:00:39.079005','2','Sqlite和mysql的区别及优缺点',1,'[{\"added\": {}}]',13,1),(14,'2021-01-29 17:01:22.319081','1','this is the first blog post from admin',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\", \"\\u6458\\u8981\"]}}]',13,1),(15,'2021-01-29 17:45:59.415540','3','测试markdown',1,'[{\"added\": {}}]',13,1),(16,'2021-01-29 17:49:31.960034','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(17,'2021-02-01 09:26:35.748007','4','台词',1,'[{\"added\": {}}]',9,1),(18,'2021-02-01 09:26:56.160912','4','光荣在于平淡，艰巨在于漫长',1,'[{\"added\": {}}]',13,1),(19,'2021-02-01 09:29:50.410324','5','明明是个强人 天生一副熊样',1,'[{\"added\": {}}]',13,1),(20,'2021-02-01 09:30:07.705412','5','明明是个强人 却天生一副熊样',2,'[{\"changed\": {\"fields\": [\"\\u6807\\u9898\", \"\\u6b63\\u6587\"]}}]',13,1),(21,'2021-02-01 10:18:50.417809','6','代码测试',1,'[{\"added\": {}}]',13,1),(22,'2021-02-01 10:22:06.067092','6','代码测试',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(23,'2021-02-01 10:22:41.899724','6','代码测试',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(24,'2021-02-01 10:23:11.498048','6','代码测试',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(25,'2021-02-01 10:26:14.866950','6','代码测试',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(26,'2021-02-01 16:06:28.195115','6','代码测试',3,'',13,1),(27,'2021-02-01 16:12:24.539215','7','历史上最早的实物家信',1,'[{\"added\": {}}]',13,1),(28,'2021-02-01 16:15:43.436225','7','历史上最早的实物家信',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(29,'2021-02-01 16:17:08.340471','7','历史上最早的实物家信',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(30,'2021-02-01 16:21:49.879127','7','历史上最早的实物家信',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(31,'2021-02-01 16:22:39.715111','7','历史上最早的实物家信',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(32,'2021-02-01 16:23:13.756348','7','历史上最早的实物家信',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(33,'2021-02-01 16:24:16.898860','7','历史上最早的实物家信',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(34,'2021-02-01 16:24:39.665844','7','历史上最早的实物家信',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(35,'2021-02-01 16:26:53.921526','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(36,'2021-02-01 16:27:39.592475','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(37,'2021-02-01 16:28:10.440346','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(38,'2021-02-01 16:28:42.136676','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(39,'2021-02-01 16:28:55.344185','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(40,'2021-02-01 16:29:08.561384','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(41,'2021-02-01 16:32:14.880206','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(42,'2021-02-01 16:33:04.768971','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(43,'2021-02-01 16:34:44.151421','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(44,'2021-02-01 16:35:31.928379','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(45,'2021-02-01 16:35:54.910179','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(46,'2021-02-01 16:36:38.598471','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(47,'2021-02-01 16:37:12.375112','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(48,'2021-02-01 16:37:48.412308','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(49,'2021-02-01 16:38:11.334076','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(50,'2021-02-01 16:38:30.406760','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(51,'2021-02-01 16:39:24.175281','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(52,'2021-02-01 16:40:03.271286','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(53,'2021-02-01 16:40:53.828498','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(54,'2021-02-01 16:41:34.430748','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(55,'2021-02-01 16:42:06.735818','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(56,'2021-02-01 16:42:21.342417','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(57,'2021-02-01 16:44:45.854077','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(58,'2021-02-01 16:45:37.431815','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(59,'2021-02-01 16:46:13.949958','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(60,'2021-02-01 16:47:14.823027','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(61,'2021-02-01 16:48:08.428913','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(62,'2021-02-01 16:48:27.748715','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(63,'2021-02-01 16:48:54.798805','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(64,'2021-02-01 16:50:37.912416','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(65,'2021-02-01 16:50:54.804799','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(66,'2021-02-01 16:52:39.700459','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(67,'2021-02-01 16:52:56.998499','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(68,'2021-02-01 16:53:37.986877','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(69,'2021-02-01 16:54:31.124928','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(70,'2021-02-01 16:55:07.134286','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(71,'2021-02-01 16:55:35.572432','3','测试markdown',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(72,'2021-02-01 17:20:05.486125','2','temp',1,'[{\"added\": {}}]',4,1),(73,'2021-02-01 17:24:06.461507','2','temp',2,'[{\"changed\": {\"fields\": [\"password\"]}}]',4,1),(74,'2021-02-01 17:25:20.018210','2','temp',2,'[{\"changed\": {\"fields\": [\"Staff status\"]}}]',4,1),(75,'2021-02-01 17:26:57.582454','2','temp',2,'[{\"changed\": {\"fields\": [\"User permissions\", \"Last login\"]}}]',4,1),(76,'2021-02-02 08:48:57.151829','1','neo',2,'[{\"changed\": {\"fields\": [\"User permissions\", \"Last login\"]}}]',4,1),(77,'2021-02-02 09:06:17.119215','8','豆棚瓜架雨如丝，料应厌作人间语，爱听秋坟鬼唱诗',1,'[{\"added\": {}}]',13,1),(78,'2021-02-02 09:17:53.413141','9','日他妈的文学',1,'[{\"added\": {}}]',13,1),(79,'2021-02-02 09:51:04.476533','10','清华园日记',1,'[{\"added\": {}}]',13,1),(80,'2021-02-02 09:51:40.786507','10','清华园日记',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(81,'2021-02-02 09:51:57.394014','10','清华园日记',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(82,'2021-02-02 09:52:21.060712','10','清华园日记',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(83,'2021-02-02 09:53:11.534617','10','清华园日记',2,'[]',13,1),(84,'2021-02-02 09:53:35.956236','10','清华园日记',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(85,'2021-02-02 09:53:50.167669','10','清华园日记',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(86,'2021-02-02 10:05:54.629772','5','想法',1,'[{\"added\": {}}]',9,1),(87,'2021-02-02 10:06:02.780948','4','想法',1,'[{\"added\": {}}]',12,1),(88,'2021-02-02 10:06:07.211530','11','教育的目标',1,'[{\"added\": {}}]',13,1),(89,'2021-02-02 10:38:26.742927','12','苏轼与佛印故事',1,'[{\"added\": {}}]',13,1),(90,'2021-02-02 10:48:36.314246','12','苏轼与佛印故事',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(91,'2021-02-02 10:51:38.779886','12','苏轼与佛印故事',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(92,'2021-02-02 10:52:16.020220','12','苏轼与佛印故事',2,'[]',13,1),(93,'2021-02-02 10:53:54.243610','12','苏轼与佛印故事',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(94,'2021-02-02 11:38:47.348609','12','苏轼与佛印故事',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(95,'2021-02-02 11:39:22.158672','12','苏轼与佛印故事',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(96,'2021-02-04 08:52:43.350586','13','Django设置 DEBUG=False后静态文件无法加载解决',1,'[{\"added\": {}}]',13,1),(97,'2021-02-04 08:54:49.640603','13','Django设置 DEBUG=False后静态文件无法加载解决',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(98,'2021-02-04 08:55:34.994953','13','Django设置 DEBUG=False后静态文件无法加载解决',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(99,'2021-02-04 08:56:54.608654','13','Django设置 DEBUG=False后静态文件无法加载解决',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(100,'2021-02-04 08:57:28.600264','13','Django设置 DEBUG=False后静态文件无法加载解决',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(101,'2021-02-04 08:59:28.146672','13','Django设置 DEBUG=False后静态文件无法加载解决',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(102,'2021-02-04 09:00:42.155511','13','Django设置 DEBUG=False后静态文件无法加载解决',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(103,'2021-02-04 10:11:08.322404','13','Django设置 DEBUG=False后静态文件无法加载解决',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(104,'2021-02-04 19:03:39.107472','14','django + gunicorn +nginx部署',1,'[{\"added\": {}}]',13,1),(105,'2021-02-04 19:04:28.819497','14','django + gunicorn +nginx部署',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(106,'2021-02-04 19:04:49.162751','14','django + gunicorn +nginx部署',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(107,'2021-02-18 09:48:26.994791','15','Django 项目启动顺序',1,'[{\"added\": {}}]',13,1),(108,'2021-02-18 09:49:01.895859','15','Django 项目启动顺序',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(109,'2021-02-18 09:56:47.271506','15','Django 项目启动顺序',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(110,'2021-02-18 09:57:13.362570','15','Django 项目启动顺序',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(111,'2021-02-18 09:57:33.286359','15','Django 项目启动顺序',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(112,'2021-02-18 09:59:03.236944','15','Django 项目启动顺序',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(113,'2021-02-18 09:59:20.973505','15','Django 项目启动顺序',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(114,'2021-02-18 09:59:45.854583','15','Django 项目启动顺序',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(115,'2021-02-18 10:00:04.649270','15','Django 项目启动顺序',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(116,'2021-02-18 10:01:00.060958','15','Django 项目启动顺序',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(117,'2021-02-18 10:01:26.032238','15','Django 项目启动顺序',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(118,'2021-02-18 10:03:27.891073','14','django + gunicorn +nginx部署',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(119,'2021-02-18 10:03:45.900551','14','django + gunicorn +nginx部署',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1),(120,'2021-02-18 10:04:03.533524','14','django + gunicorn +nginx部署',2,'[{\"changed\": {\"fields\": [\"\\u6b63\\u6587\"]}}]',13,1);
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
  `app_label` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(14,'comments','comment'),(5,'contenttypes','contenttype'),(10,'myblog','article'),(8,'myblog','bigcategory'),(9,'myblog','category'),(7,'myblog','friendlink'),(11,'myblog','keyword'),(13,'myblog','post'),(12,'myblog','tag'),(6,'sessions','session');
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
  `app` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2021-01-28 08:14:11.823852'),(2,'auth','0001_initial','2021-01-28 08:14:11.991852'),(3,'admin','0001_initial','2021-01-28 08:14:12.482875'),(4,'admin','0002_logentry_remove_auto_add','2021-01-28 08:14:12.633875'),(5,'admin','0003_logentry_add_action_flag_choices','2021-01-28 08:14:12.639875'),(6,'contenttypes','0002_remove_content_type_name','2021-01-28 08:14:12.742876'),(7,'auth','0002_alter_permission_name_max_length','2021-01-28 08:14:12.792876'),(8,'auth','0003_alter_user_email_max_length','2021-01-28 08:14:12.856876'),(9,'auth','0004_alter_user_username_opts','2021-01-28 08:14:12.862876'),(10,'auth','0005_alter_user_last_login_null','2021-01-28 08:14:12.915876'),(11,'auth','0006_require_contenttypes_0002','2021-01-28 08:14:12.918876'),(12,'auth','0007_alter_validators_add_error_messages','2021-01-28 08:14:12.924875'),(13,'auth','0008_alter_user_username_max_length','2021-01-28 08:14:12.984875'),(14,'auth','0009_alter_user_last_name_max_length','2021-01-28 08:14:13.045876'),(15,'auth','0010_alter_group_name_max_length','2021-01-28 08:14:13.111876'),(16,'auth','0011_update_proxy_permissions','2021-01-28 08:14:13.120875'),(17,'auth','0012_alter_user_first_name_max_length','2021-01-28 08:14:13.186876'),(18,'sessions','0001_initial','2021-01-28 08:14:13.215876'),(19,'myblog','0001_initial','2021-01-28 08:28:59.756534'),(20,'myblog','0002_auto_20210129_1619','2021-01-29 16:19:50.405502'),(21,'myblog','0003_auto_20210201_1043','2021-02-01 10:43:50.970812'),(22,'comments','0001_initial','2021-02-01 10:43:51.013811'),(23,'myblog','0004_post_page_views','2021-02-05 13:50:35.751695'),(24,'myblog','0005_auto_20210205_1357','2021-02-05 13:57:49.482721');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `session_data` longtext COLLATE utf8_unicode_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('19zzbtgkruw9zte38iwg3rasdn2eerby','.eJxVjDsOwjAQBe_iGlle_2JT0nMGa-3d4ABypDipEHeHSCmgfTPzXiLhtta0dV7SROIsQJx-t4zlwW0HdMd2m2WZ27pMWe6KPGiX15n4eTncv4OKvX5rDopMVqa4MCriiGYsZD3rCKwz6ZAdsvUewIdYFDozmJARDDsEGKx4fwDzGjfE:1l8aKw:eKFnuKkPx7g2-ovxicF6Dl5ESgu1sijliMCZphm-Cvw','2021-02-21 11:02:10.880411'),('2bq7k6wm8hua6b44yodr0g05nt926n0b','.eJxVjDsOwjAQBe_iGlle_2JT0nMGa-3d4ABypDipEHeHSCmgfTPzXiLhtta0dV7SROIsQJx-t4zlwW0HdMd2m2WZ27pMWe6KPGiX15n4eTncv4OKvX5rDopMVqa4MCriiGYsZD3rCKwz6ZAdsvUewIdYFDozmJARDDsEGKx4fwDzGjfE:1lEMwz:ULKeGYl4-TPD63JybqmKCUq5j-p7LrVDyKDFlQXlI1Y','2021-03-09 09:57:21.096200'),('qp8sovsvkx0fvrciojzf8ilvnsj4nzor','.eJxVjDsOwjAQBe_iGlle_2JT0nMGa-3d4ABypDipEHeHSCmgfTPzXiLhtta0dV7SROIsQJx-t4zlwW0HdMd2m2WZ27pMWe6KPGiX15n4eTncv4OKvX5rDopMVqa4MCriiGYsZD3rCKwz6ZAdsvUewIdYFDozmJARDDsEGKx4fwDzGjfE:1l52iu:LbEVx9xANEbFBCZ3qSJbTcdQXvvbda4jcLHqEukNfqY','2021-02-11 08:32:16.248123'),('t5ac8ovg8y1vtdwwk71myqz45mbc40m4','.eJxVjEEOwiAQRe_C2pDCMNC6dO8ZyDBMpWpoUtqV8e7apAvd_vfef6lI21ri1mSJU1ZnZdXpd0vED6k7yHeqt1nzXNdlSnpX9EGbvs5ZnpfD_Tso1Mq3TkPnyEBAwBF749GIH4LjkYSAwbFYzAmsd9CxkKWcJBjvgTH0gqjeH9DCN50:1l6VeM:XxQ8avFh_CXGyAhTp9qVPXFV0PkCXS_rYPNeqldgWwI','2021-02-15 17:37:38.649652');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myblog_category`
--

DROP TABLE IF EXISTS `myblog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myblog_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myblog_category`
--

LOCK TABLES `myblog_category` WRITE;
/*!40000 ALTER TABLE `myblog_category` DISABLE KEYS */;
INSERT INTO `myblog_category` VALUES (1,'技术'),(2,'python'),(3,'民间故事'),(4,'台词'),(5,'想法');
/*!40000 ALTER TABLE `myblog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myblog_post`
--

DROP TABLE IF EXISTS `myblog_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myblog_post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `modified_time` datetime(6) NOT NULL,
  `excerpt` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `author_id` int NOT NULL,
  `category_id` int NOT NULL,
  `page_views` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `myblog_post_category_id_66f2f957_fk_myblog_category_id` (`category_id`),
  KEY `myblog_post_author_id_c017bfb7_fk_auth_user_id` (`author_id`),
  CONSTRAINT `myblog_post_author_id_c017bfb7_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `myblog_post_category_id_66f2f957_fk_myblog_category_id` FOREIGN KEY (`category_id`) REFERENCES `myblog_category` (`id`),
  CONSTRAINT `myblog_post_chk_1` CHECK ((`page_views` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myblog_post`
--

LOCK TABLES `myblog_post` WRITE;
/*!40000 ALTER TABLE `myblog_post` DISABLE KEYS */;
INSERT INTO `myblog_post` VALUES (1,'this is the first blog post from admin','这个是正文内容 this is the first blog post from admin','2021-01-29 16:23:00.000000','2021-01-29 17:01:22.317068','这是摘要部分',1,1,0),(2,'Sqlite和mysql的区别及优缺点','小型嵌入式，跟mysql差不多，但更小,功能也少，属于本地数据库多用于读多写少，100W以下的数据压力不大，不支持分布式。\r\n \r\n真正开源的小型嵌入式数据库，支持事务、触发器器 \r\n性能至少优于mysql4.1.0 \r\n目前已被几乎所有的高级程序开发语言支持 \r\n由于可以自定义数据库函数，尤其在php的扩展中可支持全部php函数，其性能可以说是无上限的 \r\n \r\n \r\n“最主要的是没有 Access 的界面” \r\n有很多用php开发的管理工具，与phpmyadmin的界面很相似 \r\n我用的是SQLiteManager \r\n \r\n \r\nSQLite 是一个类似Access的轻量级数据库系统，但是更小、更快、容量更大，并发更高。为什么说 SQLite 最适合做 CMS (内容管理系统)呢?并不是说其他数据库不好, oracle、MySQL、SQLServer 也都是非常优秀的 DBS，只不过他们设计目标不同，特性不同，所以只有更适用某个应用场景，没有绝对的好坏之分。\r\n \r\n我归纳的中小型站点的CMS的特点如下：\r\n \r\n1、数据量不超过10万\r\n \r\n2、日页面访问量不超过10万\r\n \r\n3、 一部分网站全部生成静态页面，一部分网站实时查询数据库动态访问\r\n \r\n4、 站长不懂技术，不懂得复杂的数据库维护，只会用 FTP 管理网站\r\n \r\n5 、个人站点基本上是一个人管理，一般情况下只有一个人在访问后台，没有并发\r\n \r\n6、 对数据库来说是读多写少，只有在站长访问后台的时候才会写入\r\n \r\n7、 多运行于虚拟主机，大部分PHP主机均同时支持MySQL，小部分PHP主机需要单独购买MySQL，PHP+MySQL的主机价格较PHP主机价格高。(以万网为例：最便宜的PHP空间780元，最便宜的PHP+MySQL的PHP空间1150元)\r\n \r\n8、 多数中小站点的HTTP服务与MySQL部署在同一服务器上\r\n \r\nSQLite 的优点在中小网站CMS应用场景下表现突出：\r\n \r\n1、与MySQL相比，它更彻底的免费，并且没有任何使用上的限制\r\n \r\n2、非常小巧，PHP5以上版本中无需任何配置即可支持SQLite\r\n \r\n3、无需单独购买数据库服务，无服务器进程，配置成本为零\r\n \r\n4、整个数据库存储在一个单个的文件中，数据导入导出备份恢复都是复制文件，维护难度为零\r\n \r\n5、读速度快，在数据量不是很大的情况下速度较快，更重要的是：省掉了一次数据库远程链接没有复杂的权限验证，打开就能操作\r\n \r\nSQLite的缺点在中小网站 CMS 应用场景下被规避：\r\n \r\n1、并发低 动态访问时当访问量不超过10万PV的时候，SQLite 超过 Access 的并发能力已经绰绰有余;生成静态页后更无需考虑数据库的并发问题\r\n \r\n2、在大数据量的情况下表现较差 但是中小站点一般情况下数据量不超过10万，而SQlite 在 100 万数据量之下表现还不错，因为省掉了对数据库服务器的远程连接甚至会更快\r\n \r\n3、写入较慢 默认配置下的 SQlite 的写入速度比MySQL慢了很多，但是 CMS 应用场景的写入操作较少。在插入新文章的时候基本感受不到慢。集中的写数据库操作只有在安装的时候会出现，不过只出现一次，可以忽略\r\n \r\n4、为已有的表加索引较慢 但是在中小站点CMS中不会有这样的需求，可以忽略\r\n \r\n5、无法将 MySQL 部署到与前端机不同的服务器上，但是中小站点也没有分开部署的需求','2021-01-29 17:00:39.075005','2021-01-29 17:00:39.077014','Sqlite和mysql的区别及优缺点',1,1,1),(3,'测试markdown','# 一级标题\r\n\r\n## 二级标题\r\n\r\n### 三级标题\r\n\r\n<font face=\"黑体\">我是黑体字</font>\r\n<font face=\"微软雅黑\">我是微软雅黑</font>\r\n<font face=\"STCAIYUN\">我是华文彩云</font>\r\n<font color=#0099ff size=12 face=\"黑体\">黑体</font>\r\n<font color=gray size=5>gray</font>\r\n<font color=#00ffff size=3>null</font> \r\n\r\n- 列表项1\r\n- 列表项2\r\n- 列表项3\r\n\r\n> 这是一段引用     \r\n\r\n    这是代码（连续四个空格）\r\n\r\n    @register.inclusion_tag(\'comments/inclusions/_form.html\', takes_context=True)\r\n    def show_comment_form(context, post, form=None)：\r\n\r\n[图片alt](图片地址 \'\'图片title\'\')\r\n\r\n图片alt就是显示在图片下面的文字，相当于对图片内容的解释。\r\n图片title是图片的标题，当鼠标移到图片上时显示的内容。title可加可不加\r\n\r\n\r\n\r\n![睡虎地秦简](https://pic1.zhimg.com/50/v2-adbfa19b37a00c7d9369f797500d8ba5_hd.jpg?source=1940ef5c \"shuihudi \") \r\n\r\n![blockchain](https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/\r\nu=702257389,1274025419&fm=27&gp=0.jpg \"区块链\")\r\n\r\n\r\n**这是加粗的文字**\r\n\r\n*这是倾斜的文字*` \r\n\r\n***这是斜体加粗的文字*** \r\n\r\n~~这是加删除线的文字~~\r\n\r\n\r\n表头|表头|表头\r\n---|:--:|---:\r\n内容|内容|内容\r\n内容|内容|内容\r\n\r\n第二行分割表头和内容。\r\n- 有一个就行，为了对齐，多加了几个\r\n文字默认居左\r\n-两边加：表示文字居中\r\n-右边加：表示文字居右\r\n注：原生的语法两边都要用 | 包起来。此处省略\r\n\r\n姓名|技能|排行\r\n--|:--:|--:\r\n刘备|哭|大哥\r\n关羽|打|二哥\r\n张飞|骂|三弟\r\n\r\n\r\n---\r\n\r\n\r\n\r\n\r\n\r\n```\r\ngraph LR\r\nA-->B\r\n```\r\n\r\n```\r\nsequenceDiagram\r\nA->>B: How are you?\r\nB->>A: Great!\r\n```','2021-01-29 17:45:59.410510','2021-02-01 16:55:35.560432','测试语法',1,1,31),(4,'光荣在于平淡，艰巨在于漫长','光荣个屁，艰巨个六','2021-02-01 09:26:56.149913','2021-02-01 09:26:56.151912','这是摘要部分',1,4,0),(5,'明明是个强人 却天生一副熊样','明明是个强人 却天生一副熊样','2021-02-01 09:29:50.405325','2021-02-01 09:30:07.703413','这是摘要部分',1,4,0),(7,'历史上最早的实物家信','#一、\r\n 1975年，在湖北省云梦县发现了轰动世界的“睡虎地秦墓竹简”，其中一墓葬中两块写满文字的木牍，引起了考古人员极大的兴趣。通过本牍上的文字发现，我们得知墓主人是战国晚期一个普通的秦国士兵，而写满文字的木牍，竟是当时的他们写的家信。这片20多厘米长的木牍，为我们展示了那个波澜壮阔的时代下，小人物的一思一念。\r\n这是我国历史上最早的实物家信。\r\n睡虎地竹简这两封中国历史上现存的最早的家书是由秦军士兵黑夫和惊兄弟二人写给其长兄衷的，\r\n\r\n出自湖北云梦县睡虎地4号墓，是衷的陪葬，由黑夫和惊的驻地淮阳寄至其家乡安陆（今云梦县）。\r\n\r\n#二、灭楚之战\r\n这两封家书是那个波澜壮阔的大时代下小人物的缩影。公元前238年秦王政铲除了丞相吕不韦和长信侯嫪毐集团，开始亲政。秦王政在李斯、尉缭等人的协助下制定了“灭诸侯，成帝业，为天下一统”的策略。\r\n    具体的措施是：笼络燕齐，稳住魏楚，消灭韩赵；远交近攻，逐个击破。\r\n    公元前225年，秦国开启了灭楚之战，由亡燕名将李信领兵20万攻打，但遭遇了统一之战中罕见的大败：楚军在名将项燕的率领下紧紧跟随秦军，三天三夜都不停下来休息，终于大败李信军。为了消灭实力雄厚的楚国，秦王赢政亲自去请老将王翦出马，下令除必须留下防守边境的军队，所有能动员的军马都交给了大将军王翦，共计大军60万，灭楚战争共延续了两年。 而这两封家书，就写于这场秦灭楚的战争中。\r\n#三、黑夫信牍文：\r\n       二月辛巳，黑夫、惊敢再拜问衷，母毋恙也？黑夫、惊毋恙也。前日黑夫与惊别，今复会矣。黑夫寄益就书曰：遗黑夫钱，母操夏衣来。今书节（即）到，母视安陆丝布贱，可以为襌裙襦者，母必为之，令与钱偕来。其丝布贵，徒〔以〕钱来，黑夫自以布此。黑夫等直佐淮阳，攻反城久，伤未可智（知）也，愿母遗黑夫用勿少。书到皆为报，报必言相家爵来未来，告黑夫其未来状。闻王得苟得…（转背面）毋恙也？辞相家爵不也？书衣之南军毋……不也？为黑夫、惊多问姑姊、康乐孝须（嬃）故尤长姑外内（？）……为黑夫、惊多问东室季须（嬃）苟得毋恙也？为黑夫、惊多问婴记季事可（何）如？定不定？为黑夫、惊多问夕阳 吕婴、匾里 阎诤丈人得毋恙……矣。惊多问新负（妇）、妴（婉）得毋恙也？新负勉力视瞻丈人，毋与……勉力也。惊信牍文：惊敢大心问衷，母得毋恙也？家室外内同……以衷，母力毋恙也？与从军，与黑夫居，皆毋恙也。……钱衣，愿母幸遣钱五、六百，布谨善者毋下二丈五尺。……用垣柏钱矣，室弗遗，即死矣。急急急。惊多问新负、妴皆得毋恙也？新负勉力视瞻两老……（转背面）惊远家故，衷教诏妴，令毋敢远就若取新（薪），衷令……闻新地城多空不实者，且令故民有为不如令者实……为惊祠祀，若大发（废）毁，以惊居反城中故。 惊敢大心问姑秭（姐），姑秭（姐）子彦得毋恙……？新地入盗，衷唯毋方行新地，急急急。\r\n#四、\r\n写第一封信的时候，惊还在攻打淮阳城。写第二封信时，淮阳已经被秦军攻打了下来。但不久又被楚国重新占领。在惊家书所说的“新地”，并非一个具体的地名，而是说秦军所新占领的地方。那么，我们不禁会问，黑夫，还有刚娶了新媳妇的惊，最后是否回到了故乡？很遗憾，真相往往是残酷的。两封家书出土于云梦睡虎地4号墓，而墓主就是哥哥：衷。哥哥的墓葬极为简陋，只有两封家书，还有书写用的笔砚墨。这说明，极有可能，黑夫与惊和家里有关的东西，就只剩下了这两封信。 泽国江山入战图，生民何计乐樵苏。凭君莫话封侯事，一将功成万骨枯。我们再回首看那段历史，我们记住了雄才大略的秦始皇，我们记住了用兵最精的起牧翦颇，但我们却难以记得，成千上万如你我一般，沉浮在大潮之中的普通人。不断发现，不断思考，这也正是历史的魅力之所在吧。\r\n\r\n作者：小马哥\r\n链接：https://www.zhihu.com/question/338924445/answer/778585463\r\n来源：知乎\r\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。','2021-02-01 16:12:24.535214','2021-02-01 16:24:39.663844','小人物的历史',1,3,1),(8,'豆棚瓜架雨如丝，料应厌作人间语，爱听秋坟鬼唱诗','大家看古书的时候，会不会因为衔蝉无肠公子一类的名字感到疑惑。这类一物多名的习惯，来源于中国的避讳观念，人的名字是需要避讳的，妖怪的名字也是有避讳的，如果你知道了妖怪的真名，你就可以不被它侵害，甚至可以侵害它。\r\n\r\n无肠公子是螃蟹精的自称，\r\n\r\n衔蝉是猫的别称。\r\n\r\n仙人是树妖的自称，\r\n\r\n虞吏是虎妖的自称。\r\n\r\n人君是猴子成精之后的自称。\r\n\r\n此外还有卯日称丈人者，兔也。称东王父者，麋也。称西王母者，鹿也。辰日称雨师者，龙也。称河伯者，鱼也。称无肠公子者，蟹也。巳日称寡人者，社中蛇也。称时君者，龟也。\r\n\r\n知其名讳，便不为其所害，这个是东西方玄学界的共识，西方传说，一个魔法师如果被别人知道了他的真名，就可以杀死他，或者让他成为自己的奴隶。\r\n\r\n在中国也有黄帝遇神兽白泽，神兽白泽能说人话，通万物之情，通晓天下鬼神万物状貌，更知天下所有鬼怪的真名，白泽对黄帝诉说了天下鬼怪的真名。后有白泽图，宣万鬼妖怪之名，令人不被鬼怪侵害，这里摘录的，是《抱朴子》对妖怪真名的记载','2021-02-02 09:06:17.103217','2021-02-02 09:06:17.105216','人的名字是需要避讳的，妖怪的名字也是有避讳的',1,3,1),(9,'日他妈的文学','1983年3月，路遥的小说《人生》获第二届全国中篇小说奖，他给弟弟王天乐打电话报喜，说手头一分钱也没有，到北京领奖的路费凑不够，急需弟弟帮忙想办法，天乐借了500元，赶到西安火车站当场买票，将路遥送上了去北京的火车。8年过后，1991年3月，《平凡的世界》获得第三届“茅盾文学奖”，路遥将消息告诉在延安富县采访的弟弟时，电话两端的兄弟，很长时间没有说话，心情都很复杂。接着路遥说他钱不得够，需要弟弟为他想法筹借一笔钱去北京用以领奖买书等事用，无奈之下天乐敲开了时任延安地委副书记冯文德办公室的门，听了天乐的话惊呆了这位副书记，他出门去找到五千块钱。离开西安去北京领奖那天，天乐从延安赶到西安火车站将怀揣的5000元钱直接送到路遥手中，对路遥说：你今后再不要获什么奖了，人民币怎么都好说，如果你拿了诺贝尔文学奖，去那里是要外汇的，我可搞不到！路遥只说了一句：日他妈的文学！便头也不回的进了火车站。\r\n\r\n作者：伟大的人民\r\n链接：https://www.zhihu.com/question/52107835/answer/233674862\r\n来源：知乎\r\n著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。','2021-02-02 09:17:53.408125','2021-02-02 09:17:53.410125','路遥领奖',1,3,0),(10,'清华园日记','1.所谓看女子篮球者实在就是去看大腿。说真的，不然的话，谁还去看呢？附中女同学大腿倍儿黑，只看半场而返。 \r\n\r\n2.没做什么有意义的事——妈的，这些混蛋教授，不但不知道自己泄气，还整天考，不是你考，就是我考，考他娘的什么东西？\r\n\r\n 3.今天看了一部旧小说，《石点头》，短篇的，描写并不怎样秽亵，但不知为什么，总容易引起我的性欲。我今生没有别的希望，我只希望，能多日几个女人，〈和〉各地方的女人接触。\r\n\r\n 4.过午考criticism（批评方法），考题非常讨厌，苦坐两小时，而答得仍很少，又不满意——管他娘，反正考完了。 \r\n\r\n5.昨晚在床上预备了许多书，预备今天晚起看的。然后因为昨晚喝水太多，又吃梨，刚一醒就想撒尿，虽然竭力忍耐着，在床上躺下去，终于不行。\r\n\r\n 6.开始作论文，真是“论”无可“论”。 晚上又作了一晚上，作了一半。 听别人说，毕业论文最少要作二十页。 说实话，我真写不了二十页，但又不能不勉为其难，只好硬着头皮干了。\r\n\r\n7.论文终于抄完了。东凑西凑，七抄八抄，这就算是毕业论文。论文虽然当之有愧， 毕业却真的毕业了。 晚上访朱光潜闲谈。朱光潜真是十八成好人，非常frank。','2021-02-02 09:51:04.471532','2021-02-02 09:53:50.156669','摘自季羡林《清华园日记》',1,3,0),(11,'教育的目标','我们的教育目标是要培育一个全面发展的人，他的实现是以共产主义为基本目标，以社会主义体制为基础的。\r\n以教育打通他和社会的关联，通过建设他贡献社会的精神和能力，以他自觉地在社会关系中不断利于他人的创造，从而实现他不断地开拓自我，发展自我。最终达成个人在社会中的全面发展，社会在个人发展中的全面进步。\r\n因为，一个人的发展，如果父母真的是为他好，是以利于孩子为目的发展他，那这个孩子最后培育出来，他必定不是反社会体制的，而是最合社会体制的，他不是处处受制约和削弱的，反而是全面生长的，他恰恰是强有力地利于他人和社会，从而才能不断地在社会生活中利于己。\r\n\r\n就是把共产主义社会体制融合在个体中。','2021-02-02 10:06:07.206529','2021-02-02 10:06:07.208530','就是把共产主义社会体制融合在个体中',1,5,1),(12,'苏轼与佛印故事','</p><p><strong>还施彼身</strong></p><p>苏东坡以诗文著称，与人谈话常藏机锋。一次他和老友佛印对坐闲聊，苏东坡忽然有意要戏弄一下对方, 便說：“古人常常以僧对鸟。”佛印不高兴了，便问：“何以见得? ”苏东坡笑答：“比如‘鸟宿池边村，僧敲月下门’；还有‘时闻啄木鸟, 疑是敲门僧’，是不是這样? ”</p><p>佛印听了略一思索, 冷不丁說：“今日老僧却与相公相对。”</p><p>苏东坡本想把佛印和鸟归在一类，嘲讽一番，不想佛印机敏过人，一句话便把苏东坡当成了“鸟”。苏东坡一时竟无言可对。</p><p><img src=\"http://image109.360doc.com/DownloadImg/2019/04/2113/159399831_2_20190421013704706.png\"/></p><p><strong>东坡吃草 </strong></p><p>闲来无事，苏轼去金山寺拜访佛印大师，没料到大师不在，一个小沙弥来开山门。</p><p>苏轼傲声道：“秃驴何在？！”</p><p>小沙弥一指远方，答道：“东坡吃草！”</p><p><strong>酷似佛祖</strong></p><p>一次苏东坡和佛印和尚在林中打坐，日移竹影，一片寂然。很久了，佛印对苏东坡说：“观君坐姿，酷似佛祖。”</p><p>苏东坡心中欢喜，看到佛印的褐色袈裟逶迤在地，就对佛印说：“上人坐姿，活像一堆牛粪。”</p><p>佛印和尚听罢，只是微微一笑而已。</p><p>苏东坡心想这回让佛印和尚吃了一记闷亏，暗暗得意，回家禁不住悄悄告诉苏小妹。</p><p>想不到苏小妹却说：“哥，你又输了！试想佛印以佛心看你似佛，而你又是以什么样的心情来看佛印呢？”\r\n</p><p><strong>对哑联</strong></p><p>苏东坡被贬黄州后一居数年。一天傍晚，他和好友佛印和尚泛舟长江。苏轼忽然用手往左岸一指，笑而不语。佛印顺势望去，只见一条黄狗正在啃骨头，顿有所悟，随即将自己手中题有苏东坡诗句的蒲扇抛入水中。两人心照不宣，对视大笑。</p><p>原来，这是一副哑联。苏轼上联的意思是：狗啃河上（和尚）骨。佛印下联的意思是：水流东坡尸（东坡诗）。</p><p><strong>巫山河水 </strong></p><p>一次，苏轼约其弟苏辙并佛印大师结伴同游。</p><p>佛印即兴出句：无山得似巫山好。关键在“无”、“巫”谐音。</p><p>苏辙对上：何叶能如荷叶圆。</p><p>苏轼听了，对弟弟说：以“何荷”对“无巫”的谐音，固然不错，但改作这样是否更好些：何水能如河水清。</p><p>佛印与苏辙听了，表示赞同，以“水”对“山”，胜在对仗更加工稳啊。</p><p><img src=\"http://image109.360doc.com/DownloadImg/2019/04/2113/159399831_4_2019042101370519.png\"/></p><p><strong>其人之计 </strong></p><p>佛印从苏东坡那儿学会了做“东坡鱼”。一天，他也做了一份，正要吃，苏东坡的声音从门外传来了。佛印也想给苏东坡开个玩笑，于是赶忙把那份鱼藏在磬头里。苏东坡一跨进大殿便闻到一阵鱼香，并见大磬里香气四溢，于是开口问道：“大法师，本学士今天想请教一件事，问完就走。”</p><p>佛印暗喜：这个大胡子今天要抄袭我的招式，可别让他的高帽子把我蒙晕了。</p><p>佛印小心地回答：“大胡子有话请讲，看看难倒大学士的是否也能难倒我。”</p><p>苏东坡边想边说：“我写书的时候要引用一副对联，可是想起了上联，却又记不起下联，那副上联是‘向阳门第春常在’。”</p><p>佛印心想：此联没有“鱼”，该不会是想把我绕糊涂了再问？于是张口回答:“下联是‘积善人家庆有余’。”</p><p>苏东坡哈哈大笑：“既然是‘磬’有‘鱼’，那你就快点把鱼端出来吧！”</p><p>佛印一听连呼上当：“哎呀！我只去想对联里是否有‘鱼’字，哪想到‘庆有余’和‘磬有鱼’是两个同音字？阿弥陀佛，阿弥陀佛……”</p>','2021-02-02 10:38:26.727927','2021-02-02 11:39:22.146673','东坡与佛印',1,3,3),(13,'Django设置 DEBUG=False后静态文件无法加载解决','出现的问题根本原因是：当我们在开发django应用时如果设置了 DEBUG = True，那么django便会自动帮我们对静态文件进行路由；但是当我们设置debug=Flase后，\'django.contrib.staticfiles’会关闭，即Django不会自动搜索静态文件。这一功能便没有了，此时静态文件就会出现加载失败的情况，想要让静态文件正常显示，我们就需要配置静态文件服务了。参考官方文档.\r\n<https://docs.djangoproject.com/en/2.0/howto/static-files/>\r\n\r\n静态文件访问不到出现的两个问题\r\n一 页面排版不正常，即css文件不能正常加载；\r\n\r\n二 通过url不能访问静态文件，如图片等。例如访问http://127.0.0.1:8000/static/img/example.png会显示404页面。\r\n\r\n这里提供几种解决方法：\r\n\r\n##解决办法一：\r\n\r\n在DEBUG为False时需要我们手动指定静态资源目录，并配置映射关系。 在正式环境下不建议采用django处理静态资源文件，这样对应用服务器压力较大，也不好做cdn。可以用nginx,apache部署静态资源。\r\n\r\n#####1.首先修改setting.py文件\r\n\r\n    STATIC_URL = \'/static/\'\r\n\r\n    STATIC_ROOT = \'static\' ## 新增行 \r\n    STATICFILES_DIRS = [\r\n      os.path.join(BASE_DIR, \'/static/\'), ##修改地方\r\n    ]\r\n \r\n####2.修改url.py文件\r\n\r\n    from django.views import static ##新增\r\n    from django.conf import settings ##新增\r\n    from django.conf.urls import url ##新增\r\n\r\n\r\n    urlpatterns = [\r\n      path(\'\', include(\'user.urls\')),  \r\n    ##　以下是新增\r\n      url(r\'^static/(?P<path>.*)$\', static.serve,\r\n          {\'document_root\': settings.STATIC_ROOT}, name=\'static\'),\r\n    ]\r\n\r\n##解决办法二：\r\n\r\n如果您仍需要本地服务器静态（例如，无需调试进行测试），您可以在不安全模式下运行server,启动服务器命令后面添加\r\n\r\n“–insecure”\r\n\r\n    python manage.py 127.0.0.1:8000 --insecure','2021-02-04 08:52:43.337585','2021-02-04 10:11:08.310143','Django设置 DEBUG=False后静态文件无法加载解决',1,2,20),(14,'django + gunicorn +nginx部署','#部署过程踩坑记录\r\n##1.前提\r\ndjango项目在开发模式正常\r\n已经安装nginx，gunicorn且已经正常。\r\n\r\n运行命令：\r\n\r\n    pipenv run gunicorn blogp_roject.wsgi:myblog -w 2 -k gthread -b 0.0.0.0:8000\r\n##提示找不到 blog module\r\n怀疑下划线问题，修改文件夹名字及受影响的字符名字。\r\n继续运行，提示端口被占用\r\n\r\n     netstat -ntlp \r\n\r\n     kill -9 PID\r\n然后继续运行\r\n##提示myblog.wsgi 不存在\r\n命令错了（大坑！！）\r\n错误格式\r\n\r\n    pipenv run gunicorn blogproject.wsgi -w 2 -k gthread -b 0.0.0.0:8000\r\n正确格式 \r\n\r\n    pipenv run gunicorn myhub.wsgi:application -w 17 -k gthread -b 0.0.0.0:8000\r\n正常了！','2021-02-04 19:03:39.091607','2021-02-18 10:04:03.530991','django部署过程踩坑记录',1,2,82),(15,'Django 项目启动顺序','# 1 检查ip\r\n 如果主机切换了网络环境，则需要修改两处：\r\n\r\n1.修改内网穿透部分\r\n\r\n2.修改数据库连接部分\r\n\r\n如果网络环境未切换，则跳过本步骤\r\n# 2 检查Nginx\r\n如果未启动，则手动启动\r\n\r\n````sudo nginx````\r\n#3 启动项目\r\n先查看进程是否存在\r\n\r\n    netstat  -anp  |grep 8000 \r\n如果存在先杀掉\r\n\r\n    kill -9 pid\r\n然后开启\r\n\r\n    pipenv run gunicorn -c config_gunicorn.py myhub.wsgi:application','2021-02-18 09:48:26.978517','2021-02-18 10:01:26.020410','项目启动顺序',1,1,26);
/*!40000 ALTER TABLE `myblog_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myblog_post_tags`
--

DROP TABLE IF EXISTS `myblog_post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myblog_post_tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `myblog_post_tags_post_id_tag_id_bfecd288_uniq` (`post_id`,`tag_id`),
  KEY `myblog_post_tags_tag_id_adc76b5f_fk_myblog_tag_id` (`tag_id`),
  CONSTRAINT `myblog_post_tags_post_id_2f7e3c78_fk_myblog_post_id` FOREIGN KEY (`post_id`) REFERENCES `myblog_post` (`id`),
  CONSTRAINT `myblog_post_tags_tag_id_adc76b5f_fk_myblog_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `myblog_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myblog_post_tags`
--

LOCK TABLES `myblog_post_tags` WRITE;
/*!40000 ALTER TABLE `myblog_post_tags` DISABLE KEYS */;
INSERT INTO `myblog_post_tags` VALUES (1,1,1),(2,2,3),(3,3,1),(4,4,2),(5,5,2),(7,7,2),(8,8,2),(9,9,2),(10,10,2),(11,11,4),(12,12,2),(13,13,1),(14,14,1),(15,15,1);
/*!40000 ALTER TABLE `myblog_post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `myblog_tag`
--

DROP TABLE IF EXISTS `myblog_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `myblog_tag` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myblog_tag`
--

LOCK TABLES `myblog_tag` WRITE;
/*!40000 ALTER TABLE `myblog_tag` DISABLE KEYS */;
INSERT INTO `myblog_tag` VALUES (1,'python'),(2,'故事'),(3,'数据库'),(4,'想法');
/*!40000 ALTER TABLE `myblog_tag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-23 10:03:00
