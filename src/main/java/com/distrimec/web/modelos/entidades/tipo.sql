CREATE TABLE `tipo` (
  `idtipo` int NOT NULL,
  `nomtipo` varchar(45) DEFAULT NULL,
  `descripcion` varchar(225) CHARACTER SET ascii COLLATE ascii_general_ci DEFAULT NULL,
  PRIMARY KEY (`idtipo`),
  CONSTRAINT `fk_tipnombre` FOREIGN KEY (`idtipo`) REFERENCES `factura` (`idfactura`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;