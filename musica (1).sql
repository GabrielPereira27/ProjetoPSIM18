-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Dez-2020 às 00:46
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `musica`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `albuns`
--

CREATE TABLE `albuns` (
  `id_album` int(11) NOT NULL,
  `titulo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_genero` int(11) NOT NULL,
  `id_musico` int(11) DEFAULT NULL,
  `data_lancamento` date DEFAULT NULL,
  `observacoes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `albuns`
--

INSERT INTO `albuns` (`id_album`, `titulo`, `id_genero`, `id_musico`, `data_lancamento`, `observacoes`, `updated_at`, `created_at`) VALUES
(1, 'Pimba Na Irina', 1, 1, '2020-08-10', 'Este álbum tem 3 músicas, do estilo rap.', NULL, NULL),
(2, 'MortalFire', 2, 2, '2019-12-05', 'Este álbum tem 1 música, do estilo Rock.', NULL, NULL),
(3, 'Bang', 3, 3, '2020-11-14', 'Este álbum contém 5 músicas do estilo techno.', NULL, NULL),
(4, 'Gigantes', 4, 4, '2020-01-15', 'Este álbum tem 3 músicas, do estilo pop.', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `generos`
--

CREATE TABLE `generos` (
  `id_genero` int(11) NOT NULL,
  `designacao` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `observacoes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `generos`
--

INSERT INTO `generos` (`id_genero`, `designacao`, `observacoes`, `created_at`, `updated_at`) VALUES
(1, 'Rap', 'O genero é rap.', NULL, NULL),
(2, 'Rock', 'O genero é rock.', NULL, NULL),
(3, 'Techno', 'O genero é techno.', NULL, NULL),
(4, 'Pop', 'O genero é pop.', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `musicas`
--

CREATE TABLE `musicas` (
  `id_musica` int(11) NOT NULL,
  `titulo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_musico` int(11) DEFAULT NULL,
  `id_album` int(11) DEFAULT NULL,
  `id_genero` int(11) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `musicas`
--

INSERT INTO `musicas` (`id_musica`, `titulo`, `id_musico`, `id_album`, `id_genero`, `updated_at`, `created_at`) VALUES
(1, 'Ainda estou aqui', 1, 1, 1, NULL, NULL),
(2, 'Fire All Around', 2, 2, 2, NULL, NULL),
(3, 'BangBang', 3, 3, 3, NULL, NULL),
(4, 'Ultimo dia', 4, 4, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `musicos`
--

CREATE TABLE `musicos` (
  `id_musico` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nacionalidade` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_nascimento` datetime DEFAULT NULL,
  `fotografia` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `musicos`
--

INSERT INTO `musicos` (`id_musico`, `nome`, `nacionalidade`, `data_nascimento`, `fotografia`, `updated_at`, `created_at`) VALUES
(1, 'Faray2625', 'Portuguesa', '2009-11-04 13:32:20', '1.png', NULL, NULL),
(2, 'Queen', 'Inglesa', '2000-01-04 13:32:20', '2.png', NULL, NULL),
(3, 'Deborah De Luca', 'Italiana', '1089-06-09 13:32:20', '3.png', NULL, NULL),
(4, 'João Rodrigues', 'Portuguesa', '2000-05-25 13:32:20', '4.png', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `albuns`
--
ALTER TABLE `albuns`
  ADD PRIMARY KEY (`id_album`);

--
-- Índices para tabela `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id_genero`);

--
-- Índices para tabela `musicas`
--
ALTER TABLE `musicas`
  ADD PRIMARY KEY (`id_musica`);

--
-- Índices para tabela `musicos`
--
ALTER TABLE `musicos`
  ADD PRIMARY KEY (`id_musico`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `albuns`
--
ALTER TABLE `albuns`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `generos`
--
ALTER TABLE `generos`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `musicas`
--
ALTER TABLE `musicas`
  MODIFY `id_musica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `musicos`
--
ALTER TABLE `musicos`
  MODIFY `id_musico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
