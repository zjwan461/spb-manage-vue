/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : localhost:3306
 Source Schema         : open_source

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : 65001

 Date: 01/02/2020 03:11:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_am_power
-- ----------------------------
DROP TABLE IF EXISTS `tb_am_power`;
CREATE TABLE `tb_am_power`  (
  `power_id` int(11) NOT NULL AUTO_INCREMENT,
  `power_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`power_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_am_power
-- ----------------------------
INSERT INTO `tb_am_power` VALUES (1, 'add_product');
INSERT INTO `tb_am_power` VALUES (2, 'delete_product');
INSERT INTO `tb_am_power` VALUES (3, 'update_product');
INSERT INTO `tb_am_power` VALUES (4, 'select_product');
INSERT INTO `tb_am_power` VALUES (5, 'update_pwd');
INSERT INTO `tb_am_power` VALUES (6, 'update_info');
INSERT INTO `tb_am_power` VALUES (7, 'pay_ali');
INSERT INTO `tb_am_power` VALUES (8, 'pay_wechat');
INSERT INTO `tb_am_power` VALUES (9, 'add_user');
INSERT INTO `tb_am_power` VALUES (10, 'update_user_status');
INSERT INTO `tb_am_power` VALUES (11, 'update_user_role');
INSERT INTO `tb_am_power` VALUES (12, 'answer_questionnaire');
INSERT INTO `tb_am_power` VALUES (13, 'select_questionnaire_history');
INSERT INTO `tb_am_power` VALUES (14, 'add_questionnaire');
INSERT INTO `tb_am_power` VALUES (15, 'delete_questionnaire');

-- ----------------------------
-- Table structure for tb_am_role
-- ----------------------------
DROP TABLE IF EXISTS `tb_am_role`;
CREATE TABLE `tb_am_role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `role_alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_am_role
-- ----------------------------
INSERT INTO `tb_am_role` VALUES (1, '超级管理员', 'super_admin');
INSERT INTO `tb_am_role` VALUES (2, '管理员', 'admin');
INSERT INTO `tb_am_role` VALUES (3, '白金会员', 'super_user');
INSERT INTO `tb_am_role` VALUES (4, '黄金会员', 'user');
INSERT INTO `tb_am_role` VALUES (5, '游客', 'guest');

-- ----------------------------
-- Table structure for tb_am_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_am_user`;
CREATE TABLE `tb_am_user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password_salt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `phone_num` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `login_time` timestamp(0) NULL DEFAULT NULL,
  `login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pic` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address_province` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `address_district` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_am_user
-- ----------------------------
INSERT INTO `tb_am_user` VALUES (1, 'suben', '4d6569be891ac818077f7fd6f1cc0625', '123456', '苏犇', 'M', '1995-10-17', '13823684568', '826935261@qq.com', '2019-07-11 12:23:39', '127.0.0.1', 'Y', '1564066556140IMG_20190603_151305.jpg', '湖南省', '娄底市', '娄星区', '长得好看,篮球打得好. 会一点前端,会一点后端!!!!', 1);
INSERT INTO `tb_am_user` VALUES (2, 'suben01', '4d6569be891ac818077f7fd6f1cc0625', '123456', '苏犇1', 'M', '1995-10-17', NULL, NULL, '2019-07-11 12:23:39', '127.0.0.1', 'Y', '1563593097516IMG_20190603_151302.jpg', '湖南省', '娄底市', '娄星区', '长得好看,篮球打得好. 会一点前端,会一点后端!!!!', 1);
INSERT INTO `tb_am_user` VALUES (3, 'suben02', '4d6569be891ac818077f7fd6f1cc0625', '123456', '苏2', 'M', '1995-10-17', NULL, NULL, '2019-07-11 12:23:39', '127.0.0.1', 'Y', '1563593097516IMG_20190603_151302.jpg', '湖南省', '娄底市', '娄星区', '长得好看,篮球打得好. 会一点前端,会一点后端!!!!', 1);
INSERT INTO `tb_am_user` VALUES (4, 'suben03', '4d6569be891ac818077f7fd6f1cc0625', '123456', '苏犇3', 'M', '1995-10-17', NULL, NULL, '2019-07-11 12:23:39', '127.0.0.1', 'Y', '1563593097516IMG_20190603_151302.jpg', '湖南省', '娄底市', '娄星区', '长得好看,篮球打得好. 会一点前端,会一点后端!!!!', 1);
INSERT INTO `tb_am_user` VALUES (5, 'suben04', '4d6569be891ac818077f7fd6f1cc0625', '123456', '苏犇34', 'M', '1995-10-17', NULL, NULL, '2019-07-11 12:23:39', '127.0.0.1', 'Y', '1563593097516IMG_20190603_151302.jpg', '湖南省', '娄底市', '娄星区', '长得好看,篮球打得好. 会一点前端,会一点后端!!!!', 1);
INSERT INTO `tb_am_user` VALUES (6, 'suben05', '4d6569be891ac818077f7fd6f1cc0625', '123456', '苏犇4', 'M', '1995-10-17', NULL, NULL, '2019-07-11 12:23:39', '127.0.0.1', 'Y', '1563593097516IMG_20190603_151302.jpg', '湖南省', '娄底市', '娄星区', '长得好看,篮球打得好. 会一点前端,会一点后端!!!!', 1);
INSERT INTO `tb_am_user` VALUES (7, 'suben06', '4d6569be891ac818077f7fd6f1cc0625', '123456', '苏犇5', 'M', '1995-10-17', NULL, NULL, '2019-07-11 12:23:39', '127.0.0.1', 'Y', '1563593097516IMG_20190603_151302.jpg', '湖南省', '娄底市', '娄星区', '长得好看,篮球打得好. 会一点前端,会一点后端!!!!', 1);
INSERT INTO `tb_am_user` VALUES (8, 'xiaoai01', '4d6569be891ac818077f7fd6f1cc0625', '123456', '苏犇6', 'M', '1995-10-17', NULL, NULL, '2019-07-11 12:23:39', '127.0.0.1', 'Y', '1563593097516IMG_20190603_151302.jpg', '湖南省', '娄底市', '娄星区', '长得好看,篮球打得好. 会一点前端,会一点后端!!!!', 1);
INSERT INTO `tb_am_user` VALUES (9, 'xiaoai02', '4d6569be891ac818077f7fd6f1cc0625', '123456', '苏犇7', 'M', '1995-10-17', NULL, NULL, '2019-07-11 12:23:39', '127.0.0.1', 'Y', '1563593097516IMG_20190603_151302.jpg', '湖南省', '娄底市', '娄星区', '长得好看,篮球打得好. 会一点前端,会一点后端!!!!', 1);
INSERT INTO `tb_am_user` VALUES (10, 'xiaoai03', '4d6569be891ac818077f7fd6f1cc0625', '123456', '苏犇9', 'M', '1995-10-17', NULL, NULL, '2019-07-11 12:23:39', '127.0.0.1', 'Y', '1563593097516IMG_20190603_151302.jpg', '湖南省', '娄底市', '娄星区', '长得好看,篮球打得好. 会一点前端,会一点后端!!!!', 1);

-- ----------------------------
-- Table structure for tb_bg_blog
-- ----------------------------
DROP TABLE IF EXISTS `tb_bg_blog`;
CREATE TABLE `tb_bg_blog`  (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `blog_body` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `online_time` timestamp(0) NULL DEFAULT NULL,
  `read_num` bigint(20) NULL DEFAULT NULL,
  `like_num` bigint(20) NULL DEFAULT NULL,
  `part` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`blog_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_bg_blog
-- ----------------------------
INSERT INTO `tb_bg_blog` VALUES (1, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (2, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 2);
INSERT INTO `tb_bg_blog` VALUES (3, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (4, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (5, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 2);
INSERT INTO `tb_bg_blog` VALUES (6, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 2);
INSERT INTO `tb_bg_blog` VALUES (7, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 2);
INSERT INTO `tb_bg_blog` VALUES (8, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 2);
INSERT INTO `tb_bg_blog` VALUES (9, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 2);
INSERT INTO `tb_bg_blog` VALUES (10, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (11, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (12, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (13, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (14, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (15, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (16, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (17, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (18, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (19, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (20, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (21, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (22, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (23, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (24, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (25, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (26, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (27, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (28, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (29, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (30, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (31, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (32, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (33, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);
INSERT INTO `tb_bg_blog` VALUES (34, 'shiro整合springboot', 'shiro整合spring boot遇到的坑', '2019-07-21 22:55:59', 10, 10, '技术博客', 1);

-- ----------------------------
-- Table structure for tb_bg_collection
-- ----------------------------
DROP TABLE IF EXISTS `tb_bg_collection`;
CREATE TABLE `tb_bg_collection`  (
  `collection_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  PRIMARY KEY (`collection_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_bg_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_bg_comment`;
CREATE TABLE `tb_bg_comment`  (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_body` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `comment_time` timestamp(0) NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `blog_id` int(11) NOT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_bh_role_power
-- ----------------------------
DROP TABLE IF EXISTS `tb_bh_role_power`;
CREATE TABLE `tb_bh_role_power`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `power_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_bh_role_power
-- ----------------------------
INSERT INTO `tb_bh_role_power` VALUES (1, 1, 1);
INSERT INTO `tb_bh_role_power` VALUES (2, 1, 2);
INSERT INTO `tb_bh_role_power` VALUES (3, 1, 3);
INSERT INTO `tb_bh_role_power` VALUES (4, 1, 4);
INSERT INTO `tb_bh_role_power` VALUES (5, 1, 5);
INSERT INTO `tb_bh_role_power` VALUES (6, 1, 6);
INSERT INTO `tb_bh_role_power` VALUES (7, 1, 7);
INSERT INTO `tb_bh_role_power` VALUES (8, 1, 8);
INSERT INTO `tb_bh_role_power` VALUES (9, 1, 9);
INSERT INTO `tb_bh_role_power` VALUES (10, 1, 10);
INSERT INTO `tb_bh_role_power` VALUES (11, 1, 11);
INSERT INTO `tb_bh_role_power` VALUES (12, 1, 12);
INSERT INTO `tb_bh_role_power` VALUES (13, 1, 13);
INSERT INTO `tb_bh_role_power` VALUES (14, 1, 14);
INSERT INTO `tb_bh_role_power` VALUES (15, 1, 15);

-- ----------------------------
-- Table structure for tb_re_relation
-- ----------------------------
DROP TABLE IF EXISTS `tb_re_relation`;
CREATE TABLE `tb_re_relation`  (
  `relation_id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `ruid` int(11) NOT NULL,
  PRIMARY KEY (`relation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_re_relation
-- ----------------------------
INSERT INTO `tb_re_relation` VALUES (1, 1, 2);
INSERT INTO `tb_re_relation` VALUES (2, 1, 3);
INSERT INTO `tb_re_relation` VALUES (3, 1, 4);
INSERT INTO `tb_re_relation` VALUES (4, 2, 1);
INSERT INTO `tb_re_relation` VALUES (5, 2, 3);
INSERT INTO `tb_re_relation` VALUES (6, 2, 5);
INSERT INTO `tb_re_relation` VALUES (7, 3, 1);
INSERT INTO `tb_re_relation` VALUES (8, 3, 2);

SET FOREIGN_KEY_CHECKS = 1;
