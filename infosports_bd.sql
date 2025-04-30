-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/05/2025 às 01:10
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `infosports_bd`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria_tb`
--

CREATE TABLE `categoria_tb` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `dataRegistro` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `categoria_tb`
--

INSERT INTO `categoria_tb` (`id`, `nome`, `dataRegistro`) VALUES
(1, 'Esportes', '2024-11-11 00:00:00'),
(2, 'Geral', '2024-11-11 19:51:07'),
(3, 'Politica', '2024-11-11 21:05:52'),
(4, 'combate', '2024-12-06 19:36:10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contato_tb`
--

CREATE TABLE `contato_tb` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `mensagem` text NOT NULL,
  `dataRegistro` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `contato_tb`
--

INSERT INTO `contato_tb` (`id`, `nome`, `sobrenome`, `email`, `telefone`, `mensagem`, `dataRegistro`) VALUES
(4, 'Diogo', 'Ramalho', 'dioramalho@gmail.com', '12345678912', 'bbb', '2024-09-27 21:01:44'),
(5, 'Diogo', 'Ramalho', 'dioramalho@gmail.com', '12345678912', 'bbb', '2024-09-30 19:30:14'),
(6, 'Diogo', 'Ramalho', 'dioramalho@gmail.com', '12345678912', 'bbb', '2024-09-30 19:31:02'),
(7, 'LA LA LA', 'aaa', 'ronald@gmail.com', '12345678912', 'adasdasd', '2024-11-25 20:08:44'),
(8, 'joao', 'pessoa', 'joao@gmail.com', '81 9 33333', 'socorroaaaa', '2024-12-06 19:35:46');

-- --------------------------------------------------------

--
-- Estrutura para tabela `imc_tb`
--

CREATE TABLE `imc_tb` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `peso` int(11) NOT NULL,
  `altura` float NOT NULL,
  `imc` float NOT NULL,
  `classificacao` varchar(255) NOT NULL,
  `dataRegistro` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `imc_tb`
--

INSERT INTO `imc_tb` (`id`, `nome`, `email`, `peso`, `altura`, `imc`, `classificacao`, `dataRegistro`) VALUES
(3, 'Diogo', 'dioramalho@gmail.com', 145, 1.87, 41.47, 'Obesidade grau 3 ou morbida', '2024-09-27 21:00:06'),
(4, 'Joao', 'joao@gmail.com', 60, 1.73, 20, 'Peso Ideal', '2024-12-06 19:39:03');

-- --------------------------------------------------------

--
-- Estrutura para tabela `registro_tb`
--

CREATE TABLE `registro_tb` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `login` varchar(255) NOT NULL,
  `senha` longtext NOT NULL,
  `dataRegistro` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `registro_tb`
--

INSERT INTO `registro_tb` (`id`, `nome`, `email`, `telefone`, `login`, `senha`, `dataRegistro`) VALUES
(8, 'Ronald', 'ronald@gmail.com', '12345678912', '', '', '2024-09-27 21:01:01'),
(11, 'José', 'jose@ete.com', '12345678912', 'jj', 'MTIzNDU2', '2024-09-30 19:56:42'),
(12, 'José', 'jose@ete.com', '12345678912', 'jj', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2024-09-30 20:12:50'),
(14, 'Ronald', 'ronald@gmail.com', '12345678912', 'rr', '7c4a8d09ca3762af61e59520943dc26494f8941b', '2024-09-30 20:13:57'),
(16, 'Diogo Novo', 'diogo.novo@gmail.com.br', '12345678912', 'dioramalho', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2024-10-10 19:38:57'),
(17, 'LA LA LA', 'lala@gmail.com', '11111111111', 'la', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2024-11-25 20:08:01'),
(18, 'jjjjj', 'jj@gmail.com', '12345678912', 'jj', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2024-11-25 20:41:22'),
(19, 'AVAVAV', 'avav@gmail.com', '12345678912', 'av', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2024-11-26 20:32:13'),
(20, 'azazazaz', 'AZ@gmeil.com', '12345678912', 'az', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2024-11-26 20:43:30'),
(21, 'Thiago', 'thi@gmail.com', '81 9 3333-3333', 'Tha', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '2024-12-05 21:08:57');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `categoria_tb`
--
ALTER TABLE `categoria_tb`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `contato_tb`
--
ALTER TABLE `contato_tb`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `imc_tb`
--
ALTER TABLE `imc_tb`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `registro_tb`
--
ALTER TABLE `registro_tb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria_tb`
--
ALTER TABLE `categoria_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `contato_tb`
--
ALTER TABLE `contato_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `imc_tb`
--
ALTER TABLE `imc_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `registro_tb`
--
ALTER TABLE `registro_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
