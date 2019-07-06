/*
 Navicat Premium Data Transfer

 Source Server         : dbms
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : jxt

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 30/06/2019 16:59:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `account_id` int(11) NOT NULL,
  `role_id` int(11) NULL DEFAULT NULL,
  `account_password` varchar(24) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account_role_id` int(11) NULL DEFAULT NULL,
  `account_sex` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `account_phone` int(11) NULL DEFAULT NULL,
  `account_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `par_id` int(11) NULL DEFAULT NULL,
  `account_class_id` int(11) NULL DEFAULT NULL,
  `t_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`account_id`) USING BTREE,
  INDEX `FK_account_role`(`role_id`) USING BTREE,
  CONSTRAINT `FK_account_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for account_activity
-- ----------------------------
DROP TABLE IF EXISTS `account_activity`;
CREATE TABLE `account_activity`  (
  `account_id` int(11) NOT NULL,
  `act_id` int(11) NOT NULL,
  PRIMARY KEY (`account_id`, `act_id`) USING BTREE,
  INDEX `FK_account_activity2`(`act_id`) USING BTREE,
  CONSTRAINT `FK_account_activity` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_account_activity2` FOREIGN KEY (`act_id`) REFERENCES `activity` (`act_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for account_attendence
-- ----------------------------
DROP TABLE IF EXISTS `account_attendence`;
CREATE TABLE `account_attendence`  (
  `attend_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  PRIMARY KEY (`attend_id`, `account_id`) USING BTREE,
  INDEX `FK_account_attendence2`(`account_id`) USING BTREE,
  CONSTRAINT `FK_account_attendence` FOREIGN KEY (`attend_id`) REFERENCES `attendence` (`attend_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_account_attendence2` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for account_class
-- ----------------------------
DROP TABLE IF EXISTS `account_class`;
CREATE TABLE `account_class`  (
  `account_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  PRIMARY KEY (`account_id`, `class_id`) USING BTREE,
  INDEX `FK_account_class2`(`class_id`) USING BTREE,
  CONSTRAINT `FK_account_class` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_account_class2` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for account_grade
-- ----------------------------
DROP TABLE IF EXISTS `account_grade`;
CREATE TABLE `account_grade`  (
  `account_id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  PRIMARY KEY (`account_id`, `grade_id`) USING BTREE,
  INDEX `FK_account_grade2`(`grade_id`) USING BTREE,
  CONSTRAINT `FK_account_grade` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_account_grade2` FOREIGN KEY (`grade_id`) REFERENCES `grade` (`grade_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for account_message
-- ----------------------------
DROP TABLE IF EXISTS `account_message`;
CREATE TABLE `account_message`  (
  `account_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  PRIMARY KEY (`account_id`, `message_id`) USING BTREE,
  INDEX `FK_account_message2`(`message_id`) USING BTREE,
  CONSTRAINT `FK_account_message` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_account_message2` FOREIGN KEY (`message_id`) REFERENCES `message` (`message_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for account_news
-- ----------------------------
DROP TABLE IF EXISTS `account_news`;
CREATE TABLE `account_news`  (
  `news_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  PRIMARY KEY (`news_id`, `account_id`) USING BTREE,
  INDEX `FK_account_news2`(`account_id`) USING BTREE,
  CONSTRAINT `FK_account_news` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_account_news2` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for account_notice
-- ----------------------------
DROP TABLE IF EXISTS `account_notice`;
CREATE TABLE `account_notice`  (
  `notice_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  PRIMARY KEY (`notice_id`, `account_id`) USING BTREE,
  INDEX `FK_account_notice2`(`account_id`) USING BTREE,
  CONSTRAINT `FK_account_notice` FOREIGN KEY (`notice_id`) REFERENCES `notice` (`notice_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_account_notice2` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for account_rp
-- ----------------------------
DROP TABLE IF EXISTS `account_rp`;
CREATE TABLE `account_rp`  (
  `account_id` int(11) NOT NULL,
  `reward_and_punish_id` int(11) NOT NULL,
  PRIMARY KEY (`account_id`, `reward_and_punish_id`) USING BTREE,
  INDEX `FK_account_rp2`(`reward_and_punish_id`) USING BTREE,
  CONSTRAINT `FK_account_rp` FOREIGN KEY (`account_id`) REFERENCES `account` (`account_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_account_rp2` FOREIGN KEY (`reward_and_punish_id`) REFERENCES `reward_and_punish` (`reward_and_punish_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity`  (
  `act_id` int(11) NOT NULL AUTO_INCREMENT,
  `act_pubber_id` int(11) NULL DEFAULT NULL,
  `act_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `act_image` longblob NULL,
  PRIMARY KEY (`act_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for attendence
-- ----------------------------
DROP TABLE IF EXISTS `attendence`;
CREATE TABLE `attendence`  (
  `attend_id` int(11) NOT NULL AUTO_INCREMENT,
  `attend_stu_id` int(11) NULL DEFAULT NULL,
  `attend_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`attend_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth
-- ----------------------------
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth`  (
  `auth_id` int(11) NOT NULL AUTO_INCREMENT,
  `auth_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`auth_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for auth_role
-- ----------------------------
DROP TABLE IF EXISTS `auth_role`;
CREATE TABLE `auth_role`  (
  `role_id` int(11) NOT NULL,
  `auth_id` int(11) NOT NULL,
  PRIMARY KEY (`role_id`, `auth_id`) USING BTREE,
  INDEX `FK_auth_role2`(`auth_id`) USING BTREE,
  CONSTRAINT `FK_auth_role` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_auth_role2` FOREIGN KEY (`auth_id`) REFERENCES `auth` (`auth_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for class
-- ----------------------------
DROP TABLE IF EXISTS `class`;
CREATE TABLE `class`  (
  `class_id` int(11) NOT NULL,
  `master_id` int(11) NULL DEFAULT NULL,
  `classroom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `class_stu_count` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`class_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for class_task
-- ----------------------------
DROP TABLE IF EXISTS `class_task`;
CREATE TABLE `class_task`  (
  `class_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  PRIMARY KEY (`class_id`, `task_id`) USING BTREE,
  INDEX `FK_class_task2`(`task_id`) USING BTREE,
  CONSTRAINT `FK_class_task` FOREIGN KEY (`class_id`) REFERENCES `class` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_class_task2` FOREIGN KEY (`task_id`) REFERENCES `task` (`task_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade`  (
  `grade_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade_t_id` int(11) NULL DEFAULT NULL,
  `grade_stu_id` int(11) NULL DEFAULT NULL,
  `grade` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`grade_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `act_id` int(11) NULL DEFAULT NULL,
  `source_id` int(11) NULL DEFAULT NULL,
  `target_id` int(11) NULL DEFAULT NULL,
  `reply_id` int(11) NULL DEFAULT NULL,
  `is_read` int(11) NULL DEFAULT NULL,
  `message_type` int(11) NULL DEFAULT NULL,
  `comment_act_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`message_id`) USING BTREE,
  INDEX `FK_comment`(`act_id`) USING BTREE,
  CONSTRAINT `FK_comment` FOREIGN KEY (`act_id`) REFERENCES `activity` (`act_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `news_id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `news_time` timestamp(0) NULL DEFAULT NULL,
  `publisher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`news_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notice_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `notice_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for reward_and_punish
-- ----------------------------
DROP TABLE IF EXISTS `reward_and_punish`;
CREATE TABLE `reward_and_punish`  (
  `reward_and_punish_id` int(11) NOT NULL AUTO_INCREMENT,
  `reward_or_punish` int(11) NULL DEFAULT NULL,
  `rp_stu_id` int(11) NULL DEFAULT NULL,
  `rp_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rp_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`reward_and_punish_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task`  (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `task_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `task_begin_time` timestamp(0) NULL DEFAULT NULL,
  `task_deadline` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`task_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
