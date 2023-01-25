-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 25, 2023 at 05:50 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `azaboutique`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) DEFAULT 'Gtwork Electronics',
  `descricao` varchar(300) DEFAULT 'Computation and electronics of Gtwork',
  `imgBanner` varchar(100) DEFAULT NULL,
  `estado` enum('activado','desativado') DEFAULT 'desativado',
  `alterar` enum('First slide','Second slide','Third slide') DEFAULT 'Third slide'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `titulo`, `descricao`, `imgBanner`, `estado`, `alterar`) VALUES
(13, 'gjhgjkhb', 'ufuygi8uh8iu', '63ce7e0a9c40eb.jpg', 'desativado', 'Third slide'),
(14, 'Salto Preto', 'Para ocasiões especiais, festival e Jantar Romântico  ', '63d05254d9313b.jpg', 'activado', 'Third slide');

-- --------------------------------------------------------

--
-- Table structure for table `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `categoria` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categoria`
--

INSERT INTO `categoria` (`id`, `categoria`) VALUES
(1, 'sapatos'),
(3, 'Tenis'),
(4, 'Camisolas'),
(5, 'T-sherts'),
(6, 'Calcas');

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `Pnome` varchar(80) DEFAULT NULL,
  `Unome` varchar(30) NOT NULL,
  `pais` varchar(50) DEFAULT 'Angola',
  `Nempresa` varchar(70) NOT NULL,
  `endereco` varchar(90) NOT NULL,
  `cidade` varchar(70) NOT NULL,
  `condado` varchar(80) NOT NULL,
  `cep` varchar(89) NOT NULL,
  `email` varchar(80) NOT NULL,
  `telefone` varchar(80) NOT NULL,
  `produtos` varchar(600) DEFAULT NULL,
  `preco` varchar(300) DEFAULT NULL,
  `qtd` varchar(200) DEFAULT NULL,
  `total` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`idCliente`, `id`, `Pnome`, `Unome`, `pais`, `Nempresa`, `endereco`, `cidade`, `condado`, `cep`, `email`, `telefone`, `produtos`, `preco`, `qtd`, `total`) VALUES
(1, 1, 'Eluki', 'juuu', 'Angola', 'Google', 'Talatona', 'Luanda', 'Angola', '108920700ZE0413', 'eluck@gmail.com', '926153108', ', Ténis BNW', ',69000', ',1', 1242000),
(2, 1, 'Teves', 'Nelo', 'R.D.C', 'Tecno', 'Matadi', 'Side', 'FA', '2556677', 'teves@gmail.com', '200200200', ', Ténis BNW', ',69000', ',17', 1173000),
(3, 1, 'Telo', 'Hugo', 'Angola', 'Nokia', 'gomes@gmail.com', 'Santa Clara', 'Ao', '23333', 'teresa@gmail.com', '25553666', '', '', '', 0),
(4, 1, 'Eluki', 'Nelo', 'Angola', 'Google', 'Talatona', 'Luanda', 'Angola', '108920700ZE0413', 'eluck@gmail.com', '926153108', '', '', '', 0),
(5, 8, 'Teves', 'Nelo', 'Angola', 'Google', 'Talatona', 'Luanda', 'AO', '108920700ZE0413', 'eluck@gmail.com', '967989309', '', '', '', 0),
(6, 8, 'Teves', 'Hugo', 'Angola', 'Google', 'Talatona', 'Luanda', 'Angola', '108920700ZE0413', 'teresa@gmail.com', '926153108', ',Camisola Nerd', ',1700', ',23', 40800),
(7, 8, 'Teves', 'juuu', 'Angola', 'Google', 'Talatona', 'Luanda', 'Angola', '108920700ZE0413', 'eluck@gmail.com', '926153108', ',Equipamento de Benfica', ',15000', ',1', 525000),
(8, 8, 'Eluki', 'juuu', 'Angola', 'Google', 'Talatona', 'Luanda', 'Ao', '108920700ZE0413', 'teresa@gmail.com', '967989309', ',Camisola Nerd', ',1700', ',1', 1700),
(9, 8, 'Alberto', 'Chico', 'Angola', 'Tecno', 'Cazenga/Calawenda', 'Cazenga', 'AO', '00388840ZE08', 'AlbertoChico@gamil.com', '883788', ',Calçaõ do Mundinho', ',8000', ',20', 160000),
(10, 8, 'Teus ', 'JII', 'Africa do sul', 'Itel', 'Luanda/Talatona rua direita de SIAC', 'Luanda', 'AF', '288877888', 'eluckimossi@gmail.com', '926153108', ',Camisola Nerd', ',1700', ',1', 39100),
(11, 8, 'Fernanda', 'Juda', 'America', 'Tecno', 'Nova York', 'Nova york', 'US', '3777884JH', 'fernanda@gmail.com', '28888', ',Sapato Social', ',39900', ',20', 798000);

-- --------------------------------------------------------

--
-- Table structure for table `detalhesproduct`
--

CREATE TABLE `detalhesproduct` (
  `idPedido` int(11) NOT NULL,
  `produto` varchar(600) DEFAULT NULL,
  `preco` varchar(300) DEFAULT NULL,
  `qtd` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pedido`
--

CREATE TABLE `pedido` (
  `id` int(11) NOT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  `data_pedido` datetime DEFAULT NULL,
  `data_necessaria` datetime DEFAULT NULL,
  `data_envio` date DEFAULT NULL,
  `via_maritima` enum('sim','nao') DEFAULT 'nao',
  `frete` enum('sim','nao') DEFAULT 'nao',
  `nome_navio` enum('sim','nao') DEFAULT 'nao',
  `endereco_navio` enum('sim','nao') DEFAULT 'nao',
  `modo_entrega` varchar(90) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pedido`
--

INSERT INTO `pedido` (`id`, `idCliente`, `idFuncionario`, `data_pedido`, `data_necessaria`, `data_envio`, `via_maritima`, `frete`, `nome_navio`, `endereco_navio`, `modo_entrega`) VALUES
(1, 1, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(2, 1, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(3, 2, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(4, 1, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(5, 2, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(6, 3, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(7, 1, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(8, 2, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(9, 3, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(10, 4, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(11, 1, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(12, 2, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(13, 3, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(14, 4, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(15, 5, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(16, 1, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(17, 2, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(18, 3, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(19, 4, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(20, 5, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(21, 6, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(22, 1, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(23, 2, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(24, 3, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(25, 4, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(26, 5, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(27, 6, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(28, 7, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(29, 1, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(30, 2, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(31, 3, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(32, 4, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(33, 5, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(34, 6, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(35, 7, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(36, 8, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(37, 1, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(38, 2, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(39, 3, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(40, 4, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(41, 5, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(42, 6, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(43, 7, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(44, 8, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(45, 9, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(46, 1, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(47, 2, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(48, 3, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(49, 4, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(50, 5, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(51, 6, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(52, 7, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(53, 8, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(54, 9, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(55, 10, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(56, 1, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(57, 2, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(58, 3, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(59, 4, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(60, 5, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(61, 6, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(62, 7, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(63, 8, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(64, 9, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(65, 10, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL),
(66, 11, NULL, NULL, NULL, NULL, 'nao', 'nao', 'nao', 'nao', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(90) DEFAULT NULL,
  `precoUnitario` float DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `estado` varchar(90) DEFAULT NULL,
  `supplid` int(11) DEFAULT NULL,
  `idCategoria` int(11) DEFAULT NULL,
  `descricao` varchar(300) DEFAULT NULL,
  `imagem` varchar(90) DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `total` float DEFAULT NULL,
  `visivel` enum('sim','nao') DEFAULT 'sim'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `precoUnitario`, `qtd`, `estado`, `supplid`, `idCategoria`, `descricao`, `imagem`, `data`, `total`, `visivel`) VALUES
(24, ' Ténis BNW', 69000, 30, 'stock', 354, 3, 'osso exclusivo Tênis Iron Titanium é extremamente flexível e confortável. Você vai esquecer que está com ele nos pés.', '63837e32bbd24', '2022-11-27 16:11:46', 0, 'nao'),
(25, 'Sapato Social', 39900, 0, 'stock', 1223, 1, 'Socializa-se faz bem!', '6387803b7ec44', '2022-11-30 17:09:31', 0, 'sim'),
(27, 'Equipamento de Benfica', 15000, 34, 'stock', 4556, 5, 'Equipamento para Treino desportivo.', '63a475484fdc2', '2022-12-22 16:18:32', 510000, 'sim'),
(28, 'Camisola Nerd', 1700, 22, 'stock', 677, 5, 'Camisa para ocasião de Lazer!', '63a47f1618c07', '2022-12-22 17:00:22', 37400, 'sim'),
(29, 'Calçaõ do Mundinho', 8000, 0, 'stock', 2345, 6, 'Bom para convívio familiar ', '63bbe4d1a15c1', '2023-01-09 10:56:33', 0, 'sim');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `passe` varchar(40) DEFAULT NULL,
  `privilegio` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome`, `email`, `telefone`, `passe`, `privilegio`) VALUES
(1, 'Eluki Kimossi', 'eluck@gmail.com', NULL, '123456', 0),
(3, 'Eluki Baptista J?nior', 'eluckimossi@gmail.com', '926153108', '12345', 0),
(4, 'Teresa Mateus', 'teresa@gmail.com', ' 967989309', '12345', 1),
(5, 'Home men', 'joy@gmail.com', ' 924356987', '1234', 1),
(6, 'Mauro', 'mauri@gmail.com', ' 924402325', '11111', 1),
(7, 'Manuel Afonso', 'manuelAfonso@gmail.com', ' 925678900', '123456', 1),
(8, 'Fernanda Domingos', 'fernanda@gmail.com', ' 934508987', '12345', 1),
(10, 'Gome Santos', 'fontesgonga@gmail.com', ' 916788007', '3434', 1),
(11, '', '', ' ', '', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `detalhesproduct`
--
ALTER TABLE `detalhesproduct`
  ADD PRIMARY KEY (`idPedido`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCliente` (`idCliente`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idCategoria` (`idCategoria`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `detalhesproduct`
--
ALTER TABLE `detalhesproduct`
  MODIFY `idPedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`id`) REFERENCES `usuario` (`id_usuario`);

--
-- Constraints for table `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`);

--
-- Constraints for table `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
