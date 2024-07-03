CREATE TABLE `proveedor` (
  `codproveedor` int NOT NULL,
  `telefono` int DEFAULT NULL,
  `empresa` varchar(30) DEFAULT NULL,
  `nit` int DEFAULT NULL,
  `direcciòn` varchar(30) DEFAULT NULL,
  `usuariocod` int DEFAULT NULL,
  PRIMARY KEY (`codproveedor`),
  KEY `fk_usuarprov` (`usuariocod`),
  CONSTRAINT `fk_usuarprov` FOREIGN KEY (`usuariocod`) REFERENCES `usuario` (`codusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;