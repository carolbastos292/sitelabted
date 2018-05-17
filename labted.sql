-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Fev-2018 às 04:53
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `labted`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `galeria`
--

CREATE TABLE `galeria` (
  `id_album` int(11) NOT NULL,
  `titulo_album` varchar(100) NOT NULL,
  `descricao_album` text NOT NULL,
  `capa` varchar(220) DEFAULT NULL,
  `ficheiro` varchar(220) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `galeria`
--

INSERT INTO `galeria` (`id_album`, `titulo_album`, `descricao_album`, `capa`, `ficheiro`, `created`, `modified`) VALUES
(14, 'teste1', '<p>dgsdfgdf</p>\r\n', 'f.jpg', 'Array', '2018-02-24 01:46:04', NULL),
(15, 'album2', '<p><strong><span style=\"color:rgb(0, 0, 0); font-family:open sans,arial,sans-serif; font-size:14px\">&quot;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&quot;</span></strong></p>\r\n', 'chuck_norris_walker.png', 'Array', '2018-02-24 01:51:39', '2018-02-24 01:52:37');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticias`
--

CREATE TABLE `noticias` (
  `id_noticia` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descricao_curta` text NOT NULL,
  `descricao_longa` text NOT NULL,
  `imagem` varchar(220) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticias`
--

INSERT INTO `noticias` (`id_noticia`, `titulo`, `descricao_curta`, `descricao_longa`, `imagem`, `created`, `modified`) VALUES
(4, 'Noticia2', 'Noticia2', 'Noticia2', 'T.JPG', '2018-02-15 22:25:27', '2018-02-16 08:43:17'),
(6, 'Noticia 3', 'descricao curta 2', 'Descricao Longaa 2', 'pe.png', '2018-02-16 00:25:54', '2018-02-16 00:26:09'),
(8, 'Noticia5', 'Isso Ã© uma descriÃ§Ã£o mt curta', '<p><span style=\"color:rgb(0, 0, 0); font-family:open sans,arial,sans-serif; font-size:14px\">&quot;But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?&quot;</span></p>\r\n\r\n<p><span style=\"color:rgb(0, 0, 0); font-family:open sans,arial,sans-serif; font-size:14px\"><img alt=\"laugh\" src=\"http://localhost/labted/adm/views/js/ckeditor/plugins/smiley/images/teeth_smile.png\" style=\"height:23px; width:23px\" title=\"laugh\" /></span></p>\r\n', 'chuck_norris_walker.png', '2018-02-24 02:09:54', '2018-02-24 02:10:43');

-- --------------------------------------------------------

--
-- Estrutura da tabela `publicacoes`
--

CREATE TABLE `publicacoes` (
  `id_pub` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `titulo` varchar(220) NOT NULL,
  `autor` varchar(220) NOT NULL,
  `dir_arquivo` varchar(300) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `publicacoes`
--

INSERT INTO `publicacoes` (`id_pub`, `ano`, `titulo`, `autor`, `dir_arquivo`, `created`, `modified`) VALUES
(11, 2222, 'pub', 'atre', 'TESTE.pdf', '2018-02-16 01:01:05', '2018-02-24 02:17:49'),
(14, 2015, 'Publicacao3', 'ane', 'TESTE2.pdf', '2018-02-24 02:12:18', '2018-02-24 02:17:21');

-- --------------------------------------------------------

--
-- Estrutura da tabela `repositorio`
--

CREATE TABLE `repositorio` (
  `id_repositorio` int(4) NOT NULL,
  `fk_tipo_rep` int(4) NOT NULL,
  `titulo` varchar(10) NOT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `repositorio`
--

INSERT INTO `repositorio` (`id_repositorio`, `fk_tipo_rep`, `titulo`, `imagem`) VALUES
(1, 4, 'mario', 'sfasdf'),
(2, 5, 'Como Jogar', 'sfasdf'),
(3, 7, 'Site LITE', 'sfasdf'),
(4, 4, 'CS', 'sfasdf'),
(6, 7, 'Site Labte', 'sfasdf'),
(7, 4, 'zelda', 'sdasdas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_repositorio`
--

CREATE TABLE `tipo_repositorio` (
  `id_rep` int(4) NOT NULL,
  `nome_tipo` varchar(10) NOT NULL,
  `tipo_arquivo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `tipo_repositorio`
--

INSERT INTO `tipo_repositorio` (`id_rep`, `nome_tipo`, `tipo_arquivo`) VALUES
(4, 'jogos', 'apk'),
(5, 'manuais', 'pdf'),
(7, 'software', 'rar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(120) NOT NULL,
  `login` varchar(120) NOT NULL,
  `senha` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `login`, `senha`, `created`, `modified`) VALUES
(1, 'ane', 'ane.bastos', '123', '2018-01-25 00:00:00', '2018-02-16 01:02:24'),
(4, 'adm', 'admin', '123', '2018-01-25 00:00:00', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `galeria`
--
ALTER TABLE `galeria`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_noticia`);

--
-- Indexes for table `publicacoes`
--
ALTER TABLE `publicacoes`
  ADD PRIMARY KEY (`id_pub`);

--
-- Indexes for table `repositorio`
--
ALTER TABLE `repositorio`
  ADD PRIMARY KEY (`id_repositorio`),
  ADD KEY `fk_repositorio` (`fk_tipo_rep`);

--
-- Indexes for table `tipo_repositorio`
--
ALTER TABLE `tipo_repositorio`
  ADD PRIMARY KEY (`id_rep`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `galeria`
--
ALTER TABLE `galeria`
  MODIFY `id_album` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `publicacoes`
--
ALTER TABLE `publicacoes`
  MODIFY `id_pub` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `repositorio`
--
ALTER TABLE `repositorio`
  MODIFY `id_repositorio` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tipo_repositorio`
--
ALTER TABLE `tipo_repositorio`
  MODIFY `id_rep` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `repositorio`
--
ALTER TABLE `repositorio`
  ADD CONSTRAINT `repositorio_ibfk_1` FOREIGN KEY (`fk_tipo_rep`) REFERENCES `tipo_repositorio` (`id_rep`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
