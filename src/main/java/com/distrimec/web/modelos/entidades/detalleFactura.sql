CREATE TABLE `factuprovemedi` (
  `factuprovemedi` int NOT NULL AUTO_INCREMENT,
  `productocod` int DEFAULT NULL,
  `facturaid` int DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `iva` decimal(10,0) DEFAULT NULL,
  `subtotal` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`factuprovemedi`),
  KEY `fk_medicamentos` (`productocod`),
  KEY `fk_factura` (`facturaid`),
  KEY `fk_facturaid_idx` (`cantidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;