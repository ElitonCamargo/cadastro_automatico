-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 27-Set-2022 às 11:33
-- Versão do servidor: 8.0.27
-- versão do PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cadastro_automatizado`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
CREATE TABLE IF NOT EXISTS `pessoa` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `cpf` varchar(20) DEFAULT NULL,
  `rg` varchar(20) DEFAULT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `data_nasc` varchar(20) DEFAULT NULL,
  `idade` int DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `mae` varchar(100) DEFAULT NULL,
  `pai` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone_fixo` varchar(20) DEFAULT NULL,
  `celular` varchar(20) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `numero` varchar(10) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `pessoa`
--

INSERT INTO `pessoa` (`id`, `cpf`, `rg`, `nome`, `data_nasc`, `idade`, `sexo`, `mae`, `pai`, `email`, `telefone_fixo`, `celular`, `cep`, `endereco`, `numero`, `bairro`, `cidade`, `estado`) VALUES
(71, '937.647.145-81', '34.081.394-5', 'Letícia Evelyn Assis', '16/09/2000', 22, 'Feminino', 'Giovanna Cláudia Cecília', 'Theo Kaique Assis', 'leticia-assis95@hospitalprovisao.org.br', '(82) 2983-2091', '(82) 98643-1311', '57084-270', 'Rua Deputado Augusto de Freitas Machado', '202', 'Benedito Bentes', 'Maceió', 'AL'),
(72, '010.998.971-65', '45.033.268-8', 'Caleb Yago Martin Mendes', '15/01/1999', 23, 'Masculino', 'Lavínia Nina', 'Matheus Caio Matheus Mendes', 'caleb_mendes@iesa.com.br', '(82) 2644-6978', '(82) 99718-2814', '57071-083', 'Rua Santa Cecília', '155', 'Clima Bom', 'Maceió', 'AL'),
(73, '053.124.291-98', '19.533.929-0', 'Pietra Natália Amanda Assis', '13/02/1950', 72, 'Feminino', 'Manuela Agatha Luana', 'Pedro Luís Pietro Assis', 'pietra.natalia.assis@anbima.com.br', '(88) 3990-4190', '(88) 99112-5219', '63031-110', 'Rua Vinte e Um de Abril', '834', 'Tiradentes', 'Juazeiro do Norte', 'CE'),
(74, '028.718.914-78', '23.233.369-5', 'Betina Clara Ferreira', '05/01/1989', 33, 'Feminino', 'Louise Andreia', 'Theo Victor Ferreira', 'betina_ferreira@conexao.com', '(82) 2673-7498', '(82) 98152-7843', '57305-856', 'Rua Maria Quitéria dos Santos', '942', 'Zélia Barbosa Rocha', 'Arapiraca', 'AL'),
(75, '800.250.976-52', '10.614.281-1', 'Yasmin Beatriz da Silva', '27/05/1949', 73, 'Feminino', 'Stefany Daiane', 'Martin Bernardo Enrico da Silva', 'yasmin_dasilva@gruporeis.net', '(69) 2703-6278', '(69) 98550-9903', '76820-239', 'Rua Alexandre Guimarães', '718', 'Agenor de Carvalho', 'Porto Velho', 'RO'),
(76, '565.132.380-56', '19.377.364-8', 'Enrico Lucca Otávio Vieira', '04/07/1991', 31, 'Masculino', 'Louise Daniela Fátima', 'Victor Daniel Alexandre Vieira', 'enrico_lucca_vieira@slb.com', '(65) 2524-0940', '(65) 99231-4414', '78091-223', 'Rua Doze', '136', 'Liberdade', 'Cuiabá', 'MT'),
(77, '481.545.530-90', '17.088.182-9', 'Manuel Nathan Anderson Gomes', '10/02/1998', 24, 'Masculino', 'Tatiane Fabiana Larissa', 'Felipe Otávio Gomes', 'manuel-gomes74@thacconstrutora.com.br', '(92) 3579-2748', '(92) 98145-8251', '69151-641', 'Praça Gentil Belém', '917', 'Santa Clara', 'Parintins', 'AM'),
(78, '682.799.836-35', '24.212.720-4', 'Rafael Gustavo Tomás Barros', '08/03/1997', 25, 'Masculino', 'Daniela Lívia', 'Márcio Bryan Barros', 'rafael.gustavo.barros@oliveiraesouza.adv.br', '(11) 2998-5072', '(11) 99614-6095', '07417-600', 'Rua Eleazar Machado', '215', 'Pirituba', 'Arujá', 'SP'),
(79, '222.056.613-70', '24.891.718-3', 'Jorge Matheus Cardoso', '22/05/2000', 22, 'Masculino', 'Luna Larissa', 'Benjamin Otávio Cardoso', 'jorgematheuscardoso@vcp.com.br', '(47) 2957-1806', '(47) 98625-5387', '89280-310', 'Rua Lauro Muller', '552', 'Centro', 'São Bento do Sul', 'SC'),
(80, '104.387.222-13', '29.886.392-3', 'Fábio Daniel Benício Nascimento', '11/05/1965', 57, 'Masculino', 'Evelyn Melissa Sophia', 'Benjamin Ricardo Kaique Nascimento', 'fabio.daniel.nascimento@lidertel.com.br', '(67) 3751-1411', '(67) 98552-8800', '79901-242', 'Rua Cristóvão Colombo', '601', 'Jardim Ivone 1ª Seção', 'Ponta Porã', 'MS'),
(81, '954.937.535-88', '44.320.560-7', 'Theo André Ricardo da Rocha', '07/02/1983', 39, 'Masculino', 'Antonella Vanessa Alícia', 'João Osvaldo da Rocha', 'theo-darocha76@serteccontabil.com.br', '(81) 2937-9544', '(81) 99377-5113', '52130-382', 'Rua Vinte e Quatro de Outubro', '829', 'Fundão', 'Recife', 'PE'),
(82, '955.139.979-08', '26.063.262-4', 'Allana Luciana Ribeiro', '22/02/2002', 20, 'Feminino', 'Alícia Sophia Sarah', 'Breno Murilo Levi Ribeiro', 'allanalucianaribeiro@likaleal.com.br', '(82) 2981-3887', '(82) 99658-9122', '57313-855', 'Rua Costa Rica', '449', 'Brasília', 'Arapiraca', 'AL'),
(83, '324.208.653-83', '24.377.387-0', 'Bárbara Marina Ramos', '19/05/1942', 80, 'Feminino', 'Eliane Eloá Yasmin', 'Martin Calebe Ramos', 'barbara.marina.ramos@ceviu.com.br', '(91) 2738-7116', '(91) 98855-9853', '66822-450', 'Avenida Nossa Senhora do Perpétuo Socorro', '305', 'Águas Negras (Icoaraci)', 'Belém', 'PA'),
(84, '979.936.907-06', '34.794.541-7', 'Matheus Cauê Vicente Porto', '24/07/1965', 57, 'Masculino', 'Daniela Ana Joana', 'Nicolas Anderson Porto', 'matheus-porto83@htmail.com', '(65) 2843-8342', '(65) 99992-4462', '78053-365', 'Rua Cinco', '631', 'Morada do Ouro - Setor Centro Norte', 'Cuiabá', 'MT'),
(85, '968.825.153-44', '22.817.329-2', 'Márcio Tomás Victor Pinto', '08/06/1980', 42, 'Masculino', 'Isabelly Sarah', 'Ruan Otávio Pinto', 'marcio-pinto87@mectron.com.br', '(67) 3765-2640', '(67) 99603-8707', '79083-600', 'Rua da Divisão', '231', 'Jardim Aero Rancho', 'Campo Grande', 'MS'),
(86, '928.605.719-90', '31.223.612-8', 'Enzo Mário Alexandre Moraes', '16/07/2002', 20, 'Masculino', 'Helena Clara', 'Heitor Gael Roberto Moraes', 'enzo.mario.moraes@nogueiramoura.adv.br', '(96) 3540-6236', '(96) 98890-4261', '68901-080', 'Avenida Desidério Antônio Coelho', '923', 'Trem', 'Macapá', 'AP'),
(87, '749.741.462-38', '38.708.646-8', 'André Hugo Enrico da Mata', '12/03/2004', 18, 'Masculino', 'Silvana Mariane Sueli', 'Yago Giovanni da Mata', 'andre-damata89@uniube.br', '(84) 3627-8388', '(84) 98774-3446', '59035-515', 'Rua Baraúna', '511', 'Quintas', 'Natal', 'RN'),
(88, '585.567.094-51', '42.033.262-5', 'Bernardo Julio Pereira', '16/03/1943', 79, 'Masculino', 'Evelyn Andrea Olivia', 'Mateus Julio Pereira', 'bernardo_julio_pereira@buzatto.pro', '(93) 2532-8857', '(93) 99416-3313', '68040-571', 'Travessa Clementino de Assis', '830', 'Aparecida', 'Santarém', 'PA'),
(89, '006.256.617-29', '33.526.239-9', 'Vitor Calebe Raimundo Santos', '01/08/1984', 38, 'Masculino', 'Camila Fátima', 'Igor Heitor Santos', 'vitor.calebe.santos@chalu.com.br', '(68) 3959-8981', '(68) 98152-6654', '69912-473', 'Rua A', '378', 'Floresta Sul', 'Rio Branco', 'AC'),
(90, '449.204.541-47', '26.684.284-7', 'Márcia Ayla Antonella Almeida', '10/09/1992', 30, 'Feminino', 'Adriana Raquel Beatriz', 'Bento Tomás Almeida', 'marciaaylaalmeida@cafefrossard.com', '(98) 2865-4987', '(98) 98438-2357', '65055-020', 'Rua Elizabeth Kerth', '327', 'Jardim São Cristóvão', 'São Luís', 'MA'),
(91, '505.833.842-42', '22.614.655-8', 'Silvana Carla Rezende', '21/09/1966', 56, 'Feminino', 'Mariana Sandra', 'Ricardo Eduardo Marcos Vinicius Rezende', 'silvana-rezende89@rubens.adm.br', '(11) 3889-9918', '(11) 98608-0469', '08440-261', 'Travessa Júlio Tupy', '816', 'Vila Nancy', 'São Paulo', 'SP'),
(92, '769.664.691-57', '31.845.317-4', 'Bianca Rafaela da Costa', '13/03/1996', 26, 'Feminino', 'Sebastiana Beatriz Mariane', 'Edson Kevin da Costa', 'bianca_rafaela_dacosta@atrix.com.br', '(79) 2936-9358', '(79) 99567-9000', '49082-230', 'Rua Henrique Dias', '155', 'Novo Paraíso', 'Aracaju', 'SE'),
(93, '212.086.871-90', '17.792.534-6', 'Marli Bianca Sarah Rocha', '14/01/1993', 29, 'Feminino', 'Vanessa Elisa', 'Renato César Rocha', 'marlibiancarocha@zizafernandes.com', '(69) 2581-8015', '(69) 99145-5573', '76801-482', 'Travessa Aimoré', '979', 'Pedrinhas', 'Porto Velho', 'RO'),
(94, '434.670.122-13', '43.582.578-1', 'Murilo Mateus Freitas', '16/07/1962', 60, 'Masculino', 'Andrea Nina', 'Luan Tomás Freitas', 'murilo_freitas@tglaw.com.br', '(66) 2804-1498', '(66) 99824-4006', '78550-276', 'Avenida Governador Júlio Campos', '786', 'Setor Comercial', 'Sinop', 'MT'),
(95, '558.325.907-83', '22.141.037-5', 'Débora Pietra Gonçalves', '04/06/1961', 61, 'Feminino', 'Marina Bianca', 'Cauê Thiago Matheus Gonçalves', 'debora_goncalves@ft.unicamp.br', '(66) 3542-2915', '(66) 99331-4234', '78746-150', 'Rua L', '852', 'Jardim Maria Vetorasso', 'Rondonópolis', 'MT'),
(96, '187.427.438-00', '21.987.493-1', 'Marcos Juan Osvaldo Moura', '05/06/1963', 59, 'Masculino', 'Raimunda Sueli', 'Kauê Tomás Moura', 'marcos_moura@gmalato.com.br', '(71) 2704-2712', '(71) 99682-5990', '41200-705', 'Rua Mangueira da Engomadeira', '591', 'Engomadeira', 'Salvador', 'BA'),
(97, '868.813.775-76', '15.545.424-9', 'Andreia Mariana Fabiana Drumond', '02/03/1949', 73, 'Feminino', 'Evelyn Laura', 'Osvaldo Benedito Drumond', 'andreia_mariana_drumond@ibest.com.br', '(86) 2848-4184', '(86) 99749-4019', '64000-535', 'Rua Netinho da Flauta', '673', 'Cabral', 'Teresina', 'PI'),
(98, '554.210.416-97', '44.533.592-0', 'Melissa Helena Nogueira', '24/02/1984', 38, 'Feminino', 'Isadora Fabiana Carolina', 'Paulo Joaquim Nogueira', 'melissa-nogueira78@jeffersonbarroso.com.br', '(98) 3702-4030', '(98) 98240-5440', '65059-886', 'Travessa do Cajueiro', '117', 'Vila Vitória', 'São Luís', 'MA'),
(99, '068.924.828-80', '22.606.683-6', 'Andreia Flávia Martins', '24/04/1964', 58, 'Feminino', 'Sophie Patrícia Larissa', 'Luís Ian Martins', 'andreia.flavia.martins@renovacao.com.br', '(95) 3613-7346', '(95) 99894-5291', '69305-095', 'Rua Governador Aquilino Mota Duarte', '450', 'São Francisco', 'Boa Vista', 'RR'),
(100, '240.155.618-48', '11.817.462-9', 'Cláudio Henry Raul de Paula', '11/07/2002', 20, 'Masculino', 'Adriana Kamilly', 'Joaquim Nicolas de Paula', 'claudiohenrydepaula@akaer.com.br', '(67) 3988-9303', '(67) 98810-4105', '79415-970', 'Rua das Palmas, s/n', '487', 'Centro', 'Sonora', 'MS'),
(101, '921.418.096-22', '20.053.730-1', 'Daiane Rosângela Campos', '14/07/1984', 38, 'Feminino', 'Stella Bruna Mariane', 'Ruan Luan Ryan Campos', 'daiane_campos@jotace.eti.br', '(86) 3845-4462', '(86) 99279-0260', '64023-760', 'Avenida Presidente Getúlio Vargas', '182', 'Catarina', 'Teresina', 'PI');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
