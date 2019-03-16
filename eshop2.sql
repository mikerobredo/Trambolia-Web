-- MySQL dump 10.13  Distrib 5.5.54, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: eshop2_development
-- ------------------------------------------------------
-- Server version	5.5.54-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_id` int(11) DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
INSERT INTO `cart_items` VALUES (7,12,1,15,1,'2017-04-27 19:44:38','2017-04-27 19:44:38'),(8,11,1,50,1,'2017-04-27 19:46:07','2017-04-27 19:46:07'),(9,8,1,12121200,2,'2017-04-27 19:46:12','2017-04-27 19:49:59'),(10,5,1,245,1,'2017-04-27 19:46:24','2017-04-27 19:46:24'),(12,10,3,5,1,'2017-04-28 10:46:06','2017-04-28 10:46:06'),(13,8,3,12121200,1,'2017-04-28 10:46:11','2017-04-28 10:46:11'),(14,18,7,749,1,'2017-04-29 09:23:31','2017-04-29 09:23:31'),(15,18,12,749,1,'2017-05-03 12:28:56','2017-05-03 12:28:56'),(18,19,15,49,1,'2017-05-08 11:05:53','2017-05-08 11:05:53'),(19,19,20,49,1,'2017-05-14 11:54:08','2017-05-14 11:54:08'),(23,17,21,359,1,'2017-05-15 10:46:59','2017-05-15 10:46:59');
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (1,'2017-04-27 19:22:08','2017-04-27 19:22:08'),(2,'2017-04-27 20:54:36','2017-04-27 20:54:36'),(3,'2017-04-28 10:45:00','2017-04-28 10:45:00'),(4,'2017-04-28 13:46:43','2017-04-28 13:46:43'),(5,'2017-04-28 14:02:18','2017-04-28 14:02:18'),(6,'2017-04-28 14:16:12','2017-04-28 14:16:12'),(7,'2017-04-29 09:22:40','2017-04-29 09:22:40'),(8,'2017-05-01 17:41:45','2017-05-01 17:41:45'),(9,'2017-05-02 08:35:57','2017-05-02 08:35:57'),(10,'2017-05-02 08:38:34','2017-05-02 08:38:34'),(11,'2017-05-02 13:52:04','2017-05-02 13:52:04'),(12,'2017-05-03 12:28:01','2017-05-03 12:28:01'),(13,'2017-05-08 09:34:59','2017-05-08 09:34:59'),(14,'2017-05-08 09:46:15','2017-05-08 09:46:15'),(15,'2017-05-08 10:20:06','2017-05-08 10:20:06'),(16,'2017-05-08 10:28:53','2017-05-08 10:28:53'),(17,'2017-05-08 10:31:50','2017-05-08 10:31:50'),(18,'2017-05-08 10:31:50','2017-05-08 10:31:50'),(19,'2017-05-10 21:50:43','2017-05-10 21:50:43'),(20,'2017-05-14 11:14:40','2017-05-14 11:14:40'),(21,'2017-05-15 09:18:21','2017-05-15 09:18:21'),(22,'2017-05-15 09:50:41','2017-05-15 09:50:41'),(23,'2017-05-15 10:15:17','2017-05-15 10:15:17'),(24,'2017-05-15 10:28:10','2017-05-15 10:28:10'),(25,'2017-05-20 21:04:06','2017-05-20 21:04:06'),(26,'2017-05-21 10:29:17','2017-05-21 10:29:17'),(27,'2017-05-21 10:52:05','2017-05-21 10:52:05'),(28,'2017-05-22 09:48:10','2017-05-22 09:48:10'),(29,'2017-05-22 09:48:33','2017-05-22 09:48:33'),(30,'2017-05-22 10:43:40','2017-05-22 10:43:40');
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `manufacturers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` VALUES (4,'Nokia','2017-04-17 11:01:10','2017-04-17 11:01:10'),(5,'Samsung','2017-04-17 11:01:25','2017-04-17 11:01:25'),(6,'Xiaomi','2017-04-17 11:26:36','2017-04-17 11:26:36'),(10,'LG','2017-04-28 10:58:59','2017-04-28 10:58:59'),(11,'Asus','2017-04-28 10:59:17','2017-04-28 10:59:17'),(12,'BQ','2017-04-28 14:32:16','2017-04-28 14:32:16'),(13,'Motorola','2017-05-15 11:44:48','2017-05-15 11:44:48');
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_items_orders` (`order_id`),
  CONSTRAINT `fk_order_items_orders` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,19,1,49,1,'2017-05-08 11:58:40','2017-05-08 11:58:40'),(2,19,2,49,1,'2017-05-08 12:00:59','2017-05-08 12:00:59'),(3,17,2,359,1,'2017-05-08 12:00:59','2017-05-08 12:00:59'),(4,15,2,297,1,'2017-05-08 12:00:59','2017-05-08 12:00:59'),(5,19,3,49,1,'2017-05-08 12:09:40','2017-05-08 12:09:40'),(6,17,3,359,1,'2017-05-08 12:09:40','2017-05-08 12:09:40'),(7,19,4,49,1,'2017-05-08 12:09:55','2017-05-08 12:09:55'),(8,17,4,359,1,'2017-05-08 12:09:55','2017-05-08 12:09:55'),(9,19,5,49,1,'2017-05-08 15:56:18','2017-05-08 15:56:18'),(10,19,6,49,1,'2017-05-10 22:00:16','2017-05-10 22:00:16'),(11,19,7,49,1,'2017-05-10 22:05:43','2017-05-10 22:05:43'),(12,19,8,49,1,'2017-05-10 22:07:22','2017-05-10 22:07:22'),(13,19,9,49,1,'2017-05-10 22:07:31','2017-05-10 22:07:31'),(14,19,10,49,1,'2017-05-15 09:21:11','2017-05-15 09:21:11'),(15,15,10,297,1,'2017-05-15 09:21:11','2017-05-15 09:21:11'),(16,18,11,749,1,'2017-05-15 10:42:46','2017-05-15 10:42:46'),(17,18,12,749,1,'2017-05-15 10:43:03','2017-05-15 10:43:03'),(18,18,13,749,1,'2017-05-21 10:55:34','2017-05-21 10:55:34'),(19,16,13,499,1,'2017-05-21 10:55:34','2017-05-21 10:55:34'),(20,18,14,749,1,'2017-05-21 10:55:46','2017-05-21 10:55:46'),(21,16,14,499,1,'2017-05-21 10:55:46','2017-05-21 10:55:46');
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `ship_to_first_name` varchar(255) DEFAULT NULL,
  `ship_to_last_name` varchar(255) DEFAULT NULL,
  `ship_to_address` varchar(255) DEFAULT NULL,
  `ship_to_city` varchar(255) DEFAULT NULL,
  `ship_to_postal_code` varchar(255) DEFAULT NULL,
  `ship_to_country_code` varchar(255) DEFAULT NULL,
  `customer_ip` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `error_message` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'adrreyalb@gmail.com','647243014','Adrián','Reyes4','C/Mandarina, 1','Chiclana de la Frontera','11130','ES','10.240.0.195','closed',NULL,'2017-05-08 11:58:40','2017-05-15 09:56:41'),(2,'fco.jesus.diaz@gmail.com','673540730','Francisco','Díaz','Virgen de fátima','chiclana','11130','ES','150.214.75.182','failed','This transaction has been declined','2017-05-08 12:00:59','2017-05-08 12:01:00'),(3,'fco.jesus.diaz@gmail.com','673540730','Francisco','Díaz','Urbanización Las Fresas 5','CADIZ','11130','ES','150.214.75.182','failed','An error occurred during processing. Call Merchant Service Provider','2017-05-08 12:09:40','2017-05-08 12:09:41'),(4,'fco.jesus.diaz@gmail.com','673540730','Francisco','Díaz','Urbanización Las Fresas 5','CADIZ','11130','ES','150.214.75.182','processed',NULL,'2017-05-08 12:09:55','2017-05-08 12:09:56'),(5,'fco.jesus.diaz@gmail.com','3546356','Francisco','Diaz','urbanizacion las fresas','chiclana','11130','ES','10.240.0.16','processed',NULL,'2017-05-08 15:56:18','2017-05-08 15:56:19'),(6,'gweg@gmail.com','345264674','jose','gonzalez','larga','cadiz','11001','ES','85.137.141.212','failed','Tarjeta de crédito no válida','2017-05-10 22:00:16','2017-05-10 22:00:16'),(7,'gweg@gmail.com','345264674','jose','gonzalez','larga','cadiz','11001','ES','85.137.141.212','failed','Tarjeta de crédito no válida','2017-05-10 22:05:43','2017-05-10 22:05:43'),(8,'gweg@gmail.com','345264674','jose','gonzalez','larga','cadiz','11001','ES','85.137.141.212','failed','Tarjeta de crédito no válida','2017-05-10 22:07:22','2017-05-10 22:07:22'),(9,'gweg@gmail.com','345264674','jose','gonzalez','larga','cadiz','11001','ES','85.137.141.212','processed',NULL,'2017-05-10 22:07:31','2017-05-10 22:07:32'),(10,'fco.jesus.diaz@gmail.com','3546356','Paco','dia','amador','jerez','21431','ES','150.214.75.182','processed',NULL,'2017-05-15 09:21:11','2017-05-15 09:21:13'),(11,'fco.jesus.diaz@gmail.com','3546356','Francisco','Díaz','Urbanización Las Fresas 5','CADIZ','11130','VC','150.214.75.182','failed','This transaction has been declined','2017-05-15 10:42:46','2017-05-15 10:42:47'),(12,'fco.jesus.diaz@gmail.com','3546356','Francisco','Díaz','Urbanización Las Fresas 5','CADIZ','11130','ES','150.214.75.182','processed',NULL,'2017-05-15 10:43:03','2017-05-15 10:43:04'),(13,'fco.jesus.diaz@gmail.com','3546356','Francisco','Díaz','Urbanización Las Fresas 5','CADIZ','11130','ES','10.240.0.215','failed','Tarjeta de crédito no válida','2017-05-21 10:55:34','2017-05-21 10:55:34'),(14,'fco.jesus.diaz@gmail.com','3546356','Francisco','Díaz','Urbanización Las Fresas 5','CADIZ','11130','ES','10.240.0.196','processed',NULL,'2017-05-21 10:55:46','2017-05-21 10:55:47');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phones`
--

DROP TABLE IF EXISTS `phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `manufactured_at` datetime DEFAULT NULL,
  `imei` varchar(15) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `cover_image_file_name` varchar(255) DEFAULT NULL,
  `cover_image_content_type` varchar(255) DEFAULT NULL,
  `cover_image_file_size` int(11) DEFAULT NULL,
  `cover_image_updated_at` datetime DEFAULT NULL,
  `blurb` text,
  PRIMARY KEY (`id`),
  KEY `fk_phones_manufacturers` (`manufacturer_id`),
  CONSTRAINT `fk_phones_manufacturers` FOREIGN KEY (`manufacturer_id`) REFERENCES `manufacturers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phones`
--

LOCK TABLES `phones` WRITE;
/*!40000 ALTER TABLE `phones` DISABLE KEYS */;
INSERT INTO `phones` VALUES (2,'Samsung Galaxy S8 Plus',5,'2017-03-14 10:00:00','45698123528',899,'2017-04-17 11:27:22','2017-05-02 08:49:44','s8_plus.jpg','image/jpeg',98526,'2017-04-28 14:03:09','h1. Lo último de Samsung\r\n\r\n¡Da la bienvenida a la pantalla infinita!\r\nEl revolucionario diseño de Galaxy S8 y S8+ comienza desde su interior. Se ha redefinido cada componente del Smartphone para romper con los límites de su pantalla, despidiéndonos de los marcos. Así todo lo que verás será contenido y nada más. Disfruta de la pantalla más grande e inmersiva fabricada para un dispositivo móvil que podrás sostener con una sola mano. Galaxy S8 y S8+ te liberan de los confines de los marcos, ofreciéndote una superficie lisa e ininterrumpida que fluye sobre sus bordes. \r\n\r\n* Especificaciones Galaxy S8 Plus:\r\n## S.O.: Android 7.0 Nougat\r\n## CPU:  Octa core 2.5 GHz\r\n## Pantalla: Super AMOLED curva de 6,2 pulgadas 18,5:9\r\n## Memoria: 4 GB RAM \r\n## Bateria: 3500 mAh\r\n## Dimensiones y peso: 73.4 mm x 159.5 mm x 8.1 mm, 173 gr.'),(13,'Asus Zenfone 2',11,'2017-01-20 14:05:00','231421348214',159,'2017-04-28 14:05:53','2017-04-28 14:05:53','asus_zenfone_2.jpg','image/jpeg',25955,'2017-04-28 14:05:53','Te presentamos el smartphone ZenFone 2 Laser ZE600KL de Asus. Un prodigio de artesanía e ingeniería que combina la belleza del diseño Zen con un rendimiento sin precedentes, nitidez de imagen y una interfaz de usuario mejorada. Un completo y elegante móvil con un procesador de 8 núcleos, pantalla HD, 3GB de RAM y conectividad 4G.'),(15,'Xiaomi Mi5 ',6,'2016-02-13 11:10:00','745356456',297,'2017-04-28 14:12:15','2017-04-28 14:12:32','mi_5.jpg','image/jpeg',32765,'2017-04-28 14:12:31','Te presentamos el smartphone Xiaomi Mi5 con 3GB de RAM y 32GB de almacenamiento.\r\n\r\nCaracterísticas:\r\n\r\nPantalla 5.15\" y Full HD. Incorpora una pantalla IPS de 5.15\" FHD (1920 x 1080p) desarrollada por Sharp y JDI con una densidad de píxeles de 428ppp, algo inimaginable. No te pierdas el más mínimo detalle.\r\nProcesador Qualcomm Snapdragon 820 y 3GB de RAM. Disfruta de un excelente rendimiento con el procesador Qualcomm Snapdragon 820. Con sus cuatro núcleos te garantiza un equilibrio perfecto entre rendimiento y consumo energético.\r\nCámaras de 4/16MP. En el Xiaomi Mi5 nos encontramos con una cámara principal con una resolución de 16MP y flash LED. Es capaz de grabar vídeo Full HD 1080p, Además, contamos también con cámara frontal o secundaria, que tiene una resolución de 4MP.'),(16,'Samsung Galaxy S7',5,'2016-04-28 14:23:00','564563465',499,'2017-04-28 14:24:39','2017-04-28 14:25:04','s7.jpg','image/jpeg',64675,'2017-04-28 14:24:37','Samsung presenta el Samsung Galaxy S7, su nuevo buque insignia, el flagship tope de gama que diferencia a una compañía de sus competidores. La compañía surcoreana da el todo por el todo con este Galaxy S7, un smartphone que recupera lo mejor de anteriores móviles Samsung y lo fusiona con los avances tecnológicos más punteros.\r\n\r\n\r\n\r\nEl Samsung S7 rebosa innovación y calidad en todos y cada uno de sus aspectos. Los fantásticos acabados en cristal y metal, la tecnología y los componentes instalados en este S7, lo convierten de facto en el mejor móvil disponible. Su diseño es insolentemente moderno, dejando atrás a cualquier otro smartphone que hayas visto.\r\n\r\nLa gama Samsung Galaxy S recupera en este Galaxy S7 la ranura MicroSD, una fantástica noticia para los usuarios, que ahora podemos ampliar la capacidad de este smartphone hasta los 200GB, el equivalente a sesenta mil fotografías, más de 40.000 canciones o 100 películas en alta definición para que las disfrutes allá donde vayas con su fantástica pantalla QHD.\r\n\r\nComo acabas de leer, el Samsung Galaxy S7 disfruta de una increíble pantalla QHD con una diagonal de 5.1 pulgadas con una resolución de 2560x1440 píxeles, arrojando una abrumadora densidad de 577 píxeles por pulgada, una de tantas muestra de fuerza de la compañía surcoreana en este teléfono móvil.'),(17,'Bq Aquaris X Pro',12,'2016-03-13 16:00:00','68674765754',359,'2017-04-28 14:33:58','2017-04-28 14:33:58','bq_X_pro.jpg','image/jpeg',16465,'2017-04-28 14:33:57','Disfruta del diseño más exclusivo con una pantalla con 16,5 millones de colores que abraza sutilmente el marco metálico, líneas limpias y bordes ovalados gracias al cristal 2,5D. En Aquaris X Pro arte e ingeniería se encuentran en un smartphone que ofrece el equilibrio perfecto entre potencia y consumo con su procesador Qualcomm® Snapdragon™ 626 Octa Core a 2,2 GHz, su tecnología Quick Charge 3.0 y su batería de 3100 mAh. Conseguirás las mejores fotografías con su tecnología Multi-Image Processing y disparo instantáneo ZSL, Dual Tone Flash, modo manual con infinidad de parámetros y modo panorámico. Además, incluye grabación de vídeo en 4K, estabilizador de vídeo Vidhance y slow motion.'),(18,'LG G6',10,'2017-03-16 14:35:00','754345',749,'2017-04-28 14:37:00','2017-04-28 14:37:00','lg_g6.jpg','image/jpeg',53387,'2017-04-28 14:37:00','El novedoso LG G6 es un móvil increíble con una pantalla que te sorprenderá por el ratio pantalla/superficie.\r\n\r\nLa reducción al mínimo exponente de los marcos y biseles ha permitido crear una pantalla que ocupa casi toda la parte frontal del móvil llegando al 80% de ratio.\r\n\r\nUna delgadez extrema, una batería de primera y una cámara espectacular, completan un móvil con unas especificaciones, características y aspecto soberbios.'),(19,'Nokia 230',4,'2016-12-22 17:20:00','57354246546',49,'2017-04-28 14:38:52','2017-04-28 14:38:52','nokia_230.jpg','image/jpeg',60464,'2017-04-28 14:38:52','Hermosamente elaborado y listo para selfies, el Nokia 230 Dual SIM tiene una cámara frontal de 2 MP con un flash LED y una cubierta trasera de aluminio soplado de arena que se envuelve firmemente alrededor de los lados del teléfono.');
/*!40000 ALTER TABLE `phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phones_suppliers`
--

DROP TABLE IF EXISTS `phones_suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phones_suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL,
  `phone_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_phones_suppliers_suppliers` (`supplier_id`),
  KEY `fk_phones_suppliers_phones` (`phone_id`),
  CONSTRAINT `fk_phones_suppliers_phones` FOREIGN KEY (`phone_id`) REFERENCES `phones` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_phones_suppliers_suppliers` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phones_suppliers`
--

LOCK TABLES `phones_suppliers` WRITE;
/*!40000 ALTER TABLE `phones_suppliers` DISABLE KEYS */;
INSERT INTO `phones_suppliers` VALUES (7,12,2,'2017-04-17 11:27:22','2017-04-17 11:27:22'),(10,13,2,'2017-04-17 11:28:05','2017-04-17 11:28:05'),(31,11,13,'2017-04-28 14:05:53','2017-04-28 14:05:53'),(32,12,13,'2017-04-28 14:05:53','2017-04-28 14:05:53'),(35,11,15,'2017-04-28 14:12:15','2017-04-28 14:12:15'),(36,12,15,'2017-04-28 14:12:15','2017-04-28 14:12:15'),(37,13,15,'2017-04-28 14:12:15','2017-04-28 14:12:15'),(38,11,16,'2017-04-28 14:24:39','2017-04-28 14:24:39'),(40,13,17,'2017-04-28 14:33:58','2017-04-28 14:33:58'),(41,11,18,'2017-04-28 14:37:00','2017-04-28 14:37:00'),(42,16,18,'2017-04-28 14:37:00','2017-04-28 14:37:00'),(44,17,19,'2017-04-28 14:38:52','2017-04-28 14:38:52'),(45,19,19,'2017-04-28 14:38:52','2017-04-28 14:38:52');
/*!40000 ALTER TABLE `phones_suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20170320110228'),('20170327104440'),('20170403105740'),('20170417131654'),('20170427184401'),('20170427184419'),('20170508101741'),('20170508101849'),('20170515102424');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (11,'Intel','Corporation','2017-04-17 11:25:10','2017-04-17 11:25:10'),(12,'Canon','S.L.','2017-04-17 11:25:35','2017-04-17 11:25:35'),(13,'Qualcomm','Snapdragon','2017-04-17 11:26:23','2017-04-17 11:26:23'),(16,'Small','Movil S.L','2017-04-28 11:03:33','2017-04-28 11:03:33'),(17,'HiperGSM','S.L','2017-04-28 11:04:02','2017-04-28 11:04:02'),(19,'OPPO Digital','Inc.','2017-04-28 14:27:51','2017-04-28 14:28:12'),(20,'AMD','Company','2017-05-15 11:23:59','2017-05-15 11:23:59');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `crypted_password` varchar(255) NOT NULL,
  `password_salt` varchar(255) NOT NULL,
  `persistence_token` varchar(255) NOT NULL,
  `perishable_token` varchar(255) NOT NULL,
  `login_count` int(11) NOT NULL DEFAULT '0',
  `failed_login_count` int(11) NOT NULL DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `current_login_at` datetime DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `current_login_ip` varchar(255) DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'administrador','admin','admintrambolico@gmail.com','400$8$38$3e7c38a6cd0c6c8d$bea25678f79083e5aa3dc42ee3991a3fbcaa6a1d36e2da31fa43956bc6e38f41','JzgTzsYdoI9kAl4GNKFf','f0a6312f82fa060a1bde8509a4db028fcb39ef4ce428a22e7c41751e40ecebd5dbd78c810068430d5ebb7b114255d7f334c8aea5228769177874eabcab0ad38d','RD8CdNuwohwfNwD46U43',14,0,'2017-05-22 10:58:57','2017-05-22 10:57:46','2017-05-22 10:39:01','150.214.75.182','150.214.75.182','2017-05-20 21:20:18','2017-05-22 10:58:57');
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

-- Dump completed on 2017-05-22 14:11:33
