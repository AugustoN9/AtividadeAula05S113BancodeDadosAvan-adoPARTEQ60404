-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18-Abr-2022 às 04:09
-- Versão do servidor: 10.1.38-MariaDB
-- versão do PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dba_senairs2022_avancado_projeto_petshop2`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `aniversariante_mes_atual`
-- (See below for the actual view)
--
CREATE TABLE `aniversariante_mes_atual` (
`id_cliente` int(11)
,`nome_cliente` varchar(50)
,`Dia Aniversário` int(2)
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carteira_vacina_pet`
--

CREATE TABLE `carteira_vacina_pet` (
  `id_vacina_pet` int(11) NOT NULL,
  `nome_vacina_pet` varchar(150) DEFAULT NULL,
  `lote_vacina_pet` varchar(150) DEFAULT NULL,
  `validade_vacina_pet` datetime DEFAULT NULL,
  `fabricante_vacina_pet` varchar(150) DEFAULT NULL,
  `descricao_vacina_pet` varchar(150) DEFAULT NULL,
  `data_aplicacao` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `carteira_vacina_pet`
--

INSERT INTO `carteira_vacina_pet` (`id_vacina_pet`, `nome_vacina_pet`, `lote_vacina_pet`, `validade_vacina_pet`, `fabricante_vacina_pet`, `descricao_vacina_pet`, `data_aplicacao`) VALUES
(1, 'AZOVAC-BETA', 'A12345Z', '2024-01-01 00:00:00', 'ZOOLIFE BIOTEC', 'VACINA CONTRA RAIVA', '2022-04-17 00:00:00'),
(2, 'VAC-NUTRI', '12222EP', '2023-03-01 00:00:00', 'BIOTECNOVA', 'VACINA CONTRA RAIVA', '2022-04-17 00:00:00'),
(3, 'VAC-FELINON', 'CD12345', '2023-01-21 00:00:00', 'ANIMAL BIOTEC', 'VACINA CONTRA RAIVA', '2022-04-17 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_cliente`
--

CREATE TABLE `categoria_cliente` (
  `id_categ` int(11) NOT NULL,
  `descricao_categ` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria_cliente`
--

INSERT INTO `categoria_cliente` (`id_categ`, `descricao_categ`) VALUES
(1, 'Cliente Especial'),
(2, 'Cliente Ouro'),
(3, 'Cliente Prata'),
(4, 'Cliente Bronze'),
(5, 'Cliente Normal');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_pet`
--

CREATE TABLE `categoria_pet` (
  `id_categ_pet` int(11) NOT NULL,
  `nome_categ_pet` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria_pet`
--

INSERT INTO `categoria_pet` (`id_categ_pet`, `nome_categ_pet`) VALUES
(1, 'CAES'),
(2, 'GATOS'),
(3, 'AVES'),
(4, 'ANFIBIOS'),
(5, 'REPTEIS'),
(6, 'OUTROS');

-- --------------------------------------------------------

--
-- Estrutura da tabela `celular`
--

CREATE TABLE `celular` (
  `id_celular` int(11) NOT NULL,
  `ddd` int(3) DEFAULT NULL,
  `numero` int(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `celular`
--

INSERT INTO `celular` (`id_celular`, `ddd`, `numero`) VALUES
(1, 51, 989194158),
(2, 55, 999121314),
(3, 55, 981512171),
(4, 54, 989955251);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nome_cliente` varchar(50) NOT NULL,
  `cpf_cliente` varchar(50) DEFAULT NULL,
  `d_nasc_cliente` datetime DEFAULT NULL,
  `genero_cliente` char(2) DEFAULT NULL,
  `categoria_cliente` int(11) DEFAULT NULL,
  `endereco_cliente` int(11) DEFAULT NULL,
  `telefone_cliente` int(11) DEFAULT NULL,
  `pet_cliente` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nome_cliente`, `cpf_cliente`, `d_nasc_cliente`, `genero_cliente`, `categoria_cliente`, `endereco_cliente`, `telefone_cliente`, `pet_cliente`) VALUES
(1, 'AUGUSTO CRISTIANO CRESTANI LOPEZ', '886.805.330-68', '1978-08-15 00:00:00', 'M', 1, NULL, NULL, 1),
(2, 'BRENDA DA SILVA LOPEZ', '000.000.330-00', '2015-04-06 00:00:00', 'F', 1, NULL, NULL, 2),
(3, 'FABIANA SILVA DA SILVA', '111.111.111-68', '1980-01-15 00:00:00', 'F', 1, NULL, NULL, 3),
(4, 'TONY STARK', '222.222.222-22', '2005-08-15 00:00:00', 'M', 2, NULL, NULL, NULL),
(5, 'PETER PARKER', '333.333.333-33', '1978-08-15 00:00:00', 'M', 2, NULL, NULL, NULL),
(6, 'DIANA LUGANO DIAS', '444.444.444-44', '1978-08-15 00:00:00', 'F', 2, NULL, NULL, NULL),
(7, 'MARILIA MEDIANEIRA GOMEZ', '555.555.555-55', '1978-08-15 00:00:00', 'F', 5, NULL, NULL, NULL),
(8, 'MARIA APARECIDA DE CARMO', '666.666.666-68', '1978-04-29 00:00:00', 'F', 5, NULL, NULL, NULL),
(9, 'PAULO PEDROSO', '777.777.777-78', '1978-08-15 00:00:00', 'M', 4, NULL, NULL, NULL),
(10, 'ALBERTO CASAGRANDE E SILVA', '888.805.888-18', '1978-08-15 00:00:00', 'M', 3, NULL, NULL, NULL),
(11, 'HOMEM DE FERRO', '999.805.330-68', '1978-08-15 00:00:00', 'M', 1, 1, NULL, NULL),
(12, 'MULHER MARAVILHA', '000.111.330-00', '2015-04-06 00:00:00', 'F', 1, 1, NULL, NULL),
(13, 'FEITICEIRA ESCARLATE', '123.111.000-68', '1980-01-15 00:00:00', 'F', 1, 1, NULL, NULL),
(14, 'HOMEM ARANHA', '988.222.471-22', '2005-08-15 00:00:00', 'M', 2, 2, NULL, NULL),
(15, 'CAVALEIRO DA LUA', '333.321.111-33', '1978-08-15 00:00:00', 'M', 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato_telefone`
--

CREATE TABLE `contato_telefone` (
  `id_contato_telefone` int(11) NOT NULL,
  `tipo_telefone` int(11) DEFAULT NULL,
  `tipo_celular` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `contato_telefone`
--

INSERT INTO `contato_telefone` (`id_contato_telefone`, `tipo_telefone`, `tipo_celular`) VALUES
(1, 1, NULL),
(2, NULL, 3),
(3, NULL, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `id_endereco` int(11) NOT NULL,
  `logradouro` varchar(50) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `numero` varchar(50) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`id_endereco`, `logradouro`, `nome`, `numero`, `complemento`, `bairro`, `cidade`, `estado`) VALUES
(1, 'Avenida', 'Dom Claudio Jose Gonçalves Ponce de Leao', '140', 'apto 908 Torre 2', NULL, NULL, NULL),
(2, 'Avenida', 'Assis Brasil', '1978', 'apto 402', NULL, NULL, NULL),
(3, 'Avenida', 'Grecia', '25', 'apto 404', NULL, NULL, NULL),
(4, 'Rua', 'Alexandre Camaquã', '25', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pet`
--

CREATE TABLE `pet` (
  `id_pet` int(11) NOT NULL,
  `nome_pet` varchar(50) NOT NULL,
  `d_nasc_pet` datetime DEFAULT NULL,
  `genero_pet` char(2) DEFAULT NULL,
  `categoria_pet` int(11) DEFAULT NULL,
  `cor_pet` varchar(150) DEFAULT NULL,
  `raca_pet` varchar(150) DEFAULT NULL,
  `carteira_vacina_pet` int(11) DEFAULT NULL,
  `peso_pet` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pet`
--

INSERT INTO `pet` (`id_pet`, `nome_pet`, `d_nasc_pet`, `genero_pet`, `categoria_pet`, `cor_pet`, `raca_pet`, `carteira_vacina_pet`, `peso_pet`) VALUES
(1, 'NICK', '2005-08-10 00:00:00', 'M', 1, 'PRETO', 'Dachshund ', 1, '10.90'),
(2, 'ZERAORA', '2005-08-10 00:00:00', 'F', 2, 'CINZA', 'Ragdoll', 2, '3.90'),
(3, 'DOGS', '2005-08-10 00:00:00', 'M', 1, 'MARROM', 'Border Collie', 3, '16.90');

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone`
--

CREATE TABLE `telefone` (
  `id_telefone` int(11) NOT NULL,
  `ddd` int(3) DEFAULT NULL,
  `numero` int(8) DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `telefone`
--

INSERT INTO `telefone` (`id_telefone`, `ddd`, `numero`, `descricao`) VALUES
(1, 51, 33412256, 'residensial'),
(2, 51, 33195627, 'residensial'),
(3, 51, 33272000, 'empresarial');

-- --------------------------------------------------------

--
-- Structure for view `aniversariante_mes_atual`
--
DROP TABLE IF EXISTS `aniversariante_mes_atual`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `aniversariante_mes_atual`  AS  select `cliente`.`id_cliente` AS `id_cliente`,`cliente`.`nome_cliente` AS `nome_cliente`,dayofmonth(`cliente`.`d_nasc_cliente`) AS `Dia Aniversário` from `cliente` where (month(`cliente`.`d_nasc_cliente`) = month(curdate())) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carteira_vacina_pet`
--
ALTER TABLE `carteira_vacina_pet`
  ADD PRIMARY KEY (`id_vacina_pet`);

--
-- Indexes for table `categoria_cliente`
--
ALTER TABLE `categoria_cliente`
  ADD PRIMARY KEY (`id_categ`);

--
-- Indexes for table `categoria_pet`
--
ALTER TABLE `categoria_pet`
  ADD PRIMARY KEY (`id_categ_pet`);

--
-- Indexes for table `celular`
--
ALTER TABLE `celular`
  ADD PRIMARY KEY (`id_celular`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `cpf_cliente` (`cpf_cliente`),
  ADD KEY `fk_categ_cliente` (`categoria_cliente`),
  ADD KEY `fk_endereco` (`endereco_cliente`),
  ADD KEY `fk_telefone_cliente` (`telefone_cliente`),
  ADD KEY `fk_pet_cliente` (`pet_cliente`);

--
-- Indexes for table `contato_telefone`
--
ALTER TABLE `contato_telefone`
  ADD PRIMARY KEY (`id_contato_telefone`),
  ADD KEY `tipo_telefone` (`tipo_telefone`),
  ADD KEY `tipo_celular` (`tipo_celular`);

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`id_endereco`);

--
-- Indexes for table `pet`
--
ALTER TABLE `pet`
  ADD PRIMARY KEY (`id_pet`),
  ADD KEY `fk_carteira_vacina_pet` (`carteira_vacina_pet`),
  ADD KEY `fk_categoria_pet` (`categoria_pet`);

--
-- Indexes for table `telefone`
--
ALTER TABLE `telefone`
  ADD PRIMARY KEY (`id_telefone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carteira_vacina_pet`
--
ALTER TABLE `carteira_vacina_pet`
  MODIFY `id_vacina_pet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categoria_cliente`
--
ALTER TABLE `categoria_cliente`
  MODIFY `id_categ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categoria_pet`
--
ALTER TABLE `categoria_pet`
  MODIFY `id_categ_pet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `celular`
--
ALTER TABLE `celular`
  MODIFY `id_celular` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contato_telefone`
--
ALTER TABLE `contato_telefone`
  MODIFY `id_contato_telefone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `endereco`
--
ALTER TABLE `endereco`
  MODIFY `id_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pet`
--
ALTER TABLE `pet`
  MODIFY `id_pet` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `telefone`
--
ALTER TABLE `telefone`
  MODIFY `id_telefone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `fk_categ_cliente` FOREIGN KEY (`categoria_cliente`) REFERENCES `categoria_cliente` (`id_categ`),
  ADD CONSTRAINT `fk_endereco` FOREIGN KEY (`endereco_cliente`) REFERENCES `endereco` (`id_endereco`),
  ADD CONSTRAINT `fk_pet_cliente` FOREIGN KEY (`pet_cliente`) REFERENCES `pet` (`id_pet`),
  ADD CONSTRAINT `fk_telefone_cliente` FOREIGN KEY (`telefone_cliente`) REFERENCES `contato_telefone` (`id_contato_telefone`);

--
-- Limitadores para a tabela `contato_telefone`
--
ALTER TABLE `contato_telefone`
  ADD CONSTRAINT `contato_telefone_ibfk_1` FOREIGN KEY (`tipo_telefone`) REFERENCES `telefone` (`id_telefone`),
  ADD CONSTRAINT `contato_telefone_ibfk_2` FOREIGN KEY (`tipo_celular`) REFERENCES `celular` (`id_celular`);

--
-- Limitadores para a tabela `pet`
--
ALTER TABLE `pet`
  ADD CONSTRAINT `fk_carteira_vacina_pet` FOREIGN KEY (`carteira_vacina_pet`) REFERENCES `carteira_vacina_pet` (`id_vacina_pet`),
  ADD CONSTRAINT `fk_categoria_pet` FOREIGN KEY (`categoria_pet`) REFERENCES `categoria_pet` (`id_categ_pet`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
