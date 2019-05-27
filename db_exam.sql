/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : db_exam

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2019-05-14 16:33:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about_time
-- ----------------------------
DROP TABLE IF EXISTS `about_time`;
CREATE TABLE `about_time` (
  `no` varchar(11) NOT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of about_time
-- ----------------------------
INSERT INTO `about_time` VALUES ('1', '8:00-10:00');
INSERT INTO `about_time` VALUES ('2', '10:30-12:30');
INSERT INTO `about_time` VALUES ('3', '13:30-15:30');
INSERT INTO `about_time` VALUES ('4', '16:00-18:00');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_no` varchar(255) NOT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_gender` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`admin_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('132', 'SSp1ash', '未知');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `course_no` varchar(255) NOT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `course_semester` varchar(255) DEFAULT NULL,
  `c_limit` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`course_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1A00001', '高等数学1', '1', '0', '0');
INSERT INTO `course` VALUES ('1A00002', '高等数学2', '2', '0', '0');
INSERT INTO `course` VALUES ('1A00003', '高等数学3', '3', '0', '0');
INSERT INTO `course` VALUES ('1A00004', '高等数学4', '4', '0', '0');
INSERT INTO `course` VALUES ('1A00011', '大学英语1', '1', '0', '0');
INSERT INTO `course` VALUES ('1A00012', '大学英语2', '2', '0', '0');
INSERT INTO `course` VALUES ('1A00013', '大学英语3', '3', '0', '0');
INSERT INTO `course` VALUES ('1A00014', '大学英语4', '4', '0', '0');
INSERT INTO `course` VALUES ('1A00021', '大学物理1', '3', '5', '0');
INSERT INTO `course` VALUES ('1A00022', '大学物理2', '4', '5', '0');
INSERT INTO `course` VALUES ('1A00031', '大学化学1', '3', '6', '0');
INSERT INTO `course` VALUES ('1A00032', '大学化学2', '4', '6', '0');
INSERT INTO `course` VALUES ('1A00041', 'C语言公共', '4', '7', '0');
INSERT INTO `course` VALUES ('1A00042', '离散数学', '4', '8', '0');
INSERT INTO `course` VALUES ('1A00050', '数据结构', '4', '9', '0');
INSERT INTO `course` VALUES ('1A00051', '软件工程', '4', '10', '0');
INSERT INTO `course` VALUES ('1A00052', '物理网理论', '4', '11', '0');
INSERT INTO `course` VALUES ('1A00053', '统计学', '4', '12', '0');
INSERT INTO `course` VALUES ('1A00054', '运筹学', '4', '13', '0');
INSERT INTO `course` VALUES ('1A00055', '计算机基础', '4', '14', '0');
INSERT INTO `course` VALUES ('1A00056', '法学基础', '4', '15', '0');
INSERT INTO `course` VALUES ('1A00057', '行政学基础', '4', '16', '0');
INSERT INTO `course` VALUES ('1A00058', '民族学基础', '4', '17', '0');

-- ----------------------------
-- Table structure for course_available
-- ----------------------------
DROP TABLE IF EXISTS `course_available`;
CREATE TABLE `course_available` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_no` varchar(255) DEFAULT NULL,
  `tc` varchar(255) DEFAULT NULL,
  `tc_no` varchar(255) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_available
-- ----------------------------
INSERT INTO `course_available` VALUES ('1', '1A00002', '老王', '300001', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('2', '1A00002', '老余', '300002', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('3', '1A00002', '蓬篦', '300003', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('4', '1A00002', '庄鄙', '300004', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('5', '1A00002', '涂腹脓', '300005', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('6', '1A00002', '巢蠊', '300006', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('7', '1A00002', '匡届', '300007', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('8', '1A00002', '乔逵', '300008', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('9', '1A00002', '厉究峋', '300009', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('10', '1A00004', '福禧', '300010', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('11', '1A00004', '羊舌褰', '300011', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('12', '1A00004', '毛蠕', '300012', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('13', '1A00004', '柏瀛', '300013', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('14', '1A00004', '敬剔稷', '300014', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('15', '1A00004', '拓跋带素', '300015', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('16', '1A00004', '祖绒', '300016', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('17', '1A00004', '舜跑', '300017', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('18', '1A00004', '郁芜', '300018', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('20', '1A00041', '师蛆页', '302018', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('21', '1A00041', '公仪岗', '302014', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('22', '1A00041', '叔孙仵哭', '302006', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('23', '1A00050', '师蛆页', '302018', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('24', '1A00051', '蓟趔', '302017', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('25', '1A00052', '巩胥', '302016', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('26', '1A00053', '姬朱涿', '302015', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('27', '1A00054', '公仪岗', '302014', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('28', '1A00055', '艾磺曝', '302013', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('29', '1A00056', '古蓼', '302012', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('30', '1A00057', '白袁', '302011', '50', '0', '201820192');
INSERT INTO `course_available` VALUES ('31', '1A00058', '何薰', '302010', '50', '0', '201820192');

-- ----------------------------
-- Table structure for course_exam
-- ----------------------------
DROP TABLE IF EXISTS `course_exam`;
CREATE TABLE `course_exam` (
  `course_no` varchar(255) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `be_arranged` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`course_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_exam
-- ----------------------------

-- ----------------------------
-- Table structure for course_remix
-- ----------------------------
DROP TABLE IF EXISTS `course_remix`;
CREATE TABLE `course_remix` (
  `remix_id` varchar(255) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `be_arranged` varchar(255) DEFAULT NULL,
  `remix_limit` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`remix_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_remix
-- ----------------------------

-- ----------------------------
-- Table structure for course_remix_record
-- ----------------------------
DROP TABLE IF EXISTS `course_remix_record`;
CREATE TABLE `course_remix_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `remix_id` varchar(255) DEFAULT NULL,
  `course_id` varchar(255) DEFAULT NULL,
  `be_arranged` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_remix_record
-- ----------------------------

-- ----------------------------
-- Table structure for course_select
-- ----------------------------
DROP TABLE IF EXISTS `course_select`;
CREATE TABLE `course_select` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_no` varchar(255) DEFAULT NULL,
  `stu_no` varchar(255) DEFAULT NULL,
  `select_tc` varchar(255) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1501 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_select
-- ----------------------------

-- ----------------------------
-- Table structure for course_select_result
-- ----------------------------
DROP TABLE IF EXISTS `course_select_result`;
CREATE TABLE `course_select_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_no` varchar(255) DEFAULT NULL,
  `tc_no` varchar(255) DEFAULT NULL,
  `stu_num` int(11) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_select_result
-- ----------------------------

-- ----------------------------
-- Table structure for exam_room
-- ----------------------------
DROP TABLE IF EXISTS `exam_room`;
CREATE TABLE `exam_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_no` varchar(255) DEFAULT NULL,
  `room_place` varchar(255) DEFAULT NULL,
  `capacity` varchar(255) DEFAULT NULL,
  `available` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam_room
-- ----------------------------
INSERT INTO `exam_room` VALUES ('1', 'A101', '教学主楼', '50', '1');
INSERT INTO `exam_room` VALUES ('2', 'A102', '教学主楼', '50', '1');
INSERT INTO `exam_room` VALUES ('3', 'A103', '教学主楼', '50', '1');
INSERT INTO `exam_room` VALUES ('4', 'A104', '教学主楼', '50', '1');
INSERT INTO `exam_room` VALUES ('5', 'A105', '教学主楼', '50', '1');
INSERT INTO `exam_room` VALUES ('6', 'A106', '教学主楼', '50', '1');
INSERT INTO `exam_room` VALUES ('7', 'A107', '教学主楼', '50', '1');
INSERT INTO `exam_room` VALUES ('8', 'A108', '教学主楼', '50', '1');
INSERT INTO `exam_room` VALUES ('9', 'A109', '教学主楼', '50', '1');
INSERT INTO `exam_room` VALUES ('10', 'B101', '教学主楼', '50', '1');
INSERT INTO `exam_room` VALUES ('11', 'B102', '教学主楼', '50', '1');
INSERT INTO `exam_room` VALUES ('12', 'B103', '教学主楼', '50', '1');
INSERT INTO `exam_room` VALUES ('13', 'B104', '教学主楼', '50', '1');
INSERT INTO `exam_room` VALUES ('14', 'B105', '教学主楼', '50', '1');
INSERT INTO `exam_room` VALUES ('15', 'B106', '教学主楼', '50', '1');
INSERT INTO `exam_room` VALUES ('16', 'B107', '教学主楼', '50', '1');
INSERT INTO `exam_room` VALUES ('17', 'B108', '教学主楼', '50', '1');
INSERT INTO `exam_room` VALUES ('18', 'B109', '教学主楼', '50', '1');

-- ----------------------------
-- Table structure for exam_room_arranged
-- ----------------------------
DROP TABLE IF EXISTS `exam_room_arranged`;
CREATE TABLE `exam_room_arranged` (
  `course_select_result_id` int(11) NOT NULL,
  `time_detail` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `teacher` varchar(255) DEFAULT NULL,
  `time_semester` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`course_select_result_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exam_room_arranged
-- ----------------------------

-- ----------------------------
-- Table structure for institution
-- ----------------------------
DROP TABLE IF EXISTS `institution`;
CREATE TABLE `institution` (
  `inst_no` varchar(11) NOT NULL,
  `inst_name` varchar(255) DEFAULT NULL,
  `inst_tel` varchar(255) DEFAULT NULL,
  `inst_describe` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`inst_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of institution
-- ----------------------------
INSERT INTO `institution` VALUES ('1', '计院', '100', '');
INSERT INTO `institution` VALUES ('2', '数院', '100', null);
INSERT INTO `institution` VALUES ('3', '法学院', '100', null);

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `major_no` varchar(11) NOT NULL,
  `major_name` varchar(255) DEFAULT NULL,
  `major_type` varchar(255) DEFAULT NULL,
  `major_institution` varchar(255) DEFAULT NULL,
  `major_describe` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`major_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES ('11', 'CS', '工学', '计院', '计算机科学与技术');
INSERT INTO `major` VALUES ('12', 'SE', '工学', '计院', '软件工程');
INSERT INTO `major` VALUES ('13', 'Iot', '工学', '计院', '物联网');
INSERT INTO `major` VALUES ('21', '数学与应用数学', '理学', '数院', null);
INSERT INTO `major` VALUES ('22', '信息与计算科学专业', '理学', '数院', null);
INSERT INTO `major` VALUES ('23', '统计学专业', '理学', '数院', null);
INSERT INTO `major` VALUES ('31', '法学', '法学', '法学院', null);
INSERT INTO `major` VALUES ('32', '政治学与行政学', '法学', '法学院', null);
INSERT INTO `major` VALUES ('33', '民族学', '法学', '法学院', null);

-- ----------------------------
-- Table structure for score_analyse
-- ----------------------------
DROP TABLE IF EXISTS `score_analyse`;
CREATE TABLE `score_analyse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tc_no` varchar(255) DEFAULT NULL,
  `tc_name` varchar(255) DEFAULT NULL,
  `stu_num` int(11) DEFAULT NULL,
  `fail_num` int(11) DEFAULT NULL,
  `fail_rate` varchar(255) DEFAULT NULL,
  `score_avg` double DEFAULT NULL,
  `time_semester` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of score_analyse
-- ----------------------------

-- ----------------------------
-- Table structure for select_limit
-- ----------------------------
DROP TABLE IF EXISTS `select_limit`;
CREATE TABLE `select_limit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `limit_id` int(11) DEFAULT NULL,
  `major_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of select_limit
-- ----------------------------
INSERT INTO `select_limit` VALUES ('1', '5', '11');
INSERT INTO `select_limit` VALUES ('2', '5', '12');
INSERT INTO `select_limit` VALUES ('3', '5', '13');
INSERT INTO `select_limit` VALUES ('4', '5', '21');
INSERT INTO `select_limit` VALUES ('5', '5', '22');
INSERT INTO `select_limit` VALUES ('6', '5', '23');
INSERT INTO `select_limit` VALUES ('7', '6', '21');
INSERT INTO `select_limit` VALUES ('8', '6', '22');
INSERT INTO `select_limit` VALUES ('9', '6', '23');
INSERT INTO `select_limit` VALUES ('10', '7', '21');
INSERT INTO `select_limit` VALUES ('11', '7', '22');
INSERT INTO `select_limit` VALUES ('12', '7', '23');
INSERT INTO `select_limit` VALUES ('13', '8', '11');
INSERT INTO `select_limit` VALUES ('14', '8', '12');
INSERT INTO `select_limit` VALUES ('15', '8', '13');
INSERT INTO `select_limit` VALUES ('16', '9', '11');
INSERT INTO `select_limit` VALUES ('17', '10', '12');
INSERT INTO `select_limit` VALUES ('18', '11', '13');
INSERT INTO `select_limit` VALUES ('19', '12', '21');
INSERT INTO `select_limit` VALUES ('20', '13', '22');
INSERT INTO `select_limit` VALUES ('21', '14', '23');
INSERT INTO `select_limit` VALUES ('22', '15', '31');
INSERT INTO `select_limit` VALUES ('23', '16', '32');
INSERT INTO `select_limit` VALUES ('24', '17', '33');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `stu_no` varchar(11) NOT NULL,
  `stu_name` varchar(255) DEFAULT NULL,
  `stu_gender` varchar(255) DEFAULT NULL,
  `stu_grade` varchar(255) DEFAULT NULL,
  `stu_major` varchar(255) DEFAULT NULL,
  `stu_institution` varchar(255) DEFAULT NULL,
  `resident` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`stu_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('201711001', '勾卫', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711002', '练芝', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711003', '卞森', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711004', '钮绸', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711005', '老冶妻', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711006', '篁戚', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711007', '樊赛儿', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711008', '宇文泄吮', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711009', '公仪枣贶', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711010', '是恼嗤', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711011', '山控畅', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711012', '权蹉', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711013', '申郁', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711014', '齐婴竹', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711015', '年郭鲻', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711016', '苗禳卮', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711017', '公乘稽泔', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711018', '巩霄薛', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711019', '游泷', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711020', '贡养辁', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711021', '蒋礅', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711022', '仲孙媪', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711023', '连吓', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711024', '茹戡', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711025', '牧嚎冥', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711026', '蔡措弼', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711027', '越蜾插', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711028', '南宫点斡', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711029', '原懵悚', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711030', '种遛', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711031', '郜镍蓬', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711032', '第五潮', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711033', '皮翳', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711034', '轩辕鹃篱', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711035', '韩缳怪', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711036', '钮鹾焊', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711037', '第五烃', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711038', '蔡麦', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711039', '令狐赖韪', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711040', '郜闳', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711041', '逯蜇氐', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711042', '程镞琮', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711043', '苗尖歧', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711044', '蓟攘山', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711045', '程纶', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711046', '谷真', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711047', '盖榛', '男', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711048', '爱苎', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711049', '凤郗', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201711050', '康慵白', '女', '2017', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201712001', '窦笥瘤', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712002', '秘饼', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712003', '年琛卦', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712004', '仓腊砑', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712005', '蓟恤眶', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712006', '公乘帖', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712007', '畅倚拜', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712008', '厍螂茺', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712009', '仓走佣', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712010', '嵇五解', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712011', '车舒拯', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712012', '屈俅壮', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712013', '邝箱偈', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712014', '尤搐稼', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712015', '凤丰锇', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712016', '畅要', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712017', '仲长溉浸', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712018', '蹇煎瘐', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712019', '向茌', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712020', '聂獯', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712021', '仲长嫔刳', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712022', '邝疆', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712023', '余肥', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712024', '逄肺架', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712025', '田霜晓', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712026', '韶琳肆', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712027', '第五丐', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712028', '种阜旧', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712029', '卞闶足', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712030', '公仪勇', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712031', '谯姨', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712032', '宦饽耄', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712033', '谯讨鹾', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712034', '练牿嘀', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712035', '钮釉撖', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712036', '黎冁灶', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712037', '姬惊隳', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712038', '朱僮', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712039', '钟离牖觚', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712040', '宦眭', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712041', '秘展', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712042', '师戳汲', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712043', '蓟第酞', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712044', '申楗', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712045', '钟离醯实', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712046', '公乘郅黼', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712047', '朱窀昕', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712048', '樊诚萄', '男', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712049', '卫遇谊', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201712050', '公孙浈瞑', '女', '2017', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201713001', '茹改', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713002', '易冒', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713003', '裴歉葜', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713004', '桓琨', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713005', '古垲蜮', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713006', '晁贱惊', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713007', '齐塍', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713008', '纪筘', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713009', '公乘腭', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713010', '朱晡', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713011', '山蹰', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713012', '黎龉', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713013', '龚肺铖', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713014', '年典殃', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713015', '扶钮', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713016', '马镇媚', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713017', '年蓝', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713018', '艾孜螳', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713019', '苗番', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713020', '巩躔峡', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713021', '太史醐趾', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713022', '康滓办', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713023', '逯揉', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713024', '年脒', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713025', '畅啬罨', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713026', '盖箪', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713027', '屈中怫', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713028', '厍妤', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713029', '堵朱绫', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713030', '闵嵝赊', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713031', '司城有遗', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713032', '辛崦蘑', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713033', '司城弧', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713034', '铁奥瘪', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713035', '庾渥长', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713036', '仲喂', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713037', '仪粤', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713038', '缑添迄', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713039', '闵侑', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713040', '万俟渴浙', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713041', '熊渚念', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713042', '第五轴', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713043', '隆醑晰', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713044', '呼延城莓', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713045', '韩建疃', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713046', '习庀', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713047', '钟离筅', '女', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713048', '篁糨', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713049', '姬宴拳', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201713050', '龚住', '男', '2017', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201721001', '谷轿', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721002', '聂傥', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721003', '佟喏', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721004', '虞霸昝', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721005', '元澹', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721006', '项素', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721007', '滑瘭', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721008', '祝锖睃', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721009', '佟尕漳', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721010', '蓬茨', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721011', '宿芭', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721012', '古衬', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721013', '龚镫狱', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721014', '卞酬绽', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721015', '樊赁', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721016', '马轱室', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721017', '舒演翻', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721018', '是擂', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721019', '公乘莸', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721020', '谷丌', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721021', '宇文绌', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721022', '蓟钊貂', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721023', '秦莛占', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721024', '畅壮', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721025', '屈耆夥', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721026', '车蛄', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721027', '凌攒', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721028', '鲁酞', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721029', '越另罄', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721030', '贡豹', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721031', '傅汪岬', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721032', '游育', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721033', '蔡樯', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721034', '轩辕鸳柜', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721035', '吉莠遨', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721036', '鲁射舨', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721037', '轩辕崭', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721038', '韩绰鱿', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721039', '练狍疸', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721040', '哈租', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721041', '逄珩', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721042', '令狐喷', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721043', '令狐颦婺', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721044', '练碉', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721045', '谈舄莶', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721046', '充贽罔', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721047', '沃椋檗', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721048', '高喾榱', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721049', '伯搠阄', '男', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201721050', '端屉鲤', '女', '2017', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201722001', '敖碚', '男', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722002', '练绺', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722003', '黎枰', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722004', '权亚荒', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722005', '龚争跤', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722006', '师嫒', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722007', '弥郝', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722008', '龚怦', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722009', '蓟蠖', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722010', '申痹', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722011', '胡梧铢', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722012', '苗醋', '男', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722013', '权乳', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722014', '康松熵', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722015', '逯昔', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722016', '扶槭苯', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722017', '谷嗤陀', '男', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722018', '蓟舳稗', '男', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722019', '扶粲院', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722020', '鱼氖', '男', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722021', '孔蝓', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722022', '酆哳', '男', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722023', '黄醵', '男', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722024', '廖炷', '男', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722025', '冷陌', '男', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722026', '从锔丞', '男', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722027', '胡母桠', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722028', '傅史', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722029', '蔡劐', '男', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722030', '傅隶寥', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722031', '南宫鹃', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722032', '墨闹', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722033', '亓艳箢', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722034', '皮刀', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722035', '沈悚港', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722036', '郏箕', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722037', '庞艚菅', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722038', '练嗬碥', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722039', '逄黑', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722040', '令狐柬', '男', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722041', '郏嗫叶', '男', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722042', '缪浯', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722043', '邵涯瘃', '男', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722044', '蔺互', '男', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722045', '诸葛臆', '男', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722046', '仇笞材', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722047', '贾偶', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722048', '繁幞蝓', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722049', '栾鲍', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201722050', '湛棋驺', '女', '2017', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723001', '贝潞', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723002', '芮亳', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723003', '扈蕲', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723004', '戚嶙纲', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723005', '娄胯', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723006', '满歉埕', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723007', '娄靓予', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723008', '谢溱襻', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723009', '满巩', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723010', '甘项搞', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723011', '冀庇', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723012', '赫连煎盈', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723013', '汲考蘸', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723014', '尉迟刘', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723015', '枚挚藕', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723016', '靳翻', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723017', '阴獯', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723018', '文咭喽', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723019', '滕锁', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723020', '钱振', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723021', '戎膛', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723022', '郭洎辊', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723023', '舜言', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723024', '祖吆', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723025', '郁媛咕', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723026', '公羊嗑唁', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723027', '胥禊醵', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723028', '李醛', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723029', '糜更', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723030', '贲哺', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723031', '须七', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723032', '赫连莰拨', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723033', '应黼怩', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723034', '车正祜', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723035', '燕纩搽', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723036', '贺危钮', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723037', '江邴芫', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723038', '赫连谎', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723039', '北宫蓿', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723040', '匡汐', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723041', '公良彭', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723042', '皇甫柳', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723043', '江鼐', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723044', '枚襻', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723045', '靳乔铫', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723046', '敬闽疚', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723047', '倪伊', '女', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723048', '浦璜', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723049', '都销始', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201723050', '闻人挞阜', '男', '2017', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201731001', '海猿', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731002', '邵淹寒', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731003', '边羲侬', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731004', '曾胗庭', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731005', '屠撺', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731006', '路气', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731007', '耿倪', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731008', '归跚', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731009', '华呤荮', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731010', '风捎', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731011', '季橙缎', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731012', '濮耳鹾', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731013', '季缈篦', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731014', '欧阳脲', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731015', '况菇溧', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731016', '官哒婧', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731017', '上官窝脘', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731018', '毋丘狈做', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731019', '寿或逊', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731020', '冼虾澍', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731021', '牛喇辉', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731022', '甄轾', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731023', '赖氮应', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731024', '贺兰跳', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731025', '饶荑棉', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731026', '端木暾', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731027', '曲贷', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731028', '费吴帔', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731029', '慕际盔', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731030', '彭碰', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731031', '于耕', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731032', '左可', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731033', '端泽弓', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731034', '东门手', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731035', '谭煳人', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731036', '蔚沟冫', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731037', '慕郡', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731038', '公孙舍', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731039', '宋稀', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731040', '赏耱坭', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731041', '原呻俟', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731042', '宋藿', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731043', '高蓿评', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731044', '郎丽历', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731045', '鲜拣', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731046', '傅敕', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731047', '沈蜱霞', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731048', '茹却', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731049', '仲孙洮铝', '女', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201731050', '原纭', '男', '2017', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201732001', '萧窃', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732002', '全唠正', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732003', '仉届', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732004', '陆淹笾', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732005', '司空吾狁', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732006', '柯沭', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732007', '荣葸', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732008', '南膻', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732009', '柯耘筐', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732010', '融尚洲', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732011', '兀官缎觋', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732012', '恽涪账', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732013', '昝拆', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732014', '司寇谈炷', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732015', '戈吹', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732016', '柳蹯瘿', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732017', '阳窟', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732018', '向按', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732019', '桓岩衾', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732020', '阳肜龆', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732021', '花垂', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732022', '祝鸸嘟', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732023', '滑译门', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732024', '宾贞', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732025', '虞幔', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732026', '公褛', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732027', '董燎督', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732028', '吕蘼', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732029', '祝铑', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732030', '万倪', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732031', '何饵舶', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732032', '卜筅疏', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732033', '董恧', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732034', '福狨姜', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732035', '闾丘勇古', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732036', '言竣榄', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732037', '郦筮', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732038', '钱醢桶', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732039', '枚悭', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732040', '拓跋铎', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732041', '匡冶廒', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732042', '童瘀', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732043', '柏廖茂', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732044', '狄骅', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732045', '宣耳', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732046', '拓跋浜笫', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732047', '法錾', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732048', '水膣', '男', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732049', '颜惫', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201732050', '揭葡妾', '女', '2017', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201733001', '侴洇', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733002', '来跃', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733003', '岳涂纨', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733004', '从俾', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733005', '冷徊', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733006', '璩腱舳', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733007', '孔晃', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733008', '史捋', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733009', '司马塑咸', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733010', '亢掾氚', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733011', '鲍育此', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733012', '席晾撂', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733013', '史呙', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733014', '莫杜', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733015', '华治孀', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733016', '亢偈', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733017', '经罘', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733018', '唐砚鸥', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733019', '那殊', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733020', '濮宇', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733021', '萧材', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733022', '籍嘉绢', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733023', '麻芸', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733024', '房承', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733025', '费醴荡', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733026', '牛聋钩', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733027', '金笛', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733028', '唐摄', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733029', '纵骨愕', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733030', '兀官虹', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733031', '火背', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733032', '来荥', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733033', '邰铩馏', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733034', '柳歇猖', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733035', '荀酲嬲', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733036', '胡母谳', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733037', '綦圭褫', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733038', '侴欤伸', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733039', '璩艨', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733040', '孔肝樵', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733041', '黄劫', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733042', '南门碌', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733043', '酆酥', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733044', '南门鳋水', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733045', '司城炝焉', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733046', '桑嶷', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733047', '严狞', '男', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733048', '鲍抟', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733049', '和形', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201733050', '羊胯', '女', '2017', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201811001', '韦琰', '女', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811002', '茹疏', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811003', '贺兰忭', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811004', '寿氧该', '女', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811005', '曲周', '女', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811006', '麻撬', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811007', '魏耵工', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811008', '姚绗', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811009', '通枣辋', '女', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811010', '步鼐', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811011', '宁蕴', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811012', '裘雌爰', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811013', '巨蹬', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811014', '缪耿', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811015', '姚另夔', '女', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811016', '步炕茎', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811017', '空螬墀', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811018', '繁忒胁', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811019', '公西返', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811020', '姜振', '女', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811021', '史浯蒽', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811022', '仲污裆', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811023', '终痞獠', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811024', '仲糸', '女', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811025', '经呵羼', '女', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811026', '那处菲', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811027', '萧凤', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811028', '史肼', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811029', '咸杷', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811030', '官秆', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811031', '经臊袅', '女', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811032', '萧洱', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811033', '季会', '女', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811034', '金铫', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811035', '萧陬阼', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811036', '郈罂', '女', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811037', '衡奇栏', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811038', '简琢凯', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811039', '毋丘赈掳', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811040', '金坛丫', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811041', '介铺媚', '女', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811042', '简尹', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811043', '阮驰', '女', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811044', '璩祀', '女', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811045', '班猗', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811046', '来构', '女', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811047', '翁榉压', '女', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811048', '帅献', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811049', '蓝谦哕', '女', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201811050', '仰倡惘', '男', '2018', 'CS', '计院', '1');
INSERT INTO `student` VALUES ('201812001', '衡本', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812002', '昌臻', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812003', '皮蟪', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812004', '练爵妖', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812005', '钮鸿放', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812006', '后屯湘', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812007', '戴聩', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812008', '乌丈锞', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812009', '太叔植', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812010', '梁丘悱', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812011', '范腻', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812012', '端竽宛', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812013', '焦泾富', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812014', '褚延', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812015', '卫溜旒', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812016', '公孙嗍玢', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812017', '谭远吝', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812018', '石盲遏', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812019', '巴嗜', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812020', '商棍', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812021', '潘诰', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812022', '淳于尉侄', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812023', '闻岛', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812024', '王蛊趄', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812025', '潘滟蹙', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812026', '詹盱拆', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812027', '钟邦', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812028', '挚莸漤', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812029', '东郭闪柳', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812030', '牟蚨', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812031', '瞿抢', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812032', '欧究', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812033', '束照儿', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812034', '过嚣裨', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812035', '莘焘', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812036', '冯侄臃', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812037', '葛钜', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812038', '成拦', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812039', '佴瘀层', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812040', '常镤勤', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812041', '梁丘疳', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812042', '包酹颛', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812043', '苌丧', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812044', '禄窕', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812045', '盛佶澶', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812046', '郁客噶', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812047', '谷梁娟热', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812048', '盛愤', '女', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812049', '井羝阜', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201812050', '毕撬痄', '男', '2018', 'SE', '计院', '1');
INSERT INTO `student` VALUES ('201813001', '夏笠裒', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813002', '焦控躇', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813003', '景狯谑', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813004', '麦揆抿', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813005', '阙人沛', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813006', '段干汽族', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813007', '单佃', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813008', '景攴辱', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813009', '东郭逐', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813010', '富睑', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813011', '景莨', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813012', '潘削稿', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813013', '詹魄墨', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813014', '葛孥蔗', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813015', '邬笈厨', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813016', '柴督', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813017', '伏绫', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813018', '葛褐', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813019', '仰卦', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813020', '孔贳', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813021', '荀邢摄', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813022', '鄂蝰', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813023', '召噬', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813024', '訾仃', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813025', '铁崎', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813026', '万俟婿秩', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813027', '卢菽茏', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813028', '羊帚簪', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813029', '迟咆帆', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813030', '于瑷', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813031', '索莲', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813032', '张廖隗果', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813033', '司马后', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813034', '桂尬锛', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813035', '门舣', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813036', '施怊懑', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813037', '班桷', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813038', '袁缵叁', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813039', '从�锝', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813040', '孔耠', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813041', '兀官胗酢', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813042', '柳臀国', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813043', '叔孙琦煅', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813044', '鲜于芤', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813045', '花蝇砬', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813046', '屈突肜', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813047', '晁谥括', '女', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813048', '佟僮螽', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813049', '裴瞎胖', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201813050', '勾帘', '男', '2018', 'Iot', '计院', '1');
INSERT INTO `student` VALUES ('201821001', '唐晒', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821002', '壤驷嘤琅', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821003', '冀铲鄱', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821004', '浦订舁', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821005', '储遄', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821006', '赵抨臭', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821007', '宗二', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821008', '贺懂邃', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821009', '北宫锯', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821010', '浦奈袈', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821011', '匡攸荃', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821012', '厉小', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821013', '乜挛', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821014', '宰父霸', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821015', '胥樱锈', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821016', '贲湎', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821017', '温撅', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821018', '贲芟', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821019', '殷馁掠', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821020', '胥卒趴', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821021', '李铵', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821022', '杞莲耳', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821023', '梅韩蚺', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821024', '窦眼圹', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821025', '罗邹鼋', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821026', '罗襦', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821027', '疏宏阼', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821028', '别讹', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821029', '鄢桫', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821030', '梅缉闲', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821031', '章蚂', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821032', '明把', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821033', '涂氍吡', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821034', '公冶歌郏', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821035', '巢赞', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821036', '能唼蜚', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821037', '喻写高', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821038', '匡籀', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821039', '厉獗效', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821040', '虎波', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821041', '乜忙蟪', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821042', '毛剁', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821043', '丁呐逮', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821044', '枚搞', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821045', '拓跋朋', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821046', '浦椹趋', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821047', '阴稆', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821048', '颜止垓', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821049', '尉迟拄', '女', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201821050', '鞠胴托', '男', '2018', '数学与应用数学', '数院', '1');
INSERT INTO `student` VALUES ('201822001', '随鲈', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822002', '单于诜', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822003', '欧蝻衄', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822004', '安沩', '女', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822005', '微生楷吱', '女', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822006', '骆官', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822007', '彭郸玟', '女', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822008', '端蹩陛', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822009', '戴裕觌', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822010', '范阴', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822011', '申屠桓', '女', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822012', '幸惴', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822013', '石檩醪', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822014', '荆鲚', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822015', '高岔', '女', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822016', '公孙面氆', '女', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822017', '蒋仡鲢', '女', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822018', '郎猛态', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822019', '巴涿椎', '女', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822020', '宋戾', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822021', '石悸', '女', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822022', '游艘', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822023', '墨剧', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822024', '原壳', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822025', '时遛', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822026', '夏职', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822027', '原榛闾', '女', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822028', '瞿恬诬', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822029', '单于讦', '女', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822030', '牟歆鲑', '女', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822031', '淳于熏区', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822032', '东郭湄桢', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822033', '莘铹', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822034', '冯咖', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822035', '单于蜞蕾', '女', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822036', '束茆', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822037', '胶猊昨', '女', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822038', '查恃', '女', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822039', '成愈婿', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822040', '诸堆', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822041', '竹人悝', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822042', '后镌', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822043', '徐桕', '女', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822044', '常伍辊', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822045', '成茄胼', '女', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822046', '翟槠傻', '女', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822047', '充跎', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822048', '沃桊', '男', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822049', '后戴', '女', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201822050', '梁丘郦薷', '女', '2018', '信息与计算科学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823001', '邵岸', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823002', '云着史', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823003', '段干襞', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823004', '郁铳香', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823005', '苌罕', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823006', '涂仡觇', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823007', '郑邱诅', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823008', '晏循', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823009', '景荒拎', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823010', '苍荽戬', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823011', '单刽赛', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823012', '臧匪', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823013', '抗纯波', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823014', '汲阁', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823015', '尚缟', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823016', '柏咩徊', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823017', '农芬甥', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823018', '戎倥', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823019', '揭谚', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823020', '文咽', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823021', '汝镟扬', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823022', '郭朵', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823023', '鞠逮', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823024', '郁猖', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823025', '农唢', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823026', '水总搡', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823027', '武劭', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823028', '梅砖', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823029', '楼了焖', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823030', '米璨佝', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823031', '汝袭', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823032', '温尿缜', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823033', '赫连苋', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823034', '甘浊趼', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823035', '郇易', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823036', '羿齿彷', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823037', '汪娶', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823038', '北宫磨鼗', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823039', '虎画', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823040', '池垩楱', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823041', '冀粘媪', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823042', '池榷', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823043', '密除', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823044', '浦愣', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823045', '毛叱', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823046', '江送', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823047', '皇甫锹锘', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823048', '楚膀', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823049', '浦舌考', '女', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201823050', '靳汆犄', '男', '2018', '统计学专业', '数院', '1');
INSERT INTO `student` VALUES ('201831001', '利挈', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831002', '太叔薰鸬', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831003', '阎域', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831004', '单于昱', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831005', '佘菸', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831006', '章鹎捧', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831007', '禄璞', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831008', '周胳', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831009', '苌稔辣', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831010', '松偶', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831011', '苍颊', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831012', '盛尊磬', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831013', '庄花腧', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831014', '苌墩卧', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831015', '臧兔价', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831016', '钦鹕', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831017', '郝哿', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831018', '臧姗', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831019', '景蚺坌', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831020', '百里皇', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831021', '杭脍貔', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831022', '双弗', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831023', '杭广', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831024', '苏泪踬', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831025', '文恍摹', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831026', '郁捐', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831027', '孙黄伯', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831028', '狄馊蟀', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831029', '法蚜', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831030', '达水椠', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831031', '邴箝', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831032', '米斌芦', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831033', '水澈糅', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831034', '公羊跌', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831035', '农娲絮', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831036', '舜具畚', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831037', '寇邬', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831038', '窦摄奥', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831039', '寇绲', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831040', '武哀洵', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831041', '别蔚', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831042', '章亟垛', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831043', '谷梁忱', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831044', '邓诽怂', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831045', '糜喔茑', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831046', '罗翎', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831047', '宰父稼悚', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831048', '晁请', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831049', '白跣铐', '男', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201831050', '滑介难', '女', '2018', '法学', '法学院', '1');
INSERT INTO `student` VALUES ('201832001', '薛绷囹', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832002', '宇文滏', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832003', '舒驱', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832004', '嵇软', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832005', '溥防箨', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832006', '太史眉', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832007', '秘谲', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832008', '凌绿', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832009', '崔质', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832010', '越氽潼', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832011', '原掭郅', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832012', '茅隋螺', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832013', '轩辕馘酽', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832014', '墨邕夜', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832015', '牧吓幽', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832016', '庞硗', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832017', '韦涞谨', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832018', '南宫疸俺', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832019', '劳躁', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832020', '皮吉', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832021', '令狐更艽', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832022', '宦蠃', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832023', '郜雀', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832024', '第五狞', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832025', '韦龄', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832026', '褚嚣', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832027', '翟崃', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832028', '焦悸机', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832029', '焦碳', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832030', '谈溴', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832031', '巴睥硭', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832032', '红桓睫', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832033', '慕芫噱', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832034', '谈葶迓', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832035', '谭凶', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832036', '蔚氵圣', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832037', '弓晡苦', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832038', '卫醋', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832039', '时顾旦', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832040', '闻弊', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832041', '欧渺', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832042', '安嗔町', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832043', '洪裙陴', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832044', '詹辍笋', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832045', '束貂', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832046', '瞿纯', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832047', '牟氽', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832048', '欧耍蜈', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832049', '束腌', '女', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201832050', '微生俜酮', '男', '2018', '政治学与行政学', '法学院', '1');
INSERT INTO `student` VALUES ('201833001', '逄蕨捩', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833002', '公孙绋氛', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833003', '时碾围', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833004', '皋翦膑', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833005', '石墅', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833006', '红锬莹', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833007', '慕锰', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833008', '巴爷凇', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833009', '仲孙岌', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833010', '游时嫩', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833011', '贡儿璧', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833012', '仲孙瞽梏', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833013', '赏轾', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833014', '相炔', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833015', '冯擢惠', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833016', '东冂', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833017', '淳于裨', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833018', '瞿秘碲', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833019', '葛摇倩', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833020', '常该厢', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833021', '单于邓完', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833022', '佘潜', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833023', '安临', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833024', '伏佰', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833025', '佘禾澧', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833026', '徐蟹', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833027', '奚袜睨', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833028', '常肠或', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833029', '包藩臃', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833030', '过闵', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833031', '党挂', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833032', '诸漆登', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833033', '乐伽啦', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833034', '后序鸣', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833035', '奚月', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833036', '太叔鲠煨', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833037', '后埭羸', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833038', '吴锝', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833039', '折麓蚵', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833040', '宗正闵我', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833041', '段干酚孕', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833042', '吴莒汝', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833043', '云爸仁', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833044', '景咚占', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833045', '双韪切', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833046', '单唷', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833047', '段祆', '男', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833048', '关花', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833049', '苍诟', '女', '2018', '民族学', '法学院', '1');
INSERT INTO `student` VALUES ('201833050', '晏鹄', '女', '2018', '民族学', '法学院', '1');

-- ----------------------------
-- Table structure for stu_exam_detail
-- ----------------------------
DROP TABLE IF EXISTS `stu_exam_detail`;
CREATE TABLE `stu_exam_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_no` varchar(255) DEFAULT NULL,
  `course_no` varchar(255) DEFAULT NULL,
  `time_detail` varchar(255) DEFAULT NULL,
  `exam_room` varchar(255) DEFAULT NULL,
  `sit_no` int(11) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1501 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_exam_detail
-- ----------------------------

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tc_no` varchar(11) NOT NULL,
  `tc_name` varchar(255) DEFAULT NULL,
  `tc_gender` varchar(255) DEFAULT NULL,
  `tc_inst` varchar(255) DEFAULT NULL,
  `tc_tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tc_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('300001', '老王', '男', '数院', '1231');
INSERT INTO `teacher` VALUES ('300002', '老余', '男', '数院', '1321');
INSERT INTO `teacher` VALUES ('300003', '蓬篦', '男', '数院', '1111');
INSERT INTO `teacher` VALUES ('300004', '庄鄙', '男', '数院', '1111');
INSERT INTO `teacher` VALUES ('300005', '涂腹脓', '男', '数院', '1111');
INSERT INTO `teacher` VALUES ('300006', '巢蠊', '男', '数院', '1111');
INSERT INTO `teacher` VALUES ('300007', '匡届', '男', '数院', '1111');
INSERT INTO `teacher` VALUES ('300008', '乔逵', '男', '数院', '1111');
INSERT INTO `teacher` VALUES ('300009', '厉究峋', '男', '数院', '1111');
INSERT INTO `teacher` VALUES ('300010', '福禧', '男', '数院', '1111');
INSERT INTO `teacher` VALUES ('300011', '羊舌褰', '男', '数院', '1111');
INSERT INTO `teacher` VALUES ('300012', '毛蠕', '男', '数院', '1111');
INSERT INTO `teacher` VALUES ('300013', '柏瀛', '男', '数院', '1111');
INSERT INTO `teacher` VALUES ('300014', '敬剔稷', '男', '数院', '1111');
INSERT INTO `teacher` VALUES ('300015', '拓跋带素', '男', '数院', '1111');
INSERT INTO `teacher` VALUES ('300016', '祖绒', '男', '数院', '1111');
INSERT INTO `teacher` VALUES ('300017', '舜跑', '男', '数院', '1111');
INSERT INTO `teacher` VALUES ('300018', '郁芜', '男', '数院', '1111');
INSERT INTO `teacher` VALUES ('301001', '元易妈', '女', '计院', '1111');
INSERT INTO `teacher` VALUES ('301002', '桓督', '男', '计院', '1111');
INSERT INTO `teacher` VALUES ('301003', '裴臻取', '女', '计院', '1111');
INSERT INTO `teacher` VALUES ('301004', '艾待', '女', '计院', '1111');
INSERT INTO `teacher` VALUES ('301005', '权起', '女', '计院', '1111');
INSERT INTO `teacher` VALUES ('301006', '昌钸', '女', '计院', '1111');
INSERT INTO `teacher` VALUES ('301007', '师装往', '男', '计院', '1111');
INSERT INTO `teacher` VALUES ('301008', '樊殚', '女', '计院', '1111');
INSERT INTO `teacher` VALUES ('301009', '施记', '男', '计院', '1111');
INSERT INTO `teacher` VALUES ('301010', '束回', '女', '计院', '1111');
INSERT INTO `teacher` VALUES ('301011', '邴丁', '女', '计院', '1111');
INSERT INTO `teacher` VALUES ('301012', '胥蜩钠', '女', '计院', '1111');
INSERT INTO `teacher` VALUES ('301013', '杞侗镨', '女', '计院', '1111');
INSERT INTO `teacher` VALUES ('301014', '胥痤', '女', '计院', '1111');
INSERT INTO `teacher` VALUES ('301015', '寇础', '女', '计院', '1111');
INSERT INTO `teacher` VALUES ('301016', '宰艋觐', '女', '计院', '1111');
INSERT INTO `teacher` VALUES ('301017', '阿酹', '男', '计院', '1111');
INSERT INTO `teacher` VALUES ('301018', '闾丘糍摈', '男', '计院', '1111');
INSERT INTO `teacher` VALUES ('302001', '毕坷', '女', '法学院', '1111');
INSERT INTO `teacher` VALUES ('302002', '向惚', '男', '法学院', '1111');
INSERT INTO `teacher` VALUES ('302003', '元瞥箬', '女', '法学院', '1111');
INSERT INTO `teacher` VALUES ('302004', '宿锒硌', '女', '法学院', '1111');
INSERT INTO `teacher` VALUES ('302005', '覃物', '女', '法学院', '1111');
INSERT INTO `teacher` VALUES ('302006', '叔孙仵哭', '男', '法学院', '1111');
INSERT INTO `teacher` VALUES ('302007', '冉郎', '男', '法学院', '1111');
INSERT INTO `teacher` VALUES ('302008', '方茛为', '女', '法学院', '1111');
INSERT INTO `teacher` VALUES ('302009', '言浔传', '女', '法学院', '1111');
INSERT INTO `teacher` VALUES ('302010', '何薰', '男', '法学院', '1111');
INSERT INTO `teacher` VALUES ('302011', '白袁', '男', '法学院', '1111');
INSERT INTO `teacher` VALUES ('302012', '古蓼', '男', '法学院', '1111');
INSERT INTO `teacher` VALUES ('302013', '艾磺曝', '女', '法学院', '1111');
INSERT INTO `teacher` VALUES ('302014', '公仪岗', '女', '法学院', '1111');
INSERT INTO `teacher` VALUES ('302015', '姬朱涿', '男', '法学院', '1111');
INSERT INTO `teacher` VALUES ('302016', '巩胥', '女', '法学院', '1111');
INSERT INTO `teacher` VALUES ('302017', '蓟趔', '男', '法学院', '1111');
INSERT INTO `teacher` VALUES ('302018', '师蛆页', '女', '法学院', '1111');

-- ----------------------------
-- Table structure for teacher_frequency
-- ----------------------------
DROP TABLE IF EXISTS `teacher_frequency`;
CREATE TABLE `teacher_frequency` (
  `tc_no` varchar(255) NOT NULL,
  `frequency` int(11) DEFAULT NULL,
  `time_semester` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tc_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_frequency
-- ----------------------------
INSERT INTO `teacher_frequency` VALUES ('300001', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('300002', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('300003', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('300004', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('300005', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('300006', '0', '201820192');
INSERT INTO `teacher_frequency` VALUES ('300007', '0', '201820192');
INSERT INTO `teacher_frequency` VALUES ('300008', '0', '201820192');
INSERT INTO `teacher_frequency` VALUES ('300009', '0', '201820192');
INSERT INTO `teacher_frequency` VALUES ('300010', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('300011', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('300012', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('300013', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('300014', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('300015', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('300016', '0', '201820192');
INSERT INTO `teacher_frequency` VALUES ('300017', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('300018', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('301001', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('301002', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('301003', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('301004', '0', '201820192');
INSERT INTO `teacher_frequency` VALUES ('301005', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('301006', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('301007', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('301008', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('301009', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('301010', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('301011', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('301012', '0', '201820192');
INSERT INTO `teacher_frequency` VALUES ('301013', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('301014', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('301015', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('301016', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('301017', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('301018', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('302001', '0', '201820192');
INSERT INTO `teacher_frequency` VALUES ('302002', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('302003', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('302004', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('302005', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('302006', '0', '201820192');
INSERT INTO `teacher_frequency` VALUES ('302007', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('302008', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('302009', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('302010', '0', '201820192');
INSERT INTO `teacher_frequency` VALUES ('302011', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('302012', '0', '201820192');
INSERT INTO `teacher_frequency` VALUES ('302013', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('302014', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('302015', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('302016', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('302017', '1', '201820192');
INSERT INTO `teacher_frequency` VALUES ('302018', '0', '201820192');

-- ----------------------------
-- Table structure for time_table
-- ----------------------------
DROP TABLE IF EXISTS `time_table`;
CREATE TABLE `time_table` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time_detail` varchar(255) DEFAULT NULL,
  `time_slot` varchar(255) DEFAULT NULL,
  `be_arranged` varchar(255) DEFAULT NULL,
  `exam_room_arranged` varchar(255) DEFAULT NULL,
  `remix_id` varchar(255) DEFAULT NULL,
  `time_semester` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of time_table
-- ----------------------------
INSERT INTO `time_table` VALUES ('1', '111', 'am', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('2', '112', 'am', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('3', '113', 'pm', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('4', '114', 'pm', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('5', '121', 'am', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('6', '122', 'am', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('7', '123', 'pm', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('8', '124', 'pm', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('9', '131', 'am', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('10', '132', 'am', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('11', '133', 'pm', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('12', '134', 'pm', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('13', '141', 'am', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('14', '142', 'am', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('15', '143', 'pm', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('16', '144', 'pm', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('17', '151', 'am', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('18', '152', 'am', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('19', '153', 'pm', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('20', '154', 'pm', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('21', '211', 'am', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('22', '212', 'am', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('23', '213', 'pm', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('24', '214', 'pm', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('25', '221', 'am', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('26', '222', 'am', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('27', '223', 'pm', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('28', '224', 'pm', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('29', '231', 'am', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('30', '232', 'am', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('31', '233', 'pm', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('32', '234', 'pm', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('33', '241', 'am', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('34', '242', 'am', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('35', '243', 'pm', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('36', '244', 'pm', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('37', '251', 'am', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('38', '252', 'am', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('39', '253', 'pm', '0', '0', null, '201820192');
INSERT INTO `time_table` VALUES ('40', '254', 'pm', '0', '0', null, '201820192');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` varchar(255) NOT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `user_type` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1000', '老王', '300001', '123456', '2');
INSERT INTO `user` VALUES ('10000', '勾卫', '201711001', '123465', '1');
INSERT INTO `user` VALUES ('10001', '练芝', '201711002', '123465', '1');
INSERT INTO `user` VALUES ('10002', '卞森', '201711003', '123465', '1');
INSERT INTO `user` VALUES ('10003', '钮绸', '201711004', '123465', '1');
INSERT INTO `user` VALUES ('10004', '老冶妻', '201711005', '123465', '1');
INSERT INTO `user` VALUES ('10005', '篁戚', '201711006', '123465', '1');
INSERT INTO `user` VALUES ('10006', '樊赛儿', '201711007', '123465', '1');
INSERT INTO `user` VALUES ('10007', '宇文泄吮', '201711008', '123465', '1');
INSERT INTO `user` VALUES ('10008', '公仪枣贶', '201711009', '123465', '1');
INSERT INTO `user` VALUES ('10009', '是恼嗤', '201711010', '123465', '1');
INSERT INTO `user` VALUES ('1001', '老余', '300002', '123456', '2');
INSERT INTO `user` VALUES ('10010', '山控畅', '201711011', '123465', '1');
INSERT INTO `user` VALUES ('10011', '权蹉', '201711012', '123465', '1');
INSERT INTO `user` VALUES ('10012', '申郁', '201711013', '123465', '1');
INSERT INTO `user` VALUES ('10013', '齐婴竹', '201711014', '123465', '1');
INSERT INTO `user` VALUES ('10014', '年郭鲻', '201711015', '123465', '1');
INSERT INTO `user` VALUES ('10015', '苗禳卮', '201711016', '123465', '1');
INSERT INTO `user` VALUES ('10016', '公乘稽泔', '201711017', '123465', '1');
INSERT INTO `user` VALUES ('10017', '巩霄薛', '201711018', '123465', '1');
INSERT INTO `user` VALUES ('10018', '游泷', '201711019', '123465', '1');
INSERT INTO `user` VALUES ('10019', '贡养辁', '201711020', '123465', '1');
INSERT INTO `user` VALUES ('1002', '蓬篦', '300003', '123456', '2');
INSERT INTO `user` VALUES ('10020', '蒋礅', '201711021', '123465', '1');
INSERT INTO `user` VALUES ('10021', '仲孙媪', '201711022', '123465', '1');
INSERT INTO `user` VALUES ('10022', '连吓', '201711023', '123465', '1');
INSERT INTO `user` VALUES ('10023', '茹戡', '201711024', '123465', '1');
INSERT INTO `user` VALUES ('10024', '牧嚎冥', '201711025', '123465', '1');
INSERT INTO `user` VALUES ('10025', '蔡措弼', '201711026', '123465', '1');
INSERT INTO `user` VALUES ('10026', '越蜾插', '201711027', '123465', '1');
INSERT INTO `user` VALUES ('10027', '南宫点斡', '201711028', '123465', '1');
INSERT INTO `user` VALUES ('10028', '原懵悚', '201711029', '123465', '1');
INSERT INTO `user` VALUES ('10029', '种遛', '201711030', '123465', '1');
INSERT INTO `user` VALUES ('1003', '庄鄙', '300004', '123456', '2');
INSERT INTO `user` VALUES ('10030', '郜镍蓬', '201711031', '123465', '1');
INSERT INTO `user` VALUES ('10031', '第五潮', '201711032', '123465', '1');
INSERT INTO `user` VALUES ('10032', '皮翳', '201711033', '123465', '1');
INSERT INTO `user` VALUES ('10033', '轩辕鹃篱', '201711034', '123465', '1');
INSERT INTO `user` VALUES ('10034', '韩缳怪', '201711035', '123465', '1');
INSERT INTO `user` VALUES ('10035', '钮鹾焊', '201711036', '123465', '1');
INSERT INTO `user` VALUES ('10036', '第五烃', '201711037', '123465', '1');
INSERT INTO `user` VALUES ('10037', '蔡麦', '201711038', '123465', '1');
INSERT INTO `user` VALUES ('10038', '令狐赖韪', '201711039', '123465', '1');
INSERT INTO `user` VALUES ('10039', '郜闳', '201711040', '123465', '1');
INSERT INTO `user` VALUES ('1004', '涂腹脓', '300005', '123456', '2');
INSERT INTO `user` VALUES ('10040', '逯蜇氐', '201711041', '123465', '1');
INSERT INTO `user` VALUES ('10041', '程镞琮', '201711042', '123465', '1');
INSERT INTO `user` VALUES ('10042', '苗尖歧', '201711043', '123465', '1');
INSERT INTO `user` VALUES ('10043', '蓟攘山', '201711044', '123465', '1');
INSERT INTO `user` VALUES ('10044', '程纶', '201711045', '123465', '1');
INSERT INTO `user` VALUES ('10045', '谷真', '201711046', '123465', '1');
INSERT INTO `user` VALUES ('10046', '盖榛', '201711047', '123465', '1');
INSERT INTO `user` VALUES ('10047', '爱苎', '201711048', '123465', '1');
INSERT INTO `user` VALUES ('10048', '凤郗', '201711049', '123465', '1');
INSERT INTO `user` VALUES ('10049', '康慵白', '201711050', '123465', '1');
INSERT INTO `user` VALUES ('1005', '巢蠊', '300006', '123456', '2');
INSERT INTO `user` VALUES ('10050', '窦笥瘤', '201712001', '123465', '1');
INSERT INTO `user` VALUES ('10051', '秘饼', '201712002', '123465', '1');
INSERT INTO `user` VALUES ('10052', '年琛卦', '201712003', '123465', '1');
INSERT INTO `user` VALUES ('10053', '仓腊砑', '201712004', '123465', '1');
INSERT INTO `user` VALUES ('10054', '蓟恤眶', '201712005', '123465', '1');
INSERT INTO `user` VALUES ('10055', '公乘帖', '201712006', '123465', '1');
INSERT INTO `user` VALUES ('10056', '畅倚拜', '201712007', '123465', '1');
INSERT INTO `user` VALUES ('10057', '厍螂茺', '201712008', '123465', '1');
INSERT INTO `user` VALUES ('10058', '仓走佣', '201712009', '123465', '1');
INSERT INTO `user` VALUES ('10059', '嵇五解', '201712010', '123465', '1');
INSERT INTO `user` VALUES ('1006', '匡届', '300007', '123456', '2');
INSERT INTO `user` VALUES ('10060', '车舒拯', '201712011', '123465', '1');
INSERT INTO `user` VALUES ('10061', '屈俅壮', '201712012', '123465', '1');
INSERT INTO `user` VALUES ('10062', '邝箱偈', '201712013', '123465', '1');
INSERT INTO `user` VALUES ('10063', '尤搐稼', '201712014', '123465', '1');
INSERT INTO `user` VALUES ('10064', '凤丰锇', '201712015', '123465', '1');
INSERT INTO `user` VALUES ('10065', '畅要', '201712016', '123465', '1');
INSERT INTO `user` VALUES ('10066', '仲长溉浸', '201712017', '123465', '1');
INSERT INTO `user` VALUES ('10067', '蹇煎瘐', '201712018', '123465', '1');
INSERT INTO `user` VALUES ('10068', '向茌', '201712019', '123465', '1');
INSERT INTO `user` VALUES ('10069', '聂獯', '201712020', '123465', '1');
INSERT INTO `user` VALUES ('1007', '乔逵', '300008', '123456', '2');
INSERT INTO `user` VALUES ('10070', '仲长嫔刳', '201712021', '123465', '1');
INSERT INTO `user` VALUES ('10071', '邝疆', '201712022', '123465', '1');
INSERT INTO `user` VALUES ('10072', '余肥', '201712023', '123465', '1');
INSERT INTO `user` VALUES ('10073', '逄肺架', '201712024', '123465', '1');
INSERT INTO `user` VALUES ('10074', '田霜晓', '201712025', '123465', '1');
INSERT INTO `user` VALUES ('10075', '韶琳肆', '201712026', '123465', '1');
INSERT INTO `user` VALUES ('10076', '第五丐', '201712027', '123465', '1');
INSERT INTO `user` VALUES ('10077', '种阜旧', '201712028', '123465', '1');
INSERT INTO `user` VALUES ('10078', '卞闶足', '201712029', '123465', '1');
INSERT INTO `user` VALUES ('10079', '公仪勇', '201712030', '123465', '1');
INSERT INTO `user` VALUES ('1008', '厉究峋', '300009', '123456', '2');
INSERT INTO `user` VALUES ('10080', '谯姨', '201712031', '123465', '1');
INSERT INTO `user` VALUES ('10081', '宦饽耄', '201712032', '123465', '1');
INSERT INTO `user` VALUES ('10082', '谯讨鹾', '201712033', '123465', '1');
INSERT INTO `user` VALUES ('10083', '练牿嘀', '201712034', '123465', '1');
INSERT INTO `user` VALUES ('10084', '钮釉撖', '201712035', '123465', '1');
INSERT INTO `user` VALUES ('10085', '黎冁灶', '201712036', '123465', '1');
INSERT INTO `user` VALUES ('10086', '姬惊隳', '201712037', '123465', '1');
INSERT INTO `user` VALUES ('10087', '朱僮', '201712038', '123465', '1');
INSERT INTO `user` VALUES ('10088', '钟离牖觚', '201712039', '123465', '1');
INSERT INTO `user` VALUES ('10089', '宦眭', '201712040', '123465', '1');
INSERT INTO `user` VALUES ('1009', '福禧', '300010', '123456', '2');
INSERT INTO `user` VALUES ('10090', '秘展', '201712041', '123465', '1');
INSERT INTO `user` VALUES ('10091', '师戳汲', '201712042', '123465', '1');
INSERT INTO `user` VALUES ('10092', '蓟第酞', '201712043', '123465', '1');
INSERT INTO `user` VALUES ('10093', '申楗', '201712044', '123465', '1');
INSERT INTO `user` VALUES ('10094', '钟离醯实', '201712045', '123465', '1');
INSERT INTO `user` VALUES ('10095', '公乘郅黼', '201712046', '123465', '1');
INSERT INTO `user` VALUES ('10096', '朱窀昕', '201712047', '123465', '1');
INSERT INTO `user` VALUES ('10097', '樊诚萄', '201712048', '123465', '1');
INSERT INTO `user` VALUES ('10098', '卫遇谊', '201712049', '123465', '1');
INSERT INTO `user` VALUES ('10099', '公孙浈瞑', '201712050', '123465', '1');
INSERT INTO `user` VALUES ('1010', '羊舌褰', '300011', '123456', '2');
INSERT INTO `user` VALUES ('10100', '茹改', '201713001', '123465', '1');
INSERT INTO `user` VALUES ('10101', '易冒', '201713002', '123465', '1');
INSERT INTO `user` VALUES ('10102', '裴歉葜', '201713003', '123465', '1');
INSERT INTO `user` VALUES ('10103', '桓琨', '201713004', '123465', '1');
INSERT INTO `user` VALUES ('10104', '古垲蜮', '201713005', '123465', '1');
INSERT INTO `user` VALUES ('10105', '晁贱惊', '201713006', '123465', '1');
INSERT INTO `user` VALUES ('10106', '齐塍', '201713007', '123465', '1');
INSERT INTO `user` VALUES ('10107', '纪筘', '201713008', '123465', '1');
INSERT INTO `user` VALUES ('10108', '公乘腭', '201713009', '123465', '1');
INSERT INTO `user` VALUES ('10109', '朱晡', '201713010', '123465', '1');
INSERT INTO `user` VALUES ('1011', '毛蠕', '300012', '123456', '2');
INSERT INTO `user` VALUES ('10110', '山蹰', '201713011', '123465', '1');
INSERT INTO `user` VALUES ('10111', '黎龉', '201713012', '123465', '1');
INSERT INTO `user` VALUES ('10112', '龚肺铖', '201713013', '123465', '1');
INSERT INTO `user` VALUES ('10113', '年典殃', '201713014', '123465', '1');
INSERT INTO `user` VALUES ('10114', '扶钮', '201713015', '123465', '1');
INSERT INTO `user` VALUES ('10115', '马镇媚', '201713016', '123465', '1');
INSERT INTO `user` VALUES ('10116', '年蓝', '201713017', '123465', '1');
INSERT INTO `user` VALUES ('10117', '艾孜螳', '201713018', '123465', '1');
INSERT INTO `user` VALUES ('10118', '苗番', '201713019', '123465', '1');
INSERT INTO `user` VALUES ('10119', '巩躔峡', '201713020', '123465', '1');
INSERT INTO `user` VALUES ('1012', '柏瀛', '300013', '123456', '2');
INSERT INTO `user` VALUES ('10120', '太史醐趾', '201713021', '123465', '1');
INSERT INTO `user` VALUES ('10121', '康滓办', '201713022', '123465', '1');
INSERT INTO `user` VALUES ('10122', '逯揉', '201713023', '123465', '1');
INSERT INTO `user` VALUES ('10123', '年脒', '201713024', '123465', '1');
INSERT INTO `user` VALUES ('10124', '畅啬罨', '201713025', '123465', '1');
INSERT INTO `user` VALUES ('10125', '盖箪', '201713026', '123465', '1');
INSERT INTO `user` VALUES ('10126', '屈中怫', '201713027', '123465', '1');
INSERT INTO `user` VALUES ('10127', '厍妤', '201713028', '123465', '1');
INSERT INTO `user` VALUES ('10128', '堵朱绫', '201713029', '123465', '1');
INSERT INTO `user` VALUES ('10129', '闵嵝赊', '201713030', '123465', '1');
INSERT INTO `user` VALUES ('1013', '敬剔稷', '300014', '123456', '2');
INSERT INTO `user` VALUES ('10130', '司城有遗', '201713031', '123465', '1');
INSERT INTO `user` VALUES ('10131', '辛崦蘑', '201713032', '123465', '1');
INSERT INTO `user` VALUES ('10132', '司城弧', '201713033', '123465', '1');
INSERT INTO `user` VALUES ('10133', '铁奥瘪', '201713034', '123465', '1');
INSERT INTO `user` VALUES ('10134', '庾渥长', '201713035', '123465', '1');
INSERT INTO `user` VALUES ('10135', '仲喂', '201713036', '123465', '1');
INSERT INTO `user` VALUES ('10136', '仪粤', '201713037', '123465', '1');
INSERT INTO `user` VALUES ('10137', '缑添迄', '201713038', '123465', '1');
INSERT INTO `user` VALUES ('10138', '闵侑', '201713039', '123465', '1');
INSERT INTO `user` VALUES ('10139', '万俟渴浙', '201713040', '123465', '1');
INSERT INTO `user` VALUES ('1014', '拓跋带素', '300015', '123456', '2');
INSERT INTO `user` VALUES ('10140', '熊渚念', '201713041', '123465', '1');
INSERT INTO `user` VALUES ('10141', '第五轴', '201713042', '123465', '1');
INSERT INTO `user` VALUES ('10142', '隆醑晰', '201713043', '123465', '1');
INSERT INTO `user` VALUES ('10143', '呼延城莓', '201713044', '123465', '1');
INSERT INTO `user` VALUES ('10144', '韩建疃', '201713045', '123465', '1');
INSERT INTO `user` VALUES ('10145', '习庀', '201713046', '123465', '1');
INSERT INTO `user` VALUES ('10146', '钟离筅', '201713047', '123465', '1');
INSERT INTO `user` VALUES ('10147', '篁糨', '201713048', '123465', '1');
INSERT INTO `user` VALUES ('10148', '姬宴拳', '201713049', '123465', '1');
INSERT INTO `user` VALUES ('10149', '龚住', '201713050', '123465', '1');
INSERT INTO `user` VALUES ('1015', '祖绒', '300016', '123456', '2');
INSERT INTO `user` VALUES ('10150', '谷轿', '201721001', '123465', '1');
INSERT INTO `user` VALUES ('10151', '聂傥', '201721002', '123465', '1');
INSERT INTO `user` VALUES ('10152', '佟喏', '201721003', '123465', '1');
INSERT INTO `user` VALUES ('10153', '虞霸昝', '201721004', '123465', '1');
INSERT INTO `user` VALUES ('10154', '元澹', '201721005', '123465', '1');
INSERT INTO `user` VALUES ('10155', '项素', '201721006', '123465', '1');
INSERT INTO `user` VALUES ('10156', '滑瘭', '201721007', '123465', '1');
INSERT INTO `user` VALUES ('10157', '祝锖睃', '201721008', '123465', '1');
INSERT INTO `user` VALUES ('10158', '佟尕漳', '201721009', '123465', '1');
INSERT INTO `user` VALUES ('10159', '蓬茨', '201721010', '123465', '1');
INSERT INTO `user` VALUES ('1016', '舜跑', '300017', '123456', '2');
INSERT INTO `user` VALUES ('10160', '宿芭', '201721011', '123465', '1');
INSERT INTO `user` VALUES ('10161', '古衬', '201721012', '123465', '1');
INSERT INTO `user` VALUES ('10162', '龚镫狱', '201721013', '123465', '1');
INSERT INTO `user` VALUES ('10163', '卞酬绽', '201721014', '123465', '1');
INSERT INTO `user` VALUES ('10164', '樊赁', '201721015', '123465', '1');
INSERT INTO `user` VALUES ('10165', '马轱室', '201721016', '123465', '1');
INSERT INTO `user` VALUES ('10166', '舒演翻', '201721017', '123465', '1');
INSERT INTO `user` VALUES ('10167', '是擂', '201721018', '123465', '1');
INSERT INTO `user` VALUES ('10168', '公乘莸', '201721019', '123465', '1');
INSERT INTO `user` VALUES ('10169', '谷丌', '201721020', '123465', '1');
INSERT INTO `user` VALUES ('1017', '郁芜', '300018', '123456', '2');
INSERT INTO `user` VALUES ('10170', '宇文绌', '201721021', '123465', '1');
INSERT INTO `user` VALUES ('10171', '蓟钊貂', '201721022', '123465', '1');
INSERT INTO `user` VALUES ('10172', '秦莛占', '201721023', '123465', '1');
INSERT INTO `user` VALUES ('10173', '畅壮', '201721024', '123465', '1');
INSERT INTO `user` VALUES ('10174', '屈耆夥', '201721025', '123465', '1');
INSERT INTO `user` VALUES ('10175', '车蛄', '201721026', '123465', '1');
INSERT INTO `user` VALUES ('10176', '凌攒', '201721027', '123465', '1');
INSERT INTO `user` VALUES ('10177', '鲁酞', '201721028', '123465', '1');
INSERT INTO `user` VALUES ('10178', '越另罄', '201721029', '123465', '1');
INSERT INTO `user` VALUES ('10179', '贡豹', '201721030', '123465', '1');
INSERT INTO `user` VALUES ('1018', '元易妈', '301001', '123456', '2');
INSERT INTO `user` VALUES ('10180', '傅汪岬', '201721031', '123465', '1');
INSERT INTO `user` VALUES ('10181', '游育', '201721032', '123465', '1');
INSERT INTO `user` VALUES ('10182', '蔡樯', '201721033', '123465', '1');
INSERT INTO `user` VALUES ('10183', '轩辕鸳柜', '201721034', '123465', '1');
INSERT INTO `user` VALUES ('10184', '吉莠遨', '201721035', '123465', '1');
INSERT INTO `user` VALUES ('10185', '鲁射舨', '201721036', '123465', '1');
INSERT INTO `user` VALUES ('10186', '轩辕崭', '201721037', '123465', '1');
INSERT INTO `user` VALUES ('10187', '韩绰鱿', '201721038', '123465', '1');
INSERT INTO `user` VALUES ('10188', '练狍疸', '201721039', '123465', '1');
INSERT INTO `user` VALUES ('10189', '哈租', '201721040', '123465', '1');
INSERT INTO `user` VALUES ('1019', '桓督', '301002', '123456', '2');
INSERT INTO `user` VALUES ('10190', '逄珩', '201721041', '123465', '1');
INSERT INTO `user` VALUES ('10191', '令狐喷', '201721042', '123465', '1');
INSERT INTO `user` VALUES ('10192', '令狐颦婺', '201721043', '123465', '1');
INSERT INTO `user` VALUES ('10193', '练碉', '201721044', '123465', '1');
INSERT INTO `user` VALUES ('10194', '谈舄莶', '201721045', '123465', '1');
INSERT INTO `user` VALUES ('10195', '充贽罔', '201721046', '123465', '1');
INSERT INTO `user` VALUES ('10196', '沃椋檗', '201721047', '123465', '1');
INSERT INTO `user` VALUES ('10197', '高喾榱', '201721048', '123465', '1');
INSERT INTO `user` VALUES ('10198', '伯搠阄', '201721049', '123465', '1');
INSERT INTO `user` VALUES ('10199', '端屉鲤', '201721050', '123465', '1');
INSERT INTO `user` VALUES ('1020', '裴臻取', '301003', '123456', '2');
INSERT INTO `user` VALUES ('10200', '敖碚', '201722001', '123465', '1');
INSERT INTO `user` VALUES ('10201', '练绺', '201722002', '123465', '1');
INSERT INTO `user` VALUES ('10202', '黎枰', '201722003', '123465', '1');
INSERT INTO `user` VALUES ('10203', '权亚荒', '201722004', '123465', '1');
INSERT INTO `user` VALUES ('10204', '龚争跤', '201722005', '123465', '1');
INSERT INTO `user` VALUES ('10205', '师嫒', '201722006', '123465', '1');
INSERT INTO `user` VALUES ('10206', '弥郝', '201722007', '123465', '1');
INSERT INTO `user` VALUES ('10207', '龚怦', '201722008', '123465', '1');
INSERT INTO `user` VALUES ('10208', '蓟蠖', '201722009', '123465', '1');
INSERT INTO `user` VALUES ('10209', '申痹', '201722010', '123465', '1');
INSERT INTO `user` VALUES ('1021', '艾待', '301004', '123456', '2');
INSERT INTO `user` VALUES ('10210', '胡梧铢', '201722011', '123465', '1');
INSERT INTO `user` VALUES ('10211', '苗醋', '201722012', '123465', '1');
INSERT INTO `user` VALUES ('10212', '权乳', '201722013', '123465', '1');
INSERT INTO `user` VALUES ('10213', '康松熵', '201722014', '123465', '1');
INSERT INTO `user` VALUES ('10214', '逯昔', '201722015', '123465', '1');
INSERT INTO `user` VALUES ('10215', '扶槭苯', '201722016', '123465', '1');
INSERT INTO `user` VALUES ('10216', '谷嗤陀', '201722017', '123465', '1');
INSERT INTO `user` VALUES ('10217', '蓟舳稗', '201722018', '123465', '1');
INSERT INTO `user` VALUES ('10218', '扶粲院', '201722019', '123465', '1');
INSERT INTO `user` VALUES ('10219', '鱼氖', '201722020', '123465', '1');
INSERT INTO `user` VALUES ('1022', '权起', '301005', '123456', '2');
INSERT INTO `user` VALUES ('10220', '孔蝓', '201722021', '123465', '1');
INSERT INTO `user` VALUES ('10221', '酆哳', '201722022', '123465', '1');
INSERT INTO `user` VALUES ('10222', '黄醵', '201722023', '123465', '1');
INSERT INTO `user` VALUES ('10223', '廖炷', '201722024', '123465', '1');
INSERT INTO `user` VALUES ('10224', '冷陌', '201722025', '123465', '1');
INSERT INTO `user` VALUES ('10225', '从锔丞', '201722026', '123465', '1');
INSERT INTO `user` VALUES ('10226', '胡母桠', '201722027', '123465', '1');
INSERT INTO `user` VALUES ('10227', '傅史', '201722028', '123465', '1');
INSERT INTO `user` VALUES ('10228', '蔡劐', '201722029', '123465', '1');
INSERT INTO `user` VALUES ('10229', '傅隶寥', '201722030', '123465', '1');
INSERT INTO `user` VALUES ('1023', '昌钸', '301006', '123456', '2');
INSERT INTO `user` VALUES ('10230', '南宫鹃', '201722031', '123465', '1');
INSERT INTO `user` VALUES ('10231', '墨闹', '201722032', '123465', '1');
INSERT INTO `user` VALUES ('10232', '亓艳箢', '201722033', '123465', '1');
INSERT INTO `user` VALUES ('10233', '皮刀', '201722034', '123465', '1');
INSERT INTO `user` VALUES ('10234', '沈悚港', '201722035', '123465', '1');
INSERT INTO `user` VALUES ('10235', '郏箕', '201722036', '123465', '1');
INSERT INTO `user` VALUES ('10236', '庞艚菅', '201722037', '123465', '1');
INSERT INTO `user` VALUES ('10237', '练嗬碥', '201722038', '123465', '1');
INSERT INTO `user` VALUES ('10238', '逄黑', '201722039', '123465', '1');
INSERT INTO `user` VALUES ('10239', '令狐柬', '201722040', '123465', '1');
INSERT INTO `user` VALUES ('1024', '师装往', '301007', '123456', '2');
INSERT INTO `user` VALUES ('10240', '郏嗫叶', '201722041', '123465', '1');
INSERT INTO `user` VALUES ('10241', '缪浯', '201722042', '123465', '1');
INSERT INTO `user` VALUES ('10242', '邵涯瘃', '201722043', '123465', '1');
INSERT INTO `user` VALUES ('10243', '蔺互', '201722044', '123465', '1');
INSERT INTO `user` VALUES ('10244', '诸葛臆', '201722045', '123465', '1');
INSERT INTO `user` VALUES ('10245', '仇笞材', '201722046', '123465', '1');
INSERT INTO `user` VALUES ('10246', '贾偶', '201722047', '123465', '1');
INSERT INTO `user` VALUES ('10247', '繁幞蝓', '201722048', '123465', '1');
INSERT INTO `user` VALUES ('10248', '栾鲍', '201722049', '123465', '1');
INSERT INTO `user` VALUES ('10249', '湛棋驺', '201722050', '123465', '1');
INSERT INTO `user` VALUES ('1025', '樊殚', '301008', '123456', '2');
INSERT INTO `user` VALUES ('10250', '贝潞', '201723001', '123465', '1');
INSERT INTO `user` VALUES ('10251', '芮亳', '201723002', '123465', '1');
INSERT INTO `user` VALUES ('10252', '扈蕲', '201723003', '123465', '1');
INSERT INTO `user` VALUES ('10253', '戚嶙纲', '201723004', '123465', '1');
INSERT INTO `user` VALUES ('10254', '娄胯', '201723005', '123465', '1');
INSERT INTO `user` VALUES ('10255', '满歉埕', '201723006', '123465', '1');
INSERT INTO `user` VALUES ('10256', '娄靓予', '201723007', '123465', '1');
INSERT INTO `user` VALUES ('10257', '谢溱襻', '201723008', '123465', '1');
INSERT INTO `user` VALUES ('10258', '满巩', '201723009', '123465', '1');
INSERT INTO `user` VALUES ('10259', '甘项搞', '201723010', '123465', '1');
INSERT INTO `user` VALUES ('1026', '施记', '301009', '123456', '2');
INSERT INTO `user` VALUES ('10260', '冀庇', '201723011', '123465', '1');
INSERT INTO `user` VALUES ('10261', '赫连煎盈', '201723012', '123465', '1');
INSERT INTO `user` VALUES ('10262', '汲考蘸', '201723013', '123465', '1');
INSERT INTO `user` VALUES ('10263', '尉迟刘', '201723014', '123465', '1');
INSERT INTO `user` VALUES ('10264', '枚挚藕', '201723015', '123465', '1');
INSERT INTO `user` VALUES ('10265', '靳翻', '201723016', '123465', '1');
INSERT INTO `user` VALUES ('10266', '阴獯', '201723017', '123465', '1');
INSERT INTO `user` VALUES ('10267', '文咭喽', '201723018', '123465', '1');
INSERT INTO `user` VALUES ('10268', '滕锁', '201723019', '123465', '1');
INSERT INTO `user` VALUES ('10269', '钱振', '201723020', '123465', '1');
INSERT INTO `user` VALUES ('1027', '束回', '301010', '123456', '2');
INSERT INTO `user` VALUES ('10270', '戎膛', '201723021', '123465', '1');
INSERT INTO `user` VALUES ('10271', '郭洎辊', '201723022', '123465', '1');
INSERT INTO `user` VALUES ('10272', '舜言', '201723023', '123465', '1');
INSERT INTO `user` VALUES ('10273', '祖吆', '201723024', '123465', '1');
INSERT INTO `user` VALUES ('10274', '郁媛咕', '201723025', '123465', '1');
INSERT INTO `user` VALUES ('10275', '公羊嗑唁', '201723026', '123465', '1');
INSERT INTO `user` VALUES ('10276', '胥禊醵', '201723027', '123465', '1');
INSERT INTO `user` VALUES ('10277', '李醛', '201723028', '123465', '1');
INSERT INTO `user` VALUES ('10278', '糜更', '201723029', '123465', '1');
INSERT INTO `user` VALUES ('10279', '贲哺', '201723030', '123465', '1');
INSERT INTO `user` VALUES ('1028', '邴丁', '301011', '123456', '2');
INSERT INTO `user` VALUES ('10280', '须七', '201723031', '123465', '1');
INSERT INTO `user` VALUES ('10281', '赫连莰拨', '201723032', '123465', '1');
INSERT INTO `user` VALUES ('10282', '应黼怩', '201723033', '123465', '1');
INSERT INTO `user` VALUES ('10283', '车正祜', '201723034', '123465', '1');
INSERT INTO `user` VALUES ('10284', '燕纩搽', '201723035', '123465', '1');
INSERT INTO `user` VALUES ('10285', '贺危钮', '201723036', '123465', '1');
INSERT INTO `user` VALUES ('10286', '江邴芫', '201723037', '123465', '1');
INSERT INTO `user` VALUES ('10287', '赫连谎', '201723038', '123465', '1');
INSERT INTO `user` VALUES ('10288', '北宫蓿', '201723039', '123465', '1');
INSERT INTO `user` VALUES ('10289', '匡汐', '201723040', '123465', '1');
INSERT INTO `user` VALUES ('1029', '胥蜩钠', '301012', '123456', '2');
INSERT INTO `user` VALUES ('10290', '公良彭', '201723041', '123465', '1');
INSERT INTO `user` VALUES ('10291', '皇甫柳', '201723042', '123465', '1');
INSERT INTO `user` VALUES ('10292', '江鼐', '201723043', '123465', '1');
INSERT INTO `user` VALUES ('10293', '枚襻', '201723044', '123465', '1');
INSERT INTO `user` VALUES ('10294', '靳乔铫', '201723045', '123465', '1');
INSERT INTO `user` VALUES ('10295', '敬闽疚', '201723046', '123465', '1');
INSERT INTO `user` VALUES ('10296', '倪伊', '201723047', '123465', '1');
INSERT INTO `user` VALUES ('10297', '浦璜', '201723048', '123465', '1');
INSERT INTO `user` VALUES ('10298', '都销始', '201723049', '123465', '1');
INSERT INTO `user` VALUES ('10299', '闻人挞阜', '201723050', '123465', '1');
INSERT INTO `user` VALUES ('1030', '杞侗镨', '301013', '123456', '2');
INSERT INTO `user` VALUES ('10300', '海猿', '201731001', '123465', '1');
INSERT INTO `user` VALUES ('10301', '邵淹寒', '201731002', '123465', '1');
INSERT INTO `user` VALUES ('10302', '边羲侬', '201731003', '123465', '1');
INSERT INTO `user` VALUES ('10303', '曾胗庭', '201731004', '123465', '1');
INSERT INTO `user` VALUES ('10304', '屠撺', '201731005', '123465', '1');
INSERT INTO `user` VALUES ('10305', '路气', '201731006', '123465', '1');
INSERT INTO `user` VALUES ('10306', '耿倪', '201731007', '123465', '1');
INSERT INTO `user` VALUES ('10307', '归跚', '201731008', '123465', '1');
INSERT INTO `user` VALUES ('10308', '华呤荮', '201731009', '123465', '1');
INSERT INTO `user` VALUES ('10309', '风捎', '201731010', '123465', '1');
INSERT INTO `user` VALUES ('1031', '胥痤', '301014', '123456', '2');
INSERT INTO `user` VALUES ('10310', '季橙缎', '201731011', '123465', '1');
INSERT INTO `user` VALUES ('10311', '濮耳鹾', '201731012', '123465', '1');
INSERT INTO `user` VALUES ('10312', '季缈篦', '201731013', '123465', '1');
INSERT INTO `user` VALUES ('10313', '欧阳脲', '201731014', '123465', '1');
INSERT INTO `user` VALUES ('10314', '况菇溧', '201731015', '123465', '1');
INSERT INTO `user` VALUES ('10315', '官哒婧', '201731016', '123465', '1');
INSERT INTO `user` VALUES ('10316', '上官窝脘', '201731017', '123465', '1');
INSERT INTO `user` VALUES ('10317', '毋丘狈做', '201731018', '123465', '1');
INSERT INTO `user` VALUES ('10318', '寿或逊', '201731019', '123465', '1');
INSERT INTO `user` VALUES ('10319', '冼虾澍', '201731020', '123465', '1');
INSERT INTO `user` VALUES ('1032', '寇础', '301015', '123456', '2');
INSERT INTO `user` VALUES ('10320', '牛喇辉', '201731021', '123465', '1');
INSERT INTO `user` VALUES ('10321', '甄轾', '201731022', '123465', '1');
INSERT INTO `user` VALUES ('10322', '赖氮应', '201731023', '123465', '1');
INSERT INTO `user` VALUES ('10323', '贺兰跳', '201731024', '123465', '1');
INSERT INTO `user` VALUES ('10324', '饶荑棉', '201731025', '123465', '1');
INSERT INTO `user` VALUES ('10325', '端木暾', '201731026', '123465', '1');
INSERT INTO `user` VALUES ('10326', '曲贷', '201731027', '123465', '1');
INSERT INTO `user` VALUES ('10327', '费吴帔', '201731028', '123465', '1');
INSERT INTO `user` VALUES ('10328', '慕际盔', '201731029', '123465', '1');
INSERT INTO `user` VALUES ('10329', '彭碰', '201731030', '123465', '1');
INSERT INTO `user` VALUES ('1033', '宰艋觐', '301016', '123456', '2');
INSERT INTO `user` VALUES ('10330', '于耕', '201731031', '123465', '1');
INSERT INTO `user` VALUES ('10331', '左可', '201731032', '123465', '1');
INSERT INTO `user` VALUES ('10332', '端泽弓', '201731033', '123465', '1');
INSERT INTO `user` VALUES ('10333', '东门手', '201731034', '123465', '1');
INSERT INTO `user` VALUES ('10334', '谭煳人', '201731035', '123465', '1');
INSERT INTO `user` VALUES ('10335', '蔚沟冫', '201731036', '123465', '1');
INSERT INTO `user` VALUES ('10336', '慕郡', '201731037', '123465', '1');
INSERT INTO `user` VALUES ('10337', '公孙舍', '201731038', '123465', '1');
INSERT INTO `user` VALUES ('10338', '宋稀', '201731039', '123465', '1');
INSERT INTO `user` VALUES ('10339', '赏耱坭', '201731040', '123465', '1');
INSERT INTO `user` VALUES ('1034', '阿酹', '301017', '123456', '2');
INSERT INTO `user` VALUES ('10340', '原呻俟', '201731041', '123465', '1');
INSERT INTO `user` VALUES ('10341', '宋藿', '201731042', '123465', '1');
INSERT INTO `user` VALUES ('10342', '高蓿评', '201731043', '123465', '1');
INSERT INTO `user` VALUES ('10343', '郎丽历', '201731044', '123465', '1');
INSERT INTO `user` VALUES ('10344', '鲜拣', '201731045', '123465', '1');
INSERT INTO `user` VALUES ('10345', '傅敕', '201731046', '123465', '1');
INSERT INTO `user` VALUES ('10346', '沈蜱霞', '201731047', '123465', '1');
INSERT INTO `user` VALUES ('10347', '茹却', '201731048', '123465', '1');
INSERT INTO `user` VALUES ('10348', '仲孙洮铝', '201731049', '123465', '1');
INSERT INTO `user` VALUES ('10349', '原纭', '201731050', '123465', '1');
INSERT INTO `user` VALUES ('1035', '闾丘糍摈', '301018', '123456', '2');
INSERT INTO `user` VALUES ('10350', '萧窃', '201732001', '123465', '1');
INSERT INTO `user` VALUES ('10351', '全唠正', '201732002', '123465', '1');
INSERT INTO `user` VALUES ('10352', '仉届', '201732003', '123465', '1');
INSERT INTO `user` VALUES ('10353', '陆淹笾', '201732004', '123465', '1');
INSERT INTO `user` VALUES ('10354', '司空吾狁', '201732005', '123465', '1');
INSERT INTO `user` VALUES ('10355', '柯沭', '201732006', '123465', '1');
INSERT INTO `user` VALUES ('10356', '荣葸', '201732007', '123465', '1');
INSERT INTO `user` VALUES ('10357', '南膻', '201732008', '123465', '1');
INSERT INTO `user` VALUES ('10358', '柯耘筐', '201732009', '123465', '1');
INSERT INTO `user` VALUES ('10359', '融尚洲', '201732010', '123465', '1');
INSERT INTO `user` VALUES ('1036', '毕坷', '302001', '123456', '2');
INSERT INTO `user` VALUES ('10360', '兀官缎觋', '201732011', '123465', '1');
INSERT INTO `user` VALUES ('10361', '恽涪账', '201732012', '123465', '1');
INSERT INTO `user` VALUES ('10362', '昝拆', '201732013', '123465', '1');
INSERT INTO `user` VALUES ('10363', '司寇谈炷', '201732014', '123465', '1');
INSERT INTO `user` VALUES ('10364', '戈吹', '201732015', '123465', '1');
INSERT INTO `user` VALUES ('10365', '柳蹯瘿', '201732016', '123465', '1');
INSERT INTO `user` VALUES ('10366', '阳窟', '201732017', '123465', '1');
INSERT INTO `user` VALUES ('10367', '向按', '201732018', '123465', '1');
INSERT INTO `user` VALUES ('10368', '桓岩衾', '201732019', '123465', '1');
INSERT INTO `user` VALUES ('10369', '阳肜龆', '201732020', '123465', '1');
INSERT INTO `user` VALUES ('1037', '向惚', '302002', '123456', '2');
INSERT INTO `user` VALUES ('10370', '花垂', '201732021', '123465', '1');
INSERT INTO `user` VALUES ('10371', '祝鸸嘟', '201732022', '123465', '1');
INSERT INTO `user` VALUES ('10372', '滑译门', '201732023', '123465', '1');
INSERT INTO `user` VALUES ('10373', '宾贞', '201732024', '123465', '1');
INSERT INTO `user` VALUES ('10374', '虞幔', '201732025', '123465', '1');
INSERT INTO `user` VALUES ('10375', '公褛', '201732026', '123465', '1');
INSERT INTO `user` VALUES ('10376', '董燎督', '201732027', '123465', '1');
INSERT INTO `user` VALUES ('10377', '吕蘼', '201732028', '123465', '1');
INSERT INTO `user` VALUES ('10378', '祝铑', '201732029', '123465', '1');
INSERT INTO `user` VALUES ('10379', '万倪', '201732030', '123465', '1');
INSERT INTO `user` VALUES ('1038', '元瞥箬', '302003', '123456', '2');
INSERT INTO `user` VALUES ('10380', '何饵舶', '201732031', '123465', '1');
INSERT INTO `user` VALUES ('10381', '卜筅疏', '201732032', '123465', '1');
INSERT INTO `user` VALUES ('10382', '董恧', '201732033', '123465', '1');
INSERT INTO `user` VALUES ('10383', '福狨姜', '201732034', '123465', '1');
INSERT INTO `user` VALUES ('10384', '闾丘勇古', '201732035', '123465', '1');
INSERT INTO `user` VALUES ('10385', '言竣榄', '201732036', '123465', '1');
INSERT INTO `user` VALUES ('10386', '郦筮', '201732037', '123465', '1');
INSERT INTO `user` VALUES ('10387', '钱醢桶', '201732038', '123465', '1');
INSERT INTO `user` VALUES ('10388', '枚悭', '201732039', '123465', '1');
INSERT INTO `user` VALUES ('10389', '拓跋铎', '201732040', '123465', '1');
INSERT INTO `user` VALUES ('1039', '宿锒硌', '302004', '123456', '2');
INSERT INTO `user` VALUES ('10390', '匡冶廒', '201732041', '123465', '1');
INSERT INTO `user` VALUES ('10391', '童瘀', '201732042', '123465', '1');
INSERT INTO `user` VALUES ('10392', '柏廖茂', '201732043', '123465', '1');
INSERT INTO `user` VALUES ('10393', '狄骅', '201732044', '123465', '1');
INSERT INTO `user` VALUES ('10394', '宣耳', '201732045', '123465', '1');
INSERT INTO `user` VALUES ('10395', '拓跋浜笫', '201732046', '123465', '1');
INSERT INTO `user` VALUES ('10396', '法錾', '201732047', '123465', '1');
INSERT INTO `user` VALUES ('10397', '水膣', '201732048', '123465', '1');
INSERT INTO `user` VALUES ('10398', '颜惫', '201732049', '123465', '1');
INSERT INTO `user` VALUES ('10399', '揭葡妾', '201732050', '123465', '1');
INSERT INTO `user` VALUES ('1040', '覃物', '302005', '123456', '2');
INSERT INTO `user` VALUES ('10400', '侴洇', '201733001', '123465', '1');
INSERT INTO `user` VALUES ('10401', '来跃', '201733002', '123465', '1');
INSERT INTO `user` VALUES ('10402', '岳涂纨', '201733003', '123465', '1');
INSERT INTO `user` VALUES ('10403', '从俾', '201733004', '123465', '1');
INSERT INTO `user` VALUES ('10404', '冷徊', '201733005', '123465', '1');
INSERT INTO `user` VALUES ('10405', '璩腱舳', '201733006', '123465', '1');
INSERT INTO `user` VALUES ('10406', '孔晃', '201733007', '123465', '1');
INSERT INTO `user` VALUES ('10407', '史捋', '201733008', '123465', '1');
INSERT INTO `user` VALUES ('10408', '司马塑咸', '201733009', '123465', '1');
INSERT INTO `user` VALUES ('10409', '亢掾氚', '201733010', '123465', '1');
INSERT INTO `user` VALUES ('1041', '叔孙仵哭', '302006', '123456', '2');
INSERT INTO `user` VALUES ('10410', '鲍育此', '201733011', '123465', '1');
INSERT INTO `user` VALUES ('10411', '席晾撂', '201733012', '123465', '1');
INSERT INTO `user` VALUES ('10412', '史呙', '201733013', '123465', '1');
INSERT INTO `user` VALUES ('10413', '莫杜', '201733014', '123465', '1');
INSERT INTO `user` VALUES ('10414', '华治孀', '201733015', '123465', '1');
INSERT INTO `user` VALUES ('10415', '亢偈', '201733016', '123465', '1');
INSERT INTO `user` VALUES ('10416', '经罘', '201733017', '123465', '1');
INSERT INTO `user` VALUES ('10417', '唐砚鸥', '201733018', '123465', '1');
INSERT INTO `user` VALUES ('10418', '那殊', '201733019', '123465', '1');
INSERT INTO `user` VALUES ('10419', '濮宇', '201733020', '123465', '1');
INSERT INTO `user` VALUES ('1042', '冉郎', '302007', '123456', '2');
INSERT INTO `user` VALUES ('10420', '萧材', '201733021', '123465', '1');
INSERT INTO `user` VALUES ('10421', '籍嘉绢', '201733022', '123465', '1');
INSERT INTO `user` VALUES ('10422', '麻芸', '201733023', '123465', '1');
INSERT INTO `user` VALUES ('10423', '房承', '201733024', '123465', '1');
INSERT INTO `user` VALUES ('10424', '费醴荡', '201733025', '123465', '1');
INSERT INTO `user` VALUES ('10425', '牛聋钩', '201733026', '123465', '1');
INSERT INTO `user` VALUES ('10426', '金笛', '201733027', '123465', '1');
INSERT INTO `user` VALUES ('10427', '唐摄', '201733028', '123465', '1');
INSERT INTO `user` VALUES ('10428', '纵骨愕', '201733029', '123465', '1');
INSERT INTO `user` VALUES ('10429', '兀官虹', '201733030', '123465', '1');
INSERT INTO `user` VALUES ('1043', '方茛为', '302008', '123456', '2');
INSERT INTO `user` VALUES ('10430', '火背', '201733031', '123465', '1');
INSERT INTO `user` VALUES ('10431', '来荥', '201733032', '123465', '1');
INSERT INTO `user` VALUES ('10432', '邰铩馏', '201733033', '123465', '1');
INSERT INTO `user` VALUES ('10433', '柳歇猖', '201733034', '123465', '1');
INSERT INTO `user` VALUES ('10434', '荀酲嬲', '201733035', '123465', '1');
INSERT INTO `user` VALUES ('10435', '胡母谳', '201733036', '123465', '1');
INSERT INTO `user` VALUES ('10436', '綦圭褫', '201733037', '123465', '1');
INSERT INTO `user` VALUES ('10437', '侴欤伸', '201733038', '123465', '1');
INSERT INTO `user` VALUES ('10438', '璩艨', '201733039', '123465', '1');
INSERT INTO `user` VALUES ('10439', '孔肝樵', '201733040', '123465', '1');
INSERT INTO `user` VALUES ('1044', '言浔传', '302009', '123456', '2');
INSERT INTO `user` VALUES ('10440', '黄劫', '201733041', '123465', '1');
INSERT INTO `user` VALUES ('10441', '南门碌', '201733042', '123465', '1');
INSERT INTO `user` VALUES ('10442', '酆酥', '201733043', '123465', '1');
INSERT INTO `user` VALUES ('10443', '南门鳋水', '201733044', '123465', '1');
INSERT INTO `user` VALUES ('10444', '司城炝焉', '201733045', '123465', '1');
INSERT INTO `user` VALUES ('10445', '桑嶷', '201733046', '123465', '1');
INSERT INTO `user` VALUES ('10446', '严狞', '201733047', '123465', '1');
INSERT INTO `user` VALUES ('10447', '鲍抟', '201733048', '123465', '1');
INSERT INTO `user` VALUES ('10448', '和形', '201733049', '123465', '1');
INSERT INTO `user` VALUES ('10449', '羊胯', '201733050', '123465', '1');
INSERT INTO `user` VALUES ('1045', '何薰', '302010', '123456', '2');
INSERT INTO `user` VALUES ('10450', '韦琰', '201811001', '123465', '1');
INSERT INTO `user` VALUES ('10451', '茹疏', '201811002', '123465', '1');
INSERT INTO `user` VALUES ('10452', '贺兰忭', '201811003', '123465', '1');
INSERT INTO `user` VALUES ('10453', '寿氧该', '201811004', '123465', '1');
INSERT INTO `user` VALUES ('10454', '曲周', '201811005', '123465', '1');
INSERT INTO `user` VALUES ('10455', '麻撬', '201811006', '123465', '1');
INSERT INTO `user` VALUES ('10456', '魏耵工', '201811007', '123465', '1');
INSERT INTO `user` VALUES ('10457', '姚绗', '201811008', '123465', '1');
INSERT INTO `user` VALUES ('10458', '通枣辋', '201811009', '123465', '1');
INSERT INTO `user` VALUES ('10459', '步鼐', '201811010', '123465', '1');
INSERT INTO `user` VALUES ('1046', '白袁', '302011', '123456', '2');
INSERT INTO `user` VALUES ('10460', '宁蕴', '201811011', '123465', '1');
INSERT INTO `user` VALUES ('10461', '裘雌爰', '201811012', '123465', '1');
INSERT INTO `user` VALUES ('10462', '巨蹬', '201811013', '123465', '1');
INSERT INTO `user` VALUES ('10463', '缪耿', '201811014', '123465', '1');
INSERT INTO `user` VALUES ('10464', '姚另夔', '201811015', '123465', '1');
INSERT INTO `user` VALUES ('10465', '步炕茎', '201811016', '123465', '1');
INSERT INTO `user` VALUES ('10466', '空螬墀', '201811017', '123465', '1');
INSERT INTO `user` VALUES ('10467', '繁忒胁', '201811018', '123465', '1');
INSERT INTO `user` VALUES ('10468', '公西返', '201811019', '123465', '1');
INSERT INTO `user` VALUES ('10469', '姜振', '201811020', '123465', '1');
INSERT INTO `user` VALUES ('1047', '古蓼', '302012', '123456', '2');
INSERT INTO `user` VALUES ('10470', '史浯蒽', '201811021', '123465', '1');
INSERT INTO `user` VALUES ('10471', '仲污裆', '201811022', '123465', '1');
INSERT INTO `user` VALUES ('10472', '终痞獠', '201811023', '123465', '1');
INSERT INTO `user` VALUES ('10473', '仲糸', '201811024', '123465', '1');
INSERT INTO `user` VALUES ('10474', '经呵羼', '201811025', '123465', '1');
INSERT INTO `user` VALUES ('10475', '那处菲', '201811026', '123465', '1');
INSERT INTO `user` VALUES ('10476', '萧凤', '201811027', '123465', '1');
INSERT INTO `user` VALUES ('10477', '史肼', '201811028', '123465', '1');
INSERT INTO `user` VALUES ('10478', '咸杷', '201811029', '123465', '1');
INSERT INTO `user` VALUES ('10479', '官秆', '201811030', '123465', '1');
INSERT INTO `user` VALUES ('1048', '艾磺曝', '302013', '123456', '2');
INSERT INTO `user` VALUES ('10480', '经臊袅', '201811031', '123465', '1');
INSERT INTO `user` VALUES ('10481', '萧洱', '201811032', '123465', '1');
INSERT INTO `user` VALUES ('10482', '季会', '201811033', '123465', '1');
INSERT INTO `user` VALUES ('10483', '金铫', '201811034', '123465', '1');
INSERT INTO `user` VALUES ('10484', '萧陬阼', '201811035', '123465', '1');
INSERT INTO `user` VALUES ('10485', '郈罂', '201811036', '123465', '1');
INSERT INTO `user` VALUES ('10486', '衡奇栏', '201811037', '123465', '1');
INSERT INTO `user` VALUES ('10487', '简琢凯', '201811038', '123465', '1');
INSERT INTO `user` VALUES ('10488', '毋丘赈掳', '201811039', '123465', '1');
INSERT INTO `user` VALUES ('10489', '金坛丫', '201811040', '123465', '1');
INSERT INTO `user` VALUES ('1049', '公仪岗', '302014', '123456', '2');
INSERT INTO `user` VALUES ('10490', '介铺媚', '201811041', '123465', '1');
INSERT INTO `user` VALUES ('10491', '简尹', '201811042', '123465', '1');
INSERT INTO `user` VALUES ('10492', '阮驰', '201811043', '123465', '1');
INSERT INTO `user` VALUES ('10493', '璩祀', '201811044', '123465', '1');
INSERT INTO `user` VALUES ('10494', '班猗', '201811045', '123465', '1');
INSERT INTO `user` VALUES ('10495', '来构', '201811046', '123465', '1');
INSERT INTO `user` VALUES ('10496', '翁榉压', '201811047', '123465', '1');
INSERT INTO `user` VALUES ('10497', '帅献', '201811048', '123465', '1');
INSERT INTO `user` VALUES ('10498', '蓝谦哕', '201811049', '123465', '1');
INSERT INTO `user` VALUES ('10499', '仰倡惘', '201811050', '123465', '1');
INSERT INTO `user` VALUES ('1050', '姬朱涿', '302015', '123456', '2');
INSERT INTO `user` VALUES ('10500', '衡本', '201812001', '123465', '1');
INSERT INTO `user` VALUES ('10501', '昌臻', '201812002', '123465', '1');
INSERT INTO `user` VALUES ('10502', '皮蟪', '201812003', '123465', '1');
INSERT INTO `user` VALUES ('10503', '练爵妖', '201812004', '123465', '1');
INSERT INTO `user` VALUES ('10504', '钮鸿放', '201812005', '123465', '1');
INSERT INTO `user` VALUES ('10505', '后屯湘', '201812006', '123465', '1');
INSERT INTO `user` VALUES ('10506', '戴聩', '201812007', '123465', '1');
INSERT INTO `user` VALUES ('10507', '乌丈锞', '201812008', '123465', '1');
INSERT INTO `user` VALUES ('10508', '太叔植', '201812009', '123465', '1');
INSERT INTO `user` VALUES ('10509', '梁丘悱', '201812010', '123465', '1');
INSERT INTO `user` VALUES ('1051', '巩胥', '302016', '123456', '2');
INSERT INTO `user` VALUES ('10510', '范腻', '201812011', '123465', '1');
INSERT INTO `user` VALUES ('10511', '端竽宛', '201812012', '123465', '1');
INSERT INTO `user` VALUES ('10512', '焦泾富', '201812013', '123465', '1');
INSERT INTO `user` VALUES ('10513', '褚延', '201812014', '123465', '1');
INSERT INTO `user` VALUES ('10514', '卫溜旒', '201812015', '123465', '1');
INSERT INTO `user` VALUES ('10515', '公孙嗍玢', '201812016', '123465', '1');
INSERT INTO `user` VALUES ('10516', '谭远吝', '201812017', '123465', '1');
INSERT INTO `user` VALUES ('10517', '石盲遏', '201812018', '123465', '1');
INSERT INTO `user` VALUES ('10518', '巴嗜', '201812019', '123465', '1');
INSERT INTO `user` VALUES ('10519', '商棍', '201812020', '123465', '1');
INSERT INTO `user` VALUES ('1052', '蓟趔', '302017', '123456', '2');
INSERT INTO `user` VALUES ('10520', '潘诰', '201812021', '123465', '1');
INSERT INTO `user` VALUES ('10521', '淳于尉侄', '201812022', '123465', '1');
INSERT INTO `user` VALUES ('10522', '闻岛', '201812023', '123465', '1');
INSERT INTO `user` VALUES ('10523', '王蛊趄', '201812024', '123465', '1');
INSERT INTO `user` VALUES ('10524', '潘滟蹙', '201812025', '123465', '1');
INSERT INTO `user` VALUES ('10525', '詹盱拆', '201812026', '123465', '1');
INSERT INTO `user` VALUES ('10526', '钟邦', '201812027', '123465', '1');
INSERT INTO `user` VALUES ('10527', '挚莸漤', '201812028', '123465', '1');
INSERT INTO `user` VALUES ('10528', '东郭闪柳', '201812029', '123465', '1');
INSERT INTO `user` VALUES ('10529', '牟蚨', '201812030', '123465', '1');
INSERT INTO `user` VALUES ('1053', '师蛆页', '302018', '123456', '2');
INSERT INTO `user` VALUES ('10530', '瞿抢', '201812031', '123465', '1');
INSERT INTO `user` VALUES ('10531', '欧究', '201812032', '123465', '1');
INSERT INTO `user` VALUES ('10532', '束照儿', '201812033', '123465', '1');
INSERT INTO `user` VALUES ('10533', '过嚣裨', '201812034', '123465', '1');
INSERT INTO `user` VALUES ('10534', '莘焘', '201812035', '123465', '1');
INSERT INTO `user` VALUES ('10535', '冯侄臃', '201812036', '123465', '1');
INSERT INTO `user` VALUES ('10536', '葛钜', '201812037', '123465', '1');
INSERT INTO `user` VALUES ('10537', '成拦', '201812038', '123465', '1');
INSERT INTO `user` VALUES ('10538', '佴瘀层', '201812039', '123465', '1');
INSERT INTO `user` VALUES ('10539', '常镤勤', '201812040', '123465', '1');
INSERT INTO `user` VALUES ('10540', '梁丘疳', '201812041', '123465', '1');
INSERT INTO `user` VALUES ('10541', '包酹颛', '201812042', '123465', '1');
INSERT INTO `user` VALUES ('10542', '苌丧', '201812043', '123465', '1');
INSERT INTO `user` VALUES ('10543', '禄窕', '201812044', '123465', '1');
INSERT INTO `user` VALUES ('10544', '盛佶澶', '201812045', '123465', '1');
INSERT INTO `user` VALUES ('10545', '郁客噶', '201812046', '123465', '1');
INSERT INTO `user` VALUES ('10546', '谷梁娟热', '201812047', '123465', '1');
INSERT INTO `user` VALUES ('10547', '盛愤', '201812048', '123465', '1');
INSERT INTO `user` VALUES ('10548', '井羝阜', '201812049', '123465', '1');
INSERT INTO `user` VALUES ('10549', '毕撬痄', '201812050', '123465', '1');
INSERT INTO `user` VALUES ('10550', '夏笠裒', '201813001', '123465', '1');
INSERT INTO `user` VALUES ('10551', '焦控躇', '201813002', '123465', '1');
INSERT INTO `user` VALUES ('10552', '景狯谑', '201813003', '123465', '1');
INSERT INTO `user` VALUES ('10553', '麦揆抿', '201813004', '123465', '1');
INSERT INTO `user` VALUES ('10554', '阙人沛', '201813005', '123465', '1');
INSERT INTO `user` VALUES ('10555', '段干汽族', '201813006', '123465', '1');
INSERT INTO `user` VALUES ('10556', '单佃', '201813007', '123465', '1');
INSERT INTO `user` VALUES ('10557', '景攴辱', '201813008', '123465', '1');
INSERT INTO `user` VALUES ('10558', '东郭逐', '201813009', '123465', '1');
INSERT INTO `user` VALUES ('10559', '富睑', '201813010', '123465', '1');
INSERT INTO `user` VALUES ('10560', '景莨', '201813011', '123465', '1');
INSERT INTO `user` VALUES ('10561', '潘削稿', '201813012', '123465', '1');
INSERT INTO `user` VALUES ('10562', '詹魄墨', '201813013', '123465', '1');
INSERT INTO `user` VALUES ('10563', '葛孥蔗', '201813014', '123465', '1');
INSERT INTO `user` VALUES ('10564', '邬笈厨', '201813015', '123465', '1');
INSERT INTO `user` VALUES ('10565', '柴督', '201813016', '123465', '1');
INSERT INTO `user` VALUES ('10566', '伏绫', '201813017', '123465', '1');
INSERT INTO `user` VALUES ('10567', '葛褐', '201813018', '123465', '1');
INSERT INTO `user` VALUES ('10568', '仰卦', '201813019', '123465', '1');
INSERT INTO `user` VALUES ('10569', '孔贳', '201813020', '123465', '1');
INSERT INTO `user` VALUES ('10570', '荀邢摄', '201813021', '123465', '1');
INSERT INTO `user` VALUES ('10571', '鄂蝰', '201813022', '123465', '1');
INSERT INTO `user` VALUES ('10572', '召噬', '201813023', '123465', '1');
INSERT INTO `user` VALUES ('10573', '訾仃', '201813024', '123465', '1');
INSERT INTO `user` VALUES ('10574', '铁崎', '201813025', '123465', '1');
INSERT INTO `user` VALUES ('10575', '万俟婿秩', '201813026', '123465', '1');
INSERT INTO `user` VALUES ('10576', '卢菽茏', '201813027', '123465', '1');
INSERT INTO `user` VALUES ('10577', '羊帚簪', '201813028', '123465', '1');
INSERT INTO `user` VALUES ('10578', '迟咆帆', '201813029', '123465', '1');
INSERT INTO `user` VALUES ('10579', '于瑷', '201813030', '123465', '1');
INSERT INTO `user` VALUES ('10580', '索莲', '201813031', '123465', '1');
INSERT INTO `user` VALUES ('10581', '张廖隗果', '201813032', '123465', '1');
INSERT INTO `user` VALUES ('10582', '司马后', '201813033', '123465', '1');
INSERT INTO `user` VALUES ('10583', '桂尬锛', '201813034', '123465', '1');
INSERT INTO `user` VALUES ('10584', '门舣', '201813035', '123465', '1');
INSERT INTO `user` VALUES ('10585', '施怊懑', '201813036', '123465', '1');
INSERT INTO `user` VALUES ('10586', '班桷', '201813037', '123465', '1');
INSERT INTO `user` VALUES ('10587', '袁缵叁', '201813038', '123465', '1');
INSERT INTO `user` VALUES ('10588', '从�锝', '201813039', '123465', '1');
INSERT INTO `user` VALUES ('10589', '孔耠', '201813040', '123465', '1');
INSERT INTO `user` VALUES ('10590', '兀官胗酢', '201813041', '123465', '1');
INSERT INTO `user` VALUES ('10591', '柳臀国', '201813042', '123465', '1');
INSERT INTO `user` VALUES ('10592', '叔孙琦煅', '201813043', '123465', '1');
INSERT INTO `user` VALUES ('10593', '鲜于芤', '201813044', '123465', '1');
INSERT INTO `user` VALUES ('10594', '花蝇砬', '201813045', '123465', '1');
INSERT INTO `user` VALUES ('10595', '屈突肜', '201813046', '123465', '1');
INSERT INTO `user` VALUES ('10596', '晁谥括', '201813047', '123465', '1');
INSERT INTO `user` VALUES ('10597', '佟僮螽', '201813048', '123465', '1');
INSERT INTO `user` VALUES ('10598', '裴瞎胖', '201813049', '123465', '1');
INSERT INTO `user` VALUES ('10599', '勾帘', '201813050', '123465', '1');
INSERT INTO `user` VALUES ('10600', '唐晒', '201821001', '123465', '1');
INSERT INTO `user` VALUES ('10601', '壤驷嘤琅', '201821002', '123465', '1');
INSERT INTO `user` VALUES ('10602', '冀铲鄱', '201821003', '123465', '1');
INSERT INTO `user` VALUES ('10603', '浦订舁', '201821004', '123465', '1');
INSERT INTO `user` VALUES ('10604', '储遄', '201821005', '123465', '1');
INSERT INTO `user` VALUES ('10605', '赵抨臭', '201821006', '123465', '1');
INSERT INTO `user` VALUES ('10606', '宗二', '201821007', '123465', '1');
INSERT INTO `user` VALUES ('10607', '贺懂邃', '201821008', '123465', '1');
INSERT INTO `user` VALUES ('10608', '北宫锯', '201821009', '123465', '1');
INSERT INTO `user` VALUES ('10609', '浦奈袈', '201821010', '123465', '1');
INSERT INTO `user` VALUES ('10610', '匡攸荃', '201821011', '123465', '1');
INSERT INTO `user` VALUES ('10611', '厉小', '201821012', '123465', '1');
INSERT INTO `user` VALUES ('10612', '乜挛', '201821013', '123465', '1');
INSERT INTO `user` VALUES ('10613', '宰父霸', '201821014', '123465', '1');
INSERT INTO `user` VALUES ('10614', '胥樱锈', '201821015', '123465', '1');
INSERT INTO `user` VALUES ('10615', '贲湎', '201821016', '123465', '1');
INSERT INTO `user` VALUES ('10616', '温撅', '201821017', '123465', '1');
INSERT INTO `user` VALUES ('10617', '贲芟', '201821018', '123465', '1');
INSERT INTO `user` VALUES ('10618', '殷馁掠', '201821019', '123465', '1');
INSERT INTO `user` VALUES ('10619', '胥卒趴', '201821020', '123465', '1');
INSERT INTO `user` VALUES ('10620', '李铵', '201821021', '123465', '1');
INSERT INTO `user` VALUES ('10621', '杞莲耳', '201821022', '123465', '1');
INSERT INTO `user` VALUES ('10622', '梅韩蚺', '201821023', '123465', '1');
INSERT INTO `user` VALUES ('10623', '窦眼圹', '201821024', '123465', '1');
INSERT INTO `user` VALUES ('10624', '罗邹鼋', '201821025', '123465', '1');
INSERT INTO `user` VALUES ('10625', '罗襦', '201821026', '123465', '1');
INSERT INTO `user` VALUES ('10626', '疏宏阼', '201821027', '123465', '1');
INSERT INTO `user` VALUES ('10627', '别讹', '201821028', '123465', '1');
INSERT INTO `user` VALUES ('10628', '鄢桫', '201821029', '123465', '1');
INSERT INTO `user` VALUES ('10629', '梅缉闲', '201821030', '123465', '1');
INSERT INTO `user` VALUES ('10630', '章蚂', '201821031', '123465', '1');
INSERT INTO `user` VALUES ('10631', '明把', '201821032', '123465', '1');
INSERT INTO `user` VALUES ('10632', '涂氍吡', '201821033', '123465', '1');
INSERT INTO `user` VALUES ('10633', '公冶歌郏', '201821034', '123465', '1');
INSERT INTO `user` VALUES ('10634', '巢赞', '201821035', '123465', '1');
INSERT INTO `user` VALUES ('10635', '能唼蜚', '201821036', '123465', '1');
INSERT INTO `user` VALUES ('10636', '喻写高', '201821037', '123465', '1');
INSERT INTO `user` VALUES ('10637', '匡籀', '201821038', '123465', '1');
INSERT INTO `user` VALUES ('10638', '厉獗效', '201821039', '123465', '1');
INSERT INTO `user` VALUES ('10639', '虎波', '201821040', '123465', '1');
INSERT INTO `user` VALUES ('10640', '乜忙蟪', '201821041', '123465', '1');
INSERT INTO `user` VALUES ('10641', '毛剁', '201821042', '123465', '1');
INSERT INTO `user` VALUES ('10642', '丁呐逮', '201821043', '123465', '1');
INSERT INTO `user` VALUES ('10643', '枚搞', '201821044', '123465', '1');
INSERT INTO `user` VALUES ('10644', '拓跋朋', '201821045', '123465', '1');
INSERT INTO `user` VALUES ('10645', '浦椹趋', '201821046', '123465', '1');
INSERT INTO `user` VALUES ('10646', '阴稆', '201821047', '123465', '1');
INSERT INTO `user` VALUES ('10647', '颜止垓', '201821048', '123465', '1');
INSERT INTO `user` VALUES ('10648', '尉迟拄', '201821049', '123465', '1');
INSERT INTO `user` VALUES ('10649', '鞠胴托', '201821050', '123465', '1');
INSERT INTO `user` VALUES ('10650', '随鲈', '201822001', '123465', '1');
INSERT INTO `user` VALUES ('10651', '单于诜', '201822002', '123465', '1');
INSERT INTO `user` VALUES ('10652', '欧蝻衄', '201822003', '123465', '1');
INSERT INTO `user` VALUES ('10653', '安沩', '201822004', '123465', '1');
INSERT INTO `user` VALUES ('10654', '微生楷吱', '201822005', '123465', '1');
INSERT INTO `user` VALUES ('10655', '骆官', '201822006', '123465', '1');
INSERT INTO `user` VALUES ('10656', '彭郸玟', '201822007', '123465', '1');
INSERT INTO `user` VALUES ('10657', '端蹩陛', '201822008', '123465', '1');
INSERT INTO `user` VALUES ('10658', '戴裕觌', '201822009', '123465', '1');
INSERT INTO `user` VALUES ('10659', '范阴', '201822010', '123465', '1');
INSERT INTO `user` VALUES ('10660', '申屠桓', '201822011', '123465', '1');
INSERT INTO `user` VALUES ('10661', '幸惴', '201822012', '123465', '1');
INSERT INTO `user` VALUES ('10662', '石檩醪', '201822013', '123465', '1');
INSERT INTO `user` VALUES ('10663', '荆鲚', '201822014', '123465', '1');
INSERT INTO `user` VALUES ('10664', '高岔', '201822015', '123465', '1');
INSERT INTO `user` VALUES ('10665', '公孙面氆', '201822016', '123465', '1');
INSERT INTO `user` VALUES ('10666', '蒋仡鲢', '201822017', '123465', '1');
INSERT INTO `user` VALUES ('10667', '郎猛态', '201822018', '123465', '1');
INSERT INTO `user` VALUES ('10668', '巴涿椎', '201822019', '123465', '1');
INSERT INTO `user` VALUES ('10669', '宋戾', '201822020', '123465', '1');
INSERT INTO `user` VALUES ('10670', '石悸', '201822021', '123465', '1');
INSERT INTO `user` VALUES ('10671', '游艘', '201822022', '123465', '1');
INSERT INTO `user` VALUES ('10672', '墨剧', '201822023', '123465', '1');
INSERT INTO `user` VALUES ('10673', '原壳', '201822024', '123465', '1');
INSERT INTO `user` VALUES ('10674', '时遛', '201822025', '123465', '1');
INSERT INTO `user` VALUES ('10675', '夏职', '201822026', '123465', '1');
INSERT INTO `user` VALUES ('10676', '原榛闾', '201822027', '123465', '1');
INSERT INTO `user` VALUES ('10677', '瞿恬诬', '201822028', '123465', '1');
INSERT INTO `user` VALUES ('10678', '单于讦', '201822029', '123465', '1');
INSERT INTO `user` VALUES ('10679', '牟歆鲑', '201822030', '123465', '1');
INSERT INTO `user` VALUES ('10680', '淳于熏区', '201822031', '123465', '1');
INSERT INTO `user` VALUES ('10681', '东郭湄桢', '201822032', '123465', '1');
INSERT INTO `user` VALUES ('10682', '莘铹', '201822033', '123465', '1');
INSERT INTO `user` VALUES ('10683', '冯咖', '201822034', '123465', '1');
INSERT INTO `user` VALUES ('10684', '单于蜞蕾', '201822035', '123465', '1');
INSERT INTO `user` VALUES ('10685', '束茆', '201822036', '123465', '1');
INSERT INTO `user` VALUES ('10686', '胶猊昨', '201822037', '123465', '1');
INSERT INTO `user` VALUES ('10687', '查恃', '201822038', '123465', '1');
INSERT INTO `user` VALUES ('10688', '成愈婿', '201822039', '123465', '1');
INSERT INTO `user` VALUES ('10689', '诸堆', '201822040', '123465', '1');
INSERT INTO `user` VALUES ('10690', '竹人悝', '201822041', '123465', '1');
INSERT INTO `user` VALUES ('10691', '后镌', '201822042', '123465', '1');
INSERT INTO `user` VALUES ('10692', '徐桕', '201822043', '123465', '1');
INSERT INTO `user` VALUES ('10693', '常伍辊', '201822044', '123465', '1');
INSERT INTO `user` VALUES ('10694', '成茄胼', '201822045', '123465', '1');
INSERT INTO `user` VALUES ('10695', '翟槠傻', '201822046', '123465', '1');
INSERT INTO `user` VALUES ('10696', '充跎', '201822047', '123465', '1');
INSERT INTO `user` VALUES ('10697', '沃桊', '201822048', '123465', '1');
INSERT INTO `user` VALUES ('10698', '后戴', '201822049', '123465', '1');
INSERT INTO `user` VALUES ('10699', '梁丘郦薷', '201822050', '123465', '1');
INSERT INTO `user` VALUES ('10700', '邵岸', '201823001', '123465', '1');
INSERT INTO `user` VALUES ('10701', '云着史', '201823002', '123465', '1');
INSERT INTO `user` VALUES ('10702', '段干襞', '201823003', '123465', '1');
INSERT INTO `user` VALUES ('10703', '郁铳香', '201823004', '123465', '1');
INSERT INTO `user` VALUES ('10704', '苌罕', '201823005', '123465', '1');
INSERT INTO `user` VALUES ('10705', '涂仡觇', '201823006', '123465', '1');
INSERT INTO `user` VALUES ('10706', '郑邱诅', '201823007', '123465', '1');
INSERT INTO `user` VALUES ('10707', '晏循', '201823008', '123465', '1');
INSERT INTO `user` VALUES ('10708', '景荒拎', '201823009', '123465', '1');
INSERT INTO `user` VALUES ('10709', '苍荽戬', '201823010', '123465', '1');
INSERT INTO `user` VALUES ('10710', '单刽赛', '201823011', '123465', '1');
INSERT INTO `user` VALUES ('10711', '臧匪', '201823012', '123465', '1');
INSERT INTO `user` VALUES ('10712', '抗纯波', '201823013', '123465', '1');
INSERT INTO `user` VALUES ('10713', '汲阁', '201823014', '123465', '1');
INSERT INTO `user` VALUES ('10714', '尚缟', '201823015', '123465', '1');
INSERT INTO `user` VALUES ('10715', '柏咩徊', '201823016', '123465', '1');
INSERT INTO `user` VALUES ('10716', '农芬甥', '201823017', '123465', '1');
INSERT INTO `user` VALUES ('10717', '戎倥', '201823018', '123465', '1');
INSERT INTO `user` VALUES ('10718', '揭谚', '201823019', '123465', '1');
INSERT INTO `user` VALUES ('10719', '文咽', '201823020', '123465', '1');
INSERT INTO `user` VALUES ('10720', '汝镟扬', '201823021', '123465', '1');
INSERT INTO `user` VALUES ('10721', '郭朵', '201823022', '123465', '1');
INSERT INTO `user` VALUES ('10722', '鞠逮', '201823023', '123465', '1');
INSERT INTO `user` VALUES ('10723', '郁猖', '201823024', '123465', '1');
INSERT INTO `user` VALUES ('10724', '农唢', '201823025', '123465', '1');
INSERT INTO `user` VALUES ('10725', '水总搡', '201823026', '123465', '1');
INSERT INTO `user` VALUES ('10726', '武劭', '201823027', '123465', '1');
INSERT INTO `user` VALUES ('10727', '梅砖', '201823028', '123465', '1');
INSERT INTO `user` VALUES ('10728', '楼了焖', '201823029', '123465', '1');
INSERT INTO `user` VALUES ('10729', '米璨佝', '201823030', '123465', '1');
INSERT INTO `user` VALUES ('10730', '汝袭', '201823031', '123465', '1');
INSERT INTO `user` VALUES ('10731', '温尿缜', '201823032', '123465', '1');
INSERT INTO `user` VALUES ('10732', '赫连苋', '201823033', '123465', '1');
INSERT INTO `user` VALUES ('10733', '甘浊趼', '201823034', '123465', '1');
INSERT INTO `user` VALUES ('10734', '郇易', '201823035', '123465', '1');
INSERT INTO `user` VALUES ('10735', '羿齿彷', '201823036', '123465', '1');
INSERT INTO `user` VALUES ('10736', '汪娶', '201823037', '123465', '1');
INSERT INTO `user` VALUES ('10737', '北宫磨鼗', '201823038', '123465', '1');
INSERT INTO `user` VALUES ('10738', '虎画', '201823039', '123465', '1');
INSERT INTO `user` VALUES ('10739', '池垩楱', '201823040', '123465', '1');
INSERT INTO `user` VALUES ('10740', '冀粘媪', '201823041', '123465', '1');
INSERT INTO `user` VALUES ('10741', '池榷', '201823042', '123465', '1');
INSERT INTO `user` VALUES ('10742', '密除', '201823043', '123465', '1');
INSERT INTO `user` VALUES ('10743', '浦愣', '201823044', '123465', '1');
INSERT INTO `user` VALUES ('10744', '毛叱', '201823045', '123465', '1');
INSERT INTO `user` VALUES ('10745', '江送', '201823046', '123465', '1');
INSERT INTO `user` VALUES ('10746', '皇甫锹锘', '201823047', '123465', '1');
INSERT INTO `user` VALUES ('10747', '楚膀', '201823048', '123465', '1');
INSERT INTO `user` VALUES ('10748', '浦舌考', '201823049', '123465', '1');
INSERT INTO `user` VALUES ('10749', '靳汆犄', '201823050', '123465', '1');
INSERT INTO `user` VALUES ('10750', '利挈', '201831001', '123465', '1');
INSERT INTO `user` VALUES ('10751', '太叔薰鸬', '201831002', '123465', '1');
INSERT INTO `user` VALUES ('10752', '阎域', '201831003', '123465', '1');
INSERT INTO `user` VALUES ('10753', '单于昱', '201831004', '123465', '1');
INSERT INTO `user` VALUES ('10754', '佘菸', '201831005', '123465', '1');
INSERT INTO `user` VALUES ('10755', '章鹎捧', '201831006', '123465', '1');
INSERT INTO `user` VALUES ('10756', '禄璞', '201831007', '123465', '1');
INSERT INTO `user` VALUES ('10757', '周胳', '201831008', '123465', '1');
INSERT INTO `user` VALUES ('10758', '苌稔辣', '201831009', '123465', '1');
INSERT INTO `user` VALUES ('10759', '松偶', '201831010', '123465', '1');
INSERT INTO `user` VALUES ('10760', '苍颊', '201831011', '123465', '1');
INSERT INTO `user` VALUES ('10761', '盛尊磬', '201831012', '123465', '1');
INSERT INTO `user` VALUES ('10762', '庄花腧', '201831013', '123465', '1');
INSERT INTO `user` VALUES ('10763', '苌墩卧', '201831014', '123465', '1');
INSERT INTO `user` VALUES ('10764', '臧兔价', '201831015', '123465', '1');
INSERT INTO `user` VALUES ('10765', '钦鹕', '201831016', '123465', '1');
INSERT INTO `user` VALUES ('10766', '郝哿', '201831017', '123465', '1');
INSERT INTO `user` VALUES ('10767', '臧姗', '201831018', '123465', '1');
INSERT INTO `user` VALUES ('10768', '景蚺坌', '201831019', '123465', '1');
INSERT INTO `user` VALUES ('10769', '百里皇', '201831020', '123465', '1');
INSERT INTO `user` VALUES ('10770', '杭脍貔', '201831021', '123465', '1');
INSERT INTO `user` VALUES ('10771', '双弗', '201831022', '123465', '1');
INSERT INTO `user` VALUES ('10772', '杭广', '201831023', '123465', '1');
INSERT INTO `user` VALUES ('10773', '苏泪踬', '201831024', '123465', '1');
INSERT INTO `user` VALUES ('10774', '文恍摹', '201831025', '123465', '1');
INSERT INTO `user` VALUES ('10775', '郁捐', '201831026', '123465', '1');
INSERT INTO `user` VALUES ('10776', '孙黄伯', '201831027', '123465', '1');
INSERT INTO `user` VALUES ('10777', '狄馊蟀', '201831028', '123465', '1');
INSERT INTO `user` VALUES ('10778', '法蚜', '201831029', '123465', '1');
INSERT INTO `user` VALUES ('10779', '达水椠', '201831030', '123465', '1');
INSERT INTO `user` VALUES ('10780', '邴箝', '201831031', '123465', '1');
INSERT INTO `user` VALUES ('10781', '米斌芦', '201831032', '123465', '1');
INSERT INTO `user` VALUES ('10782', '水澈糅', '201831033', '123465', '1');
INSERT INTO `user` VALUES ('10783', '公羊跌', '201831034', '123465', '1');
INSERT INTO `user` VALUES ('10784', '农娲絮', '201831035', '123465', '1');
INSERT INTO `user` VALUES ('10785', '舜具畚', '201831036', '123465', '1');
INSERT INTO `user` VALUES ('10786', '寇邬', '201831037', '123465', '1');
INSERT INTO `user` VALUES ('10787', '窦摄奥', '201831038', '123465', '1');
INSERT INTO `user` VALUES ('10788', '寇绲', '201831039', '123465', '1');
INSERT INTO `user` VALUES ('10789', '武哀洵', '201831040', '123465', '1');
INSERT INTO `user` VALUES ('10790', '别蔚', '201831041', '123465', '1');
INSERT INTO `user` VALUES ('10791', '章亟垛', '201831042', '123465', '1');
INSERT INTO `user` VALUES ('10792', '谷梁忱', '201831043', '123465', '1');
INSERT INTO `user` VALUES ('10793', '邓诽怂', '201831044', '123465', '1');
INSERT INTO `user` VALUES ('10794', '糜喔茑', '201831045', '123465', '1');
INSERT INTO `user` VALUES ('10795', '罗翎', '201831046', '123465', '1');
INSERT INTO `user` VALUES ('10796', '宰父稼悚', '201831047', '123465', '1');
INSERT INTO `user` VALUES ('10797', '晁请', '201831048', '123465', '1');
INSERT INTO `user` VALUES ('10798', '白跣铐', '201831049', '123465', '1');
INSERT INTO `user` VALUES ('10799', '滑介难', '201831050', '123465', '1');
INSERT INTO `user` VALUES ('10800', '薛绷囹', '201832001', '123465', '1');
INSERT INTO `user` VALUES ('10801', '宇文滏', '201832002', '123465', '1');
INSERT INTO `user` VALUES ('10802', '舒驱', '201832003', '123465', '1');
INSERT INTO `user` VALUES ('10803', '嵇软', '201832004', '123465', '1');
INSERT INTO `user` VALUES ('10804', '溥防箨', '201832005', '123465', '1');
INSERT INTO `user` VALUES ('10805', '太史眉', '201832006', '123465', '1');
INSERT INTO `user` VALUES ('10806', '秘谲', '201832007', '123465', '1');
INSERT INTO `user` VALUES ('10807', '凌绿', '201832008', '123465', '1');
INSERT INTO `user` VALUES ('10808', '崔质', '201832009', '123465', '1');
INSERT INTO `user` VALUES ('10809', '越氽潼', '201832010', '123465', '1');
INSERT INTO `user` VALUES ('10810', '原掭郅', '201832011', '123465', '1');
INSERT INTO `user` VALUES ('10811', '茅隋螺', '201832012', '123465', '1');
INSERT INTO `user` VALUES ('10812', '轩辕馘酽', '201832013', '123465', '1');
INSERT INTO `user` VALUES ('10813', '墨邕夜', '201832014', '123465', '1');
INSERT INTO `user` VALUES ('10814', '牧吓幽', '201832015', '123465', '1');
INSERT INTO `user` VALUES ('10815', '庞硗', '201832016', '123465', '1');
INSERT INTO `user` VALUES ('10816', '韦涞谨', '201832017', '123465', '1');
INSERT INTO `user` VALUES ('10817', '南宫疸俺', '201832018', '123465', '1');
INSERT INTO `user` VALUES ('10818', '劳躁', '201832019', '123465', '1');
INSERT INTO `user` VALUES ('10819', '皮吉', '201832020', '123465', '1');
INSERT INTO `user` VALUES ('10820', '令狐更艽', '201832021', '123465', '1');
INSERT INTO `user` VALUES ('10821', '宦蠃', '201832022', '123465', '1');
INSERT INTO `user` VALUES ('10822', '郜雀', '201832023', '123465', '1');
INSERT INTO `user` VALUES ('10823', '第五狞', '201832024', '123465', '1');
INSERT INTO `user` VALUES ('10824', '韦龄', '201832025', '123465', '1');
INSERT INTO `user` VALUES ('10825', '褚嚣', '201832026', '123465', '1');
INSERT INTO `user` VALUES ('10826', '翟崃', '201832027', '123465', '1');
INSERT INTO `user` VALUES ('10827', '焦悸机', '201832028', '123465', '1');
INSERT INTO `user` VALUES ('10828', '焦碳', '201832029', '123465', '1');
INSERT INTO `user` VALUES ('10829', '谈溴', '201832030', '123465', '1');
INSERT INTO `user` VALUES ('10830', '巴睥硭', '201832031', '123465', '1');
INSERT INTO `user` VALUES ('10831', '红桓睫', '201832032', '123465', '1');
INSERT INTO `user` VALUES ('10832', '慕芫噱', '201832033', '123465', '1');
INSERT INTO `user` VALUES ('10833', '谈葶迓', '201832034', '123465', '1');
INSERT INTO `user` VALUES ('10834', '谭凶', '201832035', '123465', '1');
INSERT INTO `user` VALUES ('10835', '蔚氵圣', '201832036', '123465', '1');
INSERT INTO `user` VALUES ('10836', '弓晡苦', '201832037', '123465', '1');
INSERT INTO `user` VALUES ('10837', '卫醋', '201832038', '123465', '1');
INSERT INTO `user` VALUES ('10838', '时顾旦', '201832039', '123465', '1');
INSERT INTO `user` VALUES ('10839', '闻弊', '201832040', '123465', '1');
INSERT INTO `user` VALUES ('10840', '欧渺', '201832041', '123465', '1');
INSERT INTO `user` VALUES ('10841', '安嗔町', '201832042', '123465', '1');
INSERT INTO `user` VALUES ('10842', '洪裙陴', '201832043', '123465', '1');
INSERT INTO `user` VALUES ('10843', '詹辍笋', '201832044', '123465', '1');
INSERT INTO `user` VALUES ('10844', '束貂', '201832045', '123465', '1');
INSERT INTO `user` VALUES ('10845', '瞿纯', '201832046', '123465', '1');
INSERT INTO `user` VALUES ('10846', '牟氽', '201832047', '123465', '1');
INSERT INTO `user` VALUES ('10847', '欧耍蜈', '201832048', '123465', '1');
INSERT INTO `user` VALUES ('10848', '束腌', '201832049', '123465', '1');
INSERT INTO `user` VALUES ('10849', '微生俜酮', '201832050', '123465', '1');
INSERT INTO `user` VALUES ('10850', '逄蕨捩', '201833001', '123465', '1');
INSERT INTO `user` VALUES ('10851', '公孙绋氛', '201833002', '123465', '1');
INSERT INTO `user` VALUES ('10852', '时碾围', '201833003', '123465', '1');
INSERT INTO `user` VALUES ('10853', '皋翦膑', '201833004', '123465', '1');
INSERT INTO `user` VALUES ('10854', '石墅', '201833005', '123465', '1');
INSERT INTO `user` VALUES ('10855', '红锬莹', '201833006', '123465', '1');
INSERT INTO `user` VALUES ('10856', '慕锰', '201833007', '123465', '1');
INSERT INTO `user` VALUES ('10857', '巴爷凇', '201833008', '123465', '1');
INSERT INTO `user` VALUES ('10858', '仲孙岌', '201833009', '123465', '1');
INSERT INTO `user` VALUES ('10859', '游时嫩', '201833010', '123465', '1');
INSERT INTO `user` VALUES ('10860', '贡儿璧', '201833011', '123465', '1');
INSERT INTO `user` VALUES ('10861', '仲孙瞽梏', '201833012', '123465', '1');
INSERT INTO `user` VALUES ('10862', '赏轾', '201833013', '123465', '1');
INSERT INTO `user` VALUES ('10863', '相炔', '201833014', '123465', '1');
INSERT INTO `user` VALUES ('10864', '冯擢惠', '201833015', '123465', '1');
INSERT INTO `user` VALUES ('10865', '东冂', '201833016', '123465', '1');
INSERT INTO `user` VALUES ('10866', '淳于裨', '201833017', '123465', '1');
INSERT INTO `user` VALUES ('10867', '瞿秘碲', '201833018', '123465', '1');
INSERT INTO `user` VALUES ('10868', '葛摇倩', '201833019', '123465', '1');
INSERT INTO `user` VALUES ('10869', '常该厢', '201833020', '123465', '1');
INSERT INTO `user` VALUES ('10870', '单于邓完', '201833021', '123465', '1');
INSERT INTO `user` VALUES ('10871', '佘潜', '201833022', '123465', '1');
INSERT INTO `user` VALUES ('10872', '安临', '201833023', '123465', '1');
INSERT INTO `user` VALUES ('10873', '伏佰', '201833024', '123465', '1');
INSERT INTO `user` VALUES ('10874', '佘禾澧', '201833025', '123465', '1');
INSERT INTO `user` VALUES ('10875', '徐蟹', '201833026', '123465', '1');
INSERT INTO `user` VALUES ('10876', '奚袜睨', '201833027', '123465', '1');
INSERT INTO `user` VALUES ('10877', '常肠或', '201833028', '123465', '1');
INSERT INTO `user` VALUES ('10878', '包藩臃', '201833029', '123465', '1');
INSERT INTO `user` VALUES ('10879', '过闵', '201833030', '123465', '1');
INSERT INTO `user` VALUES ('10880', '党挂', '201833031', '123465', '1');
INSERT INTO `user` VALUES ('10881', '诸漆登', '201833032', '123465', '1');
INSERT INTO `user` VALUES ('10882', '乐伽啦', '201833033', '123465', '1');
INSERT INTO `user` VALUES ('10883', '后序鸣', '201833034', '123465', '1');
INSERT INTO `user` VALUES ('10884', '奚月', '201833035', '123465', '1');
INSERT INTO `user` VALUES ('10885', '太叔鲠煨', '201833036', '123465', '1');
INSERT INTO `user` VALUES ('10886', '后埭羸', '201833037', '123465', '1');
INSERT INTO `user` VALUES ('10887', '吴锝', '201833038', '123465', '1');
INSERT INTO `user` VALUES ('10888', '折麓蚵', '201833039', '123465', '1');
INSERT INTO `user` VALUES ('10889', '宗正闵我', '201833040', '123465', '1');
INSERT INTO `user` VALUES ('10890', '段干酚孕', '201833041', '123465', '1');
INSERT INTO `user` VALUES ('10891', '吴莒汝', '201833042', '123465', '1');
INSERT INTO `user` VALUES ('10892', '云爸仁', '201833043', '123465', '1');
INSERT INTO `user` VALUES ('10893', '景咚占', '201833044', '123465', '1');
INSERT INTO `user` VALUES ('10894', '双韪切', '201833045', '123465', '1');
INSERT INTO `user` VALUES ('10895', '单唷', '201833046', '123465', '1');
INSERT INTO `user` VALUES ('10896', '段祆', '201833047', '123465', '1');
INSERT INTO `user` VALUES ('10897', '关花', '201833048', '123465', '1');
INSERT INTO `user` VALUES ('10898', '苍诟', '201833049', '123465', '1');
INSERT INTO `user` VALUES ('10899', '晏鹄', '201833050', '123465', '1');
INSERT INTO `user` VALUES ('132', 'SSp1ash', 'ssp1ash', '1997628', '3');
INSERT INTO `user` VALUES ('133', 'SSp1ash', 'ssp1ash', '1997628', '2');
