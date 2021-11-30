-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Nov-2021 às 13:23
-- Versão do servidor: 10.4.19-MariaDB
-- versão do PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbpi6`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `doenca`
--

CREATE TABLE `doenca` (
  `id_doenca` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `regiao_id` int(11) NOT NULL,
  `transmissao_id` int(11) NOT NULL,
  `historia_id` int(11) NOT NULL,
  `profilaxia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `doenca`
--

INSERT INTO `doenca` (`id_doenca`, `nome`, `descricao`, `regiao_id`, `transmissao_id`, `historia_id`, `profilaxia_id`) VALUES
(2, 'Doença de Chagas', 'A doença de Chagas (ou Tripanossomíase americana) é a infecção causada pelo protozoário Trypanosoma cruzi.\r\n\r\nApresenta uma fase aguda (doença de Chagas aguda – DCA) que pode ser sintomática ou não, e', 1, 1, 1, 1),
(3, 'Toxoplasmose\r\n', ' toxoplasmose é uma infecção causada por um protozoário chamado “Toxoplasma Gondii”, encontrado nas fezes de gatos e outros felinos, que pode se hospedar em humanos e outros animais. É causada pela in', 2, 2, 2, 2),
(4, 'Malária', 'A malária é uma doença infecciosa febril aguda, causada por protozoários transmitidos pela fêmea infectada do mosquito Anopheles.', 1, 3, 3, 3),
(5, 'Ascaridíase', 'A ascaridíase é a doença causada por vermes parasitas mais disseminada no pelo mundo. A infecção acontece pela ingestão dos ovos do verme Ascaris Lumbricoide, e é popularmente conhecida como lombriga.', 4, 4, 4, 4),
(6, 'Complexo Teníase-cisticercose', 'A teníase e a cisticercose são verminoses transmitidas pela Tênia. O complexo teníase/cisticercose é causado pela mesma espécie de cestódio, em fases diferentes do seu ciclo de vida.', 3, 5, 5, 5),
(7, 'Esquistossomose', 'É uma doença parasitária, diretamente relacionada ao saneamento precário, causada pelo Schistosoma mansoni. A pessoa adquire a infecção quando entra em contato com água doce onde existam caramujos inf', 5, 6, 6, 6),
(8, 'Criptosporidiose', 'Criptosporidiose é uma infecção pelo protozoário Cryptosporidium. O sintoma principal é diarreia aquosa, na maioria das vezes com outros sinais de distúrbios gastrintestinais.', 3, 7, 7, 7),
(9, 'Ancilostomose', 'A ancilostomíase, também chamada de ancilostomose e popularmente conhecida como amarelão, é uma parasitose intestinal que pode ser causada pelo parasita Ancylostoma duodenale ou pelo Necator americanu', 2, 8, 8, 8),
(10, ' Miíase', 'A miíase é uma infecção de pele causada pela presença de larvas de moscas. Na maioria das vezes, a região da pele onde a larva penetra, e pode se desenvolver por um período de 30 a 60 dias, assume um ', 1, 9, 9, 9),
(11, 'Peste bulbônica', 'A peste negra, também conhecida como peste bubônica ou simplesmente a Peste, é uma doença grave e muitas vezes fatal causada pela bactéria Yersinia pestis, que é transmitida através das pulgas de anim', 4, 10, 10, 10),
(12, 'Tungíase', 'Tungíase é uma parasitose causada por fêmeas grávidas de uma espécie de pulga, Tunga penetrans, que habita o solo de zonas arenosas. A contaminação ocorre quando o paciente pisa neste solo sem proteçã', 5, 11, 11, 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `historia`
--

CREATE TABLE `historia` (
  `id_historia` int(11) NOT NULL,
  `conteudo` varchar(5000) NOT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `historia`
--

INSERT INTO `historia` (`id_historia`, `conteudo`, `imagem`) VALUES
(1, 'O nome remetido a doença de Chagas é uma homenagem ao cientista que descobriu e\r\ndescreveu o primeiro caso comprovado desta enfermidade, o famoso Carlos Ribeiro\r\nJustiniano das Chagas. Formado no curso de medicina, com tese na doença Malária, logo\r\napós sua formatura começou a integrar a equipe de Oswaldo Cruz no estado de Minas Gerais.\r\nEste devido a sua aguçada curiosidade conseguiu descobrir em um primeiro momento uma\r\nnova espécie de tripanossoma, tal qual era transmitido via barbeiro para mamíferos, e\r\npossivelmente também para humanos.\r\nNo dia 14 de abril de 1909, Carlos Chagas relatou, uma menina febril de dois (2) anos\r\nde idade, a qual chamava Berenice, o primeiro caso Clínico de Chagas em humanos. No\r\nentanto, foi considerada a forma indeterminada da doença, isto é, assintomática. A paciente\r\nsó morreu aos 75 anos, após 73 anos da infecção. Contudo, devido a não possibilidade de\r\nnecrópsia, não podemos afirmar com exata precisão se o falecimento foi devido à doença de\r\nChagas, porém, todos os sintomas nos levam a conclusão que foi outras causas a sua morte e\r\nnão a enfermidade.\r\nAtualmente, a doença é considerada um problema médico-social grave em diversos países da\r\nAmérica Latina, inclusive o Brasil. A doença de Chagas atinge principalmente comunidades\r\ncarentes, que possuem condições de vida precárias. Apesar das pessoas com a doença\r\nconseguirem levar uma vida normal, os indivíduos infectados são alvos de preconceitos.\r\nAlém disso, como a doença pode levar a distúrbios cardíacos graves, de forma a\r\nimpossibilitar as pessoas de trabalharem, esse quadro pode levar a aposentadorias precoces,\r\nimpactando negativamente a previdência social.\r\n', '../assets/img/historia/img2.jpg'),
(2, 'O parasita Toxoplasma gondii, responsável por causar a doença foi isolado pela primeira vez\r\nem 1908 diretamente de um roedor africano. Na mesma época, no Brasil, Splendore isolou o\r\nmesmo parasita de coelhos. Porém, o ciclo desse parasita foi publicado apenas em 1970 por\r\nDubey e colaboradores.', '../assets/img/historia/img3.jpg'),
(3, 'A malária continua sendo um dos principais problemas de saúde pública mundialmente. A\r\npartir de dados aferidos pela Organização das Nações Unidas no ano de 2019, estima-se que a\r\nmalária matou no ano de 2018 mais de 405 mil pessoas em todo o mundo. Tal doença foi\r\nprimeiramente citada na era Pré–Cristã, por Hipócrates. Esta enfermidade pode ser chamada\r\nde paludismo, febre palustre, impaludismo, maleita ou sezão. Posteriormente nos primórdios\r\ndo século XIX que a denominação doença passou a ser Malária, pois, escritores italianos\r\nacreditavam que tal enfermidade era desencadeada por vapores nocivos providos dos\r\npântanos tiberianos “mal aria”, isto é, “mau ar”. Mas só o compilado de informações ao longo\r\ndo tempo levou as informações atuais, com a ajuda de médicos como Charles Louis Alphonse\r\n(1880); Gerhardt (1884); Golgi e Cols (1885,1891); Manson (1894); Ronald Ross (1897);\r\nGrassi, Bastianelli e Bignami (1898,1899), entre outros. Em 1955, iniciou-se o Programa de\r\nErradicação da Malária, desenvolvido pela Organização Mundial de Saúde (OMS).\r\nPosteriormente, em 1995, surgiu o plano de estratégia global da Malária, criado também pela\r\nOMS, que tem como cerne entender melhor sobre a doença e englobar toda sua\r\nproblematização nas atividades de serviços gerais da saúde, de maneira a compreender cada\r\nregião endêmica acometida por esta (ONU NEWS PERSPECTIVA GLOBAL\r\nREPORTAGENS HUMANAS, 2019).\r\n', '../assets/img/historia/img4.jpeg'),
(4, 'A Ascaris lumbricoides foi descrita por Linnaeus em 1758 e é o parasita que causa a doença\r\nchamada ascaridíase, muito conhecida popularmente como lombriga e infecta o intestino\r\ndelgado tanto de humano quanto de suínos. Esse parasito é encontrado em quase todos os\r\npaíses do mundo e ocorre em situações específicas de acordo com as condições ambientais,\r\nclimáticas e muito pela situação socioeconômica do local. No Brasil, as regiões mais afetadas\r\nsão as rurais.', '../assets/img/historia/img5.jpg'),
(5, 'Essas parasitoses são conhecidas a muito tempo. Em 1758 as duas espécies Taenia solium e\r\nT.saginata foram descrita por Linnaeus. Em 1885, Küchenmeister consegue provar através de\r\numa série de experimentos que o cisticerco presente em suínos da origem ao verme nos\r\nhumanos. Esses parasitas consistem em um grave problema de saúde pública, principalmente\r\nnos países mais pobres com condições precárias de saneamento básico.\r\n', '../assets/img/historia/img6.jpg'),
(6, 'Em 1852 Biiharz, verificou um parasita enquanto realizava uma necropsia de um homem.\r\nPosteriormente, ele foi denominado como Distomum haematobium. Mais adiante, em 1858 o\r\nestudioso Weinland determinou o gênero deste helminto como Schistosoma, por apresentar\r\numa fenda (schisto fenda; soma = corpo). Destacamos, que a ideia de fenda está equivocada,\r\npois, na realidade o sulco “fenda” é formado pelas extremidades laterais do macho, o qual se\r\ndobra no sentido ventral. Assim, só em 1907 que Sambon denominou a espécie Schistosoma\r\nmansoni. Porém, foi Pirajá da Silva, na Bahia, que confirmou realmente os comportamentos\r\ndessa espécie, mas a nomeação ficou a cargo de Sambon. Por fim, o ciclo biológico foi\r\ndescrito por Leiper no Egito e por Lutz no Brasil, em trabalhos que correram independentes.', '../assets/img/historia/img7.jpg'),
(7, 'A doença criptosporidiose é causada pelo agente etiológico do gênero Cryptosporidium, que\r\nfoi descrito em 1907 e atualmente conta com algumas espécies descritas. A transmissão desse\r\nparasito pode ocorrer de diversas formas, como de pessoa para pessoa, seja por um contato\r\ndireto ou mesmo indireto, assim como de um animal para uma pessoa, que requer um contato\r\ndireto, ou mesmo quando há a ingestão de água ou alimentos que tenham o parasita no\r\nestágio conhecido como oocisto.\r\n', '../assets/img/historia/img8.jpg'),
(8, 'Papiros egípcios de 1.600 A.C., já assinalavam a ocorrência da ancilostomose. Avicena,\r\nmédico persa que viveu no século X da nossa era, foi o primeiro a encontrar os vermes nos\r\nintestinos de doentes e responsabilizá-los pela anemia decorrente, por serem os mesmos\r\nsugadores de sangue. Na Europa era conhecida como Anemia dos Mineiros e no Brasil\r\nantigamente era nomeada de Amarelão. Foi um médico italiano (Dubini), em 1838 que\r\nencontrou no intestino de uma mulher autopsiada o verme causador da ancilostomose,\r\ndescrevendo-o com detalhes e dando o nome de Ancylostoma duodenale. Somente\r\nGriesinger, em 1851, demonstrou o papel patológico desse parasita.\r\nFoi o médico brasileiro, J. Rodrigues de Moura, em 1875, que defendendo as ideias de\r\nGriesinger, confirmou plenamente, a penetração das larvas do parasita pela pele e o abrigo\r\ndos mesmos no trato intestinal dos seus hospedeiros.', '../assets/img/historia/img9.jpg'),
(9, 'O termo Miíase tem sua etimologia “Myie = moscas; ase = doença”, isto é, enfermidade\r\ncausada por um animal/Mosca. De modo que, Miíase é a infecção em seres vertebrados vivos\r\npor larvas de dípteros (moscas), tais quais se alimentam do tecido vivo, substâncias corporais\r\nlíquidas ou do alimento consumido por esses hospedeiros. A grande diferença entre a Miíase\r\nPrimária/Obrigatória da Secundária/Facultativa, é que a primeira citada as moscas se\r\nalimentam de tecidos vivos, como tecidos cutâneos e subcutâneos de vários tipos de\r\nmamíferos, devido a esse fato foram/são conhecidas como biontófagas (anteriormente). Já a\r\nMiíase Secundária/Facultativa as moscas se alimentam de matéria orgânica em decomposição\r\n(vida livre), mas eventualmente podem alcançar tecidos necrosados de hospedeiros vivos.\r\nEstes organismos são nomeados como necrobiontófagas (anteriormente).', '../assets/img/historia/img10.png'),
(10, 'A peste bubônica/peste negra foi a pandemia que causou mais mortes no mundo, sendo que o\r\nnome “peste negra” se deu por causa das manchas escuras que os enfermos tinham. Seu início\r\nse deu na Ásia Central e se espalhou por todo mundo, seja pelos mares ou por terra, através\r\ndo seu agente etiológico (pulga). Nos países orientais, a peste teve cerca de 24 milhões de\r\nmortos, sendo que em 1348 a doença chegou no sul da França, mas apenas em 1349 que se\r\nespalhou na Europa, depois de ter chegado na Itália, e nesse continente é estimado que um\r\nterço da população não resistiu a doença.\r\nNessa situação de calamidade, as pessoas passaram a acreditar em explicações religiosas,\r\nchegando a perseguir os judeus, e a acreditar que tudo estava acontecendo por causa de um\r\ncastigo divino. Em meio ao caos, os médicos ficaram com medo de se contaminarem ao\r\ncuidarem dos enfermos, por isso passaram a usar trajes especiais, com uma máscara que\r\nparecia o bico de um corvo. As consequências desse período foram inúmeras, com a perda de\r\ngrandes propriedades pela morte das famílias, o que reduziu drasticamente a produção\r\nagrícola, causando assim escassez de alimentos, houve também a queda do domínio da Igreja\r\ne a ascensão da burguesia.\r\n', '../assets/img/historia/img11.jpg'),
(11, 'As rotas comerciais e marítimas permitiram a disseminação do parasita responsável por\r\ntransmitir a tungíase. Em seus primeiros registros, os espanhóis conheceram esse parasita\r\nquando Cristóvão Colombo chegou em Guanahani, em 12 de outubro de 1492. Apesar das\r\ninformações sobre surtos de tungíase serem raras, em 1863, tropas francesas enfrentaram\r\nproblemas com a doença na América do Norte. A tungíase apresenta alta prevalência no\r\nBrasil, ocorrendo desde a Região Norte até o Sul, predominando em locais com condições de\r\nsaneamento básico precários, áreas rurais e comunidades ribeirinhas. Não é considerada uma\r\nquestão de saúde pública, e dessa forma, faz parte das doenças negligenciadas.\r\n', '../assets/img/historia/img12.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `profilaxia`
--

CREATE TABLE `profilaxia` (
  `id_profilaxia` int(11) NOT NULL,
  `tipo` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `profilaxia`
--

INSERT INTO `profilaxia` (`id_profilaxia`, `tipo`) VALUES
(1, '● Melhorias nas condições de vida das pessoas;\r\n● Preservação da fauna e da flora;\r\n● Reformulação das estruturas da cultura agrária brasileira;\r\n● Educação sanitária brasileira;\r\n● Casas de alvenaria para população mais carentes (Poucos recursos financeiros);\r\n● Ampliar programas brasileiro de melhoria da habitação rural e urbanas de pessoas de\r\nbaixa renda - Ressaltamos que programas deste tipo não podem apresentar um caráter\r\nvertical, impondo à população um padrão de casa que não respeita seus hábitos,\r\nnecessidades e cultura.\r\n● Inseticidas eficientes, que promovem a curto prazo a eliminação do principal modo\r\nde transmissão;\r\n● Controle do doador de sangue: Sabendo-se que a transfusão sanguínea e o segundo\r\nmodo de transmissão de importância epidemiológica, a sua profilaxia é feita com\r\nbase nos seguintes critérios: seleção dos doadores por exames sorológicos (ELISA\r\nIUFI, RHA, RFC);\r\n● Controle de transmissão congênita:\r\n● Vacinação: a vacinação da doença de Chagas ainda está em fase de estudos, com\r\nresultados grandemente contraditórios e pouco promissores\r\n● Melhoria da habitação, com adequada higiene e limpeza da mesma;\r\n● Combate ao triatomíneo por meio de inseticidas e outros métodos auxiliares\r\n(combate biológico etc.);\r\n● Identificação e seleção dos doadores de sangue ou esterilização do sangue pela\r\nvioleta-de-genciana.\r\n'),
(2, '● Não se alimentar de carne crua ou malcozida;\r\n● Controlar a população de gatos nas cidades e no campo;\r\n● Alimentar os gatos com carne cozida ou seca ou ração de boa qualidade;\r\n● Incinerar as fezes dos gatos;\r\n● Proteger as caixas de areia para evitar que os gatos defequem nesse local;\r\n● Recomenda-se o exame pré-natal para toxoplasmose em todas as gestantes;\r\n'),
(3, 'Níveis individuais e coletivos.\r\n● Medidas de proteção individual:\r\nProfilaxia do contato– Evitar o contato do mosquito palha com a pele do humano;\r\n➔ Devido ao hábito noturno de alimentação deste mosquito, recomenda-se não se\r\naproximar de áreas de ocorrência deste inseto nos períodos do entardecer e do\r\namanhecer;\r\n➔ Uso de repelente nas partes expostas do corpo;\r\n➔ Telar portas e janelas;\r\n➔ Dormir com mosquiteiro.\r\nRessaltamos, que estas estratégias são recomendadas para pessoas que vivem em áreas\r\nendêmicas dessa doença. Todavia, muitas delas devido a vários fatores plausíveis econômicos\r\nnão conseguem cumprir todas essas recomendações necessárias.\r\n'),
(4, 'A profilaxia, ou seja, as formas de prevenção da doença são várias, são:\r\na eliminação dos ovos do parasita, que deve ser feito lavando bem os alimentos;\r\ninstalação de saneamento básico;\r\nproteger os locais com alimentos;\r\nágua contra insetos (que podem depositar os ovos do parasita) e a educação da população.'),
(5, '● Educação da população;\r\n● Não ingestão de carne crua ou malcozida;\r\n● Impedir o acesso dos animais às fezes humanas;\r\n● Saneamento básico;\r\n● Tratamento dos pacientes infectados;\r\n● Estimular melhorias no sistema de criação animal;\r\n● Inspeção rigorosa das carnes dos abatedouros;\r\n● Vacinação animal.\r\n'),
(6, '● Tratamento da população;\r\n● Quimioterapia em larga escala (oxamniquina) – Reduz a doença drasticamente nas\r\náreas endêmicas. No entanto, após alguns anos da suspensão do tratamento, a doença\r\nvolta rapidamente;\r\n● Educação sanitária;\r\n● Saneamento básico;\r\n● Redes de esgotos;\r\n● Tratamento de água;\r\n● Combate aos caramujos transmissores;\r\n● Produtos cercaricidas de uso tópico;\r\n● Substâncias aplicadas na pele que impedem a penetração da cercária- Não pode ser\r\nuso rotineiro (compostos podem ser absorvidos pela pele e causar efeitos tóxicos).'),
(7, 'A profilaxia, ou seja, as formas de prevenção das doenças são diversas, desde a utilização de\r\nprivadas, proteção dos locais que contenham água, outros cuidados com a higiene pessoal e\r\nlimpeza dos alimentos para que sejam eliminados os possíveis oocistos do parasito.\r\n'),
(8, 'Medidas sanitárias são essenciais para a prevenção da ancilostomose. Como medida\r\nindividual, deve-se evitar andar descalço em solos que podem estar contaminados. Além\r\ndisso, a educação da população é fundamental.'),
(9, '● Proteger áreas descobertas – Principalmente feridas abertas;\r\n● Retirada da larva com vaselina, quando a larva ainda está mais externamente na pele,\r\ne anestesia local para limpeza da área, quando a larva está em um quadro de infecção\r\ngeneralizada;\r\n● Saneamento básico;\r\n● Coleta de lixo;\r\n● Limpeza de estábulos;\r\n● Limpeza nos veículos de transporte de animais;\r\n● Aplicação de inseticidas.\r\n'),
(10, 'A principal forma de profilaxia é observar locais que existam foco de pulgas ou de ratos,\r\ncomo pilhas de entulho, lenha e lixo; ou mesmo não deixar alimentos que roedores podem ter\r\ncontato, além de sempre ter animais de estimação que não tenham pulgas.\r\nTransmissão:\r\nA principal forma de transmissão da peste bubônica é pela picada de pulgas, sendo que o\r\nhomem pode ser infectado por outros animais, como roedores silvestres que contenham essas\r\npulgas, ou mesmo se existe alguma lesão cutânea e a manipulação de um animal infectado. A\r\ntransmissão dessa doença também pode ocorrer de pessoa a pessoa, caso haja contato com o\r\npus do “bubão” (tumor inflamatório cutâneo).\r\n'),
(11, 'Medidas sanitárias são essenciais para a prevenção da tungíase ou bicho-de-pé. Como medida\r\nindividual, deve-se evitar andar descalço principalmente em solos contaminados com fezes\r\ncontendo fêmeas grávidas da pulga Tunga penetrans e uso de luvas ao manusear esterco.\r\nAlém disso, a educação da população é fundamental');

-- --------------------------------------------------------

--
-- Estrutura da tabela `regiao`
--

CREATE TABLE `regiao` (
  `id_regiao` int(11) NOT NULL,
  `nome_reg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `regiao`
--

INSERT INTO `regiao` (`id_regiao`, `nome_reg`) VALUES
(1, 'SUDESTE'),
(2, 'SUL'),
(3, 'CENTRO-OESTE'),
(4, 'NORTE'),
(5, 'NORDESTE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `transmissao`
--

CREATE TABLE `transmissao` (
  `id_transmissao` int(11) NOT NULL,
  `conteudo_trans` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `transmissao`
--

INSERT INTO `transmissao` (`id_transmissao`, `conteudo_trans`) VALUES
(1, 'O Trypanosoma Cruzi é transmitido via ato de alimentação do seu vetor (Mecanismo\r\nClássico de transmissão). De maneira, que este que denominamos popularmente como\r\n“Barbeiro” ao terminar de se alimentar, efetua o ato de defecar, de forma que libera os\r\nprotozoários, colocando-os em contato direto com a ferida da pele da vítima decorrida da\r\npicada anteriormente. Contudo, apesar de ser a transmissão vetorial clássica, existem outras\r\nformas de contaminação, como a de transfusão de sangue ou durante o período de gravidez,\r\nda mãe chagásica para seu filho. Além disso, a transmissão pode decorrer via alimentação,\r\npor meio de alimentos contaminados com os vetores triturados ou por seus dejetos. O\r\ndesmatamento pode agravar e ampliar muito a transmissão vetorial (AGÊNCIA FIOCRUZ\r\nDE NOTÍCIAS, 2013).\r\n'),
(2, 'As principais vias de transmissão da toxoplasmose são:\r\n● Via oral (ingestão de alimentos e água contaminados com cistos ou oocistos de\r\nToxoplasma gondii);\r\n● Congênita (transmitido de mãe para filho durante gestação), sendo raros os casos de\r\ntransmissão por inalação de aerossóis contaminados, inoculação acidental, transfusão\r\nsanguínea e transplante de órgãos.\r\n'),
(3, 'A transmissão é acometida via picada do mosquito fêmea do gênero Anopheles, quando este\r\nestá infectado pelo Plasmodium, que é um tipo de protozoário, tal qual pode ocasionar a\r\nMalária. Tais mosquitos são mais abundantes no período do entardecer e ao amanhecer.\r\nPorém, também são observados picando nos períodos noturnos, só que em menores\r\nproporções. Ressaltamos, que a Malária não pode ser transmitida por meio do consumo da\r\nágua, a qual também não possui um caráter contagioso, isto é, uma pessoa doente não é capaz\r\nde transmitir esta doença diretamente para outros indivíduos, sendo assim sempre necessário\r\no vetor para ocorrer tal ação (MINISTÉRIO DA SAÚDE, 2013/2021). Destacamos que os\r\nprimatas não humanos podem funcionar como um reservatório P. malariae.'),
(4, 'A transmissão dessa doença ocorre por meio da ingestão de alimentos ou água contaminados\r\npor um ovo do parasita, em um estágio específico o L3, ou seja, em um período específico do\r\ndesenvolvimento do parasita. Os sintomas irão depender da quantidade de parasitos e também\r\ndo seu estágio, por exemplo, na forma de larvas, a infecção afeta tanto o fígado quanto os\r\npulmões, já a forma adulta irá resultar em diversas ações que terão como consequência:\r\nsubnutrição, bloqueio no intestino, febre, entre outros.\''),
(5, 'Teníase: o hospedeiro definitivo (humanos) infecta-se ao ingerir carne suína ou bovina, crua\r\nou malcozida, infetada, respectivamente, pelo cisticerco de Taenia solium ou Taenia saginata.\r\nA cisticercose humana é adquirida pela ingestão acidental de ovos viáveis de Taenia solium\r\nque foram eliminados nas fezes de suínos e bovinos contaminados.'),
(6, 'Ocorre a penetração ativa da cercária na pele e na mucosa, esta ação ocorre mais nos pés e\r\nnas pernas, tal fato se deve por áreas que geralmente estão em contato direto com a água\r\ncontaminada. A agitação destes organismos na água, é constatado em grande quantidade no\r\nperíodo das 10:00 hrs da manhã às 16:00 hrs da tarde, quando a luz e o calor solar estão mais\r\nintensos.'),
(7, 'O principal local afetado é a mucosa gastrointestinal'),
(8, 'A doença ancilostomose é causada pelos parasitas Ancylostoma duodenale ou Necator\r\namericanus. A contaminação ocorre quando há contato direto da pele do hospedeiro com solo\r\ncontaminado ou por ingestão acidental das larvas presentes no ambiente. Após penetrar na\r\npele, a larva migra para os vasos sanguíneos, vai para o pulmão e de lá vai para a cavidade\r\noral e é deglutida, chegando no intestino delgado. Quando a transmissão ocorre por ingestão\r\nacidental, essa primeira parte do ciclo é ausente e o parasita vai diretamente para o trato\r\ngastrointestinal.'),
(9, 'Essa doença se desenvolve não a partir de ovos e sim de larvas. De modo que, as fêmeas são\r\nlarvíparas, e preferem depositar suas larvas em tecidos, como já mencionado. Assim, utilizam\r\ndessa fonte para se estruturarem. Após seu período de desenvolvimento, caem no chão e se\r\nenterram em uma terra fofa ou sob folhas, e só no verão saem como pupas, e volta novamente\r\neste ciclo. Lembrando que esses organismos dependem muito de questões de temperatura e\r\nquantidade de alimento disponível (NEVES, 2004).'),
(10, 'A transmissão da Peste na forma bubônica ocorre por meio da picada de pulgas infectadas. Na forma pneumônica, a transmissão se dá por gotículas aerógenas lançadas pela tosse no ambiente.'),
(11, 'A transmissão se dá quando a fêmea grávida da espécie de pulga Tunga penetrans, menor\r\nespécie de pulga conhecida (1mm), penetra na pele humana, quando essa pessoa pisa ou\r\nmanuseia solos contaminados sem proteção nos pés e nas mãos. A fêmea alimenta-se dos\r\nlíquidos e do sangue do hospedeiro e depois de 20 a 30 dias, libera os ovos para o exterior.');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `doenca`
--
ALTER TABLE `doenca`
  ADD PRIMARY KEY (`id_doenca`),
  ADD KEY `id_profilaxia` (`profilaxia_id`),
  ADD KEY `regiao_id` (`regiao_id`),
  ADD KEY `transmissao_id` (`transmissao_id`),
  ADD KEY `historia_id` (`historia_id`);

--
-- Índices para tabela `historia`
--
ALTER TABLE `historia`
  ADD PRIMARY KEY (`id_historia`);

--
-- Índices para tabela `profilaxia`
--
ALTER TABLE `profilaxia`
  ADD PRIMARY KEY (`id_profilaxia`);

--
-- Índices para tabela `regiao`
--
ALTER TABLE `regiao`
  ADD PRIMARY KEY (`id_regiao`);

--
-- Índices para tabela `transmissao`
--
ALTER TABLE `transmissao`
  ADD PRIMARY KEY (`id_transmissao`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `doenca`
--
ALTER TABLE `doenca`
  MODIFY `id_doenca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `historia`
--
ALTER TABLE `historia`
  MODIFY `id_historia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `profilaxia`
--
ALTER TABLE `profilaxia`
  MODIFY `id_profilaxia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `regiao`
--
ALTER TABLE `regiao`
  MODIFY `id_regiao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `transmissao`
--
ALTER TABLE `transmissao`
  MODIFY `id_transmissao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `doenca`
--
ALTER TABLE `doenca`
  ADD CONSTRAINT `doenca_ibfk_3` FOREIGN KEY (`profilaxia_id`) REFERENCES `profilaxia` (`id_profilaxia`),
  ADD CONSTRAINT `doenca_ibfk_5` FOREIGN KEY (`regiao_id`) REFERENCES `regiao` (`id_regiao`),
  ADD CONSTRAINT `doenca_ibfk_6` FOREIGN KEY (`transmissao_id`) REFERENCES `transmissao` (`id_transmissao`),
  ADD CONSTRAINT `doenca_ibfk_7` FOREIGN KEY (`historia_id`) REFERENCES `historia` (`id_historia`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
