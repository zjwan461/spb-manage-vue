/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : localhost:3306
 Source Schema         : next-shop

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : 65001

 Date: 01/02/2020 03:11:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bas_area
-- ----------------------------
DROP TABLE IF EXISTS `bas_area`;
CREATE TABLE `bas_area`  (
  `area_id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `city_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`area_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bas_area
-- ----------------------------
INSERT INTO `bas_area` VALUES (1, '青年社区', 'sz', '深圳市宝安区固戍二路');
INSERT INTO `bas_area` VALUES (2, '机关幼儿园', 'ld', '湖南省娄底市闲童街道');
INSERT INTO `bas_area` VALUES (4, '腾讯科技有限公司', 'sz', '高兴中一路');

-- ----------------------------
-- Table structure for bas_art_praise
-- ----------------------------
DROP TABLE IF EXISTS `bas_art_praise`;
CREATE TABLE `bas_art_praise`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `art_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bas_art_praise
-- ----------------------------
INSERT INTO `bas_art_praise` VALUES (28, 1, 11);
INSERT INTO `bas_art_praise` VALUES (30, 1, 8);
INSERT INTO `bas_art_praise` VALUES (31, 1, 6);
INSERT INTO `bas_art_praise` VALUES (36, 1, 5);
INSERT INTO `bas_art_praise` VALUES (37, 2, 3);
INSERT INTO `bas_art_praise` VALUES (39, 1, 13);
INSERT INTO `bas_art_praise` VALUES (40, 1, 15);

-- ----------------------------
-- Table structure for bas_article
-- ----------------------------
DROP TABLE IF EXISTS `bas_article`;
CREATE TABLE `bas_article`  (
  `art_id` int(11) NOT NULL AUTO_INCREMENT,
  `art_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `art_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `art_body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`art_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bas_article
-- ----------------------------
INSERT INTO `bas_article` VALUES (1, '0', NULL, '<p>sdfasfsafas</p>', '2019-06-01 20:32:15', 1);
INSERT INTO `bas_article` VALUES (2, '0', '是的发送到发送到', '<p>士大夫撒</p>', '2019-06-09 14:16:58', 2);
INSERT INTO `bas_article` VALUES (3, '1', '沙发沙发上', '<p>是否撒现场VB吗那你回家kg&nbsp;</p>', '2019-06-01 15:29:31', 1);
INSERT INTO `bas_article` VALUES (4, '0', '拥有诗意的心态,才能拥有诗意的生活', '父爱如山，不善表达。回想十多年前，总记得父亲有个宽厚的肩膀，小小的自己跨坐在上面，越过人山人海去看更广阔的天空，那个时候期望自己有一双翅膀，能够像鸟儿一样飞得高，看得远。虽然父亲有时会和自己开玩笑，但在做错事的时候会受到严厉的训斥。父亲有双粗糙的大手掌，手把手教我走路、骑车，却会在该放手的时刻果断地放开让自己去大胆尝试，那个时候期望快快长大，能够做自己想做的事，不用受父亲的“控制”。父亲是智慧树，他无所不知、无所不晓，虽然你有十万个为什么，但是也难不倒他。', '2019-06-09 14:17:01', 2);
INSERT INTO `bas_article` VALUES (5, '0', '拥有诗意的心态,才能拥有诗意的生活', '父爱如山，不善表达。回想十多年前，总记得父亲有个宽厚的肩膀，小小的自己跨坐在上面，越过人山人海去看更广阔的天空，那个时候期望自己有一双翅膀，能够像鸟儿一样飞得高，看得远。虽然父亲有时会和自己开玩笑，但在做错事的时候会受到严厉的训斥。父亲有双粗糙的大手掌，手把手教我走路、骑车，却会在该放手的时刻果断地放开让自己去大胆尝试，那个时候期望快快长大，能够做自己想做的事，不用受父亲的“控制”。父亲是智慧树，他无所不知、无所不晓，虽然你有十万个为什么，但是也难不倒他。', '2019-06-01 15:38:26', 1);
INSERT INTO `bas_article` VALUES (6, '0', '拥有诗意的心态,才能拥有诗意的生活', '父爱如山，不善表达。回想十多年前，总记得父亲有个宽厚的肩膀，小小的自己跨坐在上面，越过人山人海去看更广阔的天空，那个时候期望自己有一双翅膀，能够像鸟儿一样飞得高，看得远。虽然父亲有时会和自己开玩笑，但在做错事的时候会受到严厉的训斥。父亲有双粗糙的大手掌，手把手教我走路、骑车，却会在该放手的时刻果断地放开让自己去大胆尝试，那个时候期望快快长大，能够做自己想做的事，不用受父亲的“控制”。父亲是智慧树，他无所不知、无所不晓，虽然你有十万个为什么，但是也难不倒他。', '2019-06-09 14:17:02', 2);
INSERT INTO `bas_article` VALUES (7, '0', '拥有诗意的心态,才能拥有诗意的生活', '父爱如山，不善表达。回想十多年前，总记得父亲有个宽厚的肩膀，小小的自己跨坐在上面，越过人山人海去看更广阔的天空，那个时候期望自己有一双翅膀，能够像鸟儿一样飞得高，看得远。虽然父亲有时会和自己开玩笑，但在做错事的时候会受到严厉的训斥。父亲有双粗糙的大手掌，手把手教我走路、骑车，却会在该放手的时刻果断地放开让自己去大胆尝试，那个时候期望快快长大，能够做自己想做的事，不用受父亲的“控制”。父亲是智慧树，他无所不知、无所不晓，虽然你有十万个为什么，但是也难不倒他。', '2019-06-01 15:38:26', 1);
INSERT INTO `bas_article` VALUES (8, '0', '拥有诗意的心态,才能拥有诗意的生活', '父爱如山，不善表达。回想十多年前，总记得父亲有个宽厚的肩膀，小小的自己跨坐在上面，越过人山人海去看更广阔的天空，那个时候期望自己有一双翅膀，能够像鸟儿一样飞得高，看得远。虽然父亲有时会和自己开玩笑，但在做错事的时候会受到严厉的训斥。父亲有双粗糙的大手掌，手把手教我走路、骑车，却会在该放手的时刻果断地放开让自己去大胆尝试，那个时候期望快快长大，能够做自己想做的事，不用受父亲的“控制”。父亲是智慧树，他无所不知、无所不晓，虽然你有十万个为什么，但是也难不倒他。', '2019-06-09 14:17:03', 2);
INSERT INTO `bas_article` VALUES (9, '0', '拥有诗意的心态,才能拥有诗意的生活', '父爱如山，不善表达。回想十多年前，总记得父亲有个宽厚的肩膀，小小的自己跨坐在上面，越过人山人海去看更广阔的天空，那个时候期望自己有一双翅膀，能够像鸟儿一样飞得高，看得远。虽然父亲有时会和自己开玩笑，但在做错事的时候会受到严厉的训斥。父亲有双粗糙的大手掌，手把手教我走路、骑车，却会在该放手的时刻果断地放开让自己去大胆尝试，那个时候期望快快长大，能够做自己想做的事，不用受父亲的“控制”。父亲是智慧树，他无所不知、无所不晓，虽然你有十万个为什么，但是也难不倒他。', '2019-06-01 15:38:26', 1);
INSERT INTO `bas_article` VALUES (10, '3', '明天去旅游', '<ul><li><em><strong>明天和小艾一起去贵阳旅游，好开心。&nbsp; 哈哈哈哈！！！！</strong></em></li></ul>', '2019-06-09 14:17:05', 2);
INSERT INTO `bas_article` VALUES (11, '1', '随手记测试', '<p>测试测试测</p>', '2019-06-09 14:18:01', 1);
INSERT INTO `bas_article` VALUES (12, '0', NULL, '<p>测试</p>', '2019-06-09 16:47:47', 2);
INSERT INTO `bas_article` VALUES (13, '0', NULL, '<p>sadfasd&nbsp;</p>', '2019-06-10 22:23:46', 1);
INSERT INTO `bas_article` VALUES (14, '0', 'ceshi', '<p>测试😀</p>', '2019-06-10 22:36:40', 1);
INSERT INTO `bas_article` VALUES (15, '2', '表情终于能输入了👍', '<p>测试一下表情🧥</p>', '2019-06-10 22:58:58', 1);

-- ----------------------------
-- Table structure for bas_comm_praise
-- ----------------------------
DROP TABLE IF EXISTS `bas_comm_praise`;
CREATE TABLE `bas_comm_praise`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for bas_comment
-- ----------------------------
DROP TABLE IF EXISTS `bas_comment`;
CREATE TABLE `bas_comment`  (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `art_id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `comment_body` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bas_comment
-- ----------------------------
INSERT INTO `bas_comment` VALUES (1, 10, 1, 0, '父爱如山，不善表达。回想十多年前，总记得父亲有个宽厚的肩膀，小小的自己跨坐在上面，越过人山人海去看更广阔的天空，那个时候期望自己有一双翅膀，能够像鸟儿一样飞得高，看得远。虽然父亲有时会和自己开玩笑，但在做错事的时候会受到严厉的训斥。父亲有双粗糙的大手掌。', '2019-06-09 13:59:27');
INSERT INTO `bas_comment` VALUES (2, 11, 1, 0, '评论测试', '2019-06-09 15:29:59');
INSERT INTO `bas_comment` VALUES (3, 11, 1, 0, 'ceshi', '2019-06-09 15:32:16');
INSERT INTO `bas_comment` VALUES (4, 11, 1, 0, '写的不错哦！！', '2019-06-09 15:37:03');
INSERT INTO `bas_comment` VALUES (5, 11, 1, 0, '你好你好', '2019-06-09 15:37:17');
INSERT INTO `bas_comment` VALUES (6, 4, 1, 0, '这篇文章写得真棒哦', '2019-06-09 15:44:38');
INSERT INTO `bas_comment` VALUES (7, 11, 2, 0, '', '2019-06-09 16:55:35');
INSERT INTO `bas_comment` VALUES (8, 14, 1, 0, '表情测试成功😀', '2019-06-10 22:46:08');

-- ----------------------------
-- Table structure for bas_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `bas_dictionary`;
CREATE TABLE `bas_dictionary`  (
  `dic_id` int(11) NOT NULL AUTO_INCREMENT,
  `dic_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dic_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dic_text` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`dic_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bas_dictionary
-- ----------------------------
INSERT INTO `bas_dictionary` VALUES (1, 'city', 'bj', '北京');
INSERT INTO `bas_dictionary` VALUES (2, 'city', 'sh', '上海');
INSERT INTO `bas_dictionary` VALUES (3, 'city', 'gz', '广州');
INSERT INTO `bas_dictionary` VALUES (4, 'city', 'sz', '深圳');
INSERT INTO `bas_dictionary` VALUES (5, 'city', 'sjz', '石家庄');

-- ----------------------------
-- Table structure for bas_user
-- ----------------------------
DROP TABLE IF EXISTS `bas_user`;
CREATE TABLE `bas_user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login_time` timestamp(0) NULL DEFAULT NULL,
  `login_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stat` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone_num` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email_addr` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `home_town` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bas_user
-- ----------------------------
INSERT INTO `bas_user` VALUES (1, 'suben', '720f295275afdf014fc151ba0adcee21', '奔哥', '2019-08-14 21:22:50', '0:0:0:0:0:0:0:1', '\0', 'static\\20190702003438890.jpg', 'M', '没啥优点，就是很帅。会写一点点代码！', '13823684568', '826935261@qq.com', '湖南省邵阳市新邵县', 'Java工程师');
INSERT INTO `bas_user` VALUES (2, 'aiaiai', '0aa93a6cd7e28e255ac585eebb88ee40', '小艾', '2019-06-10 22:27:03', '0:0:0:0:0:0:0:1', 'Y', 'xiaoai.jpg', 'F', NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for sys_request
-- ----------------------------
DROP TABLE IF EXISTS `sys_request`;
CREATE TABLE `sys_request`  (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `broswer_ua` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `request_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`request_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_request
-- ----------------------------
INSERT INTO `sys_request` VALUES (1, 'test broswerUa', '2019-05-27 01:37:07');
INSERT INTO `sys_request` VALUES (2, 'test broswerUa', '2019-05-27 01:41:17');
INSERT INTO `sys_request` VALUES (3, 'test broswerUa', '2019-05-28 00:18:09');
INSERT INTO `sys_request` VALUES (4, 'test broswerUa', '2019-05-28 00:19:55');
INSERT INTO `sys_request` VALUES (5, 'test broswerUa', '2019-05-28 00:20:29');
INSERT INTO `sys_request` VALUES (6, 'test broswerUa', '2019-05-28 00:20:44');

SET FOREIGN_KEY_CHECKS = 1;
