-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Tempo de geração: 07-Dez-2022 às 21:37
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `COD_PACIENTE` int(11) NOT NULL,
  `NOME_COMPLETO` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `DT_NASC` date DEFAULT NULL,
  `TELEFONE` char(14) DEFAULT NULL,
  `SENHA` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`COD_PACIENTE`, `NOME_COMPLETO`, `EMAIL`, `DT_NASC`, `TELEFONE`, `SENHA`) VALUES
(1, 'KARINA KARDOSO', 'karinaconka@gmail.com', '1977-03-12', '1498266661', 'kapao027'),
(6, 'Arthur Xavier', 'xarthur010@gmail.com', '2004-11-17', '149999998', 'xavier123'),
(7, 'Helen Silva', 'helen..silva013@gmail.com', '2004-10-13', '14991235668', '147852369'),
(12, 'Helena Manoel Polidoro', 'helenapolidoro01@gmail.com', '2004-08-25', '14997688975', 'amoremio123'),
(16, 'Ana Maria', 'ana@gmail.com', '1987-11-23', '14997688975', '12345'),
(19, 'Jessica Fernandez', 'fernandezjessica@gmail.com', '1999-06-15', '14997688559', '789456'),
(20, 'Vitória Mayumi de Moraes Garcia', 'vitoriamayumi172@gmail.com', '2006-04-18', '14988387192', '123456'),
(21, 'Andrew W. Rodrigues', 'andrewwiliam35@gmail.com', '1992-02-23', '14997625079', '997625079'),
(22, 'Maria Vitória', 'vasquesmariavitoria41@gmail.com', '2004-10-13', '14998803338', '@bzy3742');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`COD_PACIENTE`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `COD_PACIENTE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
