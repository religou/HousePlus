/*
 Navicat Premium Data Transfer

 Source Server         : zek
 Source Server Type    : MySQL
 Source Server Version : 50525
 Source Host           : localhost:3306
 Source Schema         : homeplus

 Target Server Type    : MySQL
 Target Server Version : 50525
 File Encoding         : 65001

 Date: 23/05/2019 11:20:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `ad_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理者真实姓名',
  `ad_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员的密码',
  `ad_phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, '管理员01', '123456', '13824679120');
INSERT INTO `admin` VALUES (2, '', '', '');
INSERT INTO `admin` VALUES (3, '管理员03', '123456789', '18796283601');
INSERT INTO `admin` VALUES (4, '周尔康', '1234565', '13515286456');

-- ----------------------------
-- Table structure for appointment
-- ----------------------------
DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '预约表的主键',
  `cm_id` int(11) NULL DEFAULT NULL COMMENT '外键，与消费者表连接',
  `app_beginTime` datetime NULL DEFAULT NULL COMMENT '预约的时间',
  `app_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预约类别',
  `app_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预约地址',
  `app_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '预约的联系方式',
  `app_status` int(8) NULL DEFAULT 1 COMMENT '预约的状态, 0 表示结束了, 1 表示未结束',
  `apply_list` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '[]' COMMENT '对于预约而言,则是申请人列表',
  `app_hk_id` int(8) NULL DEFAULT NULL COMMENT '预约最后确定的家政人员的编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of appointment
-- ----------------------------
INSERT INTO `appointment` VALUES (1, 5, '2019-04-12 12:23:23', '保姆', '南京-玄武区-韩府坊', '18796283605', 0, '[2,2]', 2);
INSERT INTO `appointment` VALUES (2, 5, '2019-04-12 00:00:00', '维修', '南京-玄武区-韩府坊', '18796283605', 1, '[2,3]', 2);
INSERT INTO `appointment` VALUES (4, 5, '2019-04-12 00:00:00', '保姆', '南京', '13515281909', 1, '[2]', 2);
INSERT INTO `appointment` VALUES (12, 5, '2019-05-23 00:00:00', '美妆', '上海-鼓楼区-韩府坊', '18796283605', -1, '[]', NULL);
INSERT INTO `appointment` VALUES (13, 5, '2019-05-02 00:00:00', '饮食', '南京-浦口区-韩府坊', '18796283605', 0, '[2]', 2);
INSERT INTO `appointment` VALUES (14, 5, '2019-05-02 00:00:00', '保姆', '徐州-玄武区-韩府坊', '18796283605', 0, '[]', NULL);
INSERT INTO `appointment` VALUES (15, 5, '2019-05-06 00:00:00', '美妆', '镇江-鼓楼区-韩府坊', '18796283605', 1, '[2]', NULL);
INSERT INTO `appointment` VALUES (16, 5, '2019-05-20 00:00:00', '搬运', '徐州-浦口区-韩府坊', '18796283605', 0, '[]', NULL);
INSERT INTO `appointment` VALUES (17, 5, '2019-05-12 00:00:00', '长期雇佣', '南京-浦口区-韩府坊', '13515281909', 0, '[2]', 2);
INSERT INTO `appointment` VALUES (18, 5, '2019-05-21 00:00:00', '长期雇佣', '上海-浦口区-韩府坊', '13515281909', 0, '[]', NULL);
INSERT INTO `appointment` VALUES (19, 5, '2019-05-10 00:00:00', '月嫂', '浙江-鼓楼区-韩府坊', '15678945621', 0, '[2]', 2);
INSERT INTO `appointment` VALUES (20, 5, '2019-05-20 00:00:00', '护工', '镇江-玄武区-韩府坊', '15678945621', 0, '[2]', 2);
INSERT INTO `appointment` VALUES (21, 11, '2019-05-10 00:00:00', '护工', '上海-浦口区-韩府坊', '18796283609', 1, '[2]', NULL);
INSERT INTO `appointment` VALUES (22, 11, '2019-05-13 00:00:00', '长期雇佣', '徐州-玄武区-韩府坊', '18796283609', 1, '[2]', NULL);
INSERT INTO `appointment` VALUES (23, 11, '2019-05-13 00:00:00', '月嫂', '徐州-玄武区-韩府坊', '18796283609', 0, '[]', NULL);
INSERT INTO `appointment` VALUES (24, 5, '2019-05-09 13:35:16', '搬运', '南京-浦口区-韩府坊', '18796283605', 1, '[2]', NULL);
INSERT INTO `appointment` VALUES (25, 5, '2019-05-21 00:00:00', '月嫂', '南京-玄武区-韩府坊', '18796283605', 0, '[2]', 2);
INSERT INTO `appointment` VALUES (26, 5, '2019-05-20 00:00:00', '小时工', '南京-玄武区-韩府坊', '18796283605', 0, '[]', NULL);
INSERT INTO `appointment` VALUES (27, 5, '2019-05-16 16:45:27', '小时工', '南京-玄武区-韩府坊', '18796283605', 1, '[2]', NULL);
INSERT INTO `appointment` VALUES (28, 5, '2019-05-26 00:00:00', '月嫂', '上海-玄武区-新街口', '18796283605', 1, '[2]', NULL);
INSERT INTO `appointment` VALUES (29, 5, '2019-05-20 00:00:00', '月嫂', '上海-浦口区-新天地小区', '18796283605', 1, '[2]', NULL);
INSERT INTO `appointment` VALUES (30, 5, NULL, '小时工', '镇江-浦口区-新天地小区', '13515281909', 1, '[]', NULL);
INSERT INTO `appointment` VALUES (31, 5, '2019-05-20 00:00:00', '小时工', '南京-玄武区-新天地小区', '13515281909', 0, '[3]', 3);
INSERT INTO `appointment` VALUES (32, 5, '2019-05-15 00:00:00', '月嫂', '南京-玄武区-新天地小区', '18796283605', 1, '[]', NULL);
INSERT INTO `appointment` VALUES (33, 5, '2019-05-14 00:00:00', '小时工', '南京-玄武区-比果园', '18796283602', 0, '[2]', 2);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评价的主键,自增型',
  `comment_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评价的内容',
  `comment_star` int(8) NOT NULL DEFAULT 2 COMMENT '评价的等级, 0 表示差评，1 表示中评， 2 表示好评',
  `order_id` int(11) NULL DEFAULT NULL COMMENT '外键，与订单表连接',
  `comment_time` datetime NULL DEFAULT NULL COMMENT '评论的时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, '这是一个好评', 2, 1, '2019-04-05 00:00:00');
INSERT INTO `comment` VALUES (2, '这是一个好评', 2, 4, '2015-04-02 00:00:00');
INSERT INTO `comment` VALUES (3, '这是一个中评', 1, 5, '2016-09-21 00:00:00');
INSERT INTO `comment` VALUES (4, '这是一个差评', 0, 6, '2017-12-23 00:00:00');
INSERT INTO `comment` VALUES (5, '这是一个中评', 1, 7, '2018-03-04 00:00:00');
INSERT INTO `comment` VALUES (6, '这是一个中评', 1, 8, '2014-06-17 00:00:00');
INSERT INTO `comment` VALUES (7, '服务 不错，态度也不错', 2, 9, '2019-05-06 11:22:59');
INSERT INTO `comment` VALUES (9, '这是非常好的维修人员，修的很认真，而且服务态度贼号', 2, 18, '2019-05-07 18:20:18');
INSERT INTO `comment` VALUES (10, '虽然维修技术挺好的，但是服务态度不怎么好，给个中评吧', 1, 19, '2019-05-17 19:21:17');
INSERT INTO `comment` VALUES (11, '技术非常好，没有挑剔的地方，一次很好的服务', 2, 20, '2019-05-21 21:22:15');
INSERT INTO `comment` VALUES (12, '维修东西的时候很认真，技术也很好，服务态度非常好', 2, 21, '2019-05-14 15:23:21');
INSERT INTO `comment` VALUES (13, '搬运东西的时候很小心，没有磕磕碰碰的地方，很好', 2, 22, '2019-05-28 09:40:50');
INSERT INTO `comment` VALUES (14, '搬东西的时候大手大脚的，我们很怕把东西给磕坏了，索性没有', 1, 23, '2019-05-15 12:42:07');
INSERT INTO `comment` VALUES (15, '由于我们的东西都是易碎物品，我们在预约的时候没有说明，但是搬运人员来的时候，还是很小心很小心，真的是很好的服务态度，极力推荐', 2, 24, '2019-05-07 15:45:31');
INSERT INTO `comment` VALUES (16, '我们因为是急需的，所以我们预约之后，就给服务人员留言，要求快点，真的很快速，真的很好', 2, 25, '2019-05-09 11:19:32');
INSERT INTO `comment` VALUES (17, '态度非常好，但是技术不是很好，修了好久，才修好', 0, 26, '2019-05-19 15:30:21');
INSERT INTO `comment` VALUES (18, '还是非常好的，给个好评吧，希望以后修的时候细一点', 2, 27, '2019-05-20 00:00:00');
INSERT INTO `comment` VALUES (19, '非常不好', 0, 28, '2019-05-21 20:45:22');
INSERT INTO `comment` VALUES (20, '修东西非常好，非常快，必须给好评', 2, 29, '2019-05-08 20:55:38');
INSERT INTO `comment` VALUES (21, '一般吧，给个中评', 1, 30, '2019-05-10 20:55:54');
INSERT INTO `comment` VALUES (22, '必须好评，这是遇到比较好的维修人员', 2, 31, '2019-05-12 20:56:34');
INSERT INTO `comment` VALUES (23, '非常好的搬运，强烈推荐', 2, 32, '2019-05-01 21:00:18');
INSERT INTO `comment` VALUES (24, '真的非常好，真的非常好，真的非常好，重要的事情说三遍', 2, 33, '2019-05-04 21:01:15');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司姓名',
  `phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司地址',
  `busRegNum` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司营业执照注册号',
  `busLicPhoto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公司营业执照照片地址',
  `company_status` int(8) NULL DEFAULT 0 COMMENT '公司的状态，1 表示已认证，0 表示未认证，-1 表示有问题的公司，2 表示认证中',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES (1, '南京太太乐家政公司', '18796283605', '南京市-玄武区', '21365963258962', 'upload/list-head.png', 1);
INSERT INTO `company` VALUES (2, '徐州景天维修公司', '13512581909', '南京市-秦淮区', '223322233322223', 'upload/list-head.png', 1);
INSERT INTO `company` VALUES (3, '南京大力搬运公司', '14567892356', '南京市-雨花台区', '45612562351324', 'upload/list-head.png', 0);
INSERT INTO `company` VALUES (4, '南京太太乐', '13515281909', '南南京市雨花台区软件大道180号B1亚信科技', '1234567895215322', '/upload/20190420221915115.jpg', 2);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `cm_nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费者的昵称',
  `cm_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费者的密码',
  `cm_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费者的真实姓名',
  `cm_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费者的邮箱',
  `cm_sex` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费者的性别',
  `cm_phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费者的手机号码',
  `cm_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费者的地址',
  `cm_headPhoto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'upload/list-head.png' COMMENT '消费者的头像',
  `cm_status` int(8) NULL DEFAULT 0 COMMENT '消费者的审核状态，1 表示已认证， 0 表示未认证，2 表示认证中',
  `cm_cardID` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消费者的身份证号',
  `cm_cardPhoto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/upload/list-head.png' COMMENT '消费者的身份证手持照片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (5, '字牧之', '123456', '周尔康', '3226778019@qq.com', NULL, '18796283605', '江苏省-南京市-玄武区', '/upload/2019041712454797.png', 1, '321323199708255138', '/upload/20190417125553507.png');
INSERT INTO `customer` VALUES (6, '小新', '123456', '汤东朝', NULL, NULL, '13515281909', NULL, '/upload/2019041712454797.png', 2, '32132319970825138', '/upload/20190417125553507.png');
INSERT INTO `customer` VALUES (7, '蜡笔', '123', '汤栋超', NULL, '1', '123', '44-4403-440309', '/upload/2019041712454797.png', 2, '32132319970825138', '/upload/20190417125553507.png');
INSERT INTO `customer` VALUES (8, '哆啦唉梦', '1234214', '沈春翔', NULL, '1', '12345', '44-4403-440309', '/upload/2019041712454797.png', 1, '32132319970825138', '/upload/20190417125553507.png');
INSERT INTO `customer` VALUES (9, '一拳超人', '123', '曾类', NULL, '0', '123678', '44-4403-440309', '/upload/2019041712454797.png', 2, '32132319970825138', '/upload/20190417125553507.png');
INSERT INTO `customer` VALUES (10, '琦玉老师', '123456', '曾磊', NULL, '1', '123456789', '请选择北京市天津市河北省山西省内蒙古辽宁省吉林省黑龙江省上海市江苏省浙江省安徽省福建省江西省山东省河南省湖北省湖南省广东省广西海南省重庆市四川省贵州省云南省西藏陕西省甘肃省青海省宁夏新疆台湾省香港澳门-请选择广州市韶关市深圳市珠海市汕头市佛山市江门市湛江市茂名市肇庆市惠州市梅州市汕尾市河源市阳江市清远市东莞市中山市潮州市揭阳市云浮市-请选择罗湖区福田区南山区宝安区龙岗区盐田区坪山区', '/upload/2019041712454797.png', 2, '32132319970825138', '/upload/20190417125553507.png');
INSERT INTO `customer` VALUES (11, '卡卡西', '123456', '雷老虎', NULL, NULL, '18796283609', NULL, '/upload/list-head.png', 0, NULL, NULL);

-- ----------------------------
-- Table structure for housekeeper
-- ----------------------------
DROP TABLE IF EXISTS `housekeeper`;
CREATE TABLE `housekeeper`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `hk_nickname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家政人员的昵称',
  `hk_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家政人员的真实姓名',
  `hk_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家政人员的电子邮箱',
  `hk_sex` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家政人员的性别',
  `hk_phone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家政人员的手机号码',
  `hk_password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家政人员的登录密码',
  `hk_slogan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家政人员的口号',
  `hk_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家政人员的简介',
  `hk_desc_detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家政人员的详细简介',
  `hk_label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '普通-普通' COMMENT '家政人员的徽章',
  `hk_headPhoto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'upload/list-head.png' COMMENT '家政人员的头像地址',
  `hk_cardID` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家政人员的身份证号',
  `hk_status` int(8) NULL DEFAULT 0 COMMENT '家政人员的审核状态，1 表示已认证， 0 表示未认证，2 表示认证中',
  `hk_cardPhoto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/upload/list-head.png' COMMENT '家政人员的身份证照片',
  `companyID` int(8) NULL DEFAULT NULL COMMENT '外键，与公司表进行连接',
  `type_detail_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类别的集合',
  `hk_settle` int(8) NULL DEFAULT NULL COMMENT '结算类型，0 表示按单结算， 1 表示按小时结算',
  `hk_app_status` int(8) NULL DEFAULT NULL COMMENT '家政人员的被预约类型，0 表示未预约，1 表示已被预约',
  `hk_certifyPhoto` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/upload/list-head.png' COMMENT '家政人员的资格证书照片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of housekeeper
-- ----------------------------
INSERT INTO `housekeeper` VALUES (2, '天山鸟飞绝', '周尔康', 'Zero2One4@163.com', '女', '18796283605', '123456', '努力做好你的专心护工', '南京最友好的家政公司', '南京家政公司的详述', '金牌认证-带娃高手', 'upload/2019041712454797.png', '32132319970825138', 1, '/upload/20190518175012618.png', 1, '5,6,7,8', 1, 1, '/upload/20190518175012643.png');
INSERT INTO `housekeeper` VALUES (3, '万径人踪灭', '周尔康02', 'Zero2One4@163.com', '女', '18796283604', '123456', '努力做好你的专心保姆', '徐州最友好的家政公司', NULL, '金牌认证-金牌保姆', 'upload/2019041712454797.png', '2345534546543434343553', 1, '/upload/20190420214756352.jpg', 1, '6,7,8', 0, 1, '/upload/20190420214756352.jpg');
INSERT INTO `housekeeper` VALUES (4, '你是谁', '朱俊杰', '3226778019@qq.com', '男', '13515280919', '123456', '努力做好你的专心月嫂', '这是最好的家政公司', '这是全世界最好的家政公司 \n这是全中国最好的家政公司\n这是全江苏最好的家政公司', '普通-普通', 'upload/2019041712454797.png', '78914846548651465664', 1, '/upload/20190420214756352.jpg', 1, '7,8', 0, 1, '/upload/20190420214756352.jpg');
INSERT INTO `housekeeper` VALUES (5, '唯有暗香来', '蔡俊男', 'Zero2One4@163.com', '男', '15675123568', '123456', '月嫂中的玛丽莲露娜', '服务态度好，专业水平够强', '曾经服务过美国总统，给美国总统女儿当过陪读', '普通-普通', 'upload/2019041712454797.png', '1234567891011212', 2, '/upload/20190420214756352.jpg', 1, '5,6,7', 1, 1, '/upload/20190509085737257.jpg');
INSERT INTO `housekeeper` VALUES (6, '徐州维修', '朱超', 'Zero2One4@163.com', '男', '18796283610', '123456', '维修中的战斗机', '服务态度好，专业水平够强', '我们维修的时候，技术是首要，次要是服务态度，最后看咱们的维修成果，不满意的话，全额退款，满意的话，就说明你这一次是优质的服务', '普通-普通', 'upload/2019041712454797.png', '78914846548651465664', 0, '/upload/20190509085737248.jpg', 2, '9,10,11,12', 1, 1, '/upload/20190420214756352.jpg');
INSERT INTO `housekeeper` VALUES (7, '南京维修', '朱超群', 'Zero2One4@163.com', '男', '18796283611', '123456', '眼里只有维修二字', '没有修不好的东西', '从蓝翔毕业，获得国家一级维修工证书', '金牌维修', 'upload/2019041712454797.png', '78914846548651465664', 1, '/upload/20190509085737248.jpg', 2, '9,10,11', 0, 1, '/upload/20190420214756352.jpg');
INSERT INTO `housekeeper` VALUES (8, '宿迁维修', '朱超力', 'Zero2One4@163.com', '男', '18796283612', '123456', '维修是养家糊口的技能', '维修是门技术活', '从小学六年级开始维修生涯，至今已经过手上千件物品，还没一件没被修好的', '金牌维修', 'upload/2019041712454797.png', '78914846548651465664', 1, '/upload/20190509085737248.jpg', 2, '10,11,12', 1, 1, '/upload/20190420214756352.jpg');
INSERT INTO `housekeeper` VALUES (9, '贵州维修', '朱超古', 'Zero2One4@163.com', '男', '18796283613', '123456', '修过航母', '徐州技术最硬的维修人', '获得徐州市维修竞赛一等奖，获得小区修的快冠军，一台坏冰箱到我手里只需五分钟', '金牌维修-金牌认证', 'upload/2019041712454797.png', '78914846548651465664', 1, '/upload/20190509085737248.jpg', 2, '9,10,12', 0, 1, '/upload/20190420214756352.jpg');
INSERT INTO `housekeeper` VALUES (10, '南通维修', '朱超超', 'Zero2One4@163.com', '男', '18796283614', '123456', '努力做好每一件维修工作', '维修这一块，技术是最重要的', '对于维修，感悟颇丰，从小时候的拆电视到长大之后的拆电脑、手机，都是抱着能装回去的心态来的，从不敢掉以轻心', '金牌认证', 'upload/2019041712454797.png', '78914846548651465664', 1, '/upload/20190509085737248.jpg', 2, '9,11,12', 1, 1, '/upload/20190420214756352.jpg');
INSERT INTO `housekeeper` VALUES (11, '南京搬运', '朱军', 'Zero2One4@163.com', '男', '18796283615', '123456', '做好搬运的事情', '搬运这一块，服务是第一', '力气大，能搬很多东西，对于大物件，可以叫上我的小伙伴，不过，得另加钱哦', '金牌搬运', 'upload/2019041712454797.png', '78914846548651465664', 1, '/upload/20190509085737248.jpg', 3, '13,14', 1, 1, '/upload/20190420214756352.jpg');
INSERT INTO `housekeeper` VALUES (12, '徐州搬运', '朱国军', 'Zero2One4@163.com', '男', '18796283616', '123456', '搬运服务第一', '徐州市数一数二的搬运', '搬运前会提前到指定地点，搬运过程中对物品也是小心翼翼，搬运之后对于客户也是很有礼貌', '金牌认证-金牌搬运', 'upload/2019041712454797.png', '78914846548651465664', 1, '/upload/20190509085737248.jpg', 3, '13,14', 0, 1, '/upload/20190420214756352.jpg');
INSERT INTO `housekeeper` VALUES (13, '武汉搬运', '朱爱国', 'Zero2One4@163.com', '男', '18796283617', '123456', '搬运中的巨石强森', '搬运行业中售后态度最好的', '对于搬运过程中造成的物件损坏，若由搬运人员造成的，则会全款赔偿，若由意外产生，则会赔偿部分金额，搬运过程中不会造成任何损坏', '金牌认证-金牌搬运', 'upload/2019041712454797.png', '78914846548651465664', 1, '/upload/20190509085737248.jpg', 3, '13,14', 1, 1, '/upload/20190420214756352.jpg');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '登录表的主键',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录名称，在注册的时候插入内容',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录密码，在注册的时候插入内容',
  `role` int(8) NULL DEFAULT NULL COMMENT '登录角色，在注册的时候插入，0 代表消费者，1 代表家政人员，-1 代表管理员',
  `status` int(11) NULL DEFAULT 1 COMMENT '用户的状态，1 表示可以有效，0 表示无效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of login
-- ----------------------------
INSERT INTO `login` VALUES (12, '18796283605', '123456', 0, 1);
INSERT INTO `login` VALUES (13, '13515281909', '123456', 0, 1);
INSERT INTO `login` VALUES (14, '123', '123456', -1, 0);
INSERT INTO `login` VALUES (15, '18796283604', '123456', 1, 1);
INSERT INTO `login` VALUES (16, '123678', '123', 1, 1);
INSERT INTO `login` VALUES (17, '123456789', '123456', 1, 1);
INSERT INTO `login` VALUES (18, '13824679120', '123456', -1, 1);
INSERT INTO `login` VALUES (20, '18796283601', '123456', -1, 1);
INSERT INTO `login` VALUES (21, '13515286456', '1234565', -1, 1);
INSERT INTO `login` VALUES (22, '13515280919', '123456', 1, 1);
INSERT INTO `login` VALUES (23, '15675123568', '123456', 1, 1);
INSERT INTO `login` VALUES (24, '18796283610', '123456', 1, 1);
INSERT INTO `login` VALUES (26, '18796283611', '123456', 1, 1);
INSERT INTO `login` VALUES (27, '18796283612', '123456', 1, 1);
INSERT INTO `login` VALUES (28, '18796283613', '123456', 1, 1);
INSERT INTO `login` VALUES (29, '18796283614', '123456', 1, 1);
INSERT INTO `login` VALUES (30, '18796283615', '123456', 1, 1);
INSERT INTO `login` VALUES (31, '18796283616', '123456', 1, 1);
INSERT INTO `login` VALUES (32, '18796283617', '123456', 1, 1);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息表的主键',
  `message_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '消息的内容',
  `message_status` int(8) NULL DEFAULT NULL COMMENT '消息的状态，0 表示未读，1 表示已读',
  `create_time` datetime NULL DEFAULT NULL COMMENT '消息的创建时间',
  `from_id` int(8) NULL DEFAULT NULL COMMENT '消息的发送者编号',
  `to_id` int(8) NULL DEFAULT NULL COMMENT '消息的接收者编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (2, '222222222', 1, '2019-04-21 00:00:00', 5, 2);
INSERT INTO `message` VALUES (3, '33333333333333333333333333333333333333333333333333333333333333333333333', 0, '2019-05-21 00:00:00', 5, 3);
INSERT INTO `message` VALUES (4, '4444', 1, '2019-05-26 00:00:00', 5, 3);
INSERT INTO `message` VALUES (6, '123', 1, '2019-07-14 00:00:00', 5, 2);
INSERT INTO `message` VALUES (9, '今天过来的早一点，事情太多了', 0, '2019-05-04 17:33:41', 6, 2);

-- ----------------------------
-- Table structure for ordertab
-- ----------------------------
DROP TABLE IF EXISTS `ordertab`;
CREATE TABLE `ordertab`  (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `order_status` int(8) NOT NULL COMMENT '-1表示未接受未完成，1 表示已接受未完成，0 表示已完成',
  `order_begin_time` datetime NULL DEFAULT NULL COMMENT '订单开始时间',
  `order_end_time` datetime NULL DEFAULT NULL COMMENT '订单结束时间',
  `order_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单的手机号',
  `order_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工作地点',
  `hk_id` int(8) NOT NULL COMMENT '外键，与家政人员连接',
  `cm_id` int(8) NOT NULL COMMENT '外键，与消费者连接',
  `type_id` int(255) NULL DEFAULT NULL COMMENT '外键，与类型表连接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ordertab
-- ----------------------------
INSERT INTO `ordertab` VALUES (4, 1, '2019-04-12 00:00:00', '2019-05-24 00:00:00', '12345678910', '南京', 2, 5, 2);
INSERT INTO `ordertab` VALUES (5, 1, '2019-04-19 16:48:53', '2019-05-16 00:00:00', '18796283605', '南京-玄武区-韩府坊', 2, 5, 3);
INSERT INTO `ordertab` VALUES (7, 1, '2019-04-19 16:50:52', '2019-05-06 11:20:36', '18796283605', '南京-玄武区-韩府坊', 2, 5, 5);
INSERT INTO `ordertab` VALUES (8, 1, '2019-04-19 16:52:27', '2019-05-06 11:20:36', '18796283605', '南京-玄武区-韩府坊', 2, 5, 6);
INSERT INTO `ordertab` VALUES (9, 0, '2019-04-19 16:48:53', '2019-05-16 00:00:00', '18796283605', '南京-玄武区-韩府坊', 2, 5, 3);
INSERT INTO `ordertab` VALUES (10, 0, '2019-04-19 16:48:53', '2019-05-16 00:00:00', '18796283605', '南京-玄武区-韩府坊', 2, 5, 3);
INSERT INTO `ordertab` VALUES (11, 1, '2019-05-19 00:00:00', '2019-05-10 13:40:41', '18796283605', '南京-训唔去-说不定就', 2, 5, 5);
INSERT INTO `ordertab` VALUES (13, 0, '2019-05-10 08:45:36', '2019-05-10 08:46:03', '13515281909', '南京-浦口区-韩府坊', 2, 5, 5);
INSERT INTO `ordertab` VALUES (14, 1, '2019-05-10 13:25:54', '2019-05-10 13:32:27', '15678945621', '浙江-鼓楼区-韩府坊', 2, 5, 5);
INSERT INTO `ordertab` VALUES (15, 1, '2019-05-10 13:34:29', '2019-05-10 13:34:37', '15678945621', '镇江-玄武区-韩府坊', 2, 5, 5);
INSERT INTO `ordertab` VALUES (16, 1, '2019-05-10 13:34:29', '2019-05-10 13:34:37', '15678945621', '镇江-玄武区-韩府坊', 3, 5, 5);
INSERT INTO `ordertab` VALUES (17, 1, '2019-05-10 13:34:29', '2019-05-10 13:34:37', '15678945621', '镇江-玄武区-韩府坊', 4, 5, 5);
INSERT INTO `ordertab` VALUES (18, 1, '2019-05-10 13:34:29', '2019-05-10 13:34:37', '15678945621', '镇江-玄武区-韩府坊', 6, 5, 9);
INSERT INTO `ordertab` VALUES (19, 1, '2019-05-11 13:34:29', '2019-05-10 13:34:37', '15678945621', '镇江-玄武区-韩府坊', 6, 5, 9);
INSERT INTO `ordertab` VALUES (20, 1, '2019-05-12 13:34:29', '2019-05-10 13:34:37', '15678945621', '镇江-玄武区-韩府坊', 7, 5, 9);
INSERT INTO `ordertab` VALUES (21, 1, '2019-05-13 13:34:29', '2019-05-10 13:34:37', '15678945621', '镇江-玄武区-韩府坊', 8, 5, 9);
INSERT INTO `ordertab` VALUES (22, 1, '2019-05-14 13:34:29', '2019-05-10 13:34:37', '15678945621', '镇江-玄武区-韩府坊', 11, 5, 13);
INSERT INTO `ordertab` VALUES (23, 1, '2019-05-15 13:34:29', '2019-05-10 13:34:37', '15678945621', '镇江-玄武区-韩府坊', 12, 7, 13);
INSERT INTO `ordertab` VALUES (24, 1, '2019-04-12 00:00:00', '2019-05-24 00:00:00', '18796283610', '南京-雨花台区-韩府坊', 13, 6, 13);
INSERT INTO `ordertab` VALUES (25, 1, '2019-05-17 13:34:29', '2019-05-10 13:34:37', '15678945621', '镇江-玄武区-韩府坊', 6, 5, 9);
INSERT INTO `ordertab` VALUES (26, 1, '2019-05-17 13:34:29', '2019-05-10 13:34:37', '15678945621', '南通-玄武区-新天地小区', 6, 5, 9);
INSERT INTO `ordertab` VALUES (27, 1, '2019-05-13 00:00:00', '2019-06-18 00:00:00', '15678945621', '海门-新口-碧桂园', 6, 7, 9);
INSERT INTO `ordertab` VALUES (28, 1, '2019-05-13 00:00:00', '2019-06-18 00:00:00', '15678945621', '连云港-新口-碧桂园', 6, 6, 9);
INSERT INTO `ordertab` VALUES (29, 1, '2019-05-13 00:00:00', '2019-06-18 00:00:00', '15678945621', '连云港-灌云-碧桂园', 7, 7, 13);
INSERT INTO `ordertab` VALUES (30, 1, '2019-05-07 00:00:00', '2019-06-06 00:00:00', '15678945621', '连云港-东海-碧桂园', 7, 8, 10);
INSERT INTO `ordertab` VALUES (31, 1, '2019-05-13 00:00:00', '2019-06-18 00:00:00', '15678945621', '连云港-灌南-碧桂园', 7, 8, 9);
INSERT INTO `ordertab` VALUES (32, 1, '2019-05-13 00:00:00', '2019-06-18 00:00:00', '15678945621', '连云港-灌南-碧桂园', 11, 8, 10);
INSERT INTO `ordertab` VALUES (33, 1, '2019-05-13 00:00:00', '2019-06-18 00:00:00', '15678945621', '连云港-灌南-碧桂园', 11, 6, 10);
INSERT INTO `ordertab` VALUES (34, 1, '2019-05-17 21:12:09', '2019-05-17 21:12:36', '13515281909', '南京-玄武区-新天地小区', 3, 5, 10);
INSERT INTO `ordertab` VALUES (35, 0, '2019-05-18 17:55:10', '2019-05-18 17:58:15', '18796283602', '南京-玄武区-比果园', 2, 5, 10);

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int(8) NOT NULL COMMENT '大类别的编号',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大类别的名字',
  `image_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大类别的图片路径',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (2, '保姆', 'images/type-01.png');
INSERT INTO `type` VALUES (3, '家电维修', 'images/type-02.png');
INSERT INTO `type` VALUES (4, '搬运', 'images/type-03.png');
INSERT INTO `type` VALUES (5, '做饭', 'images/type-04.png');
INSERT INTO `type` VALUES (6, '美妆', 'images/type-05.png');
INSERT INTO `type` VALUES (7, '数码维修', 'images/type-06.png');

-- ----------------------------
-- Table structure for type_detail
-- ----------------------------
DROP TABLE IF EXISTS `type_detail`;
CREATE TABLE `type_detail`  (
  `id` int(8) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type_id` int(8) NULL DEFAULT NULL COMMENT '外键，与类别表进行连接',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of type_detail
-- ----------------------------
INSERT INTO `type_detail` VALUES (5, '小时工', 2);
INSERT INTO `type_detail` VALUES (6, '月嫂', 2);
INSERT INTO `type_detail` VALUES (7, '护工', 2);
INSERT INTO `type_detail` VALUES (8, '长期雇佣', 2);
INSERT INTO `type_detail` VALUES (9, '维修冰箱', 3);
INSERT INTO `type_detail` VALUES (10, '维修油烟机', 3);
INSERT INTO `type_detail` VALUES (11, '维修空调', 3);
INSERT INTO `type_detail` VALUES (12, '维修浴霸', 3);
INSERT INTO `type_detail` VALUES (13, '住宅搬运', 4);
INSERT INTO `type_detail` VALUES (14, '公司搬运', 4);
INSERT INTO `type_detail` VALUES (15, '早饭', 5);
INSERT INTO `type_detail` VALUES (16, '正餐', 5);
INSERT INTO `type_detail` VALUES (17, '健身餐', 5);
INSERT INTO `type_detail` VALUES (18, '家宴', 5);
INSERT INTO `type_detail` VALUES (19, '美甲', 6);
INSERT INTO `type_detail` VALUES (20, '脸部SPA', 6);
INSERT INTO `type_detail` VALUES (21, '婚妆', 6);
INSERT INTO `type_detail` VALUES (22, '服装搭配', 6);
INSERT INTO `type_detail` VALUES (23, '电脑维修', 7);
INSERT INTO `type_detail` VALUES (24, '手机维修', 7);
INSERT INTO `type_detail` VALUES (25, '相机维修', 7);

SET FOREIGN_KEY_CHECKS = 1;
