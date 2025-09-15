-- MySQL dump 10.19  Distrib 10.3.38-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: empleos
-- ------------------------------------------------------
-- Server version	10.3.38-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `state_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` smallint(6) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`),
  KEY `cities_state_id_foreign` (`state_id`),
  CONSTRAINT `cities_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,1,'Santísima Trinidad','santisima-trinidad',1,'2023-05-20 13:16:18','2023-05-20 13:16:36',NULL),(2,1,'Riberalta','riberalta',1,'2023-05-20 16:24:12','2023-05-20 16:24:12',NULL),(3,1,'Guayaramerin','guayaramerin',1,'2023-05-20 16:24:25','2023-05-20 16:24:25',NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'Bolivia','2023-05-20 13:14:43','2023-05-20 13:14:43',NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_rows`
--

DROP TABLE IF EXISTS `data_rows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_rows` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int(10) unsigned NOT NULL,
  `field` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'{}',1),(2,1,'name','text','Nombre',1,1,1,1,1,1,'{}',4),(3,1,'email','text','Email',1,1,1,1,1,1,'{}',3),(4,1,'password','password','Password',1,0,0,1,1,0,'{}',5),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,'{}',6),(6,1,'created_at','timestamp','Creado',0,1,1,0,0,0,'{}',12),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',13),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,'{}',2),(9,1,'user_belongsto_role_relationship','relationship','Rol',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}',9),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,0,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',10),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,'{}',11),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,'{}',1),(17,3,'name','text','Nombre',1,1,1,1,1,1,'{}',2),(18,3,'created_at','timestamp','Creado',0,0,0,0,0,0,'{}',3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),(20,3,'display_name','text','Display Name',1,0,0,0,0,0,'{}',5),(21,1,'role_id','text','Role',0,1,1,1,1,1,'{}',8),(22,4,'id','text','Id',1,1,1,0,0,0,'{}',1),(23,4,'key','text','Clave',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:191\"},\"display\":{\"width\":6}}',2),(24,4,'table_name','text','Tabla',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:191\"},\"display\":{\"width\":6}}',3),(25,4,'created_at','timestamp','Creado',0,1,1,0,0,0,'{}',4),(26,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(27,1,'email_verified_at','timestamp','Email Verified At',0,0,1,1,1,1,'{}',7),(28,5,'id','text','Id',1,1,1,0,0,0,'{}',1),(29,5,'name','text','Nombre',0,1,1,1,1,1,'{}',2),(30,5,'description','text_area','Descripción',0,1,1,1,1,1,'{}',4),(31,5,'status','checkbox','Estado',0,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true}',5),(32,5,'created_at','timestamp','Registrado',0,1,1,0,0,0,'{}',6),(33,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(34,5,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',8),(35,6,'id','text','Id',1,1,1,0,0,0,'{}',1),(36,6,'job_type_id','text','Job Type Id',0,1,1,1,1,1,'{}',2),(37,6,'name','text','Nombre',0,1,1,1,1,1,'{}',4),(38,6,'description','text_area','Descripción',0,1,1,1,1,1,'{}',6),(39,6,'status','checkbox','Estado',0,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true}',7),(40,6,'created_at','timestamp','Registrado',0,1,1,0,0,0,'{}',8),(41,6,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(42,6,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',10),(43,7,'id','text','Id',1,1,1,0,0,0,'{}',1),(44,7,'name','text','Nombre',0,1,1,1,1,1,'{}',2),(45,7,'created_at','timestamp','Created At',0,1,1,0,0,0,'{}',3),(46,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),(47,7,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',5),(48,8,'id','text','Id',1,1,1,0,0,0,'{}',1),(49,8,'country_id','text','Country Id',0,1,1,1,1,1,'{}',2),(50,8,'name','text','Nombre',0,1,1,1,1,1,'{}',4),(51,8,'created_at','timestamp','Registrado',0,1,1,0,0,0,'{}',5),(52,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(53,8,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',7),(54,8,'state_belongsto_country_relationship','relationship','País',1,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Country\",\"table\":\"countries\",\"type\":\"belongsTo\",\"column\":\"country_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"cities\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(55,9,'id','text','Id',1,1,1,0,0,0,'{}',1),(56,9,'state_id','text','State Id',0,1,1,1,1,1,'{}',2),(57,9,'name','text','Nombre',0,1,1,1,1,1,'{}',4),(58,9,'slug','hidden','Slug',1,0,0,1,1,1,'{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}',5),(59,9,'status','checkbox','Estado',0,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true}',6),(60,9,'created_at','timestamp','Created At',0,1,1,0,0,0,'{}',7),(61,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(62,9,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',9),(63,9,'city_belongsto_state_relationship','relationship','Departamento',1,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\State\",\"table\":\"states\",\"type\":\"belongsTo\",\"column\":\"state_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"cities\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(64,6,'slug','hidden','Slug',1,0,0,1,1,1,'{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}',5),(65,5,'slug','hidden','Slug',1,0,0,1,1,1,'{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}',3),(66,6,'job_belongsto_job_type_relationship','relationship','Área profesional',1,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\JobType\",\"table\":\"job_types\",\"type\":\"belongsTo\",\"column\":\"job_type_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"cities\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(67,10,'id','text','Id',1,1,1,0,0,0,'{}',1),(68,10,'person_id','text','Person Id',0,1,1,1,1,1,'{}',2),(69,10,'details','text','Detalles',0,1,1,1,1,1,'{}',3),(70,10,'status','checkbox','Estado',0,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true}',4),(71,10,'created_at','timestamp','Registrado',0,1,1,0,0,0,'{}',5),(72,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(73,10,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',7),(74,11,'id','text','Id',1,1,1,0,0,0,'{}',1),(75,11,'city_id','text','City Id',0,1,1,1,1,1,'{}',2),(76,11,'job_id','text','Job Id',0,1,1,1,1,1,'{}',4),(77,11,'first_name','text','Nombre',0,1,1,1,1,1,'{}',6),(78,11,'last_name','text','Apellidos',0,1,1,1,1,1,'{}',7),(79,11,'dni','text','CI',1,1,1,1,1,1,'{}',8),(80,11,'gender','text','Género',0,1,1,1,1,1,'{}',9),(81,11,'birthday','date','Fecha nac.',0,1,1,1,1,1,'{}',10),(82,11,'phone','text','Celular',0,1,1,1,1,1,'{}',11),(83,11,'address','text_area','Dirección',0,1,1,1,1,1,'{}',12),(84,11,'photo','image','Foto',0,0,1,1,1,1,'{}',13),(85,11,'video','text','Video',0,0,1,1,1,1,'{}',14),(86,11,'short_description','text','Short Description',0,0,1,1,1,1,'{}',15),(87,11,'long_description','text','Long Description',0,0,1,1,1,1,'{}',16),(88,11,'type','text','Type',0,1,1,1,1,1,'{}',17),(89,11,'status','text','Status',0,0,1,1,1,1,'{}',18),(90,11,'created_at','timestamp','Registrado',0,1,1,0,0,0,'{}',19),(91,11,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',20),(92,11,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',21),(93,11,'person_belongsto_city_relationship','relationship','Ciudad',1,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"cities\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(94,11,'person_belongsto_job_relationship','relationship','Profesión',1,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Job\",\"table\":\"jobs\",\"type\":\"belongsTo\",\"column\":\"job_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"cities\",\"pivot\":\"0\",\"taggable\":\"0\"}',5);
/*!40000 ALTER TABLE `data_rows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_types`
--

DROP TABLE IF EXISTS `data_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `display_name_singular` varchar(255) NOT NULL,
  `display_name_plural` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `model_name` varchar(255) DEFAULT NULL,
  `policy_name` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-06-02 17:55:30','2022-08-14 23:31:50'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2021-06-02 17:55:30','2021-06-02 17:55:30'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-06-02 17:55:31','2022-08-14 23:40:05'),(4,'permissions','permissions','Permiso','Permisos','voyager-list','App\\Models\\Permission',NULL,NULL,NULL,1,0,'{\"order_column\":\"table_name\",\"order_display_column\":\"table_name\",\"order_direction\":\"asc\",\"default_search_key\":null}','2022-05-24 15:21:20','2022-05-24 15:21:20'),(5,'job_types','job-types','Área profesional','Áreas profesionales','voyager-list','App\\Models\\JobType',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2023-05-20 13:05:45','2023-05-20 15:44:25'),(6,'jobs','jobs','Profesión','Profesiones','voyager-list','App\\Models\\Job',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2023-05-20 13:06:43','2023-05-20 15:44:44'),(7,'countries','countries','País','Paises','voyager-list','App\\Models\\Country',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2023-05-20 13:10:44','2023-05-20 13:10:44'),(8,'states','states','Departamento','Departamentos','voyager-list','App\\Models\\State',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2023-05-20 13:11:25','2023-05-20 15:43:57'),(9,'cities','cities','Ciudad','Ciudades','voyager-list','App\\Models\\City',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2023-05-20 13:12:57','2023-05-20 15:45:16'),(10,'job_offers','job-offers','Oferta de trabajo','Ofertas de trabajos','voyager-news','App\\Models\\JobOffer',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2023-05-26 14:31:03','2023-05-26 14:31:03'),(11,'people','people','Persona','Personas','voyager-person','App\\Models\\Person',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2023-05-29 16:13:57','2023-05-29 16:16:34');
/*!40000 ALTER TABLE `data_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_applications`
--

DROP TABLE IF EXISTS `job_applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_applications` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` bigint(20) unsigned DEFAULT NULL,
  `job_offer_id` bigint(20) unsigned DEFAULT NULL,
  `details` text DEFAULT NULL,
  `status` smallint(6) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_applications_person_id_foreign` (`person_id`),
  KEY `job_applications_job_offer_id_foreign` (`job_offer_id`),
  CONSTRAINT `job_applications_job_offer_id_foreign` FOREIGN KEY (`job_offer_id`) REFERENCES `job_offers` (`id`),
  CONSTRAINT `job_applications_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_applications`
--

LOCK TABLES `job_applications` WRITE;
/*!40000 ALTER TABLE `job_applications` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_offers`
--

DROP TABLE IF EXISTS `job_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_offers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` bigint(20) unsigned DEFAULT NULL,
  `details` text DEFAULT NULL,
  `status` smallint(6) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_offers_person_id_foreign` (`person_id`),
  CONSTRAINT `job_offers_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_offers`
--

LOCK TABLES `job_offers` WRITE;
/*!40000 ALTER TABLE `job_offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_types`
--

DROP TABLE IF EXISTS `job_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `status` smallint(6) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `job_types_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_types`
--

LOCK TABLES `job_types` WRITE;
/*!40000 ALTER TABLE `job_types` DISABLE KEYS */;
INSERT INTO `job_types` VALUES (1,'Otra',NULL,'otra',1,'2023-05-20 13:24:23','2023-05-20 13:24:23',NULL),(2,'Medicina',NULL,'medicina',1,'2023-05-20 13:24:30','2023-05-20 13:24:30',NULL),(3,'Administración pública',NULL,'administracion-publica',1,'2023-05-20 13:24:46','2023-05-20 13:24:46',NULL),(4,'Transporte',NULL,'transporte',1,'2023-05-20 13:24:52','2023-05-20 13:24:52',NULL),(5,'Construcción',NULL,'construccion',1,'2023-05-20 13:25:00','2023-05-20 13:25:00',NULL),(6,'Tecnología',NULL,'tecnologia',1,'2023-05-20 13:24:23','2023-05-20 13:24:23',NULL);
/*!40000 ALTER TABLE `job_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `job_type_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `status` smallint(6) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jobs_slug_unique` (`slug`),
  KEY `jobs_job_type_id_foreign` (`job_type_id`),
  CONSTRAINT `jobs_job_type_id_foreign` FOREIGN KEY (`job_type_id`) REFERENCES `job_types` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,6,'Ingeniero de sistemas','ingeniero-de-sistemas',NULL,1,'2023-05-20 13:29:14','2023-05-20 13:29:14',NULL),(2,5,'Albañil','albanil',NULL,1,'2023-05-20 16:06:20','2023-05-20 16:06:20',NULL),(3,2,'Doctor','doctor',NULL,1,'2023-05-20 16:24:53','2023-05-20 16:24:53',NULL),(4,3,'Contador','contador',NULL,1,'2023-05-20 16:25:10','2023-05-20 16:25:10',NULL),(5,4,'Chofer','chofer',NULL,1,'2023-05-20 16:25:22','2023-05-20 16:25:22',NULL),(6,1,'Semiocioso','semiocioso',NULL,1,'2023-05-20 16:36:49','2023-05-20 16:36:49',NULL),(7,1,'sin profecion','sin-profecion',NULL,1,'2023-05-22 10:19:32','2023-05-22 10:19:32',NULL),(8,1,'ventera','ventera',NULL,1,'2023-05-22 10:38:12','2023-05-22 10:38:12',NULL),(9,1,'estudiante','estudiante',NULL,1,'2023-05-22 10:51:07','2023-05-22 10:51:07',NULL),(12,6,'secretario','secretario',NULL,1,'2023-05-22 12:42:50','2023-05-22 12:42:50',NULL),(13,1,'tecnico en industria de alimentos','tecnico-en-industria-de-alimentos',NULL,1,'2023-05-22 12:50:31','2023-05-22 12:50:31',NULL),(14,5,'mecánica electrónica','mecanica-electronica',NULL,1,'2023-05-22 12:52:24','2023-05-22 12:52:24',NULL),(15,3,'economista','economista',NULL,1,'2023-05-22 22:52:47','2023-05-22 22:52:47',NULL),(16,1,'Administradora','administradora',NULL,1,'2023-05-24 09:44:32','2023-05-24 09:44:32',NULL),(17,1,'estudiante universitario','estudiante-universitario',NULL,1,'2023-05-24 11:12:26','2023-05-24 11:12:26',NULL),(21,1,'universitario','universitario',NULL,1,'2023-05-31 22:42:53','2023-05-31 22:42:53',NULL),(22,1,'estudiate universitario','estudiate-universitario',NULL,1,'2023-05-31 23:00:38','2023-05-31 23:00:38',NULL),(23,1,'Relaciones Públicas','relaciones-publicas',NULL,1,'2023-06-27 18:52:22','2023-06-27 18:52:22',NULL),(25,1,'estudiante derecho','estudiante-derecho',NULL,1,'2023-06-27 21:29:16','2023-06-27 21:29:16',NULL),(29,1,'prueba','prueba',NULL,1,'2023-07-04 17:00:22','2023-07-04 17:00:22',NULL),(32,1,'Gastronomia','gastronomia',NULL,1,'2023-07-04 17:55:36','2023-07-04 17:55:36',NULL),(33,1,'atencion al cliente','atencion-al-cliente',NULL,1,'2023-07-04 17:55:53','2023-07-04 17:55:53',NULL),(34,1,'mesero','mesero',NULL,1,'2023-07-04 17:56:04','2023-07-04 17:56:04',NULL),(35,1,'limpieza','limpieza',NULL,1,'2023-07-04 17:56:21','2023-07-04 17:56:21',NULL),(36,1,'ayudante de cocina','ayudante-de-cocina',NULL,1,'2023-07-04 17:56:54','2023-07-04 17:56:54',NULL),(38,1,'tecnico-basico','tecnico-basico',NULL,1,'2023-07-05 20:17:11','2023-07-05 20:17:11',NULL),(39,1,'derecho','derecho',NULL,1,'2023-07-05 21:13:35','2023-07-05 21:13:35',NULL),(40,1,'periodista','periodista',NULL,1,'2023-07-05 21:18:48','2023-07-05 21:18:48',NULL),(43,1,'comunicacion-social','comunicacion-social',NULL,1,'2023-07-05 21:47:48','2023-07-05 21:47:48',NULL),(44,1,'comercio-internacional','comercio-internacional',NULL,1,'2023-07-05 23:00:45','2023-07-05 23:00:45',NULL),(46,1,'ingenieria-comercial','ingenieria-comercial',NULL,1,'2023-07-05 23:06:51','2023-07-05 23:06:51',NULL),(47,1,'comunicaciom-y-marketim','comunicaciom-y-marketim',NULL,1,'2023-07-06 07:27:14','2023-07-06 07:27:14',NULL),(48,2,'medico','medico',NULL,1,'2023-07-06 14:24:01','2023-07-06 14:24:01',NULL),(51,1,'contador-publico','contador-publico',NULL,1,'2023-07-07 01:46:56','2023-07-07 01:46:56',NULL),(52,3,'administrador','administrador',NULL,1,'2023-07-07 09:23:10','2023-07-07 09:23:10',NULL),(53,1,'veterinario','veterinario',NULL,1,'2023-07-07 10:48:51','2023-07-07 10:48:51',NULL),(54,1,'ingeniera-comercial','ingeniera-comercial',NULL,1,'2023-07-07 11:16:38','2023-07-07 11:16:38',NULL),(55,1,'contadora-general','contadora-general',NULL,1,'2023-07-07 12:09:56','2023-07-07 12:09:56',NULL),(56,1,'secretaria-ejecutiva','secretaria-ejecutiva',NULL,1,'2023-07-07 14:57:38','2023-07-07 14:57:38',NULL),(57,1,'estudiante-de-comunicacion-social','estudiante-de-comunicacion-social',NULL,1,'2023-07-12 10:55:41','2023-07-12 10:55:41',NULL),(63,1,'tec-visitador-medico','tec-visitador-medico',NULL,1,'2023-07-15 16:32:53','2023-07-15 16:32:53',NULL),(66,1,'ayudantes-de-cocina','ayudantes-de-cocina',NULL,1,'2023-07-17 09:53:57','2023-07-17 09:53:57',NULL);
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_items`
--

DROP TABLE IF EXISTS `menu_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `parameters` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Inicio','','_self','voyager-home','#000000',NULL,1,'2021-06-02 17:55:32','2021-06-02 14:51:15','voyager.profile','null'),(2,1,'Media','','_self','voyager-images',NULL,5,3,'2021-06-02 17:55:32','2021-06-02 14:07:22','voyager.media.index',NULL),(3,1,'Usuarios','','_self','voyager-person','#000000',11,1,'2021-06-02 17:55:32','2022-05-24 15:06:46','voyager.users.index','null'),(4,1,'Roles','','_self','voyager-lock',NULL,11,2,'2021-06-02 17:55:32','2021-06-02 14:08:05','voyager.roles.index',NULL),(5,1,'Herramientas','','_self','voyager-tools','#000000',NULL,7,'2021-06-02 17:55:32','2023-05-29 16:14:06',NULL,''),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2021-06-02 17:55:33','2021-06-02 14:07:22','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2021-06-02 17:55:33','2021-06-02 14:07:22','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,4,'2021-06-02 17:55:33','2021-06-02 14:07:22','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,5,'2021-06-02 17:55:33','2021-06-02 14:07:23','voyager.bread.index',NULL),(10,1,'Configuraciones','','_self','voyager-settings','#000000',NULL,6,'2021-06-02 17:55:33','2023-05-29 16:14:06','voyager.settings.index','null'),(11,1,'Seguridad','','_self','voyager-lock','#000000',NULL,5,'2021-06-02 14:07:53','2023-05-29 16:14:06',NULL,''),(12,1,'Limpiar cache','','_self','voyager-refresh','#000000',5,6,'2021-06-25 18:03:59','2022-05-24 15:06:32','clear.cache',NULL),(13,1,'Permisos','','_self','voyager-list',NULL,11,3,'2022-05-24 15:21:21','2022-05-24 15:21:31','voyager.permissions.index',NULL),(14,1,'Áreas profesionales','','_self','voyager-list','#000000',19,1,'2023-05-20 13:05:45','2023-05-20 13:28:37','voyager.job-types.index','null'),(15,1,'Profesiones','','_self','voyager-list',NULL,19,2,'2023-05-20 13:06:43','2023-05-20 13:21:33','voyager.jobs.index',NULL),(16,1,'Paises','','_self','voyager-list',NULL,19,3,'2023-05-20 13:10:44','2023-05-20 13:21:34','voyager.countries.index',NULL),(17,1,'Departamentos','','_self','voyager-list',NULL,19,4,'2023-05-20 13:11:25','2023-05-20 13:21:35','voyager.states.index',NULL),(18,1,'Ciudades','','_self','voyager-list',NULL,19,5,'2023-05-20 13:12:57','2023-05-20 13:21:36','voyager.cities.index',NULL),(19,1,'Parématros','','_self','voyager-params','#000000',NULL,3,'2023-05-20 13:21:27','2023-05-29 16:14:06',NULL,''),(20,1,'Ofertas de trabajos','','_self','voyager-news',NULL,NULL,4,'2023-05-26 14:31:04','2023-05-29 16:14:06','voyager.job-offers.index',NULL),(21,1,'Personas','','_self','voyager-person',NULL,NULL,2,'2023-05-29 16:13:57','2023-05-29 16:14:06','voyager.people.index',NULL);
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'admin','2023-05-20 15:48:07','2023-05-20 15:48:07');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2023_05_19_120248_create_countries_table',1),(25,'2023_05_19_155741_create_states_table',1),(26,'2023_05_19_160439_create_cities_table',1),(27,'2023_05_19_160517_create_job_types_table',1),(28,'2023_05_19_160633_create_jobs_table',1),(29,'2023_05_19_160644_create_people_table',1),(31,'2023_05_22_134931_create_job_offers_table',2),(32,'2023_05_23_161844_create_job_applications_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `city_id` bigint(20) unsigned DEFAULT NULL,
  `job_id` bigint(20) unsigned DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `dni` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `long_description` text DEFAULT NULL,
  `type` smallint(1) DEFAULT 1,
  `status` smallint(6) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `people_dni_unique` (`dni`),
  KEY `people_city_id_foreign` (`city_id`),
  KEY `people_job_id_foreign` (`job_id`),
  CONSTRAINT `people_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  CONSTRAINT `people_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,1,1,NULL,'Mejia','10830573','masculino','1991-04-29','75199157','C/ ipurupuro nro 75',NULL,NULL,'Desarrollador full stack y administrador de servidores',NULL,1,1,'2023-05-20 16:03:24','2023-05-29 16:16:52','2023-05-29 16:16:52'),(2,1,2,NULL,'Perez','87687987','masculino','1992-05-15','75199157','C/ 12',NULL,NULL,'nn',NULL,1,1,'2023-05-20 16:06:20','2023-05-29 16:16:59','2023-05-29 16:16:59'),(3,1,2,NULL,'Peña','18277yy','masculino','2023-05-17','67662833','Bahshhh',NULL,NULL,'Nshshha',NULL,1,1,'2023-05-20 16:08:04','2023-05-29 16:17:05','2023-05-29 16:17:05'),(4,1,1,NULL,NULL,'Qtq55',NULL,NULL,'67662833','Jqhahha',NULL,NULL,'',NULL,1,1,'2023-05-20 16:09:14','2023-05-29 16:17:09','2023-05-29 16:17:09'),(5,1,1,NULL,'pitt','7580166','femenino','2000-11-09','75891900','c/ ipurupuru',NULL,NULL,NULL,NULL,1,1,'2023-05-20 16:14:47','2023-05-29 16:17:14','2023-05-29 16:17:14'),(6,1,6,NULL,'Mismo','12345678','masculino','2003-09-21','+59172824354','72824354',NULL,NULL,'Comer y dormir',NULL,1,1,'2023-05-20 16:36:49','2023-05-29 16:17:22','2023-05-29 16:17:22'),(7,3,4,'Felipe','Rodríguez  vargas','5606080','masculino','1986-12-17','73957634','Beni guayaramerin frontera con brazil',NULL,NULL,'Soy administrador de empresa soy lider en mi ciudad presidente cívico tengo experiencia laboral me adapto a cualquier trabajo siempre sea para el beneficio de la administración publica y manejo de una institución,esperemos ser parte de su equipo sabiendo que en mi poblacion carecemos de empleo',NULL,1,1,'2023-05-22 08:25:33','2023-05-22 08:25:33',NULL),(8,2,4,'José Antonio','López Ardaya','78740335','masculino','1988-09-14','78740335','Barrio san jose',NULL,NULL,'Encargado de agencia de venta de motocicletas al contado y al credito',NULL,1,1,'2023-05-22 08:35:26','2023-05-22 08:35:26',NULL),(9,2,7,'Miguel','Puro Cuba','4205003','masculino','2002-12-26','72352587','Av. Reyes Esq.aceitera nro. 286',NULL,NULL,'Soy responsable y puntual en el trabajo',NULL,1,1,'2023-05-22 10:19:32','2023-05-22 10:19:32',NULL),(10,2,4,'Gabriela Maria','Antonio Motsua','12407862','femenino','2008-08-23','69393709','Av. Fuerza Naval Nro. 542',NULL,NULL,'Aun no he trabajado, tengo 14 años y me gustaría trabajar para tener experiencia laboral...',NULL,1,1,'2023-05-22 10:30:32','2023-05-22 10:30:32',NULL),(11,2,8,'Ximena','Guzmán mendoza','10859270','femenino','1995-10-01','74710097','Av.abdon aguilera',NULL,NULL,'Negocios',NULL,1,1,'2023-05-22 10:38:12','2023-05-22 10:38:12',NULL),(12,2,9,'Lidia Carolina','Cortez Cartagena','12687849','femenino','2006-03-27','73372767','Av. Reyes B/ Centenario #546',NULL,NULL,'Ayudante de cocina, ayudante en pasteleria',NULL,1,1,'2023-05-22 10:51:07','2023-05-22 10:51:07',NULL),(13,NULL,12,'Leonardo','Puro muzuco','12408497','masculino','2000-09-12','63567438','Av.Reyes Esq.seitera',NULL,NULL,'Acerradero , moto repuesto',NULL,1,1,'2023-05-22 12:42:50','2023-05-22 12:42:50',NULL),(14,2,13,'Luzdey','Cartagena alvarez','10853251bn','femenino','1992-06-07','76888953','AB Beni mamore/  Pasillo Sin nominar',NULL,NULL,'Auxiliar en producto terminado empresa Eba',NULL,1,1,'2023-05-22 12:50:31','2023-05-22 12:50:31',NULL),(15,2,14,'Kadir subirana','Dominguez','10842457','masculino','1999-07-02','77841878','Av pachiuva',NULL,NULL,'Mecánica electrónica',NULL,1,1,'2023-05-22 12:52:24','2023-05-22 12:52:24',NULL),(16,2,2,'Roger','Ojara Guayao','15685839','masculino','1999-10-20','71899147','Av mamore',NULL,NULL,'Contruccion de casas y viviendas',NULL,1,1,'2023-05-22 15:37:30','2023-05-22 15:37:30',NULL),(17,2,4,'Estefani','Vasquez Mercado','14334623','femenino','1997-07-20','69368061','Barrio Canadá - Calle Pachubilla S/N',NULL,NULL,'Aun no he trabajado en ninguna institución, pero me gustaría ser parte de este proyecto',NULL,1,1,'2023-05-22 18:12:43','2023-05-22 18:12:43',NULL),(18,3,1,'Maurício','Guanacoma Lima','7594277','masculino','1995-01-10','78673112','Oscar Unzaga De La Vega, Esq/ Sucre',NULL,NULL,'Trabajo de campo en planta de tratamiento de aguas en Guayaramerin , no sale la opción en mi área… coloque sistemas porque es la única que sale.. soy Ingeniero Químico y Ts en Química Induatrial',NULL,1,1,'2023-05-22 22:18:15','2023-05-22 22:18:15',NULL),(19,2,15,'Alexander','semo rivero','10811409','masculino','1995-09-13','73905975','pasillo 3 barrio centenario',NULL,NULL,'Asesor de crédito durante 3 años y medio en Banco Pyme Ecofuturo desde junio del 2018 a octubre de 2021',NULL,1,1,'2023-05-22 22:52:47','2023-05-22 22:52:47',NULL),(20,NULL,16,'MARIA BELEN','Vargas puerta','10852818','femenino','1999-03-25','77841619','Av/Bario san jose obrero',NULL,NULL,'Aprendo rapido',NULL,1,1,'2023-05-24 09:44:32','2023-05-24 09:44:32',NULL),(21,2,12,'Zulema alison','Vargas puerta de Winkelman','7611605','femenino','2000-04-15','78083805','Av. Chuquisaca. Calle Federico hecker',NULL,NULL,NULL,NULL,1,1,'2023-05-24 09:45:48','2023-05-24 09:45:48',NULL),(22,2,4,'Sergio','Saavedra','14335183','masculino','1999-05-09','69655089','Av.Ruben Castedo N°1177',NULL,NULL,'Prácticas Laborales centro de salud San Andrés en el área de administración y contabilidad',NULL,1,1,'2023-05-24 09:58:02','2023-05-24 09:58:02',NULL),(23,2,17,'Erick','Sosa Bollati','7615704','masculino','1993-12-21','75751718','Av/ Simón Bolívar',NULL,NULL,'Muy buenos días \r\nLa verdad que experiencia laboral tengo muchas he tratado en sector privado y público \r\nÁreas de salud / cadena alimenticia e Industrias de alimentos en laboratorios.\r\nAprendo demasiado rápido y estoy presto para cualquier área Laboral y disponibilidad las 24hra del día \r\nMe despido deseándoles éxitos en sus funciones',NULL,1,1,'2023-05-24 11:12:26','2023-05-24 11:12:26',NULL),(24,2,4,'José Armando','Andia Musua','15524803','masculino','2002-10-30','78744469','Barrio Canada _ Av. Majo s/n',NULL,NULL,'Me gustaría trabajar, tengo ganas y motivación',NULL,1,1,'2023-05-24 18:47:34','2023-05-24 18:47:34',NULL),(25,2,4,'Karolina','Tellez Motsua','14422258','femenino','1997-03-17','73164579','Av. Fuerza Naval 542',NULL,NULL,'No tengo experiencia, pero quiero trabajar para adquirir experiencia',NULL,1,1,'2023-05-24 18:51:37','2023-05-24 18:51:37',NULL),(26,2,21,'Yaemi','Claure Sato','9269371','femenino','2003-04-03','75895774','Av coco de oro Barrio rosedal',NULL,NULL,'Estudiante universitario de 5to semestre de la carrera de Derecho en la UAB de Riberalta \r\nPasante en la fiscalía especializada en delitos contra la integridad personal de Riberalta desde 16/09/21 hasta 30/08/22 \r\nPasante en la fiscalía especializada en delitos de reacción inmediata y solución temprana de Riberalta desde 01/10/22 hasta la fecha actual',NULL,1,1,'2023-05-31 22:42:53','2023-05-31 22:42:53',NULL),(27,2,22,'Dario Humberto','Salmon salas','7593801','masculino','1987-09-12','75896045','Calle.- Ignacio aponte N.- 1258 B.- la merced',NULL,NULL,'Estudiante universitario de la carrera de derecho del primer semestre en la UAB de Riberalta \r\nPasante en la fiscalía especializada en delitos de reacción inmediata desde 01/02/23 hasta la fecha',NULL,1,1,'2023-05-31 23:00:38','2023-05-31 23:00:38',NULL),(28,1,23,'Eisner Daniel','Franco Arias','12187779','masculino','1994-08-21','77840947','Nueva Trinidad 3ra entrada',NULL,NULL,'Empleo',NULL,1,1,'2023-06-27 18:52:22','2023-06-27 18:52:22',NULL),(30,1,25,'José Carlos','Añez aguilar','10794621','masculino','1991-04-08','10794621','Calle Wilfredo cortez esquina feliz pinto',NULL,NULL,'Ventas de electrodomésticos. Promotor de la defensoría de la niñez .procurador de despacho de abogado',NULL,1,1,'2023-06-27 21:29:16','2023-06-27 21:29:16',NULL),(32,1,29,'agustin','mejia','2353353','masculino','1991-04-26','75199157','nn',NULL,NULL,'prueba',NULL,1,1,'2023-07-04 17:00:22','2023-07-04 17:00:22',NULL),(33,1,12,'Andrea','Llapiz Melgar','7619207','femenino','2004-11-22','71129948','Las palmas, manzano E, casa I-25',NULL,NULL,'EXPERIENCIA LABORAL:\r\nAsistente Legal en las instalaciones del estudio Juridico PERLA KREIDSTEIN MERCADO desde noviembre 2022 hasta marzo 2023\r\n ESTUDIOS UNIVERSITARIO:\r\nCursando la carrera de Ingeniería Comercial Universidad Domingo Sabio.\r\n ASISTENCIA A CURSOS:\r\nCertificado: liderazgo en base a la ética y la moral realizado por la Universidad Domingo Sabio en el año 2021\r\nESTUDIO OBTENIDO A NIVEL TECNICO MEDIO\r\nTitulo obtenido de técnico medio en SISTEMAS INFORMATICOS otorgado por el Ministerio de Educación del Estado Plurinacional de Bolivia La Paz-Bolivia, gestión 2022',NULL,1,1,'2023-07-05 19:48:38','2023-07-05 19:48:38',NULL),(34,1,38,'paola lizbeth','cholima perez','10788976','femenino','1993-11-21','75197052','nueva trinidad calle 14',NULL,NULL,NULL,NULL,1,1,'2023-07-05 20:17:11','2023-07-05 20:17:11',NULL),(35,1,3,'Kelin Crusita','Pedraza Barrios','12438193','femenino','2005-09-22','63606377','Av 13 de abril',NULL,NULL,NULL,NULL,1,1,'2023-07-05 20:31:47','2023-07-05 20:31:47',NULL),(36,NULL,2,'José Armando','Cartagena temo','12189032','masculino','2023-08-25','73159706','Av.beni esq rogaguado 1143',NULL,NULL,'Maestro',NULL,1,1,'2023-07-05 20:49:09','2023-07-05 20:49:09',NULL),(37,1,15,'Liz Damari','Flores Guardia','10802489','femenino','1999-02-23','69395245','Zona Fátima calle tte. Luis cespedes',NULL,NULL,'Sin experiencia laboral pero con muchas ganas de aprender nuevos retos laborales.',NULL,1,1,'2023-07-05 21:03:59','2023-07-05 21:03:59',NULL),(38,1,39,'Luana Liudes','Terrazas Da Costa','5705594','femenino','2002-07-22','72920709','Av Cambodromo',NULL,NULL,'Trabaje en la Asamblea Legislativa Departamental del Beni \r\nTambién trabaje en el Tribunal Electoral Departamental De Pando',NULL,1,1,'2023-07-05 21:13:35','2023-07-05 21:13:35',NULL),(39,1,40,'Alejandra','Ardaya','12816426','femenino','1995-11-18','67358403','B/ 13 de Abril C/ Romulo Mendoza',NULL,NULL,'Reportera y Jefe prensa',NULL,1,1,'2023-07-05 21:18:48','2023-07-05 21:18:48',NULL),(40,1,3,'Diego','Suárez Guasase','7618909','masculino','1991-03-22','67271878','Av. Costanera Z. Los tonos #550',NULL,NULL,'Médico general',NULL,1,1,'2023-07-05 21:21:15','2023-07-05 21:21:15',NULL),(41,1,43,'Yajhara Elisa','Guzmán Ascimani','7622288','femenino','1993-05-26','70272322','Z/ 4 de febrero C/ Yomomo S/N',NULL,NULL,'Técnico en producción de Radio Ibare y Canal 11 TvU',NULL,1,1,'2023-07-05 21:47:48','2023-07-05 21:47:48',NULL),(42,1,44,'Aura Mariana','Suarez Barba','10796481','femenino','2001-04-02','78740504','Av. Aeropuerto z/recreo',NULL,NULL,'Elaboración de proyectos',NULL,1,1,'2023-07-05 23:00:45','2023-07-05 23:00:45',NULL),(44,1,46,'Tamara','Stroebel Guardia','12559909','femenino','1998-12-17','78650991','Barrio 6 de junio Manzano 0 N°23',NULL,NULL,'Elaboración de Proyectos',NULL,1,1,'2023-07-05 23:06:51','2023-07-05 23:06:51',NULL),(45,2,47,'Alberto','Rivero Villavicencio','7605141','masculino','1990-04-23','7605141','Av. Bakaba',NULL,NULL,'Secretario de bufete de abogado y encargado de  ventas de veiculos.motos.casas.',NULL,1,1,'2023-07-06 07:27:14','2023-07-06 07:27:14',NULL),(46,1,1,'Junior durval','Mercado vaca','10818061','masculino','2003-07-17','10818061','Av 27 de mayo entre 6 de agosto y antonio vaca diez',NULL,NULL,'Pasantia de 6 meses en el area de mantenimiento de computadoras en el edificio de la central de la universidad autónoma del beni.\r\nY 1 mes de pasante en golochtel en el área de mantenimiento',NULL,1,1,'2023-07-06 09:00:11','2023-07-06 09:00:11',NULL),(47,1,15,'Junior','Aguilera Montero','10802928','masculino','1997-12-16','77848126','Z/ Progreso Union',NULL,NULL,'Experiencia Laboral:\r\n•	Realice Pasantía dentro de la Gerencia Departamental del Fondo Nacional de Inversiones Productiva y Social FPS – Beni, desde la fecha 15 de noviembre de 2021 hasta el 16 de febrero de 2022.\r\n•	Realice Pasantía, en la Dirección de la Carrera de Economía dependiente de la Universidad Autónoma del Beni, como apoyo, en el Área de la Comisión de Autoevaluación y Acreditación de la Carrera, desde la fecha 28 de marzo de 2022 hasta el 09 de diciembre 2022.',NULL,1,1,'2023-07-06 11:33:14','2023-07-06 11:33:14',NULL),(48,1,48,'Alexis Gabriela','Castedo Gonzales','7595743','femenino','1993-06-12','76875085','C/ San Lorenzo #52',NULL,NULL,'Medicina General\r\nMédico Ecografista',NULL,1,1,'2023-07-06 14:24:01','2023-07-06 14:24:01',NULL),(49,1,51,'Mithzy Melssir','Lacoa Cabrera','7604870','femenino','1997-08-01','68990478','Calle Tarija #458',NULL,NULL,'Servicio de mensajería en el courrier TRINIENVIO\r\nPrácticas profesionales en el área de auditoría interna del gobierno Autónomo Departamental del Beni\r\nCajera en el restaurante Pescadería El Surubí',NULL,1,1,'2023-07-07 01:46:56','2023-07-07 01:46:56',NULL),(50,1,52,'Jorge','Chávez Mapaquine','12775633','masculino','1995-07-25','71126581','Barrio Nueva Trinidad',NULL,NULL,'Pasantía en la Empresa Golochtel SRL. En el Área de Recursos humanos,dentro 3 meses.\r\nPasantía en Impuestos Nacionales en el Área de Atención al Cliente, durante 3 meses. \r\nActualmente trabajo en la Empresa Agropecuaria Remanso San Jorge con el cargo de administrador de Almacén',NULL,1,1,'2023-07-07 09:23:10','2023-07-07 09:23:10',NULL),(51,1,53,'Luis Enrique','Franco Matene','10803196','masculino','2002-05-03','63276180','Av. David Shriqui esque. Av. Nuevo amanecer',NULL,NULL,'-Atencion al cliente\r\n-Limpieza\r\n-relacionador',NULL,1,1,'2023-07-07 10:48:51','2023-07-07 10:48:51',NULL),(52,1,52,'Jeila','López aponte','10804373','femenino','1998-08-21','68964534','5 Entrada Nueva Trinidad C/5',NULL,NULL,'Recepcionista del hotel jacaranda 8 meses -Trinidad\r\nAsistente de la clínica dental biodentis 5 meses -Trinidad \r\nEn la empresa tecnolimpio 3 meses en el aeropuerto Jorge Genrish Araus',NULL,1,1,'2023-07-07 11:10:03','2023-07-07 11:10:03',NULL),(53,1,54,'Kiara Anai','Cortez Parra','12815693','femenino','2000-04-04','72838429','Av moxos #79',NULL,NULL,'Encargada de ventas en supermercado Charter, Auxiliar de aula Colegio el Cedro, Auxiliar Administrativo y contable C&C escribas TDD y Atención al cliente y Cobranzas en tienda de electrodomésticos Génesis Express Shop',NULL,1,1,'2023-07-07 11:16:38','2023-07-07 11:16:38',NULL),(54,1,55,'Virginia','Sanjinez Mole','9268646','femenino','1991-10-30','71128984','Barrio Villa Monasterio Calle NRO 2',NULL,NULL,'Tengo experiencia laboral en el área de caja, atención al cliente, contabilidad de empresa comercial ( presentaciones ante impuestos nacionales, cns, Ministerio del trabajo, gestora, y otros) dirigir equipo de ventas, secretariado.',NULL,1,1,'2023-07-07 12:09:56','2023-07-07 12:09:56',NULL),(55,1,56,'Ana Paola','Candia Taborga','9277194','femenino','2000-08-22','71146347','Z/12 de abril B/ Arroyo Chicó',NULL,NULL,'Experiencia en voluntariado en atención al cliente y área administrativa',NULL,1,1,'2023-07-07 14:57:38','2023-07-07 14:57:38',NULL),(56,1,48,'Maria esther','Vaca Salvatierra','7648505','femenino','1998-03-11','68952557','Calle flor de patuju',NULL,NULL,'Médico veterinario zootecnista, trabajos en clínicas de animales menores',NULL,1,1,'2023-07-07 19:13:13','2023-07-07 19:13:13',NULL),(57,1,52,'Alejandro','Guasebe Salvatierra','10802785','masculino','1997-11-12','75892745','Barrio patuju Calle 4 S/N',NULL,NULL,'Practicante en UOD BENI PAR II del MDRyT (Activos Fijos)',NULL,1,1,'2023-07-08 20:02:32','2023-07-08 20:02:32',NULL),(58,1,57,'Pablo Antonio','Moreno Curi','10780168','masculino','2002-04-24','73966075','Barrio Pantanal calle gaviota #315',NULL,NULL,'Tengo experiencia trabajando en medios de comunicación en presentacion, prensa, trabajo de recolección de encuestas y facil relacionamiento con las personas. También he trabajado en atención al cliente y relaciones con las personas.',NULL,1,1,'2023-07-12 10:55:41','2023-07-12 10:55:41',NULL),(59,1,63,'Liz Paula','Salas Navarro','5618726','femenino','2000-02-24','68484301','Z. Pompeya sobre la calle Isiboro entre moxos y primero de mayo nro 34',NULL,NULL,'Trabaje como auxiliar de farmacia, actualmente me dedico a atención al cliente.',NULL,1,1,'2023-07-15 16:32:53','2023-07-15 16:32:53',NULL),(62,NULL,66,'Daniel','Noza Cuevas','14437978','masculino','2006-11-13','69383028','Z/ Pantanal C/ Tiluchi',NULL,NULL,'ayudante de cocina en una churrasquería',NULL,1,1,'2023-07-17 09:53:57','2023-07-17 09:53:57',NULL);
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_role`
--

DROP TABLE IF EXISTS `permission_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_role`
--

LOCK TABLES `permission_role` WRITE;
/*!40000 ALTER TABLE `permission_role` DISABLE KEYS */;
INSERT INTO `permission_role` VALUES (1,1),(1,2),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(16,2),(17,1),(17,2),(18,1),(18,2),(19,1),(19,2),(20,1),(20,2),(21,1),(21,2),(22,1),(22,2),(23,1),(23,2),(24,1),(24,2),(25,1),(25,2),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1);
/*!40000 ALTER TABLE `permission_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `table_name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2023-05-20 15:48:08','2023-05-20 15:48:08'),(2,'browse_bread',NULL,'2023-05-20 15:48:08','2023-05-20 15:48:08'),(3,'browse_database',NULL,'2023-05-20 15:48:08','2023-05-20 15:48:08'),(4,'browse_media',NULL,'2023-05-20 15:48:08','2023-05-20 15:48:08'),(5,'browse_compass',NULL,'2023-05-20 15:48:08','2023-05-20 15:48:08'),(6,'browse_menus','menus','2023-05-20 15:48:08','2023-05-20 15:48:08'),(7,'read_menus','menus','2023-05-20 15:48:08','2023-05-20 15:48:08'),(8,'edit_menus','menus','2023-05-20 15:48:08','2023-05-20 15:48:08'),(9,'add_menus','menus','2023-05-20 15:48:08','2023-05-20 15:48:08'),(10,'delete_menus','menus','2023-05-20 15:48:08','2023-05-20 15:48:08'),(11,'browse_roles','roles','2023-05-20 15:48:08','2023-05-20 15:48:08'),(12,'read_roles','roles','2023-05-20 15:48:08','2023-05-20 15:48:08'),(13,'edit_roles','roles','2023-05-20 15:48:08','2023-05-20 15:48:08'),(14,'add_roles','roles','2023-05-20 15:48:08','2023-05-20 15:48:08'),(15,'delete_roles','roles','2023-05-20 15:48:08','2023-05-20 15:48:08'),(16,'browse_users','users','2023-05-20 15:48:08','2023-05-20 15:48:08'),(17,'read_users','users','2023-05-20 15:48:08','2023-05-20 15:48:08'),(18,'edit_users','users','2023-05-20 15:48:08','2023-05-20 15:48:08'),(19,'add_users','users','2023-05-20 15:48:08','2023-05-20 15:48:08'),(20,'delete_users','users','2023-05-20 15:48:08','2023-05-20 15:48:08'),(21,'browse_settings','settings','2023-05-20 15:48:08','2023-05-20 15:48:08'),(22,'read_settings','settings','2023-05-20 15:48:08','2023-05-20 15:48:08'),(23,'edit_settings','settings','2023-05-20 15:48:08','2023-05-20 15:48:08'),(24,'add_settings','settings','2023-05-20 15:48:08','2023-05-20 15:48:08'),(25,'delete_settings','settings','2023-05-20 15:48:08','2023-05-20 15:48:08'),(26,'browse_permissions','permissions','2023-05-20 15:48:08','2023-05-20 15:48:08'),(27,'read_permissions','permissions','2023-05-20 15:48:08','2023-05-20 15:48:08'),(28,'edit_permissions','permissions','2023-05-20 15:48:08','2023-05-20 15:48:08'),(29,'add_permissions','permissions','2023-05-20 15:48:08','2023-05-20 15:48:08'),(30,'delete_permissions','permissions','2023-05-20 15:48:08','2023-05-20 15:48:08'),(31,'browse_job_types','job_types','2023-05-20 15:48:08','2023-05-20 15:48:08'),(32,'read_job_types','job_types','2023-05-20 15:48:08','2023-05-20 15:48:08'),(33,'edit_job_types','job_types','2023-05-20 15:48:08','2023-05-20 15:48:08'),(34,'add_job_types','job_types','2023-05-20 15:48:08','2023-05-20 15:48:08'),(35,'delete_job_types','job_types','2023-05-20 15:48:08','2023-05-20 15:48:08'),(36,'browse_jobs','jobs','2023-05-20 15:48:08','2023-05-20 15:48:08'),(37,'read_jobs','jobs','2023-05-20 15:48:08','2023-05-20 15:48:08'),(38,'edit_jobs','jobs','2023-05-20 15:48:08','2023-05-20 15:48:08'),(39,'add_jobs','jobs','2023-05-20 15:48:08','2023-05-20 15:48:08'),(40,'delete_jobs','jobs','2023-05-20 15:48:08','2023-05-20 15:48:08'),(41,'browse_countries','countries','2023-05-20 15:48:08','2023-05-20 15:48:08'),(42,'read_countries','countries','2023-05-20 15:48:08','2023-05-20 15:48:08'),(43,'edit_countries','countries','2023-05-20 15:48:08','2023-05-20 15:48:08'),(44,'add_countries','countries','2023-05-20 15:48:08','2023-05-20 15:48:08'),(45,'delete_countries','countries','2023-05-20 15:48:08','2023-05-20 15:48:08'),(46,'browse_states','states','2023-05-20 15:48:08','2023-05-20 15:48:08'),(47,'read_states','states','2023-05-20 15:48:08','2023-05-20 15:48:08'),(48,'edit_states','states','2023-05-20 15:48:08','2023-05-20 15:48:08'),(49,'add_states','states','2023-05-20 15:48:08','2023-05-20 15:48:08'),(50,'delete_states','states','2023-05-20 15:48:08','2023-05-20 15:48:08'),(51,'browse_cities','cities','2023-05-20 15:48:08','2023-05-20 15:48:08'),(52,'read_cities','cities','2023-05-20 15:48:08','2023-05-20 15:48:08'),(53,'edit_cities','cities','2023-05-20 15:48:08','2023-05-20 15:48:08'),(54,'add_cities','cities','2023-05-20 15:48:08','2023-05-20 15:48:08'),(55,'delete_cities','cities','2023-05-20 15:48:08','2023-05-20 15:48:08'),(56,'browse_job_offers','job_offers','2023-05-29 16:11:17','2023-05-29 16:11:17'),(57,'read_job_offers','job_offers','2023-05-29 16:11:17','2023-05-29 16:11:17'),(58,'edit_job_offers','job_offers','2023-05-29 16:11:17','2023-05-29 16:11:17'),(59,'add_job_offers','job_offers','2023-05-29 16:11:17','2023-05-29 16:11:17'),(60,'delete_job_offers','job_offers','2023-05-29 16:11:17','2023-05-29 16:11:17'),(61,'browse_people','people','2023-05-29 16:13:57','2023-05-29 16:13:57'),(62,'read_people','people','2023-05-29 16:13:57','2023-05-29 16:13:57'),(63,'edit_people','people','2023-05-29 16:13:57','2023-05-29 16:13:57'),(64,'add_people','people','2023-05-29 16:13:57','2023-05-29 16:13:57'),(65,'delete_people','people','2023-05-29 16:13:57','2023-05-29 16:13:57');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Administrador','2023-05-20 15:48:08','2023-05-20 15:48:08'),(2,'administrador','Administrador','2023-05-20 15:48:08','2023-05-20 15:48:08'),(3,'user','Usuario Normal','2023-05-20 15:48:08','2023-05-20 15:48:08');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `value` text DEFAULT NULL,
  `details` text DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Bolsa de empleos','','text',1,'Site'),(2,'site.description','Site Description','Plataforma Departamental de Asistencia y Gestión de Solicitudes de Empleo','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',4,'Admin'),(6,'admin.title','Admin Title','B.J.E.','','text',1,'Admin'),(7,'admin.description','Admin Description','Plataforma Departamental de Asistencia y Gestión de Solicitudes de Empleo','','text',1,'Admin'),(8,'admin.loader','Admin Loader','','','image',2,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',3,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',5,'Admin'),(11,'servers.whatsapp','Whatsapp','https://whatsapp.ideacreativa.dev',NULL,'text',6,'Servers');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `country_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `states_country_id_foreign` (`country_id`),
  CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,1,'Beni','2023-05-20 13:14:52','2023-05-20 13:14:52',NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) NOT NULL,
  `column_name` varchar(255) NOT NULL,
  `foreign_key` int(10) unsigned NOT NULL,
  `locale` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_roles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `settings` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'RAIZHA MARIA NINA SUAREZ','admin@admin.com','users/default.png',NULL,'$2y$10$KeEyR8bdiGuXC1mOdHnjrezMJeh3dcRFNwX/YCuCwsjwP8CKZ/I7S','2HL4BxbMiSr3ph69PxI5Lvqm6kO0uxYXGMBp9c95ftT6vR9du2zMImXbs6Lw','{\"locale\":\"es\"}','2021-06-01 21:05:11','2023-08-03 15:24:04',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-02 13:50:11
