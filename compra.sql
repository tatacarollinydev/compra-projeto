-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/07/2024 às 13:18
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `compra`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria`
--

CREATE TABLE `categoria` (
  `IDCATEGORIA` int(11) NOT NULL,
  `DESCRICAO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `categoria`
--

INSERT INTO `categoria` (`IDCATEGORIA`, `DESCRICAO`) VALUES
(1, 'Achocolatado'),
(2, 'Laticinios');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cliente`
--

CREATE TABLE `cliente` (
  `IDCLI` int(10) NOT NULL,
  `NOME` varchar(255) NOT NULL,
  `LOGIN` varchar(255) NOT NULL,
  `SENHA` varchar(255) NOT NULL,
  `DTNASC` date NOT NULL,
  `ENDERECO` varchar(255) NOT NULL,
  `SEXO` int(1) NOT NULL,
  `CPF` varchar(20) NOT NULL,
  `RG` varchar(20) NOT NULL,
  `TELEFONE` varchar(20) NOT NULL,
  `CELULAR` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `cliente`
--

INSERT INTO `cliente` (`IDCLI`, `NOME`, `LOGIN`, `SENHA`, `DTNASC`, `ENDERECO`, `SEXO`, `CPF`, `RG`, `TELEFONE`, `CELULAR`) VALUES
(1, 'Leonardo Rocha', 'leonardo', '123456', '1983-07-02', 'Rua Lorem ipsum dolor sit amet', 1, '000.000.000-00', '00000000', '(43)3333-3333', '(43)3344-3344');

-- --------------------------------------------------------

--
-- Estrutura para tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `IDFOR` int(10) NOT NULL,
  `NOME` varchar(255) NOT NULL,
  `TELEFONE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `fornecedor`
--

INSERT INTO `fornecedor` (`IDFOR`, `NOME`, `TELEFONE`) VALUES
(1, 'Unopar', '(43)3333-3333');

-- --------------------------------------------------------

--
-- Estrutura para tabela `itempedido`
--

CREATE TABLE `itempedido` (
  `IDITEM` int(11) NOT NULL,
  `IDPED` int(11) NOT NULL,
  `IDPROD` int(11) NOT NULL,
  `SEQ` int(11) NOT NULL,
  `QTDE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `itempedido`
--

INSERT INTO `itempedido` (`IDITEM`, `IDPED`, `IDPROD`, `SEQ`, `QTDE`) VALUES
(37, 50, 1, 1, 2),
(38, 50, 2, 2, 1),
(39, 51, 1, 1, 3),
(40, 51, 2, 2, 3),
(41, 52, 1, 1, 2),
(42, 53, 3, 1, 50),
(43, 54, 1, 1, 2),
(44, 54, 2, 2, 17),
(45, 55, 39, 1, 12);

-- --------------------------------------------------------

--
-- Estrutura para tabela `marca`
--

CREATE TABLE `marca` (
  `IDMARCA` int(11) NOT NULL,
  `DESCRICAO` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `marca`
--

INSERT INTO `marca` (`IDMARCA`, `DESCRICAO`) VALUES
(1, 'Native'),
(2, 'Nestle');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pedido`
--

CREATE TABLE `pedido` (
  `IDPED` int(11) NOT NULL,
  `IDCLI` int(11) NOT NULL,
  `IDFOR` int(11) NOT NULL,
  `DATA` datetime NOT NULL DEFAULT current_timestamp(),
  `STATUS` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `pedido`
--

INSERT INTO `pedido` (`IDPED`, `IDCLI`, `IDFOR`, `DATA`, `STATUS`) VALUES
(50, 1, 1, '2021-09-29 08:34:20', 'E'),
(51, 1, 1, '2021-09-30 12:05:28', 'E'),
(52, 1, 1, '2021-09-30 12:06:47', 'E'),
(53, 1, 1, '2024-06-19 09:22:58', 'E'),
(54, 1, 1, '2024-06-19 09:23:40', 'E'),
(55, 1, 1, '2024-07-23 08:08:15', 'E');

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `IDPROD` int(10) NOT NULL,
  `IDCATEGORIA` int(10) NOT NULL,
  `IDMARCA` int(10) NOT NULL,
  `NOME` varchar(255) NOT NULL,
  `DESCRICAO` varchar(255) NOT NULL,
  `ESTOQUE` int(10) NOT NULL,
  `PRECO` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `produtos`
--

INSERT INTO `produtos` (`IDPROD`, `IDCATEGORIA`, `IDMARCA`, `NOME`, `DESCRICAO`, `ESTOQUE`, `PRECO`) VALUES
(1, 1, 2, 'Nescau', 'Achocolatado em pó', 0, 20.3),
(2, 1, 1, 'Cereal', 'Cereal nutritivo', 0, 10.35),
(3, 1, 1, 'Biscoito', 'Biscoito Bono', 0, 2),
(30, 1, 2, 'Leite', 'Leite', 22, 4.99),
(31, 1, 2, 'Leite', 'Leite', 22, 4.99),
(32, 1, 2, 'Leite', 'Leite', 22, 4.99),
(33, 1, 2, 'Leite', 'Leite', 22, 4.99),
(34, 1, 2, 'Leite', 'Leite', 22, 4.99),
(36, 1, 2, 'Leite', 'Leite', 22, 4.99),
(37, 1, 2, 'Leite', 'Leite', 22, 4.99),
(38, 1, 2, 'Leite', 'Leite', 22, 4.99),
(39, 1, 2, 'Leite', 'Leite', 10, 4.99);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`IDCATEGORIA`);

--
-- Índices de tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IDCLI`);

--
-- Índices de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`IDFOR`);

--
-- Índices de tabela `itempedido`
--
ALTER TABLE `itempedido`
  ADD PRIMARY KEY (`IDITEM`,`IDPED`),
  ADD KEY `IDPED` (`IDPED`),
  ADD KEY `IDPROD` (`IDPROD`);

--
-- Índices de tabela `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`IDMARCA`);

--
-- Índices de tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`IDPED`),
  ADD KEY `IDCLI` (`IDCLI`),
  ADD KEY `IDFOR` (`IDFOR`);

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`IDPROD`,`IDCATEGORIA`,`IDMARCA`),
  ADD KEY `IDCATEGORIA` (`IDCATEGORIA`),
  ADD KEY `IDMARCA` (`IDMARCA`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `IDCATEGORIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `IDCLI` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `IDFOR` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `itempedido`
--
ALTER TABLE `itempedido`
  MODIFY `IDITEM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `marca`
--
ALTER TABLE `marca`
  MODIFY `IDMARCA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `IDPED` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `IDPROD` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `itempedido`
--
ALTER TABLE `itempedido`
  ADD CONSTRAINT `itempedido_ibfk_1` FOREIGN KEY (`IDPED`) REFERENCES `pedido` (`IDPED`),
  ADD CONSTRAINT `itempedido_ibfk_2` FOREIGN KEY (`IDPROD`) REFERENCES `produtos` (`IDPROD`);

--
-- Restrições para tabelas `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`IDCLI`) REFERENCES `cliente` (`IDCLI`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`IDFOR`) REFERENCES `fornecedor` (`IDFOR`);

--
-- Restrições para tabelas `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_ibfk_1` FOREIGN KEY (`IDCATEGORIA`) REFERENCES `categoria` (`IDCATEGORIA`),
  ADD CONSTRAINT `produtos_ibfk_2` FOREIGN KEY (`IDMARCA`) REFERENCES `marca` (`IDMARCA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
