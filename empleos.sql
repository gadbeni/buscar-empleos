-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: empleos
-- ------------------------------------------------------
-- Server version	10.3.39-MariaDB-0ubuntu0.20.04.2

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
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `job_types_id` int(11) DEFAULT NULL,
  `nit` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business`
--

LOCK TABLES `business` WRITE;
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
INSERT INTO `business` VALUES (1,'HOTEL ALMA',1,7,'1905949-16','Hospedaje, Suit,Matrimoniales, Dobles y sincilla.','C/ Cipriano Barace al lado de Entel',NULL,'2023-12-02 11:26:00',NULL,79208809,1,1),(2,'COVER',2,8,'4717827','Venta de accesorios para celulares,','C/ Cipriano Barace al lado de FEGABENI',NULL,NULL,NULL,78748414,1,1),(3,'STORE MANIA',3,8,'12880823','Venta de accesorios para celulares,','C/Cipriano Barace al frente de Entel',NULL,NULL,NULL,76868730,1,1),(4,'GERLD SHOPP',4,8,'13624184','Venta de accesorios para celulares,','C/Cipriano Barace al frente de Entel',NULL,NULL,NULL,67216263,1,1),(5,'MEGA CENTER',5,9,'12187879','Venta de celulares y accesorios para celulares,','C/Cipriano Barace al frente de Entel',NULL,NULL,NULL,7282992,1,1),(6,'CLUB SOCIAL',6,10,'4192149','Salon de eventos y venta de comida.','Calle Manuel Limpias al frente de la Plaza Central',NULL,NULL,NULL,70265420,1,1),(7,'LIBRER?A BAZAR JUVENTUD',7,11,'1736426','Venta de Material Escolar y de escritorio.','C/Nicolas Suarez',NULL,NULL,NULL,78285198,1,1),(8,'LIBRER?A SOLO CELL',8,11,'5263302','Venta de materias escolar, escrito y sellos.','C/Nicolas Suarez',NULL,NULL,NULL,70263715,1,1),(9,'HAPPY FIS',9,12,'1920690','Venta de Calzados para niños y adultos.','Calle Antonio Vaca Diez',NULL,NULL,NULL,69386872,1,1),(10,'PILCHAS',10,13,'1907584','Venta de ropa y accesorios para mujeres.','Calle Antonio Vaca Diez',NULL,NULL,NULL,72838223,1,1),(11,'BLAW & WMITE',11,13,'1709952','Venta de ropa y accesorios para mujeres.','Calle Antonio Vaca Diez',NULL,NULL,NULL,68967425,1,1),(12,'FRANAFRANCH',12,13,'401145','Venta de Ropa y Calzados para dama.','Calle Antonio Vaca Diez',NULL,NULL,NULL,69177040,1,1),(13,'NEW PRINT',13,14,'5616133','Venta de sellos ','C/ 18 de noviembre',NULL,NULL,NULL,60360117,1,1),(14,'IMPRENTA GRAFICAR',14,14,'72830627','Venta y diseño de ropa deportiva','C/ 18 de noviembre',NULL,NULL,NULL,72830627,1,1),(15,'TIENDA DE ROPA A TU MEDIDA',15,15,'1760694','Venta de ropa, calzados y accesorios para mujeres','C/ 18 de noviembre',NULL,NULL,NULL,71124460,1,1),(16,'LICORERIA OLDPARR',16,16,'4175412','Venta de Bebidas y botanas','Av. 6 de agosto',NULL,NULL,NULL,72819285,1,1),(17,'PARABERO SPORT',17,15,'5622917','Venta y diseño de ropa deportiva','Av. 6 de agosto',NULL,NULL,NULL,70274007,1,1),(18,'MOTOCICLETAS TVS',18,17,'1029831027','Venta de motocletas y servicio mecanico.','C/ Santa Cruz Sur',NULL,NULL,NULL,74164333,1,1),(19,'BOUTIQUE YENIAR',19,13,'1052155','Venta de ropa para Hombre.','C/ Antono Vaca Diez',NULL,NULL,NULL,4622946,1,1),(20,'TIENDA DE MODA BONITA',20,13,'12377748','Venta de ropa y accesorios para mujeres','C/ Antono Vaca Diez',NULL,NULL,NULL,69375045,1,1),(21,'TIENDA ROSA Y AZUL',21,13,'10854446','Venta de ropa y accesorios para niñas y niños.','C/ Antono Vaca Diez',NULL,NULL,NULL,72826420,1,1),(22,'CALZADOS MAYEL',22,12,'12188793','Venta de Calzados para damas.','C/ 18 de noviembre',NULL,NULL,NULL,78298603,1,1),(23,'ADONIS',23,18,'5613860','Salon, estetica y peluqueria unisex.','C/ 18 de noviembre',NULL,NULL,NULL,72813660,1,1),(24,'TRINI HOME',24,19,'3104473','Ventas y servicios tecnicos de Computadoras e impresoras mas accesorios','C/ 18 de noviembre',NULL,NULL,NULL,71285403,1,1),(25,'Servicio de Transporte Interprovincial',108,4,'635474577','Servicio interprovincial de atl','calle s/n','2023-12-02 11:58:19','2023-12-02 11:58:47',NULL,70269362,1,1),(26,'MR. DOG PIZZAS',110,10,'9269711','Somos un restaurant que ofrece un menú  variado menú de Hamburguesas, Sandwich de Lomito, Alistas de pollo, tablita mixta y la especialidad de la casa son las PIZZAS','Av. Medardo Chávez Esq. Dr. Martínez','2024-09-10 21:50:37','2024-12-17 00:03:05',NULL,63556396,2,1),(27,'Veterinaria Joselito',111,2,'7593886','Farmacia veterinaria, dedicada a la venta de productos veterinarios','Av. Integración B/ 1ro de Septiembre','2024-09-17 11:47:16','2024-12-17 00:02:56',NULL,78289933,2,1),(28,'Pollos los Angeles',119,10,'12387837','Venta de Pollo frito','AV Jacaranda antes de llegar al semáforo de la esquina','2024-11-05 17:31:02','2024-12-17 00:02:45',NULL,65723712,2,1),(29,'Restaurante El Castañal',120,10,'7655482015','Restaurante de comida de comida tradicional','Barrio San Francisco Avenida placido molina','2024-11-21 11:47:21','2024-12-17 00:02:34',NULL,72937768,2,1),(30,'Pimienta grill',121,10,'4537972016','Restaurante churrasquearía','Avenida Chuquisaca y Bernardino Ochoa','2024-11-21 20:56:41','2024-12-17 00:02:26',NULL,69366254,2,1),(31,'Snack La Taperita',122,10,'4410090016','Snack de desayunos tradiciones','Avenida Beni Mamore N 1442','2024-11-22 11:52:32','2024-12-17 00:02:16',NULL,67438505,2,1),(32,'Tcuida spa',123,1,'9108444012','Es un spa donde realizamos todo tipobde medicina estética','Av heroes del chaco','2024-11-22 11:55:45','2024-12-17 00:02:09',NULL,77848733,2,1),(33,'Pensión Churrasquearía Don Juan',124,10,'1728892012','Restaurante churrásqueria','Avenida jacaranda esquina Viriba','2024-11-23 16:44:34','2024-12-17 00:02:00',NULL,74584484,2,1),(34,'Tienda el baraton',125,6,'12661232','electrodomésticos general','av integración antes de llegar al semáforo','2024-11-25 07:00:21','2024-12-17 00:01:49',NULL,67532255,2,1),(35,'DACCAR IMPORT',141,17,'7985973','Importadora de motocicletas','Av. Pedro Ignacio Muiba','2024-12-10 15:49:42','2024-12-17 00:01:35',NULL,69399842,1,1);
/*!40000 ALTER TABLE `business` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_rows`
--

LOCK TABLES `data_rows` WRITE;
/*!40000 ALTER TABLE `data_rows` DISABLE KEYS */;
INSERT INTO `data_rows` VALUES (1,1,'id','number','ID',1,0,0,0,0,0,'{}',1),(2,1,'name','text','Nombre',1,1,1,1,1,1,'{}',4),(3,1,'email','text','Email',1,1,1,1,1,1,'{}',3),(4,1,'password','password','Password',1,0,0,1,1,0,'{}',5),(5,1,'remember_token','text','Remember Token',0,0,0,0,0,0,'{}',6),(6,1,'created_at','timestamp','Creado',0,1,1,0,0,0,'{}',12),(7,1,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',13),(8,1,'avatar','image','Avatar',0,1,1,1,1,1,'{}',2),(9,1,'user_belongsto_role_relationship','relationship','Rol',0,1,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}',9),(10,1,'user_belongstomany_role_relationship','relationship','Roles',0,0,1,1,1,0,'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',10),(11,1,'settings','hidden','Settings',0,0,0,0,0,0,'{}',11),(12,2,'id','number','ID',1,0,0,0,0,0,NULL,1),(13,2,'name','text','Name',1,1,1,1,1,1,NULL,2),(14,2,'created_at','timestamp','Created At',0,0,0,0,0,0,NULL,3),(15,2,'updated_at','timestamp','Updated At',0,0,0,0,0,0,NULL,4),(16,3,'id','number','ID',1,0,0,0,0,0,'{}',1),(17,3,'name','text','Nombre',1,1,1,1,1,1,'{}',2),(18,3,'created_at','timestamp','Creado',0,0,0,0,0,0,'{}',3),(19,3,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),(20,3,'display_name','text','Display Name',1,0,0,0,0,0,'{}',5),(21,1,'role_id','text','Role',0,1,1,1,1,1,'{}',8),(22,4,'id','text','Id',1,1,1,0,0,0,'{}',1),(23,4,'key','text','Clave',1,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:191\"},\"display\":{\"width\":6}}',2),(24,4,'table_name','text','Tabla',0,1,1,1,1,1,'{\"validation\":{\"rule\":\"required|max:191\"},\"display\":{\"width\":6}}',3),(25,4,'created_at','timestamp','Creado',0,1,1,0,0,0,'{}',4),(26,4,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',5),(27,1,'email_verified_at','timestamp','Email Verified At',0,0,1,1,1,1,'{}',7),(28,5,'id','text','Id',1,1,1,0,0,0,'{}',1),(29,5,'name','text','Nombre',0,1,1,1,1,1,'{}',2),(30,5,'description','text_area','Descripción',0,1,1,1,1,1,'{}',4),(31,5,'status','checkbox','Estado',0,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true}',5),(32,5,'created_at','timestamp','Registrado',0,1,1,0,0,0,'{}',6),(33,5,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(34,5,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',8),(35,6,'id','text','Id',1,1,1,0,0,0,'{}',1),(36,6,'job_type_id','text','Job Type Id',0,1,1,1,1,1,'{}',2),(37,6,'name','text','Nombre',0,1,1,1,1,1,'{}',4),(38,6,'description','text_area','Descripción',0,1,1,1,1,1,'{}',6),(39,6,'status','checkbox','Estado',0,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true}',7),(40,6,'created_at','timestamp','Registrado',0,1,1,0,0,0,'{}',8),(41,6,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(42,6,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',10),(43,7,'id','text','Id',1,1,1,0,0,0,'{}',1),(44,7,'name','text','Nombre',0,1,1,1,1,1,'{}',2),(45,7,'created_at','timestamp','Created At',0,1,1,0,0,0,'{}',3),(46,7,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',4),(47,7,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',5),(48,8,'id','text','Id',1,1,1,0,0,0,'{}',1),(49,8,'country_id','text','Country Id',0,1,1,1,1,1,'{}',2),(50,8,'name','text','Nombre',0,1,1,1,1,1,'{}',4),(51,8,'created_at','timestamp','Registrado',0,1,1,0,0,0,'{}',5),(52,8,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',6),(53,8,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',7),(54,8,'state_belongsto_country_relationship','relationship','País',1,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Country\",\"table\":\"countries\",\"type\":\"belongsTo\",\"column\":\"country_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"cities\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(55,9,'id','text','Id',1,1,1,0,0,0,'{}',1),(56,9,'state_id','text','State Id',0,1,1,1,1,1,'{}',2),(57,9,'name','text','Nombre',0,1,1,1,1,1,'{}',4),(58,9,'slug','hidden','Slug',1,0,0,1,1,1,'{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}',5),(59,9,'status','checkbox','Estado',0,1,1,1,1,1,'{\"on\":\"Activo\",\"off\":\"Inactivo\",\"checked\":true}',6),(60,9,'created_at','timestamp','Created At',0,1,1,0,0,0,'{}',7),(61,9,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',8),(62,9,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',9),(63,9,'city_belongsto_state_relationship','relationship','Departamento',1,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\State\",\"table\":\"states\",\"type\":\"belongsTo\",\"column\":\"state_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"cities\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(64,6,'slug','hidden','Slug',1,0,0,1,1,1,'{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}',5),(65,5,'slug','hidden','Slug',1,0,0,1,1,1,'{\"slugify\":{\"origin\":\"name\",\"forceUpdate\":true}}',3),(66,6,'job_belongsto_job_type_relationship','relationship','Área profesional',1,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\JobType\",\"table\":\"job_types\",\"type\":\"belongsTo\",\"column\":\"job_type_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"cities\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(67,10,'id','text','Id',1,0,0,0,0,0,'{}',1),(68,10,'person_id','text','Person Id',0,0,0,0,0,0,'{}',3),(69,10,'details','text_area','Detalles',0,1,1,1,1,1,'{}',4),(70,10,'status','select_dropdown','Estado',0,1,1,1,1,1,'{\"default\":\"1\",\"options\":{\"1\":\"En Revisi\\u00f3n\",\"2\":\"Disponible\",\"3\":\"Ocupado\"}}',5),(71,10,'created_at','timestamp','Registrado',0,1,1,0,0,0,'{}',6),(72,10,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',7),(73,10,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',8),(74,10,'business_id','text','Business Id',0,1,1,1,1,1,'{}',9),(75,11,'id','text','Id',1,1,0,0,0,0,'{}',1),(76,11,'name','text','Nombre',0,1,1,1,1,1,'{}',2),(77,11,'person_id','text','Persona',0,0,0,0,0,0,'{}',4),(78,11,'job_types_id','text','Tipo de Negocio',0,1,1,1,1,1,'{}',5),(79,11,'nit','text','NIT',0,1,1,1,1,1,'{}',7),(80,11,'description','text','Descripción',0,1,1,1,1,1,'{}',8),(81,11,'address','text','Dirección',0,1,1,1,1,1,'{}',9),(82,11,'created_at','timestamp','Created At',0,0,0,0,0,0,'{}',10),(83,11,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',11),(84,11,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',12),(85,11,'phone','text','Celular',0,1,1,1,1,1,'{}',13),(86,11,'city_id','text','Ciudad',0,1,1,1,1,1,'{}',14),(87,11,'status','checkbox','Estado',0,1,1,1,1,1,'{\"off\":\"En Revisi\\u00f3n\",\"on\":\"Disponible\",\"checked\":true}',6),(88,11,'business_belongsto_job_type_relationship','relationship','Tipos de Negocio',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\JobType\",\"table\":\"job_types\",\"type\":\"belongsTo\",\"column\":\"job_types_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"business\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(89,11,'business_belongsto_city_relationship','relationship','Ciudades',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"business\",\"pivot\":\"0\",\"taggable\":\"0\"}',15),(90,10,'job_offer_belongsto_business_relationship','relationship','Negocio',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Business\",\"table\":\"business\",\"type\":\"belongsTo\",\"column\":\"business_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"business\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(91,12,'id','text','Id',1,1,0,0,0,0,'{}',1),(92,12,'person_id','text','Person Id',0,1,1,1,1,1,'{}',4),(93,12,'job_offer_id','text','Job Offer Id',0,1,1,1,1,1,'{}',5),(94,12,'details','text','Details',0,1,1,1,1,1,'{}',6),(95,12,'status','checkbox','Estado',0,1,1,1,1,1,'{\"on\":\"Trabajando\",\"off\":\"Ya no Trabaja\",\"checked\":true}',7),(96,12,'created_at','timestamp','Created At',0,1,0,0,0,0,'{}',8),(97,12,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',9),(98,12,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',10),(99,12,'job_application_belongsto_job_offer_relationship','relationship','Ofertas de Trabajo (Detalles)',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\JobOffer\",\"table\":\"job_offers\",\"type\":\"belongsTo\",\"column\":\"job_offer_id\",\"key\":\"id\",\"label\":\"details\",\"pivot_table\":\"business\",\"pivot\":\"0\",\"taggable\":\"0\"}',3),(100,12,'job_application_belongsto_person_relationship','relationship','Personas (Carnet o Celular)',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Person\",\"table\":\"people\",\"type\":\"belongsTo\",\"column\":\"person_id\",\"key\":\"id\",\"label\":\"dni\",\"pivot_table\":\"business\",\"pivot\":\"0\",\"taggable\":\"0\"}',2),(101,13,'id','text','Id',1,1,0,0,0,0,'{}',1),(102,13,'city_id','text','City Id',0,1,1,1,1,1,'{}',2),(103,13,'job_id','text','Job Id',0,1,1,1,1,1,'{}',3),(104,13,'first_name','text','Nombre',0,1,1,1,1,1,'{}',4),(105,13,'last_name','text','Apellido',0,1,1,1,1,1,'{}',5),(106,13,'dni','text','CI o NIT',1,1,1,1,1,1,'{}',6),(107,13,'gender','text','Sexo (M o F)',0,1,1,1,1,1,'{}',7),(108,13,'birthday','text','Cumpleaños',0,0,1,1,1,1,'{}',8),(109,13,'phone','text','Celular',0,1,1,1,1,1,'{}',9),(110,13,'address','text','Dirección',0,0,1,1,1,1,'{}',10),(111,13,'photo','text','Foto',0,0,1,1,1,1,'{}',11),(112,13,'video','text','Video',0,0,1,1,1,1,'{}',12),(113,13,'short_description','text','Descrpcion',0,1,1,1,1,1,'{}',14),(114,13,'long_description','text','Description 2',0,0,1,1,1,1,'{}',15),(115,13,'type','select_dropdown','Tipo Persona',0,1,1,1,1,1,'{\"default\":\"1\",\"options\":{\"1\":\"Joven\",\"2\":\"Propietario Negocio\"}}',16),(116,13,'status','text','Estado',0,0,1,1,1,1,'{}',17),(117,13,'created_at','timestamp','Created At',0,1,0,0,0,0,'{}',19),(118,13,'updated_at','timestamp','Updated At',0,0,0,0,0,0,'{}',20),(119,13,'deleted_at','timestamp','Deleted At',0,0,0,0,0,0,'{}',21),(120,13,'person_belongsto_city_relationship','relationship','Ciudades',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"business\",\"pivot\":\"0\",\"taggable\":\"0\"}',18),(121,13,'person_belongsto_job_relationship','relationship','Campo Laboral',0,1,1,1,1,1,'{\"model\":\"App\\\\Models\\\\Job\",\"table\":\"jobs\",\"type\":\"belongsTo\",\"column\":\"job_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"business\",\"pivot\":\"0\",\"taggable\":\"0\"}',13);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_types`
--

LOCK TABLES `data_types` WRITE;
/*!40000 ALTER TABLE `data_types` DISABLE KEYS */;
INSERT INTO `data_types` VALUES (1,'users','users','User','Users','voyager-person','TCG\\Voyager\\Models\\User','TCG\\Voyager\\Policies\\UserPolicy','TCG\\Voyager\\Http\\Controllers\\VoyagerUserController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-06-02 17:55:30','2022-08-14 23:31:50'),(2,'menus','menus','Menu','Menus','voyager-list','TCG\\Voyager\\Models\\Menu',NULL,'','',1,0,NULL,'2021-06-02 17:55:30','2021-06-02 17:55:30'),(3,'roles','roles','Role','Roles','voyager-lock','TCG\\Voyager\\Models\\Role',NULL,'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController',NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2021-06-02 17:55:31','2022-08-14 23:40:05'),(4,'permissions','permissions','Permiso','Permisos','voyager-list','App\\Models\\Permission',NULL,NULL,NULL,1,0,'{\"order_column\":\"table_name\",\"order_display_column\":\"table_name\",\"order_direction\":\"asc\",\"default_search_key\":null}','2022-05-24 15:21:20','2022-05-24 15:21:20'),(5,'job_types','job-types','Área profesional','Áreas profesionales','voyager-list','App\\Models\\JobType',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2023-05-20 13:05:45','2023-05-20 15:44:25'),(6,'jobs','jobs','Profesión','Profesiones','voyager-list','App\\Models\\Job',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2023-05-20 13:06:43','2023-05-20 15:44:44'),(7,'countries','countries','País','Paises','voyager-list','App\\Models\\Country',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}','2023-05-20 13:10:44','2023-05-20 13:10:44'),(8,'states','states','Departamento','Departamentos','voyager-list','App\\Models\\State',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2023-05-20 13:11:25','2023-05-20 15:43:57'),(9,'cities','cities','Ciudad','Ciudades','voyager-list','App\\Models\\City',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2023-05-20 13:12:57','2023-05-20 15:45:16'),(10,'job_offers','job-offers','Oferta de trabajo','Ofertas de trabajos','voyager-news','App\\Models\\JobOffer',NULL,NULL,NULL,1,0,'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}','2023-05-26 14:31:03','2023-11-27 11:07:02'),(11,'business','business','Business','Business','voyager-helm','App\\Models\\Business',NULL,NULL,NULL,1,1,'{\"order_column\":\"created_at\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2023-10-23 14:13:53','2023-11-22 09:51:08'),(12,'job_applications','job-applications','Trabajo Obtenido','Trabajos Obtenidos','voyager-thumbs-up','App\\Models\\JobApplication',NULL,NULL,NULL,1,1,'{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2023-11-29 22:07:17','2023-11-29 22:17:46'),(13,'people','people','Persona','Personas','voyager-helm','App\\Models\\Person',NULL,NULL,NULL,1,1,'{\"order_column\":\"id\",\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}','2023-12-02 11:27:47','2023-12-02 11:40:37');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_applications`
--

LOCK TABLES `job_applications` WRITE;
/*!40000 ALTER TABLE `job_applications` DISABLE KEYS */;
INSERT INTO `job_applications` VALUES (1,109,3,NULL,1,'2023-12-02 12:12:40','2023-12-02 12:12:40',NULL);
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
  `business_id` bigint(20) unsigned DEFAULT NULL,
  `details` text DEFAULT NULL,
  `status` smallint(6) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_offers_person_id_foreign` (`person_id`),
  KEY `job_offers_business_id_foreign` (`business_id`),
  CONSTRAINT `job_offers_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`),
  CONSTRAINT `job_offers_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `people` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_offers`
--

LOCK TABLES `job_offers` WRITE;
/*!40000 ALTER TABLE `job_offers` DISABLE KEYS */;
INSERT INTO `job_offers` VALUES (1,NULL,1,'necesito cajero',3,'2023-12-02 11:47:40','2024-10-09 14:09:15',NULL),(2,NULL,25,'Necesito chofer',3,'2023-12-02 11:58:19','2024-10-09 14:09:08',NULL),(3,NULL,25,'Necesito Chofer con Licencia Clase A',3,'2023-12-02 11:59:46','2024-08-19 11:07:47',NULL),(4,NULL,26,'Solo una persona para atención al cliente y una persona para ayudante de cocina',1,'2024-09-10 21:50:37','2024-09-10 21:50:37',NULL),(5,NULL,27,'Atencion Al Cliente y limpieza',1,'2024-09-17 11:47:16','2024-09-17 11:47:16',NULL),(6,NULL,28,'Asistente de cocina',1,'2024-11-05 17:31:02','2024-11-05 17:31:02',NULL),(7,NULL,29,'Necesito una joven para atención al cliente que sea amable y atenta con los clientes y educada',1,'2024-11-21 11:47:21','2024-11-21 11:47:21',NULL),(8,NULL,30,'Se requiere un joven para atención al cliente y ayudante de parrilla',1,'2024-11-21 20:56:41','2024-11-21 20:56:41',NULL),(9,NULL,31,'Se requiere una señora para atención al cliente y un joven para ayudante de parrilla',1,'2024-11-22 11:52:32','2024-11-22 11:52:32',NULL),(10,NULL,32,'Que sea amable y muy responsbale',1,'2024-11-22 11:55:45','2024-11-22 11:55:45',NULL),(11,NULL,33,'Se requiere dos jóvenes para atención al cliente que sea amable con los clientes y sea responsable',1,'2024-11-23 16:44:34','2024-11-23 16:44:34',NULL),(12,NULL,34,'atención al cliente',1,'2024-11-25 07:00:21','2024-11-25 07:00:21',NULL),(13,NULL,35,'Busco secretaria',1,'2024-12-10 15:49:42','2024-12-10 15:49:42',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_types`
--

LOCK TABLES `job_types` WRITE;
/*!40000 ALTER TABLE `job_types` DISABLE KEYS */;
INSERT INTO `job_types` VALUES (1,'Otra',NULL,'otra',1,'2023-05-20 13:24:23','2023-05-20 13:24:23',NULL),(2,'Medicina',NULL,'medicina',1,'2023-05-20 13:24:30','2023-05-20 13:24:30',NULL),(3,'Administración pública',NULL,'administracion-publica',1,'2023-05-20 13:24:46','2023-05-20 13:24:46',NULL),(4,'Transporte',NULL,'transporte',1,'2023-05-20 13:24:52','2023-05-20 13:24:52',NULL),(5,'Construcción',NULL,'construccion',1,'2023-05-20 13:25:00','2023-05-20 13:25:00',NULL),(6,'Tecnología',NULL,'tecnologia',1,'2023-05-20 13:24:23','2023-05-20 13:24:23',NULL),(7,'Hoteleria',NULL,'hoteleria',1,'2023-11-29 20:31:50','2023-11-29 20:31:50',NULL),(8,'Tienda de Accesorios para celulares',NULL,'tienda-de-accesorios-para-celulares',1,'2023-11-29 20:32:21','2023-11-29 20:32:21',NULL),(9,'Tienda de celulares y accesorios',NULL,'tienda-de-celulares-y-accesorios',1,'2023-11-29 20:32:52','2023-11-29 20:32:52',NULL),(10,'Restaurante',NULL,'restaurante',1,'2023-11-29 20:33:13','2023-11-29 20:33:13',NULL),(11,'Tienda de Material de escritorio',NULL,'tienda-de-material-de-escritorio',1,'2023-11-29 20:34:26','2023-11-29 20:34:26',NULL),(12,'Tienda de Calzados',NULL,'tienda-de-calzados',1,'2023-11-29 20:34:55','2023-11-29 20:34:55',NULL),(13,'Boutique',NULL,'boutique',1,'2023-11-29 20:35:13','2023-11-29 20:35:13',NULL),(14,'Imprenta y Publicidad',NULL,'imprenta-y-publicidad',1,'2023-11-29 20:35:33','2023-11-29 20:35:33',NULL),(15,'Tienda de ropa deportiva',NULL,'tienda-de-ropa-deportiva',1,'2023-11-29 20:35:54','2023-11-29 20:35:54',NULL),(16,'Licoreria',NULL,'licoreria',1,'2023-11-29 20:36:13','2023-11-29 20:36:13',NULL),(17,'Tienda de motocicletas',NULL,'tienda-de-motocicletas',1,'2023-11-29 20:36:29','2023-11-29 20:37:11',NULL),(18,'Salon y Peluqueria',NULL,'salon-y-peluqueria',1,'2023-11-29 20:36:59','2023-11-29 20:36:59',NULL),(19,'Tienda de Computadoras e Impresoras',NULL,'tienda-de-computadoras-e-impresoras',1,'2023-11-29 20:37:38','2023-11-29 20:37:38',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,6,'Ingeniero de sistemas','ingeniero-de-sistemas',NULL,1,'2023-05-20 13:29:14','2023-05-20 13:29:14',NULL),(2,5,'Albañil','albanil',NULL,1,'2023-05-20 16:06:20','2023-05-20 16:06:20',NULL),(3,2,'Doctor','doctor',NULL,1,'2023-05-20 16:24:53','2023-05-20 16:24:53',NULL),(4,3,'Contador','contador',NULL,1,'2023-05-20 16:25:10','2023-05-20 16:25:10',NULL),(5,4,'Chofer','chofer',NULL,1,'2023-05-20 16:25:22','2023-05-20 16:25:22',NULL),(6,1,'Semiocioso','semiocioso',NULL,1,'2023-05-20 16:36:49','2023-05-20 16:36:49',NULL),(7,1,'sin profecion','sin-profecion',NULL,1,'2023-05-22 10:19:32','2023-05-22 10:19:32',NULL),(8,1,'ventera','ventera',NULL,1,'2023-05-22 10:38:12','2023-05-22 10:38:12',NULL),(9,1,'estudiante','estudiante',NULL,1,'2023-05-22 10:51:07','2023-05-22 10:51:07',NULL),(12,6,'secretario','secretario',NULL,1,'2023-05-22 12:42:50','2023-05-22 12:42:50',NULL),(13,1,'tecnico en industria de alimentos','tecnico-en-industria-de-alimentos',NULL,1,'2023-05-22 12:50:31','2023-05-22 12:50:31',NULL),(14,5,'mecánica electrónica','mecanica-electronica',NULL,1,'2023-05-22 12:52:24','2023-05-22 12:52:24',NULL),(15,3,'economista','economista',NULL,1,'2023-05-22 22:52:47','2023-05-22 22:52:47',NULL),(16,1,'Administradora','administradora',NULL,1,'2023-05-24 09:44:32','2023-05-24 09:44:32',NULL),(17,1,'estudiante universitario','estudiante-universitario',NULL,1,'2023-05-24 11:12:26','2023-05-24 11:12:26',NULL),(21,1,'universitario','universitario',NULL,1,'2023-05-31 22:42:53','2023-05-31 22:42:53',NULL),(22,1,'estudiate universitario','estudiate-universitario',NULL,1,'2023-05-31 23:00:38','2023-05-31 23:00:38',NULL),(23,1,'Relaciones Públicas','relaciones-publicas',NULL,1,'2023-06-27 18:52:22','2023-06-27 18:52:22',NULL),(25,1,'estudiante derecho','estudiante-derecho',NULL,1,'2023-06-27 21:29:16','2023-06-27 21:29:16',NULL),(29,1,'prueba','prueba',NULL,1,'2023-07-04 17:00:22','2023-07-04 17:00:22',NULL),(32,1,'Gastronomia','gastronomia',NULL,1,'2023-07-04 17:55:36','2023-07-04 17:55:36',NULL),(33,1,'atencion al cliente','atencion-al-cliente',NULL,1,'2023-07-04 17:55:53','2023-07-04 17:55:53',NULL),(34,1,'mesero','mesero',NULL,1,'2023-07-04 17:56:04','2023-07-04 17:56:04',NULL),(35,1,'limpieza','limpieza',NULL,1,'2023-07-04 17:56:21','2023-07-04 17:56:21',NULL),(36,1,'ayudante de cocina','ayudante-de-cocina',NULL,1,'2023-07-04 17:56:54','2023-07-04 17:56:54',NULL),(38,1,'tecnico-basico','tecnico-basico',NULL,1,'2023-07-05 20:17:11','2023-07-05 20:17:11',NULL),(39,1,'derecho','derecho',NULL,1,'2023-07-05 21:13:35','2023-07-05 21:13:35',NULL),(40,1,'periodista','periodista',NULL,1,'2023-07-05 21:18:48','2023-07-05 21:18:48',NULL),(43,1,'comunicacion-social','comunicacion-social',NULL,1,'2023-07-05 21:47:48','2023-07-05 21:47:48',NULL),(44,1,'comercio-internacional','comercio-internacional',NULL,1,'2023-07-05 23:00:45','2023-07-05 23:00:45',NULL),(46,1,'ingenieria-comercial','ingenieria-comercial',NULL,1,'2023-07-05 23:06:51','2023-07-05 23:06:51',NULL),(47,1,'comunicaciom-y-marketim','comunicaciom-y-marketim',NULL,1,'2023-07-06 07:27:14','2023-07-06 07:27:14',NULL),(48,2,'medico','medico',NULL,1,'2023-07-06 14:24:01','2023-07-06 14:24:01',NULL),(51,1,'contador-publico','contador-publico',NULL,1,'2023-07-07 01:46:56','2023-07-07 01:46:56',NULL),(52,3,'administrador','administrador',NULL,1,'2023-07-07 09:23:10','2023-07-07 09:23:10',NULL),(53,1,'veterinario','veterinario',NULL,1,'2023-07-07 10:48:51','2023-07-07 10:48:51',NULL),(54,1,'ingeniera-comercial','ingeniera-comercial',NULL,1,'2023-07-07 11:16:38','2023-07-07 11:16:38',NULL),(55,1,'contadora-general','contadora-general',NULL,1,'2023-07-07 12:09:56','2023-07-07 12:09:56',NULL),(56,1,'secretaria-ejecutiva','secretaria-ejecutiva',NULL,1,'2023-07-07 14:57:38','2023-07-07 14:57:38',NULL),(57,1,'estudiante-de-comunicacion-social','estudiante-de-comunicacion-social',NULL,1,'2023-07-12 10:55:41','2023-07-12 10:55:41',NULL),(63,1,'tec-visitador-medico','tec-visitador-medico',NULL,1,'2023-07-15 16:32:53','2023-07-15 16:32:53',NULL),(66,1,'ayudantes-de-cocina','ayudantes-de-cocina',NULL,1,'2023-07-17 09:53:57','2023-07-17 09:53:57',NULL),(71,13,'estudiando','estudiando',NULL,1,'2024-10-09 11:40:06','2024-10-09 11:40:06',NULL),(72,1,'Psicóloga','psicologa',NULL,1,'2024-10-09 11:56:00','2024-10-09 11:56:00',NULL),(73,10,'bachiller','bachiller',NULL,1,'2024-10-10 12:15:50','2024-10-10 12:15:50',NULL),(74,1,'egresado en economía','egresado-en-economia',NULL,1,'2024-10-21 09:55:44','2024-10-21 09:55:44',NULL),(81,15,'bachiler','bachiler',NULL,1,'2024-12-02 22:57:47','2024-12-02 22:57:47',NULL),(87,1,'comercio','comercio',NULL,1,'2024-12-03 09:02:40','2024-12-03 09:02:40',NULL),(114,9,'estudiantes','estudiantes',NULL,1,'2024-12-12 02:13:21','2024-12-12 02:13:21',NULL),(115,1,'trabajador','trabajador',NULL,1,'2025-04-15 11:15:44','2025-04-15 11:15:44',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_items`
--

LOCK TABLES `menu_items` WRITE;
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
INSERT INTO `menu_items` VALUES (1,1,'Inicio','','_self','voyager-home','#000000',NULL,1,'2021-06-02 17:55:32','2021-06-02 14:51:15','voyager.profile','null'),(2,1,'Media','','_self','voyager-images',NULL,5,3,'2021-06-02 17:55:32','2021-06-02 14:07:22','voyager.media.index',NULL),(3,1,'Usuarios','','_self','voyager-person','#000000',11,1,'2021-06-02 17:55:32','2022-05-24 15:06:46','voyager.users.index','null'),(4,1,'Roles','','_self','voyager-lock',NULL,11,2,'2021-06-02 17:55:32','2021-06-02 14:08:05','voyager.roles.index',NULL),(5,1,'Herramientas','','_self','voyager-tools','#000000',NULL,9,'2021-06-02 17:55:32','2023-12-02 11:41:38',NULL,''),(6,1,'Menu Builder','','_self','voyager-list',NULL,5,1,'2021-06-02 17:55:33','2021-06-02 14:07:22','voyager.menus.index',NULL),(7,1,'Database','','_self','voyager-data',NULL,5,2,'2021-06-02 17:55:33','2021-06-02 14:07:22','voyager.database.index',NULL),(8,1,'Compass','','_self','voyager-compass',NULL,5,4,'2021-06-02 17:55:33','2021-06-02 14:07:22','voyager.compass.index',NULL),(9,1,'BREAD','','_self','voyager-bread',NULL,5,5,'2021-06-02 17:55:33','2021-06-02 14:07:23','voyager.bread.index',NULL),(10,1,'Configuraciones','','_self','voyager-settings','#000000',NULL,8,'2021-06-02 17:55:33','2023-12-02 11:41:38','voyager.settings.index','null'),(11,1,'Seguridad','','_self','voyager-lock','#000000',NULL,7,'2021-06-02 14:07:53','2023-12-02 11:41:38',NULL,''),(12,1,'Limpiar cache','','_self','voyager-refresh','#000000',5,6,'2021-06-25 18:03:59','2022-05-24 15:06:32','clear.cache',NULL),(13,1,'Permisos','','_self','voyager-list',NULL,11,3,'2022-05-24 15:21:21','2022-05-24 15:21:31','voyager.permissions.index',NULL),(14,1,'Áreas profesionales','','_self','voyager-list','#000000',19,1,'2023-05-20 13:05:45','2023-05-20 13:28:37','voyager.job-types.index','null'),(15,1,'Profesiones','','_self','voyager-list',NULL,19,2,'2023-05-20 13:06:43','2023-05-20 13:21:33','voyager.jobs.index',NULL),(16,1,'Paises','','_self','voyager-list',NULL,19,3,'2023-05-20 13:10:44','2023-12-02 11:41:38','voyager.countries.index',NULL),(17,1,'Departamentos','','_self','voyager-list',NULL,19,4,'2023-05-20 13:11:25','2023-12-02 11:41:38','voyager.states.index',NULL),(18,1,'Ciudades','','_self','voyager-list',NULL,19,5,'2023-05-20 13:12:57','2023-12-02 11:41:38','voyager.cities.index',NULL),(19,1,'Parámetros','','_self','voyager-params','#000000',NULL,6,'2023-05-20 13:21:27','2023-12-02 11:41:38',NULL,''),(20,1,'Ofertas de trabajos','','_self','voyager-news',NULL,NULL,4,'2023-05-26 14:31:04','2023-12-02 11:41:38','voyager.job-offers.index',NULL),(22,1,'Negocios','','_self','voyager-helm','#000000',NULL,2,'2023-10-23 14:13:54','2023-11-29 22:12:00','voyager.business.index','null'),(23,1,'Trabajos Obtenidos','','_self','voyager-thumbs-up','#000000',NULL,5,'2023-11-29 22:07:17','2023-12-02 11:41:38','voyager.job-applications.index','null'),(24,1,'Personas','','_self','voyager-helm',NULL,NULL,3,'2023-12-02 11:27:47','2023-12-02 11:41:38','voyager.people.index',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_01_01_000000_add_voyager_user_fields',1),(4,'2016_01_01_000000_create_data_types_table',1),(5,'2016_05_19_173453_create_menu_table',1),(6,'2016_10_21_190000_create_roles_table',1),(7,'2016_10_21_190000_create_settings_table',1),(8,'2016_11_30_135954_create_permission_table',1),(9,'2016_11_30_141208_create_permission_role_table',1),(10,'2016_12_26_201236_data_types__add__server_side',1),(11,'2017_01_13_000000_add_route_to_menu_items_table',1),(12,'2017_01_14_005015_create_translations_table',1),(13,'2017_01_15_000000_make_table_name_nullable_in_permissions_table',1),(14,'2017_03_06_000000_add_controller_to_data_types_table',1),(15,'2017_04_21_000000_add_order_to_data_rows_table',1),(16,'2017_07_05_210000_add_policyname_to_data_types_table',1),(17,'2017_08_05_000000_add_group_to_settings_table',1),(18,'2017_11_26_013050_add_user_role_relationship',1),(19,'2017_11_26_015000_create_user_roles_table',1),(20,'2018_03_11_000000_add_user_settings',1),(21,'2018_03_14_000000_add_details_to_data_types_table',1),(22,'2018_03_16_000000_make_settings_value_nullable',1),(23,'2019_08_19_000000_create_failed_jobs_table',1),(24,'2023_05_19_120248_create_countries_table',1),(25,'2023_05_19_155741_create_states_table',1),(26,'2023_05_19_160439_create_cities_table',1),(27,'2023_05_19_160517_create_job_types_table',1),(28,'2023_05_19_160633_create_jobs_table',1),(29,'2023_05_19_160644_create_people_table',1),(34,'2023_05_19_221954_create_business_table',2),(35,'2023_05_22_134931_create_job_offers_table',2),(36,'2023_05_23_161844_create_job_applications_table',2);
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
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,1,1,NULL,'Mejia','10830573','masculino','1991-04-29','75199157','C/ ipurupuro nro 75',NULL,NULL,'Desarrollador full stack y administrador de servidores',NULL,1,1,'2023-05-20 16:03:24','2023-05-29 16:16:52','2023-05-29 16:16:52'),(2,1,2,NULL,'Perez','87687987','masculino','1992-05-15','75199157','C/ 12',NULL,NULL,'nn',NULL,1,1,'2023-05-20 16:06:20','2023-05-29 16:16:59','2023-05-29 16:16:59'),(3,1,2,NULL,'Peña','18277yy','masculino','2023-05-17','67662833','Bahshhh',NULL,NULL,'Nshshha',NULL,1,1,'2023-05-20 16:08:04','2023-05-29 16:17:05','2023-05-29 16:17:05'),(4,1,1,NULL,NULL,'Qtq55',NULL,NULL,'67662833','Jqhahha',NULL,NULL,'',NULL,1,1,'2023-05-20 16:09:14','2023-05-29 16:17:09','2023-05-29 16:17:09'),(5,1,1,NULL,'pitt','7580166','femenino','2000-11-09','75891900','c/ ipurupuru',NULL,NULL,NULL,NULL,1,1,'2023-05-20 16:14:47','2023-05-29 16:17:14','2023-05-29 16:17:14'),(6,1,6,NULL,'Mismo','12345678','masculino','2003-09-21','+59172824354','72824354',NULL,NULL,'Comer y dormir',NULL,1,1,'2023-05-20 16:36:49','2023-05-29 16:17:22','2023-05-29 16:17:22'),(7,3,4,'Felipe','Rodríguez  vargas','5606080','masculino','1986-12-17','73957634','Beni guayaramerin frontera con brazil',NULL,NULL,'Soy administrador de empresa soy lider en mi ciudad presidente cívico tengo experiencia laboral me adapto a cualquier trabajo siempre sea para el beneficio de la administración publica y manejo de una institución,esperemos ser parte de su equipo sabiendo que en mi poblacion carecemos de empleo',NULL,1,1,'2023-05-22 08:25:33','2023-05-22 08:25:33',NULL),(8,2,4,'José Antonio','López Ardaya','78740335','masculino','1988-09-14','78740335','Barrio san jose',NULL,NULL,'Encargado de agencia de venta de motocicletas al contado y al credito',NULL,1,1,'2023-05-22 08:35:26','2023-05-22 08:35:26',NULL),(9,2,7,'Miguel','Puro Cuba','4205003','masculino','2002-12-26','72352587','Av. Reyes Esq.aceitera nro. 286',NULL,NULL,'Soy responsable y puntual en el trabajo',NULL,1,1,'2023-05-22 10:19:32','2023-05-22 10:19:32',NULL),(10,2,4,'Gabriela Maria','Antonio Motsua','12407862','femenino','2008-08-23','69393709','Av. Fuerza Naval Nro. 542',NULL,NULL,'Aun no he trabajado, tengo 14 años y me gustaría trabajar para tener experiencia laboral...',NULL,1,1,'2023-05-22 10:30:32','2023-05-22 10:30:32',NULL),(11,2,8,'Ximena','Guzmán mendoza','10859270','femenino','1995-10-01','74710097','Av.abdon aguilera',NULL,NULL,'Negocios',NULL,1,1,'2023-05-22 10:38:12','2023-05-22 10:38:12',NULL),(12,2,9,'Lidia Carolina','Cortez Cartagena','12687849','femenino','2006-03-27','73372767','Av. Reyes B/ Centenario #546',NULL,NULL,'Ayudante de cocina, ayudante en pasteleria',NULL,1,1,'2023-05-22 10:51:07','2023-05-22 10:51:07',NULL),(13,NULL,12,'Leonardo','Puro muzuco','12408497','masculino','2000-09-12','63567438','Av.Reyes Esq.seitera',NULL,NULL,'Acerradero , moto repuesto',NULL,1,1,'2023-05-22 12:42:50','2023-05-22 12:42:50',NULL),(14,2,13,'Luzdey','Cartagena alvarez','10853251bn','femenino','1992-06-07','76888953','AB Beni mamore/  Pasillo Sin nominar',NULL,NULL,'Auxiliar en producto terminado empresa Eba',NULL,1,1,'2023-05-22 12:50:31','2023-05-22 12:50:31',NULL),(15,2,14,'Kadir subirana','Dominguez','10842457','masculino','1999-07-02','77841878','Av pachiuva',NULL,NULL,'Mecánica electrónica',NULL,1,1,'2023-05-22 12:52:24','2023-05-22 12:52:24',NULL),(16,2,2,'Roger','Ojara Guayao','15685839','masculino','1999-10-20','71899147','Av mamore',NULL,NULL,'Contruccion de casas y viviendas',NULL,1,1,'2023-05-22 15:37:30','2023-05-22 15:37:30',NULL),(17,2,4,'Estefani','Vasquez Mercado','14334623','femenino','1997-07-20','69368061','Barrio Canadá - Calle Pachubilla S/N',NULL,NULL,'Aun no he trabajado en ninguna institución, pero me gustaría ser parte de este proyecto',NULL,1,1,'2023-05-22 18:12:43','2023-05-22 18:12:43',NULL),(18,3,1,'Maurício','Guanacoma Lima','7594277','masculino','1995-01-10','78673112','Oscar Unzaga De La Vega, Esq/ Sucre',NULL,NULL,'Trabajo de campo en planta de tratamiento de aguas en Guayaramerin , no sale la opción en mi área… coloque sistemas porque es la única que sale.. soy Ingeniero Químico y Ts en Química Induatrial',NULL,1,1,'2023-05-22 22:18:15','2023-05-22 22:18:15',NULL),(19,2,15,'Alexander','semo rivero','10811409','masculino','1995-09-13','73905975','pasillo 3 barrio centenario',NULL,NULL,'Asesor de crédito durante 3 años y medio en Banco Pyme Ecofuturo desde junio del 2018 a octubre de 2021',NULL,1,1,'2023-05-22 22:52:47','2023-05-22 22:52:47',NULL),(20,NULL,16,'MARIA BELEN','Vargas puerta','10852818','femenino','1999-03-25','77841619','Av/Bario san jose obrero',NULL,NULL,'Aprendo rapido',NULL,1,1,'2023-05-24 09:44:32','2023-05-24 09:44:32',NULL),(21,2,12,'Zulema alison','Vargas puerta de Winkelman','7611605','femenino','2000-04-15','78083805','Av. Chuquisaca. Calle Federico hecker',NULL,NULL,NULL,NULL,1,1,'2023-05-24 09:45:48','2023-05-24 09:45:48',NULL),(22,2,4,'Sergio','Saavedra','14335183','masculino','1999-05-09','69655089','Av.Ruben Castedo N°1177',NULL,NULL,'Prácticas Laborales centro de salud San Andrés en el área de administración y contabilidad',NULL,1,1,'2023-05-24 09:58:02','2023-05-24 09:58:02',NULL),(23,2,17,'Erick','Sosa Bollati','7615704','masculino','1993-12-21','75751718','Av/ Simón Bolívar',NULL,NULL,'Muy buenos días \r\nLa verdad que experiencia laboral tengo muchas he tratado en sector privado y público \r\nÁreas de salud / cadena alimenticia e Industrias de alimentos en laboratorios.\r\nAprendo demasiado rápido y estoy presto para cualquier área Laboral y disponibilidad las 24hra del día \r\nMe despido deseándoles éxitos en sus funciones',NULL,1,1,'2023-05-24 11:12:26','2023-05-24 11:12:26',NULL),(24,2,4,'José Armando','Andia Musua','15524803','masculino','2002-10-30','78744469','Barrio Canada _ Av. Majo s/n',NULL,NULL,'Me gustaría trabajar, tengo ganas y motivación',NULL,1,1,'2023-05-24 18:47:34','2023-05-24 18:47:34',NULL),(25,2,4,'Karolina','Tellez Motsua','14422258','femenino','1997-03-17','73164579','Av. Fuerza Naval 542',NULL,NULL,'No tengo experiencia, pero quiero trabajar para adquirir experiencia',NULL,1,1,'2023-05-24 18:51:37','2023-05-24 18:51:37',NULL),(26,2,21,'Yaemi','Claure Sato','9269371','femenino','2003-04-03','75895774','Av coco de oro Barrio rosedal',NULL,NULL,'Estudiante universitario de 5to semestre de la carrera de Derecho en la UAB de Riberalta \r\nPasante en la fiscalía especializada en delitos contra la integridad personal de Riberalta desde 16/09/21 hasta 30/08/22 \r\nPasante en la fiscalía especializada en delitos de reacción inmediata y solución temprana de Riberalta desde 01/10/22 hasta la fecha actual',NULL,1,1,'2023-05-31 22:42:53','2023-05-31 22:42:53',NULL),(27,2,22,'Dario Humberto','Salmon salas','7593801','masculino','1987-09-12','75896045','Calle.- Ignacio aponte N.- 1258 B.- la merced',NULL,NULL,'Estudiante universitario de la carrera de derecho del primer semestre en la UAB de Riberalta \r\nPasante en la fiscalía especializada en delitos de reacción inmediata desde 01/02/23 hasta la fecha',NULL,1,1,'2023-05-31 23:00:38','2023-05-31 23:00:38',NULL),(28,1,23,'Eisner Daniel','Franco Arias','12187779','masculino','1994-08-21','77840947','Nueva Trinidad 3ra entrada',NULL,NULL,'Empleo',NULL,1,1,'2023-06-27 18:52:22','2023-06-27 18:52:22',NULL),(30,1,25,'José Carlos','Añez aguilar','10794621','masculino','1991-04-08','10794621','Calle Wilfredo cortez esquina feliz pinto',NULL,NULL,'Ventas de electrodomésticos. Promotor de la defensoría de la niñez .procurador de despacho de abogado',NULL,1,1,'2023-06-27 21:29:16','2023-06-27 21:29:16',NULL),(32,1,29,'agustin','mejia','2353353','masculino','1991-04-26','75199157','nn',NULL,NULL,'prueba',NULL,1,1,'2023-07-04 17:00:22','2023-07-04 17:00:22',NULL),(33,1,12,'Andrea','Llapiz Melgar','7619207','femenino','2004-11-22','71129948','Las palmas, manzano E, casa I-25',NULL,NULL,'EXPERIENCIA LABORAL:\r\nAsistente Legal en las instalaciones del estudio Juridico PERLA KREIDSTEIN MERCADO desde noviembre 2022 hasta marzo 2023\r\n ESTUDIOS UNIVERSITARIO:\r\nCursando la carrera de Ingeniería Comercial Universidad Domingo Sabio.\r\n ASISTENCIA A CURSOS:\r\nCertificado: liderazgo en base a la ética y la moral realizado por la Universidad Domingo Sabio en el año 2021\r\nESTUDIO OBTENIDO A NIVEL TECNICO MEDIO\r\nTitulo obtenido de técnico medio en SISTEMAS INFORMATICOS otorgado por el Ministerio de Educación del Estado Plurinacional de Bolivia La Paz-Bolivia, gestión 2022',NULL,1,1,'2023-07-05 19:48:38','2023-07-05 19:48:38',NULL),(34,1,38,'paola lizbeth','cholima perez','10788976','femenino','1993-11-21','75197052','nueva trinidad calle 14',NULL,NULL,NULL,NULL,1,1,'2023-07-05 20:17:11','2023-07-05 20:17:11',NULL),(35,1,3,'Kelin Crusita','Pedraza Barrios','12438193','femenino','2005-09-22','63606377','Av 13 de abril',NULL,NULL,NULL,NULL,1,1,'2023-07-05 20:31:47','2023-07-05 20:31:47',NULL),(36,NULL,2,'José Armando','Cartagena temo','12189032','masculino','2023-08-25','73159706','Av.beni esq rogaguado 1143',NULL,NULL,'Maestro',NULL,1,1,'2023-07-05 20:49:09','2023-07-05 20:49:09',NULL),(37,1,15,'Liz Damari','Flores Guardia','10802489','femenino','1999-02-23','69395245','Zona Fátima calle tte. Luis cespedes',NULL,NULL,'Sin experiencia laboral pero con muchas ganas de aprender nuevos retos laborales.',NULL,1,1,'2023-07-05 21:03:59','2023-07-05 21:03:59',NULL),(38,1,39,'Luana Liudes','Terrazas Da Costa','5705594','femenino','2002-07-22','72920709','Av Cambodromo',NULL,NULL,'Trabaje en la Asamblea Legislativa Departamental del Beni \r\nTambién trabaje en el Tribunal Electoral Departamental De Pando',NULL,1,1,'2023-07-05 21:13:35','2023-07-05 21:13:35',NULL),(39,1,40,'Alejandra','Ardaya','12816426','femenino','1995-11-18','67358403','B/ 13 de Abril C/ Romulo Mendoza',NULL,NULL,'Reportera y Jefe prensa',NULL,1,1,'2023-07-05 21:18:48','2023-07-05 21:18:48',NULL),(40,1,3,'Diego','Suárez Guasase','7618909','masculino','1991-03-22','67271878','Av. Costanera Z. Los tonos #550',NULL,NULL,'Médico general',NULL,1,1,'2023-07-05 21:21:15','2023-07-05 21:21:15',NULL),(41,1,43,'Yajhara Elisa','Guzmán Ascimani','7622288','femenino','1993-05-26','70272322','Z/ 4 de febrero C/ Yomomo S/N',NULL,NULL,'Técnico en producción de Radio Ibare y Canal 11 TvU',NULL,1,1,'2023-07-05 21:47:48','2023-07-05 21:47:48',NULL),(42,1,44,'Aura Mariana','Suarez Barba','10796481','femenino','2001-04-02','78740504','Av. Aeropuerto z/recreo',NULL,NULL,'Elaboración de proyectos',NULL,1,1,'2023-07-05 23:00:45','2023-07-05 23:00:45',NULL),(44,1,46,'Tamara','Stroebel Guardia','12559909','femenino','1998-12-17','78650991','Barrio 6 de junio Manzano 0 N°23',NULL,NULL,'Elaboración de Proyectos',NULL,1,1,'2023-07-05 23:06:51','2023-07-05 23:06:51',NULL),(45,2,47,'Alberto','Rivero Villavicencio','7605141','masculino','1990-04-23','7605141','Av. Bakaba',NULL,NULL,'Secretario de bufete de abogado y encargado de  ventas de veiculos.motos.casas.',NULL,1,1,'2023-07-06 07:27:14','2023-07-06 07:27:14',NULL),(46,1,1,'Junior durval','Mercado vaca','10818061','masculino','2003-07-17','10818061','Av 27 de mayo entre 6 de agosto y antonio vaca diez',NULL,NULL,'Pasantia de 6 meses en el area de mantenimiento de computadoras en el edificio de la central de la universidad autónoma del beni.\r\nY 1 mes de pasante en golochtel en el área de mantenimiento',NULL,1,1,'2023-07-06 09:00:11','2023-07-06 09:00:11',NULL),(47,1,15,'Junior','Aguilera Montero','10802928','masculino','1997-12-16','77848126','Z/ Progreso Union',NULL,NULL,'Experiencia Laboral:\r\n•	Realice Pasantía dentro de la Gerencia Departamental del Fondo Nacional de Inversiones Productiva y Social FPS – Beni, desde la fecha 15 de noviembre de 2021 hasta el 16 de febrero de 2022.\r\n•	Realice Pasantía, en la Dirección de la Carrera de Economía dependiente de la Universidad Autónoma del Beni, como apoyo, en el Área de la Comisión de Autoevaluación y Acreditación de la Carrera, desde la fecha 28 de marzo de 2022 hasta el 09 de diciembre 2022.',NULL,1,1,'2023-07-06 11:33:14','2023-07-06 11:33:14',NULL),(48,1,48,'Alexis Gabriela','Castedo Gonzales','7595743','femenino','1993-06-12','76875085','C/ San Lorenzo #52',NULL,NULL,'Medicina General\r\nMédico Ecografista',NULL,1,1,'2023-07-06 14:24:01','2023-07-06 14:24:01',NULL),(49,1,51,'Mithzy Melssir','Lacoa Cabrera','7604870','femenino','1997-08-01','68990478','Calle Tarija #458',NULL,NULL,'Servicio de mensajería en el courrier TRINIENVIO\r\nPrácticas profesionales en el área de auditoría interna del gobierno Autónomo Departamental del Beni\r\nCajera en el restaurante Pescadería El Surubí',NULL,1,1,'2023-07-07 01:46:56','2023-07-07 01:46:56',NULL),(50,1,52,'Jorge','Chávez Mapaquine','12775633','masculino','1995-07-25','71126581','Barrio Nueva Trinidad',NULL,NULL,'Pasantía en la Empresa Golochtel SRL. En el Área de Recursos humanos,dentro 3 meses.\r\nPasantía en Impuestos Nacionales en el Área de Atención al Cliente, durante 3 meses. \r\nActualmente trabajo en la Empresa Agropecuaria Remanso San Jorge con el cargo de administrador de Almacén',NULL,1,1,'2023-07-07 09:23:10','2023-07-07 09:23:10',NULL),(51,1,53,'Luis Enrique','Franco Matene','10803196','masculino','2002-05-03','63276180','Av. David Shriqui esque. Av. Nuevo amanecer',NULL,NULL,'-Atencion al cliente\r\n-Limpieza\r\n-relacionador',NULL,1,1,'2023-07-07 10:48:51','2023-07-07 10:48:51',NULL),(52,1,52,'Jeila','López aponte','10804373','femenino','1998-08-21','68964534','5 Entrada Nueva Trinidad C/5',NULL,NULL,'Recepcionista del hotel jacaranda 8 meses -Trinidad\r\nAsistente de la clínica dental biodentis 5 meses -Trinidad \r\nEn la empresa tecnolimpio 3 meses en el aeropuerto Jorge Genrish Araus',NULL,1,1,'2023-07-07 11:10:03','2023-07-07 11:10:03',NULL),(53,1,54,'Kiara Anai','Cortez Parra','12815693','femenino','2000-04-04','72838429','Av moxos #79',NULL,NULL,'Encargada de ventas en supermercado Charter, Auxiliar de aula Colegio el Cedro, Auxiliar Administrativo y contable C&C escribas TDD y Atención al cliente y Cobranzas en tienda de electrodomésticos Génesis Express Shop',NULL,1,1,'2023-07-07 11:16:38','2023-07-07 11:16:38',NULL),(54,1,55,'Virginia','Sanjinez Mole','9268646','femenino','1991-10-30','71128984','Barrio Villa Monasterio Calle NRO 2',NULL,NULL,'Tengo experiencia laboral en el área de caja, atención al cliente, contabilidad de empresa comercial ( presentaciones ante impuestos nacionales, cns, Ministerio del trabajo, gestora, y otros) dirigir equipo de ventas, secretariado.',NULL,1,1,'2023-07-07 12:09:56','2023-07-07 12:09:56',NULL),(55,1,56,'Ana Paola','Candia Taborga','9277194','femenino','2000-08-22','71146347','Z/12 de abril B/ Arroyo Chicó',NULL,NULL,'Experiencia en voluntariado en atención al cliente y área administrativa',NULL,1,1,'2023-07-07 14:57:38','2023-07-07 14:57:38',NULL),(56,1,48,'Maria esther','Vaca Salvatierra','7648505','femenino','1998-03-11','68952557','Calle flor de patuju',NULL,NULL,'Médico veterinario zootecnista, trabajos en clínicas de animales menores',NULL,1,1,'2023-07-07 19:13:13','2023-07-07 19:13:13',NULL),(57,1,52,'Alejandro','Guasebe Salvatierra','10802785','masculino','1997-11-12','75892745','Barrio patuju Calle 4 S/N',NULL,NULL,'Practicante en UOD BENI PAR II del MDRyT (Activos Fijos)',NULL,1,1,'2023-07-08 20:02:32','2023-07-08 20:02:32',NULL),(58,1,57,'Pablo Antonio','Moreno Curi','10780168','masculino','2002-04-24','73966075','Barrio Pantanal calle gaviota #315',NULL,NULL,'Tengo experiencia trabajando en medios de comunicación en presentacion, prensa, trabajo de recolección de encuestas y facil relacionamiento con las personas. También he trabajado en atención al cliente y relaciones con las personas.',NULL,1,1,'2023-07-12 10:55:41','2023-07-12 10:55:41',NULL),(59,1,63,'Liz Paula','Salas Navarro','5618726','femenino','2000-02-24','68484301','Z. Pompeya sobre la calle Isiboro entre moxos y primero de mayo nro 34',NULL,NULL,'Trabaje como auxiliar de farmacia, actualmente me dedico a atención al cliente.',NULL,1,1,'2023-07-15 16:32:53','2023-07-15 16:32:53',NULL),(62,NULL,66,'Daniel','Noza Cuevas','14437978','masculino','2006-11-13','69383028','Z/ Pantanal C/ Tiluchi',NULL,NULL,'ayudante de cocina en una churrasquería',NULL,1,1,'2023-07-17 09:53:57','2023-07-17 09:53:57',NULL),(63,1,NULL,'Mabel ','Becerra Aguilera','1905949-16','femenino',NULL,'79208809',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(64,1,NULL,'Carmen','Rosa Rocha','4717827','femenino',NULL,'78748414',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(65,1,NULL,'Alison','Escalante Rocha','12880823','femenino',NULL,'76868730',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(66,1,NULL,'Rebeca','Taquichiri Janco','13624184','femenino',NULL,'67216263',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(67,1,NULL,'Gary','Cuaere','12187879','masculino',NULL,'7282992',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(68,1,NULL,'Lourdes Yely','Ribera Cuellar','4192149','femenino',NULL,'70265420',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(69,1,NULL,'Geovani Oscar','Ferrufino Vargas','1736426','masculino',NULL,'78285198',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(70,1,NULL,'Silvana','Flores Perez','5263302','femenino',NULL,'70263715',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(71,1,NULL,'Maria Luisa','Salina Zabala','1920690','femenino',NULL,'69386872',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(72,1,NULL,'Claudia','Mercado Vaca','1907584','femenino',NULL,'72838223',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(73,1,NULL,'Adelia','Montenegro Rodriguez','1709952','femenino',NULL,'68967425',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(74,1,NULL,'Valeria','Antelo','401145','femenino',NULL,'69177040',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(75,1,NULL,'Juan Carlos','Ramirez Rodriguez','5616133','masculino',NULL,'60360117',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(76,1,NULL,'Miguel','Alvarez Muiba','72830627','masculino',NULL,'72830627',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(77,1,NULL,'Visnia Tereza','Suarez A?ez','1760694','femenino',NULL,'71124460',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(78,1,NULL,'Aldo','Bravo Sotto','4175412','masculino',NULL,'72819285',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(79,1,NULL,'Carlos JR','Montero Ribera','5622917','masculino',NULL,'70274007',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(80,1,NULL,'Carola','Melgar','1029831027','femenino',NULL,'74164333',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(81,1,NULL,'Yenniar','Rivero','1052155','femenino',NULL,'46-22946',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(82,1,NULL,'Isela','Guagama Becerra','12377748','femenino',NULL,'69375045',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(83,1,NULL,'Lizeth','Peres Ribera','10854446','femenino',NULL,'72826420',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(84,1,NULL,'Mayel','Rivera Yelma','12188793','femenino',NULL,'78298603',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(85,1,NULL,'Algel Leonardo','Lopez Alvarez','5613860','masculino',NULL,'72813660',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(86,1,NULL,'Elizabeth','Ledesma Vila','3104473','femenino',NULL,'71285403',NULL,NULL,NULL,NULL,NULL,2,1,NULL,NULL,NULL),(87,1,34,'CARLOS MANUEL','MOYE MOYE','14612689','masculino',NULL,'14612689',NULL,NULL,NULL,'MESERO EN RESTAURANTE',NULL,1,1,NULL,NULL,NULL),(88,1,35,'MATIAS','GUASEBE GUASOMA','14209227','masculino',NULL,'14209227',NULL,NULL,NULL,'REALIZO EL TRABAJO DE LIMPIEZA EN PATIO DE COMIDA',NULL,1,1,NULL,NULL,NULL),(89,1,34,'MARIA DEL ROSARIO','SOTTO MOSQUEIRA','16961693','femenino',NULL,'68974038',NULL,NULL,NULL,'MESERA EN RESTAURANTE ATENCION AL CLIENTE Y LIMPIEZA',NULL,1,1,NULL,NULL,NULL),(90,1,35,'JOSELIN','MENACHO MOSQUEIRA','15031558','femenino',NULL,'68974038',NULL,NULL,NULL,'REALIZO EL TRABAJO DE LIMPIEZA EN PATIO DE COMIDA',NULL,1,1,NULL,NULL,NULL),(91,1,34,'MARCO ANTONIO','CASTEDO ROMERO','15953351','masculino',NULL,'72921366',NULL,NULL,NULL,'MESERO EN RESTAURANTE',NULL,1,1,NULL,NULL,NULL),(92,1,34,'LUCIANA','PAZ RIVERO','12880940','femenino',NULL,'67533261',NULL,NULL,NULL,'LIMPIEZA EN LAGUNA JARDIN',NULL,1,1,NULL,NULL,NULL),(93,1,36,'LUIS GUSTAVO','ARCE CALLAU','13008601','masculino',NULL,'69568808',NULL,NULL,NULL,'AYUDANTE DE COCINA EN CHURRASQUERIA',NULL,1,1,NULL,NULL,NULL),(94,1,36,'DANIEL','NOZA CUEVAS','14437978-1','masculino',NULL,'69383028',NULL,NULL,NULL,'AYUDANTE DE COCINA EN CHURRASQUERIA',NULL,1,1,NULL,NULL,NULL),(95,1,36,'PAUL JUNIOR','SOTTO MOSQUEIRA','16961797','masculino',NULL,'68974038',NULL,NULL,NULL,'GASTRONOMIA AYUDANTE DE COCINA EN RESTAURANTE FLAMINGO\'S',NULL,1,1,NULL,NULL,NULL),(96,1,NULL,'LUIS ROQUE','DIEZ VARGAS','10856400','masculino',NULL,'10856400',NULL,NULL,NULL,'REPONEDOR EN SUPERMERCADO',NULL,1,1,NULL,NULL,NULL),(97,1,36,'ROGER','ORTIZ MEDINA','14209228','masculino',NULL,'73900836',NULL,NULL,NULL,'ELABORACION Y PREPARACION DE PIZZA',NULL,1,1,NULL,NULL,NULL),(98,1,36,'EDUARDO','SANCHEZ TUBE','15821339','masculino',NULL,'68973502',NULL,NULL,NULL,'ELABORACION Y PREPARACION DE POLLO A LA BROASTER',NULL,1,1,NULL,NULL,NULL),(99,1,36,'EDUARDO','MACABAPI MALELE','13991960','masculino',NULL,'68958945',NULL,NULL,NULL,'ELABORACION Y PREPARADO DE COMIDA',NULL,1,1,NULL,NULL,NULL),(100,1,36,'NHAGTLIG','JUSTINIANO NOCO','15347464','femenino',NULL,'63372745',NULL,NULL,NULL,'PREPARACION DE PASTAS Y COMIDA RAPIDA',NULL,1,1,NULL,NULL,NULL),(101,1,35,'GERSON ','JUSTINIANO NOCO','15347499','masculino',NULL,'63372745',NULL,NULL,NULL,'LIMPIEZA EN RESTAURANTE DE COMIDA RAPIDA',NULL,1,1,NULL,NULL,NULL),(102,1,36,'FRANCISCO','PAZ NOZA','14677511','masculino',NULL,'69369086',NULL,NULL,NULL,'AYUDANTE DE COCINA EN CHURRASQUERIA',NULL,1,1,NULL,NULL,NULL),(103,1,34,'ANDREA','CUELLAR ROCA','14739095','femenino',NULL,'74582984',NULL,NULL,NULL,'MESERA EN RESTAURANTE ATENCION AL CLIENTE  EN BALNEARIO',NULL,1,1,NULL,NULL,NULL),(104,1,35,'SARELA','CESPEDES SUAREZ','108300205','femenino',NULL,'67275870',NULL,NULL,NULL,'LIMPIEZA EN UN BALNEARIO',NULL,1,1,NULL,NULL,NULL),(105,1,34,'MILAGROS','GUASINAVE GUAJI','13008242','femenino',NULL,'13008242',NULL,NULL,NULL,'MESERA EN RESTAURANTE ATENCION AL CLIENTE  EN BALNEARIO',NULL,1,1,NULL,NULL,NULL),(106,1,34,'PURA BEATRIZ','MENACHO DURAN','13831476','femenino',NULL,'76863385',NULL,NULL,NULL,'MESERA EN CHURRASQUERIA',NULL,1,1,NULL,NULL,NULL),(107,1,5,'Rodrigo','Flores','745757','masculino','1980-12-23','70269362','calle sucre',NULL,NULL,'Chofer con licencia clase a',NULL,1,1,'2023-12-02 11:56:35','2023-12-02 11:56:35',NULL),(108,1,NULL,'Marco','Suarez','635474577',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2023-12-02 11:58:19','2023-12-02 11:58:19',NULL),(109,1,2,'Luis','Garcia','65767575','masculino','1980-05-01','70269362','calle s/n',NULL,NULL,'Maestro de Obra',NULL,1,1,'2023-12-02 12:05:44','2023-12-02 12:05:44',NULL),(110,2,NULL,'Carlos Dorian','Lazo Góngora','9269711',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2024-09-10 21:50:37','2024-09-10 21:50:37',NULL),(111,2,NULL,'Joselito','Rodrigo Velarde','7593886',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2024-09-17 11:47:16','2024-09-17 11:47:16',NULL),(112,NULL,12,'María de los Ángeles','Nava Muchairo','4219854','femenino','2003-10-01','63279416','Barrio san jose',NULL,NULL,'Trabaje de cajera en Bonanza multicreditos, y en atención al cliente en una farmacia',NULL,1,1,'2024-09-23 11:34:46','2024-09-23 11:34:46',NULL),(113,1,71,'Alexandro','Orosco Suárez','13891166','masculino','2006-11-29','74374342','C/.N . SRA.DEL ROSARIO/Ñ-21',NULL,NULL,'Soy estudiante estoy en la pre promo',NULL,1,1,'2024-10-09 11:40:06','2024-10-09 11:40:06',NULL),(114,1,72,'Celia Yris','Aguilera Chappy','4192063','femenino','1984-04-02','65211954','C/Mosetenez #217',NULL,NULL,'PROMOTORA SOCIAL EN PSICÓLOGOS SIN FRONTERAS...',NULL,1,1,'2024-10-09 11:56:00','2024-10-09 11:56:00',NULL),(115,1,73,'Daniela Lizeth','Villarroel temo','10838419','femenino','2004-04-01','64983241','Barrio villa vecinal c/6',NULL,NULL,'Tengo experiencia en restaurante y ventas',NULL,1,1,'2024-10-10 12:15:50','2024-10-10 12:15:50',NULL),(116,1,71,'Ligia','Martin','32223080','femenino','2005-09-20','75196083','Av pedro ignición',NULL,NULL,NULL,NULL,1,1,'2024-10-10 14:00:19','2024-10-10 14:00:19',NULL),(118,1,74,'Grober','Yubanure','12437598','masculino','2001-02-08','63357608','Zona 13 de abril. Calle costanera',NULL,NULL,'Encargado de ventas en una pensión',NULL,1,1,'2024-10-21 09:55:44','2024-10-21 09:55:44',NULL),(119,2,NULL,'Angela','Flores','12387837',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2024-11-05 17:31:02','2024-11-05 17:31:02',NULL),(120,2,NULL,'Mari Luz','Molina Sossa','7655482015',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2024-11-21 11:47:21','2024-11-21 11:47:21',NULL),(121,2,NULL,'Roy Jorge','Lobo Arteaga','4537972016',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2024-11-21 20:56:41','2024-11-21 20:56:41',NULL),(122,2,NULL,'Rubén Dario','Ojopi Roca','4410090016',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2024-11-22 11:52:32','2024-11-22 11:52:32',NULL),(123,2,NULL,'Veronica','VALDIVIA AQUISE','9108444012',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2024-11-22 11:55:45','2024-11-22 11:55:45',NULL),(124,2,NULL,'Juan Ariel','Amutari Huari','1728892012',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2024-11-23 16:44:34','2024-11-23 16:44:34',NULL),(125,2,NULL,'iver Leonardo Fernández','Fernández','12661232',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2024-11-25 07:00:21','2024-11-25 07:00:21',NULL),(126,2,73,'Claudia','Vargas Mendez','12815883','femenino','2008-02-05','68987282','Avenida Plácida Molina zona San Francisco',NULL,NULL,'Busco trabajo en un Restaurante se de cocina y soy muy ágil para hacer los labores y amable con la gente y dar buena atención',NULL,1,1,'2024-12-02 22:53:19','2024-12-02 22:53:19',NULL),(127,NULL,2,'Agustín','colque vargas','12834588','masculino','2006-01-02','67362727','Barrio tamarindo',NULL,NULL,'Venta de garaje',NULL,1,1,'2024-12-02 22:54:22','2024-12-02 22:54:22',NULL),(128,2,5,'Osvaldo','Fernández','67362312','masculino','2005-12-19','78662723','Barrio 25 de marzo',NULL,NULL,'Chofer de moto',NULL,1,1,'2024-12-02 22:56:07','2024-12-02 22:56:07',NULL),(129,2,81,'Marcelo','Ardaya López','12567890','masculino','2007-02-02','72823660','Avenida jacaranda zona peridista',NULL,NULL,'Busco trabajo en una tienda de ropa deportiva por qué me gusta el deporte y me gustaría poder asesorar a la gente y soy muy amable',NULL,1,1,'2024-12-02 22:57:47','2024-12-02 22:57:47',NULL),(130,2,73,'Iván Gustavo','Salvatierra Cartagena','67368184','masculino','1994-09-09','67368184','Av placido molina',NULL,NULL,'Con experiencia',NULL,1,1,'2024-12-02 23:01:16','2024-12-02 23:01:16',NULL),(133,2,2,'Carlos','Mendez medina','63826368','masculino','2005-12-05','74708189','Av cacharana',NULL,NULL,NULL,NULL,1,1,'2024-12-02 23:15:04','2024-12-02 23:15:04',NULL),(134,2,73,'Leonardo','Rojas mariaca','5702460','masculino','2006-10-11','73846362','Av heroes del chaco',NULL,NULL,'Trabajo como medero',NULL,1,1,'2024-12-03 08:59:01','2024-12-03 08:59:01',NULL),(135,3,87,'Adriana','Alvarado Flores','14299384','femenino','2007-12-29','69369003','B/los almendros Av/los tajibos C/las cutas N°/473',NULL,NULL,'Buenos días mi experiencia a sido trabajado en tienda de ropa y alimentos.',NULL,1,1,'2024-12-03 09:02:40','2024-12-03 09:02:40',NULL),(136,1,1,'Jonathan Emanuel','Chavez Moscoso','6476764','masculino','1999-02-11','70269362','Calle Sucre #167',NULL,NULL,'Funcionario del Sedeges de Sistemas',NULL,1,1,'2024-12-03 12:14:06','2024-12-03 12:14:06',NULL),(138,3,73,'Maura Virginia','Melgar Coimbra','10857451','femenino','2009-08-25','73951542','Av/ Los almendro calle motacú Número 314',NULL,NULL,'Era mesera en el restaurante que tenía mi madre',NULL,1,1,'2024-12-03 18:30:55','2024-12-03 18:30:55',NULL),(139,2,73,'Angel Gabriel','Kubene Yeguare','12848348','masculino','2005-09-27','69664659','Av. Guayaramerin Esq. San Borja 491',NULL,NULL,'Busco Trabjo en algún Restaurante sé cocinar los básicos y soy muy hábil para aprender',NULL,1,1,'2024-12-03 19:18:13','2024-12-03 19:18:13',NULL),(140,2,73,'Luis santiago','Leigue limpias','13480402','masculino','2006-12-19','67361784','Calle chirapa',NULL,NULL,'Busco trabajo soy hábil con atención al cliente y me gusta aprender',NULL,1,1,'2024-12-06 22:50:39','2024-12-06 22:50:39',NULL),(141,1,NULL,'Mirian','Calle','7985973',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,1,'2024-12-10 15:49:42','2024-12-10 15:49:42',NULL),(142,2,5,'Kenyi Ricardo','Miyata Rea','14064071','masculino','2007-10-20','74768724','Barrio periodista 2',NULL,NULL,'Tengo un poco de experiencia en trabajos como: Albañilería y ventas de productos.',NULL,1,1,'2024-12-10 19:38:12','2024-12-10 19:38:12',NULL),(143,2,5,'Luis Fernando','Serato Negrete','13200065','masculino','2007-04-13','67364166','Barrio periodista 2',NULL,NULL,'Experiencia en trabajos pesados i atención al cliente',NULL,1,1,'2024-12-10 19:42:35','2024-12-10 19:42:35',NULL),(144,2,73,'AURA LIZ','CALATAYUD','12943501','femenino','2006-07-04','67368464','B/2 DE MAYO',NULL,NULL,'CONOCIMIENTOS BASICOS EN REPOSTERIA, SECRETARIADO EJECUTIVO, BUENOS MODALES',NULL,1,1,'2024-12-11 10:33:11','2024-12-11 10:33:11',NULL),(145,NULL,114,'José luis','Queteguari machu','12848867','masculino','2005-06-12','69395315','Av. Cacao B/ los tajibos',NULL,NULL,'Busco trabajo',NULL,1,1,'2024-12-12 02:13:21','2024-12-12 02:13:21',NULL),(146,1,73,'Rodman Raúl','Ríos Roca','8435182','masculino','2005-07-03','69378522','Patuju',NULL,NULL,NULL,NULL,1,1,'2025-01-22 14:24:06','2025-01-22 14:24:06',NULL),(149,1,73,'Reegis Marcelo','Ríos  Roca','13495520','masculino','2006-09-25','63552835','Las palmas',NULL,NULL,NULL,NULL,1,1,'2025-01-22 14:59:23','2025-01-22 14:59:23',NULL),(150,1,48,'narda gabriela','chavez soriano','7583682','femenino','1998-03-19','72811931','urbanizacion las palmas',NULL,NULL,'atención de medicina general en clínica redamar',NULL,1,1,'2025-03-31 23:13:22','2025-03-31 23:13:22',NULL),(151,1,115,'James','Villa Gómez villarroel','5596554','masculino','1994-03-11','60203724','Av. Esteban Rivero',NULL,NULL,'Trabajo de todo',NULL,1,1,'2025-04-15 11:15:44','2025-04-15 11:15:44',NULL),(152,NULL,73,'Reicher','Uracotena Llanos','15082178','masculino','2008-04-15','63264480','Elvira',NULL,NULL,NULL,NULL,1,1,'2025-04-20 21:37:19','2025-04-20 21:37:19',NULL),(153,1,114,'Jacob','Arteaga Muitimo','14490333','masculino','2006-07-09','69402261','Av. Chirimoya. Calle 4 mano derecha segunda casa ala izquierda después de la primera cuadra',NULL,NULL,'Albañileria. Atención al cliente en ventas de electrómesticos y accesorios. Ayudante de mecánica automotriz',NULL,1,1,'2025-05-27 15:02:00','2025-05-27 15:02:00',NULL);
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
INSERT INTO `permission_role` VALUES (1,1),(1,2),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(16,2),(17,1),(17,2),(18,1),(18,2),(19,1),(19,2),(20,1),(20,2),(21,1),(21,2),(22,1),(22,2),(23,1),(23,2),(24,1),(24,2),(25,1),(25,2),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(71,1),(72,1),(73,1),(74,1),(75,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'browse_admin',NULL,'2023-05-20 15:48:08','2023-05-20 15:48:08'),(2,'browse_bread',NULL,'2023-05-20 15:48:08','2023-05-20 15:48:08'),(3,'browse_database',NULL,'2023-05-20 15:48:08','2023-05-20 15:48:08'),(4,'browse_media',NULL,'2023-05-20 15:48:08','2023-05-20 15:48:08'),(5,'browse_compass',NULL,'2023-05-20 15:48:08','2023-05-20 15:48:08'),(6,'browse_menus','menus','2023-05-20 15:48:08','2023-05-20 15:48:08'),(7,'read_menus','menus','2023-05-20 15:48:08','2023-05-20 15:48:08'),(8,'edit_menus','menus','2023-05-20 15:48:08','2023-05-20 15:48:08'),(9,'add_menus','menus','2023-05-20 15:48:08','2023-05-20 15:48:08'),(10,'delete_menus','menus','2023-05-20 15:48:08','2023-05-20 15:48:08'),(11,'browse_roles','roles','2023-05-20 15:48:08','2023-05-20 15:48:08'),(12,'read_roles','roles','2023-05-20 15:48:08','2023-05-20 15:48:08'),(13,'edit_roles','roles','2023-05-20 15:48:08','2023-05-20 15:48:08'),(14,'add_roles','roles','2023-05-20 15:48:08','2023-05-20 15:48:08'),(15,'delete_roles','roles','2023-05-20 15:48:08','2023-05-20 15:48:08'),(16,'browse_users','users','2023-05-20 15:48:08','2023-05-20 15:48:08'),(17,'read_users','users','2023-05-20 15:48:08','2023-05-20 15:48:08'),(18,'edit_users','users','2023-05-20 15:48:08','2023-05-20 15:48:08'),(19,'add_users','users','2023-05-20 15:48:08','2023-05-20 15:48:08'),(20,'delete_users','users','2023-05-20 15:48:08','2023-05-20 15:48:08'),(21,'browse_settings','settings','2023-05-20 15:48:08','2023-05-20 15:48:08'),(22,'read_settings','settings','2023-05-20 15:48:08','2023-05-20 15:48:08'),(23,'edit_settings','settings','2023-05-20 15:48:08','2023-05-20 15:48:08'),(24,'add_settings','settings','2023-05-20 15:48:08','2023-05-20 15:48:08'),(25,'delete_settings','settings','2023-05-20 15:48:08','2023-05-20 15:48:08'),(26,'browse_permissions','permissions','2023-05-20 15:48:08','2023-05-20 15:48:08'),(27,'read_permissions','permissions','2023-05-20 15:48:08','2023-05-20 15:48:08'),(28,'edit_permissions','permissions','2023-05-20 15:48:08','2023-05-20 15:48:08'),(29,'add_permissions','permissions','2023-05-20 15:48:08','2023-05-20 15:48:08'),(30,'delete_permissions','permissions','2023-05-20 15:48:08','2023-05-20 15:48:08'),(31,'browse_job_types','job_types','2023-05-20 15:48:08','2023-05-20 15:48:08'),(32,'read_job_types','job_types','2023-05-20 15:48:08','2023-05-20 15:48:08'),(33,'edit_job_types','job_types','2023-05-20 15:48:08','2023-05-20 15:48:08'),(34,'add_job_types','job_types','2023-05-20 15:48:08','2023-05-20 15:48:08'),(35,'delete_job_types','job_types','2023-05-20 15:48:08','2023-05-20 15:48:08'),(36,'browse_jobs','jobs','2023-05-20 15:48:08','2023-05-20 15:48:08'),(37,'read_jobs','jobs','2023-05-20 15:48:08','2023-05-20 15:48:08'),(38,'edit_jobs','jobs','2023-05-20 15:48:08','2023-05-20 15:48:08'),(39,'add_jobs','jobs','2023-05-20 15:48:08','2023-05-20 15:48:08'),(40,'delete_jobs','jobs','2023-05-20 15:48:08','2023-05-20 15:48:08'),(41,'browse_countries','countries','2023-05-20 15:48:08','2023-05-20 15:48:08'),(42,'read_countries','countries','2023-05-20 15:48:08','2023-05-20 15:48:08'),(43,'edit_countries','countries','2023-05-20 15:48:08','2023-05-20 15:48:08'),(44,'add_countries','countries','2023-05-20 15:48:08','2023-05-20 15:48:08'),(45,'delete_countries','countries','2023-05-20 15:48:08','2023-05-20 15:48:08'),(46,'browse_states','states','2023-05-20 15:48:08','2023-05-20 15:48:08'),(47,'read_states','states','2023-05-20 15:48:08','2023-05-20 15:48:08'),(48,'edit_states','states','2023-05-20 15:48:08','2023-05-20 15:48:08'),(49,'add_states','states','2023-05-20 15:48:08','2023-05-20 15:48:08'),(50,'delete_states','states','2023-05-20 15:48:08','2023-05-20 15:48:08'),(51,'browse_cities','cities','2023-05-20 15:48:08','2023-05-20 15:48:08'),(52,'read_cities','cities','2023-05-20 15:48:08','2023-05-20 15:48:08'),(53,'edit_cities','cities','2023-05-20 15:48:08','2023-05-20 15:48:08'),(54,'add_cities','cities','2023-05-20 15:48:08','2023-05-20 15:48:08'),(55,'delete_cities','cities','2023-05-20 15:48:08','2023-05-20 15:48:08'),(56,'browse_job_offers','job_offers','2023-05-29 16:11:17','2023-05-29 16:11:17'),(57,'read_job_offers','job_offers','2023-05-29 16:11:17','2023-05-29 16:11:17'),(58,'edit_job_offers','job_offers','2023-05-29 16:11:17','2023-05-29 16:11:17'),(59,'add_job_offers','job_offers','2023-05-29 16:11:17','2023-05-29 16:11:17'),(60,'delete_job_offers','job_offers','2023-05-29 16:11:17','2023-05-29 16:11:17'),(61,'browse_people','people','2023-05-29 16:13:57','2023-05-29 16:13:57'),(62,'read_people','people','2023-05-29 16:13:57','2023-05-29 16:13:57'),(63,'edit_people','people','2023-05-29 16:13:57','2023-05-29 16:13:57'),(64,'add_people','people','2023-05-29 16:13:57','2023-05-29 16:13:57'),(65,'delete_people','people','2023-05-29 16:13:57','2023-05-29 16:13:57'),(66,'browse_business','business','2023-12-02 11:19:18','2023-12-02 11:19:18'),(67,'read_business','business','2023-12-02 11:19:18','2023-12-02 11:19:18'),(68,'edit_business','business','2023-12-02 11:19:18','2023-12-02 11:19:18'),(69,'add_business','business','2023-12-02 11:19:18','2023-12-02 11:19:18'),(70,'delete_business','business','2023-12-02 11:19:18','2023-12-02 11:19:18'),(71,'browse_job_applications','job_applications','2023-12-02 11:20:07','2023-12-02 11:20:07'),(72,'read_job_applications','job_applications','2023-12-02 11:20:07','2023-12-02 11:20:07'),(73,'edit_job_applications','job_applications','2023-12-02 11:20:07','2023-12-02 11:20:07'),(74,'add_job_applications','job_applications','2023-12-02 11:20:07','2023-12-02 11:20:07'),(75,'delete_job_applications','job_applications','2023-12-02 11:20:07','2023-12-02 11:20:07');
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
INSERT INTO `settings` VALUES (1,'site.title','Site Title','Bolsa de empleos','','text',1,'Site'),(2,'site.description','Site Description','Plataforma Departamental de Asistencia y Gestión de Solicitudes de Empleo','','text',2,'Site'),(3,'site.logo','Site Logo','','','image',3,'Site'),(4,'site.google_analytics_tracking_id','Google Analytics Tracking ID',NULL,'','text',4,'Site'),(5,'admin.bg_image','Admin Background Image','','','image',4,'Admin'),(6,'admin.title','Admin Title','B.J.E.','','text',1,'Admin'),(7,'admin.description','Admin Description','Plataforma Departamental de Asistencia y Gestión de Solicitudes de Empleo','','text',1,'Admin'),(8,'admin.loader','Admin Loader','','','image',2,'Admin'),(9,'admin.icon_image','Admin Icon Image','','','image',3,'Admin'),(10,'admin.google_analytics_client_id','Google Analytics Client ID (used for admin dashboard)',NULL,'','text',5,'Admin'),(11,'servers.whatsapp','Whatsapp','68984362',NULL,'text',6,'Servers');
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
INSERT INTO `users` VALUES (1,1,'RAIZHA MARIA NINA SUAREZ','admin@admin.com','users/default.png',NULL,'$2y$10$XPlym0r/2ZJauiMF/kY/IOFzVIeH7345P4drBX73wKEqW3DN0H2ES','BwkPeLlZAgoqqMMxCP89Cmln6Odx1QNlwh02JKqN8DOq71X9Pt5QO34oQyyZ','{\"locale\":\"es\"}','2021-06-01 21:05:11','2025-02-11 14:57:48',NULL);
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

-- Dump completed on 2025-07-28 15:58:50
