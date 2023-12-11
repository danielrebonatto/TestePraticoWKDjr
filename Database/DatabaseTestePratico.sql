CREATE DATABASE  IF NOT EXISTS `mydb` ;
USE `mydb`;

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE `cliente` (
  `ClienteId` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `Cidade` varchar(100) DEFAULT NULL,
  `UF` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`ClienteId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

INSERT INTO `cliente` VALUES (1,'Marcos Castro','Vila Velha','ES'),(2,'Gabriel Bastos','Barão de Cocais','MG'),(3,'João Andrade','Boa Vista','RR'),(4,'Rafael Bastos','Bofete','SP'),(5,'Gustavo Silva','Sorocaba','SP'),(6,'Paulo Serra','Buritizeiro','MG'),(7,'Guilherme Araujo','Contenda','PR'),(8,'Murilo Couto','Coronel Freitas','SC'),(9,'Juliana Costa','Corupá','SC'),(10,'Fernando Caruso','Chapecó','SC'),(11,'Sarah Campos','Cocal','PI'),(12,'Bruna Louise','Balneario Camboriu','SC'),(13,'Abraão Duarte','Bombinhas','SC'),(14,'Oscar Filho','Diamante do Sul','PR'),(15,'Iury Freitas','Diamante do Norte','PR'),(16,'Renato Aragão','Diamante dOeste','PR'),(17,'Matheus Alves','Entre Rios do Sul','RS'),(18,'Leandro Hassun','Estrela Velha','RS'),(19,'Marcela Dias','Engenho Velho','RS'),(20,'Daniela Valente','Feira Nova do Maranhão','MA'),(21,'Daniel Paladino','Ipê','RS'),(22,'Sylvanas Windrunner','Jijoca de Jericoacoara','CE');

DROP TABLE IF EXISTS `detalhepedido`;
CREATE TABLE `detalhepedido` (
  `DetalhePedidoId` int(11) NOT NULL AUTO_INCREMENT,
  `NumPedido` int(11) NOT NULL,
  `ProdutoId` int(11) NOT NULL,
  `Quantidade` int(11) NOT NULL,
  `ValorUnitario` decimal(13,2) DEFAULT NULL,
  `ValorTotal` decimal(13,2) DEFAULT NULL,
  PRIMARY KEY (`DetalhePedidoId`),
  KEY `fk_DetalhePedido_Pedido1_idx` (`NumPedido`),
  KEY `fk_DetalhePedido_Produto1_idx` (`ProdutoId`),
  CONSTRAINT `fk_DetalhePedido_Pedido1` FOREIGN KEY (`NumPedido`) REFERENCES `pedido` (`NumPedido`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_DetalhePedido_Produto1` FOREIGN KEY (`ProdutoId`) REFERENCES `produto` (`ProdutoId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

INSERT INTO `detalhepedido` VALUES (4,1,3,1,2.50,2.50),(5,1,7,1,12.99,12.99),(6,2,1,5,5.50,27.50),(7,2,14,2,20.99,41.98),(8,2,17,1,1.05,1.05),(9,2,1,2,5.50,11.00),(10,3,21,12,1.43,17.16),(11,4,1,1,5.50,5.50),(12,4,18,2,3.35,6.70);

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE `pedido` (
  `NumPedido` int(11) NOT NULL,
  `DataEmissao` datetime NOT NULL,
  `ClienteId` int(11) NOT NULL,
  `ValorTotal` decimal(13,2) DEFAULT NULL,
  PRIMARY KEY (`NumPedido`),
  KEY `fk_Pedido_Cliente_idx` (`ClienteId`),
  CONSTRAINT `fk_Pedido_Cliente` FOREIGN KEY (`ClienteId`) REFERENCES `cliente` (`ClienteId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `pedido` VALUES (1,'0000-00-00 00:00:00',1,15.49),(2,'0000-00-00 00:00:00',3,81.53),(3,'0000-00-00 00:00:00',18,17.16),(4,'2023-04-07 19:56:37',9,12.20);


DROP TABLE IF EXISTS `produto`;
CREATE TABLE `produto` (
  `ProdutoId` int(11) NOT NULL AUTO_INCREMENT,
  `Descricao` varchar(100) NOT NULL,
  `PrecoVenda` decimal(13,2) NOT NULL,
  PRIMARY KEY (`ProdutoId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

INSERT INTO `produto` VALUES (1,'Lapiseira',5.50),(2,'Caneta Preta',1.20),(3,'Apagador',2.50),(4,'Calculadora',6.00),(5,'Regua',9.00),(6,'Marcador',4.45),(7,'Caderno Kalunga G',12.99),(8,'Caderno Kalunga P',9.99),(9,'Folha A4',23.50),(10,'Borracha',1.00),(11,'Caneta',1.10),(12,'Canetao',1.20),(13,'Canetinha',1.30),(14,'Lápis de Cor 24 cores FaberCastel',20.99),(15,'Giz de Cera',8.99),(16,'Compasso',10.00),(17,'Papel de Seda',1.05),(18,'Cola Branca',3.35),(19,'Cola Bastão',4.45),(20,'Marca Texto',2.45),(21,'Papel Cartão',1.43),(22,'Cartolina',2.99),(23,'Pasta Organizadora',18.99),(24,'Fichário',14.99),(25,'Elástico',1.75);

