/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50624
 Source Host           : localhost
 Source Database       : social network

 Target Server Type    : MySQL
 Target Server Version : 50624
 File Encoding         : utf-8

 Date: 06/18/2017 23:04:45 PM
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
--  Table structure for `comment_inf`
-- ----------------------------
DROP TABLE IF EXISTS `comment_inf`;
CREATE TABLE `comment_inf` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `after_insertComment` AFTER INSERT ON `comment_inf` FOR EACH ROW begin 
	update message_inf set comment_times = comment_times + 1 where id = NEW.message_id;
end;
 ;;
delimiter ;
delimiter ;;
CREATE TRIGGER `after_deleteComment` AFTER DELETE ON `comment_inf` FOR EACH ROW begin 
	update message_inf set comment_times = comment_times - 1 where id = OLD.message_id;
end;
 ;;
delimiter ;

-- ----------------------------
--  Records of `comment_inf`
-- ----------------------------
BEGIN;
INSERT INTO `comment_inf` VALUES ('1', '13', 'zerry', 'aaaa', '2016-01-22 15:35:44'), ('2', '2', 'zerry', '[em_6]aaa', '2016-01-22 15:37:51'), ('3', '9', 'zerry', '[em_2]啦啦啦', '2017-02-22 18:20:50'), ('4', '11', 'zerry', '[em_1]啦啦啦啦', '2017-02-22 18:21:13'), ('5', '2', 'zerry', 'aaadfaf [em_3]', '2017-02-22 18:21:25'), ('6', '9', 'zerry', 'a', '2017-02-22 18:21:46'), ('7', '13', 'zerry', 'sdfsf', '2017-02-22 18:22:30'), ('10', '3', 'zerry', '[em_2]不陪你了', '2017-03-03 23:49:20'), ('11', '34', 'zerry', 'xxxx', '2017-03-18 10:59:40'), ('12', '16', 'zerry', '[em_1]', '2017-03-20 18:59:38'), ('13', '72', 'zerry', '[em_1]哈哈哈哈哈，确实666', '2017-03-27 23:54:29'), ('14', '71', 'zerry', '[em_1]...', '2017-05-16 23:46:15'), ('15', '75', 'zerry', '[em_63]棒', '2017-05-29 12:35:02'), ('16', '72', 'zhangsan', '[em_66]', '2017-05-29 12:36:04'), ('17', '75', 'zerry', '你好[em_1]', '2017-06-18 21:36:03'), ('18', '75', 'zerry', '。。。', '2017-06-18 21:39:16'), ('19', '74', 'zerry', '1111', '2017-06-18 22:02:21');
COMMIT;

-- ----------------------------
--  Table structure for `friend`
-- ----------------------------
DROP TABLE IF EXISTS `friend`;
CREATE TABLE `friend` (
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `groupname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`friend_id`),
  KEY `user_id` (`user_id`),
  KEY `user_id_2` (`user_id`,`friend_id`),
  KEY `user_id_3` (`user_id`,`friend_id`),
  KEY `user_id_4` (`user_id`,`friend_id`),
  KEY `user_id_5` (`user_id`,`friend_id`),
  KEY `user_id_6` (`user_id`,`friend_id`),
  KEY `user_id_7` (`user_id`,`friend_id`),
  KEY `user_id_8` (`user_id`,`friend_id`),
  KEY `user_id_9` (`user_id`,`friend_id`),
  KEY `user_id_10` (`user_id`,`friend_id`),
  KEY `user_id_11` (`user_id`,`friend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `friend`
-- ----------------------------
BEGIN;
INSERT INTO `friend` VALUES ('1', '2', 'normal'), ('1', '3', 'normal'), ('1', '4', 'normal'), ('2', '1', 'normal'), ('2', '3', 'normal'), ('2', '5', 'normal'), ('3', '1', 'normal'), ('3', '2', 'normal'), ('4', '1', 'normal'), ('5', '1', 'normal'), ('19', '1', 'normal');
COMMIT;

-- ----------------------------
--  Table structure for `label_heat`
-- ----------------------------
DROP TABLE IF EXISTS `label_heat`;
CREATE TABLE `label_heat` (
  `user_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  `times` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `label_heat`
-- ----------------------------
BEGIN;
INSERT INTO `label_heat` VALUES ('1', '1', '3'), ('1', '2', '6'), ('1', '3', '1'), ('1', '4', '1'), ('1', '7', '22'), ('1', '9', '1'), ('1', '10', '4'), ('1', '12', '7'), ('1', '22', '1'), ('1', '23', '1'), ('1', '102', '5'), ('1', '120', '22'), ('1', '123', '20'), ('1', '125', '14'), ('1', '126', '5'), ('2', '1', '1'), ('2', '2', '10'), ('2', '3', '2'), ('2', '4', '6'), ('2', '7', '0'), ('2', '8', '0'), ('2', '12', '0'), ('3', '1', '1'), ('3', '4', '1'), ('3', '5', '1'), ('3', '7', '2'), ('4', '1', '2'), ('4', '2', '18'), ('4', '4', '17'), ('4', '6', '3'), ('4', '7', '2'), ('4', '50', '8'), ('5', '1', '3'), ('5', '2', '5'), ('5', '3', '6'), ('5', '4', '8'), ('5', '5', '1'), ('5', '6', '1'), ('7', '101', '5'), ('7', '102', '5'), ('7', '126', '10'), ('19', '9', '1');
COMMIT;

-- ----------------------------
--  Table structure for `label_inf`
-- ----------------------------
DROP TABLE IF EXISTS `label_inf`;
CREATE TABLE `label_inf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `label_inf`
-- ----------------------------
BEGIN;
INSERT INTO `label_inf` VALUES ('1', '登山', null), ('2', '跑步', null), ('3', '电玩', null), ('4', '桌球', null), ('5', '绘画', null), ('6', '摄影', null), ('7', '篮球', null), ('8', '舞蹈', null), ('9', '徒步', null), ('10', '赛车', null), ('11', '体育', null), ('12', '足球', null), ('50', '运动', null), ('51', '军事', null), ('52', '国际', null), ('53', '社会', null), ('54', '旅游', null), ('55', '娱乐', null), ('56', '科技', null), ('57', '艺术', null), ('100', '赵雷', null), ('101', '马丁吉他', null), ('102', '指弹', null), ('103', '沙画', null), ('110', '国足', null), ('111', '中超', null), ('113', '世界杯', null), ('114', '健身', null), ('120', 'NBA', null), ('121', '中国男篮', null), ('123', '哈登', null), ('124', '科比退役', null), ('125', 'aa', null), ('126', '吉他', null);
COMMIT;

-- ----------------------------
--  Table structure for `message_inf`
-- ----------------------------
DROP TABLE IF EXISTS `message_inf`;
CREATE TABLE `message_inf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `repost_times` int(11) DEFAULT NULL,
  `comment_times` int(11) DEFAULT NULL,
  `support_times` int(11) DEFAULT NULL,
  `pic` char(36) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
delimiter ;;
CREATE TRIGGER `after_insertMessage` AFTER INSERT ON `message_inf` FOR EACH ROW BEGIN
	update user_inf set message_num = message_num + 1 where nickname = NEW.author;
	insert weibo_heat values(NEW.id, 0);
END;
 ;;
delimiter ;
delimiter ;;
CREATE TRIGGER `after_deleteMessage` AFTER DELETE ON `message_inf` FOR EACH ROW BEGIN
	update user_inf set message_num = message_num - 1 where nickname = OLD.author;
	delete from weibo_heat where id = OLD.id;
END;
 ;;
delimiter ;

-- ----------------------------
--  Records of `message_inf`
-- ----------------------------
BEGIN;
INSERT INTO `message_inf` VALUES ('1', '1', 'lucy', '#情人节要这样过#情人节秀炫妻狂魔出动了[em_49]', '2016-02-20 23:37:51', '0', '0', '1', 'profile2'), ('2', '1', 'lucy', '#情人节要这样过#fff', '2016-02-23 00:23:35', '0', '2', '1', 'profile3'), ('3', '1', 'lucy', '今天想去打篮球', '2016-05-14 11:54:18', '0', '2', '0', null), ('4', '1', 'admin', '系统维护时间为2016年2月22日0：00：00到4：00：00，造成不便还请谅解！', '2017-02-21 17:50:22', '0', '0', '0', 'maintain'), ('9', '1', 'lucy', '今天想和小李去打篮球，但是他要在家里画素描', '2016-05-15 16:48:22', '0', '2', '0', ''), ('11', '1', 'lucy', '昨天和朋友去了佳得乐杯篮球赛，遇见好多高人- -拿了第三', '2016-05-15 16:49:32', '0', '1', '1', ''), ('13', '1', 'lucy', '永远不要停止体育锻炼，即便工作再忙，平时可以打打球，跑跑步，对身体大有好处。', '2016-05-17 14:23:26', '0', '1', '0', ''), ('16', '3', 'zerry', '我想踢足球', '2016-10-22 21:42:49', '0', '1', '1', ''), ('17', '1', 'zerry', '小明找我去运动，打球', '2016-10-22 21:43:21', '0', '0', '0', ''), ('24', '1', 'zerry', '呵呵哒[em_1]', '2017-02-24 15:17:47', '0', '0', '0', ''), ('27', '1', 'zerry', 'sdjfdlsfj', '2017-03-05 16:02:21', '0', '0', '0', '6d2973aa-77c2-497c-9fdc-d081a3ea2f99'), ('33', '1', 'zerry', 'dfafl', '2017-03-09 15:18:00', '0', '0', '0', 'd09f0a92-add2-4b18-a3e2-7025143a8068'), ('34', '1', 'zerry', 'dfafl[em_1]', '2017-03-09 15:18:39', '0', '1', '1', '5a691f43-a9ec-48e4-88ba-6366389bf585'), ('35', '1', 'zerry', '[em_3][em_5]', '2017-03-09 15:51:36', '0', '0', '0', '72c691c6-2a2c-4f5d-83cf-a77888a22aa4'), ('37', '1', 'zerry', 'lll', '2017-03-09 16:00:38', '0', '0', '1', 'ff9d459e-941a-4627-a0ab-a01ff1383d1f'), ('38', '1', 'zerry', '', '2017-03-10 06:54:26', '0', '0', '0', '8cee863a-b992-40ce-8a43-e659b085d9e6'), ('71', '1', 'zerry', '哈登今天帅呆了，三分8投5中。[em_16]', '2017-03-27 23:45:59', '0', '1', '1', ''), ('72', '1', 'zerry', '哈登今天进入了NBA，帅呆了', '2017-03-27 23:46:28', '0', '2', '2', ''), ('73', '1', 'zerry', '啦啦啦啦啦[em_1]', '2017-05-16 23:47:24', '0', '0', '0', ''), ('74', '1', 'zhangsan', '今天和小明去跑步[em_1]', '2017-05-17 00:06:07', '0', '1', '1', ''), ('75', '1', 'zhangsan', '预祝今晚丁俊晖取的好成绩！', '2017-05-17 00:07:15', '0', '3', '1', ''), ('76', '1', 'zhangzhang', '最近开始迷恋弹奏吉他[em_49]买了一把马丁', '2017-05-17 00:11:15', '0', '0', '0', ''), ('77', '1', 'zerry', '希望自己有一天能练就一手好的指弹技术！', '2017-05-17 00:13:19', '0', '0', '0', ''), ('78', '1', 'zhangzhang', '今天刚学会弹奏平凡之路指弹版，开心！[em_6]', '2017-05-17 00:21:08', '0', '0', '0', ''), ('79', '1', 'zhangzhang', '今天刚学会弹奏平凡之路指弹版，开心！[em_6]', '2017-05-17 00:21:23', '0', '0', '0', ''), ('80', '1', 'zerry', 'aaaaaaaa[em_1]', '2017-05-17 09:52:04', '0', '0', '1', '');
COMMIT;

-- ----------------------------
--  Table structure for `msg_lbl_relation`
-- ----------------------------
DROP TABLE IF EXISTS `msg_lbl_relation`;
CREATE TABLE `msg_lbl_relation` (
  `msg_id` int(11) NOT NULL,
  `label_id` int(11) NOT NULL,
  PRIMARY KEY (`msg_id`,`label_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `msg_lbl_relation`
-- ----------------------------
BEGIN;
INSERT INTO `msg_lbl_relation` VALUES ('3', '7'), ('3', '8'), ('9', '7'), ('10', '7'), ('11', '7'), ('15', '11'), ('16', '12'), ('37', '12'), ('38', '4'), ('71', '7'), ('71', '120'), ('71', '123'), ('72', '120'), ('72', '123'), ('72', '125'), ('73', '125'), ('74', '2'), ('74', '50'), ('75', '4'), ('76', '101'), ('76', '126'), ('77', '102'), ('77', '126'), ('78', '127'), ('79', '102'), ('79', '126'), ('79', '127'), ('80', '7'), ('80', '125');
COMMIT;

-- ----------------------------
--  Table structure for `private_msg`
-- ----------------------------
DROP TABLE IF EXISTS `private_msg`;
CREATE TABLE `private_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sdr_id` int(11) NOT NULL,
  `rcvr_id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `has_read` int(11) DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `private_msg`
-- ----------------------------
BEGIN;
INSERT INTO `private_msg` VALUES ('1', '1', '4', 'aa', '0', '2016-10-22 21:44:38'), ('2', '4', '1', '呵呵呵呵呵呵', '0', '2017-03-01 01:57:10'), ('3', '1', '3', 'lalala', '0', '2017-03-01 13:15:59'), ('8', '1', '3', '[em_1]', '0', '2017-03-03 15:24:36'), ('9', '1', '3', 'aaaa', '0', '2017-03-10 09:25:03'), ('10', '1', '4', '[em_50]', '0', '2017-03-10 09:32:23'), ('11', '1', '4', 'jjj', '0', '2017-03-10 09:32:45'), ('12', '1', '4', '111', '0', '2017-03-14 01:13:19'), ('13', '1', '3', 'aaa', '0', '2017-03-14 01:24:55'), ('14', '1', '3', 'a', '0', '2017-03-30 09:25:01'), ('15', '1', '3', 'a', '0', '2017-03-30 09:25:04'), ('16', '1', '3', 'a', '0', '2017-03-30 09:25:07'), ('17', '1', '3', 'a', '0', '2017-03-30 09:25:10'), ('18', '1', '3', '[em_1]', '0', '2017-03-30 09:27:06'), ('19', '1', '3', 'kk', '0', '2017-05-16 23:56:53'), ('20', '1', '3', '[em_1]', '0', '2017-05-16 23:56:57'), ('21', '4', '1', 'aaa[em_1]', '0', '2017-05-17 09:57:06'), ('22', '1', '2', '啊啊啊啊啊[em_1]', '0', '2017-06-18 21:35:28'), ('23', '1', '2', '你好[em_1]', '0', '2017-06-18 21:38:51'), ('24', '1', '2', '[em_1]....', '0', '2017-06-18 22:01:55');
COMMIT;

-- ----------------------------
--  Table structure for `support_inf`
-- ----------------------------
DROP TABLE IF EXISTS `support_inf`;
CREATE TABLE `support_inf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_id` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=164 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
delimiter ;;
CREATE TRIGGER `after_insertSupport` AFTER INSERT ON `support_inf` FOR EACH ROW begin 
	update message_inf set support_times = support_times + 1 where id = NEW.message_id;
end;
 ;;
delimiter ;
delimiter ;;
CREATE TRIGGER `after_deleteSupport` AFTER DELETE ON `support_inf` FOR EACH ROW begin 
	update message_inf set support_times = support_times - 1 where id = OLD.message_id;
end;
 ;;
delimiter ;

-- ----------------------------
--  Records of `support_inf`
-- ----------------------------
BEGIN;
INSERT INTO `support_inf` VALUES ('28', '266', 'zerry'), ('39', '275', 'zerry'), ('75', '242', 'zerry'), ('95', '253', 'zerry'), ('108', '254', 'zerry'), ('111', '2', 'zerry'), ('112', '37', 'zerry'), ('141', '34', 'zerry'), ('144', '16', 'zerry'), ('152', '72', 'zerry'), ('153', '11', 'zerry'), ('156', '71', 'zerry'), ('157', '80', 'zhangsan'), ('161', '75', 'zerry'), ('162', '74', 'zerry'), ('163', '72', 'zhangsan');
COMMIT;

-- ----------------------------
--  Table structure for `topic_inf`
-- ----------------------------
DROP TABLE IF EXISTS `topic_inf`;
CREATE TABLE `topic_inf` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `topic_inf`
-- ----------------------------
BEGIN;
INSERT INTO `topic_inf` VALUES ('1', '运动'), ('2', '军事'), ('3', '国际'), ('4', '社会'), ('5', '旅游'), ('6', '娱乐'), ('7', '科技'), ('8', '艺术'), ('9', '宠物');
COMMIT;

-- ----------------------------
--  Table structure for `user_inf`
-- ----------------------------
DROP TABLE IF EXISTS `user_inf`;
CREATE TABLE `user_inf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `message_num` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `user_inf`
-- ----------------------------
BEGIN;
INSERT INTO `user_inf` VALUES ('1', 'zerry', 'zerry', 'b93ee7cfd6e4e886ac6b4bb8f3f080619f2c', '1', '20', 'student'), ('2', 'lucy', 'lucy', '123456', '1', '0', '旅游达人'), ('3', 'zhouzhou', 'zhouzhou', '123456', '1', '0', '音乐才子'), ('4', 'zhangsan', 'zhangsan', '96c6c804d071bbd031b45673cc23f7bca7ea', '1', '2', '运动狂魔'), ('5', 'libai', 'libai', 'libai', '1', '0', 'student'), ('7', 'zhangzhang', 'zhangzhang', '536c3ad413bf8364c9f47da3b687317d6ef0', '1', '3', '小艺术家'), ('8', 'type1', 'type1', '123456', '1', '0', '旅游'), ('9', 'type2', 'type2', '123456', '1', '0', '运动'), ('19', 'aaaa', 'aaaa', '2265887c76b0e5cf9e768cd17369593b6363', '1', '0', 'student'), ('999', 'admin', 'admin', 'admin', '2', '1', '管理员');
COMMIT;

-- ----------------------------
--  Table structure for `weibo_heat`
-- ----------------------------
DROP TABLE IF EXISTS `weibo_heat`;
CREATE TABLE `weibo_heat` (
  `id` int(11) NOT NULL,
  `hot` double(20,0) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records of `weibo_heat`
-- ----------------------------
BEGIN;
INSERT INTO `weibo_heat` VALUES ('1', '22792187'), ('2', '22809741'), ('3', '23513725'), ('4', '0'), ('9', '23524130'), ('11', '23524137'), ('12', '23540540'), ('16', '0'), ('17', '0'), ('24', '0'), ('27', '0'), ('33', '0'), ('34', '0'), ('35', '0'), ('37', '0'), ('38', '0'), ('71', '0'), ('72', '0'), ('73', '0'), ('74', '0'), ('75', '0'), ('76', '0'), ('77', '0'), ('78', '0'), ('79', '0'), ('80', '0');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
