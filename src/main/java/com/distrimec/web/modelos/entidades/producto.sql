CREATE TABLE `medicamentos` (
  `codproducto` int NOT NULL,
  `producto` varchar(20) DEFAULT NULL,
  `lote` int DEFAULT NULL,
  `precio` decimal(10,0) DEFAULT NULL,
  `fechavencimiento` datetime DEFAULT NULL,
  `proveedorcod` int DEFAULT NULL,
  `stock` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`codproducto`),
  KEY `fk_proveedo_idx` (`proveedorcod`),
  CONSTRAINT `fk_producto` FOREIGN KEY (`codproducto`) REFERENCES `factuprovemedi` (`productocod`),
  CONSTRAINT `fk_proveedo` FOREIGN KEY (`proveedorcod`) REFERENCES `proveedor` (`codproveedor`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;