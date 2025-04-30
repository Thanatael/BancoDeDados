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
-- Banco de dados: `infosports2`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `categoria_tb`
--

CREATE TABLE `categoria_tb` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `dataregistro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `categoria_tb`
--

INSERT INTO `categoria_tb` (`id`, `nome`, `dataregistro`) VALUES
(1, 'combate', '0000-00-00 00:00:00'),
(2, 'marca', '0000-00-00 00:00:00'),
(3, 'corrida', '0000-00-00 00:00:00'),
(4, 'invasao', '0000-00-00 00:00:00'),
(5, 'treino', '0000-00-00 00:00:00'),
(6, 'rede', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contato_tb`
--

CREATE TABLE `contato_tb` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` int(15) NOT NULL,
  `msg` longtext NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `imc_tb`
--

CREATE TABLE `imc_tb` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `peso` float NOT NULL,
  `altura` float NOT NULL,
  `imc` int(11) NOT NULL,
  `classificacao` varchar(255) NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `noticias`
--

CREATE TABLE `noticias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descricaocurta` longtext NOT NULL,
  `imagem` longtext NOT NULL,
  `categoria` varchar(255) NOT NULL,
  `descricao` longtext NOT NULL,
  `data` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `descricaocurta`, `imagem`, `categoria`, `descricao`, `data`) VALUES
(1, 'Boxe', 'Descubra a força interior e a técnica impecável necessáriaspara se               destacar no ringue. Desafie-se a superar seus               limites físicos e mentais enquanto aprende os segredos deste esporte de combate emocionante.', 'boxe.jpg', 'combate', 'O boxe é um esporte de combate que envolve o\r\n                        uso dos punhos para atacar e se defender. Tem origens antigas, remontando a\r\n                        civilizações como os sumérios e egípcios, mas sua forma moderna se desenvolveu no século XVIII\r\n                        na Inglaterra. O esporte\r\n                        se popularizou ao redor do mundo e é caracterizado pela sua combinação de técnica, força física,\r\n                        estratégia e condicionamento.\r\n\r\n                        Os competidores, chamados de pugilistas ou boxeadores, enfrentam-se em um ringue dividido em\r\n                        quadrados e delimitado por\r\n                        cordas. As lutas são divididas em rounds, com duração específica, e são supervisionadas por um\r\n                        árbitro. O objetivo é\r\n                        acertar o oponente com golpes limpos e válidos, enquanto se esquiva e se defende dos ataques\r\n                        recebidos.\r\n\r\n                        O boxe moderno é categorizado em diversas classes de peso, desde pesos mosca até pesos pesados,\r\n                        o que permite a participação de atletas de diferentes estaturas e pesos. Existem organizações\r\n                        internacionais que\r\n                        regulamentam o esporte e promovem campeonatos de prestígio, como a Associação Mundial de Boxe\r\n                        (WBA), o Conselho Mundial\r\n                        de Boxe (WBC) e a Federação Internacional de Boxe (IBF).\r\n\r\n                        Além da competição profissional, o boxe também é praticado como forma de exercício físico,\r\n                        defesa pessoal e disciplina\r\n                        mental. Muitos academias e clubes oferecem aulas para iniciantes, visando não apenas o\r\n                        condicionamento físico, mas\r\n                        também o desenvolvimento da autoconfiança e disciplina.\r\n\r\n                        Apesar de sua popularidade, o boxe também é um esporte controverso devido aos riscos associados\r\n                        às lesões cerebrais\r\n                        traumáticas decorrentes dos golpes na cabeça. Essa preocupação levou a diversas medidas de\r\n                        segurança e regulamentações\r\n                        para proteger a saúde dos atletas, como exames médicos rigorosos e regras específicas sobre\r\n                        golpes permitidos.\r\n\r\n                        Em resumo, o boxe é um esporte emocionante e desafiador que exige habilidade técnica,\r\n                        condicionamento físico e coragem\r\n                        dos seus praticantes. Ao longo dos anos, tem sido uma fonte de inspiração para muitos e continua\r\n                        a ser um dos esportes\r\n                        mais assistidos e praticados em todo o mundo.', '0000-00-00 00:00:00'),
(3, 'Crossfit', 'Entre na arena do crossfit e desafie seu corpo em um treinamento               intenso e variado que irá transformar sua força,               resistência e condicionamento físico. Supere seus limites e alcance novos patamares de desempenho.', 'crossfit.jpg', 'treino', 'Os treinos de CrossFit são conhecidos por sua diversidade, envolvendo uma ampla gama de\r\n                        exercícios funcionais realizados\r\n                        em alta intensidade e com períodos de descanso limitados. Os participantes podem esperar\r\n                        realizar exercícios como\r\n                        levantamento de peso, flexões, saltos, corridas, remadas, treinos com cordas e muitos outros\r\n                        movimentos variados.\r\n\r\n                        Uma das características distintivas do CrossFit é a ênfase na competição saudável e na superação\r\n                        pessoal. Os treinos são\r\n                        frequentemente cronometrados ou realizados por número de repetições, incentivando os\r\n                        participantes a desafiarem\r\n                        constantemente seus limites e a progredirem em sua forma física.\r\n\r\n                        O CrossFit é frequentemente praticado em academias especializadas, conhecidas como \"boxes\", onde\r\n                        os treinadores\r\n                        certificados oferecem orientação personalizada e motivam os participantes a alcançarem seus\r\n                        objetivos de condicionamento\r\n                        físico. Além disso, a comunidade CrossFit é conhecida por sua atmosfera de apoio e camaradagem,\r\n                        incentivando os membros\r\n                        a se apoiarem mutuamente em sua jornada de fitness.\r\n\r\n                        Os benefícios do CrossFit incluem melhoria da força, resistência, condicionamento\r\n                        cardiovascular, flexibilidade e\r\n                        agilidade. É uma abordagem eficaz para quem busca um programa de treinamento abrangente e\r\n                        desafiador, adaptável a\r\n                        pessoas de todos os níveis de condicionamento físico e habilidade atlética.\r\n\r\n                        No entanto, é importante praticar o CrossFit com cautela e seguir as orientações de segurança,\r\n                        especialmente ao realizar\r\n                        movimentos complexos ou de alta intensidade. Com uma abordagem equilibrada e focada na técnica\r\n                        adequada, o CrossFit pode\r\n                        ser uma forma gratificante e eficaz de atingir os objetivos de condicionamento físico e melhorar\r\n                        a saúde geral.', '0000-00-00 00:00:00'),
(8, 'Ski', 'Sinta a adrenalina das montanhas cobertas de neve enquanto desliza               pelas encostas em esportes como esqui e snowboard.               Prepare-se para a emoção de voar sobre a neve e dominar as pistas.', 'ski.jfif', 'marca', 'Os esportes na neve incluem uma variedade de\r\n                        atividades praticadas em ambientes gelados, como montanhas cobertas de\r\n                        neve. Estas atividades são populares em regiões com invernos rigorosos e oferecem uma mistura\r\n                        única de desafio físico,\r\n                        beleza natural e diversão ao ar livre.\r\n\r\n                        Alguns dos esportes mais populares praticados na neve incluem:\r\n\r\n                        Esqui alpino: Descer encostas cobertas de neve em esquis é uma prática que combina velocidade,\r\n                        habilidade e controle. Os\r\n                        praticantes podem se aventurar em pistas variadas, desde iniciantes até avançadas, desfrutando\r\n                        da adrenalina e da\r\n                        sensação de liberdade que o esqui proporciona.\r\n\r\n                        Snowboard: Similar ao esqui, o snowboard envolve deslizar sobre a neve, mas em uma prancha\r\n                        única, oferecendo uma\r\n                        experiência diferente e desafiadora. Os praticantes podem realizar manobras e saltos em\r\n                        half-pipes ou explorar a\r\n                        paisagem natural em pistas designadas.\r\n\r\n                        Esqui cross-country: Também conhecido como esqui nórdico, o esqui cross-country é uma forma de\r\n                        movimentação em terreno\r\n                        plano ou levemente inclinado. Os praticantes utilizam esquis mais estreitos e alongados,\r\n                        impulsionando-se com os\r\n                        bastões, e podem explorar vastas paisagens cobertas de neve.\r\n\r\n                        Patinação no gelo: Praticada em pistas de gelo, a patinação no gelo é uma atividade elegante e\r\n                        desafiadora que requer\r\n                        equilíbrio, coordenação e controle. Os praticantes podem realizar movimentos graciosos e\r\n                        acrobáticos, seja em uma pista\r\n                        indoor ou em lagos congelados.\r\n\r\n                        Biatlo: Esta é uma combinação de esqui cross-country e tiro ao alvo, onde os atletas competem em\r\n                        provas de velocidade na\r\n                        neve, intercaladas com sessões de tiro de precisão. O biatlo exige resistência física,\r\n                        habilidades de tiro e estratégia\r\n                        de corrida.\r\n\r\n                        Luge, bobsled e skeleton: Estes são esportes de velocidade praticados em pistas especialmente\r\n                        construídas, onde os\r\n                        competidores deslizam em trenós a alta velocidade. O luge é praticado deitado de costas, o\r\n                        bobsled é praticado em\r\n                        equipes de dois ou quatro atletas, e o skeleton é praticado deitado de bruços.\r\n\r\n                        Estes esportes na neve proporcionam uma experiência emocionante e desafiadora para praticantes\r\n                        de todos os níveis de\r\n                        habilidade, enquanto aproveitam a beleza e a serenidade dos ambientes cobertos de neve.', '0000-00-00 00:00:00'),
(9, 'Basquete', 'Drible, passe, arremesse! Junte-se ao emocionante mundo do basquete e               experimente a empolgação de jogar em equipe,               competir em partidas acirradas e fazer cestas incríveis.', 'basquete.jpg', 'invasao', 'O basquete é um esporte de equipe dinâmico e\r\n                        emocionante, jogado entre duas equipes de cinco jogadores cada, que buscam\r\n                        marcar pontos arremessando uma bola em uma cesta localizada no final de uma quadra. Originário\r\n                        dos Estados Unidos no\r\n                        final do século XIX, o basquete rapidamente se tornou um dos esportes mais populares do mundo.\r\n\r\n                        O objetivo do jogo é marcar pontos arremessando a bola através da cesta do adversário, enquanto\r\n                        se defende contra os\r\n                        ataques da equipe oponente. Os jogadores podem avançar pela quadra driblando a bola ou\r\n                        passando-a entre os companheiros\r\n                        de equipe. Estratégia, habilidade, agilidade e trabalho em equipe são fundamentais para o\r\n                        sucesso no basquete.\r\n\r\n                        As partidas são divididas em quartos (ou períodos), com duração determinada, e a equipe com mais\r\n                        pontos ao final do jogo\r\n                        é declarada vencedora. Durante o jogo, os jogadores competem por rebotes, roubos de bola e\r\n                        bloqueios, enquanto tentam\r\n                        superar a defesa adversária para marcar pontos.\r\n\r\n                        O basquete é conhecido por sua atmosfera vibrante e competitiva, tanto em níveis amadores quanto\r\n                        profissionais. Ligas\r\n                        profissionais, como a NBA (National Basketball Association) nos Estados Unidos, atraem milhões\r\n                        de fãs em todo o mundo e\r\n                        apresentam alguns dos melhores talentos do esporte.\r\n\r\n                        Além de ser um esporte emocionante de assistir e jogar, o basquete oferece uma série de\r\n                        benefícios para a saúde,\r\n                        incluindo melhoria da aptidão cardiovascular, desenvolvimento da coordenação e agilidade, e\r\n                        fortalecimento muscular. É\r\n                        também uma ótima maneira de construir amizades, desenvolver habilidades sociais e aprender\r\n                        lições valiosas sobre\r\n                        trabalho em equipe e resiliência.\r\n\r\n                        Em resumo, o basquete é muito mais do que apenas um jogo; é uma paixão compartilhada por milhões\r\n                        de pessoas em todo o\r\n                        mundo, que valorizam a competição, camaradagem e a emoção de ver uma bola passar pela rede.', '0000-00-00 00:00:00'),
(10, 'Corrida', 'Calce seus tênis e sinta a energia pulsante das corridas. Desafie-se               em diferentes distâncias, supere obstáculos e               descubra os benefícios incríveis para a saúde e o bem-estar que a corrida proporciona.', 'corrida.jpg', 'marca', 'A corrida é uma atividade física de movimento\r\n                        rápido realizada pelos seres humanos há milhares de anos. No contexto\r\n                        moderno, a corrida é praticada tanto como uma forma de exercício físico quanto como um esporte\r\n                        competitivo. Os\r\n                        corredores podem escolher entre uma variedade de distâncias, desde sprints curtos até maratonas\r\n                        e ultramaratonas,\r\n                        dependendo de seus objetivos e níveis de condicionamento físico.\r\n\r\n                        A corrida oferece uma série de benefícios para a saúde, incluindo o fortalecimento do sistema\r\n                        cardiovascular, a queima\r\n                        de calorias, o aumento da resistência e a melhoria da saúde mental. Além disso, é uma atividade\r\n                        acessível, que requer\r\n                        pouco equipamento além de um bom par de tênis e roupas confortáveis.\r\n\r\n                        Competições de corrida são realizadas em todo o mundo, variando em distância, terreno e formato.\r\n                        Desde corridas de rua\r\n                        até trilhas naturais e pistas de atletismo, há opções para corredores de todos os gostos e\r\n                        habilidades. Eventos como\r\n                        maratonas e meias maratonas atraem milhares de participantes e espectadores, oferecendo uma\r\n                        experiência única de\r\n                        camaradagem e superação pessoal.\r\n\r\n                        Além das competições formais, muitas pessoas correm por diversão, como parte de seus regimes de\r\n                        exercícios diários ou\r\n                        para arrecadar fundos para causas beneficentes. A corrida também pode ser uma forma de explorar\r\n                        novos lugares,\r\n                        conectar-se com a natureza e aliviar o estresse do dia a dia.\r\n\r\n                        Em resumo, a corrida é uma atividade versátil e acessível que oferece uma série de benefícios\r\n                        físicos, mentais e\r\n                        emocionais. Seja você um corredor experiente ou iniciante, há algo de gratificante e energizante\r\n                        em cruzar a linha de\r\n                        chegada e alcançar seus objetivos pessoais.', '0000-00-00 00:00:00'),
(11, 'Surf', 'Sinta a liberdade e a conexão com o mar enquanto desliza pelas ondas               no surf. Experimente a emoção de pegar a onda               perfeita, domine as técnicas e mergulhe no estilo de vida descontraído e vibrante do surf.', 'surf.jpg', 'marca', 'O surf é um esporte aquático praticado em\r\n                        pranchas de surf, onde os surfistas deslizam sobre as ondas do mar,\r\n                        aproveitando a energia e a força da água para realizar manobras emocionantes. Originário das\r\n                        antigas culturas\r\n                        polinésias, o surf moderno evoluiu ao longo dos séculos para se tornar uma atividade de lazer,\r\n                        competição e estilo de\r\n                        vida em todo o mundo.\r\n\r\n                        Os surfistas enfrentam desafios únicos ao tentar se equilibrar e pegar as ondas, requerendo\r\n                        habilidades de equilíbrio,\r\n                        coordenação e força física. Eles buscam ondas de diferentes tamanhos e formas, dependendo de seu\r\n                        nível de habilidade e\r\n                        preferências pessoais.\r\n\r\n                        Além de ser um esporte emocionante, o surf oferece uma conexão profunda com a natureza e uma\r\n                        sensação de liberdade ao\r\n                        deslizar sobre as ondas. Muitos surfistas encontram na prática uma forma de relaxamento,\r\n                        meditação e escape do estresse\r\n                        da vida cotidiana.\r\n\r\n                        O surf também é uma forma de expressão artística e cultural, com sua própria linguagem, estilo e\r\n                        comunidade global. É\r\n                        comum encontrar festivais de surf, competições profissionais e uma variedade de marcas e\r\n                        produtos relacionados ao estilo\r\n                        de vida surfista.\r\n\r\n                        Além disso, o surf promove a saúde e o bem-estar físico, pois oferece um excelente exercício\r\n                        cardiovascular, melhora o\r\n                        equilíbrio e fortalece os músculos centrais e das extremidades. Também desafia a mente, exigindo\r\n                        concentração, tomada de\r\n                        decisões rápidas e resiliência diante de condições variáveis do mar.\r\n\r\n                        Em resumo, o surf é muito mais do que um esporte; é uma paixão, uma cultura e um estilo de vida\r\n                        que atrai pessoas de\r\n                        todas as idades e origens. Com sua combinação única de desafio, aventura e conexão com a\r\n                        natureza, o surf continua a\r\n                        cativar e inspirar surfistas em todo o mundo.', '0000-00-00 00:00:00'),
(12, 'Trilha', 'Aventure-se pelos caminhos menos percorridos e descubra a beleza da               natureza enquanto se desafia em trilhas               emocionantes. Deixe a rotina para trás e explore novos horizontes ao ar livre.', 'trilha.jpg', 'marca', 'A trilha, também conhecida como hiking ou\r\n                        trekking, é uma atividade ao ar livre que envolve caminhar em trilhas\r\n                        naturais, explorando ambientes como florestas, montanhas, desertos e planícies. É uma forma de\r\n                        conexão com a natureza\r\n                        que proporciona uma variedade de benefícios físicos, mentais e emocionais.\r\n\r\n                        Durante uma trilha, os praticantes enfrentam desafios físicos enquanto percorrem terrenos\r\n                        variados e muitas vezes\r\n                        irregulares. Isso ajuda a fortalecer os músculos, aumentar a resistência cardiovascular e\r\n                        melhorar o equilíbrio e a\r\n                        coordenação.\r\n\r\n                        Além dos benefícios físicos, a trilha oferece uma oportunidade para relaxar a mente, reduzir o\r\n                        estresse e renovar o\r\n                        espírito. A imersão na natureza proporciona uma sensação de tranquilidade e serenidade,\r\n                        permitindo que os trilheiros\r\n                        desconectem-se das preocupações do dia a dia e apreciem o momento presente.\r\n\r\n                        A trilha também é uma forma de aventura e exploração, proporcionando a oportunidade de descobrir\r\n                        paisagens\r\n                        deslumbrantes, vida selvagem fascinante e locais históricos ou culturais. Cada trilha é uma\r\n                        experiência única, com\r\n                        desafios e recompensas próprias, tornando-a uma atividade emocionante e enriquecedora.\r\n\r\n                        É importante estar preparado ao embarcar em uma trilha, levando em consideração fatores como\r\n                        condições climáticas,\r\n                        equipamentos adequados, habilidades de navegação e segurança pessoal. Com o planejamento\r\n                        correto, a trilha pode ser uma\r\n                        experiência gratificante e memorável para todos os envolvidos.', '0000-00-00 00:00:00'),
(13, 'Tênis', 'Experimente a elegância e a velocidade do tênis, um esporte que               combina habilidade, estratégia e agilidade. Jogue com               paixão, vença com classe e desfrute da competição saudável em quadra.', 'tenis.jfif', 'rede', 'O tênis é um esporte praticado\r\n                        individualmente ou em duplas, onde os jogadores utilizam raquetes para rebater uma bola\r\n                        sobre uma quadra dividida ao meio por uma rede. Com raízes que remontam ao século XII na França,\r\n                        o tênis moderno evoluiu\r\n                        ao longo dos séculos para se tornar uma das atividades esportivas mais populares em todo o\r\n                        mundo.\r\n\r\n                        O objetivo do jogo é fazer com que a bola passe sobre a rede e caia dentro das linhas da quadra\r\n                        do adversário, ao mesmo\r\n                        tempo em que se evita que a bola rebatida pelo oponente alcance o chão dentro das próprias\r\n                        linhas. Isso requer uma\r\n                        combinação de habilidade, técnica, agilidade e estratégia.\r\n\r\n                        O tênis é praticado em diferentes superfícies, como grama, saibro, quadras duras e carpetes,\r\n                        cada uma com suas próprias\r\n                        características e desafios. As partidas podem ser disputadas em uma variedade de formatos, desde\r\n                        jogos individuais\r\n                        simples até torneios de grande escala, como os Grand Slam.\r\n\r\n                        Além de ser uma competição esportiva emocionante, o tênis oferece uma série de benefícios\r\n                        físicos e mentais para os\r\n                        praticantes. Ele ajuda a melhorar a coordenação motora, a resistência cardiovascular, a força\r\n                        muscular e a agilidade.\r\n                        Além disso, promove a socialização, o trabalho em equipe (no caso de partidas de duplas) e o\r\n                        desenvolvimento de\r\n                        habilidades mentais, como concentração, disciplina e estratégia.\r\n\r\n                        O tênis é um esporte acessível para pessoas de todas as idades e níveis de habilidade, podendo\r\n                        ser praticado\r\n                        recreativamente em clubes locais ou de forma mais competitiva em torneios profissionais. Com sua\r\n                        combinação única de\r\n                        desafio físico, mental e social, o tênis continua a atrair milhões de praticantes em todo o\r\n                        mundo.', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `registro_tb`
--

CREATE TABLE `registro_tb` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `login` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `registro_tb`
--

INSERT INTO `registro_tb` (`id`, `nome`, `email`, `telefone`, `login`, `senha`) VALUES
(1, 'Thyago', 'thyagoemailpontocom@gmail.com', '81 9 40028922', 'boloderolo6564', '5f6955d227a320c7f1f6c7da2a6d96a851a8118f'),
(2, 'Gabriel', 'xronin01@gmail.com', '81 9 7777-6666', 'xronin01', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(6, 'Thiago', 'tt@gmail.com', '81 9 3333-3333', 'Thanatael', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3'),
(70, 'Felipe', 'felipe@gmail.com', '12324', 'felipp', 'cd3f0c85b158c08a2b113464991810cf2cdfc387'),
(72, 'Tulio', 'tulio@gmail.com', '12323', 'tuliaoo', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(73, 'Juan', 'totoni@gmail.com', '81 9 2323-2323', 'Totoni', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(76, 'xavier', 'xaxier@gmail.com', '23123124', 'escuella', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(77, 'Thiago', 'thi@gmail.com', '81 9 8387-3422', 'Tha', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

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
-- Índices de tabela `noticias`
--
ALTER TABLE `noticias`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `contato_tb`
--
ALTER TABLE `contato_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `imc_tb`
--
ALTER TABLE `imc_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `registro_tb`
--
ALTER TABLE `registro_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
