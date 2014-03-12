/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50527
Source Host           : localhost:3306
Source Database       : comodin

Target Server Type    : MYSQL
Target Server Version : 50527
File Encoding         : 65001

Date: 2014-03-12 07:17:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for abasto_web
-- ----------------------------
DROP TABLE IF EXISTS `abasto_web`;
CREATE TABLE `abasto_web` (
`clave`  varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`descrip`  varchar(150) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`lote`  varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`cad`  varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`cant`  varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`ori`  varchar(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of abasto_web
-- ----------------------------
BEGIN;
INSERT INTO `abasto_web` VALUES ('1363', 'LIDOCAINA hidrocortisona ung env 20g', '3101934', '01/10/2015', '9', '2'), ('1364', 'LIDOCAINA hidrocortisona c/6 supositorio', 'C13060740', '01/07/2015', '10', '2'), ('1566', 'NISTATINA c/12 ovulos 100 000UI', '2403I13', '01/09/2015', '20', '2'), ('1904', 'TRIMETOPRIMA sulfametoxazol s oral 120ml', '13J127', '01/09/2015', '20', '2'), ('1911', 'NITROFURANTOINA c/40 caps 100 mg', '307213', '01/08/2015', '10', '2'), ('1924', 'BENCILPENICILINA susp iny 600 000UI', 'I073858', '15/08/2015', '30', '2'), ('1925', 'BENZATINICA susp iny 1 200 000 UI', 'I073856', '01/07/2016', '30', '2'), ('1926', 'DICLOXACILINA c/20 caps 500mg', 'D-06', '01/02/2015', '20', '2'), ('1929', 'AMPICILINA c/20 tbs o caps 500mg', '304770', '01/06/2015', '20', '2'), ('2016', 'KETOCONAZOL c/10tabs 200mg', '360103', '01/11/2015', '10', '2'), ('2024', 'ISOCONAZOL crema 1g/100g env c/20g', '1308241', '01/08/2015', '20', '2'), ('2127', 'AMOXICILINA  de 500mg/5ml 75ml fco', '307098', '01/07/2015', '10', '2'), ('2128', 'AMOXICILINA c/12 o 15 capsulas 500 mg', 'CD09', '01/02/2015', '30', '2'), ('2129', 'AMOXICILINAclavulanico125mg/31.25mg/5ml', '309435', '01/09/2015', '10', '2'), ('2133', 'CLINDAMICINA c/16 capsulas 300 mg', 'N103179', '12/10/2015', '10', '2'), ('2144', 'LORATADINA c/20 tabletas 10 mg', '13H113', '01/08/2015', '50', '2'), ('2145', 'LORATADINA jarabe 5mg/5ml fco/60ml', '13H123', '01/08/2015', '30', '2'), ('2431', 'DEXTROMETORFANO jarabe 15mg/5ml fco', '310905', '15/10/2015', '50', '2'), ('2463', 'AMBROXOL sol oral 300mg/100ml fco/120ml', '302490', '02/02/2015', '100', '2'), ('2471', 'CLORFENAMINA compuesta c/10 tabletas', '309620', '24/09/2015', '50', '2'), ('2501', 'ENALAPRIL o lisinopril c/30 tab 10mg', '13M011', '01/12/2015', '60', '2'), ('2608', 'CARBAMAZEPINA c/20 tabletas 200mg', '090353', '01/07/2016', '30', '2'), ('261', 'LIDOCAINA sol iny 1% 500mg/50ml c/5 amp', 'C093070', '01/09/2017', '1', '2'), ('267', 'LIDOCAINA epinefrina sol iny 2% 50 cart', 'G083613', '01/08/2015', '2', '2'), ('2710', 'VITAMINAS Y MINERALES c/30tabs', '3G52062', '01/08/2015', '20', '2'), ('2711', 'VITAMINAS Y MINERALES fco 60ml', '3G53020', '01/08/2015', '10', '2'), ('2714', 'COMPLEJO B c/30tabletas tiamina 100mg', '310674', '01/10/2015', '50', '2'), ('2823', 'NEOMICINA/polimix.B/garamicidina/gts15ml', '13101009', '01/10/2015', '10', '2'), ('3407', 'NAPROXENO c/30tabletas de 250mg', '622033', '01/11/2016', '50', '2'), ('3413', 'INDOMETACINA c/30 tabletas 25mg', '307676', '08/07/2015', '50', '2'), ('3417', 'DICLOFENACO c/20 caps o grageas100mg', '13J040', '01/09/2015', '50', '2'), ('3623', 'ELECTROLITOS orales polvo 27.9 gr x pz', '1659F13', '01/06/2018', '50', '2'), ('408', 'CLORFENAMINA jarabe 0.5mg/ml env c/60ml', '310836', '09/10/2018', '20', '2'), ('5165', 'METFORMINA c/30 tabletas 850 mg', '13H094S1', '02/08/2015', '100', '2'), ('525', 'FENITOINA sodica c/50 tab de 100 mg', '310214', '01/10/2015', '10', '2'), ('5302', 'NITROFURANTOINA SuspOral 25mg/5ml 120ml', '3050933', '31/05/2015', '4', '2'), ('572', 'METOPROLOL c/20 tabletas 100 mg', '310387', '01/10/2016', '100', '2'), ('574', 'CAPTOPRIL c/30 tabletas 25 mg', '13C177', '01/03/2015', '100', '2'), ('600040109', 'ABATELENGUAS madera 142.0mm 18 mm c/500', 'S/L', '01/01/2017', '3', '2'), ('600580153', 'ALGODONES LAMINAS EN ROLL0 PLISADO 300G', 'S/L', '01/01/2018', '3', '2'), ('604360057', 'GASAS SECA C A 7.5CM 5CM C/200', '493', '01/12/2018', '3', '2'), ('604560391', 'GUANTES EXP AMB EST L DES T MED C/100', '1210-15', '01/10/2017', '4', '2'), ('609532825', 'VENDAS E TEJ PLANO FS 5M 30CM', '433', '01/10/2018', '1', '2'), ('655', 'BEZAFIBRATO c/30 tabletas 200 mg', '450853', '01/11/2015', '30', '2'), ('872', 'CLIOQUINOL crema 30mg/gr env c/20gr', '3112055', '30/11/2015', '10', '2');
COMMIT;

-- ----------------------------
-- Table structure for bitacora
-- ----------------------------
DROP TABLE IF EXISTS `bitacora`;
CREATE TABLE `bitacora` (
`cla_bit`  int(11) NOT NULL AUTO_INCREMENT ,
`id_rec`  int(11) NOT NULL DEFAULT 0 ,
`fec_carga`  datetime NULL DEFAULT NULL ,
`web`  int(11) NULL DEFAULT 0 ,
PRIMARY KEY (`cla_bit`),
FOREIGN KEY (`id_rec`) REFERENCES `receta` (`id_rec`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `id_rec_fk` (`id_rec`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='InnoDB free: 93184 kB; (`id_rec`) REFER `receta_electronica/'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of bitacora
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for c_inv
-- ----------------------------
DROP TABLE IF EXISTS `c_inv`;
CREATE TABLE `c_inv` (
`fec`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`uni`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`cla_pro`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`cant`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of c_inv
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for causes
-- ----------------------------
DROP TABLE IF EXISTS `causes`;
CREATE TABLE `causes` (
`id_cau`  varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' ,
`des_cau`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id_cau`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of causes
-- ----------------------------
BEGIN;
INSERT INTO `causes` VALUES ('1', '-');
COMMIT;

-- ----------------------------
-- Table structure for cedis
-- ----------------------------
DROP TABLE IF EXISTS `cedis`;
CREATE TABLE `cedis` (
`id_cedis`  int(11) NOT NULL AUTO_INCREMENT ,
`des_cedis`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id_cedis`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=2

;

-- ----------------------------
-- Records of cedis
-- ----------------------------
BEGIN;
INSERT INTO `cedis` VALUES ('1', 'TEPIC');
COMMIT;

-- ----------------------------
-- Table structure for detalle_productos
-- ----------------------------
DROP TABLE IF EXISTS `detalle_productos`;
CREATE TABLE `detalle_productos` (
`det_pro`  int(11) NOT NULL AUTO_INCREMENT ,
`cla_pro`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`lot_pro`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`cad_pro`  date NULL DEFAULT NULL ,
`cla_fin`  varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`id_ori`  int(1) NULL DEFAULT NULL ,
`web`  int(11) NULL DEFAULT 0 ,
PRIMARY KEY (`det_pro`),
FOREIGN KEY (`cla_pro`) REFERENCES `productos` (`cla_pro`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`cla_fin`) REFERENCES `financiamientos` (`cla_fin`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`id_ori`) REFERENCES `origen` (`id_ori`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `cla_pro_fk2` (`cla_pro`) USING BTREE ,
INDEX `detalle_profk1` (`cla_fin`) USING BTREE ,
INDEX `det_pro_fk2` (`id_ori`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='InnoDB free: 93184 kB; (`cla_pro`) REFER `receta_electronica'
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of detalle_productos
-- ----------------------------
BEGIN;
INSERT INTO `detalle_productos` VALUES ('1', '101', '12312312', '2015-11-01', '1', '1', '0'), ('2', '101', '216532', '2018-01-01', '1', '2', '0');
COMMIT;

-- ----------------------------
-- Table structure for detreceta
-- ----------------------------
DROP TABLE IF EXISTS `detreceta`;
CREATE TABLE `detreceta` (
`fol_det`  int(11) NOT NULL AUTO_INCREMENT ,
`det_pro`  int(11) NULL DEFAULT NULL ,
`can_sol`  int(11) NULL DEFAULT NULL ,
`cant_sur`  int(11) NULL DEFAULT NULL ,
`fec_sur`  date NULL DEFAULT NULL ,
`status`  int(11) NULL DEFAULT NULL ,
`id_rec`  int(11) NULL DEFAULT NULL ,
`hor_sur`  time NULL DEFAULT '08:00:00' ,
`id_cau`  varchar(3) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`indicaciones`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`web`  int(11) NULL DEFAULT 0 ,
`baja`  int(11) NULL DEFAULT 0 ,
PRIMARY KEY (`fol_det`),
FOREIGN KEY (`det_pro`) REFERENCES `detalle_productos` (`det_pro`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`id_rec`) REFERENCES `receta` (`id_rec`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`id_cau`) REFERENCES `causes` (`id_cau`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `det_pro_fk` (`det_pro`) USING BTREE ,
INDEX `id_rec_fk2` (`id_rec`) USING BTREE ,
INDEX `detreceta_ibfk_3` (`id_cau`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='InnoDB free: 93184 kB; (`det_pro`) REFER `receta_electronica'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of detreceta
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for financiamientos
-- ----------------------------
DROP TABLE IF EXISTS `financiamientos`;
CREATE TABLE `financiamientos` (
`cla_fin`  varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`des_fin`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`cla_fin`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of financiamientos
-- ----------------------------
BEGIN;
INSERT INTO `financiamientos` VALUES ('1', 'SEGURO POPULAR'), ('2', 'FASSA');
COMMIT;

-- ----------------------------
-- Table structure for indices
-- ----------------------------
DROP TABLE IF EXISTS `indices`;
CREATE TABLE `indices` (
`id_rec`  varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci

;

-- ----------------------------
-- Records of indices
-- ----------------------------
BEGIN;
INSERT INTO `indices` VALUES ('103');
COMMIT;

-- ----------------------------
-- Table structure for inventario
-- ----------------------------
DROP TABLE IF EXISTS `inventario`;
CREATE TABLE `inventario` (
`fec_ela`  date NULL DEFAULT NULL ,
`cla_uni`  varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`det_pro`  int(11) NULL DEFAULT NULL ,
`cant`  int(11) NULL DEFAULT NULL ,
`id_inv`  int(11) NOT NULL AUTO_INCREMENT ,
`web`  int(11) NULL DEFAULT 0 ,
PRIMARY KEY (`id_inv`),
FOREIGN KEY (`det_pro`) REFERENCES `detalle_productos` (`det_pro`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`cla_uni`) REFERENCES `unidades` (`cla_uni`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `cla_uni_fk_inv` (`cla_uni`) USING BTREE ,
INDEX `det_pro_fk_inv` (`det_pro`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='InnoDB free: 93184 kB; (`det_pro`) REFER `receta_electronica'
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of inventario
-- ----------------------------
BEGIN;
INSERT INTO `inventario` VALUES ('2014-03-11', '3006', '1', '50', '1', '0'), ('2014-03-11', '3006', '2', '25', '2', '0');
COMMIT;

-- ----------------------------
-- Table structure for inventario_inicial
-- ----------------------------
DROP TABLE IF EXISTS `inventario_inicial`;
CREATE TABLE `inventario_inicial` (
`fec_ela`  date NULL DEFAULT NULL ,
`cla_uni`  varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`det_pro`  int(11) NULL DEFAULT NULL ,
`cant`  int(11) NULL DEFAULT NULL ,
`id_inv`  int(11) NOT NULL AUTO_INCREMENT ,
`web`  int(11) NULL DEFAULT 0 ,
PRIMARY KEY (`id_inv`),
FOREIGN KEY (`det_pro`) REFERENCES `detalle_productos` (`det_pro`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`cla_uni`) REFERENCES `unidades` (`cla_uni`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `cla_uni_fk_inv` (`cla_uni`) USING BTREE ,
INDEX `det_pro_fk_inv` (`det_pro`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='InnoDB free: 93184 kB; (`det_pro`) REFER `receta_electronica'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of inventario_inicial
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for jurisdicciones
-- ----------------------------
DROP TABLE IF EXISTS `jurisdicciones`;
CREATE TABLE `jurisdicciones` (
`cla_jur`  int(11) NOT NULL DEFAULT 0 ,
`des_jur`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`id_cedis`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`cla_jur`),
FOREIGN KEY (`id_cedis`) REFERENCES `cedis` (`id_cedis`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `jurisfk1` (`id_cedis`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='InnoDB free: 93184 kB; (`id_cedis`) REFER `receta_electronic'

;

-- ----------------------------
-- Records of jurisdicciones
-- ----------------------------
BEGIN;
INSERT INTO `jurisdicciones` VALUES ('1', 'JURISDICCION SANITARIA I', '1'), ('2', 'JURISDICCION SANITARIA II', '1'), ('3', 'JURISDICCION SANITARIA III', '1');
COMMIT;

-- ----------------------------
-- Table structure for kardex
-- ----------------------------
DROP TABLE IF EXISTS `kardex`;
CREATE TABLE `kardex` (
`id_kardex`  int(11) NOT NULL AUTO_INCREMENT ,
`id_rec`  int(11) NULL DEFAULT NULL ,
`det_pro`  int(11) NULL DEFAULT NULL ,
`cant`  int(11) NULL DEFAULT NULL ,
`tipo_mov`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`fol_aba`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`fecha`  datetime NULL DEFAULT NULL ,
`obser`  longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`id_usu`  int(11) NULL DEFAULT NULL ,
`web`  int(11) NULL DEFAULT 0 ,
PRIMARY KEY (`id_kardex`),
FOREIGN KEY (`id_usu`) REFERENCES `usuarios` (`id_usu`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`det_pro`) REFERENCES `detalle_productos` (`det_pro`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `kardex_fk1` (`id_rec`) USING BTREE ,
INDEX `kardex_fk2` (`det_pro`) USING BTREE ,
INDEX `kardex_ibfk_1` (`id_usu`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='InnoDB free: 93184 kB; (`id_usu`) REFER `receta_electronica/'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of kardex
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for medicos
-- ----------------------------
DROP TABLE IF EXISTS `medicos`;
CREATE TABLE `medicos` (
`nom_med`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`ape_pat`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`ape_mat`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`nom_com`  varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`cedula`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`web`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`cedula`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of medicos
-- ----------------------------
BEGIN;
INSERT INTO `medicos` VALUES (null, null, null, 'medico', '-', '1'), (null, null, null, 'CARLOS MONZON .', '090529', '1'), ('AMERICO QUETZALLI', 'GUZMAN', 'AGUILAR', 'AMERICO QUETZALLI GUZMAN AGUILAR', '1', '1'), (null, null, null, 'SERGIO  LOPEZ TIRADO', '1005628', '1'), (null, null, null, 'CECILIA BARRERA HERRERA', '1047104', '1'), (null, null, null, 'VICTOR MANUEL MILAN R.', '1194939', '1'), (null, null, null, ' VICTOR MANUEL MILAN R.', '1195039', '1'), (null, null, null, 'MIGDO PEREZ ROMERO', '1255758', '1'), (null, null, null, 'CARLOS SANTOYO RODRIGUEZ', '1290086', '1'), (null, null, null, 'SERGIO CABRALES BARAJAS', '1549104', '1'), (null, null, null, 'FRANCISCO  MACEDO ROSALES', '1813133', '1'), (null, null, null, 'PATRICIA GUZMAN VIRGEN', '1995577', '1'), (null, null, null, 'PEDRO RAMIREZ SANCHEZ', '2010817', '1'), (null, null, null, 'MARCOS HERNANDEZ TEMBLADOR', '2018', '1'), (null, null, null, 'DANIEL MARTINEZ CARDONA', '2303753', '1'), (null, null, null, 'EUZ RAMDRE MEZA GARCIA', '2304112', '1'), (null, null, null, 'CARLOS MURILLO FUENTES', '2345678', '1'), (null, null, null, 'EUDARDO BAEZ MARTINEZ', '2464002', '1'), (null, null, null, 'JESUS SILVA JUG', '2504906', '1'), (null, null, null, 'JUAN MANUEL  CERVANTEZ RUIZ', '2569838', '1'), (null, null, null, 'CECILIA GUERRA BATREZ', '2571392', '1'), (null, null, null, 'MANUEL  CERVANTES H.', '262928', '1'), (null, null, null, 'JOSE MANUEL CERVANTES  HERRERA', '2629289', '1'), (null, null, null, 'GABRIEL  CAMPOS  NAVARRETE', '2650411', '1'), (null, null, null, 'MARTIN GUTIERREZ VAZQUEZ', '2707663', '1'), (null, null, null, 'SILVIA GUZMAN SIXTOS', '2835413', '1'), (null, null, null, 'ANTONIO ARELLANO ROBLES', '2981395', '1'), (null, null, null, 'ANTONIO ARELLANO ROBLES', '2981399', '1'), (null, null, null, 'OSCAR GONZALEZ .', '3019651', '1'), (null, null, null, 'MARTHA CAMACHO LOPEZ', '3273181', '1'), (null, null, null, 'TOMAS LOPEZ ROSALES', '3355133', '1'), (null, null, null, 'ALEJANDRA RIOS  SANCHEZ', '3355644', '1'), (null, null, null, 'ANTONIO SOTO MARQUEZ', '3355661', '1'), (null, null, null, 'CARLOS SANCHEZ OSUNA', '337033', '1'), (null, null, null, 'ROBERTI?вЂO ZEPEDA LEVI', '341211', '1'), (null, null, null, 'MARIA CECILIA  GUERRA BATREZ', '3413848', '1'), (null, null, null, 'ANA MARY NOEMI TINAJERO ARIAS', '3532341', '1'), (null, null, null, 'OREGEL ESPINOZA .', '3602190', '1'), (null, null, null, 'JESUS  ORIGEL ESPINOZA', '3602196', '1'), (null, null, null, 'DRA. LEMUS .', '3633945', '1'), (null, null, null, 'MANUEL CERVANTES H.', '363928', '1'), (null, null, null, 'DIANA PEREZ REYES', '3645960', '1'), (null, null, null, 'JOSE DE JESUS LOMELI CONSTANTE', '3680921', '1'), (null, null, null, 'SUKEY CASTRO ISIORDIA', '3840667', '1'), (null, null, null, 'SUGEY CASTRO ISIORDIA', '3840668', '1'), (null, null, null, 'ANTONIO CHIQUET GOLLAZ', '3842592', '1'), (null, null, null, 'MARCO ANTONIO CHIQUET GOLLAZ', '3842892', '1'), (null, null, null, 'SALVADOR ISLAS PARRA', '3865924', '1'), (null, null, null, 'ERENDIRA  GONZALEZ DIAZ', '39451', '1'), (null, null, null, 'LILIANA HERNANDEZ .', '3999028', '1'), (null, null, null, 'LILIANA HERNANDEZ JACOBO', '3999088', '1'), (null, null, null, 'RICARDO HERNANDEZ .', '4010133', '1'), (null, null, null, 'NOE NAVARRATE LLAMAS', '4013341', '1'), (null, null, null, 'PASCUALA AVILA RODRIGUEZ', '4014177', '1'), (null, null, null, 'LAMAXIN ALICIA AYON  SALGADO', '4014882', '1'), (null, null, null, 'CAMACHO SANCHEZ MOISES', '4048579', '1'), (null, null, null, 'SANTOS ULLOA HERNANDEZ', '4211548', '1'), (null, null, null, 'KARLA PATRICIA RUBIO  BARRERA', '4237805', '1'), (null, null, null, 'DAVID JIMENEZ CABUTO', '4275985', '1'), (null, null, null, 'MONICA MURUA LERMA', '4316366', '1'), (null, null, null, 'MARCELO GALLARDO DELGADO', '4317835', '1'), (null, null, null, 'MANUEL  QUINTERO RODRIGUEZ', '4390694', '1'), (null, null, null, 'ERNESTO  LEWIS CARRILLO', '4456886', '1'), (null, null, null, 'CUAHUTEMOC VALAZCO SOLANO', '4490045', '1'), (null, null, null, 'VERONICA JASSO .', '4543754', '1'), (null, null, null, 'NAVOR CALVILLO REYES', '4595582', '1'), (null, null, null, 'LUIS ROBERTO BARRAGAN DOMINGUEZ', '4606971', '1'), (null, null, null, 'LUIS BARRAGAN X.', '4606977', '1'), (null, null, null, 'MARIO EDUARDO AGUILAR SERRANO', '4644359', '1'), (null, null, null, 'CLAUDIA MONDRAGON VELAZQUEZ', '4667700', '1'), (null, null, null, 'GLADIZ  J. FLORES', '4700028', '1'), (null, null, null, 'NASHELY GUEVARA CRUZ', '4716268', '1'), (null, null, null, 'JANETH G FACIO PEREZ', '4723277', '1'), (null, null, null, 'JOSE MARIA RODRIGUEZ RUIZ', '4757250', '1'), (null, null, null, 'ERNESTO A. LEWIS  CARRILLO', '4831251', '1'), (null, null, null, 'J. GABRIEL RAMIREZ SALAZAR', '4964317', '1'), (null, null, null, 'ANDREA MALDONADO VEGA', '5030992', '1'), (null, null, null, 'ANTONIO PATINO MEDINA', '5050196', '1'), (null, null, null, 'YARIEBEL SEGURA CORDERO', '5091291', '1'), (null, null, null, 'YARIEBEL SEGURA C.', '5091294', '1'), (null, null, null, 'VICTOR HUGO  RENTERIA SOLIS', '5193817', '1'), (null, null, null, 'RAUL  MEZA GONZALEZ', '520', '1'), (null, null, null, 'JOEL PAEZ PARRA', '5308015', '1'), (null, null, null, 'JOEL PEREZ PEREZ', '530815', '1'), (null, null, null, 'ANGELICA MARIA GONZALEZ SANDOVAL', '5378255', '1'), (null, null, null, 'MARIA  ANGELICA  GONZALEZ', '5378753', '1'), (null, null, null, 'RAMON MONTES CARRILLO', '545602', '1'), (null, null, null, 'EDUARDO LEON C.', '5467595', '1'), (null, null, null, 'ANGELES CABRERA DELGADO', '5580583', '1'), (null, null, null, 'DANIEL ENRIQUE MEDINA PE?вЂA', '5744326', '1'), (null, null, null, 'JUAN ARTEAGA H.', '5785571', '1'), (null, null, null, 'JAVIER ARTEAGA HEREDIA', '5785971', '1'), (null, null, null, 'ANDREA MERCEDES MALDONADO VARGA', '5830992', '1'), (null, null, null, 'VLADIMIR POLANCO M.', '5844910', '1'), (null, null, null, 'SOCORRO JUDITH BLANCARTE LOPEZ', '5872542', '1'), (null, null, null, 'JAVIER RENETERIA GOMEZ', '6133652', '1'), (null, null, null, 'ROBERTO TREJO SALAZAR', '6173382', '1'), (null, null, null, 'EDDIE DAVID JIMENEZ CABUTO', '6226765', '1'), (null, null, null, 'NORA SANCHEZ ROBLES', '6311404', '1'), (null, null, null, 'NORA SANCHEZ .', '6311904', '1');
INSERT INTO `medicos` VALUES (null, null, null, 'LUIS RAMON  LOPEZ MEDINA', '6335645', '1'), (null, null, null, 'MA. CANDELARIA GUTIERREZ RAMIREZ', '6443265', '1'), (null, null, null, 'MA. CANDELARIA CONTRERAS RAMIREZ', '6443295', '1'), (null, null, null, 'GUADALUPE PIZANO .', '6443991', '1'), (null, null, null, 'MELINA SARAHI  QUEZADA LOPEZ', '6468118', '1'), (null, null, null, 'OSWALD MEJIA GONZALEZ', '6472186', '1'), (null, null, null, 'FRANCISCO FABIAN SANTOS PEREZ', '648827', '1'), (null, null, null, 'BERENICE GARCIA ARCE', '6720009', '1'), (null, null, null, 'SANTOS ULLOA HERNANDEZ', '6720017', '1'), (null, null, null, 'VICTOR EFREN MARQUEZ CARDENAS', '6756162', '1'), (null, null, null, 'CARLOS MONZON .', '690529', '1'), (null, null, null, 'NORA SANCHEZ ROBLES', '6905303', '1'), (null, null, null, 'EDDIE DAVID JIMENEZ CABUTO', '6926765', '1'), (null, null, null, 'DULCE MARIA  AGUILAR MATA', '6952120', '1'), (null, null, null, 'DULCE MARIA AGUILAR MATA', '6952126', '1'), (null, null, null, 'OSWALD MEJIA GONZALEZ', '6972186', '1'), (null, null, null, 'JORGE LUIS VAZQUEZ ROBLES', '6984468', '1'), (null, null, null, 'JESUS GUERRA HERNANDEZ', '7046738', '1'), (null, null, null, 'JERY GUERRA HERNANDEZ', '7046758', '1'), (null, null, null, 'HILDA GUERRA B.', '7308054', '1'), (null, null, null, 'URIEL ULTRERAS GUTIERREZ', '7452760', '1'), (null, null, null, 'RIGOBERTO  TRUJILLO RUBIO', '747365', '1'), (null, null, null, 'VICTOR MANUEL MILAN R.', '7681542', '1'), (null, null, null, 'JORGE SUENAGA LOPEZ', '777', '1'), (null, null, null, 'MOISES CAMACHO SANCHEZ', '7844290', '1'), (null, null, null, 'CLAUDIA YOSELIN MURGUIA MU?вЂOZ', '7942023', '1'), (null, null, null, 'J. LUIS V. CONDE HERNANDEZ', '800353', '1'), (null, null, null, 'ROSA ISELA DAVALOS ROSAS', '8057371', '1'), (null, null, null, 'MARTIN R. GUTIERREZ V??ZQUEZ', '9919077', '1'), (null, null, null, 'AYON . .', '99193084', '1'), (null, null, null, 'GABRIEL RAMIREZ SALAZAR', '99193091', '1'), (null, null, null, 'ROSALBA  MEZA ARENAS', '99195417', '1'), (null, null, null, 'CALVILLO REYES 4595582', 'NAVOR', '1');
COMMIT;

-- ----------------------------
-- Table structure for modificacion_abastos
-- ----------------------------
DROP TABLE IF EXISTS `modificacion_abastos`;
CREATE TABLE `modificacion_abastos` (
`folio_ab`  varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL ,
`clave`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`descrip`  text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`lote`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`caducidad`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`cant`  int(50) NOT NULL DEFAULT 0 ,
`cant_mov`  int(50) NOT NULL DEFAULT 0 ,
`origen`  varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`fecha`  date NOT NULL DEFAULT '0000-00-00' ,
`hora`  time NOT NULL DEFAULT '00:00:00' ,
`tipo_mov`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`obser`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`lot`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`cad`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`cantent`  varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '' ,
`ori`  varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL ,
`id`  int(11) NOT NULL AUTO_INCREMENT ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=latin1 COLLATE=latin1_swedish_ci
AUTO_INCREMENT=7931

;

-- ----------------------------
-- Records of modificacion_abastos
-- ----------------------------
BEGIN;
INSERT INTO `modificacion_abastos` VALUES ('17', '1098', 'VITAMINA  A C D solucion env 15 ml', 'A103349', '14/10/2015', '10', '10', '2', '2014-02-10', '08:38:26', 'ELIMINACION', '0', '-', '-', '-', '-', '7927'), ('17', '1233', 'RANITIDINA c/20 tab 150 mg', 'L131188', '01/11/2015', '50', '50', '2', '2014-02-10', '08:43:17', 'ELIMINACION', '0', '-', '-', '-', '-', '7928'), ('17', '1363', 'LIDOCAINA hidrocortisona ung env 20g', '3101934', '01/10/2015', '10', '9', '2', '2014-02-10', '08:48:01', 'MODIFICACION', '0', '3101934', '01/10/2015', '10', '2', '7929'), ('17', '1363', 'LIDOCAINA hidrocortisona ung env 20g', '3101934', '01/10/2015', '10', '9', '2', '2014-02-10', '08:53:00', 'MODIFICACION', '0', '3101934', '01/10/2015', '9', '2', '7930');
COMMIT;

-- ----------------------------
-- Table structure for municipios
-- ----------------------------
DROP TABLE IF EXISTS `municipios`;
CREATE TABLE `municipios` (
`cla_mun`  int(11) NOT NULL DEFAULT 0 ,
`des_mun`  varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`cla_jur`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`cla_mun`),
FOREIGN KEY (`cla_jur`) REFERENCES `jurisdicciones` (`cla_jur`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `cla_jur_fk` (`cla_jur`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='InnoDB free: 93184 kB; (`cla_jur`) REFER `receta_electronica'

;

-- ----------------------------
-- Records of municipios
-- ----------------------------
BEGIN;
INSERT INTO `municipios` VALUES ('1', 'EL NAYAR', '1'), ('2', 'LA YESCA', '1'), ('3', 'SAN BLAS', '1'), ('4', 'SANTA MARIA DEL ORO', '1'), ('5', 'TEPIC', '1'), ('6', 'XALISCO', '1'), ('7', 'AHUACATLAN', '2'), ('8', 'AMATLAN DE CANAS', '2'), ('9', 'BAHIA DE BANDERAS', '2'), ('10', 'COMPOSTELA', '2'), ('11', 'IXTLAN DEL RIO', '2'), ('12', 'JALA', '2'), ('13', 'SAN PEDRO LAGUNILLAS', '2'), ('14', 'ACAPONETA', '3'), ('15', 'HUAJICORI', '3'), ('16', 'ROSAMORADA', '3'), ('17', 'RUIZ', '3'), ('18', 'SANTIAGO IXCUINTLA', '3'), ('19', 'TECUALA', '3'), ('20', 'TUXPAN', '3');
COMMIT;

-- ----------------------------
-- Table structure for origen
-- ----------------------------
DROP TABLE IF EXISTS `origen`;
CREATE TABLE `origen` (
`id_ori`  int(1) NOT NULL DEFAULT 0 ,
`des_ori`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id_ori`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of origen
-- ----------------------------
BEGIN;
INSERT INTO `origen` VALUES ('1', 'SSN'), ('2', 'SAVI');
COMMIT;

-- ----------------------------
-- Table structure for pacientes
-- ----------------------------
DROP TABLE IF EXISTS `pacientes`;
CREATE TABLE `pacientes` (
`id_pac`  int(11) NOT NULL AUTO_INCREMENT ,
`ape_pat`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`ape_mat`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`nom_pac`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`nom_com`  varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`fec_nac`  date NOT NULL ,
`sexo`  char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`num_afi`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`tip_cob`  varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL ,
`ini_vig`  date NOT NULL ,
`fin_vig`  date NOT NULL ,
`web`  int(11) NOT NULL DEFAULT 0 ,
PRIMARY KEY (`id_pac`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=12

;

-- ----------------------------
-- Records of pacientes
-- ----------------------------
BEGIN;
INSERT INTO `pacientes` VALUES ('2', 'GUZMÁN', 'AGUILAR', 'AMÉRICO QUETZALLI', 'GUZMÁN AGUILAR AMÉRICO QUETZALLI', '1989-10-04', 'M', '163101651', 'SP', '2014-09-29', '2015-02-01', '0'), ('5', 'SUENEGA', 'GONZALEZ', 'JORGE', 'SUENEGA GONZALEZ JORGE', '1984-10-02', 'M', '128937129831', 'SP', '2013-08-25', '2014-04-05', '0'), ('6', 'RINCÓN', 'DOMÍNGUEZ', 'ANÍBAL', 'RINCÓN DOMÍNGUEZ ANÍBAL', '1980-03-01', 'M', '13537841321', 'SP', '2012-08-01', '2014-04-01', '0'), ('7', 'GUZMÁN', 'AGUILAR', 'AMÉRICO', 'GUZMÁN AGUILAR AMÉRICO', '1989-01-01', 'M', '123123121233', 'SP', '2020-01-01', '2010-01-01', '0'), ('10', 'SASDASDAS', 'DASDASDA', 'SDASDASD', 'SASDASDAS DASDASDA SDASDASD', '2014-02-26', 'M', '1231231', 'SP', '2014-02-23', '2014-02-24', '0'), ('11', 'GUZMAN', 'AGUILAR', 'XILONEN YONOR', 'GUZMAN AGUILAR XILONEN YONOR', '1988-06-16', 'F', '163101651', 'SP', '2010-01-01', '2015-01-01', '0');
COMMIT;

-- ----------------------------
-- Table structure for productos
-- ----------------------------
DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
`cla_pro`  varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`des_pro`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`tip_pro`  varchar(21) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`cos_pro`  decimal(10,2) NULL DEFAULT NULL ,
`pres_pro`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`amp_pro`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`cla_pro`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of productos
-- ----------------------------
BEGIN;
INSERT INTO `productos` VALUES ('1005', 'TIROXINA /TRIYODOTIRONINA TAB  10G/20G  CAJA C/50TAB', 'MEDICAMENTO', '0.00', '-', '1'), ('1006', 'CALCIO c/12 comprimidos eferve 500 mg', 'MEDICAMENTO', '19.94', '-', '1'), ('1007', 'LEVOTIROXINA c/100 tab 100microg', 'MEDICAMENTO', '24.63', '-', '1'), ('101', 'ACIDO acetilsalicilico 20 tabletas 500mg', 'MEDICAMENTO', '3.66', '-', '1'), ('102', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('1022', 'TIAMAZOL 5mg c/20 tab', 'MEDICAMENTO', '9.33', '-', '1'), ('103', 'ACIDO Acetilsalicilico 20 tab solu 300mg', 'MEDICAMENTO', '4.01', '-', '1'), ('104', 'PARACETAMOL 10 tab 500 mg', 'MEDICAMENTO', '1.45', '-', '1'), ('1041', 'Tolbutamida Tableta 500 mg', 'MEDICAMENTO', '0.00', '-', '1'), ('1042', 'GLIBENCLAMIDA c/50 tabletas', 'MEDICAMENTO', '2.17', '-', '1'), ('1047', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('105', 'PARACETAMOL 3 supos 300 mg', 'MEDICAMENTO', '2.41', '-', '1'), ('1050', 'INSULINA humana acciOn intermedia nph', 'MEDICAMENTO', '35.40', '-', '1'), ('1051', 'INSULINA humana sol iny 100UI fco,c/5ml', 'MEDICAMENTO', '40.08', '-', '1'), ('1051.01', 'INSULINA HUMAN ACC RAPIDA 100UI FCO 10ml', 'MEDICAMENTO', '0.00', '-', '1'), ('106', 'PARACETAMOL 100mg/ml env.gotero 15ml', 'MEDICAMENTO', '2.18', '-', '1'), ('107', 'DEXTROPROPOXIFENO. CAPSULAS O COMPRIMIDOS', 'MEDICAMENTO', '0.00', '-', '1'), ('108', 'METAMIZOL sodico c/10 comp 500mg', 'MEDICAMENTO', '2.18', '-', '1'), ('109', 'METAMIZOL sodico sol iny 1g/2ml c/3 amp', 'MEDICAMENTO', '4.13', '-', '1'), ('1093', 'DANAZOL CAp o comp 100mg 50caps', 'MEDICAMENTO', '160.88', '-', '1'), ('1095', 'CALCITRIOL c/50 cAps 0.25 microg', 'MEDICAMENTO', '15.40', '-', '1'), ('1096', 'BROMOCRIPTINA c/14 tabletas 2.5 mg', 'MEDICAMENTO', '10.88', '-', '1'), ('1098', 'VITAMINAS A.C.D.soluciOn env. 15ml.', 'MEDICAMENTO', '17.43', '-', '1'), ('1099', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('11', 'SUCEDANEO de leche huma. de termic. polv', 'MEDICAMENTO', '26.96', '-', '1'), ('113', 'BUTILHIOSCINA/metamizol 36grag 10mg/250m', 'MEDICAMENTO', '36.67', '-', '1'), ('1132', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('12', 'SucedAneo de leche humana  0.66-0.68', 'MEDICAMENTO', '93.22', '-', '1'), ('1206', 'BUTILHIOSCINA c/10 grageas 10 mg', 'MEDICAMENTO', '4.01', '-', '1'), ('1207', 'BUTILHIOSCINA sol iny 20mg/ml c/3 amp', 'MEDICAMENTO', '3.82', '-', '1'), ('1208', 'CISAPRIDA susp oral 1 mg/ml env c/60 ml', 'MEDICAMENTO', '13.24', '-', '1'), ('1209', 'CISAPRIDA c/30 tabletas 5 mg', 'MEDICAMENTO', '17.52', '-', '1'), ('1210', 'Bromuro de Pinaverio', 'MEDICAMENTO', '0.00', '-', '1'), ('1223', 'ALUMINIO y magnesio c/50 tabletas', 'MEDICAMENTO', '14.70', '-', '1'), ('1224', 'ALUMINIO y magnesio susp env 240 ml', 'MEDICAMENTO', '8.78', '-', '1'), ('1233', 'RANITIDINA c/20 tab 150 mg', 'MEDICAMENTO', '6.17', '-', '1'), ('1234', 'RANITIDINA sol iny50mg/env.c/5amp de 2ml', 'MEDICAMENTO', '6.09', '-', '1'), ('1234.01', 'Ranitidina Solucion inyectable 50 mg', 'MEDICAMENTO', '0.00', '-', '1'), ('1239', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('1241', 'METOCLOPRAMIDA sol iny 10mg/2ml c/6 amp', 'MEDICAMENTO', '6.54', '-', '1'), ('1242', 'METOCLOPRAMIDA c/20 tab 10 mg', 'MEDICAMENTO', '2.30', '-', '1'), ('1243', 'METOCLOPRAMIDA sol oral 4mg/ml c/got', 'MEDICAMENTO', '5.43', '-', '1'), ('1244', 'MESALAZINA SUSPENSION RECTAL C/100ML.6.667 G.', 'MEDICAMENTO', '0.00', '-', '1'), ('1263', 'BISMUTO subsalicilato susp.100ml/1.750gr', 'MEDICAMENTO', '18.88', '-', '1'), ('1264', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('1270', 'SENOSIDOS A-Bsol.oral 200ml/100mg.c/75ml', 'MEDICAMENTO', '62.35', '-', '1'), ('1271', 'PLANTAGO psyllium polvo 49.7g env c/400g', 'MEDICAMENTO', '30.56', '-', '1'), ('1272', 'SENOSIDOS A-B c/20 tabletas', 'MEDICAMENTO', '10.56', '-', '1'), ('1275', 'SIN DESCRIPCION', '', null, '-', '1'), ('13', 'Formula de proteina extensamente hidrolizada polvo Proteina hidrolizada de caseina o suero.', 'Medicamento', '119.77', '-', '1'), ('1302580624', 'COLLARINES TIPO: FILADELFIA. Mediano Pza', 'MATERIAL DE CURACION', '385.45', '-', '1'), ('1308', 'METRONIDAZOL c/20  tab 500mg', 'MEDICAMENTO', '0.00', '-', '1'), ('1308.01', 'METRONIDAZOL 500mg C/30 TABS', 'MEDICAMENTO', '5.07', '-', '1'), ('1309', 'METRONIDAZOL sol iny 200mg/10ml c/2 amp', 'MEDICAMENTO', '23.81', '-', '1'), ('1310', 'METRONIDAZOL susp oral 250mg/5ml c/120ml', 'MEDICAMENTO', '5.31', '-', '1'), ('1311', 'METRONIDAZOL, sol. iny. 100ml', 'MEDICAMENTO', '9.61', '-', '1'), ('1314', 'QUINFAMIDA tab. 300 mg. env', 'MEDICAMENTO', '56.60', '-', '1'), ('132', 'NALBUFINA SOLUCION INYECTABLE 10 MG/ML', 'MEDICAMENTO', '27.31', '-', '1'), ('1344', 'ALBENDAZOL c/2 tabletas', 'MEDICAMENTO', '0.96', '-', '1'), ('1345', 'ALBENDAZOL envase c/20 ml', 'MEDICAMENTO', '1.37', '-', '1'), ('1347', 'ALBENDAZOL c/100 tabletas 200 mg', 'MEDICAMENTO', '0.00', '-', '1'), ('1363', 'LIDOCAINA con hidrocortisona env 20g', 'MEDICAMENTO', '18.28', '-', '1'), ('1364', 'LIDOCAINA-HIDROCORTIZONA  SUPOSITORIO', 'MEDICAMENTO', '31.26', '-', '1'), ('1404', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('1489', 'ESTROGENOS conjugados c/24 grag. 0.625m', 'MEDICAMENTO', '475.06', '-', '1'), ('1494', 'Estradiol valerato de Gragea 1mg', 'MEDICAMENTO', '0.00', '-', '1'), ('1502', 'ESTROGENOS CONJUGADOS DE ORIGEN EQUINO. GRAGEAS 1.250 MG.', 'MEDICAMENTO', '0.00', '-', '1'), ('1506', 'ESTROGENOS conjugados crema 62.5mg c/43g', 'MEDICAMENTO', '348.90', '-', '1'), ('1508', 'Estrogenos conjugados y Medroxiprogesterona grageas 0.625 mg / 2.5 mg 28 grageas', 'MEDICAMENTO', '189.72', '-', '1'), ('1541', 'CARBETOCINA sol iny 100Вµg ampolleta', 'MEDICAMENTO', '401.99', '-', '1'), ('1542', 'OXITOCINA sol iny de 5UI c/50 amp.de 1ml', 'MEDICAMENTO', '124.93', '-', '1'), ('1544', 'ERGOMETRINA sol iny 0.2mg c/50amp de 1ml', 'MEDICAMENTO', '663.66', '-', '1'), ('1551', 'ORCIPRENALINA sol iny 0.5mg c/3amp.de1ml', 'MEDICAMENTO', '24.24', '-', '1'), ('1552', 'ORCIPRENALINA 20mg c/30tab.', 'MEDICAMENTO', '49.29', '-', '1'), ('1561', 'METRONIDAZOL c/10 ovulos vag 500mg', 'MEDICAMENTO', '3.42', '-', '1'), ('1562', 'NITROFURAZONA c/6 ovulos 6mg', 'MEDICAMENTO', '5.19', '-', '1'), ('1566', 'NISTATINA c/12 ovulos 100 000UI', 'MEDICAMENTO', '10.10', '-', '1'), ('1591', 'INMUNOGLOBINA sol. iny.0.300mg fco.', 'MEDICAMENTO', '1582.51', '-', '1'), ('1661', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('1700', 'ACIDO FOLICO 4 mg c/90 tabs', 'MEDICAMENTO', '0.00', '-', '1'), ('1701', 'FUMARATO ferroso c/50 tabletas 200mg', 'MEDICAMENTO', '3.55', '-', '1'), ('1702', 'FUMARATO ferroso susp oral 29 mg c/120ml', 'MEDICAMENTO', '3.87', '-', '1'), ('1703', 'SULFATO ferroso c/30 tabletas 200mg', 'MEDICAMENTO', '5.04', '-', '1'), ('1704', 'SULFATO ferroso 125mg/ml', 'MEDICAMENTO', '7.81', '-', '1'), ('1705', 'HIERRO dextran sol iny 100mg/2ml c/3 amp', 'MEDICAMENTO', '33.77', '-', '1'), ('1706', 'ACIDO folico c/20 tabletas 5 mg', 'MEDICAMENTO', '3.42', '-', '1'), ('1706.01', 'acido folico Tableta 5 mg', 'MEDICAMENTO', '0.00', '-', '1'), ('1708', 'HIDROXOCOBALAMINA sol iny 100microg/2ml', 'MEDICAMENTO', '2.68', '-', '1'), ('1711', 'ACIDO folico c/90 tab 0.4 mg', 'MEDICAMENTO', '3.69', '-', '1'), ('1732', 'FITOMENADIONA iny 2mg c/3 amp. de 2ml.', 'MEDICAMENTO', '25.94', '-', '1'), ('1736', 'ESTROPTOQUINASA SOL. INY. 1 500 000 UI', 'MEDICAMENTO', '3489.35', '-', '1'), ('1759', 'METOTREXATO tab. 2.5mg 50 tab.', 'MEDICAMENTO', '91.40', '-', '1'), ('1776', 'METOTREXATO sol. inyectable 500mg', 'MEDICAMENTO', '338.32', '-', '1'), ('1901', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('1903', 'TRIMETOPRIMA y sulfametoxazol c/20 tab', 'MEDICAMENTO', '3.66', '-', '1'), ('1904', 'TRIMETOPRIMA y sulfametoxazol fco 120ml', 'MEDICAMENTO', '4.83', '-', '1'), ('1911', 'NITROFURANTOINA c/40 cAps 100 mg', 'MEDICAMENTO', '16.52', '-', '1'), ('1913', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('1921', 'BENCILPENICILINA sol iny 1 000 000 UI', 'MEDICAMENTO', '5.83', '-', '1'), ('1923', 'BENCILPENICILINA susp iny 400 000 UI', 'MEDICAMENTO', '2.70', '-', '1');
INSERT INTO `productos` VALUES ('1924', 'BENCILPENICILINA susp iny 800 000 UI', 'MEDICAMENTO', '2.69', '-', '1'), ('1925', 'BENZATINA susp iny 1 200 000 UI', 'MEDICAMENTO', '8.57', '-', '1'), ('1926', 'DICLOXACILINA c/20 cAps 500 mg', 'MEDICAMENTO', '19.79', '-', '1'), ('1927', 'DICLOXACILINA susp oral 250mg/5ml', 'MEDICAMENTO', '13.59', '-', '1'), ('1928', 'DICLOXACILINA sol iny 250mg c/1amp.', 'MEDICAMENTO', '5.81', '-', '1'), ('1929', 'AMPICILINA c/20 tabletas 500mg', 'MEDICAMENTO', '9.74', '-', '1'), ('1930', 'AMPICILINA susp oral 250mg/5ml', 'MEDICAMENTO', '5.52', '-', '1'), ('1931', 'AMPICILINA sol iny un fco ampula', 'MEDICAMENTO', '3.56', '-', '1'), ('1932', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('1933', 'BENCILPENICILINA sol iny 5 000 000 UI', 'MEDICAMENTO', '13.58', '-', '1'), ('1935', 'CEFOTAXIMA sol iny 1 g un fco amp', 'MEDICAMENTO', '13.05', '-', '1'), ('1936', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('1937', 'CEFTRIAXONA sol iny 1 g un fco amp', 'MEDICAMENTO', '9.36', '-', '1'), ('1938', 'BENCILPENICILINA compuesta c/amp d3ml', 'MEDICAMENTO', '6.48', '-', '1'), ('1939', 'CEFALEXINA c/20 cApsulas 500 mg', 'MEDICAMENTO', '24.85', '-', '1'), ('1939.1', 'CEFALEXINA SUSPENSIГ N 250MG', 'MEDICAMENTO', '0.00', '-', '1'), ('1940', 'DOXICICLINA c/10 cApsulas 100mg', 'MEDICAMENTO', '36.58', '-', '1'), ('1941', 'DOXICICLINA CAPSULA O TABLETA 50 MG', 'MEDICAMENTO', '237.51', '-', '1'), ('1951', 'Kanamicina Solucion inyectable  1 g  Frasco ampula', 'MEDICAMENTO', '49.04', '-', '1'), ('1954', 'GENTAMICINA sol iny 80mg c/1 amp de 2ml.', 'MEDICAMENTO', '4.15', '-', '1'), ('1955', 'GENTAMICINA sol iny 20mg c/1amp de 2ml.', 'MEDICAMENTO', '4.72', '-', '1'), ('1956', 'AMIKACINA sol iny 500mg c/1amp.de 2ml', 'MEDICAMENTO', '0.00', '-', '1'), ('1956.01', 'AMIKACINA SOL INY 500mg/2ml C/2AMP O FCO', 'MEDICAMENTO', '17.84', '-', '1'), ('1957', 'AMIKACINA sol iny100mg c/1amp de 2ml', 'MEDICAMENTO', '0.00', '-', '1'), ('1957.01', 'AMIKACINA SOL INY 100mg/2ml C/2AMP O FCO', 'MEDICAMENTO', '9.07', '-', '1'), ('1971', 'ERITROMICINA c/20 cApsulas 500 mg', 'MEDICAMENTO', '15.10', '-', '1'), ('1972', 'ERITROMICINA susp oral 250 mg/5 ml fco', 'MEDICAMENTO', '14.57', '-', '1'), ('1973', 'CLINDAMICINA sol iny 300 mg/2 ml', 'MEDICAMENTO', '3.54', '-', '1'), ('1976', 'Clindamicina Solucion inyectable 900 mg/50 ml Frasco con 50 ml', 'MEDICAMENTO', '266.27', '-', '1'), ('1981', 'TETRACICLINA c/10 tabletas 250 mg', 'MEDICAMENTO', '2.71', '-', '1'), ('1991', 'CLORAMFENICOL c/20 cApsulas 500 mg', 'MEDICAMENTO', '17.46', '-', '1'), ('2012', 'ANFOTERICINA B SOL INY. 50 MG ENV 1 FCO', 'MEDICAMENTO', '372.55', '-', '1'), ('2016', 'KETOCONAZOL c/10 tabletas 200 mg', 'MEDICAMENTO', '6.03', '-', '1'), ('2018', 'ITRACONAZOL c/15 cApsulas 100 mg', 'MEDICAMENTO', '32.97', '-', '1'), ('202', 'Diazepam Solucion inyectable al 10%  10 mg/ 2 ml   50 ampolletas de 2 ml', 'MEDICAMENTO', '206.45', '-', '1'), ('2024', 'ISOCONAZOL crema 1g/100g env c/20g', 'MEDICAMENTO', '32.46', '-', '1'), ('2030', 'CLOROQUINA tabletas. c/1000 tabs', 'MEDICAMENTO', '212.40', '-', '1'), ('2031', 'Primaquina Tableta 5 mg 20 tabletas', 'MEDICAMENTO', '29.50', '-', '1'), ('2032', 'Primaquina Tableta 15 mg 20 tabletas', 'MEDICAMENTO', '25.32', '-', '1'), ('204', 'ATROPINA sol iny 1mg/ml. c/50 amp', 'MEDICAMENTO', '78.46', '-', '1'), ('2040', 'PRAZICUANTEL 25 tab de 600 mg', 'MEDICAMENTO', '908.18', '-', '1'), ('2096', 'TRAMADOL-PARACE TAB 37.5/325.0 MG', 'MEDICAMENTO', '387.21', '-', '1'), ('2097', 'Buprenorfina Parche  30 mg  Envase con 4 parches', 'MEDICAMENTO', '588.30', '-', '1'), ('2098', 'Buprenorfina Parche  20 mg  Envase con 4 parches', 'MEDICAMENTO', '296.18', '-', '1'), ('2100.01', 'Buprenorfina Tableta sublingual  0.2 mg  20 tabletas', 'MEDICAMENTO', '203.14', '-', '1'), ('2101', 'CLONIDINA comp. 100mg c/30 tab', 'MEDICAMENTO', '420.74', '-', '1'), ('2103', 'Morfina  Solucion inyectable  10mg  5 Ampolletas', 'MEDICAMENTO', '749.34', '-', '1'), ('2104', 'MORFINA CAP LIBERACION PROLONGADA 100MG C/20 CAPSULAS', 'MEDICAMENTO', '0.00', '-', '1'), ('2106', 'TRAMADOL sol. iny. 100mg/2ml c/5 amp', 'MEDICAMENTO', '76.78', '-', '1'), ('2107', 'EFEDRINA  SOLUCION INYECTABLE  50MG/2ML  100 AMPOLLETAS CON 2ML', 'MEDICAMENTO', '4156.21', '-', '1'), ('2108', 'MIDAZOLAM  SOLUCION INYECTABLE  5MG/5ML  5 AMPOLLETAS CON 5ML', 'MEDICAMENTO', '62.50', '-', '1'), ('2111', 'AMLODIPINO c/10 tabletas 5 mg', 'MEDICAMENTO', '8.00', '-', '1'), ('2114', 'felodipino 5mg c/ 10 tabs', 'MEDICAMENTO', '112.89', '-', '1'), ('2116', 'HIDRALAZINA SOL/INY DE 10MG 5 AMP C/1.0ML', 'MEDICAMENTO', '416.02', '-', '1'), ('2119', 'DIPROPIONATO de betametasona ung. 30mg', 'MEDICAMENTO', '101.03', '-', '1'), ('2123', 'MUPIROCINA 100gr envase con 15g', 'MEDICAMENTO', '0.00', '-', '1'), ('2124', 'MORFINA CAP LIBERACION PROLONGADA 100MG C/20 CAPSULAS', 'MEDICAMENTO', '0.00', '-', '1'), ('2126', 'ACICLOVIR 400mg env.c/35tab', 'MEDICAMENTO', '100.26', '-', '1'), ('2127', 'AMOXICILINA envase c/75 ml', 'MEDICAMENTO', '11.00', '-', '1'), ('2128', 'AMOXICILINA c/12 cApsulas 500 mg', 'MEDICAMENTO', '12.79', '-', '1'), ('2128.01', 'Amoxicilina Capsula 500 mg', 'MEDICAMENTO', '0.00', '-', '1'), ('2129', 'AMOXICILINA/Acido clavulanico susp oral', 'MEDICAMENTO', '21.92', '-', '1'), ('2130', 'AMOXICILINA/Acido clavulanico sol iny', 'MEDICAMENTO', '107.14', '-', '1'), ('2131', 'CEFACLOR capsulas 250mg', 'MEDICAMENTO', '175.60', '-', '1'), ('2132', 'CLARITROMICINA c/10 tabletas 250 mg', 'MEDICAMENTO', '18.84', '-', '1'), ('2133', 'Clindamicina CApsula 300 mg', 'MEDICAMENTO', '31.21', '-', '1'), ('2135', 'FLUCONAZOL SOL INY DE 100MG', 'MEDICAMENTO', '52.89', '-', '1'), ('2136', 'MEBENDAZOLE c/6 tabletas 100 mg', 'MEDICAMENTO', '6.36', '-', '1'), ('2138', 'PIRANTEL TABLETA 250 MG', 'MEDICAMENTO', '0.00', '-', '1'), ('2141', 'BETAMETASONA sol iny4mg c/1amp', 'MEDICAMENTO', '67.22', '-', '1'), ('2142', 'CLORFENAMINA sol iny 10mg/ml c/5 amp', 'MEDICAMENTO', '86.85', '-', '1'), ('2144', 'LORATADINA c/20 tabletas 10 mg', 'MEDICAMENTO', '9.78', '-', '1'), ('2145', 'LORATADINA jarabe100ml/100gr env/60ml', 'MEDICAMENTO', '4.12', '-', '1'), ('2146', 'BUTILHIOSCINA/metamizol sol iny c/5 amp', 'MEDICAMENTO', '56.87', '-', '1'), ('2147', 'CISAPRIDA c/30 tabletas 10 mg', 'MEDICAMENTO', '38.50', '-', '1'), ('2148', 'LIDOCAINA ungГјento 5g envase c/35g', 'MEDICAMENTO', '0.00', '-', '1'), ('2151', 'RANITIDINA envase 200 ml', 'MEDICAMENTO', '82.65', '-', '1'), ('2153', 'BETAMETASONA acetato 2.71/3mg susp. iny.', 'MEDICAMENTO', '127.49', '-', '1'), ('2154', 'ENOXAPARINA sol iny40mg/0.4ml 2jgas', 'MEDICAMENTO', '154.51', '-', '1'), ('2161', 'DEXTROMETORFANO jarabe 10mg/5 ml', 'MEDICAMENTO', '26.67', '-', '1'), ('2162', 'IPRATROPIO 0.286mg env. c/15 ml', 'MEDICAMENTO', '107.32', '-', '1'), ('2162.01', 'IPRATROPIO .374 MG/20M', 'MEDICAMENTO', '0.00', '-', '1'), ('2163', 'CEFACLOR SUSPENSION ORAL 7 5G 150ML (250MG/5ML)', 'MEDICAMENTO', '208.51', '-', '1'), ('2164', 'CARBAMAZEPINA c/20 tabletas 400 mg', 'MEDICAMENTO', '192.51', '-', '1'), ('2165', 'CLOBAZAM TABS. 10 MG.', 'MEDICAMENTO', '0.00', '-', '1'), ('2169', 'LEVORCARNITINA sol. inyectable 1g/5ml', 'MEDICAMENTO', '0.00', '-', '1'), ('2175', 'CLORAMFENICOL 0.5g sulfacet 10g env 5ml', 'MEDICAMENTO', '29.05', '-', '1'), ('2176', 'DEXAMETASONA SOL-OFT 0.1G 100ML GOTERO 5ML', 'MEDICAMENTO', '0.00', '-', '1'), ('2185', 'PREDNISOLONA, ung. oft. 5 mg/g', 'MEDICAMENTO', '56.55', '-', '1'), ('2186', 'PREDNISOLONA, sulfacetamida. 5M oft.', 'MEDICAMENTO', '158.25', '-', '1'), ('2186.01', 'prednizolona sulfacetamida 10m', 'MEDICAMENTO', '0.00', '-', '1'), ('2187', 'IPRATROPIO sol 25mg fco-amp 20ml', 'MEDICAMENTO', '102.55', '-', '1'), ('2188', 'IPRATROPIO-SALBUTAMOL 0.500mg C/10 amp', 'MEDICAMENTO', '125.08', '-', '1'), ('2190', 'IPRATROPIO SALBUTAMOL', 'MEDICAMENTO', '208.60', '-', '1'), ('2190.01', 'BROMURO ipratropio m equiv 20Вµg 120dosis', 'MEDICAMENTO', '0.00', '-', '1'), ('2191', 'VITAMINA A c/40 cApsulas 50 000UI', 'MEDICAMENTO', '39.54', '-', '1'), ('2202', 'PENICILAMINA TABLETAS 300MG 50 TABLETAS', 'MEDICAMENTO', '450.23', '-', '1'), ('2208', 'DIU c/ levonorgestrel 52mg', 'MEDICAMENTO', '1918.07', '-', '1'), ('221', 'Tiopental sodico Solucion inyectable  0.5 g/20 ml  Frasco  ampula  y  diluyente  con 20 ml', 'MEDICAMENTO', '41.25', '-', '1'), ('2210', 'LEVONORGESTREL 0.750 mg env.c/2 tabletas', 'MEDICAMENTO', '30.13', '-', '1');
INSERT INTO `productos` VALUES ('2230', 'AMOXICILINA/clavulanico c/12 tab 500/125', 'MEDICAMENTO', '0.00', '-', '1'), ('2230.01', 'AMOXICILINA-AC CLAVULANICO C/16 TABS', 'MEDICAMENTO', '26.23', '-', '1'), ('2242', 'CARBON activado polvo env c/1 kg', 'MEDICAMENTO', '3421.39', '-', '1'), ('2247', 'BITARTRATO de cinitaprida 25 comp. 1mg', 'MEDICAMENTO', '194.61', '-', '1'), ('2248', 'CINITAPRIDA granulado 1mg c/30 sobre', 'MEDICAMENTO', '247.80', '-', '1'), ('2249', 'BITARTRATO de cinitaprida 120ml', 'MEDICAMENTO', '219.90', '-', '1'), ('226', 'KETAMINA sol iny 500mg/10ml fco amp 10ml', 'MEDICAMENTO', '28.13', '-', '1'), ('2260', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('2262', 'TIOTROPIO bromuro de 30 cap y disp inha', 'MEDICAMENTO', '354.47', '-', '1'), ('2263', 'TIOTROPIO bromuro de 18 microgr c/30 cap', 'MEDICAMENTO', '329.65', '-', '1'), ('2301', 'HIDROCLOROTIAZIDA c/20 tabletas 25 mg', 'MEDICAMENTO', '8.26', '-', '1'), ('2302', 'ACETAZOLAMIDA c/20 tabletas 250 mg', 'MEDICAMENTO', '15.34', '-', '1'), ('2303', 'Acetazolamida Solucion inyectable  500 mg/ 5ml  Frasco ampula con 5 ml', 'MEDICAMENTO', '37.55', '-', '1'), ('2304', 'ESPIRONOLACTONA de 25mg c/ 20 tab.', 'MEDICAMENTO', '10.24', '-', '1'), ('2306', 'MANITOL Inyectable al 20% 50g/250ml', 'MEDICAMENTO', '30.08', '-', '1'), ('2307', 'FUROSEMIDA c/20 tab 40mg', 'MEDICAMENTO', '4.60', '-', '1'), ('2308', 'FUROSEMIDA SOL INY AMO 20 MGS', 'MEDICAMENTO', '11.87', '-', '1'), ('233', 'SEVOFLURANO lIquido 250ml.', 'MEDICAMENTO', '1327.63', '-', '1'), ('2331', 'FENAZOPIRIDINA c/20 tabletas 100mg', 'MEDICAMENTO', '11.40', '-', '1'), ('2364', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('2403', 'ESTREPTOMICINA sol iny 1g un fco amp', 'MEDICAMENTO', '24.19', '-', '1'), ('2404', 'ISONIAZIDA c/200 tabletas 100 mg', 'MEDICAMENTO', '37.25', '-', '1'), ('2405', 'ETAMBUTOL c/50 tabletas', 'MEDICAMENTO', '46.73', '-', '1'), ('2409', 'RIFAMPICINA tabletas. 300mg. c/1000 tab', 'MEDICAMENTO', '1298.00', '-', '1'), ('2410', 'RIFAMPICINA susp oral 100 mg/5 ml fco', 'MEDICAMENTO', '49.03', '-', '1'), ('2413', 'Pirazinamida 500MG C/50TABLETAS', 'MEDICAMENTO', '373.73', '-', '1'), ('2417', 'RIFAMPICINA c/isoniazida 300mg/400mg', 'MEDICAMENTO', '442.50', '-', '1'), ('2418', 'RIFAMPICINA+isoniazida+pirazinamida+etam', 'MEDICAMENTO', '689.98', '-', '1'), ('242', 'Fentanilo Solucion o Emulsion inyectable  0.5 mg/10 ml  6 ampolletas o frascos ampula con 10 ml', 'MEDICAMENTO', '138.58', '-', '1'), ('243', 'ETOMIDATO SOLUCION INYECTABLE 20MG/10ML 5 AMPOLLETAS CON 10ML', 'MEDICAMENTO', '245.32', '-', '1'), ('2433', 'BENZONATATO c/20 perlas 100 mg', 'MEDICAMENTO', '16.89', '-', '1'), ('24414', 'JERINGA   DESECHABLE   (PARA   RECONSTITUCION   DE   VACUNAS   SR   Y   SRP)   CAPACIDAD   5 ML', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('246', 'PROPOFOL emul iny 200mg/20ml EDTA', 'MEDICAMENTO', '511.11', '-', '1'), ('2462', 'AMBROXOL c/20 comprimidos 30 mg', 'MEDICAMENTO', '2.94', '-', '1'), ('2463', 'AMBROXOL sol oral 300mg/100ml fco/120ml', 'MEDICAMENTO', '2.82', '-', '1'), ('247', 'DEXAMEDETOMIDINA SOL INY. 200UG C/5FCOS', 'MEDICAMENTO', '4623.53', '-', '1'), ('247.01', 'DEXEMEDETOMIDINA 200 UG SOL.', 'MEDICAMENTO', '0.00', '-', '1'), ('2471', 'CLORFENAMINA compuesta c/10 tabletas', 'MEDICAMENTO', '4.74', '-', '1'), ('2482', 'SIN DESCRIPCION', '', null, '-', '1'), ('2499', 'ALPRAZOLAM TABLETA 2 MG', 'MEDICAMENTO', '228.52', '-', '1'), ('250', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('2500', 'Alprazolam  Tableta  0.25 mg  30 tabletas', 'MEDICAMENTO', '32.45', '-', '1'), ('2501', 'ENALAPRIL o lisinopril c/30 tab 10 mg', 'MEDICAMENTO', '2.57', '-', '1'), ('2503', 'ALOPURINOL TABLETA 100 MG', 'MEDICAMENTO', '30.68', '-', '1'), ('2504', 'KETOPROFENO 100mg c/15 tabs', 'MEDICAMENTO', '11.75', '-', '1'), ('2508', 'BECLOMETASONA dipropionato de inh. 250Вµg', 'MEDICAMENTO', '378.45', '-', '1'), ('2509', 'bencilpenicilina SuspensiГіn inyectable 2 400 000 UI Frasco ГЎmpula y diluyente con 5 ml', 'MEDICAMENTO', '0.00', '-', '1'), ('2510', 'Bencilpenicilina procainica Suspension en aerosol  2 400 000 UI Frasco ampula con diluyente', 'MEDICAMENTO', '19.56', '-', '1'), ('2512', 'AMINOACIDOS PEDIATR 10% ENV 250 ML', 'MEDICAMENTO', '490.57', '-', '1'), ('2512.01', 'AMINOACIDOS CRISTA 10% SOL INYE 500 ML', 'MEDICAMENTO', '553.19', '-', '1'), ('2519', 'NITAZOXAMIDA Tabs. 200mg c/6', 'MEDICAMENTO', '9.79', '-', '1'), ('252', 'SUXAMETONIO, clor iny 40mg/2ml c/5 amp', 'MEDICAMENTO', '166.75', '-', '1'), ('2520', 'LOSARTAN c/30 grageas 50 mg', 'MEDICAMENTO', '20.40', '-', '1'), ('2521', 'LOSARTAN potasico/hidroclorot 30 grageas', 'MEDICAMENTO', '0.00', '-', '1'), ('25239', 'FIJADOR dental fco. 1 galon 3.8 lt', 'MEDICAMENTO', '0.00', '-', '1'), ('254', 'VECURONIO sol. iny. 4mg/1ml. c/50 amp', 'MEDICAMENTO', '1003.14', '-', '1'), ('2540', 'TELMISARTAN 40mg  c/30 tabletas', 'MEDICAMENTO', '95.86', '-', '1'), ('2542', 'Telmisartan-hidrocloro 80/12.5mg c/14tab', 'MEDICAMENTO', '132.66', '-', '1'), ('260', 'Lidocaina Gel20mg/ml Envase con 10ml', 'MEDICAMENTO', '75.00', '-', '1'), ('2601', 'FENOBARBITAL TABLETA 100 MG', 'MEDICAMENTO', '55.67', '-', '1'), ('2602', 'Fenobarbital Tableta  15 mg  10 tabletas', 'MEDICAMENTO', '7.30', '-', '1'), ('2605', 'SIN DESCRIPCION', '', null, '-', '1'), ('2606', 'SIN DESCRIPCION', '', null, '-', '1'), ('2608', 'CARBAMAZEPINA c/20 tabletas 200 mg', 'MEDICAMENTO', '4.25', '-', '1'), ('2609', 'CARBAMAZEPINA 5ml/100mg env.120 ml', 'MEDICAMENTO', '34.22', '-', '1'), ('261', 'LIDOCAINA sol iny 1% 500mg/50ml c/5amp', 'MEDICAMENTO', '88.23', '-', '1'), ('2610', 'FENITOINA SODICA 30mg c/50 tabletas', 'MEDICAMENTO', '0.00', '-', '1'), ('2611', 'FENITOINA susp oral 37.5mg/5 ml fco', 'MEDICAMENTO', '13.63', '-', '1'), ('2612', 'CLONAZEPAM TABLETA 2 MG', 'MEDICAMENTO', '42.82', '-', '1'), ('2613', 'CLONAZEPAM SOLUCION 2 5 MG/ ML', 'MEDICAMENTO', '28.32', '-', '1'), ('2614', 'Clonazepam Solucion inyectable  1 mg/ ml  5 ampolletas con un ml', 'MEDICAMENTO', '493.19', '-', '1'), ('2619', 'FENOBARBITAL ELIXIR 20 MG/5 ML', 'MEDICAMENTO', '36.20', '-', '1'), ('262', 'LIDOCAINA 2% sol. iny. c/5amp', 'MEDICAMENTO', '91.82', '-', '1'), ('2620', 'ACIDO valproico 250mg envase c/60 cap.', 'MEDICAMENTO', '267.55', '-', '1'), ('2621', 'SIN DESCRIPCION', '', null, '-', '1'), ('2622', 'VALPROATO de magnesio c/40 tab 200 mg', 'MEDICAMENTO', '41.38', '-', '1'), ('2623', 'VALPROATO d magnesio sol 186mg c/40ml', 'MEDICAMENTO', '54.09', '-', '1'), ('2624', 'FENITOINA sodica 250mg c/1amp 5ml', 'MEDICAMENTO', '24.33', '-', '1'), ('2626', 'Oxcarbazepina Gragea 300 mg 20 grageas', 'MEDICAMENTO', '241.43', '-', '1'), ('2627', 'Oxcarbazepina Gragea 600 mg 20 grageas', 'MEDICAMENTO', '170.50', '-', '1'), ('2628', 'Oxcarbazepina SuspensiOn 6 g/100 ml 120', 'MEDICAMENTO', '275.51', '-', '1'), ('263', 'Lidocaina', 'MEDICAMENTO', '222.34', '-', '1'), ('2630', 'VALPROATO SEMISODICO tab 500mg', 'MEDICAMENTO', '617.74', '-', '1'), ('264', 'LIDOCAINA al 2%, 10g/100ml. atomi 115ml', 'MEDICAMENTO', '85.46', '-', '1'), ('265', 'LIDOCAINA,epinefrina sol iny al 2% 5amp', 'MEDICAMENTO', '103.97', '-', '1'), ('2651', 'TRIHEXIFENIDILO 5MG C/50 TABLETAS', 'MEDICAMENTO', '28.30', '-', '1'), ('2652', 'BIPERIDENO tabs. 2mg c/50', 'MEDICAMENTO', '30.40', '-', '1'), ('2653', 'BIPERIDENO SOLUCION INYECTABLE 5 MG/ML', 'MEDICAMENTO', '63.01', '-', '1'), ('2654', 'LEVODOPA-carbidopa 250mg/25mg c/100tabs', 'MEDICAMENTO', '119.71', '-', '1'), ('2657', 'Levodopa y carbidopa Tableta de liberacion prolongada  200/50 mg 50      tabletas      de      libe', 'MEDICAMENTO', '213.58', '-', '1'), ('2662', 'SIN DESCRIPCION', '', null, '-', '1'), ('267', 'LIDOCAINA,epinefrina SOL INY CAJA C/50 C', 'MEDICAMENTO', '82.46', '-', '1'), ('269', 'Ropivacaina 40mg solucion Inyectable env', 'MEDICAMENTO', '476.89', '-', '1'), ('270', 'ROPIVACAINA SOLUC INY 150MG C/5 AMP 20ML', 'MEDICAMENTO', '941.18', '-', '1'), ('2702', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('2707', 'ACIDO ascorbico100mg c/20 tabs', 'MEDICAMENTO', '4.72', '-', '1'), ('271', 'BUPIVACAINA sol iny 5mg/30ml fco', 'MEDICAMENTO', '40.96', '-', '1'), ('2710', 'VITAMINAS Y MINERALES CAJA CON 30 TABLETAS', 'MEDICAMENTO', '0.00', '-', '1'), ('2711', 'SIN DESCRIPCION', '', null, '-', '1'), ('2714', 'COMPLEJO B c/30 tabletas', 'MEDICAMENTO', '5.31', '-', '1');
INSERT INTO `productos` VALUES ('2715', 'VITAMINA E c/100 O 99 grageas 400 mg', 'MEDICAMENTO', '179.25', '-', '1'), ('2715.01', 'VITAMINA E GRAGEAS O CAPSULAS DE GELATINA  400 MG 99 GRAGEAS', 'MEDICAMENTO', '0.00', '-', '1'), ('2724', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('2728', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('2739', 'Dieta polimerica a base de caseinato de calcio polvo', 'MEDICAMENTO', '31.27', '-', '1'), ('2801', 'ZINC Y FENILEFRINA  SOLUCION OFTALMICA  GOTERO INTEGRADO CON 15 MILILITROS.', 'MEDICAMENTO', '0.00', '-', '1'), ('2803', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('2804', 'NAFAZOLINA SOL  OFTALMICA  (1 MG/ML)', 'MEDICAMENTO', '21.74', '-', '1'), ('2814', 'HIPROMELOSA SOL-OFTALMICA  0.5% 5MG/ML GOTERO 15ML', 'MEDICAMENTO', '0.00', '-', '1'), ('2821', 'CLORAMFENICOL sol oftal 5 mg/ml got/15ml', 'MEDICAMENTO', '27.14', '-', '1'), ('2822', 'CLORANFENICOL unguento oftal 5 mg/g', 'MEDICAMENTO', '5.50', '-', '1'), ('28223', 'SIN DESCRIPCION', '', null, '-', '1'), ('2823', 'NEOMICINA-polimixina 1.75mg/25mcg c/15ml', 'MEDICAMENTO', '25.75', '-', '1'), ('2824', 'NEOMICINA,polimix y bacitrina oft. 3.5mg', 'MEDICAMENTO', '8.45', '-', '1'), ('2825', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('2828', 'GENTAMICINA sol oftal 3mg/ml got/15 ml', 'MEDICAMENTO', '42.22', '-', '1'), ('2829', 'SULFACETAMIDA sol oftal 0.1g/ml got/15ml', 'MEDICAMENTO', '36.76', '-', '1'), ('2830', 'ACICLOVIR unguento oftal 3g/100g env4.5g', 'MEDICAMENTO', '68.78', '-', '1'), ('2841', 'PREDNISOLONA sol oftal 5mg env. 5 ml.', 'MEDICAMENTO', '28.00', '-', '1'), ('2851', 'PILOCARPINA sol. oftalmica al 2% 20mg/ml', 'MEDICAMENTO', '0.00', '-', '1'), ('2852', 'PILOCARPINA sol. oftalmica al 4% 40mg/ml', 'MEDICAMENTO', '0.00', '-', '1'), ('2858', 'TIMOLOL sol. oftalmica 5mg', 'MEDICAMENTO', '4.01', '-', '1'), ('2872', 'ATROPINA sol oft 10mg/ml', 'MEDICAMENTO', '33.76', '-', '1'), ('2873', 'Atropina  UngГјento oftalmico   10 mg/g  Envase con 3 g', 'MEDICAMENTO', '35.48', '-', '1'), ('2891', 'Proximetacaina (Proparacaina)', 'MEDICAMENTO', '0.00', '-', '1'), ('2893', 'HIPROMELOSA SOL-OFTTALMICA 2% 20MG/ML', 'MEDICAMENTO', '0.00', '-', '1'), ('291', 'NEOSTIGMINA sol iny 0.5mg/1ml. c/6 amp.', 'MEDICAMENTO', '115.76', '-', '1'), ('3', 'Sucedaneo de leche humana 0.80 a 0.81plv', 'MEDICAMENTO', '180.27', '-', '1'), ('302', 'NALOXONA SOLUCION INYECTABLE 0 4 MG/ML', 'MEDICAMENTO', '140.14', '-', '1'), ('3044', 'MEDROXIPROGESTERONA TABLETAS 10 MG', 'MEDICAMENTO', '133.15', '-', '1'), ('3045', 'MEDROXIPROGESTERONA sol iny 150mg/1ml', 'MEDICAMENTO', '96.80', '-', '1'), ('3047', 'SIN DESCRIPCION', '', null, '-', '1'), ('3048', 'SIN DESCRIPCION', '', null, '-', '1'), ('3102', 'SIN DESCRIPCION', '', null, '-', '1'), ('3111', 'DIFENIDOL 25 mg c/30 tabletas.', 'MEDICAMENTO', '4.78', '-', '1'), ('3112', 'DIFENIDOL sol iny 40 mg/2 ml c/2 amp', 'MEDICAMENTO', '6.56', '-', '1'), ('3113', 'Dimenhidrinato Tabletas 50mg 24 Tabletas', 'MEDICAMENTO', '91.94', '-', '1'), ('3116855119', 'Papel envoltura Kraft de 70kg y 45 cm.', 'MATERIAL DE CURACION', '432.00', '-', '1'), ('3121', 'SIN DESCRIPCION', '', null, '-', '1'), ('3132', 'NEOMICINA polimi B.sol otica 5ml', 'MEDICAMENTO', '24.36', '-', '1'), ('3150', 'LEVOCETIRICINA TAB DE 5 MGC/2', 'MEDICAMENTO', '0.00', '-', '1'), ('3204', 'Levomepromazina Tableta  25 mg  20 tabletas', 'MEDICAMENTO', '12.76', '-', '1'), ('3206', 'TRIAZOLAM  TABLETAS  0 125MG  20 TABLETAS', 'MEDICAMENTO', '838.41', '-', '1'), ('3215', 'DIAZEPAM TABLETA 10 MG', 'MEDICAMENTO', '5.04', '-', '1'), ('3241', 'Trifluoperazina Gragea o tableta  5 mg  20 grageas o tabletas', 'MEDICAMENTO', '31.86', '-', '1'), ('3247', 'Perfenazina Sol. Iny.  5mg/ ml 3 amp.', 'MEDICAMENTO', '239.22', '-', '1'), ('3251', 'HALOPERIDOL TABLETA 5 MG', 'MEDICAMENTO', '11.80', '-', '1'), ('3253', 'HALOPERIDOL SOLUCION INYECTABLE AL 5% 5 MG/ML', 'MEDICAMENTO', '125.06', '-', '1'), ('3255', 'Litio Tableta  300 mg  50 tabletas', 'MEDICAMENTO', '109.13', '-', '1'), ('3258', 'RISPERIDONA c/40 tab 2mg', 'MEDICAMENTO', '12.86', '-', '1'), ('3259', 'Clozapina Comprimido  100 mg  30 comprimidos', 'MEDICAMENTO', '913.08', '-', '1'), ('3262', 'Risperidona Solucion Oral  1.0 mg/ml  Envase   con   60   ml   y   gotero dosificador', 'MEDICAMENTO', '359.31', '-', '1'), ('3268', 'Risperidona Suspension inyectable de liberacion prolongada  25 mg Frasco ampula y jeringa prellenad', 'MEDICAMENTO', '1251.98', '-', '1'), ('3302', 'CLORHIDRATO DE IMIPRAMINA 25 MG. ENVASE CON 20 GRAG. O TABLETAS.', 'MEDICAMENTO', '8.97', '-', '1'), ('3305', 'AMITRIPTILINA TABLETA 25 MG', 'MEDICAMENTO', '8.87', '-', '1'), ('3307', 'ATOMOXETINA 10MG C/14 CAPSULAS', 'MEDICAMENTO', '356.96', '-', '1'), ('3308', 'ATOMOXETINA, caps. 40mg env c/14cAps', 'MEDICAMENTO', '356.96', '-', '1'), ('3309', 'CLORHIDRATO de atomoxetina env c/14cAps', 'MEDICAMENTO', '356.96', '-', '1'), ('3315', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('3407', 'NAPROXENO c/30 tabletas 250 mg', 'MEDICAMENTO', '10.57', '-', '1'), ('3409', 'COLCHICINA c/30 tabletas 1 mg', 'MEDICAMENTO', '9.26', '-', '1'), ('341', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('3412', 'INDOMETACINA supOS 100mg c/6 o 15pzas', 'MEDICAMENTO', '7.27', '-', '1'), ('3413', 'INDOMETACINA c/30 tabletas 25 mg', 'MEDICAMENTO', '8.26', '-', '1'), ('3415', 'PIROXICAM c/20 cApsulas 20 mg', 'MEDICAMENTO', '6.22', '-', '1'), ('3417', 'DICLOFENACO 100mg 20 capsulas o grageas', 'MEDICAMENTO', '5.96', '-', '1'), ('3419', 'NAPROXENO susp. 5ml/125mg env.100ml', 'MEDICAMENTO', '12.51', '-', '1'), ('3421', 'MELOXICAM 0 150G/100ML 40ML Y PIPETA DOSIFICADORA DE 5ML', 'MEDICAMENTO', '195.92', '-', '1'), ('3422', 'KETOROLACO sol.iny.30mg c/3 amp.', 'MEDICAMENTO', '3.41', '-', '1'), ('3432', 'DEXAMETASONA c/30 tabletas 0.5 mg', 'MEDICAMENTO', '14.55', '-', '1'), ('3433', 'METILPREDNISOLONA iny 40mg frasco-Amp2ml', 'MEDICAMENTO', '32.46', '-', '1'), ('3451', 'ALOPURINOL c/20 tabletas 300 mg', 'MEDICAMENTO', '11.21', '-', '1'), ('3461', 'AZATRIOPINA TABLETA 50 MG', 'MEDICAMENTO', '54.43', '-', '1'), ('3502', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('3503', 'Noretisterona solucion inyectable 200 mg/ ml Ampolleta con 1 ml', 'MEDICAMENTO', '33.39', '-', '1'), ('3504', 'LEVONORGESTREL Y ETINILESTRADIOL CADA GRAGEA CONTIENE LEVONORGESTREL', 'MEDICAMENTO', '0.00', '-', '1'), ('3506', 'SIN DESCRIPCION', '', null, '-', '1'), ('3507', 'LEVONORGESTREL y etinilestradiol 28 grag', 'MEDICAMENTO', '24.78', '-', '1'), ('3508', 'SIN DESCRIPCION', '', null, '-', '1'), ('3509', 'MEDROXIPROGESTERONA Y CIPIONATO DE ESTRADIOL SOL. INYEC. 25MG 5MG', 'MEDICAMENTO', '19.32', '-', '1'), ('3510', 'IMPLANTE ANTICONCEPTIVO INTRADERMICO', 'MEDICAMENTO', '1534.00', '-', '1'), ('3511', 'Norelgestromina/ etinilestradiol Parche Norelgestro mina 6 mg Etinilestradio l 0.60 mg 3 parches', 'MEDICAMENTO', '168.14', '-', '1'), ('3515', 'NORETISTERONA-ESTRADIOL 50mg/5mg c/1amp.', 'MEDICAMENTO', '32.53', '-', '1'), ('3601', 'GLUCOSA sol iny 5% 250 ml', 'MEDICAMENTO', '12.23', '-', '1'), ('3603', 'GLUCOSA sol iny 5% 1000 ml', 'MEDICAMENTO', '21.11', '-', '1'), ('3604', 'GLUCOSA sol iny 10% 500 ml', 'MEDICAMENTO', '8.76', '-', '1'), ('3605', 'GLUCOSA sol iny 10% 1000 ml', 'MEDICAMENTO', '10.20', '-', '1'), ('3606', 'GLUCOSA sol iny 50% 50 ml', 'MEDICAMENTO', '14.40', '-', '1'), ('3607', 'GLUCOSA sol iny 50% 50 ml', 'MEDICAMENTO', '25.76', '-', '1'), ('3608', 'CLORURO de sodio sol iny 0.9% 250 ml', 'MEDICAMENTO', '5.89', '-', '1'), ('3609', 'CLORURO de sodio sol iny 0.9% 500 ml', 'MEDICAMENTO', '8.96', '-', '1'), ('3610', 'CLORURO de sodio sol iny 0.9% 1000 ml', 'MEDICAMENTO', '21.11', '-', '1'), ('3611', 'CLORURO de sodio y glucosa 250 ml', 'MEDICAMENTO', '17.78', '-', '1'), ('3612', 'CLORURO de sodio y glucosa 500 ml', 'MEDICAMENTO', '20.00', '-', '1'), ('3613', 'CLORURO de sodio y glucosa 1000 ml', 'MEDICAMENTO', '21.11', '-', '1'), ('3614', 'SOLUCION hartmann sol iny 250 ml', 'MEDICAMENTO', '13.40', '-', '1'), ('3615', 'SOLUCION hartmann sol iny 500 ml', 'MEDICAMENTO', '20.00', '-', '1'), ('3616', 'SOLUCION hartmann sol iny 1000 ml', 'MEDICAMENTO', '21.11', '-', '1'), ('3617', 'FOSFATO D POTASIO INY. 20MEQ/20MEQ C50', 'MEDICAMENTO', '377.36', '-', '1'), ('3618', 'BICARBONATO/sodio sol iny 3.75g c/1 50ml', 'MEDICAMENTO', '41.24', '-', '1');
INSERT INTO `productos` VALUES ('3619', 'BICARBONATO/sodio sol iny 0.75g c/50amp', 'MEDICAMENTO', '172.04', '-', '1'), ('3620', 'GLUCONATO de calcio sol iny 1g c/50 amp.', 'MEDICAMENTO', '131.31', '-', '1'), ('3622', 'ELECTROLITOS ORALES POLVO, SOBRE C/27.9G', 'MEDICAMENTO', '0.00', '-', '1'), ('3623', 'ELECTROLITOS orales polvo sb 27.9g x pza', 'MEDICAMENTO', '2.71', '-', '1'), ('3624', 'GLUCOSA sol iny 5g/100ml env. 50ml', 'MEDICAMENTO', '6.81', '-', '1'), ('3625', 'GLUCOSA sol iny 5%/100 ml', 'MEDICAMENTO', '7.23', '-', '1'), ('3626', 'CLORURO de sodio sol iny 0.9% 50 ml', 'MEDICAMENTO', '14.44', '-', '1'), ('3629', 'MAGNESIO sulfato de s.i 1g/10ml. 10 amp', 'MEDICAMENTO', '354.34', '-', '1'), ('3630', 'GLUCOSA al 5% env c/500 ml', 'MEDICAMENTO', '16.58', '-', '1'), ('3631', 'GLUCOSA sol iny 5% ENV 50ml Y ADAPTADOR', 'MEDICAMENTO', '13.29', '-', '1'), ('3632', 'GLUCOSA sol iny 5% env 100ml y adaptador', 'MEDICAMENTO', '17.24', '-', '1'), ('3661', 'GELATINA sol iny. polifelina 3.5g 500ml', 'MEDICAMENTO', '284.44', '-', '1'), ('3662', 'Seroalbumina humana 12.5g  env 50ml', 'MEDICAMENTO', '856.24', '-', '1'), ('3673', 'AGUA inyectable sol iny 5 ml c/ 100 amp', 'MEDICAMENTO', '333.33', '-', '1'), ('3674', 'AGUA inyectable sol iny 10 ml c/100 amp', 'MEDICAMENTO', '244.44', '-', '1'), ('3675', 'AGUA inyectable sol iny 500 ml', 'MEDICAMENTO', '18.89', '-', '1'), ('3701', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('3835', 'VITAMINA A sol oral 200 000UI c/25 dosis', 'MEDICAMENTO', '0.00', '-', '1'), ('3847', 'FaboterГЎpico polivalente antialacrГЎn SoluciГіn inyectable', 'MEDICAMENTO', '0.00', '-', '1'), ('3848', 'SIN DESCRIPCION', '', null, '-', '1'), ('402', 'CLORFENAMINA tableta 4mg. 20 tabletas', 'MEDICAMENTO', '2.34', '-', '1'), ('4026', 'Buprenorfina  Solucion inyectable  0.30 mg/ml  6 ampolletas o frasco ampula con 1 ml', 'MEDICAMENTO', '132.79', '-', '1'), ('4028', 'CLONIXINATO DE LISINA Sol. Iny 100mg/2ml', 'MEDICAMENTO', '28.89', '-', '1'), ('4028.01', 'CLONIXINATO DE LISINA, SOLUCION INYECTABLE, 100 MILIGRAMOS / 2 MILILITROS', 'MEDICAMENTO', '28.89', '-', '1'), ('405', 'DIFENHIDRAMINA jarabe 12.5mg/5ml. 60ml', 'MEDICAMENTO', '2.07', '-', '1'), ('4054', 'FLUMAZENIL SOLUCION O EMULSION INYECTABLE 0 5 MG/5 ML(0 1 MG/ML)', 'MEDICAMENTO', '245.45', '-', '1'), ('4055', 'BUPIVACAINA sol iny 3 ml c/5 amp', 'MEDICAMENTO', '119.84', '-', '1'), ('4057', 'Midazolam 15mg _Sol. Iny con 5 ampulas de 3ml', 'MEDICAMENTO', '100.00', '-', '1'), ('4059', 'ROCURONIO bromuro de iny  50mg/5ml 12amp', 'MEDICAMENTO', '2431.54', '-', '1'), ('406', 'DIFENHIDRAMINA sol iny 100mg/2ml. 10ml', 'MEDICAMENTO', '20.11', '-', '1'), ('4061', 'BESILATO DE CISATRACURIO sol. iny.', 'MEDICAMENTO', '136.09', '-', '1'), ('408', 'CLORFENAMINA jarabe 0.5mg/ml c/60ml', 'MEDICAMENTO', '2.11', '-', '1'), ('409', 'HIDROXIZINA', 'MEDICAMENTO', '0.00', '-', '1'), ('4095', 'IRBESARTAN C/28 tabs.  150 mg', 'MEDICAMENTO', '496.65', '-', '1'), ('4096', 'IRBESARTAN 300MG. C/28 tabs', 'MEDICAMENTO', '512.93', '-', '1'), ('4107', 'AMIODARONA sol iny 150mg 6amp de 3ml', 'MEDICAMENTO', '248.76', '-', '1'), ('4110', 'AMIODARONA 200mg c/20 Tabs.', 'MEDICAMENTO', '14.95', '-', '1'), ('4111', 'TRINITRATO glicerilo 5MG/DIA 7parches', 'MEDICAMENTO', '43.92', '-', '1'), ('4112', 'Resina de colestiramina, polvo 4grs polvo 4 g Envase con 50 sobres.', 'MEDICAMENTO', '0.00', '-', '1'), ('4114', 'NOTROGLICERINA AMP. 10ML', 'MEDICAMENTO', '424.94', '-', '1'), ('4117', 'PENTOXIFILINA c/30 tabletas de 400 mg', 'MEDICAMENTO', '40.00', '-', '1'), ('4118', 'ISOSORBIDA dinitrato de sol iny 1mg/ml', 'MEDICAMENTO', '407.41', '-', '1'), ('4121', 'SIN DESCRIPCION', '', null, '-', '1'), ('4123', 'TIROFIBAN SOLUCION INYECTABLE 12.5 MG/50 ML. ENVASE   FCO-AMP 50ML', 'MEDICAMENTO', '0.00', '-', '1'), ('4124', 'Simvastatina Tableta  20 mg  14 tabletas', 'MEDICAMENTO', '23.36', '-', '1'), ('4126', 'SULFADIAZINA/ plata crema 1g/100g c/375g', 'MEDICAMENTO', '47.20', '-', '1'), ('4132', 'Mometasona ungГјento 100mg/100g 30 g', 'MEDICAMENTO', '236.50', '-', '1'), ('4136', 'CLINDAMICINA Gel 1g Envase de 30g', 'MEDICAMENTO', '108.89', '-', '1'), ('4141', 'Mometasona  SuspensiOn  0.050g/100ml   E', 'MEDICAMENTO', '0.00', '-', '1'), ('4148', 'INSULINA LISPRO/PROTAMINA fco ampula', 'MEDICAMENTO', '308.67', '-', '1'), ('4157', 'INSULINA H-A-I-L 100UI/10ml fco-amp', 'MEDICAMENTO', '277.77', '-', '1'), ('4158', 'INSULINA GLARGINA 3.64mg c/1amp de 10ml.', 'MEDICAMENTO', '653.37', '-', '1'), ('4161', 'ALENDRONATO 30 TABS O COMPRIDO 10MG', 'MEDICAMENTO', '77.38', '-', '1'), ('4162', 'INSULINA LISPRO sol iny 100UI/ml', 'MEDICAMENTO', '218.67', '-', '1'), ('4163', 'CLORHIDRATO DE RALOXIFENO c/28 tab', 'MEDICAMENTO', '353.35', '-', '1'), ('4164', 'Alendronato de sodio  70mg 4tab o comp', 'MEDICAMENTO', '391.83', '-', '1'), ('4184', 'LOPERAMIDA c/12 tabletas 2 mg', 'MEDICAMENTO', '3.06', '-', '1'), ('4185', 'AC. URSODEOXICOLICO 250MGS ENV C/ 50 CAP', 'MEDICAMENTO', '0.00', '-', '1'), ('4201', 'HIDRALAZINA sol iny 20mg c/5 amp', 'MEDICAMENTO', '636.04', '-', '1'), ('4202', 'Indometacina Solucion inyectable  1 mg/2 ml  Frasco ampula con 2 ml', 'MEDICAMENTO', '4370.77', '-', '1'), ('4224', 'ENOXAPARINA SOLUCION INYECTABLE', 'MEDICAMENTO', '223.30', '-', '1'), ('4237', 'SIN DESCRIPCION', '', null, '-', '1'), ('4241', 'DEXAMETASONA sol iny 8mg/2ml', 'MEDICAMENTO', '5.48', '-', '1'), ('4242', 'ENOXAPARINA Sol. Inyectable 20mg/0.2ml', 'MEDICAMENTO', '97.02', '-', '1'), ('4246', 'CLOPIDOGREL c/14 grageas 75 mg', 'MEDICAMENTO', '350.45', '-', '1'), ('4249', 'Levofloxacino hemihidratado 500mg  100ml', 'MEDICAMENTO', '24.78', '-', '1'), ('4251', 'BANCOMICINA 500 MG FCO', 'MEDICAMENTO', '44.64', '-', '1'), ('4252', 'SIN DESCRIPCION', '', null, '-', '1'), ('4254', 'CEFTAZIDIMA Sol. Inyectable 1g', 'MEDICAMENTO', '0.00', '-', '1'), ('4255', 'CIPROFLOXACINO c/8 tabletas 250 mg', 'MEDICAMENTO', '3.89', '-', '1'), ('4256', 'Talidomida', 'MEDICAMENTO', '0.00', '-', '1'), ('4257', 'SIN DESCRIPCION', '', null, '-', '1'), ('4258', 'CIPROFLOXACINO SUSP 250mg/5ml ENV', 'MEDICAMENTO', '292.47', '-', '1'), ('4259', 'CIPROFLOXACINO sol iny 200mg/100ml', 'MEDICAMENTO', '8.83', '-', '1'), ('426', 'AMINOFILINA sol iny 250mg/10ml c/5 amp', 'MEDICAMENTO', '19.27', '-', '1'), ('4260', 'NISTATINA susp. 2 400 000 UI env. 24ml.', 'MEDICAMENTO', '29.50', '-', '1'), ('4261', 'OFLOXACINO 6, 8 O 12 TABS DE 400MG', 'MEDICAMENTO', '26.22', '-', '1'), ('4263', 'ACICLOVIR c/25 comp 200mg', 'MEDICAMENTO', '15.12', '-', '1'), ('4264', 'ACICLOVIR sol iny 250mg envase c/ 5 amp.', 'MEDICAMENTO', '392.94', '-', '1'), ('429', 'SALBUTAMOL susp.env.c/200 dosis de 100mg', 'MEDICAMENTO', '29.50', '-', '1'), ('4299', 'LEVOFLOXACINA Tab. 500mg c/ 7 tabletas', 'MEDICAMENTO', '109.36', '-', '1'), ('4300', 'LEVOFLOXACINO 750mg C/7 TABS', 'MEDICAMENTO', '0.00', '-', '1'), ('4302', 'FINASTERIDA 5mg envase c/30 grageas', 'MEDICAMENTO', '33.04', '-', '1'), ('431', 'SALBUTAMOL jarabe 2mg/5ml env c/60ml', 'MEDICAMENTO', '2.23', '-', '1'), ('4317', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('432', 'TERBUTALINA sol iny 0.25mg/ml c/3 amp', 'MEDICAMENTO', '20.54', '-', '1'), ('4329', 'MONTELUKAST c/14 tabletas 5 mg', 'MEDICAMENTO', '74.00', '-', '1'), ('433', 'Terbutalina Tableta  5 mg  20 tabletas', 'MEDICAMENTO', '21.00', '-', '1'), ('4330', 'MONTELUKAST Grageas 10mg. c/30 comp.', 'MEDICAMENTO', '65.77', '-', '1'), ('4331', 'ACCOLATE 20mg c/ 28 Tabs', 'MEDICAMENTO', '0.00', '-', '1'), ('4337', 'Budesonida susp. Env. Fco. Pulverizador 6 ml., 120 dosis 64 mg. c/u nasal', 'MEDICAMENTO', '430.48', '-', '1'), ('4359', 'Gabapentina Capsulas 300 mg', 'MEDICAMENTO', '43.66', '-', '1'), ('436', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('437', 'TEOFILINA c/20 comp. o tab. de 100mg', 'MEDICAMENTO', '20.41', '-', '1'), ('4371', 'ABACAVIR 600MG/LAMIVUDINA 300 MG TABS', 'MEDICAMENTO', '0.00', '-', '1'), ('4372', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('4376', 'POLIVITAMINAS y minerales c/30 tabletas', 'MEDICAMENTO', '12.86', '-', '1'), ('438', 'TERBUTALINA POLVO 0.5MG/DOSIS ENVASE CON INHALADOR PARA 200 DOSIS', 'MEDICAMENTO', '161.22', '-', '1'), ('439', 'SALBUTAMOL sol p/nebulizador 0.5g/100ml', 'MEDICAMENTO', '17.22', '-', '1'), ('4407', 'TETRACAINA sol oftal 5mg/ml got/10 ml', 'MEDICAMENTO', '30.39', '-', '1');
INSERT INTO `productos` VALUES ('4470', 'Metilfenidato Tableta de liberacion prolongada  18 mg 15      tabletas      de      liberacion prol', 'MEDICAMENTO', '234.89', '-', '1'), ('4471.01', 'Metilfenidato Tableta de liberacion prolongada  27 mg 30      tabletas      de      liberacion prol', 'MEDICAMENTO', '890.69', '-', '1'), ('4477', 'HALOPERIDOL Sol. Oral 2mg/ml envase', 'MEDICAMENTO', '88.60', '-', '1'), ('4481', 'Haloperidol  Solucion inyectable al 5%  50 mg/ml  1 Ampolleta con 1 ml', 'MEDICAMENTO', '192.12', '-', '1'), ('4483', 'FLUOXETINA caps o tabs', 'MEDICAMENTO', '10.24', '-', '1'), ('4484', 'SERTRALINA Caps. o Tabs. 50mg c/14 caps', 'MEDICAMENTO', '146.65', '-', '1'), ('4485', 'Duloxetina 60mg con 14 capsulas', 'MEDICAMENTO', '0.00', '-', '1'), ('4488', 'VENLAFAXINA TABS 150MG ENVASE C/10 CAP', 'MEDICAMENTO', '70.21', '-', '1'), ('4489', 'Olanzapina 10mg frasco ampula Sol. Iny', 'MEDICAMENTO', '145.30', '-', '1'), ('4490', 'ARIPIPRAZOL  15MG C/20 TABLETAS', 'MEDICAMENTO', '0.00', '-', '1'), ('4492', 'ARIPIPRAZOL  30MG C/20TABLETA', 'MEDICAMENTO', '0.00', '-', '1'), ('4504', 'SULFASALAZINA c/60 tab de 500 mg', 'MEDICAMENTO', '183.88', '-', '1'), ('4551', 'DEXTRAN SOLUCION INYECTABLE DEXTRAN (60 000) 6 G/100 ML CLORURO DE', 'MEDICAMENTO', '660.80', '-', '1'), ('4582', 'Oseltamivir 75.0 mg cГЎpsula 75 mg Envase con 10 cГЎpsulas.', 'MEDICAMENTO', '0.00', '-', '1'), ('464', 'CROMOGLICATO de sodio,  susp aerosol', 'MEDICAMENTO', '100.30', '-', '1'), ('472', 'PREDNISONA tabletas 5mg 20 tab', 'MEDICAMENTO', '3.82', '-', '1'), ('473', 'PREDNISONA c/20 tabletas 50 mg', 'MEDICAMENTO', '19.00', '-', '1'), ('474', 'HIDROCORTISONA sol iny 100mg/2ml c/50amp', 'MEDICAMENTO', '768.96', '-', '1'), ('476', 'METILPREDNISOLONA sol iny500mg/8ml 50amp', 'MEDICAMENTO', '7800.46', '-', '1'), ('477', 'BECLOMETAZONA dipropionato de, susp.10mg', 'MEDICAMENTO', '38.94', '-', '1'), ('502', 'DIGOXINA c/20 tabletas de 0.25mg', 'MEDICAMENTO', '5.03', '-', '1'), ('503', 'DIGOXINA elIxir 0.05mg/ml env c/60ml', 'MEDICAMENTO', '68.90', '-', '1'), ('504', 'DIGOXINA sol iny 0.5mg/2ml c/6 amp', 'MEDICAMENTO', '66.45', '-', '1'), ('5041680072', 'TUBO ENDOTRAQUEAL 3.0 CON GLOBO 12 FR PI', 'MATERIAL DE CURACION', '54.55', '-', '1'), ('5041680515', 'SONDA LEVIN 10', 'MATERIAL DE CURACION', '7.27', '-', '1'), ('5044560001', 'GUANTES EXTRA CHICOS DE LATEX', 'MATERIAL DE CURACION', '175.18', '-', '1'), ('505', 'Deslanosido', 'MEDICAMENTO', '0.00', '-', '1'), ('5075', 'TEOFILINA elIxir 533 mg/100ml env.c/450m', 'MEDICAMENTO', '70.80', '-', '1'), ('5099', 'ADENOCINA SOL INY 6MLC6/FCO', 'MEDICAMENTO', '1394.12', '-', '1'), ('5106', 'ATORVASTATINA 20MG env. c/ 10 tabletas.', 'MEDICAMENTO', '22.75', '-', '1'), ('5111', 'Valsartan 80mg 30 capsulas', 'MEDICAMENTO', '221.98', '-', '1'), ('5116', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('514', 'PARACETAMOL SUPOSITORIO DE 100MG C/6', 'MEDICAMENTO', '0.00', '-', '1'), ('514.01', 'Paracetamol Supositorio  100 mg  6 supositorios', 'MEDICAMENTO', '14.73', '-', '1'), ('5165', 'METFORMINA c/30 tabletas 850 mg', 'MEDICAMENTO', '4.51', '-', '1'), ('5166', 'ACARBOSA 50MG 30 TABLETAS', 'MEDICAMENTO', '24.60', '-', '1'), ('5176', 'SUCRALFATO c/40 tabletas 1grs', 'MEDICAMENTO', '21.70', '-', '1'), ('5180', 'Omeprazol', 'MEDICAMENTO', '0.00', '-', '1'), ('5186', 'OMEPRAZOL 20 MG ENV C/7 CAPS', 'MEDICAMENTO', '0.00', '-', '1'), ('5186.01', 'OMEPRAZOL 20mg C/ 14 CAPS', 'MEDICAMENTO', '3.54', '-', '1'), ('5187', 'OMEPRAZOL o pantoprazol sol. iny. 40MG.', 'MEDICAMENTO', '48.64', '-', '1'), ('522', 'Lidocaina Solucion inyectable al 5 %  100 mg/ 5 ml  Ampolleta con 5 ml', 'MEDICAMENTO', '94.49', '-', '1'), ('5229', 'AC. ASCORBICO SOL INY 1GR, C/6 AMP 10ML', 'MEDICAMENTO', '136.84', '-', '1'), ('523', 'POTASIO sales de tabs. solubles', 'MEDICAMENTO', '104.17', '-', '1'), ('5232', 'PIRIDOXINA TABLETA  DE 300 MGS ENVASE CON 10 TABLETAS', 'MEDICAMENTO', '0.00', '-', '1'), ('5233', 'Folinato calcio 15 mg 12 tableats', 'MEDICAMENTO', '240.04', '-', '1'), ('524', 'CLORURO de potasio s. i 1.49g/10ml 50amp', 'MEDICAMENTO', '61.17', '-', '1'), ('525', 'FENITOINA sodica c/50 tab de 100 mg', 'MEDICAMENTO', '4.54', '-', '1'), ('5252', 'FACTOR VIII SOLUC. 250UI AMP 10ML', 'MEDICAMENTO', '0.00', '-', '1'), ('5255', 'TRIMETOPRIMA y sulfametoxazol iny c/6amp', 'MEDICAMENTO', '54.28', '-', '1'), ('5256', 'CEFALOTINA sol. inyectable g', 'MEDICAMENTO', '16.52', '-', '1'), ('526', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('5260', 'Cloranfenicol Suspension  31.25 mg/ml  Envase con 65 ml', 'MEDICAMENTO', '47.75', '-', '1'), ('5265', 'IMIPENEM y cilastatina sol. iny. 500mg', 'MEDICAMENTO', '175.76', '-', '1'), ('5284', 'Cefepima amp  15ml/500mg', 'MEDICAMENTO', '48.12', '-', '1'), ('5286', 'IMIPENEM + CILASTATINA', 'MEDICAMENTO', '0.00', '-', '1'), ('5287', 'Imipenem y cilastatina solucion Inyectable 250mg/250mg', 'MEDICAMENTO', '500.25', '-', '1'), ('5291', 'MEROPENEM SOL INY 500MG', 'MEDICAMENTO', '284.99', '-', '1'), ('5292', 'MEROPENEM SOLUCION INYECTA 1G C/1 FRASCO', 'MEDICAMENTO', '421.27', '-', '1'), ('5295', 'Clorhidrato monohidratado cefepima amp', 'MEDICAMENTO', '54.28', '-', '1'), ('530', 'PROPRANOLOL c/30 tab 40mg', 'MEDICAMENTO', '5.12', '-', '1'), ('5302', 'NITROFURANTOINA susp 25mg/5ml fco', 'MEDICAMENTO', '133.34', '-', '1'), ('5309', 'TAMSULOSINA CAPSULAS  DE LIBERACION PROLONGADA', 'MEDICAMENTO', '0.00', '-', '1'), ('5309.02', 'Tamsulosina Capsula de liberacion prolongada 0.4 mg 30 capsulas', 'MEDICAMENTO', '57.58', '-', '1'), ('5331', 'Beractant  25mg/ml frasco ampula 8ml', 'MEDICAMENTO', '5537.14', '-', '1'), ('5351', 'Metilfenidato Comprimido  10 mg  30 comprimidos', 'MEDICAMENTO', '345.15', '-', '1'), ('5359', 'VALPROATO de magnesio L-P c/30tabs 600mg', 'MEDICAMENTO', '44.55', '-', '1'), ('5365', 'SIN DESCRIPCION', '', null, '-', '1'), ('5381', 'OLIVOMETALES ENDOVENOSOS SOLUCION', 'MEDICAMENTO', '0.00', '-', '1'), ('5383', 'POLIVITAMINAS y minerales jarab c/240ml', 'MEDICAMENTO', '55.85', '-', '1'), ('5384', 'MULTIVITAMINAS sol. iny. adulto 5ml', 'MEDICAMENTO', '112.12', '-', '1'), ('5385', 'MULTIVITAMINAS sol. iny. infantil  5ml', 'MEDICAMENTO', '98.98', '-', '1'), ('5386', 'CLORURO DE SODIO Sol. Iny. 17.7% 100 amp', 'MEDICAMENTO', '518.87', '-', '1'), ('539', 'PROPRANOLOL c/30 tab 10mg', 'MEDICAMENTO', '5.97', '-', '1'), ('5395', 'TIAMINA sol iny 500mg env 3 fco-amp', 'MEDICAMENTO', '34.93', '-', '1'), ('5428', 'ONDANSETRON sol iny 8mg/4ml c/3 amp', 'MEDICAMENTO', '0.00', '-', '1'), ('5451', 'CINARIZINA Tabs. 75 mg c/60', 'MEDICAMENTO', '28.89', '-', '1'), ('5476', 'Levomepromazina Solucion inyectable  25 mg/ ml  10 ampolletas con 1 ml', 'MEDICAMENTO', '230.32', '-', '1'), ('5478', 'Lorazepam Tableta  1 mg  40 tabletas', 'MEDICAMENTO', '71.66', '-', '1'), ('5481', 'PAROXETINA 20MG env c/10 tabletas', 'MEDICAMENTO', '8.26', '-', '1'), ('5485', 'OLANZAPINA 5MG C/14 TABLETAS', 'MEDICAMENTO', '1134.64', '-', '1'), ('5486', 'OLANZAPINA TABLETAS 10 MG C/14', 'MEDICAMENTO', '834.41', '-', '1'), ('5487', 'CITALOPRAM 20 MG C/14 TABLETAS', 'MEDICAMENTO', '105.42', '-', '1'), ('5489', 'QUETIAPINA 100 MG 60 TABLETAS', 'MEDICAMENTO', '0.00', '-', '1'), ('5501', 'DICLOFENACO sol iny 75mg/3ml c/2 amp', 'MEDICAMENTO', '5.83', '-', '1'), ('5502', 'LEVAMISOL TAB', 'MEDICAMENTO', '0.00', '-', '1'), ('5503', 'SULINDACO TABLETAS O GRAGEAS 200 MG', 'MEDICAMENTO', '0.00', '-', '1'), ('5506', 'CELECOXIB', 'MEDICAMENTO', '466.53', '-', '1'), ('5551', 'Dabigatran etexilato Capsulas 75 mg Envase con 30 capsulas', 'MEDICAMENTO', '791.82', '-', '1'), ('5552', 'DABIGATRAN ETEXILATO CAPSULAS 110MG', 'MEDICAMENTO', '671.03', '-', '1'), ('561', 'CLORTALIDONA c/20 tab 50 mg', 'MEDICAMENTO', '4.53', '-', '1'), ('5612', 'CALCIPOTRIOL, BETAMETASONA', 'MEDICAMENTO', '0.00', '-', '1'), ('5626', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('565', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('566', 'METILDOPA(l-alfametildopa) c/30tab 250mg', 'MEDICAMENTO', '11.21', '-', '1'), ('5660', 'Lacosamida 50 mgCApsula В  Envase con 14', 'MEDICAMENTO', '0.00', '-', '1'), ('5661', 'LACOSAMIDA 100MG C/28 TABLETAS', 'MEDICAMENTO', '0.00', '-', '1'), ('568', 'DIAZOXIDO sol. iny. 300mg/20ml', 'MEDICAMENTO', '292.12', '-', '1'), ('569', 'Nitroprusiato de sodio Solucion inyectable  50 mg  Frasco ampula', 'MEDICAMENTO', '389.08', '-', '1'), ('570', 'HIDRALAZINA 10m c/20 tabletas', 'MEDICAMENTO', '6.30', '-', '1');
INSERT INTO `productos` VALUES ('572', 'METOPROLOL c/20 tabletas 100 mg', 'MEDICAMENTO', '6.64', '-', '1'), ('573', 'PRAZOSINA 30 capsulas de 1mg', 'MEDICAMENTO', '17.56', '-', '1'), ('574', 'CAPTOPRIL c/30 tabletas 25 mg', 'MEDICAMENTO', '2.24', '-', '1'), ('591', 'TRINITRATO de glicerilo c/24 caps 0.8mg', 'MEDICAMENTO', '115.51', '-', '1'), ('592', 'ISOSORBIDA dinitrato de c/20 tab subling', 'MEDICAMENTO', '4.17', '-', '1'), ('593', 'ISOSORBIDA dinitrato de c/20 tab 10mg', 'MEDICAMENTO', '4.12', '-', '1'), ('596', 'VERAPAMILO grageas 80mg caja c/20tabs', 'MEDICAMENTO', '6.68', '-', '1'), ('597', 'NIFEDIPINO c/20 cAp gelatina blanda 10mg', 'MEDICAMENTO', '11.29', '-', '1'), ('598', 'VERAPAMILO sol. inyectable 5mg/2ml', 'MEDICAMENTO', '15.41', '-', '1'), ('599', 'NIFEDIPINO acciOn prol comprimidos 30 mg', 'MEDICAMENTO', '27.84', '-', '1'), ('600040109', 'ABATELENGUAS DE MAD; DES.LAR ENV C/500pz', 'MATERIAL DE CURACION', '80.00', '-', '1'), ('600160252', 'LUBRICANTE PZ DE MANO DE ALTA JER.2ML', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('600160253', 'ACEITE LUBRI PZ DE MANO DE ALTA JER 2ML', 'MATERIAL DE CURACION', '32.51', '-', '1'), ('6002330037', 'CONECTOR DE 2 VIAS EN Y', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('600340103', 'AGUA OXIG EN CONC DEL 2.5- ENV C/480 ML', 'MATERIAL DE CURACION', '10.91', '-', '1'), ('600400287', 'AGUJA ANEST EPIDURAL 7.5 A 8.6CM  16G PZ', 'MATERIAL DE CURACION', '31.64', '-', '1'), ('600400352', 'Aguja p/ raq. pun. lumb 7.5 a 8.8 C21 PZ', 'MATERIAL DE CURACION', '135.18', '-', '1'), ('600400378', 'Aguja p raq. o pun. lumb 7.5A 8.8 C23 PZ', 'MATERIAL DE CURACION', '135.18', '-', '1'), ('600400543', 'AGUJA P/RAQUIANESTECIA 25G O 27G PZ', 'MATERIAL DE CURACION', '135.18', '-', '1'), ('600403711', 'AGUJA hipod. long 32mm,cal 20g c/100pzs', 'MATERIAL DE CURACION', '52.13', '-', '1'), ('600403729', 'AGUJA HIPODГ‰RMICA CON PABELLГ“N LUER-LOCK HEMBRA DE PLГЃSTICO, DESECHABLES. LONGITUD 38 MM', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('600403745', 'AGUJA hipod. long 32mm,cal 21g c/100pzs', 'MATERIAL DE CURACION', '56.36', '-', '1'), ('600403760', 'AGUJA HIPODER LUER-LOCK 16mm 25G C/100PZ', 'MATERIAL DE CURACION', '49.09', '-', '1'), ('600403786', 'AGUJA NEG HIPOD LUER-LOCK 32mm 22G C/100', 'MATERIAL DE CURACION', '56.36', '-', '1'), ('600406313', 'AGUJA PARA BIOPCIA T TRUCUT 9.65  CAL14G', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('600407613', 'AGUJA P BIOPCIA TIPO TRUCUT CAL 14 PZ', 'MATERIAL DE CURACION', '363.64', '-', '1'), ('600580153', 'ALGODON. EN LAMINA. ENROLL ENV. C/300 GR', 'MATERIAL DE CURACION', '41.76', '-', '1'), ('600640064', 'AleaciOn para amalgama en tabs fase disp', 'MATERIAL DE CURACION', '1048.13', '-', '1'), ('600640106', 'ALEACION P/AMALGAMA DENTAL EN POLVO DISP', 'MATERIAL DE CURACION', '869.09', '-', '1'), ('600660062', 'JABON PARA USO PREQ; LIQ ENV C/3.850 LT', 'MATERIAL DE CURACION', '52.20', '-', '1'), ('600660401', 'Antiseptico Eugenol', 'MATERIAL DE CURACION', '1274.87', '-', '1'), ('600660500', 'FLORURO DE SODIO  acidulado 2% env.480ml', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('600660609', 'AGUJA HIPODERMICA CON PABELLON LUER LOCK HEMBRA  DE PLASTICO  DESECHABLES', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('600660619', 'BENSAL CONCENTRADO', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('600660658', 'ANTISEPTICO Y GERMICIDA  ENV C/ 3.5 LT', 'MATERIAL DE CURACION', '209.09', '-', '1'), ('600660666', 'ANTISEP Y GERMIC. IODO SOL ENV. C/3.5 LT', 'MATERIAL DE CURACION', '256.84', '-', '1'), ('600660757', 'ANTIS Y GERM.  CLO DE BENZA ENV C/500 ML', 'MATERIAL DE CURACION', '16.65', '-', '1'), ('600660765', 'ANTIS y germ DES. GLUTARALDEH verde  4Lt', 'MATERIAL DE CURACION', '70.73', '-', '1'), ('600660773', 'ALCOHOL DESNATURALIZADO. ENVASE CON 20 L', 'MATERIAL DE CURACION', '597.09', '-', '1'), ('600660872', 'DETER O LIMPIA SOBR EN POLVO 20 A 25 GR', 'MATERIAL DE CURACION', '345.45', '-', '1'), ('600660880', 'SOLUCION CONCEN ESTELIR EN FRIO 6FCOS', 'MATERIAL DE CURACION', '8181.82', '-', '1'), ('600660989', 'GLUTARALDEHIDO 2% VERDE DE 1 A 5 LTR', 'MATERIAL DE CURACION', '781.82', '-', '1'), ('600880025', 'APOSITO TRANS.10.0-10.16X14CM ENV/50PZAS', 'MATERIAL DE CURACION', '654.55', '-', '1'), ('600880058', 'APOSITO CELULOS-TELA NO TEJ 20X8cm C/200', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('600880108', 'APOSITO CELULO-TELA NO TEJ 20X13cm C/150', 'MATERIAL DE CURACION', '326.91', '-', '1'), ('601250228', 'BOLSA UROCULTIVO NINO 50ml 45X60MM PZA', 'MATERIAL DE CURACION', '2.62', '-', '1'), ('601250236', 'BOLSA ENEMA 1500ml  TUBO TR 5.0-6.0mm PZ', 'MATERIAL DE CURACION', '21.82', '-', '1'), ('601250244', 'BOLSA UROCULTIVO NINA 50ml 45X60MM PZA', 'MATERIAL DE CURACION', '2.62', '-', '1'), ('601250582', 'BOLSA ILEOSTOMIA-COLO ADULT PZ', 'MATERIAL DE CURACION', '44.35', '-', '1'), ('601251010', 'bolsa balon resp latex 22 mmp/ 1ltr pza', 'MATERIAL DE CURACION', '65.45', '-', '1'), ('601251036', 'bolsa balon resp latex 22mm 2ltr pza', 'MATERIAL DE CURACION', '65.45', '-', '1'), ('601251051', 'bolsa balon resp latex 22mm p/3ltrs pza', 'MATERIAL DE CURACION', '65.45', '-', '1'), ('601251069', 'bolsa balon resp latex 22mmp/ 3.5ltrs pz', 'MATERIAL DE CURACION', '321.62', '-', '1'), ('601251077', 'BOLSA BALON C/2PLIE P/ANESTE 22MM 5LT', 'MATERIAL DE CURACION', '321.62', '-', '1'), ('601251879', 'BOLSA RECOL ORINA RECTANG 2000ml PZA', 'MATERIAL DE CURACION', '23.64', '-', '1'), ('601253545', 'BOLSA DE ALIM PARTT ADULT 3 LTS', 'MATERIAL DE CURACION', '109.09', '-', '1'), ('601253776', 'PARA ILEOSTOMiA O COLOSTOMiA. TAMAГ‘O INFANTIL.AUTOADHERIBLE, DE PLaSTICO GRADO MeDICO, SUAVE, TRANS', 'MATERIAL DE CURACION', '44.35', '-', '1'), ('601300015', 'BOTA QUIRURGICA DE TELA DESECHABLE PAR', 'MATERIAL DE CURACION', '2.53', '-', '1'), ('601320054', 'BRAZALETE p/identificaci adulto c/100 pz', 'MATERIAL DE CURACION', '72.73', '-', '1'), ('601320203', 'BRAZALETE p/identifica infantil c/100 pz', 'MATERIAL DE CURACION', '72.73', '-', '1'), ('601570104', 'CAL SODADA CON INDICADOR ENV. CON 16Kg', 'MATERIAL DE CURACION', '2363.64', '-', '1'), ('601650831', 'CATETER PARA CATETERISMO CAL 5 FR', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('601660103', 'CATETER VENOCLISIS C/A17-24MM 24G C/50', 'MATERIAL DE CURACION', '361.82', '-', '1'), ('601660228', 'Tubo Endotraq sin globo. transp C 12Fr.', 'MATERIAL DE CURACION', '20.00', '-', '1'), ('601660236', 'Tubo Endotraq sin globo. Transp C 14Fr.', 'MATERIAL DE CURACION', '20.00', '-', '1'), ('601660244', 'Tubo Endotraq sin globo. Transp C 16Fr.', 'MATERIAL DE CURACION', '20.00', '-', '1'), ('601660251', 'Tubo Endotraq sin globo. Transp C 18Fr.', 'MATERIAL DE CURACION', '20.00', '-', '1'), ('601660269', 'TUBO ENDOTRAQUEAL SIN GLOBO CAL 20FR', 'MATERIAL DE CURACION', '23.45', '-', '1'), ('601661622', 'CANULA P/DRENAJE TORACICO 45CM 20FR', 'MATERIAL DE CURACION', '106.91', '-', '1'), ('601661630', 'CANULA P/DRENAJE TORACICO 45CM 28FR', 'MATERIAL DE CURACION', '106.91', '-', '1'), ('601661648', 'CANULA P/DRENAJE TORACICO 45CM 36FR', 'MATERIAL DE CURACION', '106.91', '-', '1'), ('601661655', 'Canula dren torax ang. marca radiop C40F', 'MATERIAL DE CURACION', '154.55', '-', '1'), ('601661903', 'CATET VENOSO CEN 4FR LON  2LUMENES D/22G', 'MATERIAL DE CURACION', '1174.16', '-', '1'), ('601662141', 'CATETER PARA DIALISIS', 'MATERIAL DE CURACION', '1600.00', '-', '1'), ('601662158', 'CATETER  DIALISIS PERITON TAMANO PEQUENO', 'MATERIAL DE CURACION', '1600.00', '-', '1'), ('601663339', 'SONDA ASPIRA 55CM 12FR', 'MATERIAL DE CURACION', '8.18', '-', '1'), ('601663347', 'SONDA PARA ASPIRACION FR14 ADULT', 'MATERIAL DE CURACION', '5.73', '-', '1'), ('601663354', 'SONDA P/ASPIRAR SECREC ADULTO CAL. 16', 'MATERIAL DE CURACION', '5.44', '-', '1'), ('601670458', 'CANULA OROFA GUEDEL/BERMAN N.0  50mm PZ', 'MATERIAL DE CURACION', '12.45', '-', '1'), ('601670466', 'CANULA OROFA GUEDEL/BERMAN N.2  70mm PZ', 'MATERIAL DE CURACION', '12.45', '-', '1'), ('601670482', 'CANULA OROFA GUEDEL/BERMAN N.4  90mm PZ', 'MATERIAL DE CURACION', '12.45', '-', '1'), ('601670680', 'CANULA OROFA GUEDEL/BERMAN N.6  110mm PZ', 'MATERIAL DE CURACION', '12.45', '-', '1'), ('601673304', 'Canula Orof plAst tipo Gued/Ber 00 40 mm', 'MATERIAL DE CURACION', '12.45', '-', '1'), ('601673312', 'CANULA OROFA GUEDEL/BERMAN N.1  60mm PZ', 'MATERIAL DE CURACION', '12.45', '-', '1'), ('601673320', 'CANULA OROFA GUEDEL/BERMAN N.3  80mm PZ', 'MATERIAL DE CURACION', '12.45', '-', '1'), ('601673346', 'CANULA OROFA GUEDEL/BERMAN N.5  100mm PZ', 'MATERIAL DE CURACION', '12.45', '-', '1'), ('601673387', 'CATETER PARA ENBOLECTOMIA 80CM CAL 3', 'MATERIAL DE CURACION', '1000.00', '-', '1'), ('601673403', 'CATETER P/EMBOLECTOMIA FOGARTY 80CM 4FR', 'MATERIAL DE CURACION', '1058.18', '-', '1'), ('601674419', 'CATETER P/EMBOLECTOMIA LONG 80CM 5FR', 'MATERIAL DE CURACION', '1058.18', '-', '1'), ('601674930', 'SONDA PUNTA REDONDA 40cm CL. 28FR PZ', 'MATERIAL DE CURACION', '6.87', '-', '1'), ('601674948', 'SONDA LATEX 40CM 30FR', 'MATERIAL DE CURACION', '6.87', '-', '1'), ('601675010', 'CATETER SUMINIS. OXIG. ADUL 2.0mm 180cm', 'MATERIAL DE CURACION', '6.11', '-', '1'), ('601676653', 'CATETER cateterismo 7FR X 20CM', 'MATERIAL DE CURACION', '636.36', '-', '1'), ('601676661', 'CATETER VEN C CL7FR X20cm c/3 LUMEN PZA', 'MATERIAL DE CURACION', '1136.73', '-', '1'), ('601676885', 'CATETER P/CATETERISMO CAL 5FR LONG 20CM.', 'MATERIAL DE CURACION', '705.65', '-', '1'), ('601677511', 'cateter p/dilataci c/globo 15mmx80mm 8fr', 'MATERIAL DE CURACION', '11910.44', '-', '1'), ('601678063', 'Cateter subcla,silic, esteril  30cm 7Fr.', 'MATERIAL DE CURACION', '636.36', '-', '1'), ('601678089', 'SONDA ALIMENT CAL 8FR 38.5cm INFANTIL PZ', 'MATERIAL DE CURACION', '2.36', '-', '1'), ('601678220', 'TUBO ENDOTRAQUEAL S/GLOBO CAL 8 FR PZ', 'MATERIAL DE CURACION', '118.18', '-', '1'), ('601678238', 'TUBO ENDOTRAQUEAL S/GLOBO CAL 10 FR PZ', 'MATERIAL DE CURACION', '26.18', '-', '1');
INSERT INTO `productos` VALUES ('601680077', 'SONDA SECRESIONES ADUL 55cm CAL18FR PZ', 'MATERIAL DE CURACION', '5.31', '-', '1'), ('601680085', 'SONDA SECRESIONES INFANT 55cm CAL10FR PZ', 'MATERIAL DE CURACION', '5.09', '-', '1'), ('601680945', 'CANULA PARA TRAQUEOSTOMIA CAL 7.0', 'MATERIAL DE CURACION', '1932.80', '-', '1'), ('601681356', 'TUBO ENDOTRAQUEAL C/GLOBO CAL 20 FR PZ', 'MATERIAL DE CURACION', '28.91', '-', '1'), ('601682214', 'TUBO ENDOTRAQUEAL C/GLOBO CAL 22 FR PZ', 'MATERIAL DE CURACION', '34.18', '-', '1'), ('601682446', 'TUBO ENDOTRAQUEAL C/GLOBO CAL 24 FR PZ', 'MATERIAL DE CURACION', '32.45', '-', '1'), ('601682495', 'TUBO ENDOTRAQUEAL C/GLOBO CAL 26 FR PZ', 'MATERIAL DE CURACION', '32.45', '-', '1'), ('601682511', 'TUBO ENDOTRAQUEAL C/GLOBO CAL 28 FR PZ', 'MATERIAL DE CURACION', '32.45', '-', '1'), ('601682529', 'TUBO ENDOTRAQUEAL C/GLOBO CAL 30 FR PZ', 'MATERIAL DE CURACION', '32.45', '-', '1'), ('601682537', 'TUBO ENDOTRAQUEAL C/GLOBO CAL 32 FR PZ', 'MATERIAL DE CURACION', '32.45', '-', '1'), ('601682552', 'TUBO ENDOTRAQUEAL C/GLOBO CAL 34 FR PZ', 'MATERIAL DE CURACION', '32.45', '-', '1'), ('601682560', 'TUBO ENDOTRAQUEAL C/GLOBO CAL 36 FR PZ', 'MATERIAL DE CURACION', '32.45', '-', '1'), ('601682578', 'TUBO ENDOTRAQUEAL C/GLOBO CAL 38 FR PZ', 'MATERIAL DE CURACION', '32.45', '-', '1'), ('601682594', 'TUBO ENDOTRAQUEAL C/GLOBO CAL 40 FR PZ', 'MATERIAL DE CURACION', '32.45', '-', '1'), ('601683238', 'SONDA P/ DRENAJE. EN FORMA DE LATEX 10FR', 'MATERIAL DE CURACION', '290.91', '-', '1'), ('601683311', 'SONDA DREN URIN C/GLOB 2 VIAS CAL 8FR PZ', 'MATERIAL DE CURACION', '54.98', '-', '1'), ('601684277', 'SONDA GASTROINTESTIN OPACA  CAL.12FR PZ', 'MATERIAL DE CURACION', '5.59', '-', '1'), ('601684376', 'PUNZOCAT RADIOPACO CAL. 18', 'MATERIAL DE CURACION', '500.00', '-', '1'), ('601684418', 'SONDA GASTROINTESTIN OPACA  CAL.18FR PZ', 'MATERIAL DE CURACION', '5.87', '-', '1'), ('601684475', 'CATETER VENOCLI 17G PUNZOCAT 1.5 C/50 PZ', 'MATERIAL DE CURACION', '361.82', '-', '1'), ('601685340', 'TUBO ENDOTRAQUEAL S/GLOBO CAL 14 FR PZ', 'MATERIAL DE CURACION', '26.18', '-', '1'), ('601685365', 'TUBO ENDOTRAQUEAL S/GLOBO CAL 16 FR PZ', 'MATERIAL DE CURACION', '26.18', '-', '1'), ('601685381', 'TUBO ENDOTRAQUEAL S/GLOBO CAL 18 FR PZ', 'MATERIAL DE CURACION', '24.73', '-', '1'), ('601685647', 'Cateter p/ venoclisis cal 19 g', 'MATERIAL DE CURACION', '363.64', '-', '1'), ('601686413', 'SONDA URETRAL P/IRRIG 3VIAS 18FR', 'MATERIAL DE CURACION', '25.82', '-', '1'), ('601686454', 'SONDA URETRAL PARA IRRI 3 VIAS 22FR', 'MATERIAL DE CURACION', '25.82', '-', '1'), ('601686611', 'SONDA PUNTA REDONDA CAL 12FR 40cm PZ', 'MATERIAL DE CURACION', '6.18', '-', '1'), ('601686637', 'SONDA punta redonda nelaton cal.14FR PZ', 'MATERIAL DE CURACION', '8.18', '-', '1'), ('601686645', 'CATETER VENOCLISIS 18G AGU 28-34MM 50PZ', 'MATERIAL DE CURACION', '363.64', '-', '1'), ('601686652', 'SONDA punta redonda nelaton cal.16FR PZ', 'MATERIAL DE CURACION', '6.18', '-', '1'), ('601686660', 'CATETER VENOCLISIS 20G AGU 28-34MM 50PZ', 'MATERIAL DE CURACION', '356.36', '-', '1'), ('601686678', 'SONDA punta redonda nelaton cal.18FR PZ', 'MATERIAL DE CURACION', '10.91', '-', '1'), ('601686686', 'CATETER VEN C/AGU 23-27mm CAL.22G C/50PZ', 'MATERIAL DE CURACION', '356.36', '-', '1'), ('601688138', 'CANULA PARA TRAQUEOSTOMIA', 'MATERIAL DE CURACION', '874.55', '-', '1'), ('601689243', 'SONDA ALIMENT CAL 5FR 38.5cm PREMATUR PZ', 'MATERIAL DE CURACION', '2.36', '-', '1'), ('601689417', 'SONDA drenaje forma T Kehr cal.12FR PZ', 'MATERIAL DE CURACION', '427.27', '-', '1'), ('601689425', 'SONDA drenaje forma T Kehr cal.14FR PZ', 'MATERIAL DE CURACION', '427.27', '-', '1'), ('601689433', 'SONDA drenaje forma T Kehr cal.16FR PZ', 'MATERIAL DE CURACION', '242.73', '-', '1'), ('601689441', 'SONDA drenaje forma T Kehr cal.18FR PZ', 'MATERIAL DE CURACION', '242.73', '-', '1'), ('601689482', 'SONDA DRENAJE URINARIO 2VIAS 10FR', 'MATERIAL DE CURACION', '54.98', '-', '1'), ('601689599', 'SONDA DRENAJE URINARIO 2 VIAS 8FR', 'MATERIAL DE CURACION', '163.64', '-', '1'), ('601689607', 'SONDA DRENAJE URINARIO 10FR', 'MATERIAL DE CURACION', '26.09', '-', '1'), ('601689615', 'SONDA PARA DRENAJE URINARIO 2 VIAS 12FR', 'MATERIAL DE CURACION', '19.05', '-', '1'), ('601689623', 'SONDA DREN URIN C/GLO 2 VIAS CAL 14FR PZ', 'MATERIAL DE CURACION', '19.05', '-', '1'), ('601689631', 'SONDA DREN URIN C/GLO 2 VIAS CAL 16FR PZ', 'MATERIAL DE CURACION', '19.05', '-', '1'), ('601689649', 'SONDA DREN URIN C/GLO 2 VIAS CAL 18FR PZ', 'MATERIAL DE CURACION', '19.05', '-', '1'), ('601689656', 'SONDA DREN URIN C/GLO 2 VIAS CAL 20FR PZ', 'MATERIAL DE CURACION', '19.05', '-', '1'), ('601689664', 'SONDA DRENAJE URINARIO 2 VIAS 22FR', 'MATERIAL DE CURACION', '19.05', '-', '1'), ('601689672', 'SONDA DREN URIN C/GLO 2 VIAS CAL 24FR PZ', 'MATERIAL DE CURACION', '19.05', '-', '1'), ('601689896', 'SONDA GASTROINTESTIN OPACA  CAL.14FR PZ', 'MATERIAL DE CURACION', '5.60', '-', '1'), ('601689904', 'SONDA GASTROINTESTIN OPACA  CAL.16FR PZ', 'MATERIAL DE CURACION', '5.87', '-', '1'), ('601820160', 'Cemento IonOmero de vidrio I. cem. def.', 'MATERIAL DE CURACION', '113.45', '-', '1'), ('601820178', 'Cemto IonO vidrio rest.  II. Color No.21', 'MATERIAL DE CURACION', '1711.24', '-', '1'), ('601821150', 'PROTECTOR pulpar sellar cav dent Estuche', 'MATERIAL DE CURACION', '176.47', '-', '1'), ('601821275', 'CEMENTO dental rest. intermedia. Juego', 'MATERIAL DE CURACION', '205.45', '-', '1'), ('601821366', 'CEMENTO DENTAL C/ENDURECEDOR. ESTUCHE', 'MATERIAL DE CURACION', '164.71', '-', '1'), ('601890056', 'Cepillo para lavado de instrumental', 'MATERIAL DE CURACION', '24.00', '-', '1'), ('601890304', 'CEPILLO QUIRURGICO RECTANGULAR. PZA', 'MATERIAL DE CURACION', '18.98', '-', '1'), ('601960057', 'Cera para hueso', 'MATERIAL DE CURACION', '745.45', '-', '1'), ('602030108', 'CINTA METRICA AHULADA LONG 1.5MTS PZA', 'MATERIAL DE CURACION', '5.45', '-', '1'), ('602030165', 'CINTA UMBILICAL 41cmX4mm C/100 SOBRES', 'MATERIAL DE CURACION', '233.64', '-', '1'), ('602030207', 'CINTA ESTERILIZA VAPOR 18mmX50m ROLLO', 'MATERIAL DE CURACION', '54.84', '-', '1'), ('602030306', 'CINTA MICROPOROSA 10mX1.25cm C/24 ROLLOS', 'MATERIAL DE CURACION', '127.27', '-', '1'), ('602030363', 'CINTA MICROPOROSA 10MX5.00 CM C/6ROLLOS', 'MATERIAL DE CURACION', '127.27', '-', '1'), ('602030397', 'CINTA MICROPOROSA 10mX2.50cm C/12 ROLLOS', 'MATERIAL DE CURACION', '127.27', '-', '1'), ('602030405', 'CINTA MICROPOROSA 10M X 7.50CM 4 ROLLOS', 'MATERIAL DE CURACION', '127.27', '-', '1'), ('602070013', 'EQUIPO CIRCUITO VENTILACION P/ANESTESIA', 'MATERIAL DE CURACION', '200.00', '-', '1'), ('602180085', 'CONTENEDOR DESECHA PUNSO-CORTA CHICO1.4L', 'MATERIAL DE CURACION', '67.76', '-', '1'), ('602180093', 'CONTENEDOR DESECH DE PUNZOCORTANTES', 'MATERIAL DE CURACION', '114.65', '-', '1'), ('602180119', 'CONTENEDOR DESECH AMARILLO 8.5 LTRS', 'MATERIAL DE CURACION', '92.40', '-', '1'), ('602300011', 'CONECTOR DE 1 VIA TIPO SIMS DELGADO', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('602310104', 'COMPRESA p/vientre 70cmX45cm c/6', 'MATERIAL DE CURACION', '109.67', '-', '1'), ('602310575', 'ROPA quirurgica estEril/desechable. Pqte', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('602310583', 'ROPA QUIRURJICA PQT', 'MATERIAL DE CURACION', '562.42', '-', '1'), ('602310591', 'ROPA QUIRURGICA PAQT P/CIRUGIA GRAL UNIV', 'MATERIAL DE CURACION', '456.65', '-', '1'), ('602310609', 'bulto para parto', 'MATERIAL DE CURACION', '287.27', '-', '1'), ('602310641', 'BATA QUIRURJICO PARA CIRUJANO', 'MATERIAL DE CURACION', '54.45', '-', '1'), ('602330011', 'CONECTOR 1 VIA TIPO:SIMS DELGADO PZ', 'MATERIAL DE CURACION', '2.55', '-', '1'), ('602330037', 'Conector dos vias en Y, de plAstico, des', 'MATERIAL DE CURACION', '3.82', '-', '1'), ('602330052', 'CONECTOR 1 VIA TIPO:SIMS GRUESO PZ', 'MATERIAL DE CURACION', '2.55', '-', '1'), ('602330623', 'LINEAS D TRANSFEREN PARA DIALISIS BAXTER', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('603080029', 'DISPOSITIVO intra. T de cobre 380A  pza', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('603080177', 'ANTISГ‰PTICOS Y GERMICIDAS CLORURO DE BENZALCONIO', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('603080193', 'CONDГ“N MASCULINO DE HULE LГЃTEX. CON 100 PIEZAS', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('603140054', 'EQUIPO DRENA CAVIDAD PLEURAL 2100-2500ml', 'MATERIAL DE CURACION', '578.18', '-', '1'), ('603300054', 'ELECTRODO DE MONITOREO CARDIACO PZ', 'MATERIAL DE CURACION', '2.95', '-', '1'), ('603450305', 'EQUIPO MEDICION PRESION VENOSA CENTRAL', 'MATERIAL DE CURACION', '683.64', '-', '1'), ('603450503', 'EQUIPO APLICACION VOL MEDICOS CAP 100ML', 'MATERIAL DE CURACION', '22.24', '-', '1'), ('603451360', 'Equipo para venoclisis (pediAtrico) 19 g', 'MATERIAL DE CURACION', '7.56', '-', '1'), ('603451378', 'EQUIPO VENOCLISIS PEDIATRICO CAL 21G', 'MATERIAL DE CURACION', '4.00', '-', '1'), ('603451386', 'Equipo para venoclisis (pediAtrico) 23 g', 'MATERIAL DE CURACION', '16.36', '-', '1'), ('603451447', 'EQUIPO PARA BOMBA DE INF', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('603451865', 'EQUIPO DRENAJE ASPIRACION 3mm POSQUIRURG', 'MATERIAL DE CURACION', '127.27', '-', '1'), ('603451873', 'EQUIPO DRENAJE ASPIRACION 6mm POSQUIRURG', 'MATERIAL DE CURACION', '136.36', '-', '1'), ('603452152', 'EQUIPO bloqueo epidural. Equipo', 'MATERIAL DE CURACION', '142.91', '-', '1'), ('603452301', 'CATETER MAHURKAR 11 A 12 FR LO185 A 20', 'MATERIAL DE CURACION', '2069.09', '-', '1'), ('603453424', 'EQUIPO ANESTESIA EPIDURAL 17G L.75-91mm', 'MATERIAL DE CURACION', '339.80', '-', '1'), ('603600032', 'ESPEJO VAGINAL DESECHABLE MED PZA', 'MATERIAL DE CURACION', '6.18', '-', '1'), ('604310409', 'FRESA REDONDA CARBURO NUM 3', 'MATERIAL DE CURACION', '23.71', '-', '1'), ('604310417', 'FRESA para util en la mano No.5 c/b 10pz', 'MATERIAL DE CURACION', '23.71', '-', '1');
INSERT INTO `productos` VALUES ('604310466', 'FRESA p/util en la pza d mano No701 pz', 'MATERIAL DE CURACION', '47.05', '-', '1'), ('604310649', 'FRESA DE CARBURO FORMA REDONDA NUM.1', 'MATERIAL DE CURACION', '23.71', '-', '1'), ('604360057', 'GASA seca cortada 7.5cm x 5cm  c/200pzs.', 'MATERIAL DE CURACION', '68.73', '-', '1'), ('604360107', 'GASA seca cortada 10cm x 10cm  c/200pzs.', 'MATERIAL DE CURACION', '130.91', '-', '1'), ('604360206', 'GASA SIMPLE SECA 91mX91cm ROLLO', 'MATERIAL DE CURACION', '400.00', '-', '1'), ('604360552', 'GASA SECA CORTADA, RADIOPACA ENV C/200', 'MATERIAL DE CURACION', '118.18', '-', '1'), ('604360669', 'SIN DESCRIPCION', '', null, '-', '1'), ('604390039', 'GORRO TELA NO TEJIDA DESECHABLE  PZ', 'MATERIAL DE CURACION', '52.27', '-', '1'), ('604390054', 'Gorro para paciente y enfermeras', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('604560037', 'SIN DESCRIPCION', '', null, '-', '1'), ('604560045', 'PASTILLEO CONDONES MASCULINOS  DE HULE LATEX.', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('604560078', 'DISPOSITIVO INTRAUTERINO.T DE COBRE', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('604560086', 'GUANTES USO LAB AMBI MEDIANO C/100', 'MATERIAL DE CURACION', '118.18', '-', '1'), ('604560300', 'GUANTE p/cirugIa esteril No.6 1/2 PAR', 'MATERIAL DE CURACION', '6.00', '-', '1'), ('604560318', 'GUANTE p/cirugIa Talla 7 PAR', 'MATERIAL DE CURACION', '6.00', '-', '1'), ('604560334', 'GUANTES P/CIRUGIA  TALLA 71/2 PAR', 'MATERIAL DE CURACION', '6.00', '-', '1'), ('604560359', 'GUANTE p/cirugIa esteril No.8 PAR', 'MATERIAL DE CURACION', '6.00', '-', '1'), ('604560367', 'GUANTE p/cirugIa esteril No.8 1/2 PAR', 'MATERIAL DE CURACION', '6.00', '-', '1'), ('604560383', 'GUANTE explo.tamaNo chico env.100pzas', 'MATERIAL DE CURACION', '149.09', '-', '1'), ('604560391', 'GUANTE PARA EXPLOR MED ; AMBIDI C/100PZ', 'MATERIAL DE CURACION', '149.09', '-', '1'), ('604560409', 'GUANTE PARA EXPL. GDE., AMBID C/100PZ', 'MATERIAL DE CURACION', '149.09', '-', '1'), ('604610147', 'GUATA de tela no tejida 5mtsx5cm c/24pzs', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('604610154', 'GUATA DE TELA NO TEJIDA 5mX10cm c/24 PZ', 'MATERIAL DE CURACION', '139.91', '-', '1'), ('604610162', 'GUATA de tela no tejida 5mx15cm c/24pzs', 'MATERIAL DE CURACION', '202.27', '-', '1'), ('604610188', 'Huata de tela no tejida long 5 ancho 20', 'MATERIAL DE CURACION', '263.45', '-', '1'), ('604700112', 'ESPONJA HEMOSTAT 0.5 a 100X70 a 125mm PZ', 'MATERIAL DE CURACION', '545.45', '-', '1'), ('604700138', 'GASA HEMOSTATICA ABSORBENTE SOLUBLE.', 'MATERIAL DE CURACION', '272.73', '-', '1'), ('604700146', 'SATIN HEMOSTATICO ABSORBIBLE.', 'MATERIAL DE CURACION', '5272.73', '-', '1'), ('604830117', 'HOJA PARA BISTURI  ACERO INOXIDABLE N.12', 'MATERIAL DE CURACION', '163.64', '-', '1'), ('604830125', 'HOJA P/BISTURI ESTERIL No.11 c/100 PZ', 'MATERIAL DE CURACION', '163.64', '-', '1'), ('604830141', 'HOJA P/BISTURI ESTERIL No.15 c/100 PZ', 'MATERIAL DE CURACION', '163.64', '-', '1'), ('604830158', 'HOJA P/BISTURI ESTERIL No.21 c/100 PZ', 'MATERIAL DE CURACION', '163.64', '-', '1'), ('604830174', 'HOJA PARA BISTURI  ACERO INOXIDABLE N.23', 'MATERIAL DE CURACION', '163.64', '-', '1'), ('605320084', 'EQUIPOS VENOCLISIS S/AGUJA MICROGOTERO', 'MATERIAL DE CURACION', '7.76', '-', '1'), ('605320167', 'EQUIPOS VENOCLISIS S/AGUJA NORMOGOTERO', 'MATERIAL DE CURACION', '6.73', '-', '1'), ('605320175', 'EQUIPO TRANSFUSION C/FILTRO S/AGUJA', 'MATERIAL DE CURACION', '14.55', '-', '1'), ('605370048', 'Jabon Neutro, pastilla 100 gr', 'MATERIAL DE CURACION', '9.09', '-', '1'), ('605430115', 'JALEA LUBRICANTE ASEPTICA. ENVA C/ 135GM', 'MATERIAL DE CURACION', '13.02', '-', '1'), ('605500222', 'JERINGAS S/AGUJA CAP 3ML ENV. 100PZS', 'MATERIAL DE CURACION', '113.18', '-', '1'), ('605500354', 'GUANTES PARA EXPLORACIГ“N  T. GRANDE', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('605500438', 'JERINGAS S/AGUJA cap 5ml env.100pzs', 'MATERIAL DE CURACION', '128.42', '-', '1'), ('605500446', 'Jeringa 10ml. sin aguja cap.c/100', 'MATERIAL DE CURACION', '147.27', '-', '1'), ('605500453', 'JERINGA 20ml SIN AGUJA c/50 PZ', 'MATERIAL DE CURACION', '145.42', '-', '1'), ('605500909', 'JERINGAS VID BULBO HULE REUT 60ML PZA', 'MATERIAL DE CURACION', '86.15', '-', '1'), ('605501014', 'JERINGA D VIDRIO S/AGUJA', 'MATERIAL DE CURACION', '727.27', '-', '1'), ('605501279.1', 'GUANTES DE LATEX P/EXAMEN CHICO C/100PZS', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('605501394', 'Jeringa vidrio s/aguja pibote metal 10ml', 'MATERIAL DE CURACION', '194.73', '-', '1'), ('605512078', 'JERINGAS CARPULE IPODERMICA  CARTU ANEST', 'MATERIAL DE CURACION', '906.95', '-', '1'), ('605980036', 'LLAVE 3 VIAS C/ TUBO 80cm PZ', 'MATERIAL DE CURACION', '11.36', '-', '1'), ('605980226', 'LLAVE DE CUATRO VIAS SIN EXTENSION', 'MATERIAL DE CURACION', '10.00', '-', '1'), ('606210037', 'MICRONEBULIZADORES C/MASCARILLA ADULTO', 'MATERIAL DE CURACION', '42.27', '-', '1'), ('606210078', 'MASCARILLA PARA ANESTECIA NO. 0 CON CONE', 'MATERIAL DE CURACION', '246.75', '-', '1'), ('606210094', 'MASCARILLA PARA ANESTECIA NO. 2 CON CONE', 'MATERIAL DE CURACION', '77.89', '-', '1'), ('606210169', 'MASCARILLA PARA ANESTESIA NO 4', 'MATERIAL DE CURACION', '77.89', '-', '1'), ('606210185', 'MASCARILLA PARA ANESTECIA NO. 1 CON CONE', 'MATERIAL DE CURACION', '61.65', '-', '1'), ('606210193', 'MASCARILLA PARA ANESTESIA NO 3', 'MATERIAL DE CURACION', '61.65', '-', '1'), ('606210201', 'MASCARILLA PARA ANESTESIA NO. 5', 'MATERIAL DE CURACION', '61.65', '-', '1'), ('606210425', 'MASCARILLA PARA NEBULIZAR PEDIATRIC', 'MATERIAL DE CURACION', '42.98', '-', '1'), ('606210482', 'MASCARILLA ADUL OXI-CONE 180cm Y ADAP PZ', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('606210524', 'CUBREBOCAS PARA USO  HOSP.C/150PZ', 'MATERIAL DE CURACION', '61.82', '-', '1'), ('606210925', 'MASCARA PEDIA AERO Y TUB OXI 7\"/(213CM', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('606220077', 'SOLDADURA D PLATA USO DENTAL 0.40MM 10GR', 'MATERIAL DE CURACION', '417.11', '-', '1'), ('606220143', 'FORMOCRESOL momificacion env.30ml', 'MATERIAL DE CURACION', '85.56', '-', '1'), ('606300028', 'MERCURIO tridestilado  env. 250gr', 'MATERIAL DE CURACION', '1267.27', '-', '1'), ('606810034', 'PANAL DESECHABLE CHICO PARA NINO PZA', 'MATERIAL DE CURACION', '2.55', '-', '1'), ('606810067', 'PANAL DESECHABLE ADULTO PZ', 'MATERIAL DE CURACION', '6.31', '-', '1'), ('607010378', 'PERILLAS aspiraciOn secreciones no.4  pz', 'MATERIAL DE CURACION', '26.71', '-', '1'), ('607490703', 'PASTA p/profilaxis dental env.200gr.', 'MATERIAL DE CURACION', '82.47', '-', '1'), ('6074920703', 'PASTA PARA PROFILAXIS DENTAL 200GR BLAND', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('607530011', 'PUNTAS de gutapercha No.45-80 env.caja', 'MATERIAL DE CURACION', '80.38', '-', '1'), ('607530102', 'PUNTAS de guatapercha No.10-40 env.240pz', 'MATERIAL DE CURACION', '80.38', '-', '1'), ('607710068', 'Rastrillo cab fija, rectan, doble h.  pz', 'MATERIAL DE CURACION', '4.55', '-', '1'), ('608110060', 'HILO DENTAL, SEDA DENTAL C/50MTS', 'MATERIAL DE CURACION', '43.20', '-', '1'), ('608307070', 'SONDA DREN TORACICO OPAC 45-51cm 36Fr PZ', 'MATERIAL DE CURACION', '140.00', '-', '1'), ('608307195', 'SONDA DREN TORACICO OPAC 45-51cm 28Fr PZ', 'MATERIAL DE CURACION', '109.09', '-', '1'), ('608410148', 'SUTURA SINT NO ABSOR CON AGU 45CM CAL6-0', 'MATERIAL DE CURACION', '327.27', '-', '1'), ('608410221', 'SUTURA NO AB 2-0 AGU 3/8 CIR REV COR12PZ', 'MATERIAL DE CURACION', '227.27', '-', '1'), ('608410239', 'SUTURA POLIPROPILENO CAL.7-0 C/AGUJA', 'MATERIAL DE CURACION', '1363.64', '-', '1'), ('608410262', 'polipropileno azul aguja dob. armada 5-0', 'MATERIAL DE CURACION', '910.55', '-', '1'), ('608410288', 'polipropileno azul aguja dob. armada 4-0', 'MATERIAL DE CURACION', '618.18', '-', '1'), ('608410296', 'polipropileno azulaguja doble armada 3-0', 'MATERIAL DE CURACION', '618.18', '-', '1'), ('608410320', 'SUTURA SINT NO ABSOR C/AGUJ 13 CAL 8-0', 'MATERIAL DE CURACION', '3840.00', '-', '1'), ('608410346', 'SUTURA SINT NO ABSOR CAL. 10-0', 'MATERIAL DE CURACION', '2636.36', '-', '1'), ('608410445', 'SUTURA NO ABS 5-0 AGUJA CORTANTE 12 PZ', 'MATERIAL DE CURACION', '245.45', '-', '1'), ('608410460', 'SUTURA c/aguja 45cm cal.4-0  c/12pz', 'MATERIAL DE CURACION', '368.73', '-', '1'), ('608410478', 'SUTURA c/aguja 45cm cal.3-0  c/12pz', 'MATERIAL DE CURACION', '288.00', '-', '1'), ('608410486', 'SUTURA c/aguja 45cm cal.2-0  c/12pz', 'MATERIAL DE CURACION', '288.00', '-', '1'), ('608410551', 'SUTURA catgut cromico cal. 2-0 c/12pz.', 'MATERIAL DE CURACION', '263.64', '-', '1'), ('608410569', 'SUTURA CRO 1 AGUJA 1/2 CIRC AHUSADA 12PZ', 'MATERIAL DE CURACION', '281.82', '-', '1'), ('608410601', 'SUTURA SED NG TREN 5-0 AGU 1/2 CIRC 12PZ', 'MATERIAL DE CURACION', '263.64', '-', '1'), ('608410619', 'SUTURA SED NG TREN 3-0 AGU 1/2 CIRC 12PZ', 'MATERIAL DE CURACION', '218.18', '-', '1'), ('608410627', 'SUTURA SED NG TREN 2-0 AGU 1/2 CIRC 12PZ', 'MATERIAL DE CURACION', '218.18', '-', '1'), ('608410635', 'SUTURA SINT N/ABS 3-0 AG 1/2 CIRC 12PZ', 'MATERIAL DE CURACION', '318.18', '-', '1'), ('608410643', 'SUTURA SEDA 2-0 75CM 37MM 1/2 CIR', 'MATERIAL DE CURACION', '294.55', '-', '1'), ('608410718', 'SUTURA Seda negra trenzada, 75C0 4-0', 'MATERIAL DE CURACION', '250.91', '-', '1'), ('608410734', 'SUTURA SEDA NEGRA C 3-0  S/ AGU C/12PZ', 'MATERIAL DE CURACION', '254.55', '-', '1'), ('608410742', 'SUTURA SEDA NEG TREN 2-0 S/AGUJA 12PZ', 'MATERIAL DE CURACION', '250.91', '-', '1'), ('608410767', 'SUTURA SED NEGRA TRENZ SIN AGU 75CM CAL0', 'MATERIAL DE CURACION', '250.91', '-', '1'), ('608410775', 'SUTURA SEDA NEGRA SIN AGU 75CM CAL 1', 'MATERIAL DE CURACION', '250.91', '-', '1'), ('608410825', 'SUTURA SINT 5-0 AGUJA 1/2 CIRC AHUS 12PZ', 'MATERIAL DE CURACION', '0.00', '-', '1');
INSERT INTO `productos` VALUES ('608410858', 'SUTURA SINT 3-0 AGUJA 1/2 CIRC AHUS 12PZ', 'MATERIAL DE CURACION', '556.36', '-', '1'), ('608410882', 'SUTURA SINT 1 AGUJA 1/2 CIRC AHUS 12PZ', 'MATERIAL DE CURACION', '606.55', '-', '1'), ('608410890', 'SUTURA C/AGUJA 70cm CAL.1-0 C/12PZA', 'MATERIAL DE CURACION', '363.64', '-', '1'), ('608410916', 'Sutura absorbible,2-0 aguja de 3/8', 'MATERIAL DE CURACION', '556.36', '-', '1'), ('608411211', 'Sutura no absorbibles poliEst tren Cal 5', 'MATERIAL DE CURACION', '2818.18', '-', '1'), ('608411336', 'SUTURA SINTETICA NO ABSC', 'MATERIAL DE CURACION', '2509.09', '-', '1'), ('608411948', 'Sutura Seda negra trenz c/aguja Cal 1-0', 'MATERIAL DE CURACION', '2363.64', '-', '1'), ('608411955', 'SUTURA SEDA NEGR TRENZ C/AGU 75CM CAL1', 'MATERIAL DE CURACION', '236.36', '-', '1'), ('608412045', 'SUTURA SINTeTICAS ABSORBIBLES. MONOFILAMENTO DE POLIDIOXANONA CON AGUJA. LONGITUD DE LA HEBRA: 70 C', 'MATERIAL DE CURACION', '690.91', '-', '1'), ('608412268', 'SUTURA 6-0 AGUJA 3/8 CIRC REV CORTA 12PZ', 'MATERIAL DE CURACION', '399.27', '-', '1'), ('608412565', 'SUTURA CATGUT CROMI C/AGUJA 68CMCAL. 5-0', 'MATERIAL DE CURACION', '327.27', '-', '1'), ('608412623', 'SUTURA C 1-0 AGUJA 1/2 CIRC AHUSADA 12PZ', 'MATERIAL DE CURACION', '272.73', '-', '1'), ('608414371', 'SUTURAS C-C C/AGUJA68 A 75CM2-0 1/2 C/12', 'MATERIAL DE CURACION', '281.82', '-', '1'), ('608414447', 'Sutura Cat crOm c/aguja Cal. 1-0 ag No.1', 'MATERIAL DE CURACION', '281.82', '-', '1'), ('608414462', 'SUTURA C 3-0 AGUJA 1/2 CIRC AHUSADA 12PZ', 'MATERIAL DE CURACION', '281.82', '-', '1'), ('608414470', 'Sutura Catgut crOmico con aguja Cal. 4-0', 'MATERIAL DE CURACION', '281.82', '-', '1'), ('608420097', 'SUTURA SINTETICA DE POLIGLICONA CAL. 4-0', 'MATERIAL DE CURACION', '690.91', '-', '1'), ('608420105', 'SUTURA SINT ABSORBI POLIGLICO 3-0', 'MATERIAL DE CURACION', '683.64', '-', '1'), ('608420113', 'SUTURA SINTETICA ABSORBIBLE POLIGLI 2-0', 'MATERIAL DE CURACION', '690.91', '-', '1'), ('608420121', 'SUTURA SINTeTICAS ABSORBIBLES DE POLIGLICONATO CON AGUJA LONGITUD DE LA HEBRA:67-75 CM, CALIBRE DE', 'MATERIAL DE CURACION', '672.73', '-', '1'), ('608420147', 'SUTURA SINTeTICAS ABSORBIBLES DE POLIGLICONATO CON AGUJA LONGITUD DE LA HEBRA:67-75 CM, CALIBRE DE', 'MATERIAL DE CURACION', '709.09', '-', '1'), ('608420170', 'SUTURA SINTeTICAS ABSORBIBLES DE POLIGLICONATO CON AGUJA LONGITUD DE LA HEBRA: 67-75 CM,CALIBRE DE', 'MATERIAL DE CURACION', '683.64', '-', '1'), ('608420220', 'SUTURA h45cm cal 5-0 aguja 08-13mm 12pzs', 'MATERIAL DE CURACION', '1909.09', '-', '1'), ('608420253', 'SUTURA DE MONO SINTETICO ABSOR 5-0', 'MATERIAL DE CURACION', '1454.55', '-', '1'), ('608420261', 'SUTURA ABSORBIBLE CAL 4-0 C/A 3/8CIRCULO', 'MATERIAL DE CURACION', '1454.55', '-', '1'), ('608420527', 'SUTURA DE POLIPROPILENO', 'MATERIAL DE CURACION', '527.27', '-', '1'), ('608590519', 'TAPON P/CATETER HICKMAN DES-ESTERIL PZA', 'MATERIAL DE CURACION', '7.85', '-', '1'), ('608690152', 'TELA ADHESIVA 10mX2.5cm c/12 PZ', 'MATERIAL DE CURACION', '200.00', '-', '1'), ('608690202', 'TELA ADHESIVA.DE ACETATO;CON ADH.C/6PZ', 'MATERIAL DE CURACION', '200.00', '-', '1'), ('608690251', 'TELA ADHESIVA 10mX7.5cm c/4 PZ', 'MATERIAL DE CURACION', '200.00', '-', '1'), ('608790143', 'TERMOMETRO clinico transparnt rectal pza', 'MATERIAL DE CURACION', '11.60', '-', '1'), ('608790150', 'TERMOMETRO clinico transparnt oral x pza', 'MATERIAL DE CURACION', '11.60', '-', '1'), ('608940052', 'TOALLA PARA GINECO-OBSTETRIC.REC C/100PZ', 'MATERIAL DE CURACION', '182.18', '-', '1'), ('609040100', 'ALGODON TORUNDA. ENVASE C/500 GR.', 'MATERIAL DE CURACION', '65.45', '-', '1'), ('609080015', 'TUBO PARA CANALIZACION LAT', 'MATERIAL DE CURACION', '18.55', '-', '1'), ('609080114', 'TUBOS lAtex radiopaco 45cm x 12.70mm pz', 'MATERIAL DE CURACION', '20.27', '-', '1'), ('609080122', 'Tubo Pen rose de 3/4 pulgada. Long 45 cm', 'MATERIAL DE CURACION', '20.27', '-', '1'), ('609080130', 'Tubo Pen rose de 1 pulgada. Long 45 cm', 'MATERIAL DE CURACION', '27.27', '-', '1'), ('609080890', 'TUBO PARA TORNIQUETE.DE LATEX, 1/MTS', 'MATERIAL DE CURACION', '16.36', '-', '1'), ('609080924', 'TUBO ASPIRADOR AMBAR 6.3mmX3.77mm c/10m', 'MATERIAL DE CURACION', '763.64', '-', '1'), ('609100011', 'EYECTOR de saliva desechable env.100pzs', 'MATERIAL DE CURACION', '58.18', '-', '1'), ('609320054', 'VALVULA P/ DERIVACION VENTRIC 16MM ADULT', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('609530100', 'Venda ElAs adhes. Long 2.7 mancho 7.5 cm', 'MATERIAL DE CURACION', '118.18', '-', '1'), ('609530282', 'VENDA ELAST 2.70mX8cm PZA SMARCH 10', 'MATERIAL DE CURACION', '264.36', '-', '1'), ('609530456', 'VENDA ENYESADA 2.75mX5cm c/12 PZ', 'MATERIAL DE CURACION', '163.64', '-', '1'), ('609530555', 'VENDA ENYES GASA/ALG 2.75M 10CM C/12PZ', 'MATERIAL DE CURACION', '194.27', '-', '1'), ('609530571', 'VENDA ENYES GASA/ALG 2.75M 15CM C/12PZ', 'MATERIAL DE CURACION', '280.00', '-', '1'), ('609530597', 'Venda Enyesada 20 cm.', 'MATERIAL DE CURACION', '300.73', '-', '1'), ('609530746', 'VENDA DE MALLA ELASTICA TUBULA 100M #1', 'MATERIAL DE CURACION', '167.64', '-', '1'), ('609530753', 'VENDA ELASTICA TUBULAR No.2  ENV c/100m', 'MATERIAL DE CURACION', '202.18', '-', '1'), ('609530761', 'VENDA DE MALLA TUBULAR 100M #3', 'MATERIAL DE CURACION', '231.82', '-', '1'), ('609530779', 'VENDA DE MALLA ELASTICA CAL. 4', 'MATERIAL DE CURACION', '230.27', '-', '1'), ('609532825', 'VENDA ELASTICA 5mX30cm PZ', 'MATERIAL DE CURACION', '197.82', '-', '1'), ('609532858', 'VENDA ELASTICA 5mX5cm c/12 PZ', 'MATERIAL DE CURACION', '41.27', '-', '1'), ('609532866', 'VENDA elastica long 5m, A.10cm c/12pz', 'MATERIAL DE CURACION', '74.55', '-', '1'), ('609532874', 'VENDA elastica long 5m, A.15cm c/12pz', 'MATERIAL DE CURACION', '118.18', '-', '1'), ('611', 'EPINEFRINA sol iny 1.0ml  c/50 amp', 'MEDICAMENTO', '191.37', '-', '1'), ('614', 'DOPAMINA sol iny 200mg/5ml c/5 amp', 'MEDICAMENTO', '29.90', '-', '1'), ('615', 'DOBUTAMINA sol iny 250 mg c/5 amp', 'MEDICAMENTO', '39.87', '-', '1'), ('621', 'HEPARINA sol iny 10000UI/10ml c/50 amp', 'MEDICAMENTO', '1063.19', '-', '1'), ('622', 'HEPARINA sol iny 25000UI /5ml (5000UI/M)', 'MEDICAMENTO', '1853.52', '-', '1'), ('623', 'WARFARINA c/25 tab 5 mg', 'MEDICAMENTO', '15.34', '-', '1'), ('624', 'ACENOCUMAROL env. c/20 tab. 4mg', 'MEDICAMENTO', '0.00', '-', '1'), ('624.01', 'ACENOCUMAROL TABLETA 4 MG', 'MEDICAMENTO', '44.66', '-', '1'), ('626', 'FITOMENADIONA EMULSION INY ENV 3 O 5 AMP', 'MEDICAMENTO', '93.33', '-', '1'), ('641', 'DEXTRAN sol iny al 10% 500 ml', 'MEDICAMENTO', '243.75', '-', '1'), ('655', 'BEZAFIBRATO c/30 tabletas 200 mg', 'MEDICAMENTO', '7.19', '-', '1'), ('657', 'PRAVASTATINA c/30 tabletas 10 mg', 'MEDICAMENTO', '13.28', '-', '1'), ('704260025', 'LIQUIDO FIJADOR AUTOMA P/38 LTS KODAK', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('707070041', 'PELICULA RADIOGRA  VERDE 8X10 CM C/100', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('707070090', 'PELICULA RADIOGRA VERDE 10X12 CM C/100', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('707070132', 'PELICULA RADIOGRA VERDE 14X14 CM C/100', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('707070140', 'PELICULA RADIOGRA VERDE 14X17 CM C/100', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('707070629', 'PELICULA RADIOGRA VERDE 11X14 CM C/100', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('708170543', 'LIQUIDO PARA REVELADOR AUTOMA P/38LTS', 'MATERIAL DE CURACION', '16.45', '-', '1'), ('804', 'OXIDO de zinc (lassar) env c/30 g', 'MEDICAMENTO', '3.54', '-', '1'), ('805740164', 'LANCETA METALICA PARA PUNCION', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('808410296', 'SUTURA SINTETICA NO ABSORBENTE', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('808890099', 'TIRAS P/ BILILABSTIX', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('811', 'FLUOCINOLONA CREMA CADA G CONTIENE: ACETONIDO DE FLUOCINOLONA 0.1 MG .ENVASE CON 20 G.', 'MEDICAMENTO', '0.00', '-', '1'), ('813', 'HIDROCORTISONA crema env c/15g', 'MEDICAMENTO', '20.05', '-', '1'), ('822', 'BENZOILO loc dErmica 5g/100ml env/30ml', 'MEDICAMENTO', '0.00', '-', '1'), ('822.01', 'BENZOILO loc dErmica 5g/100ml env/50ml', 'MEDICAMENTO', '0.00', '-', '1'), ('822.02', 'BENZOILO loc dErmica 5g/100ml env/60ml', 'MEDICAMENTO', '17.31', '-', '1'), ('831', 'ALANTOINA Y ALQUITRAN DE HULLA SUSPENSION AEROSOL 20 MG/ML Y 9 4 MG/ML', 'MEDICAMENTO', '29.03', '-', '1'), ('861', 'BENCILO emul dermica 300mg/ml fco/120ml', 'MEDICAMENTO', '19.97', '-', '1'), ('862', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('871', 'ALIBOUR polvo c/12 sobres de 2.2g', 'MEDICAMENTO', '19.20', '-', '1'), ('872', 'CLIOQUINOL crema 30mg/g env c/20g', 'MEDICAMENTO', '3.58', '-', '1'), ('874', 'SIN DESCRIPCION', '', null, '-', '1'), ('891', 'MICONAZOL crema 20mg/1g env c/20g', 'MEDICAMENTO', '3.25', '-', '1'), ('901', 'PODOFILINO,sol. dErmica 250mg/ env c/5ml', 'MEDICAMENTO', '73.75', '-', '1'), ('904', 'ACIDO retinoico crema 20mg', 'MEDICAMENTO', '5.45', '-', '1'), ('906', 'Dapsona tabletas 100 mg 1000 tabletas', 'MEDICAMENTO', '2938.20', '-', '1'), ('911', 'Lindano', 'MEDICAMENTO', '0.00', '-', '1'), ('9923', 'PARACETAMOL SOLUCION INYECTABLE DE 1 GR/100 ML', 'MEDICAMENTO', '0.00', '-', '1'), ('9963', 'SIN DESCRIPCION', '', null, '-', '1'), ('C00165', 'JERINGAS DE PLГЃSTICO. CON PIVOTE TIPO LUER LOCK', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('C00178', 'PUNZOCAT NO  N. 23 CATETER P/ VENO', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('C00210', 'CONDON FEMENINO PZS', 'MATERIAL DE CURACION', '0.00', '-', '1');
INSERT INTO `productos` VALUES ('C00243-10', 'Ceftriaxona SoluciГіn inyectable 0.5g/5ml', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('C00253', 'Paracetamol solucion 300 mg', 'MEDICAMENTO', '0.00', '-', '1'), ('C00477', 'SABANA DESECH TELA', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('C00840', 'LIGA DE HULE NAT 2.70X10CM (TENSIFLEX)', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('C00884', 'CIRCUITO PARA VENTILADOR', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('C00885', 'CIRCUITO P/ VENTILADOR  ADUL', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('GNKL-001', 'DISPENSARIO MEDICO', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('GNKL-002', 'TINA DE PLASTICO GRANDE', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('GNKL-003', 'TINA DE PLASTICO CHICA', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM000036', 'VICRYL 1 70CM 36.4 MM 1/2', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM000037', 'VICRYL 2-0 70CM 26MM', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM000038', 'SUTURA ACI. POLIGLICOLICO AG  35-37 C/12', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM000128', 'VICRYL 4-0 70 CM 26 MM', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM000144', 'ESTERILIZANTE EN FRIO LIQUIDO', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM000163', 'TIRA REACTIVA P/GLUCOM CON 50 PZAS', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM000182', 'BOLSA MIXTA ESTERELIZAR 9X23CM', 'MATERIAL DE CURACION', '145.89', '-', '1'), ('IM000183', 'TIRAS.REAC.P/GLUCOM. ACCU CHEK PERF.C/50', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('im000193', 'SABANA DESECHABLE 1.70X1.20', 'MATERIAL DE CURACION', '15.09', '-', '1'), ('IM000217', 'LAPIZ PARA ELECTRCAUTERIZAR', 'MATERIAL DE CURACION', '309.09', '-', '1'), ('IM000237', 'LIMAS K # 40', 'MATERIAL DE CURACION', '243.85', '-', '1'), ('IM000270', 'AGUJA EXTRA CORTA CAJA', 'MATERIAL DE CURACION', '126.20', '-', '1'), ('IM000276', 'ACIDO GRABADOR EN GEL', 'MATERIAL DE CURACION', '37.96', '-', '1'), ('IM000281', 'SONDA ENDOTRAQUEAL S/G', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM000289', 'HIDROXIDO D CALCIO', 'MATERIAL DE CURACION', '60.53', '-', '1'), ('IM000307', 'SISTEMA BAIN DE VENTI  PEDI RESV. 1 Lt', 'MATERIAL DE CURACION', '274.53', '-', '1'), ('IM000308', 'SIST BAIN  COAX  P ANEST C CIRCT D REINL', 'MATERIAL DE CURACION', '274.53', '-', '1'), ('IM000314', 'PUNTAS DE GUTAPERCH', 'MATERIAL DE CURACION', '78.33', '-', '1'), ('IM000316', 'PUNTAS  PAPEL ABSOBENTE ENDODON 1A.SER', 'MATERIAL DE CURACION', '48.65', '-', '1'), ('IM000324', 'FRESA DE CARBURO ALTA VELOCIDAD NUM. 4', 'MATERIAL DE CURACION', '23.71', '-', '1'), ('IM000332', 'FRESA GATES NUM. 2', 'MATERIAL DE CURACION', '428.15', '-', '1'), ('IM000333', 'FRESA GATES NUM. 3', 'MATERIAL DE CURACION', '428.15', '-', '1'), ('IM000358', 'DIQUE DE GOMA 5.5 X 5.5', 'MATERIAL DE CURACION', '230.36', '-', '1'), ('IM000375', 'LIMA P/ENDODONCIA DE 25M#8', 'MATERIAL DE CURACION', '243.85', '-', '1'), ('IM000376', 'LIMAP/ ENDODONCIA 25 MM #10', 'MATERIAL DE CURACION', '243.85', '-', '1'), ('IM000386', 'LIMAS K # 6 CAJAS', 'MATERIAL DE CURACION', '243.85', '-', '1'), ('IM000387', 'DIQUE DE GOMA 6X6 (152MM X 152MM)', 'MATERIAL DE CURACION', '230.36', '-', '1'), ('IM000503', 'TOPES PARA LIMA', 'MATERIAL DE CURACION', '3413.96', '-', '1'), ('IM000542', 'CATETER TORACICO N 20', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM000551', 'CATETER P/ DRENAJ TORACI 16 FR', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM000561', 'CATETER TORACICO CAL 16', 'MATERIAL DE CURACION', '682.15', '-', '1'), ('IM000565', 'TUBO ENDOTRAQUEAL 3.5 CON GLOBO 14 FR', 'MATERIAL DE CURACION', '34.18', '-', '1'), ('IM000567', 'TUBO ENDOTRAQUEAL 4.5 CON GLOBO 18 FR', 'MATERIAL DE CURACION', '34.18', '-', '1'), ('IM000587', 'GEL P/ TRNSMISI DE ULTRASON ENV. C/3800', 'MATERIAL DE CURACION', '195.27', '-', '1'), ('IM000591', 'PASTA NEURODIAG P/ ELECTRODO', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM000633', 'ROLLO DE PAPEL KRAFT 60 CM', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM000672', 'SONDA P/ASPIRAR SECRECIONES CAL 5', 'MATERIAL DE CURACION', '4.82', '-', '1'), ('IM000673', 'SONDA P/ASPIRAR SECRECIONES CAL8 PIEZA', 'MATERIAL DE CURACION', '6.36', '-', '1'), ('IM000720', 'PLEUROBAC NEONATAL PEDIATRICO', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM000745', 'CIRCUITO PARA VENTILADOR ADULTO', 'MATERIAL DE CURACION', '254.55', '-', '1'), ('IM000746', 'CIRCUITO PARA VENTILADOR PEDIATRICO', 'MATERIAL DE CURACION', '283.95', '-', '1'), ('IM000753', 'SUTURA VICRYL # 5 C/AGUJA ATRAUMATICA', 'MATERIAL DE CURACION', '400.00', '-', '1'), ('IM000860', 'SONDA FOLEY CAL 22', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM000898', 'SONDA P/ALIMENT 38.5 CM', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM001041', 'FRESA DIATECH PERA 830 DIAMAN', 'MATERIAL DE CURACION', '90.47', '-', '1'), ('IM001049', 'PELICULAS RADIO PERIAPICALES ADUL C/150', 'MATERIAL DE CURACION', '828.22', '-', '1'), ('IM001083', 'TUBO ENDOTRAQUEAL 4.0 CON GLOBO 16 FR', 'MATERIAL DE CURACION', '34.18', '-', '1'), ('IM001099', 'GUANTE P/CIRUGIA # 6 C/50', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM001238', 'UNIFORME QUIRURGUICO P/ CIRUJANO 2 PZAS', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM001247', 'BATA P/ PACIENTE ADULTO Y PEDIATRIC PZAS', 'MATERIAL DE CURACION', '12.73', '-', '1'), ('IM001280', 'LIQUIDO FIJADOR PZA', 'MATERIAL DE CURACION', '142.35', '-', '1'), ('IM001307', 'LIQUIDO REVE. AUTO. P/38LTR. KODAK', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM001333', 'EQUIP P/ ADM DE FARM SENSIBL A LUZ CON B', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM00217', 'LAPIZ PARA ELECTROCUTERIO', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM002492', 'ALVEOGYL', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM002540', 'SONDA PARA YEYUNOSTOMIA 24 FR', 'MATERIAL DE CURACION', '2919.18', '-', '1'), ('IM002542', 'SONDA P/ YEYUNOSTOMIA, P/ NUTRI CALI: 24', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM002825', 'BOLSA PARA LLEOSTONOMIA O COLOSTO INFANT', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM002945', 'BOLSA PELI RES. SOL. RPBI 50X60 AMARILLA', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM003261', 'FRESA DATECH TBALL 368 DIAMNAT 033', 'MATERIAL DE CURACION', '90.47', '-', '1'), ('IM003341', 'ACIDO FOSFORI AL 37%JUMBO D/30GR', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM003350', 'GORRO REDONDO CON ELASTICO AJUSTABLE', 'MATERIAL DE CURACION', '81.82', '-', '1'), ('IM003360', 'BOLSA FRACCIONADORA DE SANGRE NEONATAL', 'MATERIAL DE CURACION', '37.09', '-', '1'), ('IM003361', 'BOLSA FRACCIONADORA CAPACID 150 ML PZA', 'MATERIAL DE CURACION', '43.64', '-', '1'), ('IM003362', 'SONDA FOLEY 16 3 VIAS PZAS', 'MATERIAL DE CURACION', '22.69', '-', '1'), ('IM003363', 'CATETER TORAXICO N.34 FR. (SOND', 'MATERIAL DE CURACION', '154.55', '-', '1'), ('IM003364', 'CATETER P/ SUMINI D OXIG NEONATAL', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM003365', 'CATET P/ SUMINI DE OXIGENO NEONATAL PZA.', 'MATERIAL DE CURACION', '62.87', '-', '1'), ('IM003366', 'CUBRE OBJETOS MEDIDA 24X 22', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM003367', 'CUBRE OBJETOS MEDIDA 22*22', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM003369', 'EQUIPO CONTROL A-SET PZA.', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM003372', 'EQUIPO P/TRANSFUCION SANGUIN', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM003373', 'MASCARILLA PARA OXIGENO PEDIATRICO', 'MATERIAL DE CURACION', '72.73', '-', '1'), ('IM003376', 'RECOLECTOR ROJO P/RPBI HEMATI ROJO 4 LTR', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM003377', 'CONTENEDOR P/LIQ. CORP. AMARILL 4 LTRS', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM003378', 'BOLSA ROJA P/RPBI 50CMX60CM', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM003379', 'TUBO P/DRENAJE TORACICO DE PV CAL 40 FR', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM003380', 'LENTINAS QUIRURGICAS', 'MATERIAL DE CURACION', '2292.73', '-', '1'), ('IM003381', 'SPIDEX SILICON', 'MATERIAL DE CURACION', '1180.75', '-', '1'), ('IM003382', 'FRESA ENDO-Z', 'MATERIAL DE CURACION', '116.58', '-', '1'), ('IM003383', 'FRESA GATES NUM. 1', 'MATERIAL DE CURACION', '428.15', '-', '1'), ('IM003384', 'FRESA DIATECH FLAMA 852 DIAMAN 198-199', 'MATERIAL DE CURACION', '90.47', '-', '1'), ('IM003385', 'FRESA DIATECH OCLUSAL 811 DIAMAN 028', 'MATERIAL DE CURACION', '90.47', '-', '1'), ('IM003386', 'EXPLORADOR', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM003387', 'CANULAS DE METAL', 'MATERIAL DE CURACION', '110.67', '-', '1'), ('IM003388', 'AGUA DESTILADA BIDON ENV C/20', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM003440', 'TUBO ENDOTRAQUEAL 2.5 CON GLOBO  10 FR', 'MATERIAL DE CURACION', '28.64', '-', '1'), ('IM003441', 'CLORURO DE BENZALCONIO AL 1%', 'MATERIAL DE CURACION', '44.73', '-', '1'), ('IM003442', 'SUTURA NYL MONOFILAMENTO CAL 0 24MM 45CM', 'MATERIAL DE CURACION', '209.09', '-', '1'), ('IM003443', 'LIGADURA DE HULE 2.70X15CM. SMARCH 15', 'MATERIAL DE CURACION', '400.00', '-', '1'), ('IM003444', 'SUTURA ACIDO POLIGLICOLICO 6-0', 'MATERIAL DE CURACION', '400.00', '-', '1');
INSERT INTO `productos` VALUES ('IM003445', 'SUTURA ACIDO POLIGLICOLICO 7-0', 'MATERIAL DE CURACION', '2363.64', '-', '1'), ('IM003446', 'SUTURA ACIDO POLIGLICOLICO  8-0', 'MATERIAL DE CURACION', '2732.73', '-', '1'), ('im003449', 'EQUIPO RESUCITADOR MANUAL ADULTO', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('IM003450', 'LIMA K FLEXOFILE NUM.15 DE 25MM', 'MATERIAL DE CURACION', '243.85', '-', '1'), ('IM003451', 'LIMA K FLEXOFILE NUM 20 DE 25MM', 'MATERIAL DE CURACION', '243.85', '-', '1'), ('IM003452', 'LIMA K FLEXOFILE NUM.10 DE 25MM', 'MATERIAL DE CURACION', '243.85', '-', '1'), ('IM003453', 'FRESA DE CARBURO DE BOLA NUM.2', 'MATERIAL DE CURACION', '23.71', '-', '1'), ('IM003454', 'FRESA REDONDO DE CARBURO NUM.8', 'MATERIAL DE CURACION', '23.71', '-', '1'), ('IM003455', 'ALVEOGYL', 'MATERIAL DE CURACION', '708.02', '-', '1'), ('IM003456', 'LIMA K FLEXO FILE#5-15 A 20-25', 'MATERIAL DE CURACION', '243.85', '-', '1'), ('IM003457', 'TAXI DESMANCHADOR DE SARRO FRASC. 4 ONZA', 'MATERIAL DE CURACION', '71.91', '-', '1'), ('IM003467', 'VALVU P/DERI D/RESOR MEDIA 80 A 120MMH2O', 'MATERIAL DE CURACION', '10545.45', '-', '1'), ('IM003468', 'VALVU P/DERI D/RESOR ALTA 120 A 170MMH2O', 'MATERIAL DE CURACION', '10545.45', '-', '1'), ('IM003469', 'VALVU P/DERI D/RESOR BAJA 40 A 80 MMH2O', 'MATERIAL DE CURACION', '10545.45', '-', '1'), ('IM003470', 'VALVULA P/DERIVACION DE LIQ CEFA', 'MATERIAL DE CURACION', '10545.45', '-', '1'), ('IM003471', 'FRESA REDONDA CARBURO NUM.6', 'MATERIAL DE CURACION', '23.71', '-', '1'), ('IM003472', 'FRESA DIAMANTE NUM BR 46', 'MATERIAL DE CURACION', '50.65', '-', '1'), ('IM003473', 'FRESA REDONDA CARBURO 1/4', 'MATERIAL DE CURACION', '23.71', '-', '1'), ('IM003474', 'FRESA DIAMANTE NUM BR 45', 'MATERIAL DE CURACION', '50.65', '-', '1'), ('IM003475', 'FRESA DIAMANTE NUM BR 41', 'MATERIAL DE CURACION', '50.65', '-', '1'), ('IM003476', 'FRESA DIAMANTE NUM BR 49', 'MATERIAL DE CURACION', '50.65', '-', '1'), ('IM003477', 'FRESAS QUIRURGICAS # 703', 'MATERIAL DE CURACION', '47.05', '-', '1'), ('IM003478', 'FRESA QUIRURJICA #702', 'MATERIAL DE CURACION', '47.05', '-', '1'), ('IM003479', 'FRESA CILINDRICA DIAMANTE', 'MATERIAL DE CURACION', '52.73', '-', '1'), ('IM003480', 'FRESA REDONDA CARBURO 1/2', 'MATERIAL DE CURACION', '23.71', '-', '1'), ('IM003481', 'FRESA CARBURO NUM FG34', 'MATERIAL DE CURACION', '23.71', '-', '1'), ('IM003482', 'RECINA SOLIDA A2', 'MATERIAL DE CURACION', '488.22', '-', '1'), ('IM003483', 'RECINA SOLIDA A1', 'MATERIAL DE CURACION', '488.22', '-', '1'), ('IM003484', 'RECINA FLUIDA A3', 'MATERIAL DE CURACION', '1221.82', '-', '1'), ('IM003485', 'RESINA FLUIDA A2', 'MATERIAL DE CURACION', '1221.82', '-', '1'), ('IM003486', 'LIMA K 1 SERIE P/PULPO 12MM PEDIATRICA', 'MATERIAL DE CURACION', '243.85', '-', '1'), ('IM003487', 'AGUJA CORTA D 30 X 21 MM', 'MATERIAL DE CURACION', '126.20', '-', '1'), ('IM003488', 'ANEXTESICO TOPICO', 'MATERIAL DE CURACION', '64.93', '-', '1'), ('IM003489', 'MICROBRUCH', 'MATERIAL DE CURACION', '80.22', '-', '1'), ('IM003490', 'CARRETE  ALAMBRE LIGADURA  18, 10G', 'MATERIAL DE CURACION', '28.04', '-', '1'), ('IM003491', 'ARCO BARRA DE ERICH 1MM', 'MATERIAL DE CURACION', '906.11', '-', '1'), ('IM003492', 'SEPARADOR OBWEGESEP 10 X 80 MM', 'MATERIAL DE CURACION', '3005.18', '-', '1'), ('IM003493', 'SEPARADOR DE RAMA MANDIBULAR', 'MATERIAL DE CURACION', '2609.18', '-', '1'), ('IM003494', 'BOLSA AMARILLA PARA R.P.B.I 90 X 120 CM', 'MATERIAL DE CURACION', '9.93', '-', '1'), ('IM003495', 'BOLSA ROJA P/R.P.B.I. 50X65CM PZ', 'MATERIAL DE CURACION', '4.55', '-', '1'), ('IM003496', 'BOLSA AMARILLA P/R.P.B.I. 50X65CM PZ', 'MATERIAL DE CURACION', '2.91', '-', '1'), ('IM003497', 'CATETER PARA VENOCLISIS NO 23', 'MATERIAL DE CURACION', '509.09', '-', '1'), ('IM003498', 'CATETER PARA VENOCLISIS NO 21 C/50PZ', 'MATERIAL DE CURACION', '545.45', '-', '1'), ('IM003499', 'JERINGA DE PLAS P/TUBERCULINA', 'MATERIAL DE CURACION', '309.09', '-', '1'), ('IM003500', 'GEL CONDUCTOR ELECTROLITICO, PARA ELECTR', 'MATERIAL DE CURACION', '809.09', '-', '1'), ('IM003501', 'SUTURA DE MONOFILAMENTO SINTeTICO ABSORBIBLE DE COPOLiMERO DE GLICOLIDA Y ePSILON-CAPROLACTONA, CON', 'MATERIAL DE CURACION', '1454.55', '-', '1'), ('IM003502', 'FRESA RUEDA DE CARRO DIAMANTE', 'MATERIAL DE CURACION', '50.65', '-', '1'), ('IM003503', 'CARRETEDE ALAMBRE LIGADURA CAL .012 10G', 'MATERIAL DE CURACION', '28.04', '-', '1'), ('IM003504', 'PARAMONOFORMOCRESOL ALCANFORA', 'MATERIAL DE CURACION', '128.35', '-', '1'), ('IM003505', 'FLORURO EN GEL FCOS', 'MATERIAL DE CURACION', '44.93', '-', '1'), ('IM003572', 'LIQ. P/FIJADOR AUTOMATICO RX P/38LTS', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('ME000035', 'CLARITROMICINA TAB DE LIB PROLONG. 500 MG   C/10 TAB', 'MEDICAMENTO', '0.00', '-', '1'), ('ME000046', 'DICLOFENACO 50 MGS / CODEINA 50 MGS ENV.C/20 TABLETAS', 'MEDICAMENTO', '0.00', '-', '1'), ('ME000048', 'LORATADINA/BETAMETASONA 5 MG/ 0.25 MG ENV C/10 TABLETAS', 'MEDICAMENTO', '0.00', '-', '1'), ('ME000076', 'CIPROFLOXACINO/HIDROCORTIZONA/LIDOCAINA OTICO GOT.', 'MEDICAMENTO', '0.00', '-', '1'), ('ME000101', 'LIDOCAINA/ HIDROCORTISONA TBO. CJA. C/20 GR TBO Y APLICADOR', 'MEDICAMENTO', '0.00', '-', '1'), ('ME000229', 'SUBSALICILATO DE BISMUTO, BICARBONATO DE SODIO E HIDROXIDO DE ALUMINIO (ESTOMACUROL)', 'MEDICAMENTO', '0.00', '-', '1'), ('S0020', 'CLINDAMICINA /PEROXIDO DE BENZOILO GEL SOBRES 5.0/5.0 G.', 'MEDICAMENTO', '0.00', '-', '1'), ('S0022', 'DERMALIBOUR ESTRACTO TOTAL DE AVENA CREMA', 'MEDICAMENTO', '0.00', '-', '1'), ('S0024', 'ERITROMICINA / PEROXIDO DE BENZOILO 3.0/5.0 MG. GEL', 'MEDICAMENTO', '0.00', '-', '1'), ('S0129', 'SIN DESCRIPCION', '', null, '-', '1'), ('S0187', 'DIPROPIONATO DE BECLOMETASONA SUSP. EN AEROSOL', 'MEDICAMENTO', '0.00', '-', '1'), ('S0264', 'LORATADINA/BETAMETASONA 1 MG /5 MG. SOLUCION 60 MLS.', 'MEDICAMENTO', '0.00', '-', '1'), ('S0286', 'SIN DESCRIPCION', '', null, '-', '1'), ('S0305', 'HIDROXIDO DE ALUMINIO', 'MEDICAMENTO', '0.00', '-', '1'), ('S0347', 'SIN DESCRIPCION', '', null, '-', '1'), ('S0348', 'SIN DESCRIPCION', '', null, '-', '1'), ('S0429', 'LГЌPIDOS  PROTEГЌNA Y VITAMINAS Y MINERALES', 'MEDICAMENTO', '0.00', '-', '1'), ('S0442', 'METOCLOPRAMIDA', 'MEDICAMENTO', '0.00', '-', '1'), ('S0443', 'METRONIDAZOL 250 MG.', 'MEDICAMENTO', '0.00', '-', '1'), ('S0457', 'PARACETAMOL', 'MEDICAMENTO', '0.00', '-', '1'), ('S0494', 'SIN DESCRIPCION', '', null, '-', '1'), ('SMC0556', 'JABON QUIRURGICO PARA LAVADO DE MANOS CONTIENE GLUCONATO DE CLORHEXIDINA AL 4% CON 1 LITRO', 'MATERIAL DE CURACION', '0.00', '-', '1'), ('SMC1226', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('SMC1227', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('SMC1520', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('SMC2308', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('SMC2333', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('SMC2337', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('SMC4609', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1'), ('SMC4667', 'SIN DESCRIPCION', 'MEDICAMENTO', '0.00', '-', '1');
COMMIT;

-- ----------------------------
-- Table structure for receta
-- ----------------------------
DROP TABLE IF EXISTS `receta`;
CREATE TABLE `receta` (
`id_rec`  int(11) NOT NULL AUTO_INCREMENT ,
`fol_rec`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' ,
`id_pac`  int(11) NOT NULL DEFAULT 0 ,
`cedula`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' ,
`id_tip`  varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`id_usu`  int(11) NOT NULL DEFAULT 0 ,
`enc_ser`  varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`carnet`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`baja`  int(11) NULL DEFAULT 0 ,
`web`  int(11) NULL DEFAULT 0 ,
`id_ser`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id_rec`, `fol_rec`, `id_usu`, `id_tip`),
FOREIGN KEY (`id_ser`) REFERENCES `servicios` (`id_ser`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`id_tip`) REFERENCES `tipo_receta` (`id_tip`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`id_usu`) REFERENCES `usuarios` (`id_usu`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`cedula`) REFERENCES `medicos` (`cedula`) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (`id_pac`) REFERENCES `pacientes` (`id_pac`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `cla_pac_fk` (`id_pac`) USING BTREE ,
INDEX `cla_med_fk` (`cedula`) USING BTREE ,
INDEX `id_rec` (`id_rec`) USING BTREE ,
INDEX `recetafk4` (`id_usu`) USING BTREE ,
INDEX `recetafk` (`id_tip`) USING BTREE ,
INDEX `receta_ibfk_6` (`id_ser`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='InnoDB free: 93184 kB; (`id_tip`) REFER `receta_electronica/'
AUTO_INCREMENT=1

;

-- ----------------------------
-- Records of receta
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for registro_entradas
-- ----------------------------
DROP TABLE IF EXISTS `registro_entradas`;
CREATE TABLE `registro_entradas` (
`id_usu`  int(11) NULL DEFAULT NULL ,
`fecha`  datetime NULL DEFAULT NULL ,
`tipo`  varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`id_registro`  int(11) NOT NULL AUTO_INCREMENT ,
PRIMARY KEY (`id_registro`),
FOREIGN KEY (`id_usu`) REFERENCES `usuarios` (`id_usu`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `registro_fk1` (`id_usu`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='InnoDB free: 93184 kB; (`id_usu`) REFER `receta_electronica/'
AUTO_INCREMENT=154

;

-- ----------------------------
-- Records of registro_entradas
-- ----------------------------
BEGIN;
INSERT INTO `registro_entradas` VALUES ('12', '2013-12-31 14:58:01', 'RFA', '54'), ('12', '2013-12-31 15:07:47', 'RFA', '55'), ('12', '2014-01-03 14:00:15', 'RFA', '95'), ('12', '2014-01-03 14:01:17', 'RCA', '96'), ('12', '2014-02-10 09:14:30', 'RFA', '130'), ('12', '2014-02-10 09:38:28', 'RFA', '131'), ('12', '2014-02-10 09:40:59', 'RFA', '132'), ('12', '2014-02-10 09:43:52', 'RFA', '133'), ('12', '2014-02-10 09:48:44', 'RFA', '134'), ('12', '2014-02-10 12:49:04', 'RFA', '135'), ('12', '2014-02-10 13:03:58', 'RFA', '136'), ('12', '2014-02-10 18:18:57', 'RCA', '137'), ('12', '2014-02-10 18:58:05', 'RCA', '138'), ('12', '2014-02-10 19:12:49', 'RCA', '139'), ('12', '2014-02-10 19:40:03', 'RFA', '140'), ('12', '2014-02-10 19:55:22', 'RSF', '141'), ('12', '2014-02-11 08:48:07', 'RFA', '142'), ('12', '2014-02-13 08:04:35', 'RFA', '143'), ('12', '2014-02-13 08:06:20', 'RCA', '144'), ('12', '2014-02-13 10:38:20', 'RFA', '145'), ('12', '2014-02-13 11:36:28', 'RFA', '146'), ('12', '2014-02-13 13:01:36', 'RCA', '147'), ('12', '2014-02-20 12:58:17', 'RFA', '148'), ('12', '2014-02-20 14:19:47', 'RFA', '149'), ('12', '2014-02-20 14:28:05', 'RFA', '150'), ('12', '2014-02-20 14:28:16', 'RCA', '151'), ('12', '2014-02-27 07:16:44', 'RSF', '152'), ('12', '2014-02-27 07:31:31', 'RSF', '153');
COMMIT;

-- ----------------------------
-- Table structure for servicios
-- ----------------------------
DROP TABLE IF EXISTS `servicios`;
CREATE TABLE `servicios` (
`id_ser`  int(11) NOT NULL AUTO_INCREMENT ,
`nom_ser`  varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id_ser`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
AUTO_INCREMENT=27

;

-- ----------------------------
-- Records of servicios
-- ----------------------------
BEGIN;
INSERT INTO `servicios` VALUES ('1', '-'), ('2', 'ADMINISTRACION'), ('3', 'ALMACEN'), ('4', 'ANESTESIOLOGIA'), ('5', 'CIRUGIA'), ('6', 'CONSULTA'), ('7', 'CONSULTA EXTERNA'), ('8', 'DENTAL'), ('9', 'DIRECCION'), ('10', 'EPIDEMIOLOGIA'), ('11', 'GINECOLOGIA'), ('12', 'HEMODIALISIS'), ('13', 'LACTANTES'), ('14', 'MEDICINA INTERNA'), ('15', 'NEONATOS'), ('16', 'PEDIATRIA'), ('17', 'PEDIATRIA ESCOLAR'), ('18', 'QUIROFANO'), ('19', 'SUBDIRECCION ADMINISTRATIVA'), ('20', 'SUBDIRECCION MEDICA'), ('21', 'TERAPIA INTENSIVA'), ('22', 'TOCOCIRUGIA'), ('23', 'TRIAGE'), ('24', 'UCI'), ('25', 'URGENCIAS'), ('26', 'URGENCIAS PEDIATRICAS');
COMMIT;

-- ----------------------------
-- Table structure for tipo_receta
-- ----------------------------
DROP TABLE IF EXISTS `tipo_receta`;
CREATE TABLE `tipo_receta` (
`id_tip`  varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`des_tip`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id_tip`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of tipo_receta
-- ----------------------------
BEGIN;
INSERT INTO `tipo_receta` VALUES ('1', 'RF'), ('2', 'RC');
COMMIT;

-- ----------------------------
-- Table structure for unidades
-- ----------------------------
DROP TABLE IF EXISTS `unidades`;
CREATE TABLE `unidades` (
`cla_uni`  varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`des_uni`  varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`cla_mun`  int(11) NULL DEFAULT NULL ,
`tip_uni`  char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`cla_uni`),
FOREIGN KEY (`cla_mun`) REFERENCES `municipios` (`cla_mun`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `cla_mun_fk` (`cla_mun`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='InnoDB free: 93184 kB; (`cla_mun`) REFER `receta_electronica'

;

-- ----------------------------
-- Records of unidades
-- ----------------------------
BEGIN;
INSERT INTO `unidades` VALUES ('3006', 'HOSPITAL GENERAL SANTIAGO IXCUINTLA', '18', 'F');
COMMIT;

-- ----------------------------
-- Table structure for usuarios
-- ----------------------------
DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE `usuarios` (
`id_usu`  int(11) NOT NULL AUTO_INCREMENT ,
`nombre`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`user`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`pass`  varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`rol`  int(1) NULL DEFAULT NULL ,
`baja`  int(1) NULL DEFAULT NULL ,
`cla_uni`  varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' ,
`cedula`  varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' ,
PRIMARY KEY (`id_usu`),
FOREIGN KEY (`cla_uni`) REFERENCES `unidades` (`cla_uni`) ON DELETE CASCADE ON UPDATE CASCADE,
INDEX `usiarios` (`cla_uni`) USING BTREE ,
INDEX `id_usu` (`id_usu`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
COMMENT='InnoDB free: 93184 kB; (`cla_uni`) REFER `receta_electronica'
AUTO_INCREMENT=19

;

-- ----------------------------
-- Records of usuarios
-- ----------------------------
BEGIN;
INSERT INTO `usuarios` VALUES ('12', 'orlando', 'orlando', 'orlando', '2', '1', '3006', ''), ('18', 'AMERICO GUZMAN', 'AMERICO', '*385E2B7742C37EAD8724C0ACE24B486BB689959C', '2', '1', '3006', '1');
COMMIT;

-- ----------------------------
-- Auto increment value for bitacora
-- ----------------------------
ALTER TABLE `bitacora` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for cedis
-- ----------------------------
ALTER TABLE `cedis` AUTO_INCREMENT=2;

-- ----------------------------
-- Auto increment value for detalle_productos
-- ----------------------------
ALTER TABLE `detalle_productos` AUTO_INCREMENT=3;

-- ----------------------------
-- Auto increment value for detreceta
-- ----------------------------
ALTER TABLE `detreceta` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for inventario
-- ----------------------------
ALTER TABLE `inventario` AUTO_INCREMENT=3;

-- ----------------------------
-- Auto increment value for inventario_inicial
-- ----------------------------
ALTER TABLE `inventario_inicial` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for kardex
-- ----------------------------
ALTER TABLE `kardex` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for modificacion_abastos
-- ----------------------------
ALTER TABLE `modificacion_abastos` AUTO_INCREMENT=7931;

-- ----------------------------
-- Auto increment value for pacientes
-- ----------------------------
ALTER TABLE `pacientes` AUTO_INCREMENT=12;

-- ----------------------------
-- Auto increment value for receta
-- ----------------------------
ALTER TABLE `receta` AUTO_INCREMENT=1;

-- ----------------------------
-- Auto increment value for registro_entradas
-- ----------------------------
ALTER TABLE `registro_entradas` AUTO_INCREMENT=154;

-- ----------------------------
-- Auto increment value for servicios
-- ----------------------------
ALTER TABLE `servicios` AUTO_INCREMENT=27;

-- ----------------------------
-- Auto increment value for usuarios
-- ----------------------------
ALTER TABLE `usuarios` AUTO_INCREMENT=19;
