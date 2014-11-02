/*
Navicat MySQL Data Transfer

Source Server         : MySql
Source Server Version : 50524
Source Host           : localhost:3306
Source Database       : programs

Target Server Type    : MYSQL
Target Server Version : 50524
File Encoding         : 65001

Date: 2014-10-30 22:38:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tmciudades`
-- ----------------------------
DROP TABLE IF EXISTS `tmciudades`;
CREATE TABLE `tmciudades` (
  `IdDepartamento` char(2) COLLATE utf8_spanish_ci NOT NULL,
  `IdCiudad` char(3) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`IdCiudad`,`IdDepartamento`),
  KEY `FK_CiuIdDep` (`IdDepartamento`),
  KEY `Ciudades` (`IdCiudad`) USING BTREE,
  CONSTRAINT `fk_tmCiu_idDep` FOREIGN KEY (`IdDepartamento`) REFERENCES `tmdepartamentos` (`IdDepartamento`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tmciudades
-- ----------------------------
INSERT INTO `tmciudades` VALUES ('00', '00', 'SIN CIUDAD');
INSERT INTO `tmciudades` VALUES ('05', '001', 'MEDELLÍN');
INSERT INTO `tmciudades` VALUES ('08', '001', 'BARRANQUILLA');
INSERT INTO `tmciudades` VALUES ('11', '001', 'BOGOTÁ, D.C.');
INSERT INTO `tmciudades` VALUES ('13', '001', 'CARTAGENA');
INSERT INTO `tmciudades` VALUES ('15', '001', 'TUNJA');
INSERT INTO `tmciudades` VALUES ('17', '001', 'MANIZALES');
INSERT INTO `tmciudades` VALUES ('18', '001', 'FLORENCIA');
INSERT INTO `tmciudades` VALUES ('19', '001', 'POPAYÁN');
INSERT INTO `tmciudades` VALUES ('20', '001', 'VALLEDUPAR');
INSERT INTO `tmciudades` VALUES ('23', '001', 'MONTERÍA');
INSERT INTO `tmciudades` VALUES ('25', '001', 'AGUA DE DIOS');
INSERT INTO `tmciudades` VALUES ('27', '001', 'QUIBDÓ');
INSERT INTO `tmciudades` VALUES ('41', '001', 'NEIVA');
INSERT INTO `tmciudades` VALUES ('44', '001', 'RIOHACHA');
INSERT INTO `tmciudades` VALUES ('47', '001', 'SANTA MARTA');
INSERT INTO `tmciudades` VALUES ('50', '001', 'VILLAVICENCIO');
INSERT INTO `tmciudades` VALUES ('52', '001', 'PASTO');
INSERT INTO `tmciudades` VALUES ('54', '001', 'CÚCUTA');
INSERT INTO `tmciudades` VALUES ('63', '001', 'ARMENIA');
INSERT INTO `tmciudades` VALUES ('66', '001', 'PEREIRA');
INSERT INTO `tmciudades` VALUES ('68', '001', 'BUCARAMANGA');
INSERT INTO `tmciudades` VALUES ('70', '001', 'SINCELEJO');
INSERT INTO `tmciudades` VALUES ('73', '001', 'IBAGUÉ');
INSERT INTO `tmciudades` VALUES ('76', '001', 'CALI');
INSERT INTO `tmciudades` VALUES ('81', '001', 'ARAUCA');
INSERT INTO `tmciudades` VALUES ('85', '001', 'YOPAL');
INSERT INTO `tmciudades` VALUES ('86', '001', 'MOCOA');
INSERT INTO `tmciudades` VALUES ('88', '001', 'SAN ANDRÉS');
INSERT INTO `tmciudades` VALUES ('91', '001', 'LETICIA');
INSERT INTO `tmciudades` VALUES ('94', '001', 'INÍRIDA');
INSERT INTO `tmciudades` VALUES ('95', '001', 'SAN JOSÉ DEL GUAVIARE');
INSERT INTO `tmciudades` VALUES ('97', '001', 'MITÚ');
INSERT INTO `tmciudades` VALUES ('99', '001', 'PUERTO CARREÑO');
INSERT INTO `tmciudades` VALUES ('05', '002', 'ABEJORRAL');
INSERT INTO `tmciudades` VALUES ('54', '003', 'ABREGO');
INSERT INTO `tmciudades` VALUES ('05', '004', 'ABRIAQUÍ');
INSERT INTO `tmciudades` VALUES ('13', '006', 'ACHÍ');
INSERT INTO `tmciudades` VALUES ('27', '006', 'ACANDÍ');
INSERT INTO `tmciudades` VALUES ('41', '006', 'ACEVEDO');
INSERT INTO `tmciudades` VALUES ('50', '006', 'ACACÍAS');
INSERT INTO `tmciudades` VALUES ('85', '010', 'AGUAZUL');
INSERT INTO `tmciudades` VALUES ('20', '011', 'AGUACHICA');
INSERT INTO `tmciudades` VALUES ('17', '013', 'AGUADAS');
INSERT INTO `tmciudades` VALUES ('20', '013', 'AGUSTÍN CODAZZI');
INSERT INTO `tmciudades` VALUES ('41', '013', 'AGRADO');
INSERT INTO `tmciudades` VALUES ('68', '013', 'AGUADA');
INSERT INTO `tmciudades` VALUES ('85', '015', 'CHAMEZA');
INSERT INTO `tmciudades` VALUES ('95', '015', 'CALAMAR');
INSERT INTO `tmciudades` VALUES ('41', '016', 'AIPE');
INSERT INTO `tmciudades` VALUES ('25', '019', 'ALBÁN');
INSERT INTO `tmciudades` VALUES ('52', '019', 'ALBÁN');
INSERT INTO `tmciudades` VALUES ('41', '020', 'ALGECIRAS');
INSERT INTO `tmciudades` VALUES ('68', '020', 'ALBANIA');
INSERT INTO `tmciudades` VALUES ('76', '020', 'ALCALÁ');
INSERT INTO `tmciudades` VALUES ('05', '021', 'ALEJANDRÍA');
INSERT INTO `tmciudades` VALUES ('15', '022', 'ALMEIDA');
INSERT INTO `tmciudades` VALUES ('19', '022', 'ALMAGUER');
INSERT INTO `tmciudades` VALUES ('52', '022', 'ALDANA');
INSERT INTO `tmciudades` VALUES ('73', '024', 'ALPUJARRA');
INSERT INTO `tmciudades` VALUES ('27', '025', 'ALTO BAUDÓ');
INSERT INTO `tmciudades` VALUES ('95', '025', 'EL RETORNO');
INSERT INTO `tmciudades` VALUES ('41', '026', 'ALTAMIRA');
INSERT INTO `tmciudades` VALUES ('73', '026', 'ALVARADO');
INSERT INTO `tmciudades` VALUES ('18', '029', 'ALBANIA');
INSERT INTO `tmciudades` VALUES ('05', '030', 'AMAGÁ');
INSERT INTO `tmciudades` VALUES ('13', '030', 'ALTOS DEL ROSARIO');
INSERT INTO `tmciudades` VALUES ('47', '030', 'ALGARROBO');
INSERT INTO `tmciudades` VALUES ('73', '030', 'AMBALEMA');
INSERT INTO `tmciudades` VALUES ('05', '031', 'AMALFI');
INSERT INTO `tmciudades` VALUES ('20', '032', 'ASTREA');
INSERT INTO `tmciudades` VALUES ('05', '034', 'ANDES');
INSERT INTO `tmciudades` VALUES ('25', '035', 'ANAPOIMA');
INSERT INTO `tmciudades` VALUES ('44', '035', 'ALBANIA');
INSERT INTO `tmciudades` VALUES ('05', '036', 'ANGELÓPOLIS');
INSERT INTO `tmciudades` VALUES ('52', '036', 'ANCUYÁ');
INSERT INTO `tmciudades` VALUES ('76', '036', 'ANDALUCÍA');
INSERT INTO `tmciudades` VALUES ('05', '038', 'ANGOSTURA');
INSERT INTO `tmciudades` VALUES ('05', '040', 'ANORÍ');
INSERT INTO `tmciudades` VALUES ('25', '040', 'ANOLAIMA');
INSERT INTO `tmciudades` VALUES ('76', '041', 'ANSERMANUEVO');
INSERT INTO `tmciudades` VALUES ('05', '042', 'SANTAFÉ DE ANTIOQUIA');
INSERT INTO `tmciudades` VALUES ('13', '042', 'ARENAL');
INSERT INTO `tmciudades` VALUES ('17', '042', 'ANSERMA');
INSERT INTO `tmciudades` VALUES ('73', '043', 'ANZOÁTEGUI');
INSERT INTO `tmciudades` VALUES ('05', '044', 'ANZA');
INSERT INTO `tmciudades` VALUES ('05', '045', 'APARTADÓ');
INSERT INTO `tmciudades` VALUES ('20', '045', 'BECERRIL');
INSERT INTO `tmciudades` VALUES ('66', '045', 'APÍA');
INSERT INTO `tmciudades` VALUES ('15', '047', 'AQUITANIA');
INSERT INTO `tmciudades` VALUES ('17', '050', 'ARANZAZU');
INSERT INTO `tmciudades` VALUES ('19', '050', 'ARGELIA');
INSERT INTO `tmciudades` VALUES ('27', '050', 'ATRATO');
INSERT INTO `tmciudades` VALUES ('05', '051', 'ARBOLETES');
INSERT INTO `tmciudades` VALUES ('15', '051', 'ARCABUCO');
INSERT INTO `tmciudades` VALUES ('52', '051', 'ARBOLEDA');
INSERT INTO `tmciudades` VALUES ('54', '051', 'ARBOLEDAS');
INSERT INTO `tmciudades` VALUES ('68', '051', 'ARATOCA');
INSERT INTO `tmciudades` VALUES ('13', '052', 'ARJONA');
INSERT INTO `tmciudades` VALUES ('25', '053', 'ARBELÁEZ');
INSERT INTO `tmciudades` VALUES ('47', '053', 'ARACATACA');
INSERT INTO `tmciudades` VALUES ('76', '054', 'ARGELIA');
INSERT INTO `tmciudades` VALUES ('05', '055', 'ARGELIA');
INSERT INTO `tmciudades` VALUES ('73', '055', 'ARMERO');
INSERT INTO `tmciudades` VALUES ('47', '058', 'ARIGUANÍ');
INSERT INTO `tmciudades` VALUES ('05', '059', 'ARMENIA');
INSERT INTO `tmciudades` VALUES ('20', '060', 'BOSCONIA');
INSERT INTO `tmciudades` VALUES ('13', '062', 'ARROYOHONDO');
INSERT INTO `tmciudades` VALUES ('81', '065', 'ARAUQUITA');
INSERT INTO `tmciudades` VALUES ('73', '067', 'ATACO');
INSERT INTO `tmciudades` VALUES ('23', '068', 'AYAPEL');
INSERT INTO `tmciudades` VALUES ('27', '073', 'BAGADÓ');
INSERT INTO `tmciudades` VALUES ('13', '074', 'BARRANCO DE LOBA');
INSERT INTO `tmciudades` VALUES ('19', '075', 'BALBOA');
INSERT INTO `tmciudades` VALUES ('27', '075', 'BAHÍA SOLANO');
INSERT INTO `tmciudades` VALUES ('66', '075', 'BALBOA');
INSERT INTO `tmciudades` VALUES ('27', '077', 'BAJO BAUDÓ');
INSERT INTO `tmciudades` VALUES ('68', '077', 'BARBOSA');
INSERT INTO `tmciudades` VALUES ('08', '078', 'BARANOA');
INSERT INTO `tmciudades` VALUES ('41', '078', 'BARAYA');
INSERT INTO `tmciudades` VALUES ('44', '078', 'BARRANCAS');
INSERT INTO `tmciudades` VALUES ('05', '079', 'BARBOSA');
INSERT INTO `tmciudades` VALUES ('23', '079', 'BUENAVISTA');
INSERT INTO `tmciudades` VALUES ('52', '079', 'BARBACOAS');
INSERT INTO `tmciudades` VALUES ('68', '079', 'BARICHARA');
INSERT INTO `tmciudades` VALUES ('68', '081', 'BARRANCABERMEJA');
INSERT INTO `tmciudades` VALUES ('52', '083', 'BELÉN');
INSERT INTO `tmciudades` VALUES ('05', '086', 'BELMIRA');
INSERT INTO `tmciudades` VALUES ('25', '086', 'BELTRÁN');
INSERT INTO `tmciudades` VALUES ('15', '087', 'BELÉN');
INSERT INTO `tmciudades` VALUES ('05', '088', 'BELLO');
INSERT INTO `tmciudades` VALUES ('17', '088', 'BELALCÁZAR');
INSERT INTO `tmciudades` VALUES ('66', '088', 'BELÉN DE UMBRÍA');
INSERT INTO `tmciudades` VALUES ('15', '090', 'BERBEO');
INSERT INTO `tmciudades` VALUES ('23', '090', 'CANALETE');
INSERT INTO `tmciudades` VALUES ('44', '090', 'DIBULLA');
INSERT INTO `tmciudades` VALUES ('05', '091', 'BETANIA');
INSERT INTO `tmciudades` VALUES ('15', '092', 'BETÉITIVA');
INSERT INTO `tmciudades` VALUES ('68', '092', 'BETULIA');
INSERT INTO `tmciudades` VALUES ('05', '093', 'BETULIA');
INSERT INTO `tmciudades` VALUES ('18', '094', 'BELÉN DE LOS ANDAQUÍES');
INSERT INTO `tmciudades` VALUES ('25', '095', 'BITUIMA');
INSERT INTO `tmciudades` VALUES ('15', '097', 'BOAVITA');
INSERT INTO `tmciudades` VALUES ('44', '098', 'DISTRACCIÓN');
INSERT INTO `tmciudades` VALUES ('25', '099', 'BOJACÁ');
INSERT INTO `tmciudades` VALUES ('27', '099', 'BOJAYA');
INSERT INTO `tmciudades` VALUES ('54', '099', 'BOCHALEMA');
INSERT INTO `tmciudades` VALUES ('19', '100', 'BOLÍVAR');
INSERT INTO `tmciudades` VALUES ('76', '100', 'BOLÍVAR');
INSERT INTO `tmciudades` VALUES ('05', '101', 'CIUDAD BOLÍVAR');
INSERT INTO `tmciudades` VALUES ('68', '101', 'BOLÍVAR');
INSERT INTO `tmciudades` VALUES ('15', '104', 'BOYACÁ');
INSERT INTO `tmciudades` VALUES ('15', '106', 'BRICEÑO');
INSERT INTO `tmciudades` VALUES ('05', '107', 'BRICEÑO');
INSERT INTO `tmciudades` VALUES ('15', '109', 'BUENAVISTA');
INSERT INTO `tmciudades` VALUES ('54', '109', 'BUCARASICA');
INSERT INTO `tmciudades` VALUES ('76', '109', 'BUENAVENTURA');
INSERT INTO `tmciudades` VALUES ('19', '110', 'BUENOS AIRES');
INSERT INTO `tmciudades` VALUES ('44', '110', 'EL MOLINO');
INSERT INTO `tmciudades` VALUES ('50', '110', 'BARRANCA DE UPÍA');
INSERT INTO `tmciudades` VALUES ('52', '110', 'BUESACO');
INSERT INTO `tmciudades` VALUES ('70', '110', 'BUENAVISTA');
INSERT INTO `tmciudades` VALUES ('63', '111', 'BUENAVISTA');
INSERT INTO `tmciudades` VALUES ('76', '111', 'GUADALAJARA DE BUGA');
INSERT INTO `tmciudades` VALUES ('05', '113', 'BURITICÁ');
INSERT INTO `tmciudades` VALUES ('76', '113', 'BUGALAGRANDE');
INSERT INTO `tmciudades` VALUES ('15', '114', 'BUSBANZÁ');
INSERT INTO `tmciudades` VALUES ('05', '120', 'CÁCERES');
INSERT INTO `tmciudades` VALUES ('25', '120', 'CABRERA');
INSERT INTO `tmciudades` VALUES ('68', '121', 'CABRERA');
INSERT INTO `tmciudades` VALUES ('76', '122', 'CAICEDONIA');
INSERT INTO `tmciudades` VALUES ('25', '123', 'CACHIPAY');
INSERT INTO `tmciudades` VALUES ('50', '124', 'CABUYARO');
INSERT INTO `tmciudades` VALUES ('70', '124', 'CAIMITO');
INSERT INTO `tmciudades` VALUES ('73', '124', 'CAJAMARCA');
INSERT INTO `tmciudades` VALUES ('05', '125', 'CAICEDO');
INSERT INTO `tmciudades` VALUES ('54', '125', 'CÁCOTA');
INSERT INTO `tmciudades` VALUES ('85', '125', 'HATO COROZAL');
INSERT INTO `tmciudades` VALUES ('25', '126', 'CAJICÁ');
INSERT INTO `tmciudades` VALUES ('76', '126', 'CALIMA');
INSERT INTO `tmciudades` VALUES ('54', '128', 'CACHIRÁ');
INSERT INTO `tmciudades` VALUES ('05', '129', 'CALDAS');
INSERT INTO `tmciudades` VALUES ('19', '130', 'CAJIBÍO');
INSERT INTO `tmciudades` VALUES ('63', '130', 'CALARCA');
INSERT INTO `tmciudades` VALUES ('76', '130', 'CANDELARIA');
INSERT INTO `tmciudades` VALUES ('15', '131', 'CALDAS');
INSERT INTO `tmciudades` VALUES ('41', '132', 'CAMPOALEGRE');
INSERT INTO `tmciudades` VALUES ('68', '132', 'CALIFORNIA');
INSERT INTO `tmciudades` VALUES ('05', '134', 'CAMPAMENTO');
INSERT INTO `tmciudades` VALUES ('15', '135', 'CAMPOHERMOSO');
INSERT INTO `tmciudades` VALUES ('27', '135', 'EL CANTÓN DEL SAN PABLO');
INSERT INTO `tmciudades` VALUES ('85', '136', 'LA SALINA');
INSERT INTO `tmciudades` VALUES ('08', '137', 'CAMPO DE LA CRUZ');
INSERT INTO `tmciudades` VALUES ('19', '137', 'CALDONO');
INSERT INTO `tmciudades` VALUES ('05', '138', 'CAÑASGORDAS');
INSERT INTO `tmciudades` VALUES ('85', '139', 'MANÍ');
INSERT INTO `tmciudades` VALUES ('13', '140', 'CALAMAR');
INSERT INTO `tmciudades` VALUES ('08', '141', 'CANDELARIA');
INSERT INTO `tmciudades` VALUES ('05', '142', 'CARACOLÍ');
INSERT INTO `tmciudades` VALUES ('19', '142', 'CALOTO');
INSERT INTO `tmciudades` VALUES ('05', '145', 'CARAMANTA');
INSERT INTO `tmciudades` VALUES ('05', '147', 'CAREPA');
INSERT INTO `tmciudades` VALUES ('68', '147', 'CAPITANEJO');
INSERT INTO `tmciudades` VALUES ('76', '147', 'CARTAGO');
INSERT INTO `tmciudades` VALUES ('05', '148', 'EL CARMEN DE VIBORAL');
INSERT INTO `tmciudades` VALUES ('25', '148', 'CAPARRAPÍ');
INSERT INTO `tmciudades` VALUES ('73', '148', 'CARMEN DE APICALÁ');
INSERT INTO `tmciudades` VALUES ('05', '150', 'CAROLINA');
INSERT INTO `tmciudades` VALUES ('18', '150', 'CARTAGENA DEL CHAIRÁ');
INSERT INTO `tmciudades` VALUES ('27', '150', 'CARMEN DEL DARIÉN');
INSERT INTO `tmciudades` VALUES ('50', '150', 'CASTILLA LA NUEVA');
INSERT INTO `tmciudades` VALUES ('25', '151', 'CAQUEZA');
INSERT INTO `tmciudades` VALUES ('68', '152', 'CARCASÍ');
INSERT INTO `tmciudades` VALUES ('73', '152', 'CASABIANCA');
INSERT INTO `tmciudades` VALUES ('05', '154', 'CAUCASIA');
INSERT INTO `tmciudades` VALUES ('25', '154', 'CARMEN DE CARUPA');
INSERT INTO `tmciudades` VALUES ('13', '160', 'CANTAGALLO');
INSERT INTO `tmciudades` VALUES ('27', '160', 'CÉRTEGUI');
INSERT INTO `tmciudades` VALUES ('68', '160', 'CEPITÁ');
INSERT INTO `tmciudades` VALUES ('47', '161', 'CERRO SAN ANTONIO');
INSERT INTO `tmciudades` VALUES ('97', '161', 'CARURU');
INSERT INTO `tmciudades` VALUES ('15', '162', 'CERINZA');
INSERT INTO `tmciudades` VALUES ('23', '162', 'CERETÉ');
INSERT INTO `tmciudades` VALUES ('68', '162', 'CERRITO');
INSERT INTO `tmciudades` VALUES ('85', '162', 'MONTERREY');
INSERT INTO `tmciudades` VALUES ('68', '167', 'CHARALÁ');
INSERT INTO `tmciudades` VALUES ('23', '168', 'CHIMÁ');
INSERT INTO `tmciudades` VALUES ('25', '168', 'CHAGUANÍ');
INSERT INTO `tmciudades` VALUES ('73', '168', 'CHAPARRAL');
INSERT INTO `tmciudades` VALUES ('68', '169', 'CHARTA');
INSERT INTO `tmciudades` VALUES ('47', '170', 'CHIVOLO');
INSERT INTO `tmciudades` VALUES ('66', '170', 'DOSQUEBRADAS');
INSERT INTO `tmciudades` VALUES ('05', '172', 'CHIGORODÓ');
INSERT INTO `tmciudades` VALUES ('15', '172', 'CHINAVITA');
INSERT INTO `tmciudades` VALUES ('54', '172', 'CHINÁCOTA');
INSERT INTO `tmciudades` VALUES ('17', '174', 'CHINCHINÁ');
INSERT INTO `tmciudades` VALUES ('54', '174', 'CHITAGÁ');
INSERT INTO `tmciudades` VALUES ('20', '175', 'CHIMICHAGUA');
INSERT INTO `tmciudades` VALUES ('25', '175', 'CHÍA');
INSERT INTO `tmciudades` VALUES ('15', '176', 'CHIQUINQUIRÁ');
INSERT INTO `tmciudades` VALUES ('68', '176', 'CHIMA');
INSERT INTO `tmciudades` VALUES ('20', '178', 'CHIRIGUANÁ');
INSERT INTO `tmciudades` VALUES ('25', '178', 'CHIPAQUE');
INSERT INTO `tmciudades` VALUES ('68', '179', 'CHIPATÁ');
INSERT INTO `tmciudades` VALUES ('15', '180', 'CHISCAS');
INSERT INTO `tmciudades` VALUES ('25', '181', 'CHOACHÍ');
INSERT INTO `tmciudades` VALUES ('23', '182', 'CHINÚ');
INSERT INTO `tmciudades` VALUES ('15', '183', 'CHITA');
INSERT INTO `tmciudades` VALUES ('25', '183', 'CHOCONTÁ');
INSERT INTO `tmciudades` VALUES ('15', '185', 'CHITARAQUE');
INSERT INTO `tmciudades` VALUES ('15', '187', 'CHIVATÁ');
INSERT INTO `tmciudades` VALUES ('13', '188', 'CICUCO');
INSERT INTO `tmciudades` VALUES ('15', '189', 'CIÉNEGA');
INSERT INTO `tmciudades` VALUES ('23', '189', 'CIÉNAGA DE ORO');
INSERT INTO `tmciudades` VALUES ('47', '189', 'CIÉNAGA');
INSERT INTO `tmciudades` VALUES ('05', '190', 'CISNEROS');
INSERT INTO `tmciudades` VALUES ('63', '190', 'CIRCASIA');
INSERT INTO `tmciudades` VALUES ('68', '190', 'CIMITARRA');
INSERT INTO `tmciudades` VALUES ('05', '197', 'COCORNÁ');
INSERT INTO `tmciudades` VALUES ('25', '200', 'COGUA');
INSERT INTO `tmciudades` VALUES ('73', '200', 'COELLO');
INSERT INTO `tmciudades` VALUES ('95', '200', 'MIRAFLORES');
INSERT INTO `tmciudades` VALUES ('52', '203', 'COLÓN');
INSERT INTO `tmciudades` VALUES ('15', '204', 'CÓMBITA');
INSERT INTO `tmciudades` VALUES ('70', '204', 'COLOSO');
INSERT INTO `tmciudades` VALUES ('18', '205', 'CURILLO');
INSERT INTO `tmciudades` VALUES ('27', '205', 'CONDOTO');
INSERT INTO `tmciudades` VALUES ('47', '205', 'CONCORDIA');
INSERT INTO `tmciudades` VALUES ('05', '206', 'CONCEPCIÓN');
INSERT INTO `tmciudades` VALUES ('41', '206', 'COLOMBIA');
INSERT INTO `tmciudades` VALUES ('54', '206', 'CONVENCIÓN');
INSERT INTO `tmciudades` VALUES ('52', '207', 'CONSACA');
INSERT INTO `tmciudades` VALUES ('68', '207', 'CONCEPCIÓN');
INSERT INTO `tmciudades` VALUES ('05', '209', 'CONCORDIA');
INSERT INTO `tmciudades` VALUES ('68', '209', 'CONFINES');
INSERT INTO `tmciudades` VALUES ('52', '210', 'CONTADERO');
INSERT INTO `tmciudades` VALUES ('68', '211', 'CONTRATACIÓN');
INSERT INTO `tmciudades` VALUES ('05', '212', 'COPACABANA');
INSERT INTO `tmciudades` VALUES ('13', '212', 'CÓRDOBA');
INSERT INTO `tmciudades` VALUES ('15', '212', 'COPER');
INSERT INTO `tmciudades` VALUES ('19', '212', 'CORINTO');
INSERT INTO `tmciudades` VALUES ('63', '212', 'CÓRDOBA');
INSERT INTO `tmciudades` VALUES ('25', '214', 'COTA');
INSERT INTO `tmciudades` VALUES ('15', '215', 'CORRALES');
INSERT INTO `tmciudades` VALUES ('52', '215', 'CÓRDOBA');
INSERT INTO `tmciudades` VALUES ('70', '215', 'COROZAL');
INSERT INTO `tmciudades` VALUES ('68', '217', 'COROMORO');
INSERT INTO `tmciudades` VALUES ('73', '217', 'COYAIMA');
INSERT INTO `tmciudades` VALUES ('15', '218', 'COVARACHÍA');
INSERT INTO `tmciudades` VALUES ('86', '219', 'COLÓN');
INSERT INTO `tmciudades` VALUES ('81', '220', 'CRAVO NORTE');
INSERT INTO `tmciudades` VALUES ('70', '221', 'COVEÑAS');
INSERT INTO `tmciudades` VALUES ('13', '222', 'CLEMENCIA');
INSERT INTO `tmciudades` VALUES ('15', '223', 'CUBARÁ');
INSERT INTO `tmciudades` VALUES ('50', '223', 'CUBARRAL');
INSERT INTO `tmciudades` VALUES ('54', '223', 'CUCUTILLA');
INSERT INTO `tmciudades` VALUES ('15', '224', 'CUCAITA');
INSERT INTO `tmciudades` VALUES ('25', '224', 'CUCUNUBÁ');
INSERT INTO `tmciudades` VALUES ('52', '224', 'CUASPUD');
INSERT INTO `tmciudades` VALUES ('85', '225', 'NUNCHÍA');
INSERT INTO `tmciudades` VALUES ('15', '226', 'CUÍTIVA');
INSERT INTO `tmciudades` VALUES ('50', '226', 'CUMARAL');
INSERT INTO `tmciudades` VALUES ('73', '226', 'CUNDAY');
INSERT INTO `tmciudades` VALUES ('52', '227', 'CUMBAL');
INSERT INTO `tmciudades` VALUES ('20', '228', 'CURUMANÍ');
INSERT INTO `tmciudades` VALUES ('68', '229', 'CURITÍ');
INSERT INTO `tmciudades` VALUES ('70', '230', 'CHALÁN');
INSERT INTO `tmciudades` VALUES ('85', '230', 'OROCUÉ');
INSERT INTO `tmciudades` VALUES ('15', '232', 'CHÍQUIZA');
INSERT INTO `tmciudades` VALUES ('52', '233', 'CUMBITARA');
INSERT INTO `tmciudades` VALUES ('70', '233', 'EL ROBLE');
INSERT INTO `tmciudades` VALUES ('76', '233', 'DAGUA');
INSERT INTO `tmciudades` VALUES ('05', '234', 'DABEIBA');
INSERT INTO `tmciudades` VALUES ('68', '235', 'EL CARMEN DE CHUCURÍ');
INSERT INTO `tmciudades` VALUES ('70', '235', 'GALERAS');
INSERT INTO `tmciudades` VALUES ('15', '236', 'CHIVOR');
INSERT INTO `tmciudades` VALUES ('73', '236', 'DOLORES');
INSERT INTO `tmciudades` VALUES ('05', '237', 'DONMATÍAS');
INSERT INTO `tmciudades` VALUES ('15', '238', 'DUITAMA');
INSERT INTO `tmciudades` VALUES ('20', '238', 'EL COPEY');
INSERT INTO `tmciudades` VALUES ('54', '239', 'DURANIA');
INSERT INTO `tmciudades` VALUES ('05', '240', 'EBÉJICO');
INSERT INTO `tmciudades` VALUES ('52', '240', 'CHACHAGÜÍ');
INSERT INTO `tmciudades` VALUES ('76', '243', 'EL ÁGUILA');
INSERT INTO `tmciudades` VALUES ('13', '244', 'EL CARMEN DE BOLÍVAR');
INSERT INTO `tmciudades` VALUES ('15', '244', 'EL COCUY');
INSERT INTO `tmciudades` VALUES ('41', '244', 'ELÍAS');
INSERT INTO `tmciudades` VALUES ('25', '245', 'EL COLEGIO');
INSERT INTO `tmciudades` VALUES ('27', '245', 'EL CARMEN DE ATRATO');
INSERT INTO `tmciudades` VALUES ('47', '245', 'EL BANCO');
INSERT INTO `tmciudades` VALUES ('50', '245', 'EL CALVARIO');
INSERT INTO `tmciudades` VALUES ('54', '245', 'EL CARMEN');
INSERT INTO `tmciudades` VALUES ('68', '245', 'EL GUACAMAYO');
INSERT INTO `tmciudades` VALUES ('76', '246', 'EL CAIRO');
INSERT INTO `tmciudades` VALUES ('18', '247', 'EL DONCELLO');
INSERT INTO `tmciudades` VALUES ('13', '248', 'EL GUAMO');
INSERT INTO `tmciudades` VALUES ('15', '248', 'EL ESPINO');
INSERT INTO `tmciudades` VALUES ('76', '248', 'EL CERRITO');
INSERT INTO `tmciudades` VALUES ('05', '250', 'EL BAGRE');
INSERT INTO `tmciudades` VALUES ('20', '250', 'EL PASO');
INSERT INTO `tmciudades` VALUES ('27', '250', 'EL LITORAL DEL SAN JUAN');
INSERT INTO `tmciudades` VALUES ('52', '250', 'EL CHARCO');
INSERT INTO `tmciudades` VALUES ('54', '250', 'EL TARRA');
INSERT INTO `tmciudades` VALUES ('68', '250', 'EL PEÑÓN');
INSERT INTO `tmciudades` VALUES ('76', '250', 'EL DOVIO');
INSERT INTO `tmciudades` VALUES ('85', '250', 'PAZ DE ARIPORO');
INSERT INTO `tmciudades` VALUES ('50', '251', 'EL CASTILLO');
INSERT INTO `tmciudades` VALUES ('52', '254', 'EL PEÑOL');
INSERT INTO `tmciudades` VALUES ('68', '255', 'EL PLAYÓN');
INSERT INTO `tmciudades` VALUES ('18', '256', 'EL PAUJIL');
INSERT INTO `tmciudades` VALUES ('19', '256', 'EL TAMBO');
INSERT INTO `tmciudades` VALUES ('52', '256', 'EL ROSARIO');
INSERT INTO `tmciudades` VALUES ('25', '258', 'EL PEÑÓN');
INSERT INTO `tmciudades` VALUES ('47', '258', 'EL PIÑON');
INSERT INTO `tmciudades` VALUES ('52', '258', 'EL TABLÓN DE GÓMEZ');
INSERT INTO `tmciudades` VALUES ('25', '260', 'EL ROSAL');
INSERT INTO `tmciudades` VALUES ('52', '260', 'EL TAMBO');
INSERT INTO `tmciudades` VALUES ('54', '261', 'EL ZULIA');
INSERT INTO `tmciudades` VALUES ('85', '263', 'PORE');
INSERT INTO `tmciudades` VALUES ('91', '263', 'EL ENCANTO');
INSERT INTO `tmciudades` VALUES ('05', '264', 'ENTRERRIOS');
INSERT INTO `tmciudades` VALUES ('68', '264', 'ENCINO');
INSERT INTO `tmciudades` VALUES ('70', '265', 'GUARANDA');
INSERT INTO `tmciudades` VALUES ('05', '266', 'ENVIGADO');
INSERT INTO `tmciudades` VALUES ('68', '266', 'ENCISO');
INSERT INTO `tmciudades` VALUES ('13', '268', 'EL PEÑÓN');
INSERT INTO `tmciudades` VALUES ('47', '268', 'EL RETÉN');
INSERT INTO `tmciudades` VALUES ('73', '268', 'ESPINAL');
INSERT INTO `tmciudades` VALUES ('25', '269', 'FACATATIVÁ');
INSERT INTO `tmciudades` VALUES ('50', '270', 'EL DORADO');
INSERT INTO `tmciudades` VALUES ('73', '270', 'FALAN');
INSERT INTO `tmciudades` VALUES ('68', '271', 'FLORIÁN');
INSERT INTO `tmciudades` VALUES ('15', '272', 'FIRAVITOBA');
INSERT INTO `tmciudades` VALUES ('17', '272', 'FILADELFIA');
INSERT INTO `tmciudades` VALUES ('63', '272', 'FILANDIA');
INSERT INTO `tmciudades` VALUES ('73', '275', 'FLANDES');
INSERT INTO `tmciudades` VALUES ('76', '275', 'FLORIDA');
INSERT INTO `tmciudades` VALUES ('15', '276', 'FLORESTA');
INSERT INTO `tmciudades` VALUES ('68', '276', 'FLORIDABLANCA');
INSERT INTO `tmciudades` VALUES ('25', '279', 'FOMEQUE');
INSERT INTO `tmciudades` VALUES ('44', '279', 'FONSECA');
INSERT INTO `tmciudades` VALUES ('85', '279', 'RECETOR');
INSERT INTO `tmciudades` VALUES ('25', '281', 'FOSCA');
INSERT INTO `tmciudades` VALUES ('05', '282', 'FREDONIA');
INSERT INTO `tmciudades` VALUES ('73', '283', 'FRESNO');
INSERT INTO `tmciudades` VALUES ('05', '284', 'FRONTINO');
INSERT INTO `tmciudades` VALUES ('25', '286', 'FUNZA');
INSERT INTO `tmciudades` VALUES ('50', '287', 'FUENTE DE ORO');
INSERT INTO `tmciudades` VALUES ('52', '287', 'FUNES');
INSERT INTO `tmciudades` VALUES ('25', '288', 'FÚQUENE');
INSERT INTO `tmciudades` VALUES ('47', '288', 'FUNDACIÓN');
INSERT INTO `tmciudades` VALUES ('19', '290', 'FLORENCIA');
INSERT INTO `tmciudades` VALUES ('25', '290', 'FUSAGASUGÁ');
INSERT INTO `tmciudades` VALUES ('15', '293', 'GACHANTIVÁ');
INSERT INTO `tmciudades` VALUES ('25', '293', 'GACHALA');
INSERT INTO `tmciudades` VALUES ('20', '295', 'GAMARRA');
INSERT INTO `tmciudades` VALUES ('25', '295', 'GACHANCIPÁ');
INSERT INTO `tmciudades` VALUES ('08', '296', 'GALAPA');
INSERT INTO `tmciudades` VALUES ('15', '296', 'GAMEZA');
INSERT INTO `tmciudades` VALUES ('68', '296', 'GALÁN');
INSERT INTO `tmciudades` VALUES ('25', '297', 'GACHETÁ');
INSERT INTO `tmciudades` VALUES ('41', '298', 'GARZÓN');
INSERT INTO `tmciudades` VALUES ('68', '298', 'GAMBITA');
INSERT INTO `tmciudades` VALUES ('15', '299', 'GARAGOA');
INSERT INTO `tmciudades` VALUES ('25', '299', 'GAMA');
INSERT INTO `tmciudades` VALUES ('13', '300', 'HATILLO DE LOBA');
INSERT INTO `tmciudades` VALUES ('19', '300', 'GUACHENÉ');
INSERT INTO `tmciudades` VALUES ('23', '300', 'COTORRA');
INSERT INTO `tmciudades` VALUES ('81', '300', 'FORTUL');
INSERT INTO `tmciudades` VALUES ('85', '300', 'SABANALARGA');
INSERT INTO `tmciudades` VALUES ('63', '302', 'GÉNOVA');
INSERT INTO `tmciudades` VALUES ('05', '306', 'GIRALDO');
INSERT INTO `tmciudades` VALUES ('41', '306', 'GIGANTE');
INSERT INTO `tmciudades` VALUES ('76', '306', 'GINEBRA');
INSERT INTO `tmciudades` VALUES ('25', '307', 'GIRARDOT');
INSERT INTO `tmciudades` VALUES ('68', '307', 'GIRÓN');
INSERT INTO `tmciudades` VALUES ('05', '308', 'GIRARDOTA');
INSERT INTO `tmciudades` VALUES ('05', '310', 'GÓMEZ PLATA');
INSERT INTO `tmciudades` VALUES ('20', '310', 'GONZÁLEZ');
INSERT INTO `tmciudades` VALUES ('25', '312', 'GRANADA');
INSERT INTO `tmciudades` VALUES ('05', '313', 'GRANADA');
INSERT INTO `tmciudades` VALUES ('50', '313', 'GRANADA');
INSERT INTO `tmciudades` VALUES ('54', '313', 'GRAMALOTE');
INSERT INTO `tmciudades` VALUES ('05', '315', 'GUADALUPE');
INSERT INTO `tmciudades` VALUES ('85', '315', 'SÁCAMA');
INSERT INTO `tmciudades` VALUES ('15', '317', 'GUACAMAYAS');
INSERT INTO `tmciudades` VALUES ('25', '317', 'GUACHETÁ');
INSERT INTO `tmciudades` VALUES ('52', '317', 'GUACHUCAL');
INSERT INTO `tmciudades` VALUES ('05', '318', 'GUARNE');
INSERT INTO `tmciudades` VALUES ('19', '318', 'GUAPI');
INSERT INTO `tmciudades` VALUES ('47', '318', 'GUAMAL');
INSERT INTO `tmciudades` VALUES ('50', '318', 'GUAMAL');
INSERT INTO `tmciudades` VALUES ('66', '318', 'GUÁTICA');
INSERT INTO `tmciudades` VALUES ('68', '318', 'GUACA');
INSERT INTO `tmciudades` VALUES ('76', '318', 'GUACARÍ');
INSERT INTO `tmciudades` VALUES ('41', '319', 'GUADALUPE');
INSERT INTO `tmciudades` VALUES ('73', '319', 'GUAMO');
INSERT INTO `tmciudades` VALUES ('25', '320', 'GUADUAS');
INSERT INTO `tmciudades` VALUES ('52', '320', 'GUAITARILLA');
INSERT INTO `tmciudades` VALUES ('68', '320', 'GUADALUPE');
INSERT INTO `tmciudades` VALUES ('86', '320', 'ORITO');
INSERT INTO `tmciudades` VALUES ('05', '321', 'GUATAPE');
INSERT INTO `tmciudades` VALUES ('15', '322', 'GUATEQUE');
INSERT INTO `tmciudades` VALUES ('25', '322', 'GUASCA');
INSERT INTO `tmciudades` VALUES ('68', '322', 'GUAPOTÁ');
INSERT INTO `tmciudades` VALUES ('52', '323', 'GUALMATÁN');
INSERT INTO `tmciudades` VALUES ('25', '324', 'GUATAQUÍ');
INSERT INTO `tmciudades` VALUES ('68', '324', 'GUAVATÁ');
INSERT INTO `tmciudades` VALUES ('15', '325', 'GUAYATÁ');
INSERT INTO `tmciudades` VALUES ('50', '325', 'MAPIRIPÁN');
INSERT INTO `tmciudades` VALUES ('85', '325', 'SAN LUIS DE PALENQUE');
INSERT INTO `tmciudades` VALUES ('25', '326', 'GUATAVITA');
INSERT INTO `tmciudades` VALUES ('68', '327', 'GÜEPSA');
INSERT INTO `tmciudades` VALUES ('25', '328', 'GUAYABAL DE SIQUIMA');
INSERT INTO `tmciudades` VALUES ('50', '330', 'MESETAS');
INSERT INTO `tmciudades` VALUES ('15', '332', 'GÜICÁN');
INSERT INTO `tmciudades` VALUES ('25', '335', 'GUAYABETAL');
INSERT INTO `tmciudades` VALUES ('25', '339', 'GUTIÉRREZ');
INSERT INTO `tmciudades` VALUES ('94', '343', 'BARRANCO MINAS');
INSERT INTO `tmciudades` VALUES ('54', '344', 'HACARÍ');
INSERT INTO `tmciudades` VALUES ('68', '344', 'HATO');
INSERT INTO `tmciudades` VALUES ('05', '347', 'HELICONIA');
INSERT INTO `tmciudades` VALUES ('54', '347', 'HERRÁN');
INSERT INTO `tmciudades` VALUES ('73', '347', 'HERVEO');
INSERT INTO `tmciudades` VALUES ('41', '349', 'HOBO');
INSERT INTO `tmciudades` VALUES ('73', '349', 'HONDA');
INSERT INTO `tmciudades` VALUES ('23', '350', 'LA APARTADA');
INSERT INTO `tmciudades` VALUES ('50', '350', 'LA MACARENA');
INSERT INTO `tmciudades` VALUES ('52', '352', 'ILES');
INSERT INTO `tmciudades` VALUES ('73', '352', 'ICONONZO');
INSERT INTO `tmciudades` VALUES ('05', '353', 'HISPANIA');
INSERT INTO `tmciudades` VALUES ('52', '354', 'IMUÉS');
INSERT INTO `tmciudades` VALUES ('19', '355', 'INZÁ');
INSERT INTO `tmciudades` VALUES ('52', '356', 'IPIALES');
INSERT INTO `tmciudades` VALUES ('41', '357', 'IQUIRA');
INSERT INTO `tmciudades` VALUES ('41', '359', 'ISNOS');
INSERT INTO `tmciudades` VALUES ('05', '360', 'ITAGUI');
INSERT INTO `tmciudades` VALUES ('05', '361', 'ITUANGO');
INSERT INTO `tmciudades` VALUES ('27', '361', 'ISTMINA');
INSERT INTO `tmciudades` VALUES ('15', '362', 'IZA');
INSERT INTO `tmciudades` VALUES ('05', '364', 'JARDÍN');
INSERT INTO `tmciudades` VALUES ('19', '364', 'JAMBALÓ');
INSERT INTO `tmciudades` VALUES ('76', '364', 'JAMUNDÍ');
INSERT INTO `tmciudades` VALUES ('15', '367', 'JENESANO');
INSERT INTO `tmciudades` VALUES ('05', '368', 'JERICÓ');
INSERT INTO `tmciudades` VALUES ('15', '368', 'JERICÓ');
INSERT INTO `tmciudades` VALUES ('25', '368', 'JERUSALÉN');
INSERT INTO `tmciudades` VALUES ('68', '368', 'JESÚS MARÍA');
INSERT INTO `tmciudades` VALUES ('50', '370', 'URIBE');
INSERT INTO `tmciudades` VALUES ('68', '370', 'JORDÁN');
INSERT INTO `tmciudades` VALUES ('08', '372', 'JUAN DE ACOSTA');
INSERT INTO `tmciudades` VALUES ('25', '372', 'JUNÍN');
INSERT INTO `tmciudades` VALUES ('27', '372', 'JURADÓ');
INSERT INTO `tmciudades` VALUES ('05', '376', 'LA CEJA');
INSERT INTO `tmciudades` VALUES ('15', '377', 'LABRANZAGRANDE');
INSERT INTO `tmciudades` VALUES ('25', '377', 'LA CALERA');
INSERT INTO `tmciudades` VALUES ('54', '377', 'LABATECA');
INSERT INTO `tmciudades` VALUES ('68', '377', 'LA BELLEZA');
INSERT INTO `tmciudades` VALUES ('76', '377', 'LA CUMBRE');
INSERT INTO `tmciudades` VALUES ('41', '378', 'LA ARGENTINA');
INSERT INTO `tmciudades` VALUES ('44', '378', 'HATONUEVO');
INSERT INTO `tmciudades` VALUES ('52', '378', 'LA CRUZ');
INSERT INTO `tmciudades` VALUES ('05', '380', 'LA ESTRELLA');
INSERT INTO `tmciudades` VALUES ('15', '380', 'LA CAPILLA');
INSERT INTO `tmciudades` VALUES ('17', '380', 'LA DORADA');
INSERT INTO `tmciudades` VALUES ('52', '381', 'LA FLORIDA');
INSERT INTO `tmciudades` VALUES ('20', '383', 'LA GLORIA');
INSERT INTO `tmciudades` VALUES ('66', '383', 'LA CELIA');
INSERT INTO `tmciudades` VALUES ('52', '385', 'LA LLANADA');
INSERT INTO `tmciudades` VALUES ('54', '385', 'LA ESPERANZA');
INSERT INTO `tmciudades` VALUES ('68', '385', 'LANDÁZURI');
INSERT INTO `tmciudades` VALUES ('25', '386', 'LA MESA');
INSERT INTO `tmciudades` VALUES ('17', '388', 'LA MERCED');
INSERT INTO `tmciudades` VALUES ('05', '390', 'LA PINTADA');
INSERT INTO `tmciudades` VALUES ('52', '390', 'LA TOLA');
INSERT INTO `tmciudades` VALUES ('19', '392', 'LA SIERRA');
INSERT INTO `tmciudades` VALUES ('25', '394', 'LA PALMA');
INSERT INTO `tmciudades` VALUES ('41', '396', 'LA PLATA');
INSERT INTO `tmciudades` VALUES ('19', '397', 'LA VEGA');
INSERT INTO `tmciudades` VALUES ('68', '397', 'LA PAZ');
INSERT INTO `tmciudades` VALUES ('25', '398', 'LA PEÑA');
INSERT INTO `tmciudades` VALUES ('54', '398', 'LA PLAYA');
INSERT INTO `tmciudades` VALUES ('52', '399', 'LA UNIÓN');
INSERT INTO `tmciudades` VALUES ('05', '400', 'LA UNIÓN');
INSERT INTO `tmciudades` VALUES ('20', '400', 'LA JAGUA DE IBIRICO');
INSERT INTO `tmciudades` VALUES ('50', '400', 'LEJANÍAS');
INSERT INTO `tmciudades` VALUES ('66', '400', 'LA VIRGINIA');
INSERT INTO `tmciudades` VALUES ('70', '400', 'LA UNIÓN');
INSERT INTO `tmciudades` VALUES ('76', '400', 'LA UNIÓN');
INSERT INTO `tmciudades` VALUES ('85', '400', 'TÁMARA');
INSERT INTO `tmciudades` VALUES ('15', '401', 'LA VICTORIA');
INSERT INTO `tmciudades` VALUES ('63', '401', 'LA TEBAIDA');
INSERT INTO `tmciudades` VALUES ('25', '402', 'LA VEGA');
INSERT INTO `tmciudades` VALUES ('15', '403', 'LA UVITA');
INSERT INTO `tmciudades` VALUES ('76', '403', 'LA VICTORIA');
INSERT INTO `tmciudades` VALUES ('52', '405', 'LEIVA');
INSERT INTO `tmciudades` VALUES ('54', '405', 'LOS PATIOS');
INSERT INTO `tmciudades` VALUES ('91', '405', 'LA CHORRERA');
INSERT INTO `tmciudades` VALUES ('68', '406', 'LEBRIJA');
INSERT INTO `tmciudades` VALUES ('15', '407', 'VILLA DE LEYVA');
INSERT INTO `tmciudades` VALUES ('25', '407', 'LENGUAZAQUE');
INSERT INTO `tmciudades` VALUES ('91', '407', 'LA PEDRERA');
INSERT INTO `tmciudades` VALUES ('73', '408', 'LÉRIDA');
INSERT INTO `tmciudades` VALUES ('18', '410', 'LA MONTAÑITA');
INSERT INTO `tmciudades` VALUES ('85', '410', 'TAURAMENA');
INSERT INTO `tmciudades` VALUES ('05', '411', 'LIBORINA');
INSERT INTO `tmciudades` VALUES ('52', '411', 'LINARES');
INSERT INTO `tmciudades` VALUES ('73', '411', 'LÍBANO');
INSERT INTO `tmciudades` VALUES ('27', '413', 'LLORÓ');
INSERT INTO `tmciudades` VALUES ('23', '417', 'LORICA');
INSERT INTO `tmciudades` VALUES ('19', '418', 'LÓPEZ');
INSERT INTO `tmciudades` VALUES ('52', '418', 'LOS ANDES');
INSERT INTO `tmciudades` VALUES ('54', '418', 'LOURDES');
INSERT INTO `tmciudades` VALUES ('68', '418', 'LOS SANTOS');
INSERT INTO `tmciudades` VALUES ('70', '418', 'LOS PALMITOS');
INSERT INTO `tmciudades` VALUES ('23', '419', 'LOS CÓRDOBAS');
INSERT INTO `tmciudades` VALUES ('44', '420', 'LA JAGUA DEL PILAR');
INSERT INTO `tmciudades` VALUES ('08', '421', 'LURUACO');
INSERT INTO `tmciudades` VALUES ('05', '425', 'MACEO');
INSERT INTO `tmciudades` VALUES ('15', '425', 'MACANAL');
INSERT INTO `tmciudades` VALUES ('27', '425', 'MEDIO ATRATO');
INSERT INTO `tmciudades` VALUES ('68', '425', 'MACARAVITA');
INSERT INTO `tmciudades` VALUES ('25', '426', 'MACHETA');
INSERT INTO `tmciudades` VALUES ('52', '427', 'MAGÜI');
INSERT INTO `tmciudades` VALUES ('70', '429', 'MAJAGUAL');
INSERT INTO `tmciudades` VALUES ('13', '430', 'MAGANGUÉ');
INSERT INTO `tmciudades` VALUES ('25', '430', 'MADRID');
INSERT INTO `tmciudades` VALUES ('27', '430', 'MEDIO BAUDÓ');
INSERT INTO `tmciudades` VALUES ('44', '430', 'MAICAO');
INSERT INTO `tmciudades` VALUES ('85', '430', 'TRINIDAD');
INSERT INTO `tmciudades` VALUES ('91', '430', 'LA VICTORIA');
INSERT INTO `tmciudades` VALUES ('68', '432', 'MÁLAGA');
INSERT INTO `tmciudades` VALUES ('08', '433', 'MALAMBO');
INSERT INTO `tmciudades` VALUES ('13', '433', 'MAHATES');
INSERT INTO `tmciudades` VALUES ('17', '433', 'MANZANARES');
INSERT INTO `tmciudades` VALUES ('52', '435', 'MALLAMA');
INSERT INTO `tmciudades` VALUES ('08', '436', 'MANATÍ');
INSERT INTO `tmciudades` VALUES ('25', '436', 'MANTA');
INSERT INTO `tmciudades` VALUES ('25', '438', 'MEDINA');
INSERT INTO `tmciudades` VALUES ('05', '440', 'MARINILLA');
INSERT INTO `tmciudades` VALUES ('13', '440', 'MARGARITA');
INSERT INTO `tmciudades` VALUES ('66', '440', 'MARSELLA');
INSERT INTO `tmciudades` VALUES ('85', '440', 'VILLANUEVA');
INSERT INTO `tmciudades` VALUES ('13', '442', 'MARÍA LA BAJA');
INSERT INTO `tmciudades` VALUES ('15', '442', 'MARIPÍ');
INSERT INTO `tmciudades` VALUES ('17', '442', 'MARMATO');
INSERT INTO `tmciudades` VALUES ('20', '443', 'MANAURE');
INSERT INTO `tmciudades` VALUES ('73', '443', 'SAN SEBASTIÁN DE MARIQUITA');
INSERT INTO `tmciudades` VALUES ('17', '444', 'MARQUETALIA');
INSERT INTO `tmciudades` VALUES ('68', '444', 'MATANZA');
INSERT INTO `tmciudades` VALUES ('17', '446', 'MARULANDA');
INSERT INTO `tmciudades` VALUES ('73', '449', 'MELGAR');
INSERT INTO `tmciudades` VALUES ('19', '450', 'MERCADERES');
INSERT INTO `tmciudades` VALUES ('27', '450', 'MEDIO SAN JUAN');
INSERT INTO `tmciudades` VALUES ('50', '450', 'PUERTO CONCORDIA');
INSERT INTO `tmciudades` VALUES ('15', '455', 'MIRAFLORES');
INSERT INTO `tmciudades` VALUES ('19', '455', 'MIRANDA');
INSERT INTO `tmciudades` VALUES ('66', '456', 'MISTRATÓ');
INSERT INTO `tmciudades` VALUES ('13', '458', 'MONTECRISTO');
INSERT INTO `tmciudades` VALUES ('18', '460', 'MILÁN');
INSERT INTO `tmciudades` VALUES ('47', '460', 'NUEVA GRANADA');
INSERT INTO `tmciudades` VALUES ('91', '460', 'MIRITI - PARANÁ');
INSERT INTO `tmciudades` VALUES ('73', '461', 'MURILLO');
INSERT INTO `tmciudades` VALUES ('15', '464', 'MONGUA');
INSERT INTO `tmciudades` VALUES ('23', '464', 'MOMIL');
INSERT INTO `tmciudades` VALUES ('68', '464', 'MOGOTES');
INSERT INTO `tmciudades` VALUES ('15', '466', 'MONGUÍ');
INSERT INTO `tmciudades` VALUES ('23', '466', 'MONTELÍBANO');
INSERT INTO `tmciudades` VALUES ('05', '467', 'MONTEBELLO');
INSERT INTO `tmciudades` VALUES ('13', '468', 'MOMPÓS');
INSERT INTO `tmciudades` VALUES ('68', '468', 'MOLAGAVITA');
INSERT INTO `tmciudades` VALUES ('15', '469', 'MONIQUIRÁ');
INSERT INTO `tmciudades` VALUES ('63', '470', 'MONTENEGRO');
INSERT INTO `tmciudades` VALUES ('13', '473', 'MORALES');
INSERT INTO `tmciudades` VALUES ('19', '473', 'MORALES');
INSERT INTO `tmciudades` VALUES ('25', '473', 'MOSQUERA');
INSERT INTO `tmciudades` VALUES ('52', '473', 'MOSQUERA');
INSERT INTO `tmciudades` VALUES ('70', '473', 'MORROA');
INSERT INTO `tmciudades` VALUES ('05', '475', 'MURINDÓ');
INSERT INTO `tmciudades` VALUES ('15', '476', 'MOTAVITA');
INSERT INTO `tmciudades` VALUES ('18', '479', 'MORELIA');
INSERT INTO `tmciudades` VALUES ('05', '480', 'MUTATÁ');
INSERT INTO `tmciudades` VALUES ('15', '480', 'MUZO');
INSERT INTO `tmciudades` VALUES ('52', '480', 'NARIÑO');
INSERT INTO `tmciudades` VALUES ('54', '480', 'MUTISCUA');
INSERT INTO `tmciudades` VALUES ('05', '483', 'NARIÑO');
INSERT INTO `tmciudades` VALUES ('25', '483', 'NARIÑO');
INSERT INTO `tmciudades` VALUES ('41', '483', 'NÁTAGA');
INSERT INTO `tmciudades` VALUES ('73', '483', 'NATAGAIMA');
INSERT INTO `tmciudades` VALUES ('17', '486', 'NEIRA');
INSERT INTO `tmciudades` VALUES ('25', '486', 'NEMOCÓN');
INSERT INTO `tmciudades` VALUES ('25', '488', 'NILO');
INSERT INTO `tmciudades` VALUES ('25', '489', 'NIMAIMA');
INSERT INTO `tmciudades` VALUES ('05', '490', 'NECOCLÍ');
INSERT INTO `tmciudades` VALUES ('13', '490', 'NOROSÍ');
INSERT INTO `tmciudades` VALUES ('52', '490', 'OLAYA HERRERA');
INSERT INTO `tmciudades` VALUES ('15', '491', 'NOBSA');
INSERT INTO `tmciudades` VALUES ('25', '491', 'NOCAIMA');
INSERT INTO `tmciudades` VALUES ('27', '491', 'NÓVITA');
INSERT INTO `tmciudades` VALUES ('15', '494', 'NUEVO COLÓN');
INSERT INTO `tmciudades` VALUES ('05', '495', 'NECHÍ');
INSERT INTO `tmciudades` VALUES ('17', '495', 'NORCASIA');
INSERT INTO `tmciudades` VALUES ('27', '495', 'NUQUÍ');
INSERT INTO `tmciudades` VALUES ('76', '497', 'OBANDO');
INSERT INTO `tmciudades` VALUES ('54', '498', 'OCAÑA');
INSERT INTO `tmciudades` VALUES ('68', '498', 'OCAMONTE');
INSERT INTO `tmciudades` VALUES ('15', '500', 'OICATÁ');
INSERT INTO `tmciudades` VALUES ('23', '500', 'MOÑITOS');
INSERT INTO `tmciudades` VALUES ('68', '500', 'OIBA');
INSERT INTO `tmciudades` VALUES ('05', '501', 'OLAYA');
INSERT INTO `tmciudades` VALUES ('68', '502', 'ONZAGA');
INSERT INTO `tmciudades` VALUES ('41', '503', 'OPORAPA');
INSERT INTO `tmciudades` VALUES ('73', '504', 'ORTEGA');
INSERT INTO `tmciudades` VALUES ('25', '506', 'VENECIA');
INSERT INTO `tmciudades` VALUES ('52', '506', 'OSPINA');
INSERT INTO `tmciudades` VALUES ('15', '507', 'OTANCHE');
INSERT INTO `tmciudades` VALUES ('70', '508', 'OVEJAS');
INSERT INTO `tmciudades` VALUES ('15', '511', 'PACHAVITA');
INSERT INTO `tmciudades` VALUES ('97', '511', 'PACOA');
INSERT INTO `tmciudades` VALUES ('17', '513', 'PÁCORA');
INSERT INTO `tmciudades` VALUES ('19', '513', 'PADILLA');
INSERT INTO `tmciudades` VALUES ('25', '513', 'PACHO');
INSERT INTO `tmciudades` VALUES ('15', '514', 'PÁEZ');
INSERT INTO `tmciudades` VALUES ('15', '516', 'PAIPA');
INSERT INTO `tmciudades` VALUES ('19', '517', 'PAEZ');
INSERT INTO `tmciudades` VALUES ('20', '517', 'PAILITAS');
INSERT INTO `tmciudades` VALUES ('15', '518', 'PAJARITO');
INSERT INTO `tmciudades` VALUES ('25', '518', 'PAIME');
INSERT INTO `tmciudades` VALUES ('41', '518', 'PAICOL');
INSERT INTO `tmciudades` VALUES ('54', '518', 'PAMPLONA');
INSERT INTO `tmciudades` VALUES ('08', '520', 'PALMAR DE VARELA');
INSERT INTO `tmciudades` VALUES ('52', '520', 'FRANCISCO PIZARRO');
INSERT INTO `tmciudades` VALUES ('54', '520', 'PAMPLONITA');
INSERT INTO `tmciudades` VALUES ('73', '520', 'PALOCABILDO');
INSERT INTO `tmciudades` VALUES ('76', '520', 'PALMIRA');
INSERT INTO `tmciudades` VALUES ('15', '522', 'PANQUEBA');
INSERT INTO `tmciudades` VALUES ('68', '522', 'PALMAR');
INSERT INTO `tmciudades` VALUES ('70', '523', 'PALMITO');
INSERT INTO `tmciudades` VALUES ('17', '524', 'PALESTINA');
INSERT INTO `tmciudades` VALUES ('25', '524', 'PANDI');
INSERT INTO `tmciudades` VALUES ('41', '524', 'PALERMO');
INSERT INTO `tmciudades` VALUES ('68', '524', 'PALMAS DEL SOCORRO');
INSERT INTO `tmciudades` VALUES ('99', '524', 'LA PRIMAVERA');
INSERT INTO `tmciudades` VALUES ('25', '530', 'PARATEBUENO');
INSERT INTO `tmciudades` VALUES ('41', '530', 'PALESTINA');
INSERT INTO `tmciudades` VALUES ('91', '530', 'PUERTO ALEGRÍA');
INSERT INTO `tmciudades` VALUES ('15', '531', 'PAUNA');
INSERT INTO `tmciudades` VALUES ('19', '532', 'PATÍA');
INSERT INTO `tmciudades` VALUES ('15', '533', 'PAYA');
INSERT INTO `tmciudades` VALUES ('19', '533', 'PIAMONTE');
INSERT INTO `tmciudades` VALUES ('68', '533', 'PÁRAMO');
INSERT INTO `tmciudades` VALUES ('25', '535', 'PASCA');
INSERT INTO `tmciudades` VALUES ('91', '536', 'PUERTO ARICA');
INSERT INTO `tmciudades` VALUES ('15', '537', 'PAZ DE RÍO');
INSERT INTO `tmciudades` VALUES ('52', '540', 'POLICARPA');
INSERT INTO `tmciudades` VALUES ('91', '540', 'PUERTO NARIÑO');
INSERT INTO `tmciudades` VALUES ('05', '541', 'PEÑOL');
INSERT INTO `tmciudades` VALUES ('17', '541', 'PENSILVANIA');
INSERT INTO `tmciudades` VALUES ('47', '541', 'PEDRAZA');
INSERT INTO `tmciudades` VALUES ('15', '542', 'PESCA');
INSERT INTO `tmciudades` VALUES ('05', '543', 'PEQUE');
INSERT INTO `tmciudades` VALUES ('47', '545', 'PIJIÑO DEL CARMEN');
INSERT INTO `tmciudades` VALUES ('68', '547', 'PIEDECUESTA');
INSERT INTO `tmciudades` VALUES ('73', '547', 'PIEDRAS');
INSERT INTO `tmciudades` VALUES ('19', '548', 'PIENDAMÓ');
INSERT INTO `tmciudades` VALUES ('41', '548', 'PITAL');
INSERT INTO `tmciudades` VALUES ('63', '548', 'PIJAO');
INSERT INTO `tmciudades` VALUES ('08', '549', 'PIOJÓ');
INSERT INTO `tmciudades` VALUES ('13', '549', 'PINILLOS');
INSERT INTO `tmciudades` VALUES ('68', '549', 'PINCHOTE');
INSERT INTO `tmciudades` VALUES ('15', '550', 'PISBA');
INSERT INTO `tmciudades` VALUES ('20', '550', 'PELAYA');
INSERT INTO `tmciudades` VALUES ('41', '551', 'PITALITO');
INSERT INTO `tmciudades` VALUES ('47', '551', 'PIVIJAY');
INSERT INTO `tmciudades` VALUES ('54', '553', 'PUERTO SANTANDER');
INSERT INTO `tmciudades` VALUES ('23', '555', 'PLANETA RICA');
INSERT INTO `tmciudades` VALUES ('47', '555', 'PLATO');
INSERT INTO `tmciudades` VALUES ('73', '555', 'PLANADAS');
INSERT INTO `tmciudades` VALUES ('08', '558', 'POLONUEVO');
INSERT INTO `tmciudades` VALUES ('08', '560', 'PONEDERA');
INSERT INTO `tmciudades` VALUES ('44', '560', 'MANAURE');
INSERT INTO `tmciudades` VALUES ('52', '560', 'POTOSÍ');
INSERT INTO `tmciudades` VALUES ('73', '563', 'PRADO');
INSERT INTO `tmciudades` VALUES ('76', '563', 'PRADERA');
INSERT INTO `tmciudades` VALUES ('88', '564', 'PROVIDENCIA');
INSERT INTO `tmciudades` VALUES ('52', '565', 'PROVIDENCIA');
INSERT INTO `tmciudades` VALUES ('50', '568', 'PUERTO GAITÁN');
INSERT INTO `tmciudades` VALUES ('86', '568', 'PUERTO ASÍS');
INSERT INTO `tmciudades` VALUES ('86', '569', 'PUERTO CAICEDO');
INSERT INTO `tmciudades` VALUES ('20', '570', 'PUEBLO BELLO');
INSERT INTO `tmciudades` VALUES ('23', '570', 'PUEBLO NUEVO');
INSERT INTO `tmciudades` VALUES ('47', '570', 'PUEBLOVIEJO');
INSERT INTO `tmciudades` VALUES ('86', '571', 'PUERTO GUZMÁN');
INSERT INTO `tmciudades` VALUES ('15', '572', 'PUERTO BOYACÁ');
INSERT INTO `tmciudades` VALUES ('25', '572', 'PUERTO SALGAR');
INSERT INTO `tmciudades` VALUES ('66', '572', 'PUEBLO RICO');
INSERT INTO `tmciudades` VALUES ('68', '572', 'PUENTE NACIONAL');
INSERT INTO `tmciudades` VALUES ('08', '573', 'PUERTO COLOMBIA');
INSERT INTO `tmciudades` VALUES ('19', '573', 'PUERTO TEJADA');
INSERT INTO `tmciudades` VALUES ('50', '573', 'PUERTO LÓPEZ');
INSERT INTO `tmciudades` VALUES ('52', '573', 'PUERRES');
INSERT INTO `tmciudades` VALUES ('68', '573', 'PUERTO PARRA');
INSERT INTO `tmciudades` VALUES ('86', '573', 'PUERTO LEGUÍZAMO');
INSERT INTO `tmciudades` VALUES ('23', '574', 'PUERTO ESCONDIDO');
INSERT INTO `tmciudades` VALUES ('68', '575', 'PUERTO WILCHES');
INSERT INTO `tmciudades` VALUES ('05', '576', 'PUEBLORRICO');
INSERT INTO `tmciudades` VALUES ('50', '577', 'PUERTO LLERAS');
INSERT INTO `tmciudades` VALUES ('05', '579', 'PUERTO BERRÍO');
INSERT INTO `tmciudades` VALUES ('13', '580', 'REGIDOR');
INSERT INTO `tmciudades` VALUES ('15', '580', 'QUÍPAMA');
INSERT INTO `tmciudades` VALUES ('23', '580', 'PUERTO LIBERTADOR');
INSERT INTO `tmciudades` VALUES ('25', '580', 'PULÍ');
INSERT INTO `tmciudades` VALUES ('27', '580', 'RÍO IRÓ');
INSERT INTO `tmciudades` VALUES ('05', '585', 'PUERTO NARE');
INSERT INTO `tmciudades` VALUES ('19', '585', 'PURACÉ');
INSERT INTO `tmciudades` VALUES ('52', '585', 'PUPIALES');
INSERT INTO `tmciudades` VALUES ('73', '585', 'PURIFICACIÓN');
INSERT INTO `tmciudades` VALUES ('23', '586', 'PURÍSIMA');
INSERT INTO `tmciudades` VALUES ('50', '590', 'PUERTO RICO');
INSERT INTO `tmciudades` VALUES ('05', '591', 'PUERTO TRIUNFO');
INSERT INTO `tmciudades` VALUES ('81', '591', 'PUERTO RONDÓN');
INSERT INTO `tmciudades` VALUES ('18', '592', 'PUERTO RICO');
INSERT INTO `tmciudades` VALUES ('25', '592', 'QUEBRADANEGRA');
INSERT INTO `tmciudades` VALUES ('25', '594', 'QUETAME');
INSERT INTO `tmciudades` VALUES ('63', '594', 'QUIMBAYA');
INSERT INTO `tmciudades` VALUES ('66', '594', 'QUINCHÍA');
INSERT INTO `tmciudades` VALUES ('25', '596', 'QUIPILE');
INSERT INTO `tmciudades` VALUES ('15', '599', 'RAMIRIQUÍ');
INSERT INTO `tmciudades` VALUES ('25', '599', 'APULO');
INSERT INTO `tmciudades` VALUES ('54', '599', 'RAGONVALIA');
INSERT INTO `tmciudades` VALUES ('13', '600', 'RÍO VIEJO');
INSERT INTO `tmciudades` VALUES ('15', '600', 'RÁQUIRA');
INSERT INTO `tmciudades` VALUES ('27', '600', 'RÍO QUITO');
INSERT INTO `tmciudades` VALUES ('05', '604', 'REMEDIOS');
INSERT INTO `tmciudades` VALUES ('47', '605', 'REMOLINO');
INSERT INTO `tmciudades` VALUES ('08', '606', 'REPELÓN');
INSERT INTO `tmciudades` VALUES ('50', '606', 'RESTREPO');
INSERT INTO `tmciudades` VALUES ('76', '606', 'RESTREPO');
INSERT INTO `tmciudades` VALUES ('05', '607', 'RETIRO');
INSERT INTO `tmciudades` VALUES ('18', '610', 'SAN JOSÉ DEL FRAGUA');
INSERT INTO `tmciudades` VALUES ('25', '612', 'RICAURTE');
INSERT INTO `tmciudades` VALUES ('52', '612', 'RICAURTE');
INSERT INTO `tmciudades` VALUES ('17', '614', 'RIOSUCIO');
INSERT INTO `tmciudades` VALUES ('20', '614', 'RÍO DE ORO');
INSERT INTO `tmciudades` VALUES ('05', '615', 'RIONEGRO');
INSERT INTO `tmciudades` VALUES ('27', '615', 'RIOSUCIO');
INSERT INTO `tmciudades` VALUES ('41', '615', 'RIVERA');
INSERT INTO `tmciudades` VALUES ('68', '615', 'RIONEGRO');
INSERT INTO `tmciudades` VALUES ('17', '616', 'RISARALDA');
INSERT INTO `tmciudades` VALUES ('73', '616', 'RIOBLANCO');
INSERT INTO `tmciudades` VALUES ('76', '616', 'RIOFRÍO');
INSERT INTO `tmciudades` VALUES ('13', '620', 'SAN CRISTÓBAL');
INSERT INTO `tmciudades` VALUES ('15', '621', 'RONDÓN');
INSERT INTO `tmciudades` VALUES ('20', '621', 'LA PAZ');
INSERT INTO `tmciudades` VALUES ('52', '621', 'ROBERTO PAYÁN');
INSERT INTO `tmciudades` VALUES ('19', '622', 'ROSAS');
INSERT INTO `tmciudades` VALUES ('73', '622', 'RONCESVALLES');
INSERT INTO `tmciudades` VALUES ('76', '622', 'ROLDANILLO');
INSERT INTO `tmciudades` VALUES ('73', '624', 'ROVIRA');
INSERT INTO `tmciudades` VALUES ('99', '624', 'SANTA ROSALÍA');
INSERT INTO `tmciudades` VALUES ('05', '628', 'SABANALARGA');
INSERT INTO `tmciudades` VALUES ('05', '631', 'SABANETA');
INSERT INTO `tmciudades` VALUES ('15', '632', 'SABOYÁ');
INSERT INTO `tmciudades` VALUES ('08', '634', 'SABANAGRANDE');
INSERT INTO `tmciudades` VALUES ('08', '638', 'SABANALARGA');
INSERT INTO `tmciudades` VALUES ('15', '638', 'SÁCHICA');
INSERT INTO `tmciudades` VALUES ('05', '642', 'SALGAR');
INSERT INTO `tmciudades` VALUES ('25', '645', 'SAN ANTONIO DEL TEQUENDAMA');
INSERT INTO `tmciudades` VALUES ('15', '646', 'SAMACÁ');
INSERT INTO `tmciudades` VALUES ('05', '647', 'SAN ANDRÉS DE CUERQUÍA');
INSERT INTO `tmciudades` VALUES ('13', '647', 'SAN ESTANISLAO');
INSERT INTO `tmciudades` VALUES ('05', '649', 'SAN CARLOS');
INSERT INTO `tmciudades` VALUES ('25', '649', 'SAN BERNARDO');
INSERT INTO `tmciudades` VALUES ('13', '650', 'SAN FERNANDO');
INSERT INTO `tmciudades` VALUES ('44', '650', 'SAN JUAN DEL CESAR');
INSERT INTO `tmciudades` VALUES ('05', '652', 'SAN FRANCISCO');
INSERT INTO `tmciudades` VALUES ('17', '653', 'SALAMINA');
INSERT INTO `tmciudades` VALUES ('25', '653', 'SAN CAYETANO');
INSERT INTO `tmciudades` VALUES ('13', '654', 'SAN JACINTO');
INSERT INTO `tmciudades` VALUES ('13', '655', 'SAN JACINTO DEL CAUCA');
INSERT INTO `tmciudades` VALUES ('68', '655', 'SABANA DE TORRES');
INSERT INTO `tmciudades` VALUES ('05', '656', 'SAN JERÓNIMO');
INSERT INTO `tmciudades` VALUES ('13', '657', 'SAN JUAN NEPOMUCENO');
INSERT INTO `tmciudades` VALUES ('05', '658', 'SAN JOSÉ DE LA MONTAÑA');
INSERT INTO `tmciudades` VALUES ('25', '658', 'SAN FRANCISCO');
INSERT INTO `tmciudades` VALUES ('05', '659', 'SAN JUAN DE URABÁ');
INSERT INTO `tmciudades` VALUES ('05', '660', 'SAN LUIS');
INSERT INTO `tmciudades` VALUES ('15', '660', 'SAN EDUARDO');
INSERT INTO `tmciudades` VALUES ('23', '660', 'SAHAGÚN');
INSERT INTO `tmciudades` VALUES ('27', '660', 'SAN JOSÉ DEL PALMAR');
INSERT INTO `tmciudades` VALUES ('41', '660', 'SALADOBLANCO');
INSERT INTO `tmciudades` VALUES ('47', '660', 'SABANAS DE SAN ANGEL');
INSERT INTO `tmciudades` VALUES ('54', '660', 'SALAZAR');
INSERT INTO `tmciudades` VALUES ('17', '662', 'SAMANÁ');
INSERT INTO `tmciudades` VALUES ('25', '662', 'SAN JUAN DE RÍO SECO');
INSERT INTO `tmciudades` VALUES ('94', '663', 'MAPIRIPANA');
INSERT INTO `tmciudades` VALUES ('05', '664', 'SAN PEDRO DE LOS MILAGROS');
INSERT INTO `tmciudades` VALUES ('15', '664', 'SAN JOSÉ DE PARE');
INSERT INTO `tmciudades` VALUES ('05', '665', 'SAN PEDRO DE URABA');
INSERT INTO `tmciudades` VALUES ('17', '665', 'SAN JOSÉ');
INSERT INTO `tmciudades` VALUES ('97', '666', 'TARAIRA');
INSERT INTO `tmciudades` VALUES ('05', '667', 'SAN RAFAEL');
INSERT INTO `tmciudades` VALUES ('13', '667', 'SAN MARTÍN DE LOBA');
INSERT INTO `tmciudades` VALUES ('15', '667', 'SAN LUIS DE GACENO');
INSERT INTO `tmciudades` VALUES ('41', '668', 'SAN AGUSTÍN');
INSERT INTO `tmciudades` VALUES ('68', '669', 'SAN ANDRÉS');
INSERT INTO `tmciudades` VALUES ('91', '669', 'PUERTO SANTANDER');
INSERT INTO `tmciudades` VALUES ('05', '670', 'SAN ROQUE');
INSERT INTO `tmciudades` VALUES ('13', '670', 'SAN PABLO');
INSERT INTO `tmciudades` VALUES ('23', '670', 'SAN ANDRÉS SOTAVENTO');
INSERT INTO `tmciudades` VALUES ('54', '670', 'SAN CALIXTO');
INSERT INTO `tmciudades` VALUES ('70', '670', 'SAMPUÉS');
INSERT INTO `tmciudades` VALUES ('76', '670', 'SAN PEDRO');
INSERT INTO `tmciudades` VALUES ('73', '671', 'SALDAÑA');
INSERT INTO `tmciudades` VALUES ('23', '672', 'SAN ANTERO');
INSERT INTO `tmciudades` VALUES ('13', '673', 'SANTA CATALINA');
INSERT INTO `tmciudades` VALUES ('15', '673', 'SAN MATEO');
INSERT INTO `tmciudades` VALUES ('54', '673', 'SAN CAYETANO');
INSERT INTO `tmciudades` VALUES ('68', '673', 'SAN BENITO');
INSERT INTO `tmciudades` VALUES ('05', '674', 'SAN VICENTE');
INSERT INTO `tmciudades` VALUES ('08', '675', 'SANTA LUCÍA');
INSERT INTO `tmciudades` VALUES ('23', '675', 'SAN BERNARDO DEL VIENTO');
INSERT INTO `tmciudades` VALUES ('47', '675', 'SALAMINA');
INSERT INTO `tmciudades` VALUES ('73', '675', 'SAN ANTONIO');
INSERT INTO `tmciudades` VALUES ('15', '676', 'SAN MIGUEL DE SEMA');
INSERT INTO `tmciudades` VALUES ('41', '676', 'SANTA MARÍA');
INSERT INTO `tmciudades` VALUES ('23', '678', 'SAN CARLOS');
INSERT INTO `tmciudades` VALUES ('52', '678', 'SAMANIEGO');
INSERT INTO `tmciudades` VALUES ('70', '678', 'SAN BENITO ABAD');
INSERT INTO `tmciudades` VALUES ('73', '678', 'SAN LUIS');
INSERT INTO `tmciudades` VALUES ('05', '679', 'SANTA BÁRBARA');
INSERT INTO `tmciudades` VALUES ('68', '679', 'SAN GIL');
INSERT INTO `tmciudades` VALUES ('50', '680', 'SAN CARLOS DE GUAROA');
INSERT INTO `tmciudades` VALUES ('54', '680', 'SANTIAGO');
INSERT INTO `tmciudades` VALUES ('15', '681', 'SAN PABLO DE BORBUR');
INSERT INTO `tmciudades` VALUES ('23', '682', 'SAN JOSÉ DE URÉ');
INSERT INTO `tmciudades` VALUES ('66', '682', 'SANTA ROSA DE CABAL');
INSERT INTO `tmciudades` VALUES ('68', '682', 'SAN JOAQUÍN');
INSERT INTO `tmciudades` VALUES ('13', '683', 'SANTA ROSA');
INSERT INTO `tmciudades` VALUES ('50', '683', 'SAN JUAN DE ARAMA');
INSERT INTO `tmciudades` VALUES ('52', '683', 'SANDONÁ');
INSERT INTO `tmciudades` VALUES ('68', '684', 'SAN JOSÉ DE MIRANDA');
INSERT INTO `tmciudades` VALUES ('08', '685', 'SANTO TOMÁS');
INSERT INTO `tmciudades` VALUES ('52', '685', 'SAN BERNARDO');
INSERT INTO `tmciudades` VALUES ('05', '686', 'SANTA ROSA DE OSOS');
INSERT INTO `tmciudades` VALUES ('15', '686', 'SANTANA');
INSERT INTO `tmciudades` VALUES ('23', '686', 'SAN PELAYO');
INSERT INTO `tmciudades` VALUES ('50', '686', 'SAN JUANITO');
INSERT INTO `tmciudades` VALUES ('68', '686', 'SAN MIGUEL');
INSERT INTO `tmciudades` VALUES ('73', '686', 'SANTA ISABEL');
INSERT INTO `tmciudades` VALUES ('52', '687', 'SAN LORENZO');
INSERT INTO `tmciudades` VALUES ('66', '687', 'SANTUARIO');
INSERT INTO `tmciudades` VALUES ('13', '688', 'SANTA ROSA DEL SUR');
INSERT INTO `tmciudades` VALUES ('50', '689', 'SAN MARTÍN');
INSERT INTO `tmciudades` VALUES ('68', '689', 'SAN VICENTE DE CHUCURÍ');
INSERT INTO `tmciudades` VALUES ('05', '690', 'SANTO DOMINGO');
INSERT INTO `tmciudades` VALUES ('15', '690', 'SANTA MARÍA');
INSERT INTO `tmciudades` VALUES ('63', '690', 'SALENTO');
INSERT INTO `tmciudades` VALUES ('47', '692', 'SAN SEBASTIÁN DE BUENAVISTA');
INSERT INTO `tmciudades` VALUES ('15', '693', 'SANTA ROSA DE VITERBO');
INSERT INTO `tmciudades` VALUES ('19', '693', 'SAN SEBASTIÁN');
INSERT INTO `tmciudades` VALUES ('52', '693', 'SAN PABLO');
INSERT INTO `tmciudades` VALUES ('52', '694', 'SAN PEDRO DE CARTAGO');
INSERT INTO `tmciudades` VALUES ('15', '696', 'SANTA SOFÍA');
INSERT INTO `tmciudades` VALUES ('52', '696', 'SANTA BÁRBARA');
INSERT INTO `tmciudades` VALUES ('05', '697', 'EL SANTUARIO');
INSERT INTO `tmciudades` VALUES ('19', '698', 'SANTANDER DE QUILICHAO');
INSERT INTO `tmciudades` VALUES ('52', '699', 'SANTACRUZ');
INSERT INTO `tmciudades` VALUES ('19', '701', 'SANTA ROSA');
INSERT INTO `tmciudades` VALUES ('70', '702', 'SAN JUAN DE BETULIA');
INSERT INTO `tmciudades` VALUES ('47', '703', 'SAN ZENÓN');
INSERT INTO `tmciudades` VALUES ('68', '705', 'SANTA BÁRBARA');
INSERT INTO `tmciudades` VALUES ('47', '707', 'SANTA ANA');
INSERT INTO `tmciudades` VALUES ('70', '708', 'SAN MARCOS');
INSERT INTO `tmciudades` VALUES ('20', '710', 'SAN ALBERTO');
INSERT INTO `tmciudades` VALUES ('50', '711', 'VISTAHERMOSA');
INSERT INTO `tmciudades` VALUES ('70', '713', 'SAN ONOFRE');
INSERT INTO `tmciudades` VALUES ('70', '717', 'SAN PEDRO');
INSERT INTO `tmciudades` VALUES ('25', '718', 'SASAIMA');
INSERT INTO `tmciudades` VALUES ('15', '720', 'SATIVANORTE');
INSERT INTO `tmciudades` VALUES ('47', '720', 'SANTA BÁRBARA DE PINTO');
INSERT INTO `tmciudades` VALUES ('52', '720', 'SAPUYES');
INSERT INTO `tmciudades` VALUES ('54', '720', 'SARDINATA');
INSERT INTO `tmciudades` VALUES ('68', '720', 'SANTA HELENA DEL OPÓN');
INSERT INTO `tmciudades` VALUES ('15', '723', 'SATIVASUR');
INSERT INTO `tmciudades` VALUES ('05', '736', 'SEGOVIA');
INSERT INTO `tmciudades` VALUES ('25', '736', 'SESQUILÉ');
INSERT INTO `tmciudades` VALUES ('76', '736', 'SEVILLA');
INSERT INTO `tmciudades` VALUES ('81', '736', 'SARAVENA');
INSERT INTO `tmciudades` VALUES ('15', '740', 'SIACHOQUE');
INSERT INTO `tmciudades` VALUES ('25', '740', 'SIBATÉ');
INSERT INTO `tmciudades` VALUES ('70', '742', 'SAN LUIS DE SINCÉ');
INSERT INTO `tmciudades` VALUES ('19', '743', 'SILVIA');
INSERT INTO `tmciudades` VALUES ('25', '743', 'SILVANIA');
INSERT INTO `tmciudades` VALUES ('54', '743', 'SILOS');
INSERT INTO `tmciudades` VALUES ('13', '744', 'SIMITÍ');
INSERT INTO `tmciudades` VALUES ('25', '745', 'SIMIJACA');
INSERT INTO `tmciudades` VALUES ('27', '745', 'SIPÍ');
INSERT INTO `tmciudades` VALUES ('47', '745', 'SITIONUEVO');
INSERT INTO `tmciudades` VALUES ('68', '745', 'SIMACOTA');
INSERT INTO `tmciudades` VALUES ('86', '749', 'SIBUNDOY');
INSERT INTO `tmciudades` VALUES ('20', '750', 'SAN DIEGO');
INSERT INTO `tmciudades` VALUES ('15', '753', 'SOATÁ');
INSERT INTO `tmciudades` VALUES ('18', '753', 'SAN VICENTE DEL CAGUÁN');
INSERT INTO `tmciudades` VALUES ('25', '754', 'SOACHA');
INSERT INTO `tmciudades` VALUES ('15', '755', 'SOCOTÁ');
INSERT INTO `tmciudades` VALUES ('68', '755', 'SOCORRO');
INSERT INTO `tmciudades` VALUES ('86', '755', 'SAN FRANCISCO');
INSERT INTO `tmciudades` VALUES ('05', '756', 'SONSON');
INSERT INTO `tmciudades` VALUES ('18', '756', 'SOLANO');
INSERT INTO `tmciudades` VALUES ('15', '757', 'SOCHA');
INSERT INTO `tmciudades` VALUES ('86', '757', 'SAN MIGUEL');
INSERT INTO `tmciudades` VALUES ('08', '758', 'SOLEDAD');
INSERT INTO `tmciudades` VALUES ('25', '758', 'SOPÓ');
INSERT INTO `tmciudades` VALUES ('15', '759', 'SOGAMOSO');
INSERT INTO `tmciudades` VALUES ('13', '760', 'SOPLAVIENTO');
INSERT INTO `tmciudades` VALUES ('19', '760', 'SOTARA');
INSERT INTO `tmciudades` VALUES ('86', '760', 'SANTIAGO');
INSERT INTO `tmciudades` VALUES ('05', '761', 'SOPETRÁN');
INSERT INTO `tmciudades` VALUES ('15', '761', 'SOMONDOCO');
INSERT INTO `tmciudades` VALUES ('15', '762', 'SORA');
INSERT INTO `tmciudades` VALUES ('15', '763', 'SOTAQUIRÁ');
INSERT INTO `tmciudades` VALUES ('15', '764', 'SORACÁ');
INSERT INTO `tmciudades` VALUES ('25', '769', 'SUBACHOQUE');
INSERT INTO `tmciudades` VALUES ('08', '770', 'SUAN');
INSERT INTO `tmciudades` VALUES ('20', '770', 'SAN MARTÍN');
INSERT INTO `tmciudades` VALUES ('41', '770', 'SUAZA');
INSERT INTO `tmciudades` VALUES ('68', '770', 'SUAITA');
INSERT INTO `tmciudades` VALUES ('73', '770', 'SUÁREZ');
INSERT INTO `tmciudades` VALUES ('70', '771', 'SUCRE');
INSERT INTO `tmciudades` VALUES ('25', '772', 'SUESCA');
INSERT INTO `tmciudades` VALUES ('68', '773', 'SUCRE');
INSERT INTO `tmciudades` VALUES ('99', '773', 'CUMARIBO');
INSERT INTO `tmciudades` VALUES ('15', '774', 'SUSACÓN');
INSERT INTO `tmciudades` VALUES ('15', '776', 'SUTAMARCHÁN');
INSERT INTO `tmciudades` VALUES ('17', '777', 'SUPÍA');
INSERT INTO `tmciudades` VALUES ('25', '777', 'SUPATÁ');
INSERT INTO `tmciudades` VALUES ('97', '777', 'PAPUNAUA');
INSERT INTO `tmciudades` VALUES ('15', '778', 'SUTATENZA');
INSERT INTO `tmciudades` VALUES ('25', '779', 'SUSA');
INSERT INTO `tmciudades` VALUES ('13', '780', 'TALAIGUA NUEVO');
INSERT INTO `tmciudades` VALUES ('19', '780', 'SUÁREZ');
INSERT INTO `tmciudades` VALUES ('68', '780', 'SURATÁ');
INSERT INTO `tmciudades` VALUES ('25', '781', 'SUTATAUSA');
INSERT INTO `tmciudades` VALUES ('18', '785', 'SOLITA');
INSERT INTO `tmciudades` VALUES ('19', '785', 'SUCRE');
INSERT INTO `tmciudades` VALUES ('25', '785', 'TABIO');
INSERT INTO `tmciudades` VALUES ('52', '786', 'TAMINANGO');
INSERT INTO `tmciudades` VALUES ('20', '787', 'TAMALAMEQUE');
INSERT INTO `tmciudades` VALUES ('27', '787', 'TADÓ');
INSERT INTO `tmciudades` VALUES ('52', '788', 'TANGUA');
INSERT INTO `tmciudades` VALUES ('05', '789', 'TÁMESIS');
INSERT INTO `tmciudades` VALUES ('05', '790', 'TARAZÁ');
INSERT INTO `tmciudades` VALUES ('15', '790', 'TASCO');
INSERT INTO `tmciudades` VALUES ('41', '791', 'TARQUI');
INSERT INTO `tmciudades` VALUES ('05', '792', 'TARSO');
INSERT INTO `tmciudades` VALUES ('25', '793', 'TAUSA');
INSERT INTO `tmciudades` VALUES ('81', '794', 'TAME');
INSERT INTO `tmciudades` VALUES ('25', '797', 'TENA');
INSERT INTO `tmciudades` VALUES ('41', '797', 'TESALIA');
INSERT INTO `tmciudades` VALUES ('15', '798', 'TENZA');
INSERT INTO `tmciudades` VALUES ('47', '798', 'TENERIFE');
INSERT INTO `tmciudades` VALUES ('91', '798', 'TARAPACÁ');
INSERT INTO `tmciudades` VALUES ('25', '799', 'TENJO');
INSERT INTO `tmciudades` VALUES ('41', '799', 'TELLO');
INSERT INTO `tmciudades` VALUES ('27', '800', 'UNGUÍA');
INSERT INTO `tmciudades` VALUES ('54', '800', 'TEORAMA');
INSERT INTO `tmciudades` VALUES ('41', '801', 'TERUEL');
INSERT INTO `tmciudades` VALUES ('15', '804', 'TIBANÁ');
INSERT INTO `tmciudades` VALUES ('25', '805', 'TIBACUY');
INSERT INTO `tmciudades` VALUES ('15', '806', 'TIBASOSA');
INSERT INTO `tmciudades` VALUES ('19', '807', 'TIMBÍO');
INSERT INTO `tmciudades` VALUES ('23', '807', 'TIERRALTA');
INSERT INTO `tmciudades` VALUES ('25', '807', 'TIBIRITA');
INSERT INTO `tmciudades` VALUES ('41', '807', 'TIMANÁ');
INSERT INTO `tmciudades` VALUES ('15', '808', 'TINJACÁ');
INSERT INTO `tmciudades` VALUES ('05', '809', 'TITIRIBÍ');
INSERT INTO `tmciudades` VALUES ('19', '809', 'TIMBIQUÍ');
INSERT INTO `tmciudades` VALUES ('13', '810', 'TIQUISIO');
INSERT INTO `tmciudades` VALUES ('15', '810', 'TIPACOQUE');
INSERT INTO `tmciudades` VALUES ('27', '810', 'UNIÓN PANAMERICANA');
INSERT INTO `tmciudades` VALUES ('54', '810', 'TIBÚ');
INSERT INTO `tmciudades` VALUES ('15', '814', 'TOCA');
INSERT INTO `tmciudades` VALUES ('23', '815', 'TUCHÍN');
INSERT INTO `tmciudades` VALUES ('25', '815', 'TOCAIMA');
INSERT INTO `tmciudades` VALUES ('15', '816', 'TOGÜÍ');
INSERT INTO `tmciudades` VALUES ('25', '817', 'TOCANCIPÁ');
INSERT INTO `tmciudades` VALUES ('05', '819', 'TOLEDO');
INSERT INTO `tmciudades` VALUES ('15', '820', 'TÓPAGA');
INSERT INTO `tmciudades` VALUES ('54', '820', 'TOLEDO');
INSERT INTO `tmciudades` VALUES ('68', '820', 'TONA');
INSERT INTO `tmciudades` VALUES ('70', '820', 'SANTIAGO DE TOLÚ');
INSERT INTO `tmciudades` VALUES ('19', '821', 'TORIBIO');
INSERT INTO `tmciudades` VALUES ('15', '822', 'TOTA');
INSERT INTO `tmciudades` VALUES ('25', '823', 'TOPAIPÍ');
INSERT INTO `tmciudades` VALUES ('70', '823', 'TOLÚ VIEJO');
INSERT INTO `tmciudades` VALUES ('76', '823', 'TORO');
INSERT INTO `tmciudades` VALUES ('19', '824', 'TOTORÓ');
INSERT INTO `tmciudades` VALUES ('76', '828', 'TRUJILLO');
INSERT INTO `tmciudades` VALUES ('08', '832', 'TUBARÁ');
INSERT INTO `tmciudades` VALUES ('15', '832', 'TUNUNGUÁ');
INSERT INTO `tmciudades` VALUES ('76', '834', 'TULUÁ');
INSERT INTO `tmciudades` VALUES ('15', '835', 'TURMEQUÉ');
INSERT INTO `tmciudades` VALUES ('52', '835', 'SAN ANDRES DE TUMACO');
INSERT INTO `tmciudades` VALUES ('13', '836', 'TURBACO');
INSERT INTO `tmciudades` VALUES ('05', '837', 'TURBO');
INSERT INTO `tmciudades` VALUES ('15', '837', 'TUTA');
INSERT INTO `tmciudades` VALUES ('13', '838', 'TURBANÁ');
INSERT INTO `tmciudades` VALUES ('52', '838', 'TÚQUERRES');
INSERT INTO `tmciudades` VALUES ('15', '839', 'TUTAZÁ');
INSERT INTO `tmciudades` VALUES ('25', '839', 'UBALÁ');
INSERT INTO `tmciudades` VALUES ('25', '841', 'UBAQUE');
INSERT INTO `tmciudades` VALUES ('05', '842', 'URAMITA');
INSERT INTO `tmciudades` VALUES ('15', '842', 'UMBITA');
INSERT INTO `tmciudades` VALUES ('25', '843', 'VILLA DE SAN DIEGO DE UBATE');
INSERT INTO `tmciudades` VALUES ('19', '845', 'VILLA RICA');
INSERT INTO `tmciudades` VALUES ('25', '845', 'UNE');
INSERT INTO `tmciudades` VALUES ('76', '845', 'ULLOA');
INSERT INTO `tmciudades` VALUES ('05', '847', 'URRAO');
INSERT INTO `tmciudades` VALUES ('44', '847', 'URIBIA');
INSERT INTO `tmciudades` VALUES ('08', '849', 'USIACURÍ');
INSERT INTO `tmciudades` VALUES ('25', '851', 'ÚTICA');
INSERT INTO `tmciudades` VALUES ('05', '854', 'VALDIVIA');
INSERT INTO `tmciudades` VALUES ('73', '854', 'VALLE DE SAN JUAN');
INSERT INTO `tmciudades` VALUES ('23', '855', 'VALENCIA');
INSERT INTO `tmciudades` VALUES ('44', '855', 'URUMITA');
INSERT INTO `tmciudades` VALUES ('68', '855', 'VALLE DE SAN JOSÉ');
INSERT INTO `tmciudades` VALUES ('05', '856', 'VALPARAÍSO');
INSERT INTO `tmciudades` VALUES ('05', '858', 'VEGACHÍ');
INSERT INTO `tmciudades` VALUES ('18', '860', 'VALPARAÍSO');
INSERT INTO `tmciudades` VALUES ('05', '861', 'VENECIA');
INSERT INTO `tmciudades` VALUES ('15', '861', 'VENTAQUEMADA');
INSERT INTO `tmciudades` VALUES ('68', '861', 'VÉLEZ');
INSERT INTO `tmciudades` VALUES ('73', '861', 'VENADILLO');
INSERT INTO `tmciudades` VALUES ('25', '862', 'VERGARA');
INSERT INTO `tmciudades` VALUES ('76', '863', 'VERSALLES');
INSERT INTO `tmciudades` VALUES ('86', '865', 'VALLE DEL GUAMUEZ');
INSERT INTO `tmciudades` VALUES ('17', '867', 'VICTORIA');
INSERT INTO `tmciudades` VALUES ('25', '867', 'VIANÍ');
INSERT INTO `tmciudades` VALUES ('68', '867', 'VETAS');
INSERT INTO `tmciudades` VALUES ('76', '869', 'VIJES');
INSERT INTO `tmciudades` VALUES ('73', '870', 'VILLAHERMOSA');
INSERT INTO `tmciudades` VALUES ('25', '871', 'VILLAGÓMEZ');
INSERT INTO `tmciudades` VALUES ('54', '871', 'VILLA CARO');
INSERT INTO `tmciudades` VALUES ('41', '872', 'VILLAVIEJA');
INSERT INTO `tmciudades` VALUES ('68', '872', 'VILLANUEVA');
INSERT INTO `tmciudades` VALUES ('05', '873', 'VIGÍA DEL FUERTE');
INSERT INTO `tmciudades` VALUES ('13', '873', 'VILLANUEVA');
INSERT INTO `tmciudades` VALUES ('17', '873', 'VILLAMARÍA');
INSERT INTO `tmciudades` VALUES ('25', '873', 'VILLAPINZÓN');
INSERT INTO `tmciudades` VALUES ('73', '873', 'VILLARRICA');
INSERT INTO `tmciudades` VALUES ('44', '874', 'VILLANUEVA');
INSERT INTO `tmciudades` VALUES ('54', '874', 'VILLA DEL ROSARIO');
INSERT INTO `tmciudades` VALUES ('25', '875', 'VILLETA');
INSERT INTO `tmciudades` VALUES ('17', '877', 'VITERBO');
INSERT INTO `tmciudades` VALUES ('25', '878', 'VIOTÁ');
INSERT INTO `tmciudades` VALUES ('15', '879', 'VIRACACHÁ');
INSERT INTO `tmciudades` VALUES ('94', '883', 'SAN FELIPE');
INSERT INTO `tmciudades` VALUES ('94', '884', 'PUERTO COLOMBIA');
INSERT INTO `tmciudades` VALUES ('05', '885', 'YALÍ');
INSERT INTO `tmciudades` VALUES ('25', '885', 'YACOPÍ');
INSERT INTO `tmciudades` VALUES ('41', '885', 'YAGUARÁ');
INSERT INTO `tmciudades` VALUES ('52', '885', 'YACUANQUER');
INSERT INTO `tmciudades` VALUES ('86', '885', 'VILLAGARZÓN');
INSERT INTO `tmciudades` VALUES ('94', '885', 'LA GUADALUPE');
INSERT INTO `tmciudades` VALUES ('94', '886', 'CACAHUAL');
INSERT INTO `tmciudades` VALUES ('05', '887', 'YARUMAL');
INSERT INTO `tmciudades` VALUES ('94', '887', 'PANA PANA');
INSERT INTO `tmciudades` VALUES ('94', '888', 'MORICHAL');
INSERT INTO `tmciudades` VALUES ('97', '889', 'YAVARATÉ');
INSERT INTO `tmciudades` VALUES ('05', '890', 'YOLOMBÓ');
INSERT INTO `tmciudades` VALUES ('76', '890', 'YOTOCO');
INSERT INTO `tmciudades` VALUES ('76', '892', 'YUMBO');
INSERT INTO `tmciudades` VALUES ('05', '893', 'YONDÓ');
INSERT INTO `tmciudades` VALUES ('13', '894', 'ZAMBRANO');
INSERT INTO `tmciudades` VALUES ('05', '895', 'ZARAGOZA');
INSERT INTO `tmciudades` VALUES ('68', '895', 'ZAPATOCA');
INSERT INTO `tmciudades` VALUES ('76', '895', 'ZARZAL');
INSERT INTO `tmciudades` VALUES ('15', '897', 'ZETAQUIRA');
INSERT INTO `tmciudades` VALUES ('25', '898', 'ZIPACÓN');
INSERT INTO `tmciudades` VALUES ('25', '899', 'ZIPAQUIRÁ');
INSERT INTO `tmciudades` VALUES ('47', '960', 'ZAPAYÁN');
INSERT INTO `tmciudades` VALUES ('47', '980', 'ZONA BANANERA');

-- ----------------------------
-- Table structure for `tmdepartamentos`
-- ----------------------------
DROP TABLE IF EXISTS `tmdepartamentos`;
CREATE TABLE `tmdepartamentos` (
  `IdPais` char(2) COLLATE utf8_spanish_ci NOT NULL,
  `IdDepartamento` char(2) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(60) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`IdDepartamento`),
  KEY `FK_DepIdPai` (`IdPais`),
  CONSTRAINT `fk_tmDep_IdPais` FOREIGN KEY (`IdPais`) REFERENCES `tmpaises` (`IdPais`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tmdepartamentos
-- ----------------------------
INSERT INTO `tmdepartamentos` VALUES ('00', '00', 'SIN DEPARTAMENTO');
INSERT INTO `tmdepartamentos` VALUES ('57', '05', 'Antioquia');
INSERT INTO `tmdepartamentos` VALUES ('57', '08', 'Atlantico');
INSERT INTO `tmdepartamentos` VALUES ('57', '11', 'Bogotá');
INSERT INTO `tmdepartamentos` VALUES ('57', '13', 'Bolivar');
INSERT INTO `tmdepartamentos` VALUES ('57', '15', 'Boyaca');
INSERT INTO `tmdepartamentos` VALUES ('57', '17', 'Caldas');
INSERT INTO `tmdepartamentos` VALUES ('57', '18', 'Caqueta');
INSERT INTO `tmdepartamentos` VALUES ('57', '19', 'Cauca');
INSERT INTO `tmdepartamentos` VALUES ('57', '20', 'Cesar');
INSERT INTO `tmdepartamentos` VALUES ('57', '23', 'Cordoba');
INSERT INTO `tmdepartamentos` VALUES ('57', '25', 'Cundinamarca');
INSERT INTO `tmdepartamentos` VALUES ('57', '27', 'Choco');
INSERT INTO `tmdepartamentos` VALUES ('57', '41', 'Huila');
INSERT INTO `tmdepartamentos` VALUES ('57', '44', 'La Guajira');
INSERT INTO `tmdepartamentos` VALUES ('57', '47', 'Magdalena');
INSERT INTO `tmdepartamentos` VALUES ('57', '50', 'Meta');
INSERT INTO `tmdepartamentos` VALUES ('57', '52', 'Nariño');
INSERT INTO `tmdepartamentos` VALUES ('57', '54', 'Norte de Santander');
INSERT INTO `tmdepartamentos` VALUES ('57', '63', 'Quindio');
INSERT INTO `tmdepartamentos` VALUES ('57', '66', 'Risaralda');
INSERT INTO `tmdepartamentos` VALUES ('57', '68', 'Santander');
INSERT INTO `tmdepartamentos` VALUES ('57', '70', 'Sucre');
INSERT INTO `tmdepartamentos` VALUES ('57', '73', 'Tolima');
INSERT INTO `tmdepartamentos` VALUES ('57', '76', 'Valle');
INSERT INTO `tmdepartamentos` VALUES ('57', '81', 'Arauca');
INSERT INTO `tmdepartamentos` VALUES ('57', '85', 'Casanare');
INSERT INTO `tmdepartamentos` VALUES ('57', '86', 'Putumayo');
INSERT INTO `tmdepartamentos` VALUES ('57', '88', 'San Andres');
INSERT INTO `tmdepartamentos` VALUES ('57', '91', 'Amazonas');
INSERT INTO `tmdepartamentos` VALUES ('57', '94', 'Guainia');
INSERT INTO `tmdepartamentos` VALUES ('57', '95', 'Guaviare');
INSERT INTO `tmdepartamentos` VALUES ('57', '97', 'Vaupes');
INSERT INTO `tmdepartamentos` VALUES ('57', '99', 'Vichada');

-- ----------------------------
-- Table structure for `tmestadocivil`
-- ----------------------------
DROP TABLE IF EXISTS `tmestadocivil`;
CREATE TABLE `tmestadocivil` (
  `IdEstadoCivil` char(2) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`IdEstadoCivil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tmestadocivil
-- ----------------------------
INSERT INTO `tmestadocivil` VALUES ('00', 'SIN ESTADO CIVIL');
INSERT INTO `tmestadocivil` VALUES ('CA', 'CASADO');
INSERT INTO `tmestadocivil` VALUES ('DI', 'DIVORSIADO');
INSERT INTO `tmestadocivil` VALUES ('SO', 'SOLTERO');
INSERT INTO `tmestadocivil` VALUES ('VI', 'VIUDO');

-- ----------------------------
-- Table structure for `tmestudiantes`
-- ----------------------------
DROP TABLE IF EXISTS `tmestudiantes`;
CREATE TABLE `tmestudiantes` (
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
  `Fax_Empresa` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`NroDocumento`),
  KEY `FK_EstTipoDoc` (`IdTipoDocumento`),
  KEY `FK_EstEstaCiv` (`IdEstadoCivil`),
  CONSTRAINT `fk_tmEst_EstCiv` FOREIGN KEY (`IdEstadoCivil`) REFERENCES `tmestadocivil` (`IdEstadoCivil`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_tmEst_TipDoc` FOREIGN KEY (`IdTipoDocumento`) REFERENCES `tmtiposdocumentos` (`IdTipoDocumento`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of tmestudiantes
-- ----------------------------
INSERT INTO `tmestudiantes` VALUES ('CC', '1025470258', 'MEDELLIN', 'JOSE', 'PEREZ', 'BETANCUR', '57', '05', '001', '1025470258', '24', 'SO', 'M', 'CRISTIANO', '0', 'CLL 65 N  65-80', 'LAURELES', '001', '05', '57', '4444444', '321654987', 'EMAIL@EMAIL.COM', '3', 'FABRICA DE LICORES', 'COMPRADOR', 'CRA 51 N 11 A SUR 52', '', '');

-- ----------------------------
-- Table structure for `tmestudiosrealizados`
-- ----------------------------
DROP TABLE IF EXISTS `tmestudiosrealizados`;
CREATE TABLE `tmestudiosrealizados` (
  `IdTipo_Estudio` int(11) NOT NULL,
  `IdEstudio_Realizado` int(11) NOT NULL AUTO_INCREMENT,
  `Institucion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `Titulo_Obtenido` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `IdPais` char(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  `IdDepartamento` char(2) COLLATE utf8_spanish_ci DEFAULT NULL,
  `IdCiudad` char(3) COLLATE utf8_spanish_ci DEFAULT NULL,
  `IdEstudiante` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`IdEstudio_Realizado`),
  KEY `FK_EstRea_TipEst` (`IdTipo_Estudio`),
  KEY `fk_tmEstRea_idEst` (`IdEstudiante`),
  CONSTRAINT `fk_tmEstRea_idEst` FOREIGN KEY (`IdEstudiante`) REFERENCES `tmestudiantes` (`NroDocumento`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_tmEstRea_idTipEst` FOREIGN KEY (`IdTipo_Estudio`) REFERENCES `tmtiposestudios` (`IdTipoEstudio`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tmestudiosrealizados
-- ----------------------------
INSERT INTO `tmestudiosrealizados` VALUES ('3', '1', 'COLOMBOAMERICANO', 'INGLES BASICO', '57', '05', '001', '1025470258');
INSERT INTO `tmestudiosrealizados` VALUES ('4', '2', 'COLOMBOAMERICANO', 'INGLES INTERMEDIO', '57', '05', '001', '1025470258');

-- ----------------------------
-- Table structure for `tmhabilidadesdesarrollar`
-- ----------------------------
DROP TABLE IF EXISTS `tmhabilidadesdesarrollar`;
CREATE TABLE `tmhabilidadesdesarrollar` (
  `IdPrograma` int(11) NOT NULL,
  `IdHabilidad` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`IdHabilidad`),
  KEY `fk_Hab_IdPro` (`IdPrograma`),
  CONSTRAINT `fk_Hab_IdPro` FOREIGN KEY (`IdPrograma`) REFERENCES `tmprogramas` (`IdPrograma`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tmhabilidadesdesarrollar
-- ----------------------------
INSERT INTO `tmhabilidadesdesarrollar` VALUES ('11', '15', 'DIFERENCIAR LAS DISTRIBUCIONES DE LINUX');
INSERT INTO `tmhabilidadesdesarrollar` VALUES ('11', '16', 'INSTALACIÓN DEL SISTEMA OPERATIVO LINUX');

-- ----------------------------
-- Table structure for `tmpagos`
-- ----------------------------
DROP TABLE IF EXISTS `tmpagos`;
CREATE TABLE `tmpagos` (
  `IdPrograma_Ofertado` int(11) NOT NULL,
  `IdEstudiante` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `NroConsignacion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `FechaPago` date NOT NULL,
  `FechaRecibido` datetime NOT NULL,
  `Valor` decimal(10,2) NOT NULL,
  PRIMARY KEY (`NroConsignacion`,`IdEstudiante`,`IdPrograma_Ofertado`),
  KEY `fk_Pag_IdEst` (`IdEstudiante`),
  KEY `fk_Pag_ProOfe` (`IdPrograma_Ofertado`),
  CONSTRAINT `fk_Pag_IdEst` FOREIGN KEY (`IdEstudiante`) REFERENCES `trprogramaestudiantes` (`IdEstudiante`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_Pag_ProOfe` FOREIGN KEY (`IdPrograma_Ofertado`) REFERENCES `trprogramaestudiantes` (`IdPrograma_Ofertado`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tmpagos
-- ----------------------------
INSERT INTO `tmpagos` VALUES ('12', '1025470258', 'CON000', '2014-01-01', '2014-10-29 20:39:10', '25000.00');
INSERT INTO `tmpagos` VALUES ('12', '1025470258', 'CON0001', '2014-01-01', '2014-10-30 22:22:21', '20000.00');
INSERT INTO `tmpagos` VALUES ('12', '1025470258', 'CON0002', '2014-10-30', '2014-10-30 22:22:41', '203600.00');
INSERT INTO `tmpagos` VALUES ('12', '1025470258', 'CON001', '2014-01-01', '2014-10-29 20:46:45', '200.00');
INSERT INTO `tmpagos` VALUES ('12', '1025470258', 'CON002', '2014-01-01', '2014-10-29 20:47:19', '200.00');
INSERT INTO `tmpagos` VALUES ('12', '1025470258', 'CON003', '2014-01-01', '2014-10-29 20:47:49', '200.00');
INSERT INTO `tmpagos` VALUES ('12', '1025470258', 'CON004', '2014-01-01', '2014-10-29 20:48:07', '200.00');
INSERT INTO `tmpagos` VALUES ('12', '1025470258', 'CON005', '2014-01-01', '2014-10-29 20:48:25', '200.00');
INSERT INTO `tmpagos` VALUES ('12', '1025470258', 'CON006', '2014-01-01', '2014-10-29 20:51:11', '200.00');
INSERT INTO `tmpagos` VALUES ('12', '1025470258', 'CON007', '2014-01-01', '2014-10-29 20:51:18', '200.00');

-- ----------------------------
-- Table structure for `tmpaises`
-- ----------------------------
DROP TABLE IF EXISTS `tmpaises`;
CREATE TABLE `tmpaises` (
  `IdPais` char(2) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`IdPais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tmpaises
-- ----------------------------
INSERT INTO `tmpaises` VALUES ('00', 'SIN PAIS');
INSERT INTO `tmpaises` VALUES ('57', 'COLOMBIA');

-- ----------------------------
-- Table structure for `tmprogramas`
-- ----------------------------
DROP TABLE IF EXISTS `tmprogramas`;
CREATE TABLE `tmprogramas` (
  `IdPrograma` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `Imagen` varchar(300) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`IdPrograma`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tmprogramas
-- ----------------------------
INSERT INTO `tmprogramas` VALUES ('11', 'LINUX: BÁSICO Y AVANZADO', 'RECONOCER LAS CARACTERíSTICAS DEL SISTEMA OPERATIVO LINUX  A TRAVéS DE EJECUCIóN DE ACTIVIDADES PRáCTICAS PARA ENTENDER SU ESTRUCTURA Y FUNCIONAMIENTO BáSICO Y POSTERIORMENTE CONFIGURAR LOS DIFERENTES TIPOS DE SERVIDORES EN EL SISTEMA OPERATIVO LINUX  A TRAVéS DE MONTAJES REALES PARA SU POSTERIOR APLICACIóN EN LA INDUSTRIA.', '../view/images/programas/Linux.png');

-- ----------------------------
-- Table structure for `tmrequisitos`
-- ----------------------------
DROP TABLE IF EXISTS `tmrequisitos`;
CREATE TABLE `tmrequisitos` (
  `IdPrograma` int(11) NOT NULL DEFAULT '0',
  `IdRequisito` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`IdRequisito`),
  KEY `fk_Req_IdPro` (`IdPrograma`),
  CONSTRAINT `fk_Req_IdPro` FOREIGN KEY (`IdPrograma`) REFERENCES `tmprogramas` (`IdPrograma`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tmrequisitos
-- ----------------------------
INSERT INTO `tmrequisitos` VALUES ('11', '5', 'CONOCIMIENTOS BáSICOS EN COMPUTADORES');
INSERT INTO `tmrequisitos` VALUES ('11', '6', 'CONOCIMIENTOS BáSICOS EN SOFTWARE');

-- ----------------------------
-- Table structure for `tmtiposdocumentos`
-- ----------------------------
DROP TABLE IF EXISTS `tmtiposdocumentos`;
CREATE TABLE `tmtiposdocumentos` (
  `IdTipoDocumento` char(2) COLLATE utf8_spanish_ci NOT NULL,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`IdTipoDocumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tmtiposdocumentos
-- ----------------------------
INSERT INTO `tmtiposdocumentos` VALUES ('00', 'SIN TIPO DOCUMENTO');
INSERT INTO `tmtiposdocumentos` VALUES ('CC', 'CEDULA CIUDADANIA');
INSERT INTO `tmtiposdocumentos` VALUES ('RC', 'REGISTRO CIVIL');
INSERT INTO `tmtiposdocumentos` VALUES ('TI', 'TARJETA IDENTIDAD');

-- ----------------------------
-- Table structure for `tmtiposestudios`
-- ----------------------------
DROP TABLE IF EXISTS `tmtiposestudios`;
CREATE TABLE `tmtiposestudios` (
  `IdTipoEstudio` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`IdTipoEstudio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tmtiposestudios
-- ----------------------------
INSERT INTO `tmtiposestudios` VALUES ('1', 'SIN TIPO ESTUDIO');
INSERT INTO `tmtiposestudios` VALUES ('2', 'OTROS');
INSERT INTO `tmtiposestudios` VALUES ('3', 'SECUNDARIOS');
INSERT INTO `tmtiposestudios` VALUES ('4', 'UNIVERSITARIOS');

-- ----------------------------
-- Table structure for `tmtiposprograma`
-- ----------------------------
DROP TABLE IF EXISTS `tmtiposprograma`;
CREATE TABLE `tmtiposprograma` (
  `IdTipoPrograma` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`IdTipoPrograma`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tmtiposprograma
-- ----------------------------
INSERT INTO `tmtiposprograma` VALUES ('1', 'CURSO');
INSERT INTO `tmtiposprograma` VALUES ('2', 'DIPLOMADO');
INSERT INTO `tmtiposprograma` VALUES ('3', 'OTRO');
INSERT INTO `tmtiposprograma` VALUES ('4', 'SEMILLERO');
INSERT INTO `tmtiposprograma` VALUES ('5', 'TALLER');

-- ----------------------------
-- Table structure for `tmusuarios`
-- ----------------------------
DROP TABLE IF EXISTS `tmusuarios`;
CREATE TABLE `tmusuarios` (
  `Usuario` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `Contrasena` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `Correo_electronico` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `IntentosFallidos` tinyint(1) NOT NULL,
  PRIMARY KEY (`Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of tmusuarios
-- ----------------------------
INSERT INTO `tmusuarios` VALUES ('root', 'root', 'email@gmail.com', '0');

-- ----------------------------
-- Table structure for `trprogramaestudiantes`
-- ----------------------------
DROP TABLE IF EXISTS `trprogramaestudiantes`;
CREATE TABLE `trprogramaestudiantes` (
  `IdPrograma_Ofertado` int(11) NOT NULL,
  `IdEstudiante` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `Fecha` datetime NOT NULL,
  `Estado` bit(1) NOT NULL,
  PRIMARY KEY (`IdPrograma_Ofertado`,`IdEstudiante`),
  KEY `fk_trProEst_IdEst` (`IdEstudiante`),
  KEY `IdPrograma_Ofertado` (`IdPrograma_Ofertado`),
  CONSTRAINT `fk_trProEst_IdEst` FOREIGN KEY (`IdEstudiante`) REFERENCES `tmestudiantes` (`NroDocumento`) ON DELETE NO ACTION ON UPDATE CASCADE,
  CONSTRAINT `fk_trProEst_IdProOfe` FOREIGN KEY (`IdPrograma_Ofertado`) REFERENCES `trprograma_ofertado` (`IdPrograma_Ofertado`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of trprogramaestudiantes
-- ----------------------------
INSERT INTO `trprogramaestudiantes` VALUES ('12', '1025470258', '2014-10-24 20:13:05', '');

-- ----------------------------
-- Table structure for `trprograma_ofertado`
-- ----------------------------
DROP TABLE IF EXISTS `trprograma_ofertado`;
CREATE TABLE `trprograma_ofertado` (
  `IdPrograma_Ofertado` int(11) NOT NULL AUTO_INCREMENT,
  `IdTipoPrograma` int(11) NOT NULL,
  `IdPrograma` int(11) NOT NULL,
  `FechaInicio` datetime NOT NULL,
  `FechaFinalizacion` datetime NOT NULL,
  `MinEstudiantes` int(3) NOT NULL,
  `MaxEstudiantes` int(3) NOT NULL,
  `Estado` bit(1) NOT NULL,
  `Precio` int(11) NOT NULL,
  PRIMARY KEY (`IdPrograma_Ofertado`),
  KEY `fk_tipoProgram` (`IdTipoPrograma`),
  KEY `fk_programa` (`IdPrograma`),
  CONSTRAINT `fk_programa` FOREIGN KEY (`IdPrograma`) REFERENCES `tmprogramas` (`IdPrograma`) ON UPDATE CASCADE,
  CONSTRAINT `fk_pro_ofer_idTipPro` FOREIGN KEY (`IdTipoPrograma`) REFERENCES `tmtiposprograma` (`IdTipoPrograma`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- ----------------------------
-- Records of trprograma_ofertado
-- ----------------------------
INSERT INTO `trprograma_ofertado` VALUES ('12', '2', '11', '2014-10-01 00:00:00', '2014-10-24 00:00:00', '20', '30', '', '250000');
INSERT INTO `trprograma_ofertado` VALUES ('13', '1', '11', '2014-10-27 00:00:00', '2014-10-27 00:00:00', '10', '20', '', '5000');

-- ----------------------------
-- View structure for `vestudiantes`
-- ----------------------------
DROP VIEW IF EXISTS `vestudiantes`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vestudiantes` AS select `e`.`IdTipoDocumento` AS `IdTipoDocumento`,`e`.`NroDocumento` AS `NroDocumento`,`e`.`Expedida` AS `Expedida`,`e`.`Nombres` AS `Nombres`,`e`.`Apellido1` AS `Apellido1`,`e`.`Apellido2` AS `Apellido2`,concat(`e`.`Apellido1`,' ',`e`.`Apellido2`) AS `Apellidos`,concat(`e`.`Nombres`,' ',`e`.`Apellido1`,' ',`e`.`Apellido2`) AS `NombreCompleto`,`pan`.`Descripcion` AS `PaisNacimiento`,`den`.`Descripcion` AS `DepNacimiento`,`cin`.`Descripcion` AS `CiuNacimiento`,`e`.`LibretaMilitar` AS `LibretaMilitar`,`e`.`Distrito` AS `Distrito`,`ec`.`Descripcion` AS `EstadoCivil`,`e`.`IdGenero` AS `Genero`,`e`.`Religion` AS `Religion`,`e`.`Cantidad_Hijos` AS `Cantidad_Hijos`,`e`.`Direccion` AS `DireccionEstudiante`,`e`.`Barrio` AS `Barrio`,`cip`.`Descripcion` AS `CiuProviene`,`dep`.`Descripcion` AS `DepProviene`,`pap`.`Descripcion` AS `PaisProviene`,`e`.`Fijo` AS `Fijo`,`e`.`Celular` AS `Celular`,`e`.`Correo_Electronico` AS `Correo_Electronico`,`e`.`Estrato` AS `Estrato`,`e`.`Empresa` AS `Empresa`,`e`.`Cargo` AS `Cargo`,`e`.`Direccion_Empresa` AS `Direccion_Empresa`,`e`.`Tel_Empresa` AS `Tel_Empresa`,`e`.`Fax_Empresa` AS `Fax_Empresa` from (((((((`tmestudiantes` `e` join `tmestadocivil` `ec` on((`e`.`IdEstadoCivil` = `ec`.`IdEstadoCivil`))) join `tmpaises` `pan` on((`e`.`IdPais_Nacimiento` = `pan`.`IdPais`))) join `tmdepartamentos` `den` on((`e`.`IdDep_Nacimiento` = `den`.`IdDepartamento`))) join `tmciudades` `cin` on(((`e`.`IdCiu_Nacimiento` = `cin`.`IdCiudad`) and (`e`.`IdDep_Nacimiento` = `cin`.`IdDepartamento`)))) join `tmpaises` `pap` on((`e`.`IdPais_Proviene` = `pap`.`IdPais`))) join `tmdepartamentos` `dep` on((`e`.`IdDep_Proviene` = `dep`.`IdDepartamento`))) join `tmciudades` `cip` on(((`e`.`IdCiu_Proviene` = `cip`.`IdCiudad`) and (`e`.`IdDep_Proviene` = `cip`.`IdDepartamento`)))) ;

-- ----------------------------
-- View structure for `vprogramasestudiantes`
-- ----------------------------
DROP VIEW IF EXISTS `vprogramasestudiantes`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vprogramasestudiantes` AS select `pe`.`IdPrograma_Ofertado` AS `IdPrograma_Ofertado`,`po`.`IdTipoPrograma` AS `IdTipoPrograma`,`tp`.`Descripcion` AS `TipoPrograma`,`po`.`IdPrograma` AS `IdPrograma`,`p`.`Titulo` AS `Programa`,`pe`.`Fecha` AS `FechaInscripcion`,`po`.`FechaInicio` AS `FechaInicio`,`po`.`FechaFinalizacion` AS `FechaFinalizacion`,`po`.`MinEstudiantes` AS `MinEstudiantes`,`po`.`MaxEstudiantes` AS `MaxEstudiantes`,`po`.`Estado` AS `Estado`,`po`.`Precio` AS `Precio`,sum(`pa`.`Valor`) AS `PagoRealizado`,`pe`.`Estado` AS `EstadoCursado`,`e`.`IdTipoDocumento` AS `IdTipoDocumento`,`e`.`NroDocumento` AS `NroDocumento`,`e`.`Nombres` AS `Nombres`,`e`.`Apellido1` AS `Apellido1`,`e`.`Apellido2` AS `Apellido2`,concat(`e`.`Apellido1`,' ',`e`.`Apellido2`) AS `Apellidos`,`e`.`Correo_Electronico` AS `Correo_Electronico` from (((((`trprograma_ofertado` `po` join `tmtiposprograma` `tp` on((`po`.`IdTipoPrograma` = `tp`.`IdTipoPrograma`))) join `tmprogramas` `p` on((`po`.`IdPrograma` = `p`.`IdPrograma`))) join `trprogramaestudiantes` `pe` on((`po`.`IdPrograma_Ofertado` = `pe`.`IdPrograma_Ofertado`))) join `tmestudiantes` `e` on((`pe`.`IdEstudiante` = `e`.`NroDocumento`))) left join `tmpagos` `pa` on(((`pe`.`IdEstudiante` = `pa`.`IdEstudiante`) and (`pe`.`IdPrograma_Ofertado` = `pa`.`IdPrograma_Ofertado`)))) group by `pe`.`IdPrograma_Ofertado`,`po`.`IdTipoPrograma`,`tp`.`Descripcion`,`po`.`IdPrograma`,`p`.`Descripcion`,`pe`.`Fecha`,`po`.`FechaInicio`,`po`.`FechaFinalizacion`,`po`.`MinEstudiantes`,`po`.`MaxEstudiantes`,`po`.`Estado`,`po`.`Precio`,`pe`.`Estado`,`e`.`IdTipoDocumento`,`e`.`NroDocumento`,`e`.`Nombres`,`e`.`Apellido1`,`e`.`Apellido2`,`e`.`Correo_Electronico` ;

-- ----------------------------
-- View structure for `vprogramsoffered`
-- ----------------------------
DROP VIEW IF EXISTS `vprogramsoffered`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vprogramsoffered` AS select `tp`.`IdTipoPrograma` AS `IdTipoPrograma`,`tp`.`Descripcion` AS `tipoprograma`,`p`.`IdPrograma` AS `IdPrograma`,`p`.`Titulo` AS `Titulo`,`p`.`Descripcion` AS `Descripcion`,`p`.`Imagen` AS `Imagen`,`po`.`FechaInicio` AS `FechaInicio`,`po`.`FechaFinalizacion` AS `FechaFinalizacion`,`po`.`IdPrograma_Ofertado` AS `IdPrograma_Ofertado`,`po`.`Precio` AS `Precio`,`po`.`Estado` AS `Estado`,`po`.`MaxEstudiantes` AS `MaxEstudiantes`,`po`.`MinEstudiantes` AS `MinEstudiantes`,ifnull(`hd`.`IdHabilidad`,'') AS `IdHabilidad`,ifnull(`hd`.`Descripcion`,'') AS `habilidad`,ifnull(`r`.`IdRequisito`,'') AS `IdRequisito`,ifnull(`r`.`Descripcion`,'') AS `requisito` from ((((`trprograma_ofertado` `po` join `tmprogramas` `p` on((`p`.`IdPrograma` = `po`.`IdPrograma`))) left join `tmrequisitos` `r` on((`r`.`IdPrograma` = `p`.`IdPrograma`))) join `tmtiposprograma` `tp` on((`tp`.`IdTipoPrograma` = `po`.`IdTipoPrograma`))) left join `tmhabilidadesdesarrollar` `hd` on((`hd`.`IdPrograma` = `p`.`IdPrograma`))) ;
