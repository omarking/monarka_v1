-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: monarka
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
-- Table structure for table `barrio`
--

DROP TABLE IF EXISTS `barrio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `barrio` (
  `idBarrio` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(75) NOT NULL,
  `diaEntrega` varchar(45) DEFAULT NULL,
  `estatus` varchar(1) DEFAULT '1',
  `idParroquia` int NOT NULL,
  PRIMARY KEY (`idBarrio`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barrio`
--

LOCK TABLES `barrio` WRITE;
/*!40000 ALTER TABLE `barrio` DISABLE KEYS */;
INSERT INTO `barrio` VALUES (1,'1 de enero','2021-09-17 11:09:48','1',1),(2,'10 de Agosto','2021-09-17 11:09:48','1',1),(3,'Hogar de Cristo','2021-09-17 11:09:48','1',1),(5,'Villamil','2021-09-17 11:09:48','1',1),(6,'Jimmy Candell','2021-09-17 11:09:48','1',1),(7,'9 de Octubre','2021-09-17 11:09:48','1',1),(8,'San José','2021-09-17 11:09:48','1',1),(9,'Barrio Central','2021-09-17 11:09:48','1',1),(10,'Nuevo Atahualpa','2021-09-17 11:09:48','1',1),(11,'5 de Junio','2021-09-17 11:09:48','1',1),(12,'Santa Elena','2021-09-17 11:09:48','1',2),(13,'Ballenita','2021-09-17 11:09:48','1',3),(14,'El tambo','2021-09-17 11:09:48','1',4),(15,'Prosperida','2021-09-17 11:09:48','1',4),(16,'Bajada de Chanduy','2021-09-17 11:09:48','1',5),(17,'Ciénega','2021-09-17 11:09:48','1',5),(18,'El Real','2021-09-17 11:09:48','1',5),(19,'Engunga','2021-09-17 11:09:48','1',5),(20,'Olmedo','2021-09-17 11:09:48','1',5),(21,'Puerto de Chanduy','2021-09-17 11:09:48','1',5),(22,'Pechiche','2021-09-17 11:09:48','1',5),(23,'San Rafael','2021-09-17 11:09:48','1',5),(24,'Sucre','2021-09-17 11:09:48','1',5),(25,'Tugaduaja','2021-09-17 11:09:48','1',5),(26,'Villingota','2021-09-17 11:09:48','1',5),(27,'Manantial de Chanduy','2021-09-17 11:09:48','1',5),(28,'Zapotal','2021-09-17 11:09:48','1',5),(29,'Caimito','2021-09-17 11:09:48','1',5),(30,'Aguadita','2021-09-17 11:09:48','1',6),(31,'Ayangue','2021-09-17 11:09:48','1',6),(32,'Bajadita de Colonche','2021-09-17 11:09:48','1',6),(33,'Bambil Collao','2021-09-17 11:09:48','1',6),(34,'Bambil Desecho','2021-09-17 11:09:48','1',6),(35,'Calicanto','2021-09-17 11:09:48','1',6),(36,'Cerezal Bellavista','2021-09-17 11:09:48','1',6),(37,'Febres Cordero','2021-09-17 11:09:48','1',6),(38,'Jambeli','2021-09-17 11:09:48','1',6),(39,'Las Balsas','2021-09-17 11:09:48','1',6),(40,'Loma Alta','2021-09-17 11:09:48','1',6),(41,'Manantial de Guangala','2021-09-17 11:09:48','1',6),(42,'Manantial de Colonche','2021-09-17 11:09:48','1',6),(43,'Monteverde','2021-09-17 11:09:48','1',6),(44,'Palmar','2021-09-17 11:09:48','1',6),(45,'Rio seco','2021-09-17 11:09:48','1',6),(46,'Salanguillo','2021-09-17 11:09:48','1',6),(47,'San Marcos','2021-09-17 11:09:48','1',6),(48,'Barcelona','2021-09-17 11:09:48','1',7),(49,'Curia','2021-09-17 11:09:48','1',7),(50,'Cadeate','2021-09-17 11:09:48','1',7),(51,'Dos mangas','2021-09-17 11:09:48','1',7),(52,'Atravesado','2021-09-17 11:09:48','1',7),(53,'La entrada','2021-09-17 11:09:48','1',7),(54,'Montañita','2021-09-17 11:09:48','1',7),(55,'Olón','2021-09-17 11:09:48','1',7),(56,'Pajiza','2021-09-17 11:09:48','1',7),(57,'Rio Chico','2021-09-17 11:09:48','1',7),(58,'Rio Blanco','2021-09-17 11:09:48','1',7),(59,'San Pedro','2021-09-17 11:09:48','1',7),(60,'San José','2021-09-17 11:09:48','1',7),(61,'San Antonio','2021-09-17 11:09:48','1',7),(62,'San Francisco de las Núñez','2021-09-17 11:09:48','1',7),(63,'Sinchal','2021-09-17 11:09:48','1',7),(64,'Sitio Nuevo','2021-09-17 11:09:48','1',7),(65,'Valdivia','2021-09-17 11:09:48','1',7),(66,'San Vicente de Loja','2021-09-17 11:09:48','1',7),(67,'La Rinconada','2021-09-17 11:09:48','1',7),(68,'Juntas del Pacifico','2021-09-17 11:09:48','1',8),(69,'Limoncito','2021-09-17 11:09:48','1',8),(70,'Sube y Baja','2021-09-17 11:09:48','1',8),(71,'Sacachún','2021-09-17 11:09:48','1',8),(72,'Bellavista','2021-09-17 11:09:48','1',8),(73,'Simón Bolivar(La Barranca)','2021-09-17 11:09:48','1',8),(74,'Santa Ana','2021-09-17 11:09:48','1',8),(75,'Íceras','2021-09-17 11:09:48','1',8),(76,'La naranja','2021-09-17 11:09:48','1',8),(77,'Frutilla','2021-09-17 11:09:48','1',8),(78,'Chirigua','2021-09-17 11:09:48','1',8),(79,'Las Acacias','2021-09-17 11:09:48','1',9),(80,'Simon Bolivar','2021-09-17 11:09:48','1',9),(81,'Rocafuerte','2021-09-17 11:09:48','1',9),(82,'Mariscal Sucre','2021-09-17 11:09:48','1',9),(83,'La Libertad','2021-09-17 11:09:48','1',9),(84,'Eloy Alfaro','2021-09-17 11:09:48','1',9),(85,'12 de Octubre','2021-09-17 11:09:48','1',9),(86,'John f Kennedy','2021-09-17 11:09:48','1',9),(87,'11 de Diciembre','2021-09-17 11:09:48','1',9),(88,'San Francisco','2021-09-17 11:09:48','1',9),(89,'Quito','2021-09-17 11:09:48','1',9),(90,'Abdon Calderon','2021-09-17 11:09:48','1',9),(91,'28 de Mayo','2021-09-17 11:09:48','1',9),(92,'Velasco Ibarra','2021-09-17 11:09:48','1',9),(93,'Costa de Oro','2021-09-17 11:09:48','1',9),(94,'10 de Agosto','2021-09-17 11:09:48','1',9),(95,'La Esperanza','2021-09-17 11:09:48','1',9),(96,'6 de Diciembre','2021-09-17 11:09:48','1',9),(97,'Manabi','2021-09-17 11:09:48','1',9),(98,'6 de Enero','2021-09-17 11:09:48','1',9),(99,'Enrique Gallo','2021-09-17 11:09:48','1',9),(100,'La Propicia','2021-09-17 11:09:48','1',9),(101,'Ciudadela el Condor','2021-09-17 11:09:48','1',9),(102,'Ficus','2021-09-17 11:09:48','1',9),(103,'San Vicente','2021-09-17 11:09:48','1',9),(104,'5 de Junio','2021-09-17 11:09:48','1',9),(105,'Eugenio Espejo','2021-09-17 11:09:48','1',9),(106,'Jaime Roldos','2021-09-17 11:09:48','1',9),(107,'Paraiso','2021-09-17 11:09:48','1',9),(108,'San Raymundo','2021-09-17 11:09:48','1',9),(109,'Virgen del Carmen','2021-09-17 11:09:48','1',9),(110,'Carlos Espinoza Larrea','2021-09-17 11:09:48','1',10),(111,'Gral.Alberto Enriquez Gallo','2021-09-17 11:09:48','1',11),(112,'Vicente Rocafuerte','2021-09-17 11:09:48','1',12),(113,'Santa Rosa','2021-09-17 11:09:48','1',13),(114,'Salinas','2021-09-17 11:09:48','1',14),(115,'Tiwintza','2021-09-17 11:09:48','1',15),(116,'Carmen Buchelli','2021-09-17 11:09:48','1',15),(117,'Luis Célleri','2021-09-17 11:09:48','1',15),(118,'Gonzalo Chávez','2021-09-17 11:09:48','1',15),(119,'San Vicente','2021-09-17 11:09:48','1',15),(120,'5 de Junio','2021-09-17 11:09:48','1',15),(121,'Bellavista','2021-09-17 11:09:48','1',15),(122,'Las Lomas','2021-09-17 11:09:48','1',15),(123,'El Paraiso','2021-09-17 11:09:48','1',15),(124,'Luis Cadena','2021-09-17 11:09:48','1',15),(125,'Manabi','2021-09-17 11:09:48','1',15),(126,'9 de Octubre','2021-09-17 11:09:48','1',15),(127,'Jaime Roldos','2021-09-17 11:09:48','1',15),(128,'Las Peñas','2021-09-17 11:09:48','1',15),(129,'2 de Febrero','2021-09-17 11:09:48','1',15),(130,'20 de Marzo','2021-09-17 11:09:48','1',15),(131,'Brisas del Mar','2021-09-17 11:09:48','1',15),(132,'El Dorado','2021-09-17 11:09:48','1',15),(133,'Balcón Encantado','2021-09-17 11:09:48','1',15),(134,'Vicente Rocafuerte','2021-09-17 11:09:48','1',16),(135,'Centenario','2021-09-17 11:09:48','1',16),(136,'9 de Octubre','2021-09-17 11:09:48','1',16),(137,'El Paraiso','2021-09-17 11:09:48','1',16),(138,'24 de Septiembre','2021-09-17 11:09:48','1',16),(139,'Brisas del Mar','2021-09-17 11:09:48','1',16),(140,'Nicolás Lapentti','2021-09-17 11:09:48','1',16),(141,'Vinicio Yagual 1','2021-09-17 11:09:48','1',16),(142,'Vinicio Yagual 2','2021-09-17 11:09:48','1',16),(143,'6 de Junio','2021-09-17 11:09:48','1',16),(144,'Carolina','2021-09-17 11:09:48','1',16),(145,'Santa Paula','2021-09-17 11:09:48','1',16),(146,'Arena y Sol','2021-09-17 11:09:48','1',16),(147,'23 de Enero','2021-09-17 11:09:48','1',16),(148,'Febres Cordero','2021-09-17 11:09:48','1',16);
/*!40000 ALTER TABLE `barrio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `canton`
--

DROP TABLE IF EXISTS `canton`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `canton` (
  `idCanton` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(75) NOT NULL,
  `estatus` varchar(1) DEFAULT '1',
  `idProvincia` int NOT NULL,
  PRIMARY KEY (`idCanton`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `canton`
--

LOCK TABLES `canton` WRITE;
/*!40000 ALTER TABLE `canton` DISABLE KEYS */;
INSERT INTO `canton` VALUES (1,'Santa Elena','1',1),(2,'La Libertad','1',1),(3,'Salinas','1',1);
/*!40000 ALTER TABLE `canton` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idCategoria` int NOT NULL AUTO_INCREMENT,
  `desCategoria` varchar(245) NOT NULL,
  `statusCategoria` varchar(1) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  UNIQUE KEY `desCategoria` (`desCategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (0,'MÓVILES','1'),(1,'MUEBLES','1'),(2,'ELECTRÓNICOS','1'),(3,'ALIMENTOS Y BEBIDAS','1'),(4,'ROPA','1'),(5,'ZAPATOS','1'),(6,'JUGUETES Y JUEGOS','1'),(7,'LIBROS','1'),(8,'DEPORTES','1');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detaproductocomen`
--

DROP TABLE IF EXISTS `detaproductocomen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detaproductocomen` (
  `idDetalleProComen` int NOT NULL AUTO_INCREMENT,
  `comentario` text,
  `comentariocliente` text,
  `idUsuario` int NOT NULL,
  `idProducto` int NOT NULL,
  `fecha` date DEFAULT NULL,
  `estatus` varchar(1) DEFAULT '1',
  `estrellas` int DEFAULT NULL,
  PRIMARY KEY (`idDetalleProComen`),
  KEY `idUsuario` (`idUsuario`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `detaproductocomen_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  CONSTRAINT `detaproductocomen_ibfk_2` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detaproductocomen`
--

LOCK TABLES `detaproductocomen` WRITE;
/*!40000 ALTER TABLE `detaproductocomen` DISABLE KEYS */;
INSERT INTO `detaproductocomen` VALUES (1,'El producto es de muy buena calidad, le doy 5 estrellas',NULL,39,34,'2021-02-14','1',NULL),(2,'Muy buen producto, me ha funcionado bien',NULL,40,35,'2021-02-15','1',NULL),(3,'El producto es de una excelente calidad',NULL,41,36,'2021-02-17','1',NULL),(7,'El producto es muy bueno, te dan lo que ofrecen',NULL,83,46,'2021-04-17','1',NULL),(8,'Es un producto de excelente calidad.',NULL,83,48,'2021-04-17','1',NULL),(9,'Es una laptop chida',NULL,83,51,'2021-04-17','1',NULL),(10,'Es muy buen producto',NULL,83,50,'2021-04-17','1',NULL),(11,'Es una laptop de muy buena calidad',NULL,49,43,'2021-04-18','1',NULL),(12,'Me gustó mucho la laptop',NULL,49,43,'2021-04-18','1',NULL),(13,'El producto es bueno',NULL,83,48,'2021-04-18','1',NULL),(14,'Son unos audífonos excelentes',NULL,83,52,'2021-04-18','1',NULL),(15,'Es un excelente producto',NULL,83,50,'2021-04-18','1',NULL),(16,'Lo recomiendo 100%',NULL,83,48,'2021-04-18','1',NULL),(17,'El producto es muy bueno',NULL,83,51,'2021-04-19','1',NULL),(18,NULL,'El producto es muy bueno, te dan lo que ofrecen',83,46,'2021-04-20','1',4),(19,NULL,'El producto es muy bueno, te dan lo que ofrecen',83,34,'2021-04-20','1',4),(20,'Es una televisión muy buena',NULL,83,34,'2021-04-25','1',NULL),(21,'Me gusta',NULL,83,34,'2021-04-25','1',NULL),(22,'Es de buena calidad',NULL,83,34,'2021-04-25','1',NULL),(23,'Esta increíble',NULL,83,34,'2021-04-25','1',NULL),(24,'Es de buena calidad',NULL,83,34,'2021-04-25','1',NULL),(25,'Es HD ?',NULL,83,34,'2021-04-25','1',NULL),(26,'Muy buen producto\n',NULL,100,50,'2021-06-30','1',NULL);
/*!40000 ALTER TABLE `detaproductocomen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devolucion`
--

DROP TABLE IF EXISTS `devolucion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `devolucion` (
  `iddevolucion` int NOT NULL AUTO_INCREMENT,
  `FolioVenta` int NOT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  `urlFormatoDevolucion` varchar(255) DEFAULT NULL,
  `fechaDevolucion` varchar(255) DEFAULT NULL,
  `statusDevolucion` varchar(1) DEFAULT NULL,
  `motivoDevolucion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`iddevolucion`),
  KEY `fkdevolucionventa_idx` (`FolioVenta`),
  CONSTRAINT `fkdevolucionventa` FOREIGN KEY (`FolioVenta`) REFERENCES `venta` (`FolioVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devolucion`
--

LOCK TABLES `devolucion` WRITE;
/*!40000 ALTER TABLE `devolucion` DISABLE KEYS */;
/*!40000 ALTER TABLE `devolucion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direccion` (
  `idDireccion` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `codigoPostalUsuario` varchar(10) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `municipio` varchar(255) DEFAULT NULL,
  `colonia` varchar(255) DEFAULT NULL,
  `callePrincipal` varchar(255) DEFAULT NULL,
  `numeroExterior` varchar(10) DEFAULT NULL,
  `calle1` varchar(255) DEFAULT NULL,
  `calle2` varchar(255) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  `statusDireccion` varchar(1) NOT NULL,
  PRIMARY KEY (`idDireccion`),
  KEY `direccion_usuario_idx` (`idUsuario`),
  CONSTRAINT `direccion_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresadelogistica`
--

DROP TABLE IF EXISTS `empresadelogistica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresadelogistica` (
  `idempresaDeLogistica` int NOT NULL AUTO_INCREMENT,
  `empresa` varchar(255) NOT NULL,
  `direccionEmpresa` varchar(255) NOT NULL,
  `numeroTelefono` varchar(45) NOT NULL,
  `nombreResponsable` varchar(45) NOT NULL,
  `rfcEmpresa` varchar(45) NOT NULL,
  `statusEmpresaLogistica` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idempresaDeLogistica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresadelogistica`
--

LOCK TABLES `empresadelogistica` WRITE;
/*!40000 ALTER TABLE `empresadelogistica` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresadelogistica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imgproducto`
--

DROP TABLE IF EXISTS `imgproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imgproducto` (
  `idImgProducto` int NOT NULL AUTO_INCREMENT,
  `idProducto` int NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) DEFAULT NULL,
  `img3` varchar(255) DEFAULT NULL,
  `img4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idImgProducto`),
  KEY `idProducto` (`idProducto`),
  CONSTRAINT `idProducto` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imgproducto`
--

LOCK TABLES `imgproducto` WRITE;
/*!40000 ALTER TABLE `imgproducto` DISABLE KEYS */;
INSERT INTO `imgproducto` VALUES (0,34,'img/iphone.png','img/iphone.png','img/iphone.png','img/iphone.png'),(1,34,'img/16px.png','img/32px.png','img/64px.png','img/1024px.png'),(2,35,'img/16px.png','img/32px.png','img/64px.png','img/1024px.png'),(3,36,'img/16px.png','img/32px.png','img/64px.png','img/1024px.png'),(4,37,'img/16px.png','img/32px.png','img/64px.png','img/1024px.png'),(6,48,'http://192.168.1.72:3000/public/products/imagen2.jpg-1618104655045.jpg','http://192.168.1.72:3000/public/products/imagen3.jpg-1618104655049.jpg','http://192.168.1.72:3000/public/products/imagen4.jpg-1618104655052.jpg','http://192.168.1.72:3000/public/products/laptopdell_front.jpg-1618104655053.jpg'),(7,50,'http://192.168.1.72:3000/public/products/image_picker740280372.jpg-1618187343133.jpg','http://192.168.1.72:3000/public/products/image_picker740280372.jpg-1618187343574.jpg','http://192.168.1.72:3000/public/products/image_picker740280372.jpg-1618187344023.jpg','http://192.168.1.72:3000/public/products/image_picker740280372.jpg-1618187344355.jpg'),(8,51,'http://192.168.1.72:3000/public/products/IMG_20210412_165812.jpg-1618286669835.jpg','http://192.168.1.72:3000/public/products/478673cb6b115b8c9c700979fa523fe3.png-1618188880958.png','http://192.168.1.72:3000/public/products/478673cb6b115b8c9c700979fa523fe3.png-1618188881306.png','http://192.168.1.72:3000/public/products/478673cb6b115b8c9c700979fa523fe3.png-1618188881654.png'),(9,52,'http://192.168.1.72:3000/public/products/IMG_20210411_205658.png-1618193057478.png','http://192.168.1.72:3000/public/products/IMG_20210411_205715.png-1618193057864.png','null','http://192.168.1.72:3000/public/products/images (3).jpeg-1618193058781.jpeg'),(10,43,'http://192.168.1.72:3000/public/products/images (3).jpeg-1618266179788.jpeg','http://192.168.1.72:3000/public/products/IMG_20210412_165811.jpg-1618266180349.jpg','http://192.168.1.72:3000/public/products/images (1).jpeg-1618266185391.jpeg','http://192.168.1.72:3000/public/products/478673cb6b115b8c9c700979fa523fe3.png-1618266185433.png'),(11,0,'1','2','3','4'),(12,0,'1','2','3','4');
/*!40000 ALTER TABLE `imgproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livestreaming`
--

DROP TABLE IF EXISTS `livestreaming`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livestreaming` (
  `idlivestreaming` int NOT NULL AUTO_INCREMENT,
  `idPromocion` int NOT NULL,
  `urlVideo` varchar(255) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `fechaLiveStream` datetime NOT NULL,
  `urlRecursos` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idlivestreaming`),
  KEY `fklivestreamingpromocion_idx` (`idPromocion`),
  CONSTRAINT `fklivestreamingpromocion` FOREIGN KEY (`idPromocion`) REFERENCES `promocion` (`idpromocion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livestreaming`
--

LOCK TABLES `livestreaming` WRITE;
/*!40000 ALTER TABLE `livestreaming` DISABLE KEYS */;
/*!40000 ALTER TABLE `livestreaming` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logisticaventaentrega`
--

DROP TABLE IF EXISTS `logisticaventaentrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logisticaventaentrega` (
  `idlogisticaVentaEntrega` int NOT NULL,
  `FolioVenta` int NOT NULL,
  `idEmpresaDeLogistica` int NOT NULL,
  `fechaEnvio` datetime NOT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  `fechaRecepcionPaquete` datetime DEFAULT NULL,
  `rutaDeSeguimiento` varchar(45) DEFAULT NULL,
  `latitud` varchar(45) DEFAULT NULL,
  `longitud` varchar(45) DEFAULT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`idlogisticaVentaEntrega`),
  KEY `fkLogisticaVenta_idx` (`FolioVenta`),
  KEY `fkLogisticaEmpresa_idx` (`idEmpresaDeLogistica`),
  CONSTRAINT `fkLogisticaEmpresa` FOREIGN KEY (`idEmpresaDeLogistica`) REFERENCES `empresadelogistica` (`idempresaDeLogistica`),
  CONSTRAINT `fkLogisticaVenta` FOREIGN KEY (`FolioVenta`) REFERENCES `venta` (`FolioVenta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logisticaventaentrega`
--

LOCK TABLES `logisticaventaentrega` WRITE;
/*!40000 ALTER TABLE `logisticaventaentrega` DISABLE KEYS */;
/*!40000 ALTER TABLE `logisticaventaentrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `idMarca` int NOT NULL AUTO_INCREMENT,
  `desMarca` varchar(245) NOT NULL,
  `statusMarca` varchar(1) NOT NULL,
  PRIMARY KEY (`idMarca`),
  UNIQUE KEY `desMarca` (`desMarca`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES (0,'HUAWEI','1'),(6,'COCA - COLA','1'),(7,'SALANDENS','1'),(8,'WRANGLER','1'),(9,'FLEXI','1'),(10,'ADIDAS','1'),(11,'HP','1'),(12,'SONY','0'),(13,'Apple','1'),(14,'Toshiba','0'),(15,'Samsung','1'),(16,'Whirpool','1');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membresia`
--

DROP TABLE IF EXISTS `membresia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membresia` (
  `idmembresia` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `fechaActivacion` datetime NOT NULL,
  `fechaVencimiento` datetime NOT NULL,
  `precio` float(8,2) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `status` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`idmembresia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membresia`
--

LOCK TABLES `membresia` WRITE;
/*!40000 ALTER TABLE `membresia` DISABLE KEYS */;
/*!40000 ALTER TABLE `membresia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metodopago`
--

DROP TABLE IF EXISTS `metodopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `metodopago` (
  `idMetodoPago` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `numTarjeta` varchar(16) NOT NULL,
  `expYear` varchar(2) NOT NULL,
  `expMonth` varchar(3) NOT NULL,
  `codigoSeguridad` varchar(3) NOT NULL,
  `statusMetodoPago` varchar(1) NOT NULL,
  PRIMARY KEY (`idMetodoPago`),
  KEY `metodoPago_user_idx` (`idUsuario`),
  CONSTRAINT `metodo_pago_user` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metodopago`
--

LOCK TABLES `metodopago` WRITE;
/*!40000 ALTER TABLE `metodopago` DISABLE KEYS */;
/*!40000 ALTER TABLE `metodopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificacion`
--

DROP TABLE IF EXISTS `notificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificacion` (
  `idnotificacion` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `tipo_notification` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idnotificacion`),
  KEY `fknotificationusuario_idx` (`idUsuario`),
  CONSTRAINT `fknotificationusuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificacion`
--

LOCK TABLES `notificacion` WRITE;
/*!40000 ALTER TABLE `notificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `notificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paginapago`
--

DROP TABLE IF EXISTS `paginapago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paginapago` (
  `idpaginaPago` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `observacion` varchar(45) DEFAULT NULL,
  `linkPago` varchar(45) DEFAULT NULL,
  `statusPaginaPago` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`idpaginaPago`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paginapago`
--

LOCK TABLES `paginapago` WRITE;
/*!40000 ALTER TABLE `paginapago` DISABLE KEYS */;
INSERT INTO `paginapago` VALUES (1,'Mercado Pago',NULL,'https://www.mercadopago.com.mx','1');
/*!40000 ALTER TABLE `paginapago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parroquia`
--

DROP TABLE IF EXISTS `parroquia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parroquia` (
  `idParroquia` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(75) NOT NULL,
  `estatus` varchar(1) DEFAULT '1',
  `idCanton` int NOT NULL,
  PRIMARY KEY (`idParroquia`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parroquia`
--

LOCK TABLES `parroquia` WRITE;
/*!40000 ALTER TABLE `parroquia` DISABLE KEYS */;
INSERT INTO `parroquia` VALUES (1,'Atahualpa','1',1),(2,'Santa Elena','1',1),(3,'Ballenita','1',1),(4,'Ancon','1',1),(5,'Chanduy','1',1),(6,'Colonche','1',1),(7,'Manglaralto','1',1),(8,'Simon Bolivar','1',1),(9,'La Libertad','1',2),(10,'Carlos Espinoza Larrea','1',3),(11,'Gral.Alberto Enriquez Gallo','1',3),(12,'Vicente Rocafuerte','1',3),(13,'Santa Rosa','1',3),(14,'Salinas','1',3),(15,'Anconcito','1',3),(16,'Jose Luis Tamayo - Muey','1',3);
/*!40000 ALTER TABLE `parroquia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permiso`
--

DROP TABLE IF EXISTS `permiso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permiso` (
  `idPermiso` int NOT NULL AUTO_INCREMENT,
  `desPermiso` varchar(150) NOT NULL,
  `statusPermiso` varchar(1) NOT NULL,
  PRIMARY KEY (`idPermiso`),
  UNIQUE KEY `desPermiso` (`desPermiso`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permiso`
--

LOCK TABLES `permiso` WRITE;
/*!40000 ALTER TABLE `permiso` DISABLE KEYS */;
INSERT INTO `permiso` VALUES (0,'SUPERUSUARIO','1'),(1,'TOTAL','1'),(2,'El usuario tiene permisos de comprar y vender productos','0');
/*!40000 ALTER TABLE `permiso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferenciasbusquedas`
--

DROP TABLE IF EXISTS `preferenciasbusquedas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferenciasbusquedas` (
  `idpreferenciasbusquedas` int NOT NULL AUTO_INCREMENT,
  `ultimasBusquedas` varchar(255) NOT NULL,
  PRIMARY KEY (`idpreferenciasbusquedas`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferenciasbusquedas`
--

LOCK TABLES `preferenciasbusquedas` WRITE;
/*!40000 ALTER TABLE `preferenciasbusquedas` DISABLE KEYS */;
/*!40000 ALTER TABLE `preferenciasbusquedas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `preferenciasiniciales`
--

DROP TABLE IF EXISTS `preferenciasiniciales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `preferenciasiniciales` (
  `idpreferenciasiniciales` int NOT NULL AUTO_INCREMENT,
  `pasatiempo` varchar(255) DEFAULT NULL,
  `deporte` varchar(255) DEFAULT NULL,
  `instrumentoFavorito` varchar(255) DEFAULT NULL,
  `comidaFavorita` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idpreferenciasiniciales`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `preferenciasiniciales`
--

LOCK TABLES `preferenciasiniciales` WRITE;
/*!40000 ALTER TABLE `preferenciasiniciales` DISABLE KEYS */;
/*!40000 ALTER TABLE `preferenciasiniciales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producto` (
  `idProducto` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `idCategoria` int NOT NULL,
  `idMarca` int NOT NULL,
  `nombreProducto` varchar(150) NOT NULL,
  `desProducto` varchar(255) NOT NULL DEFAULT '',
  `precioUnitarioProducto` float(8,2) NOT NULL DEFAULT '0.00',
  `imagenProducto` varchar(255) NOT NULL DEFAULT '',
  `fechaAlojadoProducto` date NOT NULL,
  `stockRealProducto` float(8,2) NOT NULL,
  `statusProducto` varchar(1) NOT NULL,
  `urlVideo` varchar(255) DEFAULT NULL,
  `urlDocumento` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idProducto`),
  KEY `pm` (`idMarca`),
  KEY `pc` (`idCategoria`),
  KEY `pu` (`idUsuario`),
  CONSTRAINT `pc` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`),
  CONSTRAINT `pm` FOREIGN KEY (`idMarca`) REFERENCES `marca` (`idMarca`),
  CONSTRAINT `pu` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (0,40,8,6,'Manguera','Manguera para carro',998.00,'http://192.168.1.72:3000/public/products/image-1616627584744.jpg','2021-03-06',8.00,'1',NULL,NULL),(34,39,1,6,'Pantalla plana','Televisión inteligente',100.00,'http://192.168.1.72:3000/public/products/image-1616629033631.jpg','2021-01-30',5.00,'1',NULL,NULL),(35,40,2,15,'Laptops','Laptop con memoria SD de 250GB',150.00,'img/LAPTOP.png','2021-01-25',0.00,'0',NULL,NULL),(36,41,2,13,'iPHONE 6','Celular iPhone 6 de la marca Apple',10500.00,'http://192.168.1.72:3000/public/products/iphone6.png-1616630640228.png','2021-01-15',5.00,'1',NULL,NULL),(37,42,2,13,'Refrigerador','Refrigerador para el hogar de la marca Whirpool',11500.00,'http://192.168.1.72:3000/public/products/refrigerador.jpg-1616629124042.jpg','2021-01-10',5.00,'1',NULL,NULL),(41,49,0,15,'Celular Android','Celular con sistema operativo Android',4500.00,'http://192.168.1.72:3000/public/products/celular.jpeg-1617156335396.jpeg','2021-03-30',0.00,'0',NULL,NULL),(42,49,0,0,'Celular Xiaomi','Celular con sistema operativo Android',4500.00,'http://192.168.1.72:3000/public/products/celular.jpeg-1617207150442.jpeg','2021-03-31',0.00,'0',NULL,NULL),(43,83,0,11,'Laptop','Laptop dell',2000.00,'http://192.168.1.72:3000/public/products/8c4def80-07c2-4103-a5b7-420b8aa8f1301183123800.jpg-1617473309605.jpg','2021-04-03',2.00,'1',NULL,NULL),(44,83,0,12,'Adaptador de cargador','Adaptador genérico de cargador para móvil',100.00,'http://192.168.1.72:3000/public/products/fea1196d-fa29-4f20-a436-8c6301d08293511012252.jpg-1617559487416.jpg','2021-04-04',0.00,'0',NULL,NULL),(45,49,2,11,'Laptop Dell','Laptop Dell con 8gb de ram, 2.6 Ghz',4200.00,'http://192.168.1.72:3000/public/products/IMG-20210310-WA0006.jpeg-1617769363690.jpeg','2021-04-06',0.00,'0',NULL,NULL),(46,49,2,14,'Laptop Dell','Laptop Dell usado',4200.00,'http://192.168.1.72:3000/public/products/IMG-20210310-WA0006.jpeg-1617769651360.jpeg','2021-04-06',0.00,'0',NULL,NULL),(47,49,1,7,'Lentes','Lentes para cuidar la vista de la luz de los aparatos electrónicos',2000.00,'http://192.168.1.72:3000/public/products/IMG-20201023-WA0004.jpg-1617769805550.jpg','2021-04-06',0.00,'0',NULL,NULL),(48,49,2,12,'Laptop Dell','Laptop Dell nuevo',4200.00,'http://192.168.1.72:3000/public/products/IMG-20210310-WA0004.jpeg-1617939165921.jpeg','2021-04-06',2.00,'1',NULL,NULL),(49,49,1,8,'Lentes','Lentes de protección a la luz azul',2000.00,'http://192.168.1.72:3000/public/products/IMG-20201023-WA0003.jpg-1617770359567.jpg','2021-04-06',0.00,'0',NULL,NULL),(50,49,2,11,'Laptop HP','Laptop HP de ultima generación',3500.00,'http://192.168.1.72:3000/public/products/laptop_hp.jpg-1617843523662.jpg','2021-04-07',6.00,'1',NULL,NULL),(51,49,2,11,'Laptop HP','Laptop HP i7',5200.00,'http://192.168.1.72:3000/public/products/478673cb6b115b8c9c700979fa523fe3.png-1618188017803.png','2021-04-11',2.00,'1',NULL,NULL),(52,49,0,0,'Audífonos SONY','Audífonos sony de diadema',500.00,'http://192.168.1.72:3000/public/products/IMG_20210411_205351.jpg-1618192986090.jpg','2021-04-11',3.00,'1',NULL,NULL),(55,100,0,0,'Estuche de lentes','Estuche',50.00,'http://192.168.1.72:3000/public/products/image_picker2281895957813068809.jpg-1625784021658.jpg','2021-07-08',2.00,'1',NULL,NULL),(59,98,0,0,'Lentes de descanso 3','Lentes con protección',100.00,'http://192.168.1.72:3000/public/products/20210708_211852.jpg-1625797421084.jpg','2021-07-08',0.00,'0',NULL,NULL),(60,98,0,15,'Teclado inalambrico','Alcance de 10 m',200.00,'http://192.168.1.72:3000/public/products/20210708_213831.jpg-1625798666026.jpg','2021-07-08',3.00,'1',NULL,NULL),(61,98,1,15,'Estuche de lentes','Estuche protector de lentes',100.00,'http://192.168.1.72:3000/public/products/20210705_194205.jpg-1626147705933.jpg','2021-07-12',2.00,'1',NULL,NULL),(62,98,1,11,'Libreta','Libreta para tomar notas increibles',20.00,'http://192.168.1.72:3000/public/products/IMG-20210712-WA0002.jpg-1626148475427.jpg','2021-07-12',6.00,'1',NULL,NULL),(63,100,1,16,'Escritorio','Escritorio de madera',10.00,'http://192.168.1.72:3000/public/products/IMG-20210801-WA0000.jpg-1627940462926.jpg','2021-08-02',20.00,'1',NULL,NULL),(64,113,7,7,'Libreta TNM','Libreta para tomar notas',5.00,'http://192.168.1.72:3000/public/products/20210804_215845.jpg-1628132473251.jpg','2021-08-04',19.00,'1',NULL,NULL),(65,114,2,11,'Impresora ','Impresora multifuncional con cartuchos recargables',1500.00,'http://192.168.1.72:3000/public/products/20210808_200922.jpg-1628471590386.jpg','2021-08-08',10.00,'1',NULL,NULL);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productocarrito`
--

DROP TABLE IF EXISTS `productocarrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productocarrito` (
  `idproductocarrito` int NOT NULL AUTO_INCREMENT,
  `idProducto` int NOT NULL,
  `idUsuario` int NOT NULL,
  `cantidadProducto` int NOT NULL,
  `statusProductoCarrito` varchar(1) NOT NULL,
  `subtotal` float DEFAULT NULL,
  `vendido` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`idproductocarrito`),
  KEY `fkproducto_idx` (`idProducto`),
  KEY `fkusuario_idx` (`idUsuario`),
  CONSTRAINT `fkproducto` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`),
  CONSTRAINT `fkusuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productocarrito`
--

LOCK TABLES `productocarrito` WRITE;
/*!40000 ALTER TABLE `productocarrito` DISABLE KEYS */;
INSERT INTO `productocarrito` VALUES (127,63,83,1,'1',NULL,'1'),(131,55,83,1,'0',NULL,'1'),(132,63,83,1,'1',NULL,'1'),(133,55,83,1,'1',NULL,'1'),(134,52,98,1,'0',NULL,'1'),(135,48,98,1,'0',NULL,'1'),(136,63,98,0,'0',NULL,'0'),(137,55,98,1,'0',NULL,'1'),(138,52,98,0,'0',NULL,'0'),(139,65,98,0,'0',NULL,'0'),(140,43,98,0,'0',NULL,'0'),(141,50,98,1,'1',NULL,'0'),(142,63,98,1,'1',NULL,'0');
/*!40000 ALTER TABLE `productocarrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productocarritoventa`
--

DROP TABLE IF EXISTS `productocarritoventa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productocarritoventa` (
  `idproductocarritoventa` int NOT NULL AUTO_INCREMENT,
  `idproductocarrito` int NOT NULL,
  `FolioVenta` int NOT NULL,
  PRIMARY KEY (`idproductocarritoventa`),
  KEY `fkpcvproductocarrito_idx` (`idproductocarrito`),
  KEY `fkpcvventa_idx` (`FolioVenta`),
  CONSTRAINT `fkpcvproductocarrito` FOREIGN KEY (`idproductocarrito`) REFERENCES `productocarrito` (`idproductocarrito`),
  CONSTRAINT `fkpcvventa` FOREIGN KEY (`FolioVenta`) REFERENCES `venta` (`FolioVenta`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productocarritoventa`
--

LOCK TABLES `productocarritoventa` WRITE;
/*!40000 ALTER TABLE `productocarritoventa` DISABLE KEYS */;
INSERT INTO `productocarritoventa` VALUES (2,127,164),(3,131,168),(4,132,169),(5,133,169),(6,134,170),(7,135,170),(8,137,171);
/*!40000 ALTER TABLE `productocarritoventa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocion`
--

DROP TABLE IF EXISTS `promocion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promocion` (
  `idpromocion` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `porcentaje` float(8,2) NOT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  `statusPromocion` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`idpromocion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocion`
--

LOCK TABLES `promocion` WRITE;
/*!40000 ALTER TABLE `promocion` DISABLE KEYS */;
/*!40000 ALTER TABLE `promocion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promocionproducto`
--

DROP TABLE IF EXISTS `promocionproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promocionproducto` (
  `idpromocionproducto` int NOT NULL AUTO_INCREMENT,
  `idPromocion` int NOT NULL,
  `idProducto` int NOT NULL,
  PRIMARY KEY (`idpromocionproducto`),
  KEY `fkpromproducto_idx` (`idProducto`),
  KEY `fkprompromocion_idx` (`idPromocion`),
  CONSTRAINT `fkpromproducto` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`),
  CONSTRAINT `fkprompromocion` FOREIGN KEY (`idPromocion`) REFERENCES `promocion` (`idpromocion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promocionproducto`
--

LOCK TABLES `promocionproducto` WRITE;
/*!40000 ALTER TABLE `promocionproducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `promocionproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provincia`
--

DROP TABLE IF EXISTS `provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincia` (
  `idProvincia` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(75) NOT NULL,
  `estatus` varchar(1) DEFAULT '1',
  PRIMARY KEY (`idProvincia`),
  CONSTRAINT `id_canton` FOREIGN KEY (`idProvincia`) REFERENCES `canton` (`idCanton`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincia`
--

LOCK TABLES `provincia` WRITE;
/*!40000 ALTER TABLE `provincia` DISABLE KEYS */;
INSERT INTO `provincia` VALUES (1,'Santa Elena','1');
/*!40000 ALTER TABLE `provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `idRole` int NOT NULL AUTO_INCREMENT,
  `desRole` varchar(150) NOT NULL,
  `statusRole` varchar(1) NOT NULL,
  PRIMARY KEY (`idRole`),
  UNIQUE KEY `desRole` (`desRole`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (0,'MICROEMPRESA','1'),(2,'ADMIN','1'),(3,'Vendedor','1'),(4,'Usuario normal','0');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolpermiso`
--

DROP TABLE IF EXISTS `rolpermiso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rolpermiso` (
  `idRolPermisoUsuario` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `idRol` int NOT NULL,
  `idPermiso` int NOT NULL,
  PRIMARY KEY (`idRolPermisoUsuario`),
  KEY `rpu` (`idUsuario`),
  KEY `rpp` (`idPermiso`),
  KEY `rpr` (`idRol`),
  CONSTRAINT `rpp` FOREIGN KEY (`idPermiso`) REFERENCES `permiso` (`idPermiso`),
  CONSTRAINT `rpr` FOREIGN KEY (`idRol`) REFERENCES `rol` (`idRole`),
  CONSTRAINT `rpu` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolpermiso`
--

LOCK TABLES `rolpermiso` WRITE;
/*!40000 ALTER TABLE `rolpermiso` DISABLE KEYS */;
INSERT INTO `rolpermiso` VALUES (1,39,2,2),(3,40,2,1),(4,41,2,2),(5,42,2,2),(6,43,2,2),(7,44,2,2),(8,45,2,2),(9,48,2,2),(11,98,2,2),(14,83,2,2),(15,100,2,2),(16,100,2,2),(17,83,2,2),(18,83,2,2),(19,83,2,2),(20,83,2,2),(21,83,2,2),(22,100,2,2),(23,100,2,2),(24,100,2,2),(25,100,2,2),(26,100,2,2),(27,100,2,2),(28,98,2,2),(29,100,2,2);
/*!40000 ALTER TABLE `rolpermiso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tablacomprador`
--

DROP TABLE IF EXISTS `tablacomprador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tablacomprador` (
  `idComprador` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `Nombrecompleto` varchar(50) DEFAULT NULL,
  `RUC` varchar(20) DEFAULT NULL,
  `Cedula` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idComprador`),
  KEY `idUsuario_idx` (`idUsuario`),
  CONSTRAINT `idUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tablacomprador`
--

LOCK TABLES `tablacomprador` WRITE;
/*!40000 ALTER TABLE `tablacomprador` DISABLE KEYS */;
INSERT INTO `tablacomprador` VALUES (2,117,'Nombre','123456','123456'),(15,117,'monarka','12341234','12343');
/*!40000 ALTER TABLE `tablacomprador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarjetamonarka`
--

DROP TABLE IF EXISTS `tarjetamonarka`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarjetamonarka` (
  `idtarjetamonarka` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `numTarjeta` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL,
  `fechaVencimiento` datetime NOT NULL,
  `cvc` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci NOT NULL,
  `saldo` float(8,2) NOT NULL,
  `observaciones` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci DEFAULT NULL,
  `statusTarjetaCodeway` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_german2_ci DEFAULT NULL,
  PRIMARY KEY (`idtarjetamonarka`),
  KEY `fktarjetausuario_idx` (`idUsuario`),
  CONSTRAINT `fktarjetausuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_german2_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarjetamonarka`
--

LOCK TABLES `tarjetamonarka` WRITE;
/*!40000 ALTER TABLE `tarjetamonarka` DISABLE KEYS */;
/*!40000 ALTER TABLE `tarjetamonarka` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temporada`
--

DROP TABLE IF EXISTS `temporada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temporada` (
  `idtemporada` int NOT NULL AUTO_INCREMENT,
  `idPromocion` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `fechaInicio` datetime NOT NULL,
  `fechaTermino` datetime NOT NULL,
  PRIMARY KEY (`idtemporada`),
  KEY `fktemporadapromocion_idx` (`idPromocion`),
  CONSTRAINT `fktemporadapromocion` FOREIGN KEY (`idPromocion`) REFERENCES `promocion` (`idpromocion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temporada`
--

LOCK TABLES `temporada` WRITE;
/*!40000 ALTER TABLE `temporada` DISABLE KEYS */;
/*!40000 ALTER TABLE `temporada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfpago`
--

DROP TABLE IF EXISTS `transfpago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transfpago` (
  `idTransferencia` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `nombreUsuario` varchar(100) NOT NULL,
  `claveInterbancaria` varchar(18) NOT NULL,
  `numeroTarjeta` varchar(16) NOT NULL,
  `nombreBanco` varchar(100) NOT NULL,
  `numeroCuenta` varchar(16) NOT NULL,
  PRIMARY KEY (`idTransferencia`),
  KEY `idUsuario` (`idUsuario`),
  CONSTRAINT `transfpago_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfpago`
--

LOCK TABLES `transfpago` WRITE;
/*!40000 ALTER TABLE `transfpago` DISABLE KEYS */;
INSERT INTO `transfpago` VALUES (1,117,'MONARKA','123456789123456789','1234567891234567','Banamex','1234567891234567'),(2,117,'MONARKA inter','123456789123456789','1234567891234567','Banamex','1234567891234567');
/*!40000 ALTER TABLE `transfpago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idUsuario` int NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(200) NOT NULL,
  `apellido1Usuario` varchar(150) NOT NULL,
  `emailUsuario` varchar(245) NOT NULL,
  `contraUsuario` varchar(16) DEFAULT NULL,
  `confirmaContraUsuario` varchar(16) DEFAULT NULL,
  `apellido2Usuario` varchar(150) DEFAULT NULL,
  `imagenUsuario` varchar(245) DEFAULT NULL,
  `telefonoUsuario` varchar(15) DEFAULT NULL,
  `fechaRegistroUsuario` datetime NOT NULL,
  `statusUsuario` varchar(1) NOT NULL,
  `rfeUsuario` varchar(13) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `codeActive` varchar(21) DEFAULT NULL,
  `clienidpaypal` varchar(255) DEFAULT NULL,
  `pk_mercadopago` varchar(255) DEFAULT NULL,
  `accessTokenMpago` varchar(255) DEFAULT NULL,
  `tokenFCM` varchar(255) DEFAULT NULL,
  `idProvincia` int DEFAULT NULL,
  `idCanton` int DEFAULT NULL,
  `idParroquia` int DEFAULT NULL,
  `idBarrio` int DEFAULT NULL,
  PRIMARY KEY (`idUsuario`),
  KEY `fk_provincia_idx` (`idProvincia`),
  KEY `fk_canton_idx` (`idCanton`),
  KEY `fk_parroquia_idx` (`idParroquia`),
  KEY `fk_barrio_idx` (`idBarrio`),
  CONSTRAINT `fk_barrio` FOREIGN KEY (`idBarrio`) REFERENCES `barrio` (`idBarrio`),
  CONSTRAINT `fk_canton` FOREIGN KEY (`idCanton`) REFERENCES `canton` (`idCanton`),
  CONSTRAINT `fk_parroquia` FOREIGN KEY (`idParroquia`) REFERENCES `parroquia` (`idParroquia`),
  CONSTRAINT `fk_provincia` FOREIGN KEY (`idProvincia`) REFERENCES `provincia` (`idProvincia`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (117,'Nataly','Cruz','nat@gmail.com','1234567','1234567','Espinosa',NULL,NULL,'2021-03-13 21:52:30','1','2400021966',NULL,NULL,NULL,NULL,NULL,NULL,1,1,1,1),(131,'Ingrid','Espinosa','1719110501@utectulancingo.edu.mx','12345678','12345678',NULL,NULL,NULL,'2021-10-04 21:29:34','1',NULL,NULL,'39nefkziulc6zovqoge1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(133,'nataly','Cadena','natce668@gmail.com','12345678','12345678',NULL,NULL,NULL,'2021-10-04 21:57:23','0',NULL,NULL,'9hshbz54_kpdvm05skpv',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(134,'nataly','cruz','cruz.ingrid.1avpro.2016@gmail.com','12345678','12345678',NULL,NULL,NULL,'2021-10-11 20:09:58','0',NULL,NULL,'7a1y2srowkm7l08272ce',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(135,'cadena','lima','cadena@gmail.com','12345678','12345678',NULL,NULL,NULL,'2021-11-09 21:05:38','0',NULL,NULL,'oqktic33h9ke1p835lwc',NULL,NULL,NULL,NULL,2,3,3,2),(144,'Citlaly','Ordoñez','citlaliordunez@gmail.com','cit2210','cit2210',NULL,NULL,NULL,'2021-11-18 12:32:46','0',NULL,NULL,'48tbfll5nqa2beicul7k',NULL,NULL,NULL,NULL,1,1,2,12),(145,'Carlos','Montes','carlos@gmail.com','1234567','1234567',NULL,NULL,NULL,'2021-12-02 17:09:44','0',NULL,NULL,'omt5wgxx2uygbc4a_2vl',NULL,NULL,NULL,NULL,1,1,1,1),(146,'Carlos','Montes','carloss12@gmail.com','1234567','1234567',NULL,NULL,NULL,'2021-12-02 17:12:35','0',NULL,NULL,'kygrkr_9l9hb0sziqirb',NULL,NULL,NULL,NULL,1,2,9,93),(147,'Erick','Lima','erick@gmail.com','1234567','1234567',NULL,NULL,NULL,'2021-12-02 17:22:33','0',NULL,NULL,'cmz3ke6s5s1ebsdp6d67',NULL,NULL,NULL,NULL,1,3,11,111),(148,'Fernando','Cadena','fernando@gmail.com','1234567','1234567',NULL,NULL,NULL,'2021-12-02 17:27:11','1',NULL,NULL,'t31b47oym_gnayei49q9',NULL,NULL,NULL,NULL,1,2,9,93),(149,'Arturo ','Montes','arturo@gmail.com','1234567','1234567',NULL,NULL,NULL,'2021-12-03 17:47:09','1',NULL,NULL,'ql35gb92d_32wz92m_kt',NULL,NULL,NULL,NULL,1,1,3,13),(150,'Mauricio','Castro','mauricio@gmail.com','1234567','1234567',NULL,NULL,NULL,'2021-12-03 18:06:55','1',NULL,NULL,'em2yrdr2wt5oc7pl8w32',NULL,NULL,NULL,NULL,1,2,9,94);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuariomembresia`
--

DROP TABLE IF EXISTS `usuariomembresia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuariomembresia` (
  `idusuariomembresia` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `idMembresia` int NOT NULL,
  PRIMARY KEY (`idusuariomembresia`),
  KEY `fkumusuario_idx` (`idUsuario`),
  KEY `fkummembresia_idx` (`idMembresia`),
  CONSTRAINT `fkummembresia` FOREIGN KEY (`idMembresia`) REFERENCES `membresia` (`idmembresia`),
  CONSTRAINT `fkumusuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuariomembresia`
--

LOCK TABLES `usuariomembresia` WRITE;
/*!40000 ALTER TABLE `usuariomembresia` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuariomembresia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuariopreferencias`
--

DROP TABLE IF EXISTS `usuariopreferencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuariopreferencias` (
  `idusuariopreferencias` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `idPreferenciasBusquedas` int NOT NULL,
  PRIMARY KEY (`idusuariopreferencias`),
  KEY `fkprefusuario_idx` (`idUsuario`),
  KEY `fkprefbusquedas_idx` (`idPreferenciasBusquedas`),
  CONSTRAINT `fkprefbusquedas` FOREIGN KEY (`idPreferenciasBusquedas`) REFERENCES `preferenciasbusquedas` (`idpreferenciasbusquedas`),
  CONSTRAINT `fkprefusuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuariopreferencias`
--

LOCK TABLES `usuariopreferencias` WRITE;
/*!40000 ALTER TABLE `usuariopreferencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuariopreferencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuariopreferenciasiniciales`
--

DROP TABLE IF EXISTS `usuariopreferenciasiniciales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuariopreferenciasiniciales` (
  `idusuariopreferenciasiniciales` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `idpreferenciasiniciales` int NOT NULL,
  PRIMARY KEY (`idusuariopreferenciasiniciales`),
  KEY `fkupiusuario_idx` (`idUsuario`),
  KEY `fkupipreferenciasiniciales_idx` (`idpreferenciasiniciales`),
  CONSTRAINT `fkupipreferenciasiniciales` FOREIGN KEY (`idpreferenciasiniciales`) REFERENCES `preferenciasiniciales` (`idpreferenciasiniciales`),
  CONSTRAINT `fkupiusuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuariopreferenciasiniciales`
--

LOCK TABLES `usuariopreferenciasiniciales` WRITE;
/*!40000 ALTER TABLE `usuariopreferenciasiniciales` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuariopreferenciasiniciales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venta`
--

DROP TABLE IF EXISTS `venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venta` (
  `FolioVenta` int NOT NULL AUTO_INCREMENT,
  `idUsuario` int NOT NULL,
  `idpaginaPago` int NOT NULL,
  `claveTransaccion` varchar(250) NOT NULL,
  `paypalDatos` text,
  `fechaVenta` datetime NOT NULL,
  `correo` varchar(255) NOT NULL,
  `totalVendido` float(8,2) NOT NULL,
  `direccionEntrega` varchar(45) NOT NULL,
  `statusVenta` varchar(1) NOT NULL,
  PRIMARY KEY (`FolioVenta`),
  KEY `fkusuario_idx` (`idUsuario`),
  KEY `fkventapaginapago_idx` (`idpaginaPago`),
  CONSTRAINT `fkventapaginapago` FOREIGN KEY (`idpaginaPago`) REFERENCES `paginapago` (`idpaginaPago`),
  CONSTRAINT `fkventausuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venta`
--

LOCK TABLES `venta` WRITE;
/*!40000 ALTER TABLE `venta` DISABLE KEYS */;
INSERT INTO `venta` VALUES (1,117,1,'1234567',NULL,'2021-03-13 21:52:30','nat@gmail.com',900.00,'romero','1');
/*!40000 ALTER TABLE `venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'monarka'
--
/*!50003 DROP PROCEDURE IF EXISTS `psActDatFalUsu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psActDatFalUsu`(`PidUAct` INT)
BEGIN
	SELECT
	usuario.idUsuario,
	usuario.nombreUsuario,
	usuario.apellido1Usuario,
	usuario.apellido2Usuario,	
	usuario.contraUsuario,
	usuario.confirmaContraUsuario,	
	usuario.direccionUsuario,
	usuario.codigoPostalUsuario,
	usuario.telefonoUsuario,
	usuario.rfeUsuario,
	usuario.fechaNacimiento
	FROM
	usuario
	WHERE usuario.idUsuario = PidUAct;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psActualizarImgsProd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psActualizarImgsProd`(`pIdProducto` INT, `img1` VARCHAR(150),`img2` VARCHAR(150), `img3` VARCHAR(150), `img4` VARCHAR(150))
BEGIN
  UPDATE imgproducto SET imgproducto.img1 = img1,
  imgproducto.img2 = img2,
  imgproducto.img3 = img3,
  imgproducto.img4 = img4
  WHERE imgproducto.idProducto =pIdProducto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psActualizarProdcuto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psActualizarProdcuto`(`PnombreActP` VARCHAR(150), `PdescripActP` VARCHAR(255), `PprecioUActP` FLOAT(8,2), `PimagenActP` VARCHAR(255), `PstockActP` FLOAT(8,2), `PmarcaActP` INT, `PcategoriaActP` INT, `PidProductoActP` INT)
BEGIN 	
	UPDATE producto SET producto.nombreProducto = PnombreActP,
	 producto.desProducto = PdescripActP,
	 producto.precioUnitarioProducto = PprecioUActP,
	 producto.imagenProducto = PimagenActP,
	 producto.stockRealProducto = PstockActP,
	 producto.idMarca = PmarcaActP,	 
	 producto.idCategoria = PcategoriaActP 
	WHERE  producto.idProducto = PidProductoActP AND producto.statusProducto = '1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psActuImgs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psActuImgs`(`PidUsuarioActProImg` INT)
BEGIN
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.imagenProducto,
	imgproducto.img1,
	imgproducto.img2,
	imgproducto.img3,
	imgproducto.img4
	FROM producto
	INNER JOIN imgproducto ON producto.idProducto = imgproducto.idProducto
	WHERE  producto.idUsuario = PidUsuarioActProImg AND statusProducto= '1' AND producto.stockRealProducto >0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psBusIdProduCU` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psBusIdProduCU`(`PidProUmC` INT)
BEGIN 
	SELECT producto.idUsuario FROM producto
	WHERE producto.idProducto = PidProUmC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psCateAct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psCateAct`()
BEGIN		
	SELECT categoria.idCategoria,categoria.desCategoria FROM categoria WHERE categoria.statusCategoria = '1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psConsultaUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psConsultaUsuario`(`PdesContra` VARCHAR(16), `PdesEmail` VARCHAR(245))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;
	SET AUTOCOMMIT=0;
								
IF EXISTS(SELECT usuario.emailUsuario, usuario.contraUsuario  FROM usuario WHERE usuario.contraUsuario = PdesContra AND usuario.emailUsuario = PdesEmail) THEN 
		SELECT "Datos Correcto"  AS "Mensaje";		
ELSE			
			SELECT "Datos incorrectos" AS "Aviso";
			
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psDateActual` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psDateActual`()
BEGIN 
SELECT CURDATE();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psDatFalUsu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psDatFalUsu`(`Pape2U` VARCHAR(200), `PdirecU` VARCHAR(150), `PcpU` VARCHAR(5), `Ptelefono` VARCHAR(55), `PRFC` VARCHAR(13), `PfeNa` DATE, `PidU` INT)
BEGIN
	UPDATE usuario SET 
	usuario.apellido2Usuario = Pape2U, 
	usuario.direccionUsuario = PdirecU,
	usuario.codigoPostalUsuario = PcpU,
	usuario.telefonoUsuario = Ptelefono,
	usuario.rfeUsuario = PRFC,
	usuario.fechaNacimiento = PfeNa
	WHERE usuario.idUsuario = PidU;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psEliProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psEliProduct`(`Pidrod` INT)
BEGIN 
	UPDATE producto SET stockRealProducto = '0', producto.statusProducto ='0' WHERE producto.idProducto=Pidrod;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psEliProductoCarrito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psEliProductoCarrito`(`pIdProductoCarrito` INT)
BEGIN
   UPDATE productocarrito SET statusProductoCarrito="0", cantidadProducto=0 WHERE productocarrito.idproductocarrito=pIdProductoCarrito;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psEmailConfirm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psEmailConfirm`(`Pcodi` VARCHAR(20), `Pemail` VARCHAR(245))
BEGIN
UPDATE usuario SET usuario.statusUsuario = '1' WHERE (usuario.codeActive = Pcodi) AND (usuario.emailUsuario = Pemail);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psFeActD` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psFeActD`()
BEGIN
select CURDATE();
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psFiltroCorreo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psFiltroCorreo`(`Pemail` VARCHAR(245))
BEGIN
	SELECT * FROM usuario WHERE usuario.emailUsuario = Pemail;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psFiltroEmail` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psFiltroEmail`(IN `Pemail` VARCHAR(245))
    NO SQL
SELECT * FROM usuario
WHERE usuario.emailUsuario = Pemail ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psImagenUsuarioPerfil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psImagenUsuarioPerfil`(`PdiUser` INT)
BEGIN 
	SELECT usuario.imagenUsuario FROM usuario WHERE usuario.idUsuario = PdiUser AND usuario.statusUsuario='1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psIMpagoData` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psIMpagoData`(`pIdUsuario` INT,`pKmercadopago` VARCHAR(255),`pAccessTokenMpago` VARCHAR(255))
BEGIN

UPDATE usuario SET
usuario.pk_mercadopago= pKmercadopago,
usuario.accessTokenMpago = pAccessTokenMpago
WHERE usuario.idUsuario=pIdUsuario;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsCarrito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsCarrito`(`PFolioVenta` INT, `PidProducto` INT, `PprecioUnitario` FLOAT, `PcantidadProducto` FLOAT)
BEGIN 
		INSERT INTO carrito
		VALUES (
		null,
		PFolioVenta,
		PidProducto,
		PprecioUnitario,
		PcantidadProducto,
		'1');
		UPDATE producto SET stockRealProducto = stockRealProducto - PcantidadProducto WHERE producto.idProducto=PidProducto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsCarritoVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsCarritoVenta`(`PIdCarrito` INT,`PFolioVenta` INT)
BEGIN
  INSERT INTO carritoventa
  (idCarrito, FolioVenta)
  VALUES (PIdCarrito,PFolioVenta);
  
  SELECT last_insert_id() AS idCarritoVenta;
  
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsClienIdU` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsClienIdU`(`PidUsuaCpay` INT, `PclienId` VARCHAR(255))
BEGIN
	UPDATE usuario SET usuario.clienidpaypal = PclienId WHERE usuario.idUsuario = PidUsuaCpay;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInserImgs` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInserImgs`(`PidPro` INT, `Pimg1` VARCHAR(255), `Pimg2` VARCHAR(255), `Pimg3` VARCHAR(255), `Pimg4` VARCHAR(255))
BEGIN
	INSERT imgproducto VALUES(DEFAULT,PidPro,Pimg1,Pimg2,Pimg3,Pimg4);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsertCarritoUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsertCarritoUsuario`(`spIdUsuario` INT,`spPrecioUnitario` FLOAT,`spCantidadProducto` FLOAT, `spStatusCarrito` VARCHAR(1))
BEGIN

IF EXISTS (SELECT*FROM carrito WHERE idUsuario=spIdUsuario)
THEN
  SELECT "El carrito ya existe" AS Mensaje;
ELSE
INSERT INTO carrito (idUsuario, precioUnitario,cantidadProducto,statusCarrito)
VALUES(spIdUsuario,spPrecioUnitario,spCantidadProducto,spStatusCarrito);
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsertCategoria` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsertCategoria`(`PdesCategoria` VARCHAR(150))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;
	SET AUTOCOMMIT=0;
									
IF EXISTS(SELECT categoria.desCategoria FROM categoria WHERE categoria.desCategoria = PdesCategoria) THEN 
		SELECT CONCAT('Categoría  Ya Existente: ', PdesCategoria)  AS "Mensaje";		
ROLLBACK;
ELSE

			INSERT categoria VALUES(
												DEFAULT,
												UPPER(PdesCategoria),
												'1');
			COMMIT;
			SELECT CONCAT('Categoría insertada con éxito!!!: ',  PdesCategoria)  AS "Aviso";
			
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsertComenCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsertComenCliente`(`PComentarioCliente` TEXT,`Pestrellas` INT, `PidUsuario` INT, `PidProducto` INT)
BEGIN
INSERT detaproductocomen (comentariocliente,estrellas, idUsuario, idProducto, fecha)
					VALUES (PComentarioCliente, Pestrellas, PidUsuario, PidProducto, NOW());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsertComenUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsertComenUsuario`(`PComentario` TEXT, `PidUsuario` INT, `PidProducto` INT)
BEGIN
	INSERT detaproductocomen (comentario, idUsuario, idProducto, fecha)
					VALUES (PComentario, PidUsuario, PidProducto, NOW());
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsertFormaPago` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsertFormaPago`(`PdesFormaPago` VARCHAR(150))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 	
		SELECT "HA OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;			
	SET AUTOCOMMIT=0;
					
IF EXISTS(SELECT formapago.desFormaPago FROM formapago WHERE formapago.desFormaPago = PdesFormaPago) THEN 
		SELECT CONCAT('Forma de Pago ya existente : ',  PdesFormaPago)  AS "Mensaje";
ROLLBACK;
ELSE

			INSERT formapago VALUES(
												DEFAULT,
												UPPER(PdesFormaPago),
												'1');	
			COMMIT;
			SELECT CONCAT('Forma de Pago insertada con éxito!!!: ',  PdesFormaPago)  AS "Aviso";
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsertMarca` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsertMarca`(`PdesMarca` VARCHAR(150))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "HA OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;
	SET AUTOCOMMIT=0;
										
IF EXISTS(SELECT marca.desMarca FROM marca WHERE marca.desMarca = PdesMarca) THEN 
		SELECT CONCAT('Marca ya existente : ',  PdesMarca)  AS "Mensaje";
		ROLLBACK;
ELSE

			INSERT marca VALUES(
												DEFAULT,
												UPPER(PdesMarca),
												'1');			
			COMMIT;
			SELECT CONCAT('Marca insertada con éxito!!!: ',  PdesMarca)  AS "Aviso";
			
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsertPermisos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsertPermisos`(`PdesPermiso` VARCHAR(150))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;
	SET AUTOCOMMIT=0;
					
IF EXISTS(SELECT permiso.desPermiso FROM permiso  WHERE permiso.desPermiso = PdesPermiso) THEN 
		SELECT CONCAT('Permiso Ya Existente: ',PdesPermiso) AS "Mensaje";
	ROLLBACK;		
ELSE

			INSERT permiso VALUES(
												DEFAULT,
												UPPER(PdesPermiso),
												'1');
			COMMIT;
			SELECT CONCAT('Permiso insertado con exito!!!',PdesPermiso) AS "Aviso";
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsertProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsertProducto`(`PnombrePro` VARCHAR(200), `PdesPro` VARCHAR(200), `PpreuniPro` DOUBLE, `PcanPro` DOUBLE, `PimagePro` VARCHAR(240), `PidMarcaPro` INT, `PidCategoriaPro` INT, `PidUsuarioPro` INT)
BEGIN
	INSERT producto (
	producto.idProducto,
	producto.nombreProducto,
	producto.desProducto,
	producto.precioUnitarioProducto,
	producto.stockRealProducto,
	producto.imagenProducto,
	producto.idMarca,
	producto.idCategoria,
	producto.idUsuario,
	producto.fechaAlojadoProducto,
	producto.statusProducto)
	VALUES(
	DEFAULT,
	PnombrePro,
	PdesPro,
	PpreuniPro,
	PcanPro,
	PimagePro,
	PidMarcaPro,
	PidCategoriaPro,
	PidUsuarioPro,
	NOW(),
	'1'
	);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsertProductoCarrito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsertProductoCarrito`(`spIdProducto` INT, `spIdCarrito` INT, `spCantidadProducto` INT)
BEGIN

IF EXISTS (SELECT*FROM productocarrito WHERE (idProducto=spIdProducto AND statusProductoCarrito ="1" AND idCarrito = spIdCarrito))
THEN
  SELECT "Ya has agregado este producto a tu carrito" AS Mensaje;
ELSE

INSERT INTO productoCarrito (idProducto,idCarrito,cantidadProducto, statusProductoCarrito)
VALUES(spIdProducto,spIdCarrito,spCantidadProducto,"1");

END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsertRoles` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsertRoles`(`PdesRol` VARCHAR(150))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;
	SET AUTOCOMMIT=0;
	
IF EXISTS(SELECT rol.desRole FROM rol WHERE  rol.desRole = PdesRol) THEN 
		SELECT CONCAT('Rol Ya Existente: ', PdesRol) AS "Mensaje";
	ROLLBACK;
ELSE

			INSERT rol VALUES(
												DEFAULT,
												UPPER(PdesRol),
												'1');
			COMMIT;
			SELECT CONCAT('Rol insertado con exito!!! ', PdesRol) AS "Aviso";			
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsertRolPermisoMovil` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsertRolPermisoMovil`(`idUsuario` INT)
BEGIN
    INSERT INTO rolpermiso(
        rolpermiso.idRolPermisoUsuario,
        rolpermiso.idUsuario,
        rolPermiso.idRol,
        rolpermiso.idPermiso
    )VALUES(
    DEFAULT,
    idUsuario,
    2,
    2
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsertTokenFCM` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsertTokenFCM`(`pIdUsuario` INT, `pTokenFCM` VARCHAR(255))
BEGIN

UPDATE usuario SET
usuario.tokenFCM= pTokenFCM
WHERE usuario.idUsuario=pIdUsuario;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsertUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsertUsuario`(`PnombreUsu` VARCHAR(200), `Pape1Usu` VARCHAR(150), `Pape2Usu` VARCHAR(150), `PemailUsu` VARCHAR(245), `PfotoUsu` VARCHAR(245), `PdireccionUsu` VARCHAR(255), `PcodigoPostalUsu` VARCHAR(5), `PtelefonoUsu` VARCHAR(15), `PcontraUsu` VARCHAR(16), `PConfircontraUsu` VARCHAR(16), `PrfcUsu` VARCHAR(13))
BEGIN
	
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;
	SET AUTOCOMMIT=0;							
					
IF EXISTS(SELECT usuario.emailUsuario FROM usuario WHERE usuario.emailUsuario = PemailUsu) THEN 
		SELECT CONCAT('Usuario ya registrado con ese Email: ', PemailUsu)  AS "Mensaje";		
	ROLLBACK;
ELSE			
			INSERT usuario VALUES(
														DEFAULT,
														PnombreUsu,
														Pape1Usu,
														Pape2Usu,
														PemailUsu,
														PfotoUsu,
														PdireccionUsu,
														PcodigoPostalUsu,
														PtelefonoUsu,
														PcontraUsu,
														PConfircontraUsu,
														NOW(),
														'1',
														PrfcUsu);
			COMMIT;
			SELECT CONCAT('Se a realizo con éxito tu registro!!!: ', PemailUsu)  AS "Aviso";
			
END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsertUsuariov1` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsertUsuariov1`(`PnombreUsu` VARCHAR(200), `Pape1Usu` VARCHAR(150), `PemailUsu` VARCHAR(245), `PcontraUsu` VARCHAR(16), `PConfircontraUsu` VARCHAR(16), `PcodeEmail` VARCHAR(21), `Pprovincia` INT, `Pcanton` INT, `Pparroquia` INT, `Pbarrio` INT)
BEGIN
	
    
	DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "Mensaje";
	ROLLBACK;
	END;							
					
IF EXISTS(SELECT usuario.emailUsuario FROM usuario WHERE usuario.emailUsuario = PemailUsu) THEN 
		SELECT CONCAT('Usuario ya registrado con ese Email: ', PemailUsu)  AS "Mensaje";		
	ROLLBACK;
ELSE				
			INSERT INTO usuario (idUsuario,
								nombreUsuario,
								apellido1Usuario,
								emailUsuario,
								contraUsuario,
								confirmaContraUsuario,
								fechaRegistroUsuario,
								statusUsuario,
								codeActive,
                                idProvincia,
                                idCanton,
                                idParroquia,
                                idBarrio
                                )VALUES(
								DEFAULT,
								PnombreUsu,
								Pape1Usu,
								PemailUsu,
								PcontraUsu,
								PConfircontraUsu,
								NOW(),
								'1',
								PcodeEmail,
                                Pprovincia,
                                Pcanton,
                                Pparroquia,
                                Pbarrio
								);
			COMMIT;
			SELECT CONCAT('Se a realizo con éxito tu registro!!!: ', PemailUsu)  AS "Mensaje";
			
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsertUsuariov2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsertUsuariov2`(`PnombreUsu` VARCHAR(200), `Pape1Usu` VARCHAR(200),`Pape2Usu` VARCHAR(200),`PemailUsu` VARCHAR (200),`PcontraUsu` VARCHAR(200),`PurlPhoto` VARCHAR(245))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;							
					
IF EXISTS(SELECT usuario.emailUsuario FROM usuario WHERE usuario.emailUsuario = PemailUsu) THEN 
		SELECT CONCAT('Usuario ya registrado con ese Email: ', PemailUsu)  AS "Mensaje";		
	ROLLBACK;
ELSE				
			INSERT INTO usuario (idUsuario,
								nombreUsuario,
								apellido1Usuario,
                                apellido2Usuario,
								emailUsuario,
                                contraUsuario,
                                confirmaContraUsuario,
                                imagenUsuario,
								fechaRegistroUsuario,
								statusUsuario)VALUES(
								DEFAULT,
								PnombreUsu,
								Pape1Usu,
                                Pape2Usu,
								PemailUsu,
                                PcontraUsu,
                                PcontraUsu,
                                PurlPhoto,
								NOW(),
								'1'
								);
			COMMIT;
			SELECT CONCAT('Se realizo con éxito tu registro!!!: ', PemailUsu)  AS "Aviso";
			
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsertv2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsertv2`(`PnombreUsu` VARCHAR(200), `Pape1Usu` VARCHAR(200),`Pape2Usu` VARCHAR(200),`PemailUsu` VARCHAR (200))
BEGIN

DECLARE EXIT HANDLER FOR SQLEXCEPTION
	BEGIN 			
		SELECT "A OCURRIDO UN ERROR" AS "AVISO";
	ROLLBACK;
	END;							
					
IF EXISTS(SELECT usuario.emailUsuario FROM usuario WHERE usuario.emailUsuario = PemailUsu) THEN 
		SELECT CONCAT('Usuario ya registrado con ese Email: ', PemailUsu)  AS "Mensaje";		
	ROLLBACK;
ELSE				
			INSERT INTO usuario (idUsuario,
								nombreUsuario,
								apellido1Usuario,
                                apellido2Usuario,
								emailUsuario,
								fechaRegistroUsuario,
								statusUsuario,
								codeActive)VALUES(
								DEFAULT,
								PnombreUsu,
								Pape1Usu,
                                Pape2Usu,
								PemailUsu,
								NOW(),
								'1'
								);
			COMMIT;
			SELECT CONCAT('Se a realizo con éxito tu registro!!!: ', PemailUsu)  AS "Aviso";
			
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsProductoCarritov2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsProductoCarritov2`(`spIdProducto` INT,`spIdUsuario` INT, `spCantidadProducto` INT)
BEGIN
   IF EXISTS (SELECT*FROM productocarrito WHERE (idProducto=spIdProducto AND statusProductoCarrito ="1" AND idUsuario=spIdUsuario AND vendido="0"))
  THEN
  SELECT "Ya has agregado este producto a tu carrito" AS Mensaje;
ELSE

INSERT INTO productoCarrito (idProducto,idUsuario,cantidadProducto, statusProductoCarrito,vendido)
VALUES(spIdProducto,spIdUsuario,spCantidadProducto,"1","0");

END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsProductoCarritoVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsProductoCarritoVenta`(`PIdProductoCarrito` INT,`PFolioVenta` INT)
BEGIN

INSERT INTO productocarritoventa
(
 idproductocarrito,
 FolioVenta
) VALUES(
 PIdProductoCarrito,
 PFolioVenta
);

UPDATE productocarrito
SET vendido ="1"
WHERE idproductocarrito=PIdProductoCarrito;

SELECT LAST_INSERT_ID() as idProductoCarrito;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsVenta`(`PclaveTran` VARCHAR(250), `PpayDatos` TEXT, `Pemail` VARCHAR(250), `PtotalV` FLOAT)
BEGIN 

	INSERT INTO venta (
		claveTransaccion, 
		paypalDatos, 
		fechaVenta, 
		correo, 
		totalVendido, 	
		statusVenta) 
	VALUES (
	PclaveTran,
	PpayDatos,
	NOW(),
	Pemail,
	PtotalV,
	'1');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsVentav2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsVentav2`(`PclaveTran` VARCHAR(250), `PpayDatos` TEXT, `Pemail` VARCHAR(250), `PtotalV` FLOAT)
BEGIN

INSERT INTO venta (
		claveTransaccion, 
		paypalDatos, 
		fechaVenta, 
		correo, 
		totalVendido, 	
		statusVenta) 
	VALUES (
	PclaveTran,
	PpayDatos,
	NOW(),
	Pemail,
	PtotalV,
	'1');
    
    SELECT LAST_INSERT_ID() as FolioVenta;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psInsVentav3` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psInsVentav3`(`PIdUsuario` INT,`PIdPaginaPago` INT,`PclaveTran` VARCHAR(250), `PpayDatos` TEXT, `Pemail` VARCHAR(250), `PtotalV` FLOAT, `PDireccionEntrega` VARCHAR(250))
BEGIN

INSERT INTO venta (
        idUsuario,
        idpaginaPago,
		claveTransaccion, 
		paypalDatos, 
		fechaVenta, 
		correo, 
		totalVendido, 	
        direccionEntrega,
		statusVenta) 
	VALUES (
    PIdUsuario,
    PIdPaginaPago,
	PclaveTran,
	PpayDatos,
	NOW(),
	Pemail,
	PtotalV,
    PDireccionEntrega,
	'1');
    
    SELECT LAST_INSERT_ID() as FolioVenta;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psLoginUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psLoginUser`(IN `Pcontra` VARCHAR(16), IN `PemailUsu` VARCHAR(245))
BEGIN 
	SELECT usuario.idUsuario AS 'IdUsuario',
    CONCAT(usuario.nombreUsuario," ",usuario.apellido1Usuario) AS 'Nombre' ,
				usuario.emailUsuario AS 'Email',
				usuario.contraUsuario AS 'Contra'
FROM usuario WHERE usuario.contraUsuario = Pcontra AND usuario.emailUsuario = PemailUsu; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psLoginUserv2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psLoginUserv2`(IN `Pcontra` VARCHAR(16), IN `PemailUsu` VARCHAR(245))
BEGIN

   IF EXISTS(SELECT usuario.idUsuario,
    CONCAT(usuario.nombreUsuario," ",usuario.apellido1Usuario),
				usuario.emailUsuario ,
				usuario.contraUsuario 
   FROM usuario WHERE usuario.contraUsuario = Pcontra AND usuario.emailUsuario = PemailUsu AND usuario.statusUsuario="1") THEN
   SELECT usuario.idUsuario AS 'IdUsuario',
    CONCAT(usuario.nombreUsuario," ",usuario.apellido1Usuario) AS 'Nombre' ,
				usuario.emailUsuario AS 'Email',
				usuario.contraUsuario AS 'Contra'
   FROM usuario WHERE usuario.contraUsuario = Pcontra AND usuario.emailUsuario = PemailUsu AND usuario.statusUsuario="1";
   ELSE
      SELECT CONCAT('Debes activar tu cuenta para poder ingresar!!!: ')  AS "Nombre";
   END IF;
   
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMarcaAct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMarcaAct`()
BEGIN	
	SELECT marca.idMarca,marca.desMarca FROM marca WHERE marca.statusMarca = '1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosActProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosActProducto`(`PidPro` INT, `PidUsu` INT)
BEGIN 
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.desProducto,
	producto.precioUnitarioProducto,
	producto.imagenProducto,
	producto.stockRealProducto,
	marca.idMarca,
	marca.desMarca,
	categoria.idCategoria,
	categoria.desCategoria,
	producto.idUsuario
	FROM
	producto
	INNER JOIN marca ON marca.idMarca = producto.idMarca
	INNER JOIN categoria ON categoria.idCategoria = producto.idCategoria
	WHERE  producto.idProducto = PidPro  AND producto.idUsuario = PidUsu ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosActProImg` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosActProImg`(`PidUsuarioActProImg` INT)
BEGIN
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.imagenProducto,
	imgproducto.img1,
	imgproducto.img2,
	imgproducto.img3,
	imgproducto.img4,
	imgproducto.idImgProducto,
	producto.idUsuario,
	producto.statusProducto,
	producto.stockRealProducto
	FROM producto
	INNER JOIN imgproducto ON producto.idProducto = imgproducto.idProducto
	WHERE  producto.idUsuario = PidUsuarioActProImg AND statusProducto= '1' AND producto.stockRealProducto >0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosActProImg4` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosActProImg4`(`PidUsuarioActProImg` INT)
BEGIN
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.imagenProducto,
	imgproducto.img1,
	imgproducto.img2,
	imgproducto.img3,
	imgproducto.img4	
	FROM producto
	INNER JOIN imgproducto ON producto.idProducto = imgproducto.idProducto
	WHERE  producto.idUsuario = PidUsuarioActProImg AND statusProducto= '1' AND producto.stockRealProducto >0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosActuImgsc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosActuImgsc`(`PidProImg` INT)
BEGIN

		SELECT
		imgproducto.idProducto,
		imgproducto.img1,
		imgproducto.img2,
		imgproducto.img3,
		imgproducto.img4,
		producto.nombreProducto,		
		producto.imagenProducto
		FROM
		producto
		INNER JOIN imgproducto ON imgproducto.idProducto = producto.idProducto
		WHERE  producto.idProducto = PidProImg;	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosCarritoByIdUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosCarritoByIdUser`(`pIdUser` INT)
BEGIN
  SELECT idCarrito FROM storecode.carrito
  WHERE carrito.idUsuario=pIdUser;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosCliidU` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosCliidU`(`PidMosUsuaConpay` INT)
BEGIN
	SELECT usuario.clienidpaypal  FROM usuario WHERE usuario.idUsuario= PidMosUsuaConpay;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosComenCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosComenCliente`(`PidProducto` INT)
BEGIN
SELECT
	CONCAT(usuario.nombreUsuario,' ',
			usuario.apellido1Usuario) AS nombre,
	detaproductocomen.comentariocliente AS comentario,
    detaproductocomen.estrellas,
	usuario.imagenUsuario,
	detaproductocomen.fecha
	FROM
	detaproductocomen
	INNER JOIN usuario ON usuario.idUsuario = detaproductocomen.idUsuario WHERE  (detaproductocomen.idProducto = PidProducto && detaproductocomen.comentariocliente IS NOT NULL) ORDER BY detaproductocomen.fecha DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosComenProdu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosComenProdu`(`PidProducto` INT)
BEGIN
	SELECT
	CONCAT(usuario.nombreUsuario,' ',
			usuario.apellido1Usuario) AS nombre,
	detaproductocomen.comentario,
    detaproductocomen.estrellas,
	usuario.imagenUsuario,
	detaproductocomen.fecha
	FROM
	detaproductocomen
	INNER JOIN usuario ON usuario.idUsuario = detaproductocomen.idUsuario WHERE  (detaproductocomen.idProducto = PidProducto && detaproductocomen.comentario IS NOT NULL) ORDER BY detaproductocomen.fecha DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosComentarioImagen` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosComentarioImagen`(`PidProducto` INT)
BEGIN
	SELECT	
	usuario.imagenUsuario	
	FROM
	detaproductocomen
	INNER JOIN usuario ON usuario.idUsuario = detaproductocomen.idUsuario WHERE  detaproductocomen.idProducto = PidProducto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosComentarios` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosComentarios`(`PidProducto` INT)
BEGIN
	SELECT
	usuario.emailUsuario AS usuario	
	FROM
	detaproductocomen
	INNER JOIN usuario ON usuario.idUsuario = detaproductocomen.idUsuario WHERE  detaproductocomen.idProducto = PidProducto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosIDpCPAl` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosIDpCPAl`(`idProMPaL` INT)
BEGIN 
	SELECT
	usuario.clienidpaypal
	FROM
	usuario
	INNER JOIN producto ON usuario.idUsuario = producto.idUsuario
	WHERE producto.idProducto = idProMPaL;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosIdUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosIdUser`(`Pemail` VARCHAR(200))
BEGIN
  SELECT idUsuario FROM usuario WHERE usuario.emailUsuario=Pemail;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosItemsByFolioVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosItemsByFolioVenta`(`pFolioVenta` INT)
BEGIN

SELECT producto.nombreProducto,producto.desProducto, producto.imagenProducto, producto.precioUnitarioProducto,productocarrito.cantidadProducto, venta.FolioVenta, venta.claveTransaccion, venta.totalVendido 
FROM venta 

INNER JOIN productocarritoventa ON venta.FolioVenta= productocarritoventa.FolioVenta
INNER JOIN productocarrito ON productocarritoventa.idproductocarrito = productocarrito.idproductocarrito 
INNER JOIN producto ON productocarrito.idproducto = producto.idProducto AND productocarrito.vendido = "1" AND productocarrito.cantidadProducto >0

WHERE venta.FolioVenta= pFolioVenta;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosNomCliente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosNomCliente`(`PidVenta` INT)
SELECT venta.correo AS 'Cliente' FROM Venta WHERE venta.FolioVenta = PidVenta ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosProdaUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosProdaUsuario`(`PidUsuario` INT)
BEGIN 
			SELECT
			producto.idProducto,
			producto.nombreProducto ,
			producto.desProducto ,
			producto.precioUnitarioProducto ,
			producto.imagenProducto ,
			IF(producto.stockRealProducto = '0', 'Agotado',producto.stockRealProducto) AS 'stockRealProducto',						
			IF(producto.statusProducto = '1', 'Activo','Inactivo') AS 'statusProducto',
			marca.desMarca AS 'idMarca',
			categoria.desCategoria AS 'idCategoria',
            producto.idUsuario
			FROM producto
			INNER JOIN categoria ON categoria.idCategoria = producto.idCategoria 
			INNER JOIN marca ON marca.idMarca = producto.idMarca
			WHERE producto.idUsuario = PidUsuario AND producto.statusProducto = 1 AND producto.stockRealProducto > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosProdImgAgregar` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosProdImgAgregar`(`PidUsuarioAI` INT)
BEGIN 
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.imagenProducto,
	producto.idUsuario
	FROM
	producto
	INNER JOIN imgproducto ON imgproducto.idProducto = producto.idProducto
	WHERE producto.idUsuario = PidUsuarioAI AND producto.statusProducto = '1' AND imgproducto.idImgProducto = '' AND producto.stockRealProducto >0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosProdInCard` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosProdInCard`(`spIdUsuario` INT)
BEGIN
  SELECT productocarrito.idproductocarrito, producto.idProducto, producto.nombreProducto,producto.desProducto,producto.precioUnitarioProducto,producto.imagenProducto,producto.idMarca,producto.idCategoria,producto.idUsuario, producto.stockRealProducto, productocarrito.cantidadProducto
  FROM productocarrito
  INNER JOIN producto ON productocarrito.idProducto= producto.idProducto
  WHERE productocarrito.idUsuario = spIdUsuario AND productocarrito.statusProductoCarrito="1" AND productocarrito.vendido= "0"
  ORDER BY producto.idUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosProdInCarrito` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosProdInCarrito`(`spIdUsuario` INT)
BEGIN

SELECT producto.idProducto, producto.nombreProducto,producto.desProducto,producto.precioUnitarioProducto,producto.imagenProducto,producto.idMarca,producto.idCategoria,producto.idUsuario, productocarrito.cantidadProducto
FROM carrito
INNER JOIN productocarrito ON carrito.idCarrito=productocarrito.idCarrito 
INNER JOIN producto ON productocarrito.idProducto= producto.idProducto
WHERE carrito.idUsuario = spIdUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosProdInCarritoGroupByVendedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosProdInCarritoGroupByVendedor`(`spIdUsuario` INT)
BEGIN

SELECT productocarrito.idproductocarrito, producto.idProducto, productocarrito.idCarrito, producto.nombreProducto,producto.desProducto,producto.precioUnitarioProducto,producto.imagenProducto,producto.idMarca,producto.idCategoria,producto.idUsuario, producto.stockRealProducto, productocarrito.cantidadProducto
FROM carrito
INNER JOIN productocarrito ON carrito.idCarrito=productocarrito.idCarrito 
INNER JOIN producto ON productocarrito.idProducto= producto.idProducto
WHERE carrito.idUsuario = spIdUsuario AND productocarrito.statusProductoCarrito="1"
ORDER BY producto.idUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosProdToUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosProdToUser`(`PidUsuario` INT)
BEGIN
 SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.desProducto,
	producto.precioUnitarioProducto,
	producto.imagenProducto,
    producto.fechaAlojadoProducto,
	producto.stockRealProducto,
    producto.statusProducto,
    producto.idMarca,
    producto.idCategoria,
	producto.idUsuario
	FROM
	producto 
	WHERE producto.statusProducto = '1' AND producto.stockRealProducto >= 1 AND producto.idUsuario!= PidUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosProducto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosProducto`()
BEGIN 
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.desProducto,
	producto.precioUnitarioProducto,
	producto.imagenProducto,
	producto.stockRealProducto,
	producto.idUsuario
	FROM
	producto 
	WHERE producto.statusProducto = '1' AND producto.stockRealProducto >= 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosProductoComple` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosProductoComple`(`PidPro` INT)
BEGIN 
		SELECT
		producto.idProducto,
		producto.nombreProducto,
		producto.desProducto,
		producto.precioUnitarioProducto,
		producto.imagenProducto,
		producto.fechaAlojadoProducto,
		producto.stockRealProducto,
		producto.statusProducto,
		marca.desMarca,
		categoria.desCategoria,
		CONCAT(usuario.nombreUsuario,' ', 
						usuario.apellido1Usuario) AS Vendedor,
						usuario.emailUsuario as 'Email Vendedor'
		FROM 
		producto
		INNER JOIN categoria ON categoria.idCategoria = producto.idCategoria
		INNER JOIN marca ON marca.idMarca = producto.idMarca
		INNER JOIN usuario ON usuario.idUsuario = producto.idUsuario
		WHERE producto.idProducto=PidPro;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosProductoCompleImg` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosProductoCompleImg`(`PidProimg` INT)
BEGIN 
		SELECT * FROM imgproducto WHERE idProducto = PidProimg;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosProductoConUsu` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosProductoConUsu`(`PidUsuMosNo` INT)
BEGIN 
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.desProducto,
	producto.precioUnitarioProducto,
	producto.imagenProducto,
	producto.stockRealProducto,
	producto.idUsuario
	FROM
	producto 
	WHERE producto.statusProducto = '1' AND producto.stockRealProducto >= 1 AND producto.idUsuario <> PidUsuMosNo; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosProductoConUsuFCPSU` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosProductoConUsuFCPSU`(`PidUM` INT, `PidMP` INT)
BEGIN 
	SELECT
	producto.idProducto,
	producto.nombreProducto,
	producto.desProducto,
	producto.precioUnitarioProducto,
	producto.imagenProducto,
	producto.stockRealProducto,
	producto.idUsuario
	FROM
	producto 
	WHERE producto.statusProducto = '1' 
	AND producto.stockRealProducto >= 1 	
	AND producto.idUsuario = PidUM
	AND producto.idProducto <> PidMP; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosProIns` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosProIns`(`PidPro` INT, `PidUsu` INT)
BEGIN 
		SELECT
		producto.idProducto,
		producto.nombreProducto,
		producto.desProducto,
		producto.idUsuario
		FROM
		producto
		WHERE producto.idProducto = PidPro AND producto.idUsuario = PidUsu;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosTicket` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosTicket`(`PidVenta` INT)
SELECT
venta.correo AS 'Cliente',
producto.nombreProducto AS 'Producto',
carrito.precioUnitario AS 'Precio Unitario',
carrito.cantidadProducto AS 'Cantidad de Productos',
venta.totalVendido AS 'Total'
FROM carrito
INNER JOIN venta ON venta.FolioVenta = carrito.FolioVenta
INNER JOIN producto ON producto.idProducto = carrito.idProducto
WHERE venta.FolioVenta = PidVenta ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosTicketFechav` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosTicketFechav`(`PidVF` INT)
BEGIN 
SELECT fechaVenta FROM venta WHERE FolioVenta = PidVF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosTicketProductos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosTicketProductos`(`PidVenta` INT)
SELECT
	producto.nombreProducto AS 'Producto',
	carrito.precioUnitario AS 'Precio Unitario',
	carrito.cantidadProducto AS 'Cantidad de Productos'
	FROM carrito
	INNER JOIN producto ON producto.idProducto = carrito.idProducto
	WHERE carrito.FolioVenta = PidVenta ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosTicketUsuario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosTicketUsuario`(`PidUsuNom` INT)
BEGIN 
			SELECT CONCAT(nombreUsuario," ",
apellido1Usuario) AS nombre
FROM usuario WHERE usuario.idUsuario = PidUsuNom;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosTotalVenta` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosTotalVenta`(`PidVenta` INT)
SELECT venta.totalVendido AS 'Total' FROM Venta WHERE venta.FolioVenta = PidVenta ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosVendedor` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosVendedor`(`pIdUsuario` INT)
BEGIN
SELECT idUsuario, nombreUsuario, apellido1Usuario,
emailUsuario,contraUsuario,confirmaContraUsuario,apellido2Usuario, imagenUsuario,
telefonoUsuario, statusUsuario,rfeUsuario,fechaNacimiento,codeActive, clienidpaypal,
pk_mercadopago, accessTokenMpago, tokenFCM FROM usuario
WHERE usuario.idUsuario= pIdUsuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosVentaByUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosVentaByUser`(`pIdUser` INT)
BEGIN

SELECT producto.nombreProducto,producto.desProducto, producto.imagenProducto,productocarrito.cantidadProducto, venta.FolioVenta, venta.claveTransaccion, venta.totalVendido 
FROM productocarrito 


INNER JOIN productocarritoventa ON productocarrito.idproductocarrito= productocarritoventa.idproductocarrito
INNER JOIN venta ON productocarritoventa.FolioVenta = venta.FolioVenta

INNER JOIN producto ON productocarrito.idproducto = producto.idProducto AND productocarrito.vendido = "1" AND productocarrito.cantidadProducto >0



WHERE productocarrito.idUsuario= pIdUser;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psMosVentaByUserv2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psMosVentaByUserv2`(`pIdUser` INT)
BEGIN

SELECT venta.FolioVenta,venta.idUsuario,venta.idpaginaPago, venta.claveTransaccion,venta.paypalDatos, venta.fechaVenta, venta.correo, venta.totalVendido, venta.direccionEntrega
FROM venta


WHERE idUsuario= pIdUser;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psSelectClientes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psSelectClientes`()
BEGIN
	SELECT
	usuario.idUsuario AS "No.",
	CONCAT(usuario.nombreUsuario," ",
					usuario.apellido1Usuario) AS 'Nombre',
	usuario.emailUsuario AS 'Correo',
	usuario.fechaRegistroUsuario AS 'Fecha de Registro',
	IF(usuario.statusUsuario = '1', 'Activo','Inactivo') AS 'Estado del Cliente'
	FROM usuario;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psSelectConCiplU` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psSelectConCiplU`(`PidUsuaConpay` INT)
BEGIN
	SELECT COUNT(usuario.clienidpaypal)AS contador FROM usuario WHERE usuario.idUsuario= PidUsuaConpay;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psUpdateDaFa` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psUpdateDaFa`(`PidUsuario` INT)
BEGIN 
SELECT usuario.idUsuario,
usuario.apellido2Usuario,
usuario.telefonoUsuario,
usuario.rfeUsuario,
usuario.fechaNacimiento 
FROM usuario WHERE usuario.idUsuario = PidUsuario AND usuario.statusUsuario ='1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psUpdateImagenP` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psUpdateImagenP`(`PidUser` INT, `PimagenPro` VARCHAR(245))
BEGIN 
UPDATE usuario SET usuario.imagenusuario = PimagenPro
WHERE usuario.idUsuario= PidUser AND usuario.statusUsuario = '1';
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psUpdateStatusUser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psUpdateStatusUser`(`pIdUser` INT)
BEGIN
    UPDATE usuario SET
    usuario.statusUsuario = 0
    WHERE idUsuario = pIdUser;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psUpdateStockProductSelled` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psUpdateStockProductSelled`(`pIdProductoCarrito` INT,`pidProducto` INT,`pCantidadSelled` FLOAT)
BEGIN
   UPDATE productocarrito SET statusProductoCarrito="0" WHERE productocarrito.idproductocarrito=pIdProductoCarrito;

   UPDATE producto SET stockRealProducto = stockRealProducto - PcantidadSelled WHERE producto.idProducto=PidProducto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psUpdateUsuarioT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psUpdateUsuarioT`(`PnombreUAct` VARCHAR(200), `Papellido1UAct` VARCHAR(150), `Papellido2UAct` VARCHAR(150), `PcontraUAct` VARCHAR(16), `PconfirmcontraUAct` VARCHAR(16), `PtelUAct` VARCHAR(15), `PrfcUAct` VARCHAR(13), `PfechaUAct` DATE, `PidUAct` INT)
BEGIN
	UPDATE usuario SET 
	usuario.nombreUsuario = PnombreUAct,
	usuario.apellido1Usuario = Papellido1UAct,
	usuario.apellido2Usuario = Papellido2UAct,
	usuario.contraUsuario = PcontraUAct,
	usuario.confirmaContraUsuario = PconfirmcontraUAct,
	usuario.telefonoUsuario = PtelUAct,
	usuario.rfeUsuario = PrfcUAct,
	usuario.fechaNacimiento = PfechaUAct
	WHERE usuario.idUsuario = PidUAct;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `psValidacionActivoE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb3 */ ;
/*!50003 SET character_set_results = utf8mb3 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `psValidacionActivoE`(`Pcorreo` VARCHAR(245), `Pstatus` VARCHAR(1))
BEGIN 
SELECT * FROM usuario WHERE usuario.emailUsuario = Pcorreo AND usuario.statusUsuario = Pstatus;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-10 13:03:08
