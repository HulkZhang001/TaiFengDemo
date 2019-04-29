/*
Navicat MySQL Data Transfer

Source Server         : proj5
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : taifeng

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-04-29 18:53:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for county2economy
-- ----------------------------
DROP TABLE IF EXISTS `county2economy`;
CREATE TABLE `county2economy` (
  `County_code` varchar(255) NOT NULL,
  `economy_code` varchar(255) NOT NULL,
  PRIMARY KEY (`County_code`,`economy_code`),
  KEY `economy_code` (`economy_code`),
  CONSTRAINT `county2economy_ibfk_1` FOREIGN KEY (`County_code`) REFERENCES `county_info` (`County_code`),
  CONSTRAINT `county2economy_ibfk_2` FOREIGN KEY (`economy_code`) REFERENCES `economy_info` (`County_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of county2economy
-- ----------------------------
INSERT INTO `county2economy` VALUES ('440103000000', '440103000000');
INSERT INTO `county2economy` VALUES ('440104000000', '440104000000');
INSERT INTO `county2economy` VALUES ('440105000000', '440105000000');
INSERT INTO `county2economy` VALUES ('440106000000', '440106000000');
INSERT INTO `county2economy` VALUES ('440111000000', '440111000000');
INSERT INTO `county2economy` VALUES ('440112000000', '440112000000');
INSERT INTO `county2economy` VALUES ('440113000000', '440113000000');
INSERT INTO `county2economy` VALUES ('440114000000', '440114000000');
INSERT INTO `county2economy` VALUES ('440115000000', '440115000000');
INSERT INTO `county2economy` VALUES ('440117000000', '440117000000');
INSERT INTO `county2economy` VALUES ('440118000000', '440118000000');
INSERT INTO `county2economy` VALUES ('440303000000', '440303000000');
INSERT INTO `county2economy` VALUES ('440304000000', '440304000000');
INSERT INTO `county2economy` VALUES ('440305000000', '440305000000');
INSERT INTO `county2economy` VALUES ('440306000000', '440306000000');
INSERT INTO `county2economy` VALUES ('440307000000', '440307000000');
INSERT INTO `county2economy` VALUES ('440308000000', '440308000000');
INSERT INTO `county2economy` VALUES ('440309000000', '440309000000');
INSERT INTO `county2economy` VALUES ('440310000000', '440310000000');
INSERT INTO `county2economy` VALUES ('440311000000', '440311000000');
INSERT INTO `county2economy` VALUES ('440403000000', '440403000000');
INSERT INTO `county2economy` VALUES ('440404000000', '440404000000');

-- ----------------------------
-- Table structure for county2shelter
-- ----------------------------
DROP TABLE IF EXISTS `county2shelter`;
CREATE TABLE `county2shelter` (
  `County_code` varchar(255) NOT NULL COMMENT '区域编码',
  `Shelter_code` varchar(255) NOT NULL COMMENT '避难所编码',
  PRIMARY KEY (`County_code`,`Shelter_code`),
  KEY `County_code` (`County_code`) USING BTREE,
  KEY `Shelter_code` (`Shelter_code`) USING BTREE,
  CONSTRAINT `county2shelter_ibfk_1` FOREIGN KEY (`County_code`) REFERENCES `county_info` (`County_code`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `county2shelter_ibfk_2` FOREIGN KEY (`Shelter_code`) REFERENCES `shelter_info` (`shelter_code`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域与避难所连接关系';

-- ----------------------------
-- Records of county2shelter
-- ----------------------------
INSERT INTO `county2shelter` VALUES ('440106000000', '44010600001');
INSERT INTO `county2shelter` VALUES ('440106000000', '44010600002');
INSERT INTO `county2shelter` VALUES ('440106000000', '44010600003');
INSERT INTO `county2shelter` VALUES ('440106000000', '44010600004');
INSERT INTO `county2shelter` VALUES ('440106000000', '44010600005');
INSERT INTO `county2shelter` VALUES ('440106000000', '44010600006');
INSERT INTO `county2shelter` VALUES ('440106000000', '44010600007');
INSERT INTO `county2shelter` VALUES ('440106000000', '44010600008');
INSERT INTO `county2shelter` VALUES ('440106000000', '44010600009');
INSERT INTO `county2shelter` VALUES ('440308000000', '44030800001');
INSERT INTO `county2shelter` VALUES ('440308000000', '44030800002');
INSERT INTO `county2shelter` VALUES ('440308000000', '44030800003');
INSERT INTO `county2shelter` VALUES ('440308000000', '44030800004');
INSERT INTO `county2shelter` VALUES ('440308000000', '44030800005');
INSERT INTO `county2shelter` VALUES ('440308000000', '44030800006');
INSERT INTO `county2shelter` VALUES ('440308000000', '44030800007');
INSERT INTO `county2shelter` VALUES ('440308000000', '44030800008');
INSERT INTO `county2shelter` VALUES ('440308000000', '44030800009');
INSERT INTO `county2shelter` VALUES ('440308000000', '44030800010');
INSERT INTO `county2shelter` VALUES ('440308000000', '44030800011');
INSERT INTO `county2shelter` VALUES ('440308000000', '44030800012');
INSERT INTO `county2shelter` VALUES ('440308000000', '44030800013');
INSERT INTO `county2shelter` VALUES ('440308000000', '44030800014');
INSERT INTO `county2shelter` VALUES ('440308000000', '44030800015');
INSERT INTO `county2shelter` VALUES ('440308000000', '44030800016');
INSERT INTO `county2shelter` VALUES ('440308000000', '44030800017');

-- ----------------------------
-- Table structure for county_info
-- ----------------------------
DROP TABLE IF EXISTS `county_info`;
CREATE TABLE `county_info` (
  `County_code` varchar(255) NOT NULL,
  `County_name` varchar(255) DEFAULT NULL,
  `County_name_en` varchar(255) DEFAULT NULL,
  `area` varchar(255) DEFAULT NULL,
  `population` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`County_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of county_info
-- ----------------------------
INSERT INTO `county_info` VALUES ('440103000000', '广州市荔湾区', '\r\nLiwan District', '62.40', '95', '广州市西部');
INSERT INTO `county_info` VALUES ('440104000000', '广州市越秀区', '\r\nYuexiu District', '33.80', '116.38', '\r\n广州市中心，老三区之一');
INSERT INTO `county_info` VALUES ('440105000000', '广州市海珠区', 'Haizhu District ', '\r\n90.40', '166.31', '广州市中部');
INSERT INTO `county_info` VALUES ('440106000000', '广州市天河区', '\r\nTianhe District ', '137.38', '169.79', '\r\n广州市东部');
INSERT INTO `county_info` VALUES ('440111000000', '广州市白云区', '\r\nBaiyun District ', '\r\n795.79', '271.43', '广州市城区北部 ');
INSERT INTO `county_info` VALUES ('440112000000', '广州市黄埔区', 'Huangpu District ', '484.17', '109.10', '\r\n广州市东部');
INSERT INTO `county_info` VALUES ('440113000000', '广州市番禺区', 'Panyu District ', '529.94', '171.93', '\r\n广州市中南部');
INSERT INTO `county_info` VALUES ('440114000000', '广州市花都区', null, null, null, null);
INSERT INTO `county_info` VALUES ('440115000000', '广州市南沙区', null, null, null, null);
INSERT INTO `county_info` VALUES ('440117000000', '广州市从化区', null, null, null, null);
INSERT INTO `county_info` VALUES ('440118000000', '广州市增城区', null, null, null, null);
INSERT INTO `county_info` VALUES ('440303000000', '深圳市龙华区', '\r\nLonghua District ', '\r\n175.6', '\r\n154.94', '\r\n深圳市中北部 ');
INSERT INTO `county_info` VALUES ('440304000000', '深圳市罗湖区', '\r\nLuohu District ', '\r\n78.36', '\r\n\r\n100.40', '\r\n深圳市中部与香港交界');
INSERT INTO `county_info` VALUES ('440305000000', '深圳市坪山区', '\r\nPingshan District ', '168', '\r\n42.80', '深圳东北部 ');
INSERT INTO `county_info` VALUES ('440306000000', '深圳市盐田区', 'Yantian district ', '74.99', '\r\n23.72', '\r\n珠江口东边');
INSERT INTO `county_info` VALUES ('440307000000', '珠海市斗门区', null, null, null, null);
INSERT INTO `county_info` VALUES ('440308000000', '深圳市福田区', 'Futian District ', '78.66', '150.17', '\r\n深圳市中南部 ');
INSERT INTO `county_info` VALUES ('440309000000', '深圳市龙岗区', 'Longgang District ', '389.54', '228.47', '\r\n广东省深圳市 ');
INSERT INTO `county_info` VALUES ('440310000000', '深圳市宝安区', '\r\nBaoan District ', '396.64', '\r\n357.79', '珠江口东岸 ');
INSERT INTO `county_info` VALUES ('440311000000', '深圳市南山区', 'Nanshan District ', '\r\n182', '\r\n135.63', '\r\n深圳市西部 ');
INSERT INTO `county_info` VALUES ('440403000000', '珠海市金湾区', null, null, null, null);
INSERT INTO `county_info` VALUES ('440404000000', '珠海市香洲区', null, null, null, null);

-- ----------------------------
-- Table structure for economy_info
-- ----------------------------
DROP TABLE IF EXISTS `economy_info`;
CREATE TABLE `economy_info` (
  `County_code` varchar(255) NOT NULL COMMENT '区域编码',
  `County_name` varchar(255) DEFAULT NULL,
  `Gross` double DEFAULT NULL,
  `Primary_p` varchar(255) DEFAULT NULL,
  `Secondary_p` varchar(255) DEFAULT NULL,
  `Tertiary` varchar(255) DEFAULT NULL,
  `Gross_Per` double DEFAULT NULL,
  `Gross_Industry` double DEFAULT NULL,
  `Gross_Agriculture` double DEFAULT NULL,
  `Year` year(4) DEFAULT NULL,
  PRIMARY KEY (`County_code`),
  KEY `地区名称` (`County_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域经济信息';

-- ----------------------------
-- Records of economy_info
-- ----------------------------
INSERT INTO `economy_info` VALUES ('440103000000', '广州市荔湾区', '11592657', '48068', '2704368', '8840221', '123655', '3919609', '73718', '2017');
INSERT INTO `economy_info` VALUES ('440104000000', '广州市越秀区', '31544843', '0', '581654', '30963189', '271365', '375458', '0', '2017');
INSERT INTO `economy_info` VALUES ('440105000000', '广州市海珠区', '17379262', '6335', '2473571', '14899356', '105297', '3099475', '9906', '2017');
INSERT INTO `economy_info` VALUES ('440106000000', '广州市天河区', '42856173', '2969', '3405869', '39447335', '257479', '8106284', '48503', '2017');
INSERT INTO `economy_info` VALUES ('440111000000', '广州市白云区', '18154721', '278883', '3121162', '14754676', '72412', '7374388', '541009', '2017');
INSERT INTO `economy_info` VALUES ('440112000000', '广州市黄埔区', '32422306', '55928', '19544876', '12821502', '298328', '73917371', '123949', '2017');
INSERT INTO `economy_info` VALUES ('440113000000', '广州市番禺区', '19722430', '273202', '7418599', '12030629', '117381', '23272371', '600058', '2017');
INSERT INTO `economy_info` VALUES ('440114000000', '广州市花都区', '12899249', '339006', '6736282', '5823961', '121097', '19302761', '467371', '2017');
INSERT INTO `economy_info` VALUES ('440115000000', '广州市南沙区', '13787250', '525398', '8277076', '4984776', '195232', '23073774', '833414', '2017');
INSERT INTO `economy_info` VALUES ('440117000000', '广州市从化区', '4001046', '216929', '1671272', '2112845', '62644', '3196248', '416389', '2017');
INSERT INTO `economy_info` VALUES ('440118000000', '广州市增城区', '10671579', '457799', '4175350', '6038430', '91070', '11873923', '852647', '2017');
INSERT INTO `economy_info` VALUES ('440303000000', '深圳市龙华区', '21394243', '2705', '12321771', '9069767', '135703', '46996169', '5140', '2017');
INSERT INTO `economy_info` VALUES ('440304000000', '深圳市罗湖区', '21616969', '9894', '828707', '20778368', '212849', '10015650', '23634', '2017');
INSERT INTO `economy_info` VALUES ('440305000000', '深圳市坪山区', '6079395', '8528', '4219754', '1851113', '145457', '16147263', '17179', '2017');
INSERT INTO `economy_info` VALUES ('440306000000', '深圳市盐田区', '5859975', '899', '879351', '4979725', '252749', '5332964', '2196', '2017');
INSERT INTO `economy_info` VALUES ('440307000000', '珠海市斗门区', '3560533', '383000\r\n', '1893132', '1284401', '79149', '6835481', '710493', '2017');
INSERT INTO `economy_info` VALUES ('440308000000', '深圳市福田区', '38205692', '17809', '2171179', '36016704', '249474', '10217941', '45757', '2017');
INSERT INTO `economy_info` VALUES ('440309000000', '深圳市龙岗区', '42023904', '16997', '28187227', '13819680', '178457', '85721918', '39964', '2017');
INSERT INTO `economy_info` VALUES ('440310000000', '深圳市宝安区', '43054385', '26002', '23518385', '19509998', '117576', '89909149', '54410', '2017');
INSERT INTO `economy_info` VALUES ('440311000000', '深圳市南山区', '46177993', '17048', '20783129', '25377816', '332108', '56390511', '28722', '2017');
INSERT INTO `economy_info` VALUES ('440403000000', '珠海市金湾区', '5627033', '75854\r\n', '4107003', '1444176', '205968', '15705239', '140140', '2017');
INSERT INTO `economy_info` VALUES ('440404000000', '珠海市香洲区', '17564229', '29388', '6871723', '10663118', '176118', '16894888', '79218', '2017');

-- ----------------------------
-- Table structure for lj2tf
-- ----------------------------
DROP TABLE IF EXISTS `lj2tf`;
CREATE TABLE `lj2tf` (
  `lj_id` int(11) NOT NULL,
  `tf_id` int(6) NOT NULL,
  PRIMARY KEY (`lj_id`,`tf_id`),
  KEY `tf_id` (`tf_id`),
  CONSTRAINT `lj2tf_ibfk_1` FOREIGN KEY (`lj_id`) REFERENCES `tf_shanzhu_lj_info` (`lj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `lj2tf_ibfk_2` FOREIGN KEY (`tf_id`) REFERENCES `tf_info` (`tf_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='路径与台风对应关系';

-- ----------------------------
-- Records of lj2tf
-- ----------------------------
INSERT INTO `lj2tf` VALUES ('1822001', '1822');
INSERT INTO `lj2tf` VALUES ('1822002', '1822');
INSERT INTO `lj2tf` VALUES ('1822003', '1822');
INSERT INTO `lj2tf` VALUES ('1822004', '1822');
INSERT INTO `lj2tf` VALUES ('1822005', '1822');
INSERT INTO `lj2tf` VALUES ('1822006', '1822');
INSERT INTO `lj2tf` VALUES ('1822007', '1822');
INSERT INTO `lj2tf` VALUES ('1822008', '1822');
INSERT INTO `lj2tf` VALUES ('1822009', '1822');
INSERT INTO `lj2tf` VALUES ('1822010', '1822');
INSERT INTO `lj2tf` VALUES ('1822011', '1822');
INSERT INTO `lj2tf` VALUES ('1822012', '1822');
INSERT INTO `lj2tf` VALUES ('1822013', '1822');
INSERT INTO `lj2tf` VALUES ('1822014', '1822');
INSERT INTO `lj2tf` VALUES ('1822015', '1822');
INSERT INTO `lj2tf` VALUES ('1822016', '1822');
INSERT INTO `lj2tf` VALUES ('1822017', '1822');
INSERT INTO `lj2tf` VALUES ('1822018', '1822');
INSERT INTO `lj2tf` VALUES ('1822019', '1822');
INSERT INTO `lj2tf` VALUES ('1822020', '1822');
INSERT INTO `lj2tf` VALUES ('1822021', '1822');
INSERT INTO `lj2tf` VALUES ('1822022', '1822');
INSERT INTO `lj2tf` VALUES ('1822023', '1822');
INSERT INTO `lj2tf` VALUES ('1822024', '1822');
INSERT INTO `lj2tf` VALUES ('1822025', '1822');
INSERT INTO `lj2tf` VALUES ('1822026', '1822');
INSERT INTO `lj2tf` VALUES ('1822027', '1822');
INSERT INTO `lj2tf` VALUES ('1822028', '1822');
INSERT INTO `lj2tf` VALUES ('1822029', '1822');
INSERT INTO `lj2tf` VALUES ('1822030', '1822');
INSERT INTO `lj2tf` VALUES ('1822031', '1822');
INSERT INTO `lj2tf` VALUES ('1822032', '1822');
INSERT INTO `lj2tf` VALUES ('1822033', '1822');
INSERT INTO `lj2tf` VALUES ('1822034', '1822');
INSERT INTO `lj2tf` VALUES ('1822035', '1822');
INSERT INTO `lj2tf` VALUES ('1822036', '1822');
INSERT INTO `lj2tf` VALUES ('1822037', '1822');
INSERT INTO `lj2tf` VALUES ('1822038', '1822');
INSERT INTO `lj2tf` VALUES ('1822039', '1822');
INSERT INTO `lj2tf` VALUES ('1822040', '1822');
INSERT INTO `lj2tf` VALUES ('1822041', '1822');
INSERT INTO `lj2tf` VALUES ('1822042', '1822');
INSERT INTO `lj2tf` VALUES ('1822043', '1822');
INSERT INTO `lj2tf` VALUES ('1822044', '1822');
INSERT INTO `lj2tf` VALUES ('1822045', '1822');
INSERT INTO `lj2tf` VALUES ('1822046', '1822');
INSERT INTO `lj2tf` VALUES ('1822047', '1822');
INSERT INTO `lj2tf` VALUES ('1822048', '1822');
INSERT INTO `lj2tf` VALUES ('1822049', '1822');
INSERT INTO `lj2tf` VALUES ('1822050', '1822');
INSERT INTO `lj2tf` VALUES ('1822051', '1822');
INSERT INTO `lj2tf` VALUES ('1822052', '1822');
INSERT INTO `lj2tf` VALUES ('1822053', '1822');
INSERT INTO `lj2tf` VALUES ('1822054', '1822');
INSERT INTO `lj2tf` VALUES ('1822055', '1822');
INSERT INTO `lj2tf` VALUES ('1822056', '1822');
INSERT INTO `lj2tf` VALUES ('1822057', '1822');
INSERT INTO `lj2tf` VALUES ('1822058', '1822');
INSERT INTO `lj2tf` VALUES ('1822059', '1822');
INSERT INTO `lj2tf` VALUES ('1822060', '1822');
INSERT INTO `lj2tf` VALUES ('1822061', '1822');
INSERT INTO `lj2tf` VALUES ('1822062', '1822');
INSERT INTO `lj2tf` VALUES ('1822063', '1822');
INSERT INTO `lj2tf` VALUES ('1822064', '1822');
INSERT INTO `lj2tf` VALUES ('1822065', '1822');
INSERT INTO `lj2tf` VALUES ('1822066', '1822');
INSERT INTO `lj2tf` VALUES ('1822067', '1822');
INSERT INTO `lj2tf` VALUES ('1822068', '1822');
INSERT INTO `lj2tf` VALUES ('1822069', '1822');
INSERT INTO `lj2tf` VALUES ('1822070', '1822');
INSERT INTO `lj2tf` VALUES ('1822071', '1822');
INSERT INTO `lj2tf` VALUES ('1822072', '1822');
INSERT INTO `lj2tf` VALUES ('1822073', '1822');
INSERT INTO `lj2tf` VALUES ('1822074', '1822');
INSERT INTO `lj2tf` VALUES ('1822075', '1822');
INSERT INTO `lj2tf` VALUES ('1822076', '1822');
INSERT INTO `lj2tf` VALUES ('1822077', '1822');
INSERT INTO `lj2tf` VALUES ('1822078', '1822');
INSERT INTO `lj2tf` VALUES ('1822079', '1822');
INSERT INTO `lj2tf` VALUES ('1822080', '1822');
INSERT INTO `lj2tf` VALUES ('1822081', '1822');
INSERT INTO `lj2tf` VALUES ('1822082', '1822');
INSERT INTO `lj2tf` VALUES ('1822083', '1822');
INSERT INTO `lj2tf` VALUES ('1822084', '1822');
INSERT INTO `lj2tf` VALUES ('1822085', '1822');
INSERT INTO `lj2tf` VALUES ('1822086', '1822');
INSERT INTO `lj2tf` VALUES ('1822087', '1822');
INSERT INTO `lj2tf` VALUES ('1822088', '1822');
INSERT INTO `lj2tf` VALUES ('1822089', '1822');
INSERT INTO `lj2tf` VALUES ('1822090', '1822');
INSERT INTO `lj2tf` VALUES ('1822091', '1822');
INSERT INTO `lj2tf` VALUES ('1822092', '1822');
INSERT INTO `lj2tf` VALUES ('1822093', '1822');
INSERT INTO `lj2tf` VALUES ('1822094', '1822');
INSERT INTO `lj2tf` VALUES ('1822095', '1822');
INSERT INTO `lj2tf` VALUES ('1822096', '1822');
INSERT INTO `lj2tf` VALUES ('1822097', '1822');
INSERT INTO `lj2tf` VALUES ('1822098', '1822');
INSERT INTO `lj2tf` VALUES ('1822099', '1822');
INSERT INTO `lj2tf` VALUES ('1822100', '1822');
INSERT INTO `lj2tf` VALUES ('1822101', '1822');
INSERT INTO `lj2tf` VALUES ('1822102', '1822');
INSERT INTO `lj2tf` VALUES ('1822103', '1822');
INSERT INTO `lj2tf` VALUES ('1822104', '1822');
INSERT INTO `lj2tf` VALUES ('1822105', '1822');

-- ----------------------------
-- Table structure for shelter_info
-- ----------------------------
DROP TABLE IF EXISTS `shelter_info`;
CREATE TABLE `shelter_info` (
  `shelter_code` varchar(255) NOT NULL,
  `county_name` varchar(255) DEFAULT NULL,
  `﻿name` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `adderss` varchar(255) DEFAULT NULL,
  `street_id` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`shelter_code`),
  KEY `所在地区名称` (`county_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='避难所信息';

-- ----------------------------
-- Records of shelter_info
-- ----------------------------
INSERT INTO `shelter_info` VALUES ('44010600001', '广州市天河区', '紧急避难场所(石牌岗顶南大路)', '23.141199', '113.350222', '广东省广州市天河区中山大道西22号附近', 'b5bb37c2cf32c5c25abbbc82', null, '1', 'b5bb37c2cf32c5c25abbbc82');
INSERT INTO `shelter_info` VALUES ('44010600002', '广州市天河区', '紧急避难场所(东方一路)', '23.137696', '113.368711', '广东省广州市天河区天府路235号附近', '3ef8709d92306c52ede4a527', null, '1', '3ef8709d92306c52ede4a527');
INSERT INTO `shelter_info` VALUES ('44010600003', '广州市天河区', '紧急避难场所(天河直街)', '23.140642', '113.324529', '广东省广州市天河区天河直街63号', 'b47f1585bf2bf4df40ab9a65', null, '1', 'b47f1585bf2bf4df40ab9a65');
INSERT INTO `shelter_info` VALUES ('44010600004', '广州市天河区', '应急避难场所(天河路)', '23.13932', '113.322552', '广东省广州市天河区天河路120附近', 'efc17782f4de632f132935b4', null, '1', 'efc17782f4de632f132935b4');
INSERT INTO `shelter_info` VALUES ('44010600005', '广州市天河区', '紧急避难场所(天河街)', '23.136541', '113.327071', '广东省广州市天河区广利路101号附近', '2fe6cbf8d1fecea1aeb22ad9', null, '1', '2fe6cbf8d1fecea1aeb22ad9');
INSERT INTO `shelter_info` VALUES ('44010600006', '广州市天河区', '紧急避难场所(华庭路)', '23.150047', '113.3372', '广东省广州市天河区林和东路120附近', 'ed64764e682c547f5810935e', null, '1', 'ed64764e682c547f5810935e');
INSERT INTO `shelter_info` VALUES ('44010600007', '广州市天河区', '天河区棠下街华景东社区应急的应避难所', '23.144221', '113.365437', '广州市天河区华景路62-68号海锦写字楼1层', '1a5f1e411503dd2af4eafccf', null, '1', '1a5f1e411503dd2af4eafccf');
INSERT INTO `shelter_info` VALUES ('44010600008', '广州市天河区', '紧急避难场所(融和路)', '23.207004', '113.385936', '广州市天河区融和路与金恒路交叉口南50米', 'b7562cbb0c67d0b6a8059da1', null, '1', 'b7562cbb0c67d0b6a8059da1');
INSERT INTO `shelter_info` VALUES ('44010600009', '广州市天河区', '紧急避难场所', '23.155285', '113.329443', '林和西路161号', '95165872e10e9d06d7851f2e', null, '1', '95165872e10e9d06d7851f2e');
INSERT INTO `shelter_info` VALUES ('44030800001', '深圳市福田区', '应急避难场所', '22.544589', '114.025111', '深圳市福田区农林路28号', 'e27b600ac470c198f02d83ec', null, '1', 'e27b600ac470c198f02d83ec');
INSERT INTO `shelter_info` VALUES ('44030800002', '深圳市福田区', '应急避难场所', '22.550728', '114.07605', '福中路与福彩路交叉口西北50米', null, null, '1', '448d501585d19fc4901fc912');
INSERT INTO `shelter_info` VALUES ('44030800003', '深圳市福田区', '应急避难场所', '22.559719', '114.105271', '园岭五街4号附近', '874070bbbe0fdada220220b8', null, '1', '874070bbbe0fdada220220b8');
INSERT INTO `shelter_info` VALUES ('44030800004', '深圳市福田区', '应急避难场所', '22.535707', '114.086622', '福田路14号附近', 'fa741747ffed52c18a36eee6', null, '1', 'fa741747ffed52c18a36eee6');
INSERT INTO `shelter_info` VALUES ('44030800005', '深圳市福田区', '荔枝公园应急避难场所', '22.552746', '114.109329', '红岭地铁站F口西南200米', '2de365b157286e840c0a70b4', null, '1', '2de365b157286e840c0a70b4');
INSERT INTO `shelter_info` VALUES ('44030800006', '深圳市福田区', '莲花山公园应急避难场所', '22.560034', '114.056261', '红荔路2062号附近', 'a1a3f663934b5e69f7eafcf2', null, '1', 'a1a3f663934b5e69f7eafcf2');
INSERT INTO `shelter_info` VALUES ('44030800007', '深圳市福田区', '紧急避难场所', '22.551348', '114.096178', '深圳市福田区兰天路41号附近', 'f8e04fc897f52564744ff12b', null, '1', 'f8e04fc897f52564744ff12b');
INSERT INTO `shelter_info` VALUES ('44030800008', '深圳市福田区', '紧急避难场所', '22.542955', '114.094066', '深圳市福田区中航路4-1号附近', '2f1588d34d36607bc1f1cf93', null, '1', '2f1588d34d36607bc1f1cf93');
INSERT INTO `shelter_info` VALUES ('44030800009', '深圳市福田区', '紧急避难场所(八卦一路)', '22.563247', '114.107208', '广东省深圳市福田区八卦一路49附近', '7d23dc14852199bd40afe6e1', null, '1', '7d23dc14852199bd40afe6e1');
INSERT INTO `shelter_info` VALUES ('44030800010', '深圳市福田区', '紧急避难场所(中康路)', '22.569038', '114.066181', '深圳市福田区中康南路8号', '6d0d73f5026a2c12353a7172', null, '1', '6d0d73f5026a2c12353a7172');
INSERT INTO `shelter_info` VALUES ('44030800011', '深圳市福田区', '紧急避难场所(梅亭路)', '22.574749', '114.046041', '广东省深圳市福田区梅亭路', '0af9b4a67bfc47bd4207c1b9', null, '1', '0af9b4a67bfc47bd4207c1b9');
INSERT INTO `shelter_info` VALUES ('44030800012', '深圳市福田区', '紧急避难场所(泰然三路)', '22.540102', '114.038538', '泰然三路与泰然四路交叉口南50米', 'c2c868cf5325e8882efaa7ba', null, '1', 'c2c868cf5325e8882efaa7ba');
INSERT INTO `shelter_info` VALUES ('44030800013', '深圳市福田区', '紧急避难场所(益田花园西北)', '22.517597', '114.063642', '深圳市福田区菩堤路216', '8544b202483ad9a29968b440', null, '1', '8544b202483ad9a29968b440');
INSERT INTO `shelter_info` VALUES ('44030800014', '深圳市福田区', '深圳市彩田应急避难场所', '22.567477', '114.066949', '深圳市福田区宏威路44号附近', 'f202c36bbf0f32f408ccddfc', null, '1', 'f202c36bbf0f32f408ccddfc');
INSERT INTO `shelter_info` VALUES ('44030800015', '深圳市福田区', '紧急避难场所(福强路)', '22.521583', '114.058263', '深圳市福田区石厦街与福强路交叉口西150米', '10febaedfb6ae796ca09f06c', null, '1', '10febaedfb6ae796ca09f06c');
INSERT INTO `shelter_info` VALUES ('44030800016', '深圳市福田区', '深圳市彩田应急避难场所(彩云路)', '22.569215', '114.072588', '广东省深圳市福田区彩云路18号', 'c33f3e9ab2155d8977026902', null, '1', 'c33f3e9ab2155d8977026902');
INSERT INTO `shelter_info` VALUES ('44030800017', '深圳市福田区', '荔枝公园-西门', '22.549807', '114.107499', '红岭中路1001号西门', 'ffd6d4037c23668f17b54b10', null, '1', 'ffd6d4037c23668f17b54b10');

-- ----------------------------
-- Table structure for tf_info
-- ----------------------------
DROP TABLE IF EXISTS `tf_info`;
CREATE TABLE `tf_info` (
  `tf_id` int(6) NOT NULL,
  `tf_name` varchar(255) DEFAULT NULL,
  `tf_en_name` varchar(255) DEFAULT NULL,
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  PRIMARY KEY (`tf_id`),
  KEY `tf_name` (`tf_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='台风信息';

-- ----------------------------
-- Records of tf_info
-- ----------------------------
INSERT INTO `tf_info` VALUES ('1822', '山竹', 'Mangkhut', '2018-09-07 20:00:00', '2018-09-17 20:00:00');
INSERT INTO `tf_info` VALUES ('1823', '百里嘉', 'Barijat', '2018-09-10 08:00:00', '2018-09-13 17:00:00');
INSERT INTO `tf_info` VALUES ('1824', '潭美', 'Trami', '2018-09-21 21:00:00', '2018-10-01 08:00:00');
INSERT INTO `tf_info` VALUES ('1825', '康妮', 'Kong-rey', '2018-09-29 15:00:00', '2018-10-07 08:00:00');
INSERT INTO `tf_info` VALUES ('1826', '玉兔', 'Yutu', '2018-10-22 03:00:00', '2018-11-03 08:00:00');
INSERT INTO `tf_info` VALUES ('1827', '桃芝', 'Toraji', '2018-11-07 18:00:00', '2018-11-18 20:00:00');
INSERT INTO `tf_info` VALUES ('1828', '万宜', 'Man-yi', '2018-11-20 21:00:00', '2018-11-23 05:00:00');
INSERT INTO `tf_info` VALUES ('1829', '天兔', 'Usagi', '2018-11-20 21:00:00', '2018-11-26 05:00:00');

-- ----------------------------
-- Table structure for tf_shanzhu_lj_info
-- ----------------------------
DROP TABLE IF EXISTS `tf_shanzhu_lj_info`;
CREATE TABLE `tf_shanzhu_lj_info` (
  `lj_id` int(11) NOT NULL COMMENT '路径id',
  `time` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `strong` text,
  `power` varchar(255) DEFAULT NULL,
  `speed` varchar(255) DEFAULT NULL,
  `move_dir` text,
  `move_speed` varchar(255) DEFAULT NULL,
  `pressure` varchar(255) DEFAULT NULL,
  `radius7` varchar(255) DEFAULT NULL,
  `radius10` varchar(255) DEFAULT NULL,
  `radius12` varchar(255) DEFAULT NULL,
  `radius7_quad` varchar(255) DEFAULT NULL,
  `radius10_quad` varchar(255) DEFAULT NULL,
  `radius12_quad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`lj_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='台风路径信息';

-- ----------------------------
-- Records of tf_shanzhu_lj_info
-- ----------------------------
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822001', '2018-09-07T20:00:00', '165.3', '12.9', '热带风暴(TS)', '8', '18', '西西北', '28', '1000', '250', '0', '0', '{\"ne\":250,\"se\":150,\"sw\":150,\"nw\":150}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822002', '2018-09-08T02:00:00', '163.8', '13', '热带风暴(TS)', '8', '18', '西西北', '28', '998', '350', '0', '0', '{\"ne\":350,\"se\":150,\"sw\":150,\"nw\":250}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822003', '2018-09-08T05:00:00', '162.9', '13.1', '热带风暴(TS)', '8', '18', '西西北', '25', '998', '200', '0', '0', '{\"ne\":200,\"se\":150,\"sw\":150,\"nw\":200}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822004', '2018-09-08T08:00:00', '162.4', '13.6', '热带风暴(TS)', '8', '18', '西', '29', '998', '200', '0', '0', '{\"ne\":200,\"se\":150,\"sw\":150,\"nw\":200}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822005', '2018-09-08T14:00:00', '160.9', '14.4', '热带风暴(TS)', '8', '20', '西', '30', '995', '220', '0', '0', '{\"ne\":220,\"se\":150,\"sw\":180,\"nw\":220}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822006', '2018-09-08T17:00:00', '160.1', '14.6', '热带风暴(TS)', '9', '23', '西', '35', '990', '250', '0', '0', '{\"ne\":250,\"se\":200,\"sw\":180,\"nw\":250}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822007', '2018-09-08T20:00:00', '159.2', '14.6', '热带风暴(TS)', '9', '23', '西', '35', '990', '250', '0', '0', '{\"ne\":250,\"se\":200,\"sw\":180,\"nw\":250}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822008', '2018-09-09T02:00:00', '157.1', '14.8', '强热带风暴(STS)', '10', '28', '西', '38', '982', '250', '50', '0', '{\"ne\":250,\"se\":150,\"sw\":150,\"nw\":250}', '{\"ne\":50,\"se\":50,\"sw\":50,\"nw\":50}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822009', '2018-09-09T05:00:00', '156.2', '14.9', '强热带风暴(STS)', '11', '30', '西', '35', '980', '250', '50', '0', '{\"ne\":250,\"se\":150,\"sw\":150,\"nw\":250}', '{\"ne\":50,\"se\":50,\"sw\":50,\"nw\":50}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822010', '2018-09-09T08:00:00', '155.2', '14.9', '台风(TY)', '12', '33', '西', '30', '975', '250', '60', '0', '{\"ne\":250,\"se\":150,\"sw\":150,\"nw\":250}', '{\"ne\":60,\"se\":50,\"sw\":50,\"nw\":60}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822011', '2018-09-09T14:00:00', '153.1', '15.3', '台风(TY)', '12', '33', '西', '35', '975', '250', '60', '0', '{\"ne\":250,\"se\":150,\"sw\":150,\"nw\":250}', '{\"ne\":60,\"se\":50,\"sw\":50,\"nw\":60}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822012', '2018-09-09T17:00:00', '152.1', '15.2', '台风(TY)', '12', '35', '西', '35', '970', '250', '90', '50', '{\"ne\":250,\"se\":150,\"sw\":150,\"nw\":250}', '{\"ne\":90,\"se\":60,\"sw\":60,\"nw\":90}', '{\"ne\":50,\"se\":30,\"sw\":30,\"nw\":50}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822013', '2018-09-09T20:00:00', '151.2', '15.2', '台风(TY)', '12', '35', '西', '35', '970', '350', '90', '50', '{\"ne\":350,\"se\":150,\"sw\":150,\"nw\":300}', '{\"ne\":90,\"se\":60,\"sw\":60,\"nw\":90}', '{\"ne\":50,\"se\":30,\"sw\":30,\"nw\":50}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822014', '2018-09-10T02:00:00', '149.2', '14.6', '台风(TY)', '13', '38', '西', '30', '965', '350', '90', '50', '{\"ne\":350,\"se\":150,\"sw\":150,\"nw\":300}', '{\"ne\":90,\"se\":60,\"sw\":60,\"nw\":90}', '{\"ne\":50,\"se\":30,\"sw\":30,\"nw\":50}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822015', '2018-09-10T05:00:00', '148.6', '14.6', '台风(TY)', '13', '38', '西', '30', '965', '350', '90', '50', '{\"ne\":350,\"se\":150,\"sw\":150,\"nw\":300}', '{\"ne\":90,\"se\":60,\"sw\":60,\"nw\":90}', '{\"ne\":50,\"se\":30,\"sw\":30,\"nw\":50}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822016', '2018-09-10T08:00:00', '147.6', '14.6', '台风(TY)', '13', '38', '西', '30', '965', '350', '90', '50', '{\"ne\":350,\"se\":150,\"sw\":150,\"nw\":300}', '{\"ne\":90,\"se\":60,\"sw\":60,\"nw\":90}', '{\"ne\":50,\"se\":30,\"sw\":30,\"nw\":50}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822017', '2018-09-10T14:00:00', '145.8', '14.4', '台风(TY)', '13', '38', '西', '25', '965', '350', '90', '50', '{\"ne\":350,\"se\":150,\"sw\":150,\"nw\":300}', '{\"ne\":90,\"se\":60,\"sw\":60,\"nw\":90}', '{\"ne\":50,\"se\":30,\"sw\":30,\"nw\":50}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822018', '2018-09-10T17:00:00', '144.9', '14.2', '台风(TY)', '13', '40', '西', '25', '960', '350', '120', '80', '{\"ne\":350,\"se\":180,\"sw\":180,\"nw\":320}', '{\"ne\":120,\"se\":80,\"sw\":80,\"nw\":110}', '{\"ne\":80,\"se\":40,\"sw\":40,\"nw\":70}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822019', '2018-09-10T20:00:00', '144.3', '14.1', '强台风(STY)', '14', '45', '西', '24', '950', '350', '120', '80', '{\"ne\":350,\"se\":200,\"sw\":180,\"nw\":320}', '{\"ne\":120,\"se\":90,\"sw\":80,\"nw\":110}', '{\"ne\":80,\"se\":50,\"sw\":40,\"nw\":70}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822020', '2018-09-11T02:00:00', '142.6', '14', '强台风(STY)', '15', '48', '西', '23', '945', '350', '120', '80', '{\"ne\":350,\"se\":200,\"sw\":200,\"nw\":350}', '{\"ne\":120,\"se\":90,\"sw\":90,\"nw\":120}', '{\"ne\":80,\"se\":50,\"sw\":50,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822021', '2018-09-11T05:00:00', '142', '14', '强台风(STY)', '15', '48', '西', '22', '945', '350', '120', '80', '{\"ne\":350,\"se\":200,\"sw\":200,\"nw\":350}', '{\"ne\":120,\"se\":90,\"sw\":90,\"nw\":120}', '{\"ne\":80,\"se\":50,\"sw\":50,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822022', '2018-09-11T08:00:00', '141.2', '14', '超强台风(Super TY)', '16', '52', '西', '25', '935', '350', '120', '80', '{\"ne\":350,\"se\":250,\"sw\":250,\"nw\":350}', '{\"ne\":120,\"se\":100,\"sw\":100,\"nw\":120}', '{\"ne\":80,\"se\":60,\"sw\":60,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822023', '2018-09-11T14:00:00', '139.9', '14', '超强台风(Super TY)', '17', '58', '西', '25', '925', '380', '140', '80', '{\"ne\":380,\"se\":300,\"sw\":300,\"nw\":380}', '{\"ne\":140,\"se\":120,\"sw\":120,\"nw\":140}', '{\"ne\":80,\"se\":80,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822024', '2018-09-11T17:00:00', '139.2', '13.8', '超强台风(Super TY)', '17', '62', '西', '20', '915', '380', '140', '80', '{\"ne\":380,\"se\":300,\"sw\":300,\"nw\":380}', '{\"ne\":140,\"se\":120,\"sw\":120,\"nw\":140}', '{\"ne\":80,\"se\":80,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822025', '2018-09-11T20:00:00', '138.7', '13.7', '超强台风(Super TY)', '17', '65', '西', '20', '910', '380', '140', '80', '{\"ne\":380,\"se\":300,\"sw\":300,\"nw\":380}', '{\"ne\":140,\"se\":120,\"sw\":120,\"nw\":140}', '{\"ne\":80,\"se\":80,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822026', '2018-09-12T02:00:00', '137.4', '14', '超强台风(Super TY)', '17', '65', '西', '21', '910', '380', '140', '80', '{\"ne\":380,\"se\":300,\"sw\":300,\"nw\":380}', '{\"ne\":140,\"se\":120,\"sw\":120,\"nw\":140}', '{\"ne\":80,\"se\":80,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822027', '2018-09-12T05:00:00', '136.8', '14', '超强台风(Super TY)', '17', '65', '西', '22', '910', '380', '140', '80', '{\"ne\":380,\"se\":300,\"sw\":300,\"nw\":380}', '{\"ne\":140,\"se\":120,\"sw\":120,\"nw\":140}', '{\"ne\":80,\"se\":80,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822028', '2018-09-12T08:00:00', '136.3', '13.9', '超强台风(Super TY)', '17', '65', '西西北', '23', '910', '380', '140', '80', '{\"ne\":380,\"se\":300,\"sw\":300,\"nw\":380}', '{\"ne\":140,\"se\":120,\"sw\":120,\"nw\":140}', '{\"ne\":80,\"se\":80,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822029', '2018-09-12T14:00:00', '135.2', '14', '超强台风(Super TY)', '17', '65', '西', '21', '910', '380', '140', '80', '{\"ne\":380,\"se\":300,\"sw\":300,\"nw\":380}', '{\"ne\":140,\"se\":120,\"sw\":120,\"nw\":140}', '{\"ne\":80,\"se\":80,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822030', '2018-09-12T17:00:00', '134.7', '14.1', '超强台风(Super TY)', '17', '65', '西西北', '21', '910', '380', '140', '80', '{\"ne\":380,\"se\":300,\"sw\":300,\"nw\":380}', '{\"ne\":140,\"se\":120,\"sw\":120,\"nw\":140}', '{\"ne\":80,\"se\":80,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822031', '2018-09-12T20:00:00', '134', '14.3', '超强台风(Super TY)', '17', '65', '西西北', '23', '910', '380', '140', '80', '{\"ne\":380,\"se\":300,\"sw\":300,\"nw\":380}', '{\"ne\":140,\"se\":120,\"sw\":120,\"nw\":140}', '{\"ne\":80,\"se\":80,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822032', '2018-09-13T02:00:00', '132.5', '14.4', '超强台风(Super TY)', '17', '65', '西西北', '22', '910', '380', '140', '80', '{\"ne\":380,\"se\":300,\"sw\":300,\"nw\":380}', '{\"ne\":140,\"se\":120,\"sw\":120,\"nw\":140}', '{\"ne\":80,\"se\":80,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822033', '2018-09-13T05:00:00', '132', '14.4', '超强台风(Super TY)', '17', '65', '西西北', '23', '910', '380', '140', '80', '{\"ne\":380,\"se\":300,\"sw\":300,\"nw\":380}', '{\"ne\":140,\"se\":120,\"sw\":120,\"nw\":140}', '{\"ne\":80,\"se\":80,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822034', '2018-09-13T08:00:00', '131.4', '14.5', '超强台风(Super TY)', '17', '65', '西西北', '23', '910', '380', '140', '80', '{\"ne\":380,\"se\":300,\"sw\":300,\"nw\":380}', '{\"ne\":140,\"se\":120,\"sw\":120,\"nw\":140}', '{\"ne\":80,\"se\":80,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822035', '2018-09-13T11:00:00', '130.7', '14.7', '超强台风(Super TY)', '17', '65', '西西北', '22', '910', '380', '140', '80', '{\"ne\":380,\"se\":300,\"sw\":300,\"nw\":380}', '{\"ne\":140,\"se\":120,\"sw\":120,\"nw\":140}', '{\"ne\":80,\"se\":80,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822036', '2018-09-13T14:00:00', '130.1', '14.7', '超强台风(Super TY)', '17', '65', '西西北', '21', '910', '380', '140', '80', '{\"ne\":380,\"se\":300,\"sw\":300,\"nw\":380}', '{\"ne\":140,\"se\":120,\"sw\":120,\"nw\":140}', '{\"ne\":80,\"se\":80,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822037', '2018-09-13T17:00:00', '129.5', '14.9', '超强台风(Super TY)', '17', '65', '西西北', '22', '910', '380', '140', '80', '{\"ne\":380,\"se\":300,\"sw\":300,\"nw\":380}', '{\"ne\":140,\"se\":120,\"sw\":120,\"nw\":140}', '{\"ne\":80,\"se\":80,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822038', '2018-09-13T20:00:00', '129', '15', '超强台风(Super TY)', '17', '65', '西西北', '22', '910', '380', '140', '80', '{\"ne\":380,\"se\":300,\"sw\":300,\"nw\":380}', '{\"ne\":140,\"se\":120,\"sw\":120,\"nw\":140}', '{\"ne\":80,\"se\":80,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822039', '2018-09-13T23:00:00', '128.4', '15', '超强台风(Super TY)', '17', '65', '西西北', '22', '910', '380', '140', '80', '{\"ne\":380,\"se\":300,\"sw\":300,\"nw\":380}', '{\"ne\":140,\"se\":120,\"sw\":120,\"nw\":140}', '{\"ne\":80,\"se\":80,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822040', '2018-09-14T02:00:00', '127.9', '15.2', '超强台风(Super TY)', '17', '65', '西西北', '26', '910', '720', '210', '80', '{\"ne\":720,\"se\":700,\"sw\":400,\"nw\":550}', '{\"ne\":210,\"se\":180,\"sw\":120,\"nw\":170}', '{\"ne\":80,\"se\":80,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822041', '2018-09-14T05:00:00', '127.5', '15.5', '超强台风(Super TY)', '17', '65', '西西北', '26', '910', '750', '240', '90', '{\"ne\":700,\"se\":750,\"sw\":360,\"nw\":600}', '{\"ne\":240,\"se\":180,\"sw\":100,\"nw\":180}', '{\"ne\":90,\"se\":80,\"sw\":80,\"nw\":90}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822042', '2018-09-14T08:00:00', '127', '15.9', '超强台风(Super TY)', '17', '65', '西西北', '25', '910', '600', '240', '90', '{\"ne\":600,\"se\":500,\"sw\":350,\"nw\":500}', '{\"ne\":240,\"se\":180,\"sw\":100,\"nw\":180}', '{\"ne\":90,\"se\":80,\"sw\":80,\"nw\":90}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822043', '2018-09-14T11:00:00', '126.3', '16.3', '超强台风(Super TY)', '17', '65', '西西北', '28', '910', '600', '240', '90', '{\"ne\":600,\"se\":500,\"sw\":350,\"nw\":500}', '{\"ne\":240,\"se\":180,\"sw\":100,\"nw\":180}', '{\"ne\":90,\"se\":80,\"sw\":80,\"nw\":90}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822044', '2018-09-14T14:00:00', '125.5', '16.6', '超强台风(Super TY)', '17', '65', '西西北', '30', '910', '600', '240', '90', '{\"ne\":600,\"se\":500,\"sw\":350,\"nw\":500}', '{\"ne\":240,\"se\":180,\"sw\":100,\"nw\":180}', '{\"ne\":90,\"se\":80,\"sw\":80,\"nw\":90}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822045', '2018-09-14T17:00:00', '124.9', '17', '超强台风(Super TY)', '17', '65', '西西北', '30', '910', '600', '240', '90', '{\"ne\":600,\"se\":500,\"sw\":350,\"nw\":500}', '{\"ne\":240,\"se\":180,\"sw\":100,\"nw\":180}', '{\"ne\":90,\"se\":80,\"sw\":80,\"nw\":90}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822046', '2018-09-14T20:00:00', '124.2', '17.4', '超强台风(Super TY)', '17', '65', '西西北', '30', '910', '600', '240', '90', '{\"ne\":600,\"se\":500,\"sw\":350,\"nw\":500}', '{\"ne\":240,\"se\":180,\"sw\":100,\"nw\":180}', '{\"ne\":90,\"se\":80,\"sw\":80,\"nw\":90}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822047', '2018-09-14T23:00:00', '123.4', '17.8', '超强台风(Super TY)', '17', '65', '西西北', '30', '910', '600', '240', '90', '{\"ne\":600,\"se\":500,\"sw\":350,\"nw\":500}', '{\"ne\":240,\"se\":180,\"sw\":100,\"nw\":180}', '{\"ne\":90,\"se\":80,\"sw\":80,\"nw\":90}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822048', '2018-09-15T02:00:00', '122.4', '18', '超强台风(Super TY)', '17', '65', '西西北', '27', '910', '600', '240', '90', '{\"ne\":600,\"se\":500,\"sw\":350,\"nw\":500}', '{\"ne\":240,\"se\":180,\"sw\":100,\"nw\":180}', '{\"ne\":90,\"se\":80,\"sw\":80,\"nw\":90}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822049', '2018-09-15T05:00:00', '121.5', '18.1', '超强台风(Super TY)', '17', '58', '西西北', '25', '925', '550', '240', '90', '{\"ne\":550,\"se\":480,\"sw\":480,\"nw\":400}', '{\"ne\":240,\"se\":180,\"sw\":100,\"nw\":180}', '{\"ne\":90,\"se\":80,\"sw\":80,\"nw\":90}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822050', '2018-09-15T08:00:00', '120.7', '18.1', '超强台风(Super TY)', '16', '52', '西西北', '26', '935', '500', '220', '80', '{\"ne\":500,\"se\":380,\"sw\":400,\"nw\":400}', '{\"ne\":220,\"se\":100,\"sw\":160,\"nw\":200}', '{\"ne\":80,\"se\":60,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822051', '2018-09-15T09:00:00', '120.5', '18.1', '强台风(STY)', '15', '50', '西西北', '25', '940', '500', '220', '80', '{\"ne\":500,\"se\":380,\"sw\":400,\"nw\":400}', '{\"ne\":220,\"se\":100,\"sw\":160,\"nw\":200}', '{\"ne\":80,\"se\":60,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822052', '2018-09-15T10:00:00', '120.3', '18.3', '强台风(STY)', '15', '48', '西西北', '20', '945', '500', '220', '80', '{\"ne\":500,\"se\":380,\"sw\":400,\"nw\":400}', '{\"ne\":220,\"se\":100,\"sw\":160,\"nw\":200}', '{\"ne\":80,\"se\":60,\"sw\":80,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822053', '2018-09-15T11:00:00', '120.2', '18.4', '强台风(STY)', '15', '48', '西西北', '27', '945', '550', '270', '80', '{\"ne\":550,\"se\":500,\"sw\":460,\"nw\":400}', '{\"ne\":220,\"se\":270,\"sw\":200,\"nw\":150}', '{\"ne\":60,\"se\":80,\"sw\":80,\"nw\":60}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822054', '2018-09-15T12:00:00', '119.9', '18.4', '强台风(STY)', '15', '48', '西西北', '25', '945', '550', '270', '80', '{\"ne\":550,\"se\":500,\"sw\":460,\"nw\":400}', '{\"ne\":220,\"se\":270,\"sw\":200,\"nw\":150}', '{\"ne\":60,\"se\":80,\"sw\":80,\"nw\":60}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822055', '2018-09-15T13:00:00', '119.7', '18.4', '强台风(STY)', '15', '48', '西西北', '25', '945', '550', '270', '80', '{\"ne\":550,\"se\":500,\"sw\":460,\"nw\":400}', '{\"ne\":220,\"se\":270,\"sw\":200,\"nw\":150}', '{\"ne\":60,\"se\":80,\"sw\":80,\"nw\":60}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822056', '2018-09-15T14:00:00', '119.6', '18.5', '强台风(STY)', '15', '48', '西西北', '28', '945', '550', '270', '80', '{\"ne\":550,\"se\":500,\"sw\":460,\"nw\":400}', '{\"ne\":220,\"se\":270,\"sw\":200,\"nw\":150}', '{\"ne\":60,\"se\":80,\"sw\":80,\"nw\":60}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822057', '2018-09-15T15:00:00', '119.5', '18.6', '强台风(STY)', '15', '48', '西西北', '28', '945', '550', '270', '80', '{\"ne\":550,\"se\":500,\"sw\":460,\"nw\":400}', '{\"ne\":220,\"se\":270,\"sw\":200,\"nw\":150}', '{\"ne\":60,\"se\":80,\"sw\":80,\"nw\":60}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822058', '2018-09-15T16:00:00', '119.4', '18.7', '强台风(STY)', '15', '48', '西西北', '28', '945', '550', '270', '80', '{\"ne\":550,\"se\":500,\"sw\":460,\"nw\":400}', '{\"ne\":220,\"se\":270,\"sw\":200,\"nw\":150}', '{\"ne\":60,\"se\":80,\"sw\":80,\"nw\":60}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822059', '2018-09-15T17:00:00', '119.2', '18.9', '强台风(STY)', '15', '48', '西西北', '25', '945', '550', '270', '80', '{\"ne\":550,\"se\":500,\"sw\":460,\"nw\":400}', '{\"ne\":220,\"se\":270,\"sw\":200,\"nw\":150}', '{\"ne\":60,\"se\":80,\"sw\":80,\"nw\":60}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822060', '2018-09-15T18:00:00', '119', '19.1', '强台风(STY)', '15', '48', '西西北', '28', '945', '550', '270', '80', '{\"ne\":550,\"se\":500,\"sw\":460,\"nw\":400}', '{\"ne\":220,\"se\":270,\"sw\":200,\"nw\":150}', '{\"ne\":60,\"se\":80,\"sw\":80,\"nw\":60}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822061', '2018-09-15T19:00:00', '118.6', '19.3', '强台风(STY)', '15', '48', '西西北', '28', '945', '550', '270', '80', '{\"ne\":550,\"se\":500,\"sw\":460,\"nw\":400}', '{\"ne\":220,\"se\":270,\"sw\":200,\"nw\":150}', '{\"ne\":60,\"se\":80,\"sw\":80,\"nw\":60}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822062', '2018-09-15T20:00:00', '118.3', '19.3', '强台风(STY)', '15', '48', '西西北', '29', '945', '550', '270', '80', '{\"ne\":550,\"se\":500,\"sw\":460,\"nw\":400}', '{\"ne\":220,\"se\":270,\"sw\":200,\"nw\":150}', '{\"ne\":60,\"se\":80,\"sw\":80,\"nw\":60}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822063', '2018-09-15T21:00:00', '118.1', '19.4', '强台风(STY)', '15', '50', '西西北', '29', '940', '550', '270', '80', '{\"ne\":550,\"se\":500,\"sw\":460,\"nw\":400}', '{\"ne\":220,\"se\":270,\"sw\":200,\"nw\":150}', '{\"ne\":60,\"se\":80,\"sw\":80,\"nw\":60}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822064', '2018-09-15T22:00:00', '117.8', '19.5', '强台风(STY)', '15', '50', '西西北', '29', '940', '550', '270', '80', '{\"ne\":550,\"se\":500,\"sw\":460,\"nw\":400}', '{\"ne\":220,\"se\":270,\"sw\":200,\"nw\":150}', '{\"ne\":60,\"se\":80,\"sw\":80,\"nw\":60}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822065', '2018-09-15T23:00:00', '117.6', '19.5', '强台风(STY)', '15', '50', '西西北', '31', '940', '550', '320', '80', '{\"ne\":550,\"se\":500,\"sw\":460,\"nw\":400}', '{\"ne\":320,\"se\":270,\"sw\":240,\"nw\":300}', '{\"ne\":80,\"se\":70,\"sw\":70,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822066', '2018-09-16T00:00:00', '117.3', '19.6', '强台风(STY)', '15', '50', '西西北', '31', '940', '550', '320', '100', '{\"ne\":550,\"se\":500,\"sw\":460,\"nw\":400}', '{\"ne\":320,\"se\":270,\"sw\":240,\"nw\":300}', '{\"ne\":100,\"se\":80,\"sw\":80,\"nw\":100}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822067', '2018-09-16T01:00:00', '117.1', '19.6', '强台风(STY)', '15', '50', '西西北', '31', '940', '550', '320', '100', '{\"ne\":550,\"se\":500,\"sw\":460,\"nw\":400}', '{\"ne\":320,\"se\":270,\"sw\":240,\"nw\":300}', '{\"ne\":100,\"se\":80,\"sw\":80,\"nw\":100}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822068', '2018-09-16T02:00:00', '117', '19.7', '强台风(STY)', '15', '50', '西西北', '32', '940', '550', '270', '80', '{\"ne\":550,\"se\":500,\"sw\":460,\"nw\":400}', '{\"ne\":220,\"se\":270,\"sw\":200,\"nw\":150}', '{\"ne\":60,\"se\":80,\"sw\":80,\"nw\":60}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822069', '2018-09-16T03:00:00', '116.8', '19.8', '强台风(STY)', '15', '50', '西西北', '32', '940', '550', '270', '80', '{\"ne\":550,\"se\":500,\"sw\":460,\"nw\":400}', '{\"ne\":220,\"se\":270,\"sw\":200,\"nw\":150}', '{\"ne\":60,\"se\":80,\"sw\":80,\"nw\":60}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822070', '2018-09-16T04:00:00', '116.5', '20', '强台风(STY)', '15', '50', '西西北', '32', '940', '550', '270', '80', '{\"ne\":550,\"se\":500,\"sw\":460,\"nw\":400}', '{\"ne\":220,\"se\":270,\"sw\":200,\"nw\":150}', '{\"ne\":60,\"se\":80,\"sw\":80,\"nw\":60}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822071', '2018-09-16T05:00:00', '116.2', '20.2', '强台风(STY)', '15', '50', '西西北', '30', '940', '550', '270', '80', '{\"ne\":550,\"se\":500,\"sw\":460,\"nw\":400}', '{\"ne\":220,\"se\":270,\"sw\":200,\"nw\":150}', '{\"ne\":60,\"se\":80,\"sw\":80,\"nw\":60}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822072', '2018-09-16T06:00:00', '116', '20.3', '强台风(STY)', '15', '50', '西西北', '30', '940', '550', '270', '80', '{\"ne\":550,\"se\":500,\"sw\":460,\"nw\":400}', '{\"ne\":220,\"se\":270,\"sw\":200,\"nw\":150}', '{\"ne\":60,\"se\":80,\"sw\":80,\"nw\":60}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822073', '2018-09-16T07:00:00', '115.8', '20.4', '强台风(STY)', '15', '50', '西西北', '30', '940', '500', '250', '80', '{\"ne\":500,\"se\":450,\"sw\":400,\"nw\":350}', '{\"ne\":200,\"se\":250,\"sw\":180,\"nw\":120}', '{\"ne\":60,\"se\":80,\"sw\":80,\"nw\":60}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822074', '2018-09-16T08:00:00', '115.6', '20.6', '强台风(STY)', '15', '50', '西西北', '35', '940', '500', '250', '80', '{\"ne\":500,\"se\":450,\"sw\":400,\"nw\":350}', '{\"ne\":200,\"se\":250,\"sw\":180,\"nw\":120}', '{\"ne\":60,\"se\":80,\"sw\":80,\"nw\":60}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822075', '2018-09-16T09:00:00', '115.3', '20.7', '强台风(STY)', '15', '48', '西西北', '35', '945', '500', '250', '80', '{\"ne\":500,\"se\":450,\"sw\":400,\"nw\":350}', '{\"ne\":200,\"se\":250,\"sw\":180,\"nw\":120}', '{\"ne\":60,\"se\":80,\"sw\":80,\"nw\":60}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822076', '2018-09-16T10:00:00', '115', '20.8', '强台风(STY)', '15', '48', '西西北', '35', '945', '400', '200', '80', '{\"ne\":400,\"se\":300,\"sw\":300,\"nw\":250}', '{\"ne\":200,\"se\":150,\"sw\":100,\"nw\":150}', '{\"ne\":80,\"se\":60,\"sw\":60,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822077', '2018-09-16T11:00:00', '114.7', '21', '强台风(STY)', '15', '48', '西西北', '30', '945', '400', '200', '80', '{\"ne\":400,\"se\":300,\"sw\":300,\"nw\":250}', '{\"ne\":200,\"se\":150,\"sw\":100,\"nw\":150}', '{\"ne\":80,\"se\":60,\"sw\":60,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822078', '2018-09-16T12:00:00', '114.4', '21.2', '强台风(STY)', '15', '48', '西西北', '35', '945', '400', '200', '80', '{\"ne\":400,\"se\":300,\"sw\":300,\"nw\":250}', '{\"ne\":200,\"se\":150,\"sw\":100,\"nw\":150}', '{\"ne\":80,\"se\":60,\"sw\":60,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822079', '2018-09-16T13:00:00', '113.8', '21.4', '强台风(STY)', '15', '48', '西西北', '35', '950', '400', '200', '80', '{\"ne\":400,\"se\":300,\"sw\":300,\"nw\":250}', '{\"ne\":200,\"se\":150,\"sw\":100,\"nw\":150}', '{\"ne\":80,\"se\":60,\"sw\":60,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822080', '2018-09-16T14:00:00', '113.5', '21.5', '强台风(STY)', '15', '48', '西西北', '33', '950', '400', '200', '80', '{\"ne\":400,\"se\":300,\"sw\":300,\"nw\":250}', '{\"ne\":200,\"se\":150,\"sw\":100,\"nw\":150}', '{\"ne\":80,\"se\":60,\"sw\":60,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822081', '2018-09-16T15:00:00', '113.3', '21.6', '强台风(STY)', '15', '48', '西西北', '33', '955', '400', '200', '80', '{\"ne\":400,\"se\":300,\"sw\":300,\"nw\":250}', '{\"ne\":200,\"se\":150,\"sw\":100,\"nw\":150}', '{\"ne\":80,\"se\":60,\"sw\":60,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822082', '2018-09-16T16:00:00', '113', '21.7', '强台风(STY)', '15', '48', '西西北', '33', '955', '400', '200', '80', '{\"ne\":400,\"se\":300,\"sw\":300,\"nw\":250}', '{\"ne\":200,\"se\":150,\"sw\":100,\"nw\":150}', '{\"ne\":80,\"se\":60,\"sw\":60,\"nw\":80}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822083', '2018-09-16T17:00:00', '112.5', '21.9', '强台风(STY)', '14', '45', '西西北', '30', '955', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822084', '2018-09-16T18:00:00', '112.3', '21.8', '强台风(STY)', '14', '42', '西西北', '30', '960', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822085', '2018-09-16T19:00:00', '112', '21.9', '强台风(STY)', '14', '42', '西西北', '30', '960', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822086', '2018-09-16T20:00:00', '111.6', '22', '台风(TY)', '13', '38', '西西北', '30', '965', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822087', '2018-09-16T21:00:00', '111.2', '22.1', '台风(TY)', '12', '35', '西西北', '30', '970', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822088', '2018-09-16T22:00:00', '110.9', '22.2', '台风(TY)', '12', '33', '西西北', '30', '975', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822089', '2018-09-16T23:00:00', '110.6', '22.3', '台风(TY)', '12', '33', '西西北', '30', '975', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822090', '2018-09-17T00:00:00', '110.3', '22.3', '台风(TY)', '12', '33', '西西北', '30', '975', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822091', '2018-09-17T01:00:00', '110.1', '22.4', '台风(TY)', '12', '33', '西西北', '30', '975', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822092', '2018-09-17T02:00:00', '109.9', '22.4', '台风(TY)', '12', '33', '西西北', '27', '975', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822093', '2018-09-17T03:00:00', '109.6', '22.5', '台风(TY)', '12', '33', '西西北', '24', '975', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822094', '2018-09-17T04:00:00', '109.4', '22.6', '强热带风暴(STS)', '11', '30', '西西北', '27', '980', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822095', '2018-09-17T05:00:00', '109.2', '22.7', '强热带风暴(STS)', '11', '30', '西西北', '20', '980', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822096', '2018-09-17T06:00:00', '109', '22.7', '强热带风暴(STS)', '10', '25', '西西北', '20', '985', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822097', '2018-09-17T07:00:00', '108.8', '22.8', '热带风暴(TS)', '9', '23', '西西北', '20', '990', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822098', '2018-09-17T08:00:00', '108.6', '22.9', '热带风暴(TS)', '8', '20', '西西北', '25', '995', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822099', '2018-09-17T09:00:00', '108.5', '23.1', '热带风暴(TS)', '8', '20', '西西北', '25', '995', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822100', '2018-09-17T10:00:00', '108.3', '23.2', '热带风暴(TS)', '8', '18', '西西北', '25', '996', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822101', '2018-09-17T11:00:00', '108.1', '23.2', '热带风暴(TS)', '8', '18', '西西北', '25', '996', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822102', '2018-09-17T12:00:00', '107.8', '23.3', '热带风暴(TS)', '8', '18', '西西北', '22', '996', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822103', '2018-09-17T13:00:00', '107.6', '23.5', '热带风暴(TS)', '8', '18', '西西北', '25', '996', '0', '0', '0', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}', '{\"ne\":0,\"se\":0,\"sw\":0,\"nw\":0}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822104', '2018-09-17T14:00:00', '107.3', '23.7', '热带低压(TD)', '7', '16', '西西北', '20', '998', 'null', 'null', 'null', '{\"ne\":null,\"se\":null,\"sw\":null,\"nw\":null}', '{\"ne\":null,\"se\":null,\"sw\":null,\"nw\":null}', '{\"ne\":null,\"se\":null,\"sw\":null,\"nw\":null}');
INSERT INTO `tf_shanzhu_lj_info` VALUES ('1822105', '2018-09-17T17:00:00', '106.6', '24', '热带低压(TD)', '7', '14', 'null', 'null', '1001', 'null', 'null', 'null', '{\"ne\":null,\"se\":null,\"sw\":null,\"nw\":null}', '{\"ne\":null,\"se\":null,\"sw\":null,\"nw\":null}', '{\"ne\":null,\"se\":null,\"sw\":null,\"nw\":null}');

-- ----------------------------
-- Table structure for tf_shanzhu_yq_info
-- ----------------------------
DROP TABLE IF EXISTS `tf_shanzhu_yq_info`;
CREATE TABLE `tf_shanzhu_yq_info` (
  `wb_id` int(11) NOT NULL COMMENT '微博id',
  `userid` char(255) DEFAULT NULL,
  `username` char(20) DEFAULT NULL,
  `loction` char(20) DEFAULT NULL,
  `text` text,
  `tf_name` char(20) DEFAULT NULL,
  PRIMARY KEY (`wb_id`),
  KEY `台风名称` (`tf_name`),
  KEY `发博地区` (`loction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='台风舆情信息';

-- ----------------------------
-- Records of tf_shanzhu_yq_info
-- ----------------------------
INSERT INTO `tf_shanzhu_yq_info` VALUES ('1809080001', '1624583542', '哼哼小宝贝儿呀84', '其他', '张艺兴深圳的山竹真的是很吓人了庆幸我的兴兴昨天走的快不然就被困在广东了一场台风吹来我的姨母属性看到小努力平安到北京心都放下来了可怜我这只高三狗还要听着狂风怒号写作业给自己一个抱抱?..全文：微博正文', '山竹');
INSERT INTO `tf_shanzhu_yq_info` VALUES ('1809080002', '1770559760', '-Juuuno', '广东 佛山', '每天和我一起吃饭聊天的朋友今天去广州面试了，然后打算回家，到拍毕业照的时候再回来。我终于体会到当年台风山竹来临我回家留她一个人在这里她的感受了。', '山竹');
INSERT INTO `tf_shanzhu_yq_info` VALUES ('1809080003', '1774774522', '文化莞城', '广东 东莞', '近日，市公安局召开了第一场“莞警之星”见面会，共有9名“新时代南粤民警之星”东莞公安候选人亮相。莞城公安分局北隅派出所北隅中心警务区警长冯莞学为其中之一，其在特大台风“山竹”来袭时，安全护送多名群众转移安全地方，被冠以“逆风卫民”称号。特大台风“山竹”来袭期间，莞城公安 ...全文', '山竹');
INSERT INTO `tf_shanzhu_yq_info` VALUES ('1809080004', '1902180640', '江门日报', '广东', '【今冬明春全市拟完成水利建设投资5亿元】今冬明春时期，全市拟完成水利建设投资5亿元，将全力抓好江新联围达标加固、潭江河流治理、西江和潭江重点支流综合治理、龙泉滘水闸泵站等工程建设。今年第22号强台风“山竹”正面袭击我市期间，潭江流域出现100多处堤围漫顶或缺堤现象，新会、台山、开平、鹤 ...全文', '山竹');
INSERT INTO `tf_shanzhu_yq_info` VALUES ('1809080005', '2609972127', '宇间草', '山东', '【图解台风山竹那些事】2018年9月16号年度最强台风“山竹”登陆琼粤，山竹是1983年以来影响深圳最强的台风，带来了大量降雨以及对登陆地点造成了强烈破坏。本期专题团就带大家一起来看一看台风山竹吧。网页链接', '山竹');
INSERT INTO `tf_shanzhu_yq_info` VALUES ('1809080006', '2760847564', 'lovebary', '湖北', '台风山竹真可爱（疯狂咬我） 微博视频', '山竹');
INSERT INTO `tf_shanzhu_yq_info` VALUES ('1809080007', '2872946954', '仲恺发布', '广东', '【仲恺最美逆风者最美同行者受表彰】日前，仲恺高新区对全区各行各业的抗击台风工作者进行表彰。据悉，今年9月中旬，仲恺高新区经历了今年第22号强台风“山竹”带来的狂风暴雨的洗礼。除惠环街道外，其余4个镇（街道）均不同程度出现了内涝、水浸等现象，受灾面积创历史新高。经过全区干部群众共同努力 ...全文', '山竹');
INSERT INTO `tf_shanzhu_yq_info` VALUES ('1809080008', '2905983055', '蜂蜂0504', '湖南 益阳', '抗击超强台风“山竹”的慰问品。嘻嘻嘻', '山竹');
INSERT INTO `tf_shanzhu_yq_info` VALUES ('1809080009', '3166642484', 'Jack不是杰克', '江西 上饶', '那些几万个大批愤怒的被健康猫诈骗的连超强台风“山竹”都不怕的年轻人，都跑到北京维权，你们的保护伞还能遮风挡雨吗？那些穿着白汗衫写着红字的体育人出现在不该出现的地方，我不知道这个责任谁能承担得起？ 南昌 · 白水湖管理处', '山竹');
INSERT INTO `tf_shanzhu_yq_info` VALUES ('1809080010', '3687065371', '刘文一o曾在柴河', '辽宁 沈阳', '发表了博文《与台风擦肩而过》鸟儿还巢船入港山竹欲来喑香江多少南来北往客今夜辗转倍思乡与台风擦肩而过', '山竹');
INSERT INTO `tf_shanzhu_yq_info` VALUES ('1809080011', '6101653834', '宋俊彰', '广东 深圳', '台风过后的小公园我家门前的小公园被这次的山竹台风刮得一片狼藉。       小公园被山竹台风刮得一片狼藉，一棵一棵像雨伞似的大树被刮倒了，有些壮大的大树的上下枝干被刮断了，或者有些壮大的树的上面的枝干也被刮断了，以前还有些像绿色太阳伞的大树，现在大树的叶子都被吹跑了，人 ...全文', '山竹');
INSERT INTO `tf_shanzhu_yq_info` VALUES ('1809080012', '6343266637', '搞笑友', '河南', '台风山竹登陆，逆风行者 谢谢你们，逆风而行的人！ 搞笑友的秒拍视频', '山竹');

-- ----------------------------
-- Table structure for yq2tf
-- ----------------------------
DROP TABLE IF EXISTS `yq2tf`;
CREATE TABLE `yq2tf` (
  `wb_id` int(11) NOT NULL,
  `tf_name` varchar(255) NOT NULL,
  PRIMARY KEY (`wb_id`,`tf_name`),
  KEY `tf_name` (`tf_name`),
  CONSTRAINT `yq2tf_ibfk_1` FOREIGN KEY (`wb_id`) REFERENCES `tf_shanzhu_yq_info` (`wb_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `yq2tf_ibfk_2` FOREIGN KEY (`tf_name`) REFERENCES `tf_info` (`tf_name`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='舆情与台风对应关系表';

-- ----------------------------
-- Records of yq2tf
-- ----------------------------
INSERT INTO `yq2tf` VALUES ('1809080001', '山竹');
INSERT INTO `yq2tf` VALUES ('1809080002', '山竹');
INSERT INTO `yq2tf` VALUES ('1809080003', '山竹');
INSERT INTO `yq2tf` VALUES ('1809080004', '山竹');
INSERT INTO `yq2tf` VALUES ('1809080005', '山竹');
INSERT INTO `yq2tf` VALUES ('1809080006', '山竹');
INSERT INTO `yq2tf` VALUES ('1809080007', '山竹');
INSERT INTO `yq2tf` VALUES ('1809080008', '山竹');
INSERT INTO `yq2tf` VALUES ('1809080009', '山竹');
INSERT INTO `yq2tf` VALUES ('1809080010', '山竹');
INSERT INTO `yq2tf` VALUES ('1809080011', '山竹');
INSERT INTO `yq2tf` VALUES ('1809080012', '山竹');
