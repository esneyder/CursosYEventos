-- phpMyAdmin SQL Dump
-- version 4.2.8
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 02-11-2014 a las 18:29:50
-- Versión del servidor: 5.6.20
-- Versión de PHP: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cursos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmciudades`
--

CREATE TABLE IF NOT EXISTS `tmciudades` (
  `IdDepartamento` char(2) COLLATE utf8_spanish_ci NOT NULL,
  `IdCiudad` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tmciudades`
--

INSERT INTO `tmciudades` (`IdDepartamento`, `IdCiudad`, `Descripcion`) VALUES
('00', '00', 'SIN CIUDAD'),
('05', '001', 'MEDELLÍN'),
('08', '001', 'BARRANQUILLA'),
('11', '001', 'BOGOTÁ, D.C.'),
('13', '001', 'CARTAGENA'),
('15', '001', 'TUNJA'),
('17', '001', 'MANIZALES'),
('18', '001', 'FLORENCIA'),
('19', '001', 'POPAYÁN'),
('20', '001', 'VALLEDUPAR'),
('23', '001', 'MONTERÍA'),
('25', '001', 'AGUA DE DIOS'),
('27', '001', 'QUIBDÓ'),
('41', '001', 'NEIVA'),
('44', '001', 'RIOHACHA'),
('47', '001', 'SANTA MARTA'),
('50', '001', 'VILLAVICENCIO'),
('52', '001', 'PASTO'),
('54', '001', 'CÚCUTA'),
('63', '001', 'ARMENIA'),
('66', '001', 'PEREIRA'),
('68', '001', 'BUCARAMANGA'),
('70', '001', 'SINCELEJO'),
('73', '001', 'IBAGUÉ'),
('76', '001', 'CALI'),
('81', '001', 'ARAUCA'),
('85', '001', 'YOPAL'),
('86', '001', 'MOCOA'),
('88', '001', 'SAN ANDRÉS'),
('91', '001', 'LETICIA'),
('94', '001', 'INÍRIDA'),
('95', '001', 'SAN JOSÉ DEL GUAVIARE'),
('97', '001', 'MITÚ'),
('99', '001', 'PUERTO CARREÑO'),
('05', '002', 'ABEJORRAL'),
('54', '003', 'ABREGO'),
('05', '004', 'ABRIAQUÍ'),
('13', '006', 'ACHÍ'),
('27', '006', 'ACANDÍ'),
('41', '006', 'ACEVEDO'),
('50', '006', 'ACACÍAS'),
('85', '010', 'AGUAZUL'),
('20', '011', 'AGUACHICA'),
('17', '013', 'AGUADAS'),
('20', '013', 'AGUSTÍN CODAZZI'),
('41', '013', 'AGRADO'),
('68', '013', 'AGUADA'),
('85', '015', 'CHAMEZA'),
('95', '015', 'CALAMAR'),
('41', '016', 'AIPE'),
('25', '019', 'ALBÁN'),
('52', '019', 'ALBÁN'),
('41', '020', 'ALGECIRAS'),
('68', '020', 'ALBANIA'),
('76', '020', 'ALCALÁ'),
('05', '021', 'ALEJANDRÍA'),
('15', '022', 'ALMEIDA'),
('19', '022', 'ALMAGUER'),
('52', '022', 'ALDANA'),
('73', '024', 'ALPUJARRA'),
('27', '025', 'ALTO BAUDÓ'),
('95', '025', 'EL RETORNO'),
('41', '026', 'ALTAMIRA'),
('73', '026', 'ALVARADO'),
('18', '029', 'ALBANIA'),
('05', '030', 'AMAGÁ'),
('13', '030', 'ALTOS DEL ROSARIO'),
('47', '030', 'ALGARROBO'),
('73', '030', 'AMBALEMA'),
('05', '031', 'AMALFI'),
('20', '032', 'ASTREA'),
('05', '034', 'ANDES'),
('25', '035', 'ANAPOIMA'),
('44', '035', 'ALBANIA'),
('05', '036', 'ANGELÓPOLIS'),
('52', '036', 'ANCUYÁ'),
('76', '036', 'ANDALUCÍA'),
('05', '038', 'ANGOSTURA'),
('05', '040', 'ANORÍ'),
('25', '040', 'ANOLAIMA'),
('76', '041', 'ANSERMANUEVO'),
('05', '042', 'SANTAFÉ DE ANTIOQUIA'),
('13', '042', 'ARENAL'),
('17', '042', 'ANSERMA'),
('73', '043', 'ANZOÁTEGUI'),
('05', '044', 'ANZA'),
('05', '045', 'APARTADÓ'),
('20', '045', 'BECERRIL'),
('66', '045', 'APÍA'),
('15', '047', 'AQUITANIA'),
('17', '050', 'ARANZAZU'),
('19', '050', 'ARGELIA'),
('27', '050', 'ATRATO'),
('05', '051', 'ARBOLETES'),
('15', '051', 'ARCABUCO'),
('52', '051', 'ARBOLEDA'),
('54', '051', 'ARBOLEDAS'),
('68', '051', 'ARATOCA'),
('13', '052', 'ARJONA'),
('25', '053', 'ARBELÁEZ'),
('47', '053', 'ARACATACA'),
('76', '054', 'ARGELIA'),
('05', '055', 'ARGELIA'),
('73', '055', 'ARMERO'),
('47', '058', 'ARIGUANÍ'),
('05', '059', 'ARMENIA'),
('20', '060', 'BOSCONIA'),
('13', '062', 'ARROYOHONDO'),
('81', '065', 'ARAUQUITA'),
('73', '067', 'ATACO'),
('23', '068', 'AYAPEL'),
('27', '073', 'BAGADÓ'),
('13', '074', 'BARRANCO DE LOBA'),
('19', '075', 'BALBOA'),
('27', '075', 'BAHÍA SOLANO'),
('66', '075', 'BALBOA'),
('27', '077', 'BAJO BAUDÓ'),
('68', '077', 'BARBOSA'),
('08', '078', 'BARANOA'),
('41', '078', 'BARAYA'),
('44', '078', 'BARRANCAS'),
('05', '079', 'BARBOSA'),
('23', '079', 'BUENAVISTA'),
('52', '079', 'BARBACOAS'),
('68', '079', 'BARICHARA'),
('68', '081', 'BARRANCABERMEJA'),
('52', '083', 'BELÉN'),
('05', '086', 'BELMIRA'),
('25', '086', 'BELTRÁN'),
('15', '087', 'BELÉN'),
('05', '088', 'BELLO'),
('17', '088', 'BELALCÁZAR'),
('66', '088', 'BELÉN DE UMBRÍA'),
('15', '090', 'BERBEO'),
('23', '090', 'CANALETE'),
('44', '090', 'DIBULLA'),
('05', '091', 'BETANIA'),
('15', '092', 'BETÉITIVA'),
('68', '092', 'BETULIA'),
('05', '093', 'BETULIA'),
('18', '094', 'BELÉN DE LOS ANDAQUÍES'),
('25', '095', 'BITUIMA'),
('15', '097', 'BOAVITA'),
('44', '098', 'DISTRACCIÓN'),
('25', '099', 'BOJACÁ'),
('27', '099', 'BOJAYA'),
('54', '099', 'BOCHALEMA'),
('19', '100', 'BOLÍVAR'),
('76', '100', 'BOLÍVAR'),
('05', '101', 'CIUDAD BOLÍVAR'),
('68', '101', 'BOLÍVAR'),
('15', '104', 'BOYACÁ'),
('15', '106', 'BRICEÑO'),
('05', '107', 'BRICEÑO'),
('15', '109', 'BUENAVISTA'),
('54', '109', 'BUCARASICA'),
('76', '109', 'BUENAVENTURA'),
('19', '110', 'BUENOS AIRES'),
('44', '110', 'EL MOLINO'),
('50', '110', 'BARRANCA DE UPÍA'),
('52', '110', 'BUESACO'),
('70', '110', 'BUENAVISTA'),
('63', '111', 'BUENAVISTA'),
('76', '111', 'GUADALAJARA DE BUGA'),
('05', '113', 'BURITICÁ'),
('76', '113', 'BUGALAGRANDE'),
('15', '114', 'BUSBANZÁ'),
('05', '120', 'CÁCERES'),
('25', '120', 'CABRERA'),
('68', '121', 'CABRERA'),
('76', '122', 'CAICEDONIA'),
('25', '123', 'CACHIPAY'),
('50', '124', 'CABUYARO'),
('70', '124', 'CAIMITO'),
('73', '124', 'CAJAMARCA'),
('05', '125', 'CAICEDO'),
('54', '125', 'CÁCOTA'),
('85', '125', 'HATO COROZAL'),
('25', '126', 'CAJICÁ'),
('76', '126', 'CALIMA'),
('54', '128', 'CACHIRÁ'),
('05', '129', 'CALDAS'),
('19', '130', 'CAJIBÍO'),
('63', '130', 'CALARCA'),
('76', '130', 'CANDELARIA'),
('15', '131', 'CALDAS'),
('41', '132', 'CAMPOALEGRE'),
('68', '132', 'CALIFORNIA'),
('05', '134', 'CAMPAMENTO'),
('15', '135', 'CAMPOHERMOSO'),
('27', '135', 'EL CANTÓN DEL SAN PABLO'),
('85', '136', 'LA SALINA'),
('08', '137', 'CAMPO DE LA CRUZ'),
('19', '137', 'CALDONO'),
('05', '138', 'CAÑASGORDAS'),
('85', '139', 'MANÍ'),
('13', '140', 'CALAMAR'),
('08', '141', 'CANDELARIA'),
('05', '142', 'CARACOLÍ'),
('19', '142', 'CALOTO'),
('05', '145', 'CARAMANTA'),
('05', '147', 'CAREPA'),
('68', '147', 'CAPITANEJO'),
('76', '147', 'CARTAGO'),
('05', '148', 'EL CARMEN DE VIBORAL'),
('25', '148', 'CAPARRAPÍ'),
('73', '148', 'CARMEN DE APICALÁ'),
('05', '150', 'CAROLINA'),
('18', '150', 'CARTAGENA DEL CHAIRÁ'),
('27', '150', 'CARMEN DEL DARIÉN'),
('50', '150', 'CASTILLA LA NUEVA'),
('25', '151', 'CAQUEZA'),
('68', '152', 'CARCASÍ'),
('73', '152', 'CASABIANCA'),
('05', '154', 'CAUCASIA'),
('25', '154', 'CARMEN DE CARUPA'),
('13', '160', 'CANTAGALLO'),
('27', '160', 'CÉRTEGUI'),
('68', '160', 'CEPITÁ'),
('47', '161', 'CERRO SAN ANTONIO'),
('97', '161', 'CARURU'),
('15', '162', 'CERINZA'),
('23', '162', 'CERETÉ'),
('68', '162', 'CERRITO'),
('85', '162', 'MONTERREY'),
('68', '167', 'CHARALÁ'),
('23', '168', 'CHIMÁ'),
('25', '168', 'CHAGUANÍ'),
('73', '168', 'CHAPARRAL'),
('68', '169', 'CHARTA'),
('47', '170', 'CHIVOLO'),
('66', '170', 'DOSQUEBRADAS'),
('05', '172', 'CHIGORODÓ'),
('15', '172', 'CHINAVITA'),
('54', '172', 'CHINÁCOTA'),
('17', '174', 'CHINCHINÁ'),
('54', '174', 'CHITAGÁ'),
('20', '175', 'CHIMICHAGUA'),
('25', '175', 'CHÍA'),
('15', '176', 'CHIQUINQUIRÁ'),
('68', '176', 'CHIMA'),
('20', '178', 'CHIRIGUANÁ'),
('25', '178', 'CHIPAQUE'),
('68', '179', 'CHIPATÁ'),
('15', '180', 'CHISCAS'),
('25', '181', 'CHOACHÍ'),
('23', '182', 'CHINÚ'),
('15', '183', 'CHITA'),
('25', '183', 'CHOCONTÁ'),
('15', '185', 'CHITARAQUE'),
('15', '187', 'CHIVATÁ'),
('13', '188', 'CICUCO'),
('15', '189', 'CIÉNEGA'),
('23', '189', 'CIÉNAGA DE ORO'),
('47', '189', 'CIÉNAGA'),
('05', '190', 'CISNEROS'),
('63', '190', 'CIRCASIA'),
('68', '190', 'CIMITARRA'),
('05', '197', 'COCORNÁ'),
('25', '200', 'COGUA'),
('73', '200', 'COELLO'),
('95', '200', 'MIRAFLORES'),
('52', '203', 'COLÓN'),
('15', '204', 'CÓMBITA'),
('70', '204', 'COLOSO'),
('18', '205', 'CURILLO'),
('27', '205', 'CONDOTO'),
('47', '205', 'CONCORDIA'),
('05', '206', 'CONCEPCIÓN'),
('41', '206', 'COLOMBIA'),
('54', '206', 'CONVENCIÓN'),
('52', '207', 'CONSACA'),
('68', '207', 'CONCEPCIÓN'),
('05', '209', 'CONCORDIA'),
('68', '209', 'CONFINES'),
('52', '210', 'CONTADERO'),
('68', '211', 'CONTRATACIÓN'),
('05', '212', 'COPACABANA'),
('13', '212', 'CÓRDOBA'),
('15', '212', 'COPER'),
('19', '212', 'CORINTO'),
('63', '212', 'CÓRDOBA'),
('25', '214', 'COTA'),
('15', '215', 'CORRALES'),
('52', '215', 'CÓRDOBA'),
('70', '215', 'COROZAL'),
('68', '217', 'COROMORO'),
('73', '217', 'COYAIMA'),
('15', '218', 'COVARACHÍA'),
('86', '219', 'COLÓN'),
('81', '220', 'CRAVO NORTE'),
('70', '221', 'COVEÑAS'),
('13', '222', 'CLEMENCIA'),
('15', '223', 'CUBARÁ'),
('50', '223', 'CUBARRAL'),
('54', '223', 'CUCUTILLA'),
('15', '224', 'CUCAITA'),
('25', '224', 'CUCUNUBÁ'),
('52', '224', 'CUASPUD'),
('85', '225', 'NUNCHÍA'),
('15', '226', 'CUÍTIVA'),
('50', '226', 'CUMARAL'),
('73', '226', 'CUNDAY'),
('52', '227', 'CUMBAL'),
('20', '228', 'CURUMANÍ'),
('68', '229', 'CURITÍ'),
('70', '230', 'CHALÁN'),
('85', '230', 'OROCUÉ'),
('15', '232', 'CHÍQUIZA'),
('52', '233', 'CUMBITARA'),
('70', '233', 'EL ROBLE'),
('76', '233', 'DAGUA'),
('05', '234', 'DABEIBA'),
('68', '235', 'EL CARMEN DE CHUCURÍ'),
('70', '235', 'GALERAS'),
('15', '236', 'CHIVOR'),
('73', '236', 'DOLORES'),
('05', '237', 'DONMATÍAS'),
('15', '238', 'DUITAMA'),
('20', '238', 'EL COPEY'),
('54', '239', 'DURANIA'),
('05', '240', 'EBÉJICO'),
('52', '240', 'CHACHAGÜÍ'),
('76', '243', 'EL ÁGUILA'),
('13', '244', 'EL CARMEN DE BOLÍVAR'),
('15', '244', 'EL COCUY'),
('41', '244', 'ELÍAS'),
('25', '245', 'EL COLEGIO'),
('27', '245', 'EL CARMEN DE ATRATO'),
('47', '245', 'EL BANCO'),
('50', '245', 'EL CALVARIO'),
('54', '245', 'EL CARMEN'),
('68', '245', 'EL GUACAMAYO'),
('76', '246', 'EL CAIRO'),
('18', '247', 'EL DONCELLO'),
('13', '248', 'EL GUAMO'),
('15', '248', 'EL ESPINO'),
('76', '248', 'EL CERRITO'),
('05', '250', 'EL BAGRE'),
('20', '250', 'EL PASO'),
('27', '250', 'EL LITORAL DEL SAN JUAN'),
('52', '250', 'EL CHARCO'),
('54', '250', 'EL TARRA'),
('68', '250', 'EL PEÑÓN'),
('76', '250', 'EL DOVIO'),
('85', '250', 'PAZ DE ARIPORO'),
('50', '251', 'EL CASTILLO'),
('52', '254', 'EL PEÑOL'),
('68', '255', 'EL PLAYÓN'),
('18', '256', 'EL PAUJIL'),
('19', '256', 'EL TAMBO'),
('52', '256', 'EL ROSARIO'),
('25', '258', 'EL PEÑÓN'),
('47', '258', 'EL PIÑON'),
('52', '258', 'EL TABLÓN DE GÓMEZ'),
('25', '260', 'EL ROSAL'),
('52', '260', 'EL TAMBO'),
('54', '261', 'EL ZULIA'),
('85', '263', 'PORE'),
('91', '263', 'EL ENCANTO'),
('05', '264', 'ENTRERRIOS'),
('68', '264', 'ENCINO'),
('70', '265', 'GUARANDA'),
('05', '266', 'ENVIGADO'),
('68', '266', 'ENCISO'),
('13', '268', 'EL PEÑÓN'),
('47', '268', 'EL RETÉN'),
('73', '268', 'ESPINAL'),
('25', '269', 'FACATATIVÁ'),
('50', '270', 'EL DORADO'),
('73', '270', 'FALAN'),
('68', '271', 'FLORIÁN'),
('15', '272', 'FIRAVITOBA'),
('17', '272', 'FILADELFIA'),
('63', '272', 'FILANDIA'),
('73', '275', 'FLANDES'),
('76', '275', 'FLORIDA'),
('15', '276', 'FLORESTA'),
('68', '276', 'FLORIDABLANCA'),
('25', '279', 'FOMEQUE'),
('44', '279', 'FONSECA'),
('85', '279', 'RECETOR'),
('25', '281', 'FOSCA'),
('05', '282', 'FREDONIA'),
('73', '283', 'FRESNO'),
('05', '284', 'FRONTINO'),
('25', '286', 'FUNZA'),
('50', '287', 'FUENTE DE ORO'),
('52', '287', 'FUNES'),
('25', '288', 'FÚQUENE'),
('47', '288', 'FUNDACIÓN'),
('19', '290', 'FLORENCIA'),
('25', '290', 'FUSAGASUGÁ'),
('15', '293', 'GACHANTIVÁ'),
('25', '293', 'GACHALA'),
('20', '295', 'GAMARRA'),
('25', '295', 'GACHANCIPÁ'),
('08', '296', 'GALAPA'),
('15', '296', 'GAMEZA'),
('68', '296', 'GALÁN'),
('25', '297', 'GACHETÁ'),
('41', '298', 'GARZÓN'),
('68', '298', 'GAMBITA'),
('15', '299', 'GARAGOA'),
('25', '299', 'GAMA'),
('13', '300', 'HATILLO DE LOBA'),
('19', '300', 'GUACHENÉ'),
('23', '300', 'COTORRA'),
('81', '300', 'FORTUL'),
('85', '300', 'SABANALARGA'),
('63', '302', 'GÉNOVA'),
('05', '306', 'GIRALDO'),
('41', '306', 'GIGANTE'),
('76', '306', 'GINEBRA'),
('25', '307', 'GIRARDOT'),
('68', '307', 'GIRÓN'),
('05', '308', 'GIRARDOTA'),
('05', '310', 'GÓMEZ PLATA'),
('20', '310', 'GONZÁLEZ'),
('25', '312', 'GRANADA'),
('05', '313', 'GRANADA'),
('50', '313', 'GRANADA'),
('54', '313', 'GRAMALOTE'),
('05', '315', 'GUADALUPE'),
('85', '315', 'SÁCAMA'),
('15', '317', 'GUACAMAYAS'),
('25', '317', 'GUACHETÁ'),
('52', '317', 'GUACHUCAL'),
('05', '318', 'GUARNE'),
('19', '318', 'GUAPI'),
('47', '318', 'GUAMAL'),
('50', '318', 'GUAMAL'),
('66', '318', 'GUÁTICA'),
('68', '318', 'GUACA'),
('76', '318', 'GUACARÍ'),
('41', '319', 'GUADALUPE'),
('73', '319', 'GUAMO'),
('25', '320', 'GUADUAS'),
('52', '320', 'GUAITARILLA'),
('68', '320', 'GUADALUPE'),
('86', '320', 'ORITO'),
('05', '321', 'GUATAPE'),
('15', '322', 'GUATEQUE'),
('25', '322', 'GUASCA'),
('68', '322', 'GUAPOTÁ'),
('52', '323', 'GUALMATÁN'),
('25', '324', 'GUATAQUÍ'),
('68', '324', 'GUAVATÁ'),
('15', '325', 'GUAYATÁ'),
('50', '325', 'MAPIRIPÁN'),
('85', '325', 'SAN LUIS DE PALENQUE'),
('25', '326', 'GUATAVITA'),
('68', '327', 'GÜEPSA'),
('25', '328', 'GUAYABAL DE SIQUIMA'),
('50', '330', 'MESETAS'),
('15', '332', 'GÜICÁN'),
('25', '335', 'GUAYABETAL'),
('25', '339', 'GUTIÉRREZ'),
('94', '343', 'BARRANCO MINAS'),
('54', '344', 'HACARÍ'),
('68', '344', 'HATO'),
('05', '347', 'HELICONIA'),
('54', '347', 'HERRÁN'),
('73', '347', 'HERVEO'),
('41', '349', 'HOBO'),
('73', '349', 'HONDA'),
('23', '350', 'LA APARTADA'),
('50', '350', 'LA MACARENA'),
('52', '352', 'ILES'),
('73', '352', 'ICONONZO'),
('05', '353', 'HISPANIA'),
('52', '354', 'IMUÉS'),
('19', '355', 'INZÁ'),
('52', '356', 'IPIALES'),
('41', '357', 'IQUIRA'),
('41', '359', 'ISNOS'),
('05', '360', 'ITAGUI'),
('05', '361', 'ITUANGO'),
('27', '361', 'ISTMINA'),
('15', '362', 'IZA'),
('05', '364', 'JARDÍN'),
('19', '364', 'JAMBALÓ'),
('76', '364', 'JAMUNDÍ'),
('15', '367', 'JENESANO'),
('05', '368', 'JERICÓ'),
('15', '368', 'JERICÓ'),
('25', '368', 'JERUSALÉN'),
('68', '368', 'JESÚS MARÍA'),
('50', '370', 'URIBE'),
('68', '370', 'JORDÁN'),
('08', '372', 'JUAN DE ACOSTA'),
('25', '372', 'JUNÍN'),
('27', '372', 'JURADÓ'),
('05', '376', 'LA CEJA'),
('15', '377', 'LABRANZAGRANDE'),
('25', '377', 'LA CALERA'),
('54', '377', 'LABATECA'),
('68', '377', 'LA BELLEZA'),
('76', '377', 'LA CUMBRE'),
('41', '378', 'LA ARGENTINA'),
('44', '378', 'HATONUEVO'),
('52', '378', 'LA CRUZ'),
('05', '380', 'LA ESTRELLA'),
('15', '380', 'LA CAPILLA'),
('17', '380', 'LA DORADA'),
('52', '381', 'LA FLORIDA'),
('20', '383', 'LA GLORIA'),
('66', '383', 'LA CELIA'),
('52', '385', 'LA LLANADA'),
('54', '385', 'LA ESPERANZA'),
('68', '385', 'LANDÁZURI'),
('25', '386', 'LA MESA'),
('17', '388', 'LA MERCED'),
('05', '390', 'LA PINTADA'),
('52', '390', 'LA TOLA'),
('19', '392', 'LA SIERRA'),
('25', '394', 'LA PALMA'),
('41', '396', 'LA PLATA'),
('19', '397', 'LA VEGA'),
('68', '397', 'LA PAZ'),
('25', '398', 'LA PEÑA'),
('54', '398', 'LA PLAYA'),
('52', '399', 'LA UNIÓN'),
('05', '400', 'LA UNIÓN'),
('20', '400', 'LA JAGUA DE IBIRICO'),
('50', '400', 'LEJANÍAS'),
('66', '400', 'LA VIRGINIA'),
('70', '400', 'LA UNIÓN'),
('76', '400', 'LA UNIÓN'),
('85', '400', 'TÁMARA'),
('15', '401', 'LA VICTORIA'),
('63', '401', 'LA TEBAIDA'),
('25', '402', 'LA VEGA'),
('15', '403', 'LA UVITA'),
('76', '403', 'LA VICTORIA'),
('52', '405', 'LEIVA'),
('54', '405', 'LOS PATIOS'),
('91', '405', 'LA CHORRERA'),
('68', '406', 'LEBRIJA'),
('15', '407', 'VILLA DE LEYVA'),
('25', '407', 'LENGUAZAQUE'),
('91', '407', 'LA PEDRERA'),
('73', '408', 'LÉRIDA'),
('18', '410', 'LA MONTAÑITA'),
('85', '410', 'TAURAMENA'),
('05', '411', 'LIBORINA'),
('52', '411', 'LINARES'),
('73', '411', 'LÍBANO'),
('27', '413', 'LLORÓ'),
('23', '417', 'LORICA'),
('19', '418', 'LÓPEZ'),
('52', '418', 'LOS ANDES'),
('54', '418', 'LOURDES'),
('68', '418', 'LOS SANTOS'),
('70', '418', 'LOS PALMITOS'),
('23', '419', 'LOS CÓRDOBAS'),
('44', '420', 'LA JAGUA DEL PILAR'),
('08', '421', 'LURUACO'),
('05', '425', 'MACEO'),
('15', '425', 'MACANAL'),
('27', '425', 'MEDIO ATRATO'),
('68', '425', 'MACARAVITA'),
('25', '426', 'MACHETA'),
('52', '427', 'MAGÜI'),
('70', '429', 'MAJAGUAL'),
('13', '430', 'MAGANGUÉ'),
('25', '430', 'MADRID'),
('27', '430', 'MEDIO BAUDÓ'),
('44', '430', 'MAICAO'),
('85', '430', 'TRINIDAD'),
('91', '430', 'LA VICTORIA'),
('68', '432', 'MÁLAGA'),
('08', '433', 'MALAMBO'),
('13', '433', 'MAHATES'),
('17', '433', 'MANZANARES'),
('52', '435', 'MALLAMA'),
('08', '436', 'MANATÍ'),
('25', '436', 'MANTA'),
('25', '438', 'MEDINA'),
('05', '440', 'MARINILLA'),
('13', '440', 'MARGARITA'),
('66', '440', 'MARSELLA'),
('85', '440', 'VILLANUEVA'),
('13', '442', 'MARÍA LA BAJA'),
('15', '442', 'MARIPÍ'),
('17', '442', 'MARMATO'),
('20', '443', 'MANAURE'),
('73', '443', 'SAN SEBASTIÁN DE MARIQUITA'),
('17', '444', 'MARQUETALIA'),
('68', '444', 'MATANZA'),
('17', '446', 'MARULANDA'),
('73', '449', 'MELGAR'),
('19', '450', 'MERCADERES'),
('27', '450', 'MEDIO SAN JUAN'),
('50', '450', 'PUERTO CONCORDIA'),
('15', '455', 'MIRAFLORES'),
('19', '455', 'MIRANDA'),
('66', '456', 'MISTRATÓ'),
('13', '458', 'MONTECRISTO'),
('18', '460', 'MILÁN'),
('47', '460', 'NUEVA GRANADA'),
('91', '460', 'MIRITI - PARANÁ'),
('73', '461', 'MURILLO'),
('15', '464', 'MONGUA'),
('23', '464', 'MOMIL'),
('68', '464', 'MOGOTES'),
('15', '466', 'MONGUÍ'),
('23', '466', 'MONTELÍBANO'),
('05', '467', 'MONTEBELLO'),
('13', '468', 'MOMPÓS'),
('68', '468', 'MOLAGAVITA'),
('15', '469', 'MONIQUIRÁ'),
('63', '470', 'MONTENEGRO'),
('13', '473', 'MORALES'),
('19', '473', 'MORALES'),
('25', '473', 'MOSQUERA'),
('52', '473', 'MOSQUERA'),
('70', '473', 'MORROA'),
('05', '475', 'MURINDÓ'),
('15', '476', 'MOTAVITA'),
('18', '479', 'MORELIA'),
('05', '480', 'MUTATÁ'),
('15', '480', 'MUZO'),
('52', '480', 'NARIÑO'),
('54', '480', 'MUTISCUA'),
('05', '483', 'NARIÑO'),
('25', '483', 'NARIÑO'),
('41', '483', 'NÁTAGA'),
('73', '483', 'NATAGAIMA'),
('17', '486', 'NEIRA'),
('25', '486', 'NEMOCÓN'),
('25', '488', 'NILO'),
('25', '489', 'NIMAIMA'),
('05', '490', 'NECOCLÍ'),
('13', '490', 'NOROSÍ'),
('52', '490', 'OLAYA HERRERA'),
('15', '491', 'NOBSA'),
('25', '491', 'NOCAIMA'),
('27', '491', 'NÓVITA'),
('15', '494', 'NUEVO COLÓN'),
('05', '495', 'NECHÍ'),
('17', '495', 'NORCASIA'),
('27', '495', 'NUQUÍ'),
('76', '497', 'OBANDO'),
('54', '498', 'OCAÑA'),
('68', '498', 'OCAMONTE'),
('15', '500', 'OICATÁ'),
('23', '500', 'MOÑITOS'),
('68', '500', 'OIBA'),
('05', '501', 'OLAYA'),
('68', '502', 'ONZAGA'),
('41', '503', 'OPORAPA'),
('73', '504', 'ORTEGA'),
('25', '506', 'VENECIA'),
('52', '506', 'OSPINA'),
('15', '507', 'OTANCHE'),
('70', '508', 'OVEJAS'),
('15', '511', 'PACHAVITA'),
('97', '511', 'PACOA'),
('17', '513', 'PÁCORA'),
('19', '513', 'PADILLA'),
('25', '513', 'PACHO'),
('15', '514', 'PÁEZ'),
('15', '516', 'PAIPA'),
('19', '517', 'PAEZ'),
('20', '517', 'PAILITAS'),
('15', '518', 'PAJARITO'),
('25', '518', 'PAIME'),
('41', '518', 'PAICOL'),
('54', '518', 'PAMPLONA'),
('08', '520', 'PALMAR DE VARELA'),
('52', '520', 'FRANCISCO PIZARRO'),
('54', '520', 'PAMPLONITA'),
('73', '520', 'PALOCABILDO'),
('76', '520', 'PALMIRA'),
('15', '522', 'PANQUEBA'),
('68', '522', 'PALMAR'),
('70', '523', 'PALMITO'),
('17', '524', 'PALESTINA'),
('25', '524', 'PANDI'),
('41', '524', 'PALERMO'),
('68', '524', 'PALMAS DEL SOCORRO'),
('99', '524', 'LA PRIMAVERA'),
('25', '530', 'PARATEBUENO'),
('41', '530', 'PALESTINA'),
('91', '530', 'PUERTO ALEGRÍA'),
('15', '531', 'PAUNA'),
('19', '532', 'PATÍA'),
('15', '533', 'PAYA'),
('19', '533', 'PIAMONTE'),
('68', '533', 'PÁRAMO'),
('25', '535', 'PASCA'),
('91', '536', 'PUERTO ARICA'),
('15', '537', 'PAZ DE RÍO'),
('52', '540', 'POLICARPA'),
('91', '540', 'PUERTO NARIÑO'),
('05', '541', 'PEÑOL'),
('17', '541', 'PENSILVANIA'),
('47', '541', 'PEDRAZA'),
('15', '542', 'PESCA'),
('05', '543', 'PEQUE'),
('47', '545', 'PIJIÑO DEL CARMEN'),
('68', '547', 'PIEDECUESTA'),
('73', '547', 'PIEDRAS'),
('19', '548', 'PIENDAMÓ'),
('41', '548', 'PITAL'),
('63', '548', 'PIJAO'),
('08', '549', 'PIOJÓ'),
('13', '549', 'PINILLOS'),
('68', '549', 'PINCHOTE'),
('15', '550', 'PISBA'),
('20', '550', 'PELAYA'),
('41', '551', 'PITALITO'),
('47', '551', 'PIVIJAY'),
('54', '553', 'PUERTO SANTANDER'),
('23', '555', 'PLANETA RICA'),
('47', '555', 'PLATO'),
('73', '555', 'PLANADAS'),
('08', '558', 'POLONUEVO'),
('08', '560', 'PONEDERA'),
('44', '560', 'MANAURE'),
('52', '560', 'POTOSÍ'),
('73', '563', 'PRADO'),
('76', '563', 'PRADERA'),
('88', '564', 'PROVIDENCIA'),
('52', '565', 'PROVIDENCIA'),
('50', '568', 'PUERTO GAITÁN'),
('86', '568', 'PUERTO ASÍS'),
('86', '569', 'PUERTO CAICEDO'),
('20', '570', 'PUEBLO BELLO'),
('23', '570', 'PUEBLO NUEVO'),
('47', '570', 'PUEBLOVIEJO'),
('86', '571', 'PUERTO GUZMÁN'),
('15', '572', 'PUERTO BOYACÁ'),
('25', '572', 'PUERTO SALGAR'),
('66', '572', 'PUEBLO RICO'),
('68', '572', 'PUENTE NACIONAL'),
('08', '573', 'PUERTO COLOMBIA'),
('19', '573', 'PUERTO TEJADA'),
('50', '573', 'PUERTO LÓPEZ'),
('52', '573', 'PUERRES'),
('68', '573', 'PUERTO PARRA'),
('86', '573', 'PUERTO LEGUÍZAMO'),
('23', '574', 'PUERTO ESCONDIDO'),
('68', '575', 'PUERTO WILCHES'),
('05', '576', 'PUEBLORRICO'),
('50', '577', 'PUERTO LLERAS'),
('05', '579', 'PUERTO BERRÍO'),
('13', '580', 'REGIDOR'),
('15', '580', 'QUÍPAMA'),
('23', '580', 'PUERTO LIBERTADOR'),
('25', '580', 'PULÍ'),
('27', '580', 'RÍO IRÓ'),
('05', '585', 'PUERTO NARE'),
('19', '585', 'PURACÉ'),
('52', '585', 'PUPIALES'),
('73', '585', 'PURIFICACIÓN'),
('23', '586', 'PURÍSIMA'),
('50', '590', 'PUERTO RICO'),
('05', '591', 'PUERTO TRIUNFO'),
('81', '591', 'PUERTO RONDÓN'),
('18', '592', 'PUERTO RICO'),
('25', '592', 'QUEBRADANEGRA'),
('25', '594', 'QUETAME'),
('63', '594', 'QUIMBAYA'),
('66', '594', 'QUINCHÍA'),
('25', '596', 'QUIPILE'),
('15', '599', 'RAMIRIQUÍ'),
('25', '599', 'APULO'),
('54', '599', 'RAGONVALIA'),
('13', '600', 'RÍO VIEJO'),
('15', '600', 'RÁQUIRA'),
('27', '600', 'RÍO QUITO'),
('05', '604', 'REMEDIOS'),
('47', '605', 'REMOLINO'),
('08', '606', 'REPELÓN'),
('50', '606', 'RESTREPO'),
('76', '606', 'RESTREPO'),
('05', '607', 'RETIRO'),
('18', '610', 'SAN JOSÉ DEL FRAGUA'),
('25', '612', 'RICAURTE'),
('52', '612', 'RICAURTE'),
('17', '614', 'RIOSUCIO'),
('20', '614', 'RÍO DE ORO'),
('05', '615', 'RIONEGRO'),
('27', '615', 'RIOSUCIO'),
('41', '615', 'RIVERA'),
('68', '615', 'RIONEGRO'),
('17', '616', 'RISARALDA'),
('73', '616', 'RIOBLANCO'),
('76', '616', 'RIOFRÍO'),
('13', '620', 'SAN CRISTÓBAL'),
('15', '621', 'RONDÓN'),
('20', '621', 'LA PAZ'),
('52', '621', 'ROBERTO PAYÁN'),
('19', '622', 'ROSAS'),
('73', '622', 'RONCESVALLES'),
('76', '622', 'ROLDANILLO'),
('73', '624', 'ROVIRA'),
('99', '624', 'SANTA ROSALÍA'),
('05', '628', 'SABANALARGA'),
('05', '631', 'SABANETA'),
('15', '632', 'SABOYÁ'),
('08', '634', 'SABANAGRANDE'),
('08', '638', 'SABANALARGA'),
('15', '638', 'SÁCHICA'),
('05', '642', 'SALGAR'),
('25', '645', 'SAN ANTONIO DEL TEQUENDAMA'),
('15', '646', 'SAMACÁ'),
('05', '647', 'SAN ANDRÉS DE CUERQUÍA'),
('13', '647', 'SAN ESTANISLAO'),
('05', '649', 'SAN CARLOS'),
('25', '649', 'SAN BERNARDO'),
('13', '650', 'SAN FERNANDO'),
('44', '650', 'SAN JUAN DEL CESAR'),
('05', '652', 'SAN FRANCISCO'),
('17', '653', 'SALAMINA'),
('25', '653', 'SAN CAYETANO'),
('13', '654', 'SAN JACINTO'),
('13', '655', 'SAN JACINTO DEL CAUCA'),
('68', '655', 'SABANA DE TORRES'),
('05', '656', 'SAN JERÓNIMO'),
('13', '657', 'SAN JUAN NEPOMUCENO'),
('05', '658', 'SAN JOSÉ DE LA MONTAÑA'),
('25', '658', 'SAN FRANCISCO'),
('05', '659', 'SAN JUAN DE URABÁ'),
('05', '660', 'SAN LUIS'),
('15', '660', 'SAN EDUARDO'),
('23', '660', 'SAHAGÚN'),
('27', '660', 'SAN JOSÉ DEL PALMAR'),
('41', '660', 'SALADOBLANCO'),
('47', '660', 'SABANAS DE SAN ANGEL'),
('54', '660', 'SALAZAR'),
('17', '662', 'SAMANÁ'),
('25', '662', 'SAN JUAN DE RÍO SECO'),
('94', '663', 'MAPIRIPANA'),
('05', '664', 'SAN PEDRO DE LOS MILAGROS'),
('15', '664', 'SAN JOSÉ DE PARE'),
('05', '665', 'SAN PEDRO DE URABA'),
('17', '665', 'SAN JOSÉ'),
('97', '666', 'TARAIRA'),
('05', '667', 'SAN RAFAEL'),
('13', '667', 'SAN MARTÍN DE LOBA'),
('15', '667', 'SAN LUIS DE GACENO'),
('41', '668', 'SAN AGUSTÍN'),
('68', '669', 'SAN ANDRÉS'),
('91', '669', 'PUERTO SANTANDER'),
('05', '670', 'SAN ROQUE'),
('13', '670', 'SAN PABLO'),
('23', '670', 'SAN ANDRÉS SOTAVENTO'),
('54', '670', 'SAN CALIXTO'),
('70', '670', 'SAMPUÉS'),
('76', '670', 'SAN PEDRO'),
('73', '671', 'SALDAÑA'),
('23', '672', 'SAN ANTERO'),
('13', '673', 'SANTA CATALINA'),
('15', '673', 'SAN MATEO'),
('54', '673', 'SAN CAYETANO'),
('68', '673', 'SAN BENITO'),
('05', '674', 'SAN VICENTE'),
('08', '675', 'SANTA LUCÍA'),
('23', '675', 'SAN BERNARDO DEL VIENTO'),
('47', '675', 'SALAMINA'),
('73', '675', 'SAN ANTONIO'),
('15', '676', 'SAN MIGUEL DE SEMA'),
('41', '676', 'SANTA MARÍA'),
('23', '678', 'SAN CARLOS'),
('52', '678', 'SAMANIEGO'),
('70', '678', 'SAN BENITO ABAD'),
('73', '678', 'SAN LUIS'),
('05', '679', 'SANTA BÁRBARA'),
('68', '679', 'SAN GIL'),
('50', '680', 'SAN CARLOS DE GUAROA'),
('54', '680', 'SANTIAGO'),
('15', '681', 'SAN PABLO DE BORBUR'),
('23', '682', 'SAN JOSÉ DE URÉ'),
('66', '682', 'SANTA ROSA DE CABAL'),
('68', '682', 'SAN JOAQUÍN'),
('13', '683', 'SANTA ROSA'),
('50', '683', 'SAN JUAN DE ARAMA'),
('52', '683', 'SANDONÁ'),
('68', '684', 'SAN JOSÉ DE MIRANDA'),
('08', '685', 'SANTO TOMÁS'),
('52', '685', 'SAN BERNARDO'),
('05', '686', 'SANTA ROSA DE OSOS'),
('15', '686', 'SANTANA'),
('23', '686', 'SAN PELAYO'),
('50', '686', 'SAN JUANITO'),
('68', '686', 'SAN MIGUEL'),
('73', '686', 'SANTA ISABEL'),
('52', '687', 'SAN LORENZO'),
('66', '687', 'SANTUARIO'),
('13', '688', 'SANTA ROSA DEL SUR'),
('50', '689', 'SAN MARTÍN'),
('68', '689', 'SAN VICENTE DE CHUCURÍ'),
('05', '690', 'SANTO DOMINGO'),
('15', '690', 'SANTA MARÍA'),
('63', '690', 'SALENTO'),
('47', '692', 'SAN SEBASTIÁN DE BUENAVISTA'),
('15', '693', 'SANTA ROSA DE VITERBO'),
('19', '693', 'SAN SEBASTIÁN'),
('52', '693', 'SAN PABLO'),
('52', '694', 'SAN PEDRO DE CARTAGO'),
('15', '696', 'SANTA SOFÍA'),
('52', '696', 'SANTA BÁRBARA'),
('05', '697', 'EL SANTUARIO'),
('19', '698', 'SANTANDER DE QUILICHAO'),
('52', '699', 'SANTACRUZ'),
('19', '701', 'SANTA ROSA'),
('70', '702', 'SAN JUAN DE BETULIA'),
('47', '703', 'SAN ZENÓN'),
('68', '705', 'SANTA BÁRBARA'),
('47', '707', 'SANTA ANA'),
('70', '708', 'SAN MARCOS'),
('20', '710', 'SAN ALBERTO'),
('50', '711', 'VISTAHERMOSA'),
('70', '713', 'SAN ONOFRE'),
('70', '717', 'SAN PEDRO'),
('25', '718', 'SASAIMA'),
('15', '720', 'SATIVANORTE'),
('47', '720', 'SANTA BÁRBARA DE PINTO'),
('52', '720', 'SAPUYES'),
('54', '720', 'SARDINATA'),
('68', '720', 'SANTA HELENA DEL OPÓN'),
('15', '723', 'SATIVASUR'),
('05', '736', 'SEGOVIA'),
('25', '736', 'SESQUILÉ'),
('76', '736', 'SEVILLA'),
('81', '736', 'SARAVENA'),
('15', '740', 'SIACHOQUE'),
('25', '740', 'SIBATÉ'),
('70', '742', 'SAN LUIS DE SINCÉ'),
('19', '743', 'SILVIA'),
('25', '743', 'SILVANIA'),
('54', '743', 'SILOS'),
('13', '744', 'SIMITÍ'),
('25', '745', 'SIMIJACA'),
('27', '745', 'SIPÍ'),
('47', '745', 'SITIONUEVO'),
('68', '745', 'SIMACOTA'),
('86', '749', 'SIBUNDOY'),
('20', '750', 'SAN DIEGO'),
('15', '753', 'SOATÁ'),
('18', '753', 'SAN VICENTE DEL CAGUÁN'),
('25', '754', 'SOACHA'),
('15', '755', 'SOCOTÁ'),
('68', '755', 'SOCORRO'),
('86', '755', 'SAN FRANCISCO'),
('05', '756', 'SONSON'),
('18', '756', 'SOLANO'),
('15', '757', 'SOCHA'),
('86', '757', 'SAN MIGUEL'),
('08', '758', 'SOLEDAD'),
('25', '758', 'SOPÓ'),
('15', '759', 'SOGAMOSO'),
('13', '760', 'SOPLAVIENTO'),
('19', '760', 'SOTARA'),
('86', '760', 'SANTIAGO'),
('05', '761', 'SOPETRÁN'),
('15', '761', 'SOMONDOCO'),
('15', '762', 'SORA'),
('15', '763', 'SOTAQUIRÁ'),
('15', '764', 'SORACÁ'),
('25', '769', 'SUBACHOQUE'),
('08', '770', 'SUAN'),
('20', '770', 'SAN MARTÍN'),
('41', '770', 'SUAZA'),
('68', '770', 'SUAITA'),
('73', '770', 'SUÁREZ'),
('70', '771', 'SUCRE'),
('25', '772', 'SUESCA'),
('68', '773', 'SUCRE'),
('99', '773', 'CUMARIBO'),
('15', '774', 'SUSACÓN'),
('15', '776', 'SUTAMARCHÁN'),
('17', '777', 'SUPÍA'),
('25', '777', 'SUPATÁ'),
('97', '777', 'PAPUNAUA'),
('15', '778', 'SUTATENZA'),
('25', '779', 'SUSA'),
('13', '780', 'TALAIGUA NUEVO'),
('19', '780', 'SUÁREZ'),
('68', '780', 'SURATÁ'),
('25', '781', 'SUTATAUSA'),
('18', '785', 'SOLITA'),
('19', '785', 'SUCRE'),
('25', '785', 'TABIO'),
('52', '786', 'TAMINANGO'),
('20', '787', 'TAMALAMEQUE'),
('27', '787', 'TADÓ'),
('52', '788', 'TANGUA'),
('05', '789', 'TÁMESIS'),
('05', '790', 'TARAZÁ'),
('15', '790', 'TASCO'),
('41', '791', 'TARQUI'),
('05', '792', 'TARSO'),
('25', '793', 'TAUSA'),
('81', '794', 'TAME'),
('25', '797', 'TENA'),
('41', '797', 'TESALIA'),
('15', '798', 'TENZA'),
('47', '798', 'TENERIFE'),
('91', '798', 'TARAPACÁ'),
('25', '799', 'TENJO'),
('41', '799', 'TELLO'),
('27', '800', 'UNGUÍA'),
('54', '800', 'TEORAMA'),
('41', '801', 'TERUEL'),
('15', '804', 'TIBANÁ'),
('25', '805', 'TIBACUY'),
('15', '806', 'TIBASOSA'),
('19', '807', 'TIMBÍO'),
('23', '807', 'TIERRALTA'),
('25', '807', 'TIBIRITA'),
('41', '807', 'TIMANÁ'),
('15', '808', 'TINJACÁ'),
('05', '809', 'TITIRIBÍ'),
('19', '809', 'TIMBIQUÍ'),
('13', '810', 'TIQUISIO'),
('15', '810', 'TIPACOQUE'),
('27', '810', 'UNIÓN PANAMERICANA'),
('54', '810', 'TIBÚ'),
('15', '814', 'TOCA'),
('23', '815', 'TUCHÍN'),
('25', '815', 'TOCAIMA'),
('15', '816', 'TOGÜÍ'),
('25', '817', 'TOCANCIPÁ'),
('05', '819', 'TOLEDO'),
('15', '820', 'TÓPAGA'),
('54', '820', 'TOLEDO'),
('68', '820', 'TONA'),
('70', '820', 'SANTIAGO DE TOLÚ'),
('19', '821', 'TORIBIO'),
('15', '822', 'TOTA'),
('25', '823', 'TOPAIPÍ'),
('70', '823', 'TOLÚ VIEJO'),
('76', '823', 'TORO'),
('19', '824', 'TOTORÓ'),
('76', '828', 'TRUJILLO'),
('08', '832', 'TUBARÁ'),
('15', '832', 'TUNUNGUÁ'),
('76', '834', 'TULUÁ'),
('15', '835', 'TURMEQUÉ'),
('52', '835', 'SAN ANDRES DE TUMACO'),
('13', '836', 'TURBACO'),
('05', '837', 'TURBO'),
('15', '837', 'TUTA'),
('13', '838', 'TURBANÁ'),
('52', '838', 'TÚQUERRES'),
('15', '839', 'TUTAZÁ'),
('25', '839', 'UBALÁ'),
('25', '841', 'UBAQUE'),
('05', '842', 'URAMITA'),
('15', '842', 'UMBITA'),
('25', '843', 'VILLA DE SAN DIEGO DE UBATE'),
('19', '845', 'VILLA RICA'),
('25', '845', 'UNE'),
('76', '845', 'ULLOA'),
('05', '847', 'URRAO'),
('44', '847', 'URIBIA'),
('08', '849', 'USIACURÍ'),
('25', '851', 'ÚTICA'),
('05', '854', 'VALDIVIA'),
('73', '854', 'VALLE DE SAN JUAN'),
('23', '855', 'VALENCIA'),
('44', '855', 'URUMITA'),
('68', '855', 'VALLE DE SAN JOSÉ'),
('05', '856', 'VALPARAÍSO'),
('05', '858', 'VEGACHÍ'),
('18', '860', 'VALPARAÍSO'),
('05', '861', 'VENECIA'),
('15', '861', 'VENTAQUEMADA'),
('68', '861', 'VÉLEZ'),
('73', '861', 'VENADILLO'),
('25', '862', 'VERGARA'),
('76', '863', 'VERSALLES'),
('86', '865', 'VALLE DEL GUAMUEZ'),
('17', '867', 'VICTORIA'),
('25', '867', 'VIANÍ'),
('68', '867', 'VETAS'),
('76', '869', 'VIJES'),
('73', '870', 'VILLAHERMOSA'),
('25', '871', 'VILLAGÓMEZ'),
('54', '871', 'VILLA CARO'),
('41', '872', 'VILLAVIEJA'),
('68', '872', 'VILLANUEVA'),
('05', '873', 'VIGÍA DEL FUERTE'),
('13', '873', 'VILLANUEVA'),
('17', '873', 'VILLAMARÍA'),
('25', '873', 'VILLAPINZÓN'),
('73', '873', 'VILLARRICA'),
('44', '874', 'VILLANUEVA'),
('54', '874', 'VILLA DEL ROSARIO'),
('25', '875', 'VILLETA'),
('17', '877', 'VITERBO'),
('25', '878', 'VIOTÁ'),
('15', '879', 'VIRACACHÁ'),
('94', '883', 'SAN FELIPE'),
('94', '884', 'PUERTO COLOMBIA'),
('05', '885', 'YALÍ'),
('25', '885', 'YACOPÍ'),
('41', '885', 'YAGUARÁ'),
('52', '885', 'YACUANQUER'),
('86', '885', 'VILLAGARZÓN'),
('94', '885', 'LA GUADALUPE'),
('94', '886', 'CACAHUAL'),
('05', '887', 'YARUMAL'),
('94', '887', 'PANA PANA'),
('94', '888', 'MORICHAL'),
('97', '889', 'YAVARATÉ'),
('05', '890', 'YOLOMBÓ'),
('76', '890', 'YOTOCO'),
('76', '892', 'YUMBO'),
('05', '893', 'YONDÓ'),
('13', '894', 'ZAMBRANO'),
('05', '895', 'ZARAGOZA'),
('68', '895', 'ZAPATOCA'),
('76', '895', 'ZARZAL'),
('15', '897', 'ZETAQUIRA'),
('25', '898', 'ZIPACÓN'),
('25', '899', 'ZIPAQUIRÁ'),
('47', '960', 'ZAPAYÁN'),
('47', '980', 'ZONA BANANERA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmdepartamentos`
--

CREATE TABLE IF NOT EXISTS `tmdepartamentos` (
  `IdPais` char(2) COLLATE utf8_spanish_ci NOT NULL,
  `IdDepartamento` char(2) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(60) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tmdepartamentos`
--

INSERT INTO `tmdepartamentos` (`IdPais`, `IdDepartamento`, `Descripcion`) VALUES
('00', '00', 'SIN DEPARTAMENTO'),
('57', '05', 'Antioquia'),
('57', '08', 'Atlantico'),
('57', '11', 'Bogotá'),
('57', '13', 'Bolivar'),
('57', '15', 'Boyaca'),
('57', '17', 'Caldas'),
('57', '18', 'Caqueta'),
('57', '19', 'Cauca'),
('57', '20', 'Cesar'),
('57', '23', 'Cordoba'),
('57', '25', 'Cundinamarca'),
('57', '27', 'Choco'),
('57', '41', 'Huila'),
('57', '44', 'La Guajira'),
('57', '47', 'Magdalena'),
('57', '50', 'Meta'),
('57', '52', 'Nariño'),
('57', '54', 'Norte de Santander'),
('57', '63', 'Quindio'),
('57', '66', 'Risaralda'),
('57', '68', 'Santander'),
('57', '70', 'Sucre'),
('57', '73', 'Tolima'),
('57', '76', 'Valle'),
('57', '81', 'Arauca'),
('57', '85', 'Casanare'),
('57', '86', 'Putumayo'),
('57', '88', 'San Andres'),
('57', '91', 'Amazonas'),
('57', '94', 'Guainia'),
('57', '95', 'Guaviare'),
('57', '97', 'Vaupes'),
('57', '99', 'Vichada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmestadocivil`
--

CREATE TABLE IF NOT EXISTS `tmestadocivil` (
  `IdEstadoCivil` char(2) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tmestadocivil`
--

INSERT INTO `tmestadocivil` (`IdEstadoCivil`, `Descripcion`) VALUES
('00', 'SIN ESTADO CIVIL'),
('CA', 'CASADO'),
('DI', 'DIVORSIADO'),
('SO', 'SOLTERO'),
('VI', 'VIUDO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmestudiantes`
--

CREATE TABLE IF NOT EXISTS `tmestudiantes` (
  `IdTipoDocumento` char(2) COLLATE utf8_spanish_ci NOT NULL,
  `NroDocumento` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Expedida` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Nombres` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido1` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `Apellido2` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `IdPais_Nacimiento` char(2) COLLATE utf8_spanish_ci NOT NULL,
  `IdDep_Nacimiento` char(2) COLLATE utf8_spanish_ci NOT NULL,
  `IdCiu_Nacimiento` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `LibretaMilitar` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `Distrito` int(11) NOT NULL,
  `IdEstadoCivil` char(2) COLLATE utf8_spanish_ci NOT NULL,
  `IdGenero` char(1) COLLATE utf8_spanish_ci NOT NULL,
  `Religion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Cantidad_Hijos` int(3) NOT NULL,
  `Direccion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Barrio` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `IdCiu_Proviene` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `IdDep_Proviene` char(2) COLLATE utf8_spanish_ci NOT NULL,
  `IdPais_Proviene` char(2) COLLATE utf8_spanish_ci NOT NULL,
  `Fijo` char(7) COLLATE utf8_spanish_ci NOT NULL,
  `Celular` char(10) COLLATE utf8_spanish_ci NOT NULL,
  `Correo_Electronico` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Estrato` int(1) NOT NULL,
  `Empresa` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Cargo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Direccion_Empresa` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `Tel_Empresa` char(7) COLLATE utf8_spanish_ci NOT NULL,
  `Fax_Empresa` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

--
-- Volcado de datos para la tabla `tmestudiantes`
--

INSERT INTO `tmestudiantes` (`IdTipoDocumento`, `NroDocumento`, `Expedida`, `Nombres`, `Apellido1`, `Apellido2`, `IdPais_Nacimiento`, `IdDep_Nacimiento`, `IdCiu_Nacimiento`, `LibretaMilitar`, `Distrito`, `IdEstadoCivil`, `IdGenero`, `Religion`, `Cantidad_Hijos`, `Direccion`, `Barrio`, `IdCiu_Proviene`, `IdDep_Proviene`, `IdPais_Proviene`, `Fijo`, `Celular`, `Correo_Electronico`, `Estrato`, `Empresa`, `Cargo`, `Direccion_Empresa`, `Tel_Empresa`, `Fax_Empresa`) VALUES
('CC', '1025470258', 'MEDELLIN', 'JOSE', 'PEREZ', 'BETANCUR', '57', '05', '001', '1025470258', 24, 'SO', 'M', 'CRISTIANO', 0, 'CLL 65 N  65-80', 'LAURELES', '001', '05', '57', '4444444', '321654987', 'EMAIL@EMAIL.COM', 3, 'FABRICA DE LICORES', 'COMPRADOR', 'CRA 51 N 11 A SUR 52', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmestudiosrealizados`
--

CREATE TABLE IF NOT EXISTS `tmestudiosrealizados` (
  `IdTipo_Estudio` int(11) NOT NULL,
`IdEstudio_Realizado` int(11) NOT NULL,
  `Institucion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Titulo_Obtenido` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `IdPais` char(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  `IdDepartamento` char(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  `IdCiudad` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `IdEstudiante` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tmestudiosrealizados`
--

INSERT INTO `tmestudiosrealizados` (`IdTipo_Estudio`, `IdEstudio_Realizado`, `Institucion`, `Titulo_Obtenido`, `IdPais`, `IdDepartamento`, `IdCiudad`, `IdEstudiante`) VALUES
(3, 1, 'COLOMBOAMERICANO', 'INGLES BASICO', '57', '05', '001', '1025470258'),
(4, 2, 'COLOMBOAMERICANO', 'INGLES INTERMEDIO', '57', '05', '001', '1025470258');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmhabilidadesdesarrollar`
--

CREATE TABLE IF NOT EXISTS `tmhabilidadesdesarrollar` (
  `IdPrograma` int(11) NOT NULL,
`IdHabilidad` int(11) NOT NULL,
  `Descripcion` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tmhabilidadesdesarrollar`
--

INSERT INTO `tmhabilidadesdesarrollar` (`IdPrograma`, `IdHabilidad`, `Descripcion`) VALUES
(11, 15, 'DIFERENCIAR LAS DISTRIBUCIONES DE LINUX'),
(11, 16, 'INSTALACIÓN DEL SISTEMA OPERATIVO LINUX');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmpagos`
--

CREATE TABLE IF NOT EXISTS `tmpagos` (
  `IdPrograma_Ofertado` int(11) NOT NULL,
  `IdEstudiante` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `NroConsignacion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `FechaPago` date NOT NULL,
  `FechaRecibido` datetime NOT NULL,
  `Valor` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tmpagos`
--

INSERT INTO `tmpagos` (`IdPrograma_Ofertado`, `IdEstudiante`, `NroConsignacion`, `FechaPago`, `FechaRecibido`, `Valor`) VALUES
(12, '1025470258', 'CON000', '2014-01-01', '2014-10-29 20:39:10', '25000.00'),
(12, '1025470258', 'CON0001', '2014-01-01', '2014-10-30 22:22:21', '20000.00'),
(12, '1025470258', 'CON0002', '2014-10-30', '2014-10-30 22:22:41', '203600.00'),
(12, '1025470258', 'CON001', '2014-01-01', '2014-10-29 20:46:45', '200.00'),
(12, '1025470258', 'CON002', '2014-01-01', '2014-10-29 20:47:19', '200.00'),
(12, '1025470258', 'CON003', '2014-01-01', '2014-10-29 20:47:49', '200.00'),
(12, '1025470258', 'CON004', '2014-01-01', '2014-10-29 20:48:07', '200.00'),
(12, '1025470258', 'CON005', '2014-01-01', '2014-10-29 20:48:25', '200.00'),
(12, '1025470258', 'CON006', '2014-01-01', '2014-10-29 20:51:11', '200.00'),
(12, '1025470258', 'CON007', '2014-01-01', '2014-10-29 20:51:18', '200.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmpaises`
--

CREATE TABLE IF NOT EXISTS `tmpaises` (
  `IdPais` char(2) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tmpaises`
--

INSERT INTO `tmpaises` (`IdPais`, `Descripcion`) VALUES
('00', 'SIN PAIS'),
('57', 'COLOMBIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmprogramas`
--

CREATE TABLE IF NOT EXISTS `tmprogramas` (
`IdPrograma` int(11) NOT NULL,
  `Titulo` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `Imagen` varchar(300) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tmprogramas`
--

INSERT INTO `tmprogramas` (`IdPrograma`, `Titulo`, `Descripcion`, `Imagen`) VALUES
(11, 'LINUX: BÁSICO Y AVANZADO', 'RECONOCER LAS CARACTERíSTICAS DEL SISTEMA OPERATIVO LINUX  A TRAVéS DE EJECUCIóN DE ACTIVIDADES PRáCTICAS PARA ENTENDER SU ESTRUCTURA Y FUNCIONAMIENTO BáSICO Y POSTERIORMENTE CONFIGURAR LOS DIFERENTES TIPOS DE SERVIDORES EN EL SISTEMA OPERATIVO LINUX  A TRAVéS DE MONTAJES REALES PARA SU POSTERIOR APLICACIóN EN LA INDUSTRIA.', '../view/images/programas/Linux.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmrequisitos`
--

CREATE TABLE IF NOT EXISTS `tmrequisitos` (
  `IdPrograma` int(11) NOT NULL DEFAULT '0',
`IdRequisito` int(11) NOT NULL,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tmrequisitos`
--

INSERT INTO `tmrequisitos` (`IdPrograma`, `IdRequisito`, `Descripcion`) VALUES
(11, 5, 'CONOCIMIENTOS BáSICOS EN COMPUTADORES'),
(11, 6, 'CONOCIMIENTOS BáSICOS EN SOFTWARE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmtiposdocumentos`
--

CREATE TABLE IF NOT EXISTS `tmtiposdocumentos` (
  `IdTipoDocumento` char(2) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tmtiposdocumentos`
--

INSERT INTO `tmtiposdocumentos` (`IdTipoDocumento`, `Descripcion`) VALUES
('00', 'SIN TIPO DOCUMENTO'),
('CC', 'CEDULA CIUDADANIA'),
('RC', 'REGISTRO CIVIL'),
('TI', 'TARJETA IDENTIDAD');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmtiposestudios`
--

CREATE TABLE IF NOT EXISTS `tmtiposestudios` (
`IdTipoEstudio` int(11) NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tmtiposestudios`
--

INSERT INTO `tmtiposestudios` (`IdTipoEstudio`, `Descripcion`) VALUES
(1, 'SIN TIPO ESTUDIO'),
(2, 'OTROS'),
(3, 'SECUNDARIOS'),
(4, 'UNIVERSITARIOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmtiposprograma`
--

CREATE TABLE IF NOT EXISTS `tmtiposprograma` (
`IdTipoPrograma` int(11) NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tmtiposprograma`
--

INSERT INTO `tmtiposprograma` (`IdTipoPrograma`, `Descripcion`) VALUES
(1, 'CURSO'),
(2, 'DIPLOMADO'),
(3, 'OTRO'),
(4, 'SEMILLERO'),
(5, 'TALLER');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tmusuarios`
--

CREATE TABLE IF NOT EXISTS `tmusuarios` (
  `Usuario` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Contrasena` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `Correo_electronico` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `IntentosFallidos` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tmusuarios`
--

INSERT INTO `tmusuarios` (`Usuario`, `Contrasena`, `Correo_electronico`, `IntentosFallidos`) VALUES
('root', 'root', 'email@gmail.com', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trprogramaestudiantes`
--

CREATE TABLE IF NOT EXISTS `trprogramaestudiantes` (
  `IdPrograma_Ofertado` int(11) NOT NULL,
  `IdEstudiante` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` datetime NOT NULL,
  `Estado` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `trprogramaestudiantes`
--

INSERT INTO `trprogramaestudiantes` (`IdPrograma_Ofertado`, `IdEstudiante`, `Fecha`, `Estado`) VALUES
(12, '1025470258', '2014-10-24 20:13:05', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trprograma_ofertado`
--

CREATE TABLE IF NOT EXISTS `trprograma_ofertado` (
`IdPrograma_Ofertado` int(11) NOT NULL,
  `IdTipoPrograma` int(11) NOT NULL,
  `IdPrograma` int(11) NOT NULL,
  `FechaInicio` datetime NOT NULL,
  `FechaFinalizacion` datetime NOT NULL,
  `MinEstudiantes` int(3) NOT NULL,
  `MaxEstudiantes` int(3) NOT NULL,
  `Estado` bit(1) NOT NULL,
  `Precio` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `trprograma_ofertado`
--

INSERT INTO `trprograma_ofertado` (`IdPrograma_Ofertado`, `IdTipoPrograma`, `IdPrograma`, `FechaInicio`, `FechaFinalizacion`, `MinEstudiantes`, `MaxEstudiantes`, `Estado`, `Precio`) VALUES
(12, 2, 11, '2014-10-01 00:00:00', '2014-10-24 00:00:00', 20, 30, b'1', 250000),
(13, 1, 11, '2014-10-27 00:00:00', '2014-10-27 00:00:00', 10, 20, b'1', 5000);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vestudiantes`
--
CREATE TABLE IF NOT EXISTS `vestudiantes` (
`IdTipoDocumento` char(2)
,`NroDocumento` varchar(20)
,`Expedida` varchar(50)
,`Nombres` varchar(150)
,`Apellido1` varchar(150)
,`Apellido2` varchar(150)
,`Apellidos` varchar(301)
,`NombreCompleto` varchar(452)
,`PaisNacimiento` varchar(50)
,`DepNacimiento` varchar(60)
,`CiuNacimiento` varchar(50)
,`LibretaMilitar` varchar(11)
,`Distrito` int(11)
,`EstadoCivil` varchar(50)
,`Genero` char(1)
,`Religion` varchar(255)
,`Cantidad_Hijos` int(3)
,`DireccionEstudiante` varchar(255)
,`Barrio` varchar(255)
,`CiuProviene` varchar(50)
,`DepProviene` varchar(60)
,`PaisProviene` varchar(50)
,`Fijo` char(7)
,`Celular` char(10)
,`Correo_Electronico` varchar(255)
,`Estrato` int(1)
,`Empresa` varchar(100)
,`Cargo` varchar(50)
,`Direccion_Empresa` varchar(100)
,`Tel_Empresa` char(7)
,`Fax_Empresa` varchar(20)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vprogramasestudiantes`
--
CREATE TABLE IF NOT EXISTS `vprogramasestudiantes` (
`IdPrograma_Ofertado` int(11)
,`IdTipoPrograma` int(11)
,`TipoPrograma` varchar(50)
,`IdPrograma` int(11)
,`Programa` varchar(200)
,`FechaInscripcion` datetime
,`FechaInicio` datetime
,`FechaFinalizacion` datetime
,`MinEstudiantes` int(3)
,`MaxEstudiantes` int(3)
,`Estado` bit(1)
,`Precio` int(11)
,`PagoRealizado` decimal(32,2)
,`EstadoCursado` bit(1)
,`IdTipoDocumento` char(2)
,`NroDocumento` varchar(20)
,`Nombres` varchar(150)
,`Apellido1` varchar(150)
,`Apellido2` varchar(150)
,`Apellidos` varchar(301)
,`Correo_Electronico` varchar(255)
);
-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vprogramsoffered`
--
CREATE TABLE IF NOT EXISTS `vprogramsoffered` (
`IdTipoPrograma` int(11)
,`tipoprograma` varchar(50)
,`IdPrograma` int(11)
,`Titulo` varchar(200)
,`Descripcion` varchar(1000)
,`Imagen` varchar(300)
,`FechaInicio` datetime
,`FechaFinalizacion` datetime
,`IdPrograma_Ofertado` int(11)
,`Precio` int(11)
,`Estado` bit(1)
,`MaxEstudiantes` int(3)
,`MinEstudiantes` int(3)
,`IdHabilidad` varchar(11)
,`habilidad` varchar(200)
,`IdRequisito` varchar(11)
,`requisito` varchar(100)
);
-- --------------------------------------------------------

--
-- Estructura para la vista `vestudiantes`
--
DROP TABLE IF EXISTS `vestudiantes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vestudiantes` AS select `e`.`IdTipoDocumento` AS `IdTipoDocumento`,`e`.`NroDocumento` AS `NroDocumento`,`e`.`Expedida` AS `Expedida`,`e`.`Nombres` AS `Nombres`,`e`.`Apellido1` AS `Apellido1`,`e`.`Apellido2` AS `Apellido2`,concat(`e`.`Apellido1`,' ',`e`.`Apellido2`) AS `Apellidos`,concat(`e`.`Nombres`,' ',`e`.`Apellido1`,' ',`e`.`Apellido2`) AS `NombreCompleto`,`pan`.`Descripcion` AS `PaisNacimiento`,`den`.`Descripcion` AS `DepNacimiento`,`cin`.`Descripcion` AS `CiuNacimiento`,`e`.`LibretaMilitar` AS `LibretaMilitar`,`e`.`Distrito` AS `Distrito`,`ec`.`Descripcion` AS `EstadoCivil`,`e`.`IdGenero` AS `Genero`,`e`.`Religion` AS `Religion`,`e`.`Cantidad_Hijos` AS `Cantidad_Hijos`,`e`.`Direccion` AS `DireccionEstudiante`,`e`.`Barrio` AS `Barrio`,`cip`.`Descripcion` AS `CiuProviene`,`dep`.`Descripcion` AS `DepProviene`,`pap`.`Descripcion` AS `PaisProviene`,`e`.`Fijo` AS `Fijo`,`e`.`Celular` AS `Celular`,`e`.`Correo_Electronico` AS `Correo_Electronico`,`e`.`Estrato` AS `Estrato`,`e`.`Empresa` AS `Empresa`,`e`.`Cargo` AS `Cargo`,`e`.`Direccion_Empresa` AS `Direccion_Empresa`,`e`.`Tel_Empresa` AS `Tel_Empresa`,`e`.`Fax_Empresa` AS `Fax_Empresa` from (((((((`tmestudiantes` `e` join `tmestadocivil` `ec` on((`e`.`IdEstadoCivil` = `ec`.`IdEstadoCivil`))) join `tmpaises` `pan` on((`e`.`IdPais_Nacimiento` = `pan`.`IdPais`))) join `tmdepartamentos` `den` on((`e`.`IdDep_Nacimiento` = `den`.`IdDepartamento`))) join `tmciudades` `cin` on(((`e`.`IdCiu_Nacimiento` = `cin`.`IdCiudad`) and (`e`.`IdDep_Nacimiento` = `cin`.`IdDepartamento`)))) join `tmpaises` `pap` on((`e`.`IdPais_Proviene` = `pap`.`IdPais`))) join `tmdepartamentos` `dep` on((`e`.`IdDep_Proviene` = `dep`.`IdDepartamento`))) join `tmciudades` `cip` on(((`e`.`IdCiu_Proviene` = `cip`.`IdCiudad`) and (`e`.`IdDep_Proviene` = `cip`.`IdDepartamento`))));

-- --------------------------------------------------------

--
-- Estructura para la vista `vprogramasestudiantes`
--
DROP TABLE IF EXISTS `vprogramasestudiantes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vprogramasestudiantes` AS select `pe`.`IdPrograma_Ofertado` AS `IdPrograma_Ofertado`,`po`.`IdTipoPrograma` AS `IdTipoPrograma`,`tp`.`Descripcion` AS `TipoPrograma`,`po`.`IdPrograma` AS `IdPrograma`,`p`.`Titulo` AS `Programa`,`pe`.`Fecha` AS `FechaInscripcion`,`po`.`FechaInicio` AS `FechaInicio`,`po`.`FechaFinalizacion` AS `FechaFinalizacion`,`po`.`MinEstudiantes` AS `MinEstudiantes`,`po`.`MaxEstudiantes` AS `MaxEstudiantes`,`po`.`Estado` AS `Estado`,`po`.`Precio` AS `Precio`,sum(`pa`.`Valor`) AS `PagoRealizado`,`pe`.`Estado` AS `EstadoCursado`,`e`.`IdTipoDocumento` AS `IdTipoDocumento`,`e`.`NroDocumento` AS `NroDocumento`,`e`.`Nombres` AS `Nombres`,`e`.`Apellido1` AS `Apellido1`,`e`.`Apellido2` AS `Apellido2`,concat(`e`.`Apellido1`,' ',`e`.`Apellido2`) AS `Apellidos`,`e`.`Correo_Electronico` AS `Correo_Electronico` from (((((`trprograma_ofertado` `po` join `tmtiposprograma` `tp` on((`po`.`IdTipoPrograma` = `tp`.`IdTipoPrograma`))) join `tmprogramas` `p` on((`po`.`IdPrograma` = `p`.`IdPrograma`))) join `trprogramaestudiantes` `pe` on((`po`.`IdPrograma_Ofertado` = `pe`.`IdPrograma_Ofertado`))) join `tmestudiantes` `e` on((`pe`.`IdEstudiante` = `e`.`NroDocumento`))) left join `tmpagos` `pa` on(((`pe`.`IdEstudiante` = `pa`.`IdEstudiante`) and (`pe`.`IdPrograma_Ofertado` = `pa`.`IdPrograma_Ofertado`)))) group by `pe`.`IdPrograma_Ofertado`,`po`.`IdTipoPrograma`,`tp`.`Descripcion`,`po`.`IdPrograma`,`p`.`Descripcion`,`pe`.`Fecha`,`po`.`FechaInicio`,`po`.`FechaFinalizacion`,`po`.`MinEstudiantes`,`po`.`MaxEstudiantes`,`po`.`Estado`,`po`.`Precio`,`pe`.`Estado`,`e`.`IdTipoDocumento`,`e`.`NroDocumento`,`e`.`Nombres`,`e`.`Apellido1`,`e`.`Apellido2`,`e`.`Correo_Electronico`;

-- --------------------------------------------------------

--
-- Estructura para la vista `vprogramsoffered`
--
DROP TABLE IF EXISTS `vprogramsoffered`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vprogramsoffered` AS select `tp`.`IdTipoPrograma` AS `IdTipoPrograma`,`tp`.`Descripcion` AS `tipoprograma`,`p`.`IdPrograma` AS `IdPrograma`,`p`.`Titulo` AS `Titulo`,`p`.`Descripcion` AS `Descripcion`,`p`.`Imagen` AS `Imagen`,`po`.`FechaInicio` AS `FechaInicio`,`po`.`FechaFinalizacion` AS `FechaFinalizacion`,`po`.`IdPrograma_Ofertado` AS `IdPrograma_Ofertado`,`po`.`Precio` AS `Precio`,`po`.`Estado` AS `Estado`,`po`.`MaxEstudiantes` AS `MaxEstudiantes`,`po`.`MinEstudiantes` AS `MinEstudiantes`,ifnull(`hd`.`IdHabilidad`,'') AS `IdHabilidad`,ifnull(`hd`.`Descripcion`,'') AS `habilidad`,ifnull(`r`.`IdRequisito`,'') AS `IdRequisito`,ifnull(`r`.`Descripcion`,'') AS `requisito` from ((((`trprograma_ofertado` `po` join `tmprogramas` `p` on((`p`.`IdPrograma` = `po`.`IdPrograma`))) left join `tmrequisitos` `r` on((`r`.`IdPrograma` = `p`.`IdPrograma`))) join `tmtiposprograma` `tp` on((`tp`.`IdTipoPrograma` = `po`.`IdTipoPrograma`))) left join `tmhabilidadesdesarrollar` `hd` on((`hd`.`IdPrograma` = `p`.`IdPrograma`)));

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tmciudades`
--
ALTER TABLE `tmciudades`
 ADD PRIMARY KEY (`IdCiudad`,`IdDepartamento`), ADD KEY `FK_CiuIdDep` (`IdDepartamento`), ADD KEY `Ciudades` (`IdCiudad`) USING BTREE;

--
-- Indices de la tabla `tmdepartamentos`
--
ALTER TABLE `tmdepartamentos`
 ADD PRIMARY KEY (`IdDepartamento`), ADD KEY `FK_DepIdPai` (`IdPais`);

--
-- Indices de la tabla `tmestadocivil`
--
ALTER TABLE `tmestadocivil`
 ADD PRIMARY KEY (`IdEstadoCivil`);

--
-- Indices de la tabla `tmestudiantes`
--
ALTER TABLE `tmestudiantes`
 ADD PRIMARY KEY (`NroDocumento`), ADD KEY `FK_EstTipoDoc` (`IdTipoDocumento`), ADD KEY `FK_EstEstaCiv` (`IdEstadoCivil`);

--
-- Indices de la tabla `tmestudiosrealizados`
--
ALTER TABLE `tmestudiosrealizados`
 ADD PRIMARY KEY (`IdEstudio_Realizado`), ADD KEY `FK_EstRea_TipEst` (`IdTipo_Estudio`), ADD KEY `fk_tmEstRea_idEst` (`IdEstudiante`);

--
-- Indices de la tabla `tmhabilidadesdesarrollar`
--
ALTER TABLE `tmhabilidadesdesarrollar`
 ADD PRIMARY KEY (`IdHabilidad`), ADD KEY `fk_Hab_IdPro` (`IdPrograma`);

--
-- Indices de la tabla `tmpagos`
--
ALTER TABLE `tmpagos`
 ADD PRIMARY KEY (`NroConsignacion`,`IdEstudiante`,`IdPrograma_Ofertado`), ADD KEY `fk_Pag_IdEst` (`IdEstudiante`), ADD KEY `fk_Pag_ProOfe` (`IdPrograma_Ofertado`);

--
-- Indices de la tabla `tmpaises`
--
ALTER TABLE `tmpaises`
 ADD PRIMARY KEY (`IdPais`);

--
-- Indices de la tabla `tmprogramas`
--
ALTER TABLE `tmprogramas`
 ADD PRIMARY KEY (`IdPrograma`);

--
-- Indices de la tabla `tmrequisitos`
--
ALTER TABLE `tmrequisitos`
 ADD PRIMARY KEY (`IdRequisito`), ADD KEY `fk_Req_IdPro` (`IdPrograma`);

--
-- Indices de la tabla `tmtiposdocumentos`
--
ALTER TABLE `tmtiposdocumentos`
 ADD PRIMARY KEY (`IdTipoDocumento`);

--
-- Indices de la tabla `tmtiposestudios`
--
ALTER TABLE `tmtiposestudios`
 ADD PRIMARY KEY (`IdTipoEstudio`);

--
-- Indices de la tabla `tmtiposprograma`
--
ALTER TABLE `tmtiposprograma`
 ADD PRIMARY KEY (`IdTipoPrograma`);

--
-- Indices de la tabla `tmusuarios`
--
ALTER TABLE `tmusuarios`
 ADD PRIMARY KEY (`Usuario`);

--
-- Indices de la tabla `trprogramaestudiantes`
--
ALTER TABLE `trprogramaestudiantes`
 ADD PRIMARY KEY (`IdPrograma_Ofertado`,`IdEstudiante`), ADD KEY `fk_trProEst_IdEst` (`IdEstudiante`), ADD KEY `IdPrograma_Ofertado` (`IdPrograma_Ofertado`);

--
-- Indices de la tabla `trprograma_ofertado`
--
ALTER TABLE `trprograma_ofertado`
 ADD PRIMARY KEY (`IdPrograma_Ofertado`), ADD KEY `fk_tipoProgram` (`IdTipoPrograma`), ADD KEY `fk_programa` (`IdPrograma`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tmestudiosrealizados`
--
ALTER TABLE `tmestudiosrealizados`
MODIFY `IdEstudio_Realizado` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tmhabilidadesdesarrollar`
--
ALTER TABLE `tmhabilidadesdesarrollar`
MODIFY `IdHabilidad` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de la tabla `tmprogramas`
--
ALTER TABLE `tmprogramas`
MODIFY `IdPrograma` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `tmrequisitos`
--
ALTER TABLE `tmrequisitos`
MODIFY `IdRequisito` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tmtiposestudios`
--
ALTER TABLE `tmtiposestudios`
MODIFY `IdTipoEstudio` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tmtiposprograma`
--
ALTER TABLE `tmtiposprograma`
MODIFY `IdTipoPrograma` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `trprograma_ofertado`
--
ALTER TABLE `trprograma_ofertado`
MODIFY `IdPrograma_Ofertado` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tmciudades`
--
ALTER TABLE `tmciudades`
ADD CONSTRAINT `fk_tmCiu_idDep` FOREIGN KEY (`IdDepartamento`) REFERENCES `tmdepartamentos` (`IdDepartamento`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `tmdepartamentos`
--
ALTER TABLE `tmdepartamentos`
ADD CONSTRAINT `fk_tmDep_IdPais` FOREIGN KEY (`IdPais`) REFERENCES `tmpaises` (`IdPais`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `tmestudiantes`
--
ALTER TABLE `tmestudiantes`
ADD CONSTRAINT `fk_tmEst_EstCiv` FOREIGN KEY (`IdEstadoCivil`) REFERENCES `tmestadocivil` (`IdEstadoCivil`) ON DELETE NO ACTION ON UPDATE CASCADE,
ADD CONSTRAINT `fk_tmEst_TipDoc` FOREIGN KEY (`IdTipoDocumento`) REFERENCES `tmtiposdocumentos` (`IdTipoDocumento`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `tmestudiosrealizados`
--
ALTER TABLE `tmestudiosrealizados`
ADD CONSTRAINT `fk_tmEstRea_idEst` FOREIGN KEY (`IdEstudiante`) REFERENCES `tmestudiantes` (`NroDocumento`) ON DELETE NO ACTION ON UPDATE CASCADE,
ADD CONSTRAINT `fk_tmEstRea_idTipEst` FOREIGN KEY (`IdTipo_Estudio`) REFERENCES `tmtiposestudios` (`IdTipoEstudio`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `tmhabilidadesdesarrollar`
--
ALTER TABLE `tmhabilidadesdesarrollar`
ADD CONSTRAINT `fk_Hab_IdPro` FOREIGN KEY (`IdPrograma`) REFERENCES `tmprogramas` (`IdPrograma`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tmpagos`
--
ALTER TABLE `tmpagos`
ADD CONSTRAINT `fk_Pag_IdEst` FOREIGN KEY (`IdEstudiante`) REFERENCES `trprogramaestudiantes` (`IdEstudiante`) ON DELETE NO ACTION ON UPDATE CASCADE,
ADD CONSTRAINT `fk_Pag_ProOfe` FOREIGN KEY (`IdPrograma_Ofertado`) REFERENCES `trprogramaestudiantes` (`IdPrograma_Ofertado`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `tmrequisitos`
--
ALTER TABLE `tmrequisitos`
ADD CONSTRAINT `fk_Req_IdPro` FOREIGN KEY (`IdPrograma`) REFERENCES `tmprogramas` (`IdPrograma`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `trprogramaestudiantes`
--
ALTER TABLE `trprogramaestudiantes`
ADD CONSTRAINT `fk_trProEst_IdEst` FOREIGN KEY (`IdEstudiante`) REFERENCES `tmestudiantes` (`NroDocumento`) ON DELETE NO ACTION ON UPDATE CASCADE,
ADD CONSTRAINT `fk_trProEst_IdProOfe` FOREIGN KEY (`IdPrograma_Ofertado`) REFERENCES `trprograma_ofertado` (`IdPrograma_Ofertado`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Filtros para la tabla `trprograma_ofertado`
--
ALTER TABLE `trprograma_ofertado`
ADD CONSTRAINT `fk_pro_ofer_idTipPro` FOREIGN KEY (`IdTipoPrograma`) REFERENCES `tmtiposprograma` (`IdTipoPrograma`) ON UPDATE CASCADE,
ADD CONSTRAINT `fk_programa` FOREIGN KEY (`IdPrograma`) REFERENCES `tmprogramas` (`IdPrograma`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
