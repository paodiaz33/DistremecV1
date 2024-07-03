CREATE TABLE `usuario` (
  `codusuario` int NOT NULL,
  `nombre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `apellido` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cedula` int DEFAULT NULL,
  `telefono` int DEFAULT NULL,
  `ciudadid` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `cargo` int DEFAULT NULL,
  `contraseña` int DEFAULT NULL,
  PRIMARY KEY (`codusuario`),
  KEY `fk_ciudad_idx` (`ciudadid`),
  KEY `fk_usucargo_idx` (`cargo`),
  CONSTRAINT `fk_usucargo` FOREIGN KEY (`cargo`) REFERENCES `cargo` (`idcargo`) ON UPDATE CASCADE,
  CONSTRAINT `fk_usuciudad` FOREIGN KEY (`ciudadid`) REFERENCES `ciudad` (`idciudad`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;