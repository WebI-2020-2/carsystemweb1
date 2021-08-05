-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 05-Ago-2021 às 14:46
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `concessionaria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `edited` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`id`, `nome`, `created`, `edited`) VALUES
(1, 'cereais', '2021-06-16 04:33:12', NULL),
(2, 'apícolas', '2021-06-16 04:33:12', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `endereco` varchar(80) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `edited` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `cpf`, `endereco`, `telefone`, `dataNascimento`, `created`, `edited`) VALUES
(2, 'Maria Silva ', '333.285.786-00', 'Rua Bonacera', '(77) 4002-8922', '1995-07-24', '2021-06-16 04:33:12', NULL),
(5, 'João', '087.377.875-00', NULL, NULL, NULL, '2021-07-01 05:21:15', NULL),
(6, 'Lucas Silva', '58936578500', NULL, NULL, NULL, '2021-08-04 18:43:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra`
--

CREATE TABLE `compra` (
  `id` int(11) NOT NULL,
  `quantidade` int(11) DEFAULT 0,
  `valorTotal` float DEFAULT 0,
  `notaFiscal` varchar(44) DEFAULT NULL,
  `idFornecedor` int(11) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `edited` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `compra`
--

INSERT INTO `compra` (`id`, `quantidade`, `valorTotal`, `notaFiscal`, `idFornecedor`, `idFuncionario`, `created`, `edited`) VALUES
(1, 1, 30, '60d909e2b5ca7', 3, 1, '2021-06-27 23:29:38', NULL),
(2, 1, 30, '60d9fb520e323', 3, 1, '2021-06-28 16:39:46', NULL),
(3, 2, 180, '60dd51eb8a8f5', 3, 1, '2021-07-01 05:26:03', NULL),
(4, 1, 80, '60dd52203034e', 3, 1, '2021-07-01 05:26:56', NULL),
(5, 1, 120, '60dd54dd1cfda', 3, 4, '2021-07-01 05:38:37', NULL),
(6, 1, 180, '60dd5502bfe46', 3, 4, '2021-07-01 05:39:14', NULL),
(7, 2, 117, '60ddd597505a6', 3, 4, '2021-07-01 14:47:51', NULL),
(8, 1, 10, '6109c55161f66', 3, 4, '2021-08-03 22:38:09', NULL),
(9, 1, 30, '6109c67d1b9e5', 3, 4, '2021-08-03 22:43:09', NULL),
(10, 1, 50, '6109c77c1b5c3', 3, 4, '2021-08-03 22:47:24', NULL),
(11, 1, 10, '6109c955e78b3', 3, 4, '2021-08-03 22:55:17', NULL),
(12, 1, 10, '6109ca6371220', 3, 4, '2021-08-03 22:59:47', NULL),
(13, 1, 10, '6109cc3f15db6', 3, 4, '2021-08-03 23:07:43', NULL),
(14, 1, 10, '6109cc9063ed3', 3, 4, '2021-08-03 23:09:04', NULL),
(15, 1, 10, '6109cde8975f9', 3, 4, '2021-08-03 23:14:48', NULL),
(16, 1, 0, '6109e0d382ebf', 3, 4, '2021-08-04 00:35:31', NULL),
(17, 0, 0, '610adefb27b6e', 3, 4, '2021-08-04 18:39:55', NULL),
(18, 0, 0, '610ae0a8e6402', 3, 4, '2021-08-04 18:47:04', NULL),
(19, 0, 0, '610ae0eda40e2', 3, 4, '2021-08-04 18:48:13', NULL),
(20, 0, 0, '610b131a2eafe', 3, 4, '2021-08-04 22:22:18', NULL),
(21, 0, 0, '610b1362e89a3', 3, 4, '2021-08-04 22:23:30', NULL),
(22, 0, 0, '610b13af5d2eb', 3, 4, '2021-08-04 22:24:47', NULL),
(23, 0, 0, '610b141db9290', 3, 4, '2021-08-04 22:26:37', NULL),
(24, 0, 0, '610b14684e855', 3, 4, '2021-08-04 22:27:52', NULL),
(25, 0, 0, '610b14dd724db', 3, 4, '2021-08-04 22:29:49', NULL),
(26, 0, 0, '610b15ca345f4', 3, 4, '2021-08-04 22:33:46', NULL),
(27, 0, 0, '610b1610a78fe', 3, 4, '2021-08-04 22:34:56', NULL),
(28, 0, 0, '610b171cd4a94', 3, 4, '2021-08-04 22:39:24', NULL),
(29, 0, 0, '610b1b932ab0e', 3, 4, '2021-08-04 22:58:27', NULL),
(30, 0, 0, '610b1bb5c4714', 3, 4, '2021-08-04 22:59:01', NULL),
(31, 1, 0, '610b1ebd850f8', 3, 4, '2021-08-04 23:11:57', NULL),
(32, 1, 0, '610b205fb3bc3', 3, 4, '2021-08-04 23:18:55', NULL),
(33, 1, 0, '610b22653d7fd', 3, 4, '2021-08-04 23:27:33', NULL),
(34, 1, 85, '610b243462415', 3, 4, '2021-08-04 23:35:16', NULL),
(35, 1, 85, '610b251e05ee0', 3, 4, '2021-08-04 23:39:10', NULL),
(36, 1, 85, '610b259d50e35', 3, 4, '2021-08-04 23:41:17', NULL),
(37, 1, 0, '610b25ce201dd', 3, 4, '2021-08-04 23:42:06', NULL),
(38, 1, 80, '610b2c3584128', 3, 4, '2021-08-05 00:09:25', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `formapagamento`
--

CREATE TABLE `formapagamento` (
  `id` int(11) NOT NULL,
  `descricao` varchar(80) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `edited` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `formapagamento`
--

INSERT INTO `formapagamento` (`id`, `descricao`, `created`, `edited`) VALUES
(1, 'Dinheiro', '2021-06-16 04:33:12', NULL),
(2, 'Débito', '2021-06-16 04:33:12', NULL),
(3, 'Crédito', '2021-06-16 04:33:12', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cnpj` varchar(18) NOT NULL,
  `endereco` varchar(80) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `edited` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`id`, `nome`, `cnpj`, `endereco`, `telefone`, `email`, `created`, `edited`) VALUES
(3, 'José', '00.177.555/5555-70', NULL, NULL, 'jose@gmail.com', '2021-06-27 14:35:44', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `nivelAcesso` int(11) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `endereco` varchar(80) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL,
  `usuario` varchar(20) DEFAULT NULL,
  `senha` text DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `edited` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`id`, `nome`, `nivelAcesso`, `cpf`, `endereco`, `telefone`, `dataNascimento`, `usuario`, `senha`, `email`, `created`, `edited`) VALUES
(1, 'Aldo', 2, '152.786.879-02', '', '', '0000-00-00', 'aldo', 'b104ab9a0e58c861b9628208b3fecd58', 'aldo@gmail.com', '2021-06-16 03:52:04', NULL),
(4, 'Monalyza', 2, '082.588.588-00', 'Rua A', '(12) 34567-8900', '2000-02-18', 'monalyza', '202cb962ac59075b964b07152d234b70', 'monalyza@gmail.com', '2021-07-01 05:35:26', NULL),
(5, 'teste', 2, '589.365.785-00', '', '', '0000-00-00', 'teste', '698dc19d489c4e4db73e28a713eab07b', 'teste@gmail.com', '2021-08-05 12:43:01', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `ano` int(11) DEFAULT 0,
  `cor` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `quantidade` int(11) DEFAULT 0,
  `valorVenda` float DEFAULT 0,
  `valorCompra` float DEFAULT 0,
  `idCategoria` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `edited` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`id`, `nome`, `ano`, `cor`, `marca`, `quantidade`, `valorVenda`, `valorCompra`, `idCategoria`, `created`, `edited`) VALUES
(3, 'Fiat Uno', 2010, 'Preto', 'Fiat', 13, 85, 80, 0, '2021-06-27 03:25:44', NULL),
(4, 'Onix', 2020, 'Preto', 'onix', 4, 60, 0, 0, '2021-06-28 17:09:43', NULL),
(5, 'Jipe', 2015, 'Preto', 'Fiat', 6, 110, 115, 0, '2021-06-28 17:23:19', NULL),
(6, 'Argo', 2020, 'Preto', 'Fiat', 3, 200, 180, 0, '2021-07-01 05:36:50', NULL),
(7, 'Toro', 2020, 'vermelho', 'Fiat', 2, 150, 120, 0, '2021-07-01 05:37:48', NULL),
(8, 'carro', 2015, 'Preto', 'Fiat', 1, 30, 0, 0, '2021-08-02 22:44:24', NULL),
(10, 'Fiat Uno', 2015, 'Preto', 'Fiat', 6, 30, 0, 0, '2021-08-03 22:39:22', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtocompra`
--

CREATE TABLE `produtocompra` (
  `id` int(11) NOT NULL,
  `valorUnitario` float DEFAULT 0,
  `quantidade` int(11) DEFAULT 0,
  `valorTotal` float DEFAULT 0,
  `idProduto` int(11) DEFAULT NULL,
  `idCompra` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `edited` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtocompra`
--

INSERT INTO `produtocompra` (`id`, `valorUnitario`, `quantidade`, `valorTotal`, `idProduto`, `idCompra`, `created`, `edited`) VALUES
(1, 30, 1, 30, 3, 1, '2021-06-27 23:29:39', NULL),
(2, 30, 1, 30, 3, 2, '2021-06-28 16:39:46', NULL),
(3, 90, 2, 180, 5, 3, '2021-07-01 05:26:03', NULL),
(4, 80, 1, 80, 3, 4, '2021-07-01 05:26:56', NULL),
(5, 120, 1, 120, 7, 5, '2021-07-01 05:38:37', NULL),
(6, 180, 1, 180, 6, 6, '2021-07-01 05:39:14', NULL),
(7, 2, 1, 2, 3, 7, '2021-07-01 14:47:51', NULL),
(8, 115, 1, 115, 5, 7, '2021-07-01 14:47:51', NULL),
(9, 10, 1, 10, 3, 8, '2021-08-03 22:38:10', NULL),
(10, 30, 1, 30, 3, 9, '2021-08-03 22:43:09', NULL),
(11, 50, 1, 50, 3, 10, '2021-08-03 22:47:24', NULL),
(12, 10, 1, 10, 3, 11, '2021-08-03 22:55:17', NULL),
(13, 10, 1, 10, 4, 12, '2021-08-03 22:59:47', NULL),
(14, 10, 1, 10, 3, 13, '2021-08-03 23:07:43', NULL),
(15, 10, 1, 10, 3, 14, '2021-08-03 23:09:04', NULL),
(16, 10, 1, 10, 3, 15, '2021-08-03 23:14:48', NULL),
(17, 0, 1, 0, 3, 16, '2021-08-04 00:35:31', NULL),
(18, 0, 0, 0, 3, 17, '2021-08-04 18:39:55', NULL),
(19, 0, 0, 0, 3, 18, '2021-08-04 18:47:05', NULL),
(20, 0, 0, 0, 3, 19, '2021-08-04 18:48:13', NULL),
(21, 0, 0, 0, 3, 20, '2021-08-04 22:22:18', NULL),
(22, 0, 0, 0, 3, 21, '2021-08-04 22:23:31', NULL),
(23, 0, 0, 0, 3, 22, '2021-08-04 22:24:47', NULL),
(24, 0, 0, 0, 3, 23, '2021-08-04 22:26:37', NULL),
(25, 0, 0, 0, 3, 24, '2021-08-04 22:27:52', NULL),
(26, 0, 0, 0, 3, 25, '2021-08-04 22:29:49', NULL),
(27, 0, 0, 0, 3, 26, '2021-08-04 22:33:46', NULL),
(28, 0, 0, 0, 3, 27, '2021-08-04 22:34:56', NULL),
(29, 0, 0, 0, 4, 28, '2021-08-04 22:39:25', NULL),
(30, 0, 0, 0, 3, 29, '2021-08-04 22:58:27', NULL),
(31, 0, 0, 0, 4, 30, '2021-08-04 22:59:01', NULL),
(32, 0, 1, 0, 3, 31, '2021-08-04 23:11:57', NULL),
(33, 0, 1, 0, 3, 32, '2021-08-04 23:18:55', NULL),
(34, 0, 1, 0, 3, 33, '2021-08-04 23:27:33', NULL),
(35, 85, 1, 85, 3, 34, '2021-08-04 23:35:16', NULL),
(36, 85, 1, 85, 3, 35, '2021-08-04 23:39:10', NULL),
(37, 85, 1, 85, 3, 36, '2021-08-04 23:41:17', NULL),
(38, 0, 1, 0, 3, 37, '2021-08-04 23:42:06', NULL),
(39, 80, 1, 80, 3, 38, '2021-08-05 00:09:25', NULL);

--
-- Acionadores `produtocompra`
--
DELIMITER $$
CREATE TRIGGER `ProdutoCompraInsert` BEFORE INSERT ON `produtocompra` FOR EACH ROW BEGIN
    -- valorCompra (Produto) = valorUnitario (Compra)
    -- quantidade (Produto) += quantidade (ProdutoCompra)
        UPDATE Produto
            SET valorCompra = NEW.valorUnitario,
                quantidade = quantidade + NEW.quantidade
            WHERE id = NEW.idProduto;

    -- valorTotal (ProdutoCompra) - quantidade * valor unitario
            SET NEW.valorTotal = NEW.quantidade * NEW.valorUnitario;

    -- quantidade (Compra) += quantidade (ProdutoCompra)
    -- valorTotal (Compra) += valorTotal (ProdutoCompra)
        UPDATE Compra
            SET quantidade = quantidade + NEW.quantidade,
                valorTotal = valorTotal + NEW.valorTotal
            WHERE id = NEW.idCompra;
    --
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ProdutoCompraUpdate` BEFORE UPDATE ON `produtocompra` FOR EACH ROW BEGIN
    -- valorCompra (Produto) = valorUnitario (Compra)
        IF (NEW.created = (SELECT MAX(created) FROM ProdutoCompra WHERE idProduto = NEW.idProduto)) THEN
            UPDATE Produto
                SET valorCompra = NEW.valorUnitario
                WHERE id = NEW.idProduto;
        END IF;

    -- quantidade (Produto) += quantidade (ProdutoCompra)
        UPDATE Produto
            SET quantidade = quantidade - (OLD.quantidade - NEW.quantidade)
            WHERE id = NEW.idProduto;

    -- valorTotal (ProdutoCompra) - quantidade * valor unitario
        SET NEW.valorTotal = NEW.quantidade * NEW.valorUnitario;


    -- quantidade (Compra) += quantidade (ProdutoCompra)
    -- valorTotal (Compra) += valorTotal (ProdutoCompra)
        UPDATE Compra
            SET quantidade = quantidade - (OLD.quantidade - NEW.quantidade),
                valorTotal = valorTotal + OLD.valorTotal
            WHERE id = NEW.idCompra;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtopromocao`
--

CREATE TABLE `produtopromocao` (
  `id` int(11) NOT NULL,
  `valorDesconto` float NOT NULL,
  `idProduto` int(11) DEFAULT NULL,
  `idPromocao` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `edited` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtovenda`
--

CREATE TABLE `produtovenda` (
  `id` int(11) NOT NULL,
  `valorUnitario` float DEFAULT 0,
  `quantidade` int(11) DEFAULT 0,
  `valorTotal` float DEFAULT 0,
  `idProduto` int(11) DEFAULT NULL,
  `idVenda` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `edited` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtovenda`
--

INSERT INTO `produtovenda` (`id`, `valorUnitario`, `quantidade`, `valorTotal`, `idProduto`, `idVenda`, `created`, `edited`) VALUES
(1, 4.5, 1, 4.5, 1, 2, '2021-06-16 04:37:05', NULL),
(2, 23.5, 2, 47, 2, 2, '2021-06-16 04:37:05', NULL),
(3, 50, 1, 50, 3, 2, '2021-06-16 04:37:05', NULL),
(4, 30, 1, 30, 2, 3, '2021-06-27 23:28:35', NULL),
(5, 30, 1, 30, 3, 4, '2021-06-28 16:41:32', NULL),
(6, 110, 1, 110, 5, 5, '2021-07-01 05:24:01', NULL),
(7, 110, 1, 110, 5, 6, '2021-07-01 05:24:51', NULL),
(8, 85, 1, 85, 3, 7, '2021-07-01 14:52:41', NULL),
(9, 60, 1, 60, 4, 8, '2021-07-01 14:55:20', NULL),
(10, 85, 1, 85, 3, 8, '2021-07-01 14:55:21', NULL),
(11, 85, 1, 85, 3, 9, '2021-08-03 01:04:44', NULL),
(12, 85, 1, 85, 3, 10, '2021-08-03 01:09:16', NULL),
(13, 60, 1, 60, 4, 11, '2021-08-03 01:10:29', NULL),
(14, 85, 1, 85, 3, 12, '2021-08-03 22:38:57', NULL),
(15, 85, 1, 85, 3, 13, '2021-08-04 22:13:34', NULL),
(16, 85, 1, 85, 3, 14, '2021-08-04 22:16:05', NULL),
(17, 85, 1, 85, 3, 15, '2021-08-04 22:36:37', NULL),
(18, 85, 1, 85, 3, 16, '2021-08-04 23:44:16', NULL);

--
-- Acionadores `produtovenda`
--
DELIMITER $$
CREATE TRIGGER `ProdutoVendaInsert` BEFORE INSERT ON `produtovenda` FOR EACH ROW BEGIN

    -- valorUnitario (ProdutoVenda) = valorVenda (Produto) ou (Promoção produto)
    -- valorTotal (ProdutoVenda) = quantidade * valorUnitario
        SET NEW.valorUnitario = (SELECT 
                                    CASE
                                        WHEN
                                            pp.valorDesconto IS NOT NULL
                                                AND pr.dataInicio <= NOW()
                                                AND pr.dataFim >= NOW()
                                        THEN
                                            FORMAT((p.valorVenda - pp.valorDesconto),
                                                2)
                                        ELSE FORMAT(p.valorVenda, 2)
                                    END AS valorVenda
                                FROM
                                    Produto AS p
                                        LEFT JOIN
                                    ProdutoPromocao AS pp ON p.id = pp.idProduto
                                        LEFT JOIN
                                    Promocao AS pr ON pr.id = pp.idPromocao 
                                WHERE p.id = NEW.idProduto);
        SET NEW.valorTotal = NEW.quantidade * NEW.valorUnitario;

    -- quantidade (Produto) -= quantidade (ProdutoVenda)
        UPDATE Produto
        SET quantidade = quantidade - NEW.quantidade
        WHERE id = NEW.idProduto;
    -- quantidade (Venda) += quantidade(ProdutoVenda)
    -- valorTotal (Venda) += valorTotal (ProdutoVenda)
        UPDATE Venda
        SET quantidade = quantidade + NEW.quantidade,
            valorTotal = valorTotal + NEW.valorTotal
        WHERE id = NEW.idVenda;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `ProdutoVendaUpdate` BEFORE UPDATE ON `produtovenda` FOR EACH ROW BEGIN

    -- valorTotal (ProdutoVenda) = quantidade * valorUnitario
        SET NEW.valorTotal = NEW.quantidade * OLD.valorUnitario;
    -- quantidade (Produto) -= quantidade (ProdutoVenda)
        UPDATE Produto
        SET quantidade = quantidade + (OLD.quantidade - NEW.quantidade)
        WHERE id = NEW.idProduto;

    -- quantidade (Venda) += quantidade(ProdutoVenda)
    -- valorTotal (Venda) += valorTotal (ProdutoVenda)
        UPDATE Venda
        SET quantidade = quantidade - (OLD.QUANTIDADE - NEW.quantidade),
            valorTotal = valorTotal + OLD.valorTotal
        WHERE id = NEW.idVenda;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `promocao`
--

CREATE TABLE `promocao` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `dataInicio` date NOT NULL,
  `dataFim` date DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `edited` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `promocao`
--

INSERT INTO `promocao` (`id`, `nome`, `dataInicio`, `dataFim`, `created`, `edited`) VALUES
(1, 'Promoção', '2021-06-27', '2021-07-01', '2021-06-27 23:31:53', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `id` int(11) NOT NULL,
  `quantidade` int(11) DEFAULT 0,
  `valorTotal` float DEFAULT 0,
  `notaFiscal` varchar(44) DEFAULT NULL,
  `idCliente` int(11) DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  `idFormaPagamento` int(11) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `edited` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`id`, `quantidade`, `valorTotal`, `notaFiscal`, `idCliente`, `idFuncionario`, `idFormaPagamento`, `created`, `edited`) VALUES
(1, 0, 0, '60c9555baf751', 1, 1, 1, '2021-06-16 04:35:23', NULL),
(2, 4, 101.5, '60c955c100189', 1, 1, 1, '2021-06-16 04:37:05', NULL),
(3, 1, 30, '60d909a2d0ef8', 2, 1, 2, '2021-06-27 23:28:34', NULL),
(4, 1, 30, '60d9fbbca3de6', 2, 1, 1, '2021-06-28 16:41:32', NULL),
(5, 1, 110, '60dd5171d0a7e', 5, 1, 3, '2021-07-01 05:24:01', NULL),
(6, 1, 110, '60dd51a304126', 5, 1, 2, '2021-07-01 05:24:51', NULL),
(7, 1, 85, '60ddd6b918d1b', 5, 4, 1, '2021-07-01 14:52:41', NULL),
(8, 2, 145, '60ddd758bba7c', 2, 4, 3, '2021-07-01 14:55:20', NULL),
(9, 1, 85, '6108962cd3a7a', 5, 4, 1, '2021-08-03 01:04:44', NULL),
(10, 1, 85, '6108973bf27fa', 5, 4, 1, '2021-08-03 01:09:15', NULL),
(11, 1, 60, '6108978592ac3', 2, 4, 3, '2021-08-03 01:10:29', NULL),
(12, 1, 85, '6109c580e41cb', 5, 4, 1, '2021-08-03 22:38:56', NULL),
(13, 1, 85, '610b110eafed9', 5, 4, 1, '2021-08-04 22:13:34', NULL),
(14, 1, 85, '610b11a513111', 5, 4, 2, '2021-08-04 22:16:05', NULL),
(15, 1, 85, '610b1675431f6', 5, 4, 1, '2021-08-04 22:36:37', NULL),
(16, 1, 85, '610b26503ebeb', 5, 4, 1, '2021-08-04 23:44:16', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `formapagamento`
--
ALTER TABLE `formapagamento`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtocompra`
--
ALTER TABLE `produtocompra`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtopromocao`
--
ALTER TABLE `produtopromocao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtovenda`
--
ALTER TABLE `produtovenda`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `promocao`
--
ALTER TABLE `promocao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `formapagamento`
--
ALTER TABLE `formapagamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `produtocompra`
--
ALTER TABLE `produtocompra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `produtopromocao`
--
ALTER TABLE `produtopromocao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produtovenda`
--
ALTER TABLE `produtovenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `promocao`
--
ALTER TABLE `promocao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `venda`
--
ALTER TABLE `venda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
