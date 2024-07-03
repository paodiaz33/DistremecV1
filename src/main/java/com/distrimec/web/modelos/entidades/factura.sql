CREATE TABLE `factura` (
  `idfactura` int NOT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `tipo` int DEFAULT NULL,
  `clienteid` int DEFAULT NULL,
  `usuariocod` int DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`idfactura`),
  KEY `fk_usuariocod` (`usuariocod`),
  KEY `fk_factutipo_idx` (`tipo`),
  KEY `fk_cliente_idx` (`clienteid`),
  CONSTRAINT `fk_cliente` FOREIGN KEY (`clienteid`) REFERENCES `cliente` (`idcliente`),
  CONSTRAINT `fk_detalle` FOREIGN KEY (`idfactura`) REFERENCES `factuprovemedi` (`factuprovemedi`) ON UPDATE CASCADE,
  CONSTRAINT `fk_factutipo` FOREIGN KEY (`tipo`) REFERENCES `tipo` (`idtipo`),
  CONSTRAINT `fk_usuariocod` FOREIGN KEY (`usuariocod`) REFERENCES `usuario` (`codusuario`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
SELECT * FROM distrimec.factuprovemedi;