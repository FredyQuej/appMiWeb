-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `area_salud`
--

DROP TABLE IF EXISTS `area_salud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area_salud` (
  `idarea_salud` int NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idarea_salud`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area_salud`
--

LOCK TABLES `area_salud` WRITE;
/*!40000 ALTER TABLE `area_salud` DISABLE KEYS */;
INSERT INTO `area_salud` VALUES (1,'Guatemala'),(2,'El Progreso'),(3,'Sacatepéquez'),(4,'Chimaltenango'),(5,'Escuintla'),(6,'Santa Rosa'),(7,'Sololá'),(8,'Totonicapán'),(9,'Quetzaltenango'),(10,'Suchitepéquez'),(11,'Retalhuleu'),(12,'San Marcos'),(13,'Huehuetenango'),(14,'Quiché'),(15,'Baja Verapaz'),(16,'Alta Verapaz'),(17,'Petén'),(18,'Izabal'),(19,'Zacapa'),(20,'Chiquimula'),(21,'Jalapa'),(22,'Jutiapa');
/*!40000 ALTER TABLE `area_salud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distrito_salud`
--

DROP TABLE IF EXISTS `distrito_salud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distrito_salud` (
  `iddistrito_salud` int NOT NULL,
  `distrito_saludcol` varchar(45) DEFAULT NULL,
  `area_salud_idarea_salud` int NOT NULL,
  PRIMARY KEY (`iddistrito_salud`),
  KEY `fk_distrito_salud_area_salud_idx` (`area_salud_idarea_salud`),
  CONSTRAINT `fk_distrito_salud_area_salud` FOREIGN KEY (`area_salud_idarea_salud`) REFERENCES `area_salud` (`idarea_salud`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distrito_salud`
--

LOCK TABLES `distrito_salud` WRITE;
/*!40000 ALTER TABLE `distrito_salud` DISABLE KEYS */;
INSERT INTO `distrito_salud` VALUES (1,'Guatemala',1),(2,'Santa Catarina Pinula',1),(3,'San José Pinula',1),(4,'San José del Golfo',1),(5,'Palencia',1),(6,'Chinautla',1),(7,'San Pedro Ayampuc',1),(8,'Mixco',1),(9,'San Pedro Sacatepéquez',1),(10,'San Juan Sacatepéquez',1),(11,'San Raymundo',1),(12,'Chuarrancho',1),(13,'Fraijanes',1),(14,'Amatitlán',1),(15,'Villa Nueva',1),(16,'Villa Canales',1),(17,'Petapa',1),(18,'Guastatoya',2),(19,'Morazán',2),(20,'San Agustín Acasaguastlán',2),(21,'San Cristóbal Acasaguastlán',2),(22,'El Jícaro',2),(23,'Sansare',2),(24,'Sanarate',2),(25,'San Antonio la Paz',2),(26,'Antigua Guatemala',3),(27,'Jocotenango',3),(28,'Pastores',3),(29,'Sumpango',3),(30,'Santo Domingo Xenacoj',3),(31,'Santiago Sacatepéquez',3),(32,'San Bartolomé Milpas Altas',3),(33,'San Lucas Sacatepéquez',3),(34,'Santa Lucía Milpas Altas',3),(35,'Magdalena Milpas Altas',3),(36,'Santa María de Jesús',3),(37,'Ciudad Vieja',3),(38,'San Miguel Dueñas',3),(39,'Alotenango',3),(40,'San Antonio Aguas Calientes',3),(41,'Santa Catarina Barahona',3),(42,'Chimaltenango',4),(43,'San José Poaquil',4),(44,'San Martín Jilotepeque',4),(45,'Comalapa',4),(46,'Santa Apolonia',4),(47,'Tecpán Guatemala',4),(48,'Patzún',4),(49,'Pochuta',4),(50,'Patzicía',4),(51,'Santa Cruz Balanyá',4),(52,'Acatenango',4),(53,'Yepocapa',4),(54,'San Andrés Itzapa',4),(55,'Parramos',4),(56,'Zaragoza',4),(57,'El Tejar',4),(58,'Escuintla',5),(59,'Santa Lucía Cotzumalguapa',5),(60,'La Democracia',5),(61,'Siquinalá',5),(62,'Masagua',5),(63,'Tiquisate',5),(64,'La Gomera',5),(65,'Guanagazapa',5),(66,'San José',5),(67,'Iztapa',5),(68,'Palín',5),(69,'San Vicente Pacaya',5),(70,'Nueva Concepción',5),(71,'Sipacate',5),(72,'Cuilapa',6),(73,'Barberena',6),(74,'Santa Rosa de Lima',6),(75,'Casillas',6),(76,'San Rafael las Flores',6),(77,'Oratorio',6),(78,'San Juan Tecuaco',6),(79,'Chiquimulilla',6),(80,'Taxisco',6),(81,'Santa María Ixhuatán',6),(82,'Guazacapán',6),(83,'Santa Cruz Naranjo',6),(84,'Pueblo Nuevo Viñas',6),(85,'Nueva Santa Rosa',6),(86,'Sololá',7),(87,'San José Chacayá',7),(88,'Santa María Visitación',7),(89,'Santa Lucía Utatlán',7),(90,'Nahualá',7),(91,'Santa Catarina Ixtahuacán',7),(92,'Santa Clara la Laguna',7),(93,'Concepción',7),(94,'San Andrés Semetabaj',7),(95,'Panajachel',7),(96,'Santa Catarina Palopó',7),(97,'San Antonio Palopó',7),(98,'San Lucas Tolimán',7),(99,'Santa Cruz la Laguna',7),(100,'San Pablo la Laguna',7),(101,'San Marcos la Laguna',7),(102,'San Juan la Laguna',7),(103,'San Pedro la Laguna',7),(104,'Santiago Atitlán',7),(105,'Totonicapán',8),(106,'San Cristóbal Totonicapán',8),(107,'San Francisco el Alto',8),(108,'San Andrés Xecul',8),(109,'Momostenango',8),(110,'Santa María Chiquimula',8),(111,'Santa Lucía la Reforma',8),(112,'San Bartolo',8),(113,'Quetzaltenango',9),(114,'Salcajá',9),(115,'Olintepeque',9),(116,'San Carlos Sija',9),(117,'Sibilia',9),(118,'Cabricán',9),(119,'Cajolá',9),(120,'San Miguel Siguilá',9),(121,'San Juan Ostuncalco',9),(122,'San Mateo',9),(123,'Concepción Chiquirichapa',9),(124,'San Martín Sacatepéquez',9),(125,'Almolonga',9),(126,'Cantel',9),(127,'Huitán',9),(128,'Zunil',9),(129,'Colomba',9),(130,'San Francisco la Unión',9),(131,'El Palmar',9),(132,'Coatepeque',9),(133,'Génova',9),(134,'Flores Costa Cuca',9),(135,'La Esperanza',9),(136,'Palestina de los Altos',9),(137,'Mazatenango',10),(138,'Cuyotenango',10),(139,'San Francisco Zapotitlán',10),(140,'San Bernardino',10),(141,'San José el Idolo',10),(142,'Santo Domingo Suchitepéquez',10),(143,'San Lorenzo',10),(144,'Samayac',10),(145,'San Pablo Jocopilas',10),(146,'San Antonio Suchitepéquez',10),(147,'San Miguel Panán',10),(148,'San Gabriel',10),(149,'Chicacao',10),(150,'Patulul',10),(151,'Santa Bárbara',10),(152,'San Juan Bautista',10),(153,'Santo Tomás la Unión',10),(154,'Zunilito',10),(155,'Pueblo Nuevo',10),(156,'Río Bravo',10),(157,'San José La Máquina',10),(158,'Retalhuleu',11),(159,'San Sebastián',11),(160,'Santa Cruz Muluá',11),(161,'San Martín Zapotitlán',11),(162,'San Felipe',11),(163,'San Andrés Villa Seca',11),(164,'Champerico',11),(165,'Nuevo San Carlos',11),(166,'El Asintal',11),(167,'San Marcos',12),(168,'San Pedro Sacatepéquez',12),(169,'San Antonio Sacatepéquez',12),(170,'Comitancillo',12),(171,'San Miguel Ixtahuacán',12),(172,'Concepción Tutuapa',12),(173,'Tacaná',12),(174,'Sibinal',12),(175,'Tajumulco',12),(176,'Tejutla',12),(177,'San Rafael Pié de la Cuesta',12),(178,'Nuevo Progreso',12),(179,'El Tumbador',12),(180,'El Rodeo',12),(181,'Malacatán',12),(182,'Catarina',12),(183,'Ayutla',12),(184,'Ocós',12),(185,'San Pablo',12),(186,'El Quetzal',12),(187,'La Reforma',12),(188,'Pajapita',12),(189,'Ixchiguán',12),(190,'San José Ojetenán',12),(191,'San Cristóbal Cucho',12),(192,'Sipacapa',12),(193,'Esquipulas Palo Gordo',12),(194,'Río Blanco',12),(195,'San Lorenzo',12),(196,'La Blanca',12),(197,'Huehuetenango',13),(198,'Chiantla',13),(199,'Malacatancito',13),(200,'Cuilco',13),(201,'Nentón',13),(202,'San Pedro Necta',13),(203,'Jacaltenango',13),(204,'Soloma',13),(205,'Ixtahuacán',13),(206,'Santa Bárbara',13),(207,'La Libertad',13),(208,'La Democracia',13),(209,'San Miguel Acatán',13),(210,'San Rafael la Independencia',13),(211,'Todos Santos Cuchumatán',13),(212,'San Juan Atitán',13),(213,'Santa Eulalia',13),(214,'San Mateo Ixtatán',13),(215,'Colotenango',13),(216,'San Sebastián Huehuetenango',13),(217,'Tectitán',13),(218,'Concepción Huista',13),(219,'San Juan Ixcoy',13),(220,'San Antonio Huista',13),(221,'San Sebastián Coatán',13),(222,'Barillas',13),(223,'Aguacatán',13),(224,'San Rafael Petzal',13),(225,'San Gaspar Ixchil',13),(226,'Santiago Chimaltenango',13),(227,'Santa Ana Huista',13),(228,'Unión Cantinil',13),(229,'Petatán',13),(230,'Santa Cruz del Quiché',14),(231,'Chiché',14),(232,'Chinique',14),(233,'Zacualpa',14),(234,'Chajul',14),(235,'Chichicastenango',14),(236,'Patzité',14),(237,'San Antonio Ilotenango',14),(238,'San Pedro Jocopilas',14),(239,'Cunén',14),(240,'San Juan Cotzal',14),(241,'Joyabaj',14),(242,'Nebaj',14),(243,'San Andrés Sajcabajá',14),(244,'Uspantán',14),(245,'Sacapulas',14),(246,'San Bartolomé Jocotenango',14),(247,'Canillá',14),(248,'Chicamán',14),(249,'Ixcán',14),(250,'Pachalum',14),(251,'Salamá',15),(252,'San Miguel Chicaj',15),(253,'Rabinal',15),(254,'Cubulco',15),(255,'Granados',15),(256,'El Chol',15),(257,'San Jerónimo',15),(258,'Purulhá',15),(259,'Cobán',16),(260,'Santa Cruz Verapaz',16),(261,'San Cristóbal Verapaz',16),(262,'Tactic',16),(263,'Tamahú',16),(264,'Tucurú',16),(265,'Panzós',16),(266,'Senahú',16),(267,'San Pedro Carchá',16),(268,'San Juan Chamelco',16),(269,'Lanquín',16),(270,'Cahabón',16),(271,'Chisec',16),(272,'Chahal',16),(273,'Fray Bartolomé de las Casas',16),(274,'Santa Catalina la Tinta',16),(275,'Raxruhá',16),(276,'Flores',17),(277,'San José',17),(278,'San Benito',17),(279,'San Andrés',17),(280,'La Libertad',17),(281,'San Francisco',17),(282,'Santa Ana',17),(283,'Dolores',17),(284,'San Luis',17),(285,'Sayaxché',17),(286,'Melchor de Mencos',17),(287,'Poptún',17),(288,'Las Cruces',17),(289,'El Chal',17),(290,'Puerto Barrios',18),(291,'Livingston',18),(292,'El Estor',18),(293,'Morales',18),(294,'Los Amates',18),(295,'Zacapa',19),(296,'Estanzuela',19),(297,'Río Hondo',19),(298,'Gualán',19),(299,'Teculután',19),(300,'Usumatlán',19),(301,'Cabañas',19),(302,'San Diego',19),(303,'La Unión',19),(304,'Huité',19),(305,'San Jorge',19),(306,'Chiquimula',20),(307,'San José La Arada',20),(308,'San Juan Ermita',20),(309,'Jocotán',20),(310,'Camotán',20),(311,'Olopa',20),(312,'Esquipulas',20),(313,'Concepción Las Minas',20),(314,'Quetzaltepeque',20),(315,'San Jacinto',20),(316,'Ipala',20),(317,'Jalapa',21),(318,'San Pedro Pinula',21),(319,'San Luis Jilotepeque',21),(320,'San Manuel Chaparrón',21),(321,'San Carlos Alzatate',21),(322,'Monjas',21),(323,'Mataquescuintla',21),(324,'Jutiapa',22),(325,'El Progreso',22),(326,'Santa Catarina Mita',22),(327,'Agua Blanca',22),(328,'Asunción Mita',22),(329,'Yupiltepeque',22),(330,'Atescatempa',22),(331,'Jerez',22),(332,'El Adelanto',22),(333,'Zapotitlán',22),(334,'Comapa',22),(335,'Jalpatagua',22),(336,'Conguaco',22),(337,'Moyuta',22),(338,'Pasaco',22),(339,'San José Acatempa',22),(340,'Quesada',22);
/*!40000 ALTER TABLE `distrito_salud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etnia`
--

DROP TABLE IF EXISTS `etnia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etnia` (
  `idetnia` int NOT NULL,
  `etniacol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idetnia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etnia`
--

LOCK TABLES `etnia` WRITE;
/*!40000 ALTER TABLE `etnia` DISABLE KEYS */;
INSERT INTO `etnia` VALUES (1,'indigena'),(2,'no indigena'),(3,'no especifica');
/*!40000 ALTER TABLE `etnia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `evento`
--

DROP TABLE IF EXISTS `evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evento` (
  `idevento` int NOT NULL,
  `eventocol` varchar(1000) DEFAULT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `objetivo` varchar(2000) DEFAULT NULL,
  `tipo_evento_idtipo_evento` int NOT NULL,
  `modalidad_idmodalidad` int NOT NULL,
  PRIMARY KEY (`idevento`),
  KEY `fk_evento_tipo_evento1_idx` (`tipo_evento_idtipo_evento`),
  KEY `fk_evento_modalidad1_idx` (`modalidad_idmodalidad`),
  CONSTRAINT `fk_evento_modalidad1` FOREIGN KEY (`modalidad_idmodalidad`) REFERENCES `modalidad` (`idmodalidad`),
  CONSTRAINT `fk_evento_tipo_evento1` FOREIGN KEY (`tipo_evento_idtipo_evento`) REFERENCES `tipo_evento` (`idtipo_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evento`
--

LOCK TABLES `evento` WRITE;
/*!40000 ALTER TABLE `evento` DISABLE KEYS */;
INSERT INTO `evento` VALUES (5,'DISAN','2018-01-12','2018-05-04','“Mejoramiento de la salud Materna, neonatal e infantil 2016-2020, a través de eSalud Comunitaria” En los departamentos de Alta Verapaz, Huehuetenango, Ixcàn, Quiche, Ixil, Solola.',5,2),(12,'PLATAFORMAS EDUCATIVAS','2019-08-13','2019-11-29','Promover en los y las participantes el uso de las TIC en los procesos de capacitacin, para que se constituyan en administradores de cursos,',5,2);
/*!40000 ALTER TABLE `evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalidad`
--

DROP TABLE IF EXISTS `modalidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modalidad` (
  `idmodalidad` int NOT NULL,
  `modalidadcol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmodalidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalidad`
--

LOCK TABLES `modalidad` WRITE;
/*!40000 ALTER TABLE `modalidad` DISABLE KEYS */;
INSERT INTO `modalidad` VALUES (1,'Crow Learnig'),(2,'b-learning'),(3,'Presencial');
/*!40000 ALTER TABLE `modalidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesion`
--

DROP TABLE IF EXISTS `profesion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesion` (
  `idprofesion` int NOT NULL,
  `profesioncol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idprofesion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesion`
--

LOCK TABLES `profesion` WRITE;
/*!40000 ALTER TABLE `profesion` DISABLE KEYS */;
INSERT INTO `profesion` VALUES (1,'	Médico y Cirujano'),(2,'	Licenciatura en Enfermería'),(3,'Licenciatura en Nutrición'),(4,'Licenciatura en psicología'),(5,'Licenciatura en Administración de empresas'),(6,'Licenciatura en Pedagogía'),(7,'Licenciatura en Trabajo Social'),(8,'Técnico en Enfermería'),(9,'Ingeniería en Sistemas'),(10,'Ingeniería Agroforestal'),(11,'Químico biólogo'),(12,'Abogado y Notario'),(13,'Odontología'),(14,'Auxiliares de enfermería'),(15,'Inspector de Saneamiento Ambiental'),(16,'Otras');
/*!40000 ALTER TABLE `profesion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registro`
--

DROP TABLE IF EXISTS `registro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `registro` (
  `idregistro` int NOT NULL,
  `registrocol` varchar(45) DEFAULT NULL,
  `usuario_idusuario` int NOT NULL,
  `evento_idevento` int NOT NULL,
  PRIMARY KEY (`idregistro`),
  KEY `fk_registro_usuario1_idx` (`usuario_idusuario`),
  KEY `fk_registro_evento1_idx` (`evento_idevento`),
  CONSTRAINT `fk_registro_evento1` FOREIGN KEY (`evento_idevento`) REFERENCES `evento` (`idevento`),
  CONSTRAINT `fk_registro_usuario1` FOREIGN KEY (`usuario_idusuario`) REFERENCES `usuario` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registro`
--

LOCK TABLES `registro` WRITE;
/*!40000 ALTER TABLE `registro` DISABLE KEYS */;
/*!40000 ALTER TABLE `registro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `id_role` int DEFAULT NULL,
  `nombrerol` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexo`
--

DROP TABLE IF EXISTS `sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sexo` (
  `idsexo` int NOT NULL,
  `sexocol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idsexo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexo`
--

LOCK TABLES `sexo` WRITE;
/*!40000 ALTER TABLE `sexo` DISABLE KEYS */;
INSERT INTO `sexo` VALUES (1,'Masculino'),(2,'Femenino'),(3,'No especifica');
/*!40000 ALTER TABLE `sexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_evento`
--

DROP TABLE IF EXISTS `tipo_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_evento` (
  `idtipo_evento` int NOT NULL,
  `tipo_eventocol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idtipo_evento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_evento`
--

LOCK TABLES `tipo_evento` WRITE;
/*!40000 ALTER TABLE `tipo_evento` DISABLE KEYS */;
INSERT INTO `tipo_evento` VALUES (1,'Taller'),(2,'Seminario'),(3,'Foro'),(4,'Conferencia'),(5,'Diplomado'),(6,'Curso Corto');
/*!40000 ALTER TABLE `tipo_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `idusuario` int NOT NULL,
  `cui` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido1` varchar(45) DEFAULT NULL,
  `apellido2` varchar(45) DEFAULT NULL,
  `distrito_salud_iddistrito_salud` int NOT NULL,
  `profesion_idprofesion` int NOT NULL,
  `sexo_idsexo` int NOT NULL,
  `etnia_idetnia` int NOT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `fk_usuario_distrito_salud1_idx` (`distrito_salud_iddistrito_salud`),
  KEY `fk_usuario_profesion1_idx` (`profesion_idprofesion`),
  KEY `fk_usuario_sexo1_idx` (`sexo_idsexo`),
  KEY `fk_usuario_etnia1_idx` (`etnia_idetnia`),
  CONSTRAINT `fk_usuario_distrito_salud1` FOREIGN KEY (`distrito_salud_iddistrito_salud`) REFERENCES `distrito_salud` (`iddistrito_salud`),
  CONSTRAINT `fk_usuario_etnia1` FOREIGN KEY (`etnia_idetnia`) REFERENCES `etnia` (`idetnia`),
  CONSTRAINT `fk_usuario_profesion1` FOREIGN KEY (`profesion_idprofesion`) REFERENCES `profesion` (`idprofesion`),
  CONSTRAINT `fk_usuario_sexo1` FOREIGN KEY (`sexo_idsexo`) REFERENCES `sexo` (`idsexo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-07 21:02:05
