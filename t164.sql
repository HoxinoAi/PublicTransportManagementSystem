/*
 Navicat Premium Dump SQL

 Source Server         : 本地mysql
 Source Server Type    : MySQL
 Source Server Version : 80041 (8.0.41)
 Source Host           : localhost:3306
 Source Schema         : t164

 Target Server Type    : MySQL
 Target Server Version : 80041 (8.0.41)
 File Encoding         : 65001

 Date: 11/04/2025 05:21:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint NULL DEFAULT NULL COMMENT '管理员id',
  `ask` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '提问',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复',
  `isreply` int NULL DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '在线提问' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of chat
-- ----------------------------
INSERT INTO `chat` VALUES (51, '2022-04-04 22:20:10', 1, 1, '提问1', '回复1', 1);
INSERT INTO `chat` VALUES (52, '2022-04-04 22:20:10', 2, 2, '提问2', '回复2', 2);
INSERT INTO `chat` VALUES (53, '2022-04-04 22:20:10', 3, 3, '提问3', '回复3', 3);
INSERT INTO `chat` VALUES (54, '2022-04-04 22:20:10', 4, 4, '提问4', '回复4', 4);
INSERT INTO `chat` VALUES (55, '2022-04-04 22:20:10', 5, 5, '提问5', '回复5', 5);
INSERT INTO `chat` VALUES (56, '2022-04-04 22:20:10', 6, 6, '提问6', '回复6', 6);

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '配置文件' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 'picture1', 'upload/picture1.jpg');
INSERT INTO `config` VALUES (2, 'picture2', 'upload/picture2.jpg');
INSERT INTO `config` VALUES (3, 'picture3', 'upload/picture3.jpg');

-- ----------------------------
-- Table structure for discussgongjiaoluxian
-- ----------------------------
DROP TABLE IF EXISTS `discussgongjiaoluxian`;
CREATE TABLE `discussgongjiaoluxian`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '公交路线评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discussgongjiaoluxian
-- ----------------------------
INSERT INTO `discussgongjiaoluxian` VALUES (81, '2022-04-04 22:20:10', 1, 1, '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discussgongjiaoluxian` VALUES (82, '2022-04-04 22:20:10', 2, 2, '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discussgongjiaoluxian` VALUES (83, '2022-04-04 22:20:10', 3, 3, '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discussgongjiaoluxian` VALUES (84, '2022-04-04 22:20:10', 4, 4, '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discussgongjiaoluxian` VALUES (85, '2022-04-04 22:20:10', 5, 5, '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discussgongjiaoluxian` VALUES (86, '2022-04-04 22:20:10', 6, 6, '用户名6', '评论内容6', '回复内容6');

-- ----------------------------
-- Table structure for discusswangzhangonggao
-- ----------------------------
DROP TABLE IF EXISTS `discusswangzhangonggao`;
CREATE TABLE `discusswangzhangonggao`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '评论内容',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 97 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '网站公告评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of discusswangzhangonggao
-- ----------------------------
INSERT INTO `discusswangzhangonggao` VALUES (91, '2022-04-04 22:20:10', 1, 1, '用户名1', '评论内容1', '回复内容1');
INSERT INTO `discusswangzhangonggao` VALUES (92, '2022-04-04 22:20:10', 2, 2, '用户名2', '评论内容2', '回复内容2');
INSERT INTO `discusswangzhangonggao` VALUES (93, '2022-04-04 22:20:10', 3, 3, '用户名3', '评论内容3', '回复内容3');
INSERT INTO `discusswangzhangonggao` VALUES (94, '2022-04-04 22:20:10', 4, 4, '用户名4', '评论内容4', '回复内容4');
INSERT INTO `discusswangzhangonggao` VALUES (95, '2022-04-04 22:20:10', 5, 5, '用户名5', '评论内容5', '回复内容5');
INSERT INTO `discusswangzhangonggao` VALUES (96, '2022-04-04 22:20:10', 6, 6, '用户名6', '评论内容6', '回复内容6');

-- ----------------------------
-- Table structure for gongjiaoluxian
-- ----------------------------
DROP TABLE IF EXISTS `gongjiaoluxian`;
CREATE TABLE `gongjiaoluxian`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `luxianbianhao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '路线编号',
  `luxianmingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '路线名称',
  `fengmian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '封面',
  `jiage` int NULL DEFAULT NULL COMMENT '价格',
  `qidianzhanming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '起点站名',
  `tujingzhandian` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '途径站点',
  `zhongdianzhanming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '终点站名',
  `luxianxiangqing` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '路线详情',
  `thumbsupnum` int NULL DEFAULT 0 COMMENT '赞',
  `crazilynum` int NULL DEFAULT 0 COMMENT '踩',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int NULL DEFAULT 0 COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `luxianbianhao`(`luxianbianhao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '公交路线' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gongjiaoluxian
-- ----------------------------
INSERT INTO `gongjiaoluxian` VALUES (21, '2022-04-04 22:20:10', '1111111111', '路线名称1', 'upload/gongjiaoluxian_fengmian1.jpg', 1, '起点站名1', '途径站点1', '终点站名1', '路线详情1', 1, 1, '2025-03-31 10:57:53', 4);
INSERT INTO `gongjiaoluxian` VALUES (22, '2022-04-04 22:20:10', '2222222222', '路线名称2', 'upload/gongjiaoluxian_fengmian2.jpg', 2, '起点站名2', '途径站点2', '终点站名2', '路线详情2', 3, 2, '2025-03-31 09:23:22', 8);
INSERT INTO `gongjiaoluxian` VALUES (23, '2022-04-04 22:20:10', '3333333333', '路线名称3', 'upload/gongjiaoluxian_fengmian3.jpg', 3, '起点站名3', '途径站点3', '终点站名3', '路线详情3', 3, 3, '2022-04-04 22:20:10', 3);
INSERT INTO `gongjiaoluxian` VALUES (24, '2022-04-04 22:20:10', '4444444444', '路线名称4', 'upload/gongjiaoluxian_fengmian4.jpg', 4, '起点站名4', '途径站点4', '终点站名4', '路线详情4', 4, 4, '2025-04-06 15:49:48', 6);
INSERT INTO `gongjiaoluxian` VALUES (25, '2022-04-04 22:20:10', '5555555555', '路线名称5', 'upload/gongjiaoluxian_fengmian5.jpg', 5, '起点站名5', '途径站点5', '终点站名5', '路线详情5', 5, 5, '2022-04-04 22:20:10', 5);
INSERT INTO `gongjiaoluxian` VALUES (26, '2022-04-04 22:20:10', '6666666666', '路线名称6', 'upload/gongjiaoluxian_fengmian6.jpg', 6, '起点站名6', '途径站点6', '终点站名6', '路线详情6', 6, 6, '2022-04-04 22:20:10', 6);

-- ----------------------------
-- Table structure for maipiao
-- ----------------------------
DROP TABLE IF EXISTS `maipiao`;
CREATE TABLE `maipiao`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `zhanghao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `luxianbianhao` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of maipiao
-- ----------------------------

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `content` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '留言内容',
  `cpicture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '留言图片',
  `reply` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '回复内容',
  `rpicture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '回复图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1714386103818 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '留言建议' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (71, '2022-04-04 22:20:10', 1, '用户名1', '留言内容1', 'upload/messages_cpicture1.jpg', '回复内容1', 'upload/messages_rpicture1.jpg');
INSERT INTO `messages` VALUES (72, '2022-04-04 22:20:10', 2, '用户名2', '留言内容2', 'upload/messages_cpicture2.jpg', '回复内容2', 'upload/messages_rpicture2.jpg');
INSERT INTO `messages` VALUES (73, '2022-04-04 22:20:10', 3, '用户名3', '留言内容3', 'upload/messages_cpicture3.jpg', '回复内容3', 'upload/messages_rpicture3.jpg');
INSERT INTO `messages` VALUES (74, '2022-04-04 22:20:10', 4, '用户名4', '留言内容4', 'upload/messages_cpicture4.jpg', '回复内容4', 'upload/messages_rpicture4.jpg');
INSERT INTO `messages` VALUES (75, '2022-04-04 22:20:10', 5, '用户名5', '留言内容5', 'upload/messages_cpicture5.jpg', '回复内容5', 'upload/messages_rpicture5.jpg');
INSERT INTO `messages` VALUES (76, '2022-04-04 22:20:10', 6, '用户名6', '留言内容6', 'upload/messages_cpicture6.jpg', '回复内容6', 'upload/messages_rpicture6.jpg');
INSERT INTO `messages` VALUES (1714386103817, '2024-04-29 18:21:43', 11, '用户1', '6666', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for storeup
-- ----------------------------
DROP TABLE IF EXISTS `storeup`;
CREATE TABLE `storeup`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint NULL DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `name` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收藏图片',
  `type` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '1' COMMENT '类型(1:收藏,21:赞,22:踩)',
  `inteltype` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '推荐类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1714386098121 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of storeup
-- ----------------------------
INSERT INTO `storeup` VALUES (1714386084584, '2024-04-29 18:21:23', 11, 22, 'gongjiaoluxian', '路线名称2', 'upload/gongjiaoluxian_fengmian2.jpg', '1', NULL);
INSERT INTO `storeup` VALUES (1714386086195, '2024-04-29 18:21:25', 11, 22, 'gongjiaoluxian', '路线名称2', 'upload/gongjiaoluxian_fengmian2.jpg', '21', NULL);
INSERT INTO `storeup` VALUES (1714386092591, '2024-04-29 18:21:31', 11, 33, 'wangzhangonggao', '标题3', 'upload/wangzhangonggao_fengmian3.jpg', '1', NULL);
INSERT INTO `storeup` VALUES (1714386098120, '2024-04-29 18:21:38', 11, 41, 'youqinglianjie', '链接名称1', 'upload/youqinglianjie_tupian1.jpg', '1', NULL);

-- ----------------------------
-- Table structure for token
-- ----------------------------
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `tablename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '表名',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '角色',
  `token` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = 'token表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of token
-- ----------------------------
INSERT INTO `token` VALUES (1, 11, '用户1', 'yonghu', '用户', 'qqyzgbxmo53m2frdrth9wixvg978l60r', '2024-04-29 18:19:13', '2025-04-08 16:29:51');
INSERT INTO `token` VALUES (2, 1, 'admin', 'users', '管理员', 'wkof02fd5bctxh864yx09kga8jg6id7w', '2024-04-29 18:20:10', '2025-04-06 16:28:03');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `role` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', '123456', '管理员', '2022-04-04 22:20:10');

-- ----------------------------
-- Table structure for wangzhangonggao
-- ----------------------------
DROP TABLE IF EXISTS `wangzhangonggao`;
CREATE TABLE `wangzhangonggao`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '标题',
  `jianjie` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '简介',
  `fabushijian` date NULL DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '封面',
  `neirong` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL COMMENT '内容',
  `thumbsupnum` int NULL DEFAULT 0 COMMENT '赞',
  `crazilynum` int NULL DEFAULT 0 COMMENT '踩',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int NULL DEFAULT 0 COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '网站公告' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wangzhangonggao
-- ----------------------------
INSERT INTO `wangzhangonggao` VALUES (31, '2022-04-04 22:20:10', '标题1', '简介1', '2022-04-04', 'upload/wangzhangonggao_fengmian1.jpg', '内容1', 1, 1, '2024-04-29 18:20:29', 2);
INSERT INTO `wangzhangonggao` VALUES (32, '2022-04-04 22:20:10', '标题2', '简介2', '2022-04-04', 'upload/wangzhangonggao_fengmian2.jpg', '内容2', 2, 2, '2022-04-04 22:20:10', 2);
INSERT INTO `wangzhangonggao` VALUES (33, '2022-04-04 22:20:10', '标题3', '简介3', '2022-04-04', 'upload/wangzhangonggao_fengmian3.jpg', '内容3', 3, 3, '2024-04-29 18:21:33', 5);
INSERT INTO `wangzhangonggao` VALUES (34, '2022-04-04 22:20:10', '标题4', '简介4', '2022-04-04', 'upload/wangzhangonggao_fengmian4.jpg', '内容4', 4, 4, '2022-04-04 22:20:10', 4);
INSERT INTO `wangzhangonggao` VALUES (35, '2022-04-04 22:20:10', '标题5', '简介5', '2022-04-04', 'upload/wangzhangonggao_fengmian5.jpg', '内容5', 5, 5, '2022-04-04 22:20:10', 5);
INSERT INTO `wangzhangonggao` VALUES (36, '2022-04-04 22:20:10', '标题6', '简介6', '2022-04-04', 'upload/wangzhangonggao_fengmian6.jpg', '内容6', 6, 6, '2022-04-04 22:20:10', 6);

-- ----------------------------
-- Table structure for yonghu
-- ----------------------------
DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE `yonghu`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '账号',
  `mima` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '姓名',
  `nianling` int NULL DEFAULT NULL COMMENT '年龄',
  `xingbie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `zhanghao`(`zhanghao` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of yonghu
-- ----------------------------
INSERT INTO `yonghu` VALUES (11, '2022-04-04 22:20:10', '用户1', '123456', '姓名1', 1, '男', '13823888881', 'upload/yonghu_zhaopian1.jpg');
INSERT INTO `yonghu` VALUES (12, '2022-04-04 22:20:10', '用户2', '123456', '姓名2', 2, '男', '13823888882', 'upload/yonghu_zhaopian2.jpg');
INSERT INTO `yonghu` VALUES (13, '2022-04-04 22:20:10', '用户3', '123456', '姓名3', 3, '男', '13823888883', 'upload/yonghu_zhaopian3.jpg');
INSERT INTO `yonghu` VALUES (14, '2022-04-04 22:20:10', '用户4', '123456', '姓名4', 4, '男', '13823888884', 'upload/yonghu_zhaopian4.jpg');
INSERT INTO `yonghu` VALUES (15, '2022-04-04 22:20:10', '用户5', '123456', '姓名5', 5, '男', '13823888885', 'upload/yonghu_zhaopian5.jpg');
INSERT INTO `yonghu` VALUES (16, '2022-04-04 22:20:10', '用户6', '123456', '姓名6', 6, '男', '13823888886', 'upload/yonghu_zhaopian6.jpg');

-- ----------------------------
-- Table structure for youqinglianjie
-- ----------------------------
DROP TABLE IF EXISTS `youqinglianjie`;
CREATE TABLE `youqinglianjie`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `lianjiemingcheng` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '链接名称',
  `lianjie` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '链接',
  `tupian` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '图片',
  `clicktime` datetime NULL DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int NULL DEFAULT 0 COMMENT '点击次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '友情链接' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of youqinglianjie
-- ----------------------------
INSERT INTO `youqinglianjie` VALUES (41, '2022-04-04 22:20:10', '链接名称1', '链接1', 'upload/youqinglianjie_tupian1.jpg', '2024-04-29 18:21:39', 4);
INSERT INTO `youqinglianjie` VALUES (42, '2022-04-04 22:20:10', '链接名称2', '链接2', 'upload/youqinglianjie_tupian2.jpg', '2024-04-29 18:20:37', 3);
INSERT INTO `youqinglianjie` VALUES (43, '2022-04-04 22:20:10', '链接名称3', '链接3', 'upload/youqinglianjie_tupian3.jpg', '2022-04-04 22:20:10', 3);
INSERT INTO `youqinglianjie` VALUES (44, '2022-04-04 22:20:10', '链接名称4', '链接4', 'upload/youqinglianjie_tupian4.jpg', '2025-04-06 15:40:53', 5);
INSERT INTO `youqinglianjie` VALUES (45, '2022-04-04 22:20:10', '链接名称5', '链接5', 'upload/youqinglianjie_tupian5.jpg', '2022-04-04 22:20:10', 5);
INSERT INTO `youqinglianjie` VALUES (46, '2022-04-04 22:20:10', '链接名称6', '链接6', 'upload/youqinglianjie_tupian6.jpg', '2022-04-04 22:20:10', 6);

SET FOREIGN_KEY_CHECKS = 1;
