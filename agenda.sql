-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14-Jul-2024 às 11:55
-- Versão do servidor: 10.4.32-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `agenda`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `color`
--

CREATE TABLE `color` (
  `color_id` int(5) NOT NULL,
  `nome_tipo` varchar(100) NOT NULL,
  `color` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `color`
--

INSERT INTO `color` (`color_id`, `nome_tipo`, `color`) VALUES
(1, 'Eventos Munícipais', '#ff0000'),
(2, 'Eventos Particulares', '#1b00eb'),
(3, 'Aniversários das Coletividades', '#ffc800'),
(4, 'Festas Populares', '#0f8f47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(220) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `local` varchar(720) NOT NULL,
  `obs` text DEFAULT NULL,
  `image` varchar(720) NOT NULL,
  `user_id` int(5) NOT NULL,
  `color_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `events`
--

INSERT INTO `events` (`id`, `title`, `start`, `end`, `local`, `obs`, `image`, `user_id`, `color_id`) VALUES
(1, 'Amb  Volleyball Cup 2024', '2024-07-01 00:00:00', '2024-07-07 23:59:00', 'Nave Polivalente de Espinho', '', 'uploads/1077/449522066_882039423949978_2684285105485008756_n.jpg', 1077, 1),
(2, 'Sem Espinhas – Almoço de Rua', '2024-07-07 12:00:00', '2024-07-07 16:00:00', 'Ruas de Espinho', '', '', 1048, 1),
(3, 'Encerramento 50º Festival Internacional de Música de Espinho – Concerto ', '2024-07-20 22:00:00', '2024-07-20 23:59:00', 'Praça Dr. José Salvador', 'OCE com Coro Sinfonico Inês de Castro e coro amvc', '', 1048, 1),
(4, 'Festival Tradições do Mundo', '2024-07-21 21:30:00', '2024-07-21 23:59:00', '', 'Org.: Ass. Folclore Concelho de Espinho', '', 1048, 1),
(5, 'All Sports Events', '2024-07-21 00:00:00', '2024-07-29 00:00:00', '', '', '', 1855, 1),
(6, 'Dia Mundial Prevenção do Afogamento', '2024-07-25 00:00:00', '2024-07-25 23:59:00', 'Praia da Baía', '', '', 1893, 1),
(7, 'All Sports Events – 3 X 3 Basketball', '2024-07-27 00:00:00', '2024-07-27 00:00:00', '', '', '', 1077, 1),
(9, '30 Aniversário Moto Clube Espinho - Concentração', '2024-07-26 00:00:00', '2024-07-28 23:59:00', 'Parque Municipal de Campismo de Espinho', 'Org.: Moto Clube de Espinho', '', 487, 3),
(10, '4º Edição “Pistons and Fins”', '2024-07-26 00:00:00', '2024-07-28 23:59:00', '', 'Org.: Backdoor', '', 1048, 1),
(11, 'Portugal Beach Handeball Tour', '2024-08-01 00:00:00', '2024-08-04 23:59:00', 'Praia da 37 / Marbelo', 'Org.: AMB / Div. Desporto e Juventude', '', 1889, 1),
(12, 'Amb Legends', '2024-08-07 00:00:00', '2024-08-11 23:59:00', '', 'Org.: AMB / Div. Desporto e Juventude', '', 1077, 1),
(13, 'Dia Internacional da Juventude', '2024-08-12 00:00:00', '2024-08-12 23:59:00', '', 'Org.: Div. Desporto e Juventude', '', 1077, 1),
(14, 'Caminhada do Desporto - Verão', '2024-08-18 10:00:00', '2024-08-18 12:00:00', '', 'Org.: Div. Desporto e Juventude', '', 1077, 1),
(15, 'Picadeiro 8', '2024-08-30 00:00:00', '2024-09-01 23:59:00', 'Avenida 8', '', '', 1048, 1),
(16, 'Festas N. Sr. D’Ajuda', '2024-09-07 00:00:00', '2024-09-21 23:59:00', 'Avenida 8', '', '', 1048, 4),
(17, 'Caminhada do Desporto', '2024-09-22 10:00:00', '2024-09-22 12:00:00', '', '', '', 1077, 1),
(18, 'Dia Mundial do Coração', '2024-09-29 10:00:00', '2024-09-29 12:00:00', '', '', '', 1048, 1),
(19, 'Festival “Mar – Marionetas”', '2024-10-11 00:00:00', '2024-10-27 23:59:00', '', '', '', 1855, 1),
(20, 'Caminhada do Desporto ', '2024-10-13 10:00:00', '2024-10-13 12:00:00', '', '', '', 1077, 1),
(21, 'Caminhada do Desporto - São Martinho', '2024-11-10 10:00:00', '2024-11-10 12:00:00', '', '', '', 1077, 1),
(22, 'Caminhada Do Desporto - Pai Natal', '2024-12-15 10:00:00', '2024-12-15 12:00:00', '', '', '', 1077, 1),
(23, 'Sem Espinhas – Rota dos Restaurantes', '2024-10-17 00:00:00', '2024-10-27 23:59:00', '', '', '', 1048, 1),
(24, ' Gala do Desporto', '2024-10-26 21:30:00', '2024-10-26 00:00:00', '', '', '', 1077, 1),
(25, 'Dia Mundial do Cinema da Juventude – Drive-In', '2024-11-05 00:00:00', '2024-11-05 23:59:00', 'Parque de estacionamento da Nave Polivalente de Espinho', '', '', 1855, 1),
(30, 'Corrida S. Silvestre', '2025-01-04 00:00:00', '2025-01-04 20:00:00', 'Ruas da Cidade', '', '', 1077, 1),
(31, 'Palavras do Amor', '2024-03-16 21:30:00', '2024-03-16 23:59:00', 'Centro Multimeios ', '', '', 1855, 1),
(32, 'Caminhada da Primavera', '2024-03-17 10:00:00', '2024-03-17 12:00:00', 'Ruas da Cidade', '', '', 1077, 1),
(33, 'Dia Internacional da Floresta', '2024-03-21 00:00:00', '2024-03-21 23:59:00', '', 'Org.: Serviço Proteção Civil', '', 487, 1),
(34, 'Comemoração do Dia do Pai', '2024-03-23 00:00:00', '2024-03-23 23:59:00', 'Praia da Baía', 'Org.: Moto Clube de Espinho', '', 1077, 1),
(35, 'Páscoa em Espinho', '2024-03-21 00:00:00', '2024-03-31 23:59:00', 'Parque João de Deus / Ruas da Cidade', '', '', 1048, 1),
(36, 'Comemorações Dia da Atividade Física', '2024-04-06 00:00:00', '2024-04-06 23:59:00', '', '', '', 1077, 1),
(37, 'Festival da Saúde', '2024-04-06 00:00:00', '2024-04-06 23:59:00', '', '', '', 487, 1),
(38, 'Comemorações 50 Anos do 25 de Abril', '2024-04-25 00:00:00', '2024-04-28 23:59:00', 'Ruas da Cidade', '', '', 1048, 1),
(39, 'Caminhada pela Liberdade', '2024-04-25 10:00:00', '2024-04-25 12:00:00', 'Ruas da Cidade', '', '', 1077, 1),
(40, 'Campeonato Nacional Pole & Aerial Sports', '2024-04-27 00:00:00', '2024-04-28 23:59:00', 'Pav. Napoleão Guerra', '', '', 1077, 1),
(42, 'Dia Internacional Associativismo Jovem', '2024-04-30 00:00:00', '2024-04-30 23:59:00', '', '', '', 1077, 1),
(43, 'Plogging Challenge Portugal 2024', '2024-05-01 00:00:00', '2024-05-01 23:59:00', 'Praias da Cidade', '', '', 1077, 1),
(44, 'Dia da Mulher Motociclista', '2024-05-04 00:00:00', '2024-05-04 23:00:00', 'Edifício Progresso', 'Moto Clube de Espinho', '', 1077, 1),
(45, 'Dia da Unidade do Regimento de Engenharia', '2024-05-04 00:00:00', '2024-05-06 00:00:00', 'Praia da Baía', 'Regimento de Engenharia N. 3', '', 487, 1),
(46, 'Concerto Dia da Unidade do Regimento de Engenharia', '2024-05-07 21:30:00', '2024-05-07 23:59:00', 'Av. Maia Brenha', '', '', 487, 1),
(47, 'Dia Da Unidade do Regimento de Engenharia', '2024-05-08 00:00:00', '2024-05-08 23:59:00', 'Av. Maia Brenha', 'Org.: Regimento de Engenharia N. 3', '', 487, 1),
(48, 'Dia Europeu Segurança Rodoviária ', '2024-05-09 00:00:00', '2024-05-10 00:00:00', '', 'Serviço Proteção Civil / PSP', '', 1048, 1),
(49, 'Caminhada Mês do Coração', '2024-05-12 10:00:00', '2024-05-12 12:00:00', 'Ruas da Cidade', '', '', 1077, 1),
(50, '4 Etapa Elite – Voleibol de Praia', '2024-05-22 00:00:00', '2024-05-27 00:00:00', 'Praia da Baía', '', '', 1077, 1),
(51, 'Dia Internacional do Brincar', '2024-05-28 09:00:00', '2024-05-28 17:00:00', '', '', '', 1077, 1),
(53, '2º Encontro de Boccia Séniores IPSS', '2024-05-29 09:00:00', '2024-05-29 19:00:00', 'Nave Polivalente de Espinho', '', '', 1077, 1),
(54, '2ª Conferência da Proteção Civil da Área Metropolitana do Porto', '2024-05-29 09:00:00', '2024-05-29 17:00:00', 'Centro Multimeios de Espinho', 'Org.: Serviço Proteção Civil ', '', 487, 1),
(55, 'Espinho GAMING’24', '2024-05-31 00:00:00', '2024-06-02 23:59:00', 'Centro Multimeios de Espinho', '', '', 1077, 1),
(56, 'Comemorações Dia Mundial Da Criança', '2024-05-31 00:00:00', '2024-05-31 23:59:00', '', '', '', 101, 1),
(57, 'Dia Mundial da Criança', '2024-06-01 00:00:00', '2024-06-03 00:00:00', 'Praça Dr. José Salvador', '', '', 1048, 1),
(58, 'Dia Mundial dos Oceanos – Operação Praia Limpa', '2024-06-08 09:00:00', '2024-06-08 21:00:00', 'Praias da Cidade', '', '', 1077, 1),
(59, 'Festand “Efe os Tigres”', '2024-06-09 00:00:00', '2024-06-10 00:00:00', 'Praça do Mar', 'Org.: Ass. “OsTigres”', '', 1048, 1),
(60, '14 a 14 de julho – FUNZONE “Campeonato Europeu de Futebol”', '2024-06-14 00:00:00', '2024-07-14 00:00:00', 'Praça Progresso', '', '', 1048, 1),
(61, 'Portugal  X Tchéquia', '2024-06-18 20:00:00', '2024-06-18 23:00:00', 'Praça do Mar', '', '', 1048, 1),
(62, 'Portugal  X França', '2024-07-05 20:00:00', '2024-07-05 22:00:00', ' Praça do Mar', '', '', 1048, 1),
(63, 'Turquia X Portugal ', '2024-06-22 17:00:00', '2024-06-22 19:00:00', 'Praça do Mar', '', '', 1048, 1),
(64, 'Portugal X Geórgia', '2024-06-26 20:00:00', '2024-06-26 22:00:00', 'Praça do Mar', '', '', 1048, 1),
(65, 'Abertura 50º Festival Internacional de Música de Espinho – Concerto Jazz', '2024-06-14 21:30:00', '2024-06-14 23:58:00', 'Praça Dr. José Salvador', 'Academia de Música de Espinho ', '', 1048, 1),
(66, '“Waves For All” - Surf', '2024-06-14 00:00:00', '2024-06-17 00:00:00', 'Praia da Baía', '', '', 1077, 1),
(67, '50º Festival Internacional de Música de Espinho - Concerto Mário Laginha', '2024-06-15 21:30:00', '2024-06-16 00:00:00', 'Praça Dr. José Salvador', 'Academia de Música de Espinho ', '', 1048, 1),
(68, 'Comemorações 51º Elevação Dia da Cidade', '2024-06-16 00:00:00', '2024-06-17 00:00:00', '', 'Org.: GAP', '', 1768, 1),
(69, 'Dia Internacional da Yoga', '2024-06-21 00:00:00', '2024-06-22 00:00:00', '', '', '', 1077, 1),
(70, 'Caminhada Desporto – Liga Portuguesa Contra Cancro', '2024-06-23 10:00:00', '2024-06-23 12:00:00', 'Ruas da Cidade', '', '', 1077, 1),
(71, 'Natal Espinho Oh Oh Oh', '2024-12-01 00:00:00', '2024-12-31 23:59:00', 'Praça Dr. José Salvador', '', '', 1048, 1),
(72, 'Desfile de Pais Natal', '2024-12-14 00:00:00', '2024-12-15 00:00:00', 'Ruas da Cidade', 'Org.: Moto Clube de Espinho', '', 1048, 1),
(73, 'Inauguração Luzes de Natal', '2024-11-23 18:00:00', '2024-11-23 23:00:00', 'Ruas da Cidade', '', '', 1048, 1),
(74, 'Pierre-Laurent Aimard e Anna Prohaska', '2024-07-19 22:00:00', '2024-07-20 00:00:00', 'Auditório de Espinho - Academia', '', 'uploads/1048/01.jpg', 1048, 2),
(75, 'Paisagens Imaginarias', '2024-07-14 11:03:00', '2024-07-14 13:00:00', 'Auditório de Espinho - Academia', '', 'uploads/1048/02.jpg', 1048, 2),
(76, 'Pulsat Percussion group', '2024-07-13 22:00:00', '2024-07-14 00:00:00', 'Auditório de Espinho - Academia', '', 'uploads/1048/03.jpg', 1048, 2),
(77, 'Dee dee Bridgewater Quarteto', '2024-07-22 22:00:00', '2024-07-23 00:00:00', 'Auditório de Espinho - Academia', '', 'uploads/1048/05.jpg', 1048, 2),
(78, 'Projeto de Saúde Sexual e Reprodutiva da Mulher', '2024-07-22 16:00:00', '2024-07-22 18:00:00', ' Centro de Saúde de Espinho', '', 'uploads/487/cartaz_plano_igualdade_mensal_nova_imagem_julho_01_1_1__343918648667bf41c367a1.jpg', 487, 2),
(79, 'Festas de São Tiago de Silvalde', '2024-07-25 00:00:00', '2024-07-29 23:59:00', 'Silvalde', '', 'uploads/1048/festastiagosilvalde2024__58225069667541b32f4e5.jpg', 1048, 4),
(80, 'Festa Nossa Sra do Mar', '2024-08-02 00:00:00', '2024-08-05 23:59:00', ' Silvalde', '', 'uploads/1048/festasramar2024_1194329882667545d9a06d9.jpg', 1048, 4),
(81, 'Pinturas do Silêncio', '2024-07-27 00:00:00', '2024-09-28 23:59:00', ' Museu Municipal de Espinho', '', 'uploads/101/cartaz_mas_nf_2_1731799978668513dab2b9c.jpg', 101, 1),
(82, 'Férias com a Cultura', '2024-07-01 14:30:00', '2024-07-12 16:00:00', 'Biblioteca Municipal e Museu Municipal', '', 'uploads/1855/ferias_museu_f_5301021866759054216c0.jpg', 1855, 1),
(83, 'Sissoko Segal Parisien Peirani', '2024-07-05 22:00:00', '2024-07-06 00:00:00', ' Auditório de Espinho - Academia', '', 'uploads/1048/cissoko_16482855596660791a4c3d5.jpg', 1048, 2),
(84, 'Paquito D\'Rivera ', '2024-07-06 22:00:00', '2024-07-07 00:00:00', 'Auditório de Espinho - Academia', '', 'uploads/1048/paquito_6570060526661be3c798d7.jpg', 1048, 2),
(85, 'SUNsetGo', '2024-07-06 18:00:00', '2024-07-07 00:00:00', ' Praia Pau da Manobra, Silvalde', '', 'uploads/1048/sunsetgo_985189558667d84972a5bf.png', 1048, 2),
(86, 'As Ideias Lunares do Lucca', '2024-07-06 16:00:00', '2024-07-06 17:00:00', ' Biblioteca Municipal José Marmelo e Silva', '', 'uploads/1855/copia_lancamento_1080_x_1350_px_20240620_101910_0000_1137121211667d90768e4d9.png', 1855, 1),
(87, '2ª Etapa Circuito Nacional de Longboard', '2024-07-06 10:00:00', '2024-07-08 16:00:00', 'Praia da Baía', '', '', 1077, 1),
(88, 'Avi Avital & Omer Klein', '2024-07-07 18:00:00', '2024-07-07 20:00:00', 'Auditório de Espinho - Academia', '', 'uploads/1048/avi_1944165546661c337ee812.jpg', 1048, 2),
(89, 'Hiromi\'s Sonicwonder', '2024-07-08 22:00:00', '2024-07-09 00:00:00', 'Auditório de Espinho - Academia', '', 'uploads/1048/hiromi_21234004706661c91301035.jpg', 1048, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `user_id` int(5) NOT NULL,
  `nome_login` varchar(252) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hash_session` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`user_id`, `nome_login`, `email`, `password`, `hash_session`) VALUES
(101, 'Armando Bouçon', 'armando.ribeiro@cm-espinho.pt', '', 0),
(482, 'José Fontelas', '', '', 0),
(487, 'Anabela Lourenço', 'anabela.lourenco@cm-espinho.pt', '', 0),
(1048, 'Ana Loureiro', 'ana.loureiro@cm-espinho.pt', '', 0),
(1077, 'José Gouveia', 'jose.gouveia@cm-espinho.pt', '', 0),
(1082, 'José Pinto', 'jose.pinto@cm-espinho.pt', '', 0),
(1214, 'Joana Alves', 'joana.alves@cm-espinho.pt', '', 0),
(1219, 'Liliana Ribeiro', 'liliana.ribeiro@cm-espinho.pt', 'b1d61b3ff8f979a108216e4e15a51a9e', 1),
(1262, 'Carlos Gaio', 'carlos.gaio@cm-espinho.pt', '', 0),
(1324, 'Juliana Silva', 'juliana.silva@cm-espinho.pt', '', 0),
(1600, 'Leonor Ledo Fonseca', 'leonor.fonseca@cm-espinho.pt', '', 0),
(1680, 'Claúdia Fidalgo', 'claudia.fidalgo@cm-espinho.pt', '', 0),
(1768, 'Maria Manuel Cruz', 'mariamanuel.cruz@cm-espinho.pt', '', 0),
(1771, 'Luís Canelas', 'luis.canelas@cm-espinho.pt', '', 0),
(1772, 'José Manuel Novo', 'jose.novo@cm-espinho.pt', '', 0),
(1855, 'Mário Cachada', 'mario.cachada@cm-espinho.pt', '', 0),
(1863, 'Lurdes Rebelo', 'lurdes.rebelo@cm-espinho.pt', '', 0),
(1864, 'Sérgio Morais', 'sergio.morais@cm-espinho.pt', '', 0),
(1866, 'Marta Silva', 'marta.silva@cm-espinho.pt', '', 0),
(1889, 'Joana Soares', 'joana.soares@cm-espinho.pt', '', 0),
(1890, 'Alda Lagoa', 'alda.lagoa@cm-espinho.pt', '', 0),
(1892, 'Mário Oliveira', 'mario.oliveira@cm-espinho.pt', '', 0),
(1893, 'João Carapeto', 'joao.carapeto@cm-espinho.pt', '', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`);

--
-- Índices para tabela `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `color_id` (`color_id`);

--
-- Índices para tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `color`
--
ALTER TABLE `color`
  MODIFY `color_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1894;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `events_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `login` (`user_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
