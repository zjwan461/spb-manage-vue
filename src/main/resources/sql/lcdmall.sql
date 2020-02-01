/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : localhost:3306
 Source Schema         : lcdmall

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : 65001

 Date: 01/02/2020 03:10:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_am_admin
-- ----------------------------
DROP TABLE IF EXISTS `tb_am_admin`;
CREATE TABLE `tb_am_admin`  (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `admin_password` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `admin_nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_desc` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_email` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `admin_sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stat` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `wrong_pwd_time` int(11) NOT NULL,
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_am_admin
-- ----------------------------
INSERT INTO `tb_am_admin` VALUES (1, 'suben', '7c6a180b36896a0a8c02787eeafb0e4c', '苏犇', '技术超群,行业头牌。技术领先！', '826935261@qq.com', '13823684568', 'M', 'Y', 0, '0:0:0:0:0:0:0:1', 1);

-- ----------------------------
-- Table structure for tb_am_brand
-- ----------------------------
DROP TABLE IF EXISTS `tb_am_brand`;
CREATE TABLE `tb_am_brand`  (
  `BRAND_ID` int(11) NOT NULL AUTO_INCREMENT,
  `BRAND_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `BRAND_IMG` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`BRAND_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_am_brand
-- ----------------------------
INSERT INTO `tb_am_brand` VALUES (1, 'AUO', NULL);
INSERT INTO `tb_am_brand` VALUES (2, 'Tianma', NULL);
INSERT INTO `tb_am_brand` VALUES (3, 'Innolux', NULL);
INSERT INTO `tb_am_brand` VALUES (4, 'CMO', NULL);
INSERT INTO `tb_am_brand` VALUES (5, 'BOE', NULL);
INSERT INTO `tb_am_brand` VALUES (6, 'HannStar', NULL);
INSERT INTO `tb_am_brand` VALUES (7, 'Samsung', NULL);
INSERT INTO `tb_am_brand` VALUES (8, 'LG', NULL);
INSERT INTO `tb_am_brand` VALUES (9, 'JDI', NULL);
INSERT INTO `tb_am_brand` VALUES (10, 'Mitsubishi', NULL);
INSERT INTO `tb_am_brand` VALUES (11, 'Truly', NULL);
INSERT INTO `tb_am_brand` VALUES (12, 'Sharp', NULL);
INSERT INTO `tb_am_brand` VALUES (13, 'SANYO', NULL);
INSERT INTO `tb_am_brand` VALUES (14, 'EPSON', NULL);
INSERT INTO `tb_am_brand` VALUES (15, 'CPT', NULL);
INSERT INTO `tb_am_brand` VALUES (16, 'HITACHI', NULL);
INSERT INTO `tb_am_brand` VALUES (17, 'Toshiba', NULL);
INSERT INTO `tb_am_brand` VALUES (18, 'Fujitsu', NULL);
INSERT INTO `tb_am_brand` VALUES (19, 'Century', NULL);

-- ----------------------------
-- Table structure for tb_am_product
-- ----------------------------
DROP TABLE IF EXISTS `tb_am_product`;
CREATE TABLE `tb_am_product`  (
  `PRO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRO_SIZE` double(11, 2) NOT NULL,
  `PRO_RESOLUTION` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRO_OD` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRO_AA` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRO_DISPLAY_MODE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRO_IF` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRO_BRIGHT` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRO_OP_TEMP` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRO_ST_TEMP` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PIN` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRO_IMG` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRO_PDF` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRO_FEATURES` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRO_FEATURES_EN` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRO_APPLICATION` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRO_APPLICATION_EN` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRO_DESC` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PRO_DESC_EN` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CREATE_TIME` timestamp(0) NOT NULL,
  `stat` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PRO_TYPE_ID` int(11) NOT NULL,
  `BRAND_ID` int(11) NOT NULL,
  PRIMARY KEY (`PRO_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_am_product
-- ----------------------------
INSERT INTO `tb_am_product` VALUES (1, 3.50, 'QVGA(320*240)', '42.72*60.26*2.20', '36.72*48.96', 'TN,NW', 'SPI,RGB', '300', '-20~70', ' -30~80', 'E057QTZ-801', 'n.jpg', 'G150XG01 V3.pdf', '超高亮度,背光寿命大于5万小时', 'Ultra Hight Brightness;Lamp > 50K Hours', '工業電腦', 'Industrial PC', '产品描述', 'Eng description', '2018-09-18 23:27:08', 'Y', 1, 1);
INSERT INTO `tb_am_product` VALUES (2, 5.00, 'QVGA(320*240)', '42.72*59.26*2.40', '36.72*48.96', 'TN,NW', 'MCU 16bit', '200', '-20~70', ' -30~80', 'E057QTZ-802', 'n.jpg', 'G150XG01 V3.pdf', '超高亮度,背光寿命大于5万小时', 'Ultra Hight Brightness;Lamp > 50K Hours', '工業電腦', 'Industrial PC', '产品描述', 'Eng description', '2018-09-16 11:56:07', 'Y', 2, 2);
INSERT INTO `tb_am_product` VALUES (3, 7.00, 'QVGA(320*240)', '42.72*60.26*4.10\r\n', '36.72*48.96\r\n', 'TN,NW', 'MCU 16bit', '200', '-20~70', ' -30~80', 'E057QTZ-803', 'n.jpg', 'G150XG01 V3.pdf', '超高亮度,背光寿命大于5万小时', 'Ultra Hight Brightness;Lamp > 50K Hours', '工業電腦', 'Industrial PC', '产品描述', 'Eng description', '2018-09-16 11:56:07', 'Y', 3, 3);
INSERT INTO `tb_am_product` VALUES (4, 10.10, 'QVGA(340*320)', '42.72*60.26*2.20', '36.72*48.96', 'IPS', 'MCU8/16,RGB 18bit', '350', '-20~70', ' -30~80', 'E057QTZ-804', 'n.jpg', 'G150XG01 V3.pdf', '超高亮度,背光寿命大于5万小时', 'Ultra Hight Brightness;Lamp > 50K Hours', '工業電腦', 'Industrial PC', '产品描述', 'Eng description', '2018-09-16 11:56:12', 'Y', 4, 4);
INSERT INTO `tb_am_product` VALUES (5, 12.10, '240*320', '50.2*69.2*2.75', '43.2*57.6\r\n', 'IPS\r\n', 'MCU,RGB,SPI ', '350', '-20~70', ' -30~80', 'E057QTZ-805', 'n.jpg', 'G150XG01 V3.pdf', '超高亮度,背光寿命大于5万小时', 'Ultra Hight Brightness;Lamp > 50K Hours', '工業電腦', 'Industrial PC', '产品描述', 'Eng description', '2018-09-16 18:17:43', 'Y', 5, 5);
INSERT INTO `tb_am_product` VALUES (6, 15.60, 'QVGA(320*240)', '62.48*52.96*3.05', '56.88*42.66', 'TN,NW', 'MCU-18/16/9/8Bit,RGB-18Bit', '250', '-20~70', ' -30~80', 'E057QTZ-806', 'n.jpg', 'G150XG01 V3.pdf', '超高亮度,背光寿命大于5万小时', 'Ultra Hight Brightness;Lamp > 50K Hours', '工業電腦', 'Industrial PC', '产品描述', 'Eng description', '2018-09-16 11:56:08', 'Y', 1, 6);
INSERT INTO `tb_am_product` VALUES (7, 17.00, 'QVGA(240*320)', '50.00*69.2*2.70', '43.2*57.6', 'TN,NW', 'MCU-18/16/9/8Bit', '350', '-20~70', ' -30~80', 'E057QTZ-807', 'n.jpg', 'G150XG01 V3.pdf', '超高亮度,背光寿命大于5万小时', 'Ultra Hight Brightness;Lamp > 50K Hours', '工業電腦', 'Industrial PC', '产品描述', 'Eng description', '2018-09-16 11:56:08', 'Y', 2, 7);
INSERT INTO `tb_am_product` VALUES (8, 18.50, 'QVGA(240*320)', '50.2*69.2*2.75\r\n', '43.2*57.6\r\n', 'TN,NW', 'RGB-18Bit', '360', ' -20~70', ' -30~80', 'E057QTZ-808', 'n.jpg', 'G150XG01 V3.pdf', '超高亮度,背光寿命大于5万小时', 'Ultra Hight Brightness;Lamp > 50K Hours', '工業電腦', 'Industrial PC', '产品描述', 'Eng description', '2018-09-16 11:56:10', 'Y', 3, 8);
INSERT INTO `tb_am_product` VALUES (9, 21.50, 'QVGA(240*320)\r\n', '50.2*69.2*2.75\r\n', '43.2*57.6\r\n', 'IPS\r\n', 'MCU-18/16/9/8 Bit,RGB-18/16/6 Bit,SPI 3-Line,4-Line', '300', ' -20~70', ' -30~80', 'E057QTZ-809', 'n.jpg', 'G150XG01 V3.pdf', '超高亮度,背光寿命大于5万小时', 'Ultra Hight Brightness;Lamp > 50K Hours', '工業電腦', 'Industrial PC', '产品描述', 'Eng description', '2018-09-16 11:56:13', 'Y', 4, 9);
INSERT INTO `tb_am_product` VALUES (10, 22.00, 'QVGA(240*320)', '50.2*69.2*3.95', '43.2*57.6', 'TN,NW', 'MCU-18/16/9/8Bit,RGB-18Bit', '300', ' -20~70', '-30~80', 'E057QTZ-810', 'n.jpg', 'G150XG01 V3.pdf', '超高亮度,背光寿命大于5万小时', 'Ultra Hight Brightness;Lamp > 50K Hours', '工業電腦', 'Industrial PC', '产品描述', 'Eng description', '2018-09-16 11:56:13', 'Y', 5, 10);
INSERT INTO `tb_am_product` VALUES (11, 23.00, 'QVGA(320*240)', '62.48*52.96*3.05\r\n', '56.88*42.66\r\n', 'TN,NW', 'RGB', '350', ' -20~70', '-30~80', 'E057QTZ-811', 'n.jpg', 'G150XG01 V3.pdf', '超高亮度,背光寿命大于5万小时', 'Ultra Hight Brightness;Lamp > 50K Hours', '工業電腦', 'Industrial PC', '产品描述', 'Eng description', '2018-09-16 11:56:14', 'Y', 1, 11);
INSERT INTO `tb_am_product` VALUES (12, 24.00, 'WQVGA(240*400)', '47.66*80.9*2.3\r\n', '41.76* 69.6\r\n', 'TN,NW', 'RGB , MCU, SPI', '220', ' -20~70', '-30~80', 'E057QTZ-812', 'n.jpg', 'G150XG01 V3.pdf', '超高亮度,背光寿命大于5万小时', 'Ultra Hight Brightness;Lamp > 50K Hours', '工業電腦', 'Industrial PC', '产品描述', 'Eng description', '2018-09-16 11:56:14', 'Y', 2, 12);
INSERT INTO `tb_am_product` VALUES (13, 27.00, 'WQVGA(240*400)', '47.66*80.90*2.30', '41.76* 69.6\r\n', 'TN,NW', 'MCU 16bit/RGB 16bit,SPI 3/4 Line', '600', ' -20~70', '-30~80', 'E057QTZ-813', 'n.jpg', 'G150XG01 V3.pdf', '超高亮度,背光寿命大于5万小时', 'Ultra Hight Brightness;Lamp > 50K Hours', '工業電腦', 'Industrial PC', '产品描述', 'Eng description', '2018-09-16 11:56:15', 'Y', 3, 13);
INSERT INTO `tb_am_product` VALUES (14, 28.00, 'QVGA(240*320)', '55.04*77.7*2.5', '47.88*63.84', 'TN,NW', 'MCU', '200', ' -20~70', '-30~80', 'E057QTZ-814', 'n.jpg', 'G150XG01 V3.pdf', '超高亮度,背光寿命大于5万小时', 'Ultra Hight Brightness;Lamp > 50K Hours', '工業電腦', 'Industrial PC', '产品描述', 'Eng description', '2018-09-16 11:56:15', 'Y', 4, 14);
INSERT INTO `tb_am_product` VALUES (15, 32.00, 'WQVGA(240*400)', '47.66*80.90*2.30', '41.76*69.60', 'TN,NW', 'RGB , MCU, SPI\r\n', '300', ' -20~70', '-30~80', 'E057QTZ-815', 'n.jpg', 'G150XG01 V3.pdf', '超高亮度,背光寿命大于5万小时', 'Ultra Hight Brightness;Lamp > 50K Hours', '工業電腦', 'Industrial PC', '产品描述', 'Eng description', '2018-09-16 11:56:15', 'Y', 5, 15);
INSERT INTO `tb_am_product` VALUES (16, 36.00, 'QVGA(320*240)', '76.9*63.9*4.2', '70.08*52.56\r\n', 'TN,NW', 'CPU,SPI , RGB\r\n', '220', '-20~70', '-30~80', 'E057QTZ-816', 'n.jpg', 'G150XG01 V3.pdf', '超高亮度,背光寿命大于5万小时', 'Ultra Hight Brightness;Lamp > 50K Hours', '工業電腦', 'Industrial PC', '产品描述', 'Eng description', '2018-09-16 11:56:16', 'Y', 1, 16);
INSERT INTO `tb_am_product` VALUES (17, 3.50, 'QVGA(320*240)', '76.84*63.84*3.27\r\n', '70.08*52.56\r\n', 'TN,NW', 'CPU,SPI , RGB', '400', '-20~70', '-30~80', 'E057QTZ-817', 'n.jpg', 'G150XG01 V3.pdf', '超高亮度,背光寿命大于5万小时', 'Ultra Hight Brightness;Lamp > 50K Hours', '工業電腦', 'Industrial PC', '产品描述', 'Eng description', '2018-09-16 11:56:16', 'Y', 2, 17);
INSERT INTO `tb_am_product` VALUES (18, 3.50, 'QVGA(320*240)', '76.90*63.90*3.26', '70.08*52.56', 'IPS', '24bit-RGB', '350', '-20~70', '-30~80', 'E057QTZ-818', 'n.jpg', 'G150XG01 V3.pdf', '超高亮度,背光寿命大于5万小时', 'Ultra Hight Brightness;Lamp > 50K Hours', '工業電腦', 'Industrial PC', '产品描述', 'Eng description', '2018-09-16 11:56:16', 'Y', 3, 18);
INSERT INTO `tb_am_product` VALUES (19, 3.50, 'QVGA(320*240)', '76.90*64.0*4.25', '70.08*52.56', 'TN,NW', '24bit-RGB', '250', ' -20~60', ' -30~70', 'E057QTZ-819', 'n.jpg', 'G150XG01 V3.pdf', '超高亮度,背光寿命大于5万小时', 'Ultra Hight Brightness;Lamp > 50K Hours', '工業電腦', 'Industrial PC', '产品描述', 'Eng description', '2018-09-16 11:56:19', 'Y', 4, 19);
INSERT INTO `tb_am_product` VALUES (20, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'Y', 4, 8);
INSERT INTO `tb_am_product` VALUES (24, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'N', 4, 8);
INSERT INTO `tb_am_product` VALUES (25, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'N', 4, 8);
INSERT INTO `tb_am_product` VALUES (26, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'N', 4, 8);
INSERT INTO `tb_am_product` VALUES (27, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'N', 4, 8);
INSERT INTO `tb_am_product` VALUES (28, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'N', 4, 8);
INSERT INTO `tb_am_product` VALUES (29, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'N', 4, 8);
INSERT INTO `tb_am_product` VALUES (30, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'N', 4, 8);
INSERT INTO `tb_am_product` VALUES (31, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'N', 4, 8);
INSERT INTO `tb_am_product` VALUES (34, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'N', 4, 8);
INSERT INTO `tb_am_product` VALUES (35, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'N', 4, 8);
INSERT INTO `tb_am_product` VALUES (36, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'N', 4, 8);
INSERT INTO `tb_am_product` VALUES (37, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'N', 4, 8);
INSERT INTO `tb_am_product` VALUES (38, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'N', 4, 8);
INSERT INTO `tb_am_product` VALUES (39, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'Y', 4, 8);
INSERT INTO `tb_am_product` VALUES (40, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'Y', 4, 8);
INSERT INTO `tb_am_product` VALUES (41, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'Y', 4, 8);
INSERT INTO `tb_am_product` VALUES (42, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'Y', 4, 8);
INSERT INTO `tb_am_product` VALUES (43, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'Y', 4, 8);
INSERT INTO `tb_am_product` VALUES (44, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'Y', 4, 8);
INSERT INTO `tb_am_product` VALUES (45, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'Y', 4, 8);
INSERT INTO `tb_am_product` VALUES (46, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'Y', 4, 8);
INSERT INTO `tb_am_product` VALUES (47, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'Y', 4, 8);
INSERT INTO `tb_am_product` VALUES (48, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'Y', 4, 8);
INSERT INTO `tb_am_product` VALUES (49, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'Y', 4, 8);
INSERT INTO `tb_am_product` VALUES (50, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'Y', 4, 8);
INSERT INTO `tb_am_product` VALUES (51, 100.00, 'QVGA(340*320)', '50.2*69.2*2.75', '36.72*48.96', 'TN,NW', 'CPU,SPI,RGB', '1000', '20~70', '50~60', 'abc123', '16645a5076b.jpeg', '166437d3067.pdf', '高亮屏', 'hight light', '工业电脑', 'computer', '品质保证', 'good', '2018-10-06 03:15:04', 'Y', 4, 8);

-- ----------------------------
-- Table structure for tb_am_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_am_role`;
CREATE TABLE `tb_am_role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `update_product` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `update_website_info` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `update_admin` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `back_up` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `update_system` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_am_role
-- ----------------------------
INSERT INTO `tb_am_role` VALUES (1, '超级管理员', 'Y', 'Y', 'Y', 'Y', 'Y');
INSERT INTO `tb_am_role` VALUES (2, '一级管理员', 'Y', 'Y', 'N', 'Y', 'N');
INSERT INTO `tb_am_role` VALUES (3, '二级管理员', 'N', 'Y', 'N', 'Y', 'N');

-- ----------------------------
-- Table structure for tb_am_type
-- ----------------------------
DROP TABLE IF EXISTS `tb_am_type`;
CREATE TABLE `tb_am_type`  (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type_name_en` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `type_img` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_am_type
-- ----------------------------
INSERT INTO `tb_am_type` VALUES (1, '液晶屏', 'TFT LCD Panel', 'hightlight.jpg');
INSERT INTO `tb_am_type` VALUES (2, '液晶屏驱动板', 'AD Board', 'adboard.jpg');
INSERT INTO `tb_am_type` VALUES (3, '高亮屏', 'Hight Brightness LCD TFT LCM', 'hightlight.jpg');
INSERT INTO `tb_am_type` VALUES (4, '长条屏', 'Bar Type LCD', 'bartypepanel.jpg');
INSERT INTO `tb_am_type` VALUES (5, '触摸屏', 'Touch Panel', 'touchpanel.jpg');

-- ----------------------------
-- Table structure for tb_bh_contact
-- ----------------------------
DROP TABLE IF EXISTS `tb_bh_contact`;
CREATE TABLE `tb_bh_contact`  (
  `contact_id` int(11) NOT NULL AUTO_INCREMENT,
  `contact_desc` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact_email` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact_tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact_fax` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `contact_company` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `stat` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `send_time` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`contact_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_bh_contact
-- ----------------------------
INSERT INTO `tb_bh_contact` VALUES (2, '真漂亮', 'sd@qq.com', '苏犇', '', '', '', '2018-08-20 16:51:33', 'N', NULL);
INSERT INTO `tb_bh_contact` VALUES (3, '年后你好', '111@aa.com', '苏犇', '', '', '', '2018-08-21 02:28:23', 'N', NULL);
INSERT INTO `tb_bh_contact` VALUES (4, '去哪里可以提供产品信息', '13823684568@163.com', '苏犇', '13823684568', '', '美显科技', '2018-08-21 02:41:44', 'N', NULL);
INSERT INTO `tb_bh_contact` VALUES (5, '美显科技', '787878@163.com', '张三', '', '', '四方', '2018-08-21 17:10:34', 'N', NULL);
INSERT INTO `tb_bh_contact` VALUES (6, 'bfsgbbddxvbnb提HKYY死干干净净', '8269@163.com', '去看哦直接', '', '', '', '2018-08-22 01:46:24', 'N', NULL);
INSERT INTO `tb_bh_contact` VALUES (7, 'hello', 'dslfjsldf@111.com', '数量大幅减少的看法', '', '', '', '2018-08-31 22:17:10', 'N', NULL);
INSERT INTO `tb_bh_contact` VALUES (8, 'heloise', '826935261@qq.com', '苏犇', '', '', '', '2018-09-02 04:14:20', 'N', NULL);
INSERT INTO `tb_bh_contact` VALUES (9, 'heloise', '826935261@qq.com', '苏犇', '', '', '', '2018-09-04 21:05:15', 'a', '2018-09-04 21:05:15');
INSERT INTO `tb_bh_contact` VALUES (37, 'SDFSDFS', '826935261@qq.com', 'SDFSDF', '', '', '', '2018-09-04 21:11:02', 'S', '2018-09-04 21:10:51');

-- ----------------------------
-- Table structure for tb_bh_cusinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_bh_cusinfo`;
CREATE TABLE `tb_bh_cusinfo`  (
  `cus_id` int(11) NOT NULL AUTO_INCREMENT,
  `cus_addr` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cus_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cus_browser_ua` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` timestamp(0) NOT NULL,
  PRIMARY KEY (`cus_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_bh_login_action
-- ----------------------------
DROP TABLE IF EXISTS `tb_bh_login_action`;
CREATE TABLE `tb_bh_login_action`  (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `login_rolename` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_browser_ua` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `login_time` timestamp(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`login_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_bh_websiteinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_bh_websiteinfo`;
CREATE TABLE `tb_bh_websiteinfo`  (
  `website_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `website_info_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `website_info_title_en` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `website_info_body` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `website_info_body_en` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `website_info_img` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `website_info_keyword` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `website_info_keyword_en` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `website_info_abstract` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `website_info_abstract_en` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_by` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_user_id` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(0) NOT NULL,
  PRIMARY KEY (`website_info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_bh_websiteinfo
-- ----------------------------
INSERT INTO `tb_bh_websiteinfo` VALUES (1, '日本松下电子展', 'Gitex Technology Week 2018', '與美國消費電子展(CES)、德國柏林消費電子展(IFA)並列全球三大消費性電子展的日本最先端電子資訊高科技綜合展(CEATEC JAPAN)，今年為第19屆展出，於10月16日至19日舉行。因2020年日本東京奧運舉辦商機以及IoT(物聯網)的迅速發展，全球電機電子廠商皆視CEATEC為一場重大的成果展示舞臺，展出產品涵蓋電子、通信、資訊之軟硬體產品，為日本各大廠發表新產品之首要櫥窗。', 'GItex Technology Week as the name suggests is an event dedicated to the IT and communications sector and presents the latest in cloud computing designs, automation software, ERP solutions, Data Mobility and security, tracking devices and more. An event that gives innovators and software giants an insight into the future of information technology and cloud computing, Gitex, along withseasoned playes in the business also hosts new innovators and designers so that no speck of innovation is left unexplored. Providing inroads into the Oil & Gas, Healthcare, Government, Retail and Banking and Finance sectors, this IT event brings holistic solutions to the world’s most important industrial sections. The award ceremonies and blogging hubs that form a part of this event are also a runaway hit within the iT industry.', 'info2.jpg', '日本,电子展', 'Japan,electronics exhibition', '中文摘要', 'english abstract', '苏犇', 1, '2018-08-28 22:51:48');
INSERT INTO `tb_bh_websiteinfo` VALUES (2, '2018 香港秋季電子產品展', 'Hong Kong Electronics Fair (Autumn Edition) 2018', '亞洲地區最具規模，門類最廣，貿易性最強的盛會；\r\n中國大陸企業走出國門最簡便的途徑；\r\n全球買家推廣，使您的產品遠銷世界各地；\r\n專業展品分區，為專業買家和參展企業之間搭建最直接的貿易機會', 'A professional trade fair for components, assemblies and electronic production and display technologies jointly organised by Hong Kong Trade Development Council and MMI Asia Pte Ltd.', 'info3.jpg', '香港,电子展', 'HongKong,electronics exhibition', '中文摘要', 'english abstract', '苏犇', 1, '2018-08-28 22:52:52');
INSERT INTO `tb_bh_websiteinfo` VALUES (3, '2018 柏林消費電子暨家電用品展', 'IFA 2018', '消費性電子‧電腦周邊‧視聽娛樂‧家庭影音、白色家電‧手機通訊‧網路與媒體\r\nIFA是消費電子產業中的領導展會，也是最具指標性的消電/家電專業展，更是前百大品牌廠商在第4季上市新品的最重要舞台。IFA為全歐洲規模最大、也最重要的消費性電子暨家電用品展覽會。來自全球各地的參展廠商更各自秀出了許多高科技、話題性十足的產品：不論是高HD影音設備、3D科技、日新月異的穿戴式裝置、SMART TV 、App、平板電腦及觸控生活、智慧家電或最熱門的IoT等。', 'IFA in Berlin, the global trade show for consumer electronics and home appliances, presents the latest products and innovations in the heart of Europe‘s most important regional market. Only IFA offers such a comprehensive overview of the international market and attracts the attention of trade visitors each year from more than 100 countries.\r\n\r\nIFA is the main meeting place for key retailers, buyers, and experts from the industry and the media. Don‘t miss the opportunity to explore emerging trends and celebrate the premieres of new technologies and products.', 'info4.jpg', '柏林,电子展', 'Berlin,electronics exhibition', '中文摘要', 'english abstract', '苏犇', 1, '2018-08-28 22:52:57');

-- ----------------------------
-- Table structure for tb_ss_system
-- ----------------------------
DROP TABLE IF EXISTS `tb_ss_system`;
CREATE TABLE `tb_ss_system`  (
  `sytem_id` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `server_env` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `server_ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `server_domain` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `jdk_version` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `db_version` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `server_date` date NOT NULL,
  PRIMARY KEY (`sytem_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_ss_system
-- ----------------------------
INSERT INTO `tb_ss_system` VALUES ('0000', 'Linux a951034 Centos 7', '47.52.133.120', 'www.lcd-mall.com', '1.8.0_181', 'Mysql 5.7.23', '2018-09-09');

-- ----------------------------
-- Table structure for tb_tx_sale
-- ----------------------------
DROP TABLE IF EXISTS `tb_tx_sale`;
CREATE TABLE `tb_tx_sale`  (
  `sale_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_id` int(11) NOT NULL,
  `sale_time` date NOT NULL,
  PRIMARY KEY (`sale_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_tx_sale
-- ----------------------------
INSERT INTO `tb_tx_sale` VALUES (1, 1, '2018-09-05');
INSERT INTO `tb_tx_sale` VALUES (2, 2, '2018-09-05');
INSERT INTO `tb_tx_sale` VALUES (3, 3, '2018-09-05');
INSERT INTO `tb_tx_sale` VALUES (4, 1, '2018-09-05');
INSERT INTO `tb_tx_sale` VALUES (5, 1, '2018-09-05');
INSERT INTO `tb_tx_sale` VALUES (6, 2, '2018-09-05');
INSERT INTO `tb_tx_sale` VALUES (7, 4, '2018-09-05');

SET FOREIGN_KEY_CHECKS = 1;
