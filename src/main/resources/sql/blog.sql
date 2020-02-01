/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50711
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50711
 File Encoding         : 65001

 Date: 01/02/2020 03:10:34
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_article
-- ----------------------------
DROP TABLE IF EXISTS `tb_article`;
CREATE TABLE `tb_article`  (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `article_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `article_body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `article_type` int(11) NULL DEFAULT NULL,
  `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `article_pic1` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `article_pic2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `article_pic3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_article
-- ----------------------------
INSERT INTO `tb_article` VALUES (1, '爷爷买街边小吃已经30多年', '<p>爷爷每天5点起床，去鸡行里选鸡，选的是大小均匀的老母鸡，送到家里从杀鸡放血开始，鸡血要留着，倒在有盐水的碗里，烧好开水拔了毛连鸡嘴巴鼻子里的粘液都要挤出来。鸡洗干净六只鸡放到一个锅里炖，要炖一个上午，要注意火候鸡皮不能裂。</p>\r\n                            <img src=\"/img/wz_img1.jpg\">\r\n                            <p>\r\n                                炖好的鸡挂在架子上晾干，再一片片剁开，每只鸡剁的块数都是一样，然后把鸡肉放到提前调好的水中腌两个小时，水里面的调料也是爷爷自己去市场买来磨成粉的。锅里还有剩的鸡汤，用鸡汤煮好面叶上面漂着一层绿油油的葱花。</p>\r\n                            <p>\r\n                                以前爷爷都是用扁担一头面叶一头板鸡挑到街上摊位上卖，现在爷爷年纪大了，只能用三轮车推着。摊位摆好奶奶就会慢悠悠的拎着一个保温桶和一个小红桶过来，保温桶里装的是卤鸡蛋，小红桶留着装别人吃剩的骨头喂狗。他们只有晚上出摊，收完摊已经要9点钟了，回去还要洗一天用的抹布和衣服，爷爷奶奶都非常爱干净，摊上的所有抹布纱布都是白色的每天洗的一个油点都看不到。9年前奶奶去世了，爷爷奶奶青梅竹马感情非常好，奶奶去世的时候爷爷甚至还要求过把奶奶埋在院子里。现在爷爷有时候会偷偷跟我说，你奶奶昨天回来看我了，她还给我掖被子，我知道是她，我跟她说你别挂念我，我好的很\r\n                                跑题了。</p>\r\n                            <p>昨天我给爷爷打电话，他跟我说他卖板鸡有人给他拍照，他问别人你拍我干嘛，那个人回答他说我给你照片放到网上，你生意会更好，我爷爷说你不用放网上我都不够卖的。</p>\r', 1, '2019-08-24 12:17:57', 'sy_img1.jpg', NULL, NULL);
INSERT INTO `tb_article` VALUES (2, '空间立体效果图，完美呈现最终效果', '室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境', 2, '2019-08-24 12:17:57', 'sy_img2.jpg', NULL, NULL);
INSERT INTO `tb_article` VALUES (3, '空间立体效果图，完美呈现最终效果', '室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境', 3, '2019-08-24 12:17:57', 'sy_img3.jpg', NULL, NULL);
INSERT INTO `tb_article` VALUES (4, '空间立体效果图，完美呈现最终效果', '室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境', 1, '2019-08-24 12:17:57', 'sy_img4.jpg', NULL, NULL);
INSERT INTO `tb_article` VALUES (5, '空间立体效果图，完美呈现最终效果', '室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境', 1, '2019-08-24 12:17:57', 'sy_img5.jpg', NULL, NULL);
INSERT INTO `tb_article` VALUES (6, '空间立体效果图，完美呈现最终效果', '室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境', 2, '2019-08-24 12:17:57', 'sy_img1.jpg', NULL, NULL);
INSERT INTO `tb_article` VALUES (7, '空间立体效果图，完美呈现最终效果', '室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境', 3, '2019-08-24 12:17:57', 'sy_img2.jpg', NULL, NULL);
INSERT INTO `tb_article` VALUES (8, '空间立体效果图，完美呈现最终效果', '室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境', 2, '2019-08-24 12:17:57', 'sy_img3.jpg', NULL, NULL);
INSERT INTO `tb_article` VALUES (9, '空间立体效果图，完美呈现最终效果', '室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境', 1, '2019-08-24 12:17:57', 'sy_img4.jpg', NULL, NULL);
INSERT INTO `tb_article` VALUES (10, '空间立体效果图，完美呈现最终效果', '室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境', 2, '2019-08-24 12:17:57', 'sy_img5.jpg', NULL, NULL);
INSERT INTO `tb_article` VALUES (11, '空间立体效果图，完美呈现最终效果', '室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境', 3, '2019-08-24 12:17:57', 'sy_img5.jpg', NULL, NULL);
INSERT INTO `tb_article` VALUES (12, '空间立体效果图，完美呈现最终效果', '室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境', 3, '2019-08-24 12:17:57', 'sy_img5.jpg', NULL, NULL);
INSERT INTO `tb_article` VALUES (13, '空间立体效果图，完美呈现最终效果', '室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境', 1, '2019-08-24 12:17:57', 'sy_img5.jpg', NULL, NULL);
INSERT INTO `tb_article` VALUES (14, '空间立体效果图，完美呈现最终效果', '室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境', 1, '2019-08-24 12:17:57', 'sy_img5.jpg', NULL, NULL);
INSERT INTO `tb_article` VALUES (15, '空间立体效果图，完美呈现最终效果', '室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境', 3, '2019-08-24 12:17:57', 'sy_img5.jpg', NULL, NULL);
INSERT INTO `tb_article` VALUES (16, '空间立体效果图，完美呈现最终效果', '室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境', 2, '2019-08-24 12:17:57', 'sy_img5.jpg', NULL, NULL);
INSERT INTO `tb_article` VALUES (17, '空间立体效果图，完美呈现最终效果', '室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境', 1, '2019-08-24 12:17:57', 'sy_img5.jpg', NULL, NULL);
INSERT INTO `tb_article` VALUES (18, '空间立体效果图，完美呈现最终效果', '室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境', 2, '2019-08-24 12:17:57', 'sy_img5.jpg', NULL, NULL);
INSERT INTO `tb_article` VALUES (19, '空间立体效果图，完美呈现最终效果', '室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境', 2, '2019-08-24 12:17:57', 'sy_img5.jpg', NULL, NULL);
INSERT INTO `tb_article` VALUES (20, '空间立体效果图，完美呈现最终效果', '室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境', 1, '2019-08-24 12:17:57', 'sy_img5.jpg', NULL, NULL);
INSERT INTO `tb_article` VALUES (21, '空间立体效果图，完美呈现最终效果', '室内设计作为一门新兴的学科，尽管还只是近数十年的事，但是人们有意识地对自己生活、生产活动的室内进行安排布置，甚至美化装饰，赋予室内环境', 1, '2019-08-24 12:17:57', 'sy_img5.jpg', NULL, NULL);

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `wechat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone_num` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email_addr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `last_login_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (1, 'suben', 'suben', '三头小牛', NULL, NULL, NULL, '2019-08-22 23:46:08');

SET FOREIGN_KEY_CHECKS = 1;
