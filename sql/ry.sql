/*
Navicat MySQL Data Transfer

Source Server         : cloud
Source Server Version : 50728
Source Host           : 121.229.99.128:3306
Source Database       : ry

Target Server Type    : MYSQL
Target Server Version : 50728
File Encoding         : 65001

Date: 2023-08-15 14:54:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('2', 'jl_file', '文件管理', null, null, 'JlFile', 'crud', 'com.ruoyi.system', 'ruoyi-jl', 'file', '文件管理', 'HZL', '0', '/', '{}', 'admin', '2023-07-17 16:19:35', '', '2023-07-21 10:15:25', null);
INSERT INTO `gen_table` VALUES ('3', 'jl_borrow', '借阅记录表', null, null, 'JlBorrow', 'crud', 'com.ruoyi.system', 'ruoyi-jl', 'borrow', '借阅记录', 'HZL', '0', '/', '{}', 'admin', '2023-07-26 10:15:49', '', '2023-07-26 10:24:54', null);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint(20) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES ('9', '2', 'file_id', '文件ID', 'bigint', 'Long', 'fileId', '1', '1', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2023-07-17 16:19:35', '', '2023-07-21 10:15:25');
INSERT INTO `gen_table_column` VALUES ('10', '2', 'file_name', '文件名', 'varchar(255)', 'String', 'fileName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', '2', 'admin', '2023-07-17 16:19:35', '', '2023-07-21 10:15:25');
INSERT INTO `gen_table_column` VALUES ('11', '2', 'file_path', '文件路径', 'varchar(255)', 'String', 'filePath', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2023-07-17 16:19:35', '', '2023-07-21 10:15:25');
INSERT INTO `gen_table_column` VALUES ('12', '2', 'file_type', '文件类型', 'int', 'Long', 'fileType', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', 'file_type', '4', 'admin', '2023-07-17 16:19:35', '', '2023-07-21 10:15:25');
INSERT INTO `gen_table_column` VALUES ('13', '2', 'user_id', '用户ID', 'bigint', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '5', 'admin', '2023-07-17 16:19:35', '', '2023-07-21 10:15:25');
INSERT INTO `gen_table_column` VALUES ('14', '2', 'dept_id', '部门ID', 'bigint', 'Long', 'deptId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '6', 'admin', '2023-07-17 16:19:35', '', '2023-07-21 10:15:25');
INSERT INTO `gen_table_column` VALUES ('15', '2', 'status', '文件状态', 'int', 'Long', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', 'file_status', '7', 'admin', '2023-07-17 16:19:35', '', '2023-07-21 10:15:25');
INSERT INTO `gen_table_column` VALUES ('16', '2', 'create_time', '上传时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', null, null, '1', 'BETWEEN', 'datetime', '', '8', 'admin', '2023-07-17 16:19:35', '', '2023-07-21 10:15:25');
INSERT INTO `gen_table_column` VALUES ('17', '3', 'id', '借阅ID', 'bigint', 'Long', 'id', '1', '0', null, '1', null, null, null, 'EQ', 'input', '', '1', 'admin', '2023-07-26 10:15:49', '', '2023-07-26 10:24:54');
INSERT INTO `gen_table_column` VALUES ('18', '3', 'file_id', '文件ID', 'bigint', 'Long', 'fileId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '2', 'admin', '2023-07-26 10:15:49', '', '2023-07-26 10:24:54');
INSERT INTO `gen_table_column` VALUES ('19', '3', 'user_id', '用户ID', 'bigint', 'Long', 'userId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '3', 'admin', '2023-07-26 10:15:49', '', '2023-07-26 10:24:54');
INSERT INTO `gen_table_column` VALUES ('20', '3', 'dept_id', '部门ID', 'bigint', 'Long', 'deptId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', '4', 'admin', '2023-07-26 10:15:49', '', '2023-07-26 10:24:54');
INSERT INTO `gen_table_column` VALUES ('21', '3', 'status', '借阅状态', 'int', 'Long', 'status', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'radio', '', '5', 'admin', '2023-07-26 10:15:49', '', '2023-07-26 10:24:54');
INSERT INTO `gen_table_column` VALUES ('22', '3', 'create_time', '申请时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', null, '1', '1', 'EQ', 'datetime', '', '6', 'admin', '2023-07-26 10:15:49', '', '2023-07-26 10:24:54');

-- ----------------------------
-- Table structure for jl_borrow
-- ----------------------------
DROP TABLE IF EXISTS `jl_borrow`;
CREATE TABLE `jl_borrow` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '借阅ID',
  `file_id` bigint(20) NOT NULL COMMENT '文件ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  `status` int(11) NOT NULL COMMENT '借阅状态',
  `create_time` datetime NOT NULL COMMENT '申请时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='借阅记录表';

-- ----------------------------
-- Records of jl_borrow
-- ----------------------------
INSERT INTO `jl_borrow` VALUES ('39', '25', '1', '201', '1', '2023-07-29 10:56:08');
INSERT INTO `jl_borrow` VALUES ('40', '25', '105', '201', '1', '2023-08-01 08:10:59');

-- ----------------------------
-- Table structure for jl_file
-- ----------------------------
DROP TABLE IF EXISTS `jl_file`;
CREATE TABLE `jl_file` (
  `file_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '文件ID',
  `file_name` varchar(255) NOT NULL COMMENT '文件名',
  `file_path` varchar(1000) NOT NULL COMMENT '文件路径',
  `file_type` int(11) NOT NULL COMMENT '文件类型',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  `status` int(11) NOT NULL COMMENT '文件状态',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jl_file
-- ----------------------------
INSERT INTO `jl_file` VALUES ('3', '面试指南', 'http://localhost:8080/profile/upload/2023/07/19/面试指北_20230719141553A001.pdf', '0', '1', '201', '0', '2023-07-19 14:15:55');
INSERT INTO `jl_file` VALUES ('5', 'test', 'http://localhost:8080/profile/upload/2023/07/20/111_20230720114718A001.pdf', '0', '100', '201', '0', '2023-07-20 11:47:19');
INSERT INTO `jl_file` VALUES ('10', '文档', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721083010A002.pdf', '0', '1', '201', '0', '2023-07-21 08:30:12');
INSERT INTO `jl_file` VALUES ('14', '11111111', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721110435A011.pdf', '0', '1', '200', '0', '2023-07-21 11:04:36');
INSERT INTO `jl_file` VALUES ('15', '222', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721110636A012.pdf', '0', '1', '200', '0', '2023-07-21 11:06:38');
INSERT INTO `jl_file` VALUES ('16', '111', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721110654A013.pdf', '0', '1', '200', '0', '2023-07-21 11:06:59');
INSERT INTO `jl_file` VALUES ('17', '111', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721110805A014.pdf', '0', '1', '200', '0', '2023-07-21 11:08:06');
INSERT INTO `jl_file` VALUES ('18', '1212312', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721110830A015.pdf', '0', '1', '200', '0', '2023-07-21 11:08:33');
INSERT INTO `jl_file` VALUES ('19', '1', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721110848A016.pdf', '0', '1', '200', '0', '2023-07-21 11:08:50');
INSERT INTO `jl_file` VALUES ('20', '11111', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721113135A001.pdf', '0', '1', '200', '0', '2023-07-21 11:31:37');
INSERT INTO `jl_file` VALUES ('21', '11111', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721153447A001.pdf', '0', '101', '200', '0', '2023-07-21 15:34:48');
INSERT INTO `jl_file` VALUES ('24', 'test', 'http://localhost:8080/profile/upload/2023/07/24/JL_20230724101659A002.pdf', '1', '100', '201', '0', '2023-07-24 10:17:00');
INSERT INTO `jl_file` VALUES ('25', '公共部门文件测试', 'http://localhost:8080/profile/upload/2023/07/24/JL_20230724104741A001.pdf', '1', '100', '201', '1', '2023-07-24 10:47:42');
INSERT INTO `jl_file` VALUES ('28', '信息部普通员工私人文件测试', 'http://localhost:8080/profile/upload/2023/07/28/JL_20230728094213A001.pdf', '0', '105', '200', '0', '2023-07-28 09:42:15');
INSERT INTO `jl_file` VALUES ('31', '信息部管理私人文件测试', 'http://localhost:8080/profile/upload/2023/07/28/JL_20230728095349A004.pdf', '0', '104', '200', '0', '2023-07-28 09:53:50');
INSERT INTO `jl_file` VALUES ('33', 'test', 'http://localhost:8080/profile/upload/2023/07/28/JL_20230728100731A006.pdf', '0', '1', '200', '0', '2023-07-28 10:07:32');
INSERT INTO `jl_file` VALUES ('38', 'test', 'http://localhost:8080/profile/upload/2023/08/02/JL_20230802095549A002.docx', '0', '1', '200', '0', '2023-08-02 09:55:51');
INSERT INTO `jl_file` VALUES ('39', '测试服务区', 'http://121.229.99.128:8081/profile/upload/2023/08/03/JL_20230803115816A001.pdf', '0', '1', '200', '0', '2023-08-03 11:58:19');
INSERT INTO `jl_file` VALUES ('45', '11111', 'http://localhost:8080/profile/upload/2023/08/15/JL_20230815100749A001.pdf', '1', '100', '201', '0', '2023-08-15 10:07:51');
INSERT INTO `jl_file` VALUES ('46', '1234567', 'http://localhost:8080/profile/upload/2023/08/15/JL_20230815100815A002.pdf', '1', '100', '201', '0', '2023-08-15 10:08:16');
INSERT INTO `jl_file` VALUES ('47', '111111111', 'http://localhost:8080/profile/upload/2023/08/15/JL_20230815102242A003.pdf', '2', '1', '200', '0', '2023-08-15 10:22:44');
INSERT INTO `jl_file` VALUES ('48', '122222', 'http://localhost:8080/profile/upload/2023/08/15/JL_20230815102332A004.docx', '2', '1', '200', '0', '2023-08-15 10:23:34');
INSERT INTO `jl_file` VALUES ('49', '133333', 'http://localhost:8080/profile/upload/2023/08/15/JL_20230815102346A005.pdf', '2', '1', '200', '0', '2023-08-15 10:23:48');
INSERT INTO `jl_file` VALUES ('50', '1222222223333', 'http://localhost:8080/profile/upload/2023/08/15/JL_20230815102406A006.docx', '1', '1', '200', '1', '2023-08-15 10:24:07');
INSERT INTO `jl_file` VALUES ('51', '11111111111111', 'http://localhost:8080/profile/upload/2023/08/15/JL_20230815102521A007.pdf', '1', '1', '200', '1', '2023-08-15 10:25:23');
INSERT INTO `jl_file` VALUES ('52', '1111111111111111', 'http://localhost:8080/profile/upload/2023/08/15/JL_20230815102557A008.docx', '1', '105', '200', '1', '2023-08-15 10:25:58');
INSERT INTO `jl_file` VALUES ('53', '123', 'http://localhost:8080/profile/upload/2023/08/15/JL_20230815102900A009.docx', '2', '105', '200', '0', '2023-08-15 10:29:04');
INSERT INTO `jl_file` VALUES ('54', '123', 'http://localhost:8080/profile/upload/2023/08/15/JL_20230815103033A012.pdf', '1', '1', '200', '1', '2023-08-15 10:30:37');
INSERT INTO `jl_file` VALUES ('55', '123', 'http://localhost:8080/profile/upload/2023/08/15/JL_20230815103848A015.docx', '2', '1', '200', '0', '2023-08-15 10:38:49');
INSERT INTO `jl_file` VALUES ('56', '1333444', 'http://localhost:8080/profile/upload/2023/08/15/JL_20230815104052A016.pdf', '1', '1', '200', '1', '2023-08-15 10:40:53');
INSERT INTO `jl_file` VALUES ('57', '123123123', 'http://localhost:8080/profile/upload/2023/08/15/JL_20230815104100A017.pdf', '2', '1', '200', '0', '2023-08-15 10:41:01');
INSERT INTO `jl_file` VALUES ('58', '222222222', 'http://localhost:8080/profile/upload/2023/08/15/JL_20230815104108A018.pdf', '2', '1', '200', '0', '2023-08-15 10:41:09');
INSERT INTO `jl_file` VALUES ('59', '111133333', 'http://localhost:8080/profile/upload/2023/08/15/JL_20230815104538A019.docx', '1', '105', '200', '0', '2023-08-15 10:45:39');
INSERT INTO `jl_file` VALUES ('60', '3333', 'http://localhost:8080/profile/upload/2023/08/15/JL_20230815105457A020.pdf', '1', '105', '200', '0', '2023-08-15 10:54:58');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Blob类型的触发器表';

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日历信息表';

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron类型的触发器表';

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(20) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(20) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='已触发的触发器表';

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务详细信息表';

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存储的悲观锁信息表';

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂停的触发器表';

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(20) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(20) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调度器状态表';

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(20) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(20) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(20) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简单触发器的信息表';

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='同步机制的行锁表';

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(20) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(20) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(20) NOT NULL COMMENT '开始时间',
  `end_time` bigint(20) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(6) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='触发器详细信息表';

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-07-17 15:13:35', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-07-17 15:13:35', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-07-17 15:13:35', '', null, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES ('4', '账号自助-验证码开关', 'sys.account.captchaEnabled', 'false', 'Y', 'admin', '2023-07-17 15:13:35', 'admin', '2023-07-21 11:18:58', '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-07-17 15:13:35', 'admin', '2023-08-15 11:48:28', '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('6', '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2023-07-17 15:13:35', '', null, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(11) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('100', '0', '0', '巨力集团', '0', '', '', '', '0', '0', 'admin', '2023-07-17 15:13:35', 'admin', '2023-07-18 09:01:25');
INSERT INTO `sys_dept` VALUES ('101', '100', '0,100', '总公司', '1', '', '', '', '0', '2', 'admin', '2023-07-17 15:13:35', 'admin', '2023-07-18 09:01:37');
INSERT INTO `sys_dept` VALUES ('102', '100', '0,100', '长沙分公司', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-07-17 15:13:35', '', null);
INSERT INTO `sys_dept` VALUES ('103', '101', '0,100,101', '研发部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-07-17 15:13:35', '', null);
INSERT INTO `sys_dept` VALUES ('104', '101', '0,100,101', '市场部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-07-17 15:13:35', '', null);
INSERT INTO `sys_dept` VALUES ('105', '101', '0,100,101', '测试部门', '3', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-07-17 15:13:35', '', null);
INSERT INTO `sys_dept` VALUES ('106', '101', '0,100,101', '财务部门', '4', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-07-17 15:13:35', '', null);
INSERT INTO `sys_dept` VALUES ('107', '101', '0,100,101', '运维部门', '5', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-07-17 15:13:35', '', null);
INSERT INTO `sys_dept` VALUES ('108', '102', '0,100,102', '市场部门', '1', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-07-17 15:13:35', '', null);
INSERT INTO `sys_dept` VALUES ('109', '102', '0,100,102', '财务部门', '2', '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2023-07-17 15:13:35', '', null);
INSERT INTO `sys_dept` VALUES ('200', '100', '0,100', '信息部', '1', null, null, null, '0', '0', 'admin', '2023-07-18 09:02:07', '', null);
INSERT INTO `sys_dept` VALUES ('201', '100', '0,100', '人力资源部', '1', null, null, null, '0', '0', 'admin', '2023-07-19 15:09:51', '', null);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(11) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES ('1', '1', '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-07-17 15:13:35', '', null, '性别男');
INSERT INTO `sys_dict_data` VALUES ('2', '2', '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '性别女');
INSERT INTO `sys_dict_data` VALUES ('3', '3', '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '性别未知');
INSERT INTO `sys_dict_data` VALUES ('4', '1', '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-07-17 15:13:35', '', null, '显示菜单');
INSERT INTO `sys_dict_data` VALUES ('5', '2', '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES ('6', '1', '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-07-17 15:13:35', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('7', '2', '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('8', '1', '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-07-17 15:13:35', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('9', '2', '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('10', '1', '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-07-17 15:13:35', '', null, '默认分组');
INSERT INTO `sys_dict_data` VALUES ('11', '2', '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '系统分组');
INSERT INTO `sys_dict_data` VALUES ('12', '1', '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-07-17 15:13:35', '', null, '系统默认是');
INSERT INTO `sys_dict_data` VALUES ('13', '2', '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '系统默认否');
INSERT INTO `sys_dict_data` VALUES ('14', '1', '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-07-17 15:13:35', '', null, '通知');
INSERT INTO `sys_dict_data` VALUES ('15', '2', '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '公告');
INSERT INTO `sys_dict_data` VALUES ('16', '1', '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-07-17 15:13:35', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('17', '2', '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '关闭状态');
INSERT INTO `sys_dict_data` VALUES ('18', '99', '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '其他操作');
INSERT INTO `sys_dict_data` VALUES ('19', '1', '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '新增操作');
INSERT INTO `sys_dict_data` VALUES ('20', '2', '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '修改操作');
INSERT INTO `sys_dict_data` VALUES ('21', '3', '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '删除操作');
INSERT INTO `sys_dict_data` VALUES ('22', '4', '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '授权操作');
INSERT INTO `sys_dict_data` VALUES ('23', '5', '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '导出操作');
INSERT INTO `sys_dict_data` VALUES ('24', '6', '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '导入操作');
INSERT INTO `sys_dict_data` VALUES ('25', '7', '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '强退操作');
INSERT INTO `sys_dict_data` VALUES ('26', '8', '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '生成操作');
INSERT INTO `sys_dict_data` VALUES ('27', '9', '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '清空操作');
INSERT INTO `sys_dict_data` VALUES ('28', '1', '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '正常状态');
INSERT INTO `sys_dict_data` VALUES ('29', '2', '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-07-17 15:13:35', '', null, '停用状态');
INSERT INTO `sys_dict_data` VALUES ('100', '0', '私人文件', '0', 'file_type', null, 'default', 'N', '0', 'admin', '2023-07-18 08:57:13', 'admin', '2023-07-18 08:58:33', null);
INSERT INTO `sys_dict_data` VALUES ('101', '1', '部门文件', '1', 'file_type', null, 'default', 'N', '0', 'admin', '2023-07-18 08:57:25', 'admin', '2023-07-18 08:58:38', null);
INSERT INTO `sys_dict_data` VALUES ('102', '2', '公共文件', '2', 'file_type', null, 'default', 'N', '0', 'admin', '2023-07-18 08:57:45', 'admin', '2023-07-18 08:58:44', null);
INSERT INTO `sys_dict_data` VALUES ('103', '0', '未归档', '0', 'file_status', null, 'default', 'N', '0', 'admin', '2023-07-18 08:59:21', '', null, null);
INSERT INTO `sys_dict_data` VALUES ('104', '1', '已归档', '1', 'file_status', null, 'default', 'N', '0', 'admin', '2023-07-18 09:00:09', 'admin', '2023-07-18 09:00:19', null);
INSERT INTO `sys_dict_data` VALUES ('105', '0', '申请中', '0', 'borrow_status', null, 'primary', 'N', '0', 'admin', '2023-07-27 10:55:58', 'admin', '2023-07-27 10:56:14', null);
INSERT INTO `sys_dict_data` VALUES ('106', '1', '申请通过', '1', 'borrow_status', null, 'success', 'N', '0', 'admin', '2023-07-27 10:56:08', 'admin', '2023-07-28 08:45:00', null);
INSERT INTO `sys_dict_data` VALUES ('107', '2', '申请失败', '2', 'borrow_status', null, 'warning', 'N', '0', 'admin', '2023-07-28 08:44:51', '', null, null);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES ('1', '用户性别', 'sys_user_sex', '0', 'admin', '2023-07-17 15:13:35', '', null, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES ('2', '菜单状态', 'sys_show_hide', '0', 'admin', '2023-07-17 15:13:35', '', null, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES ('3', '系统开关', 'sys_normal_disable', '0', 'admin', '2023-07-17 15:13:35', '', null, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES ('4', '任务状态', 'sys_job_status', '0', 'admin', '2023-07-17 15:13:35', '', null, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES ('5', '任务分组', 'sys_job_group', '0', 'admin', '2023-07-17 15:13:35', '', null, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES ('6', '系统是否', 'sys_yes_no', '0', 'admin', '2023-07-17 15:13:35', '', null, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES ('7', '通知类型', 'sys_notice_type', '0', 'admin', '2023-07-17 15:13:35', '', null, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES ('8', '通知状态', 'sys_notice_status', '0', 'admin', '2023-07-17 15:13:35', '', null, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES ('9', '操作类型', 'sys_oper_type', '0', 'admin', '2023-07-17 15:13:35', '', null, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES ('10', '系统状态', 'sys_common_status', '0', 'admin', '2023-07-17 15:13:35', '', null, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES ('100', '文件类型', 'file_type', '0', 'admin', '2023-07-18 08:56:55', 'admin', '2023-07-18 08:58:24', '0为私人，1为部门，2为公共');
INSERT INTO `sys_dict_type` VALUES ('101', '文件状态', 'file_status', '0', 'admin', '2023-07-18 08:59:00', 'admin', '2023-07-19 10:54:00', '0为未归档，1为已归档');
INSERT INTO `sys_dict_type` VALUES ('102', '借阅状态', 'borrow_status', '0', 'admin', '2023-07-27 10:55:38', '', null, '借阅状态，0为申请中，1为申请通过');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES ('1', '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_job` VALUES ('2', '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_job` VALUES ('3', '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-07-17 15:13:35', '', null, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=668 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES ('100', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-17 15:45:37');
INSERT INTO `sys_logininfor` VALUES ('101', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-18 07:59:51');
INSERT INTO `sys_logininfor` VALUES ('102', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-07-18 08:30:52');
INSERT INTO `sys_logininfor` VALUES ('103', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-18 08:30:57');
INSERT INTO `sys_logininfor` VALUES ('104', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-18 09:04:34');
INSERT INTO `sys_logininfor` VALUES ('105', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-18 09:04:44');
INSERT INTO `sys_logininfor` VALUES ('106', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-18 09:05:20');
INSERT INTO `sys_logininfor` VALUES ('107', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-18 09:05:25');
INSERT INTO `sys_logininfor` VALUES ('108', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-07-18 10:57:54');
INSERT INTO `sys_logininfor` VALUES ('109', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-18 10:57:58');
INSERT INTO `sys_logininfor` VALUES ('110', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-18 14:08:50');
INSERT INTO `sys_logininfor` VALUES ('111', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-18 15:15:34');
INSERT INTO `sys_logininfor` VALUES ('112', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-18 15:52:08');
INSERT INTO `sys_logininfor` VALUES ('113', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-19 08:12:08');
INSERT INTO `sys_logininfor` VALUES ('114', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-19 09:22:06');
INSERT INTO `sys_logininfor` VALUES ('115', 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '退出成功', '2023-07-19 09:25:20');
INSERT INTO `sys_logininfor` VALUES ('116', 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2023-07-19 09:25:30');
INSERT INTO `sys_logininfor` VALUES ('117', 'admin', '127.0.0.1', '内网IP', 'Chrome Mobile', 'Android 6.x', '0', '登录成功', '2023-07-19 10:40:50');
INSERT INTO `sys_logininfor` VALUES ('118', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-19 11:58:25');
INSERT INTO `sys_logininfor` VALUES ('119', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-19 14:03:48');
INSERT INTO `sys_logininfor` VALUES ('120', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-19 16:20:37');
INSERT INTO `sys_logininfor` VALUES ('121', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-19 16:20:42');
INSERT INTO `sys_logininfor` VALUES ('122', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-19 16:20:42');
INSERT INTO `sys_logininfor` VALUES ('123', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2023-07-19 16:20:59');
INSERT INTO `sys_logininfor` VALUES ('124', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-19 16:20:59');
INSERT INTO `sys_logininfor` VALUES ('125', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-19 16:21:19');
INSERT INTO `sys_logininfor` VALUES ('126', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-19 16:21:19');
INSERT INTO `sys_logininfor` VALUES ('127', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误3次', '2023-07-19 16:22:44');
INSERT INTO `sys_logininfor` VALUES ('128', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-19 16:22:44');
INSERT INTO `sys_logininfor` VALUES ('129', '胡子龙', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '登录用户：胡子龙 不存在', '2023-07-19 16:22:50');
INSERT INTO `sys_logininfor` VALUES ('130', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-19 16:22:57');
INSERT INTO `sys_logininfor` VALUES ('131', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-19 16:23:32');
INSERT INTO `sys_logininfor` VALUES ('132', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误4次', '2023-07-19 16:23:41');
INSERT INTO `sys_logininfor` VALUES ('133', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-19 16:23:41');
INSERT INTO `sys_logininfor` VALUES ('134', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-07-19 16:24:06');
INSERT INTO `sys_logininfor` VALUES ('135', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-19 16:24:08');
INSERT INTO `sys_logininfor` VALUES ('136', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-19 16:24:27');
INSERT INTO `sys_logininfor` VALUES ('137', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-19 16:24:34');
INSERT INTO `sys_logininfor` VALUES ('138', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-19 16:24:39');
INSERT INTO `sys_logininfor` VALUES ('139', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-19 16:24:46');
INSERT INTO `sys_logininfor` VALUES ('140', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-19 16:25:40');
INSERT INTO `sys_logininfor` VALUES ('141', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-19 16:25:47');
INSERT INTO `sys_logininfor` VALUES ('142', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-19 16:26:55');
INSERT INTO `sys_logininfor` VALUES ('143', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-19 16:26:59');
INSERT INTO `sys_logininfor` VALUES ('144', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-19 17:49:32');
INSERT INTO `sys_logininfor` VALUES ('145', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 09:10:43');
INSERT INTO `sys_logininfor` VALUES ('146', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 09:19:39');
INSERT INTO `sys_logininfor` VALUES ('147', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 09:19:43');
INSERT INTO `sys_logininfor` VALUES ('148', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 09:48:09');
INSERT INTO `sys_logininfor` VALUES ('149', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 09:48:17');
INSERT INTO `sys_logininfor` VALUES ('150', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 10:00:52');
INSERT INTO `sys_logininfor` VALUES ('151', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-20 10:00:58');
INSERT INTO `sys_logininfor` VALUES ('152', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-20 10:00:58');
INSERT INTO `sys_logininfor` VALUES ('153', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2023-07-20 10:01:38');
INSERT INTO `sys_logininfor` VALUES ('154', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-20 10:01:38');
INSERT INTO `sys_logininfor` VALUES ('155', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 10:01:47');
INSERT INTO `sys_logininfor` VALUES ('156', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 10:02:14');
INSERT INTO `sys_logininfor` VALUES ('157', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 10:02:17');
INSERT INTO `sys_logininfor` VALUES ('158', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 10:15:23');
INSERT INTO `sys_logininfor` VALUES ('159', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 10:15:26');
INSERT INTO `sys_logininfor` VALUES ('160', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 10:15:39');
INSERT INTO `sys_logininfor` VALUES ('161', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 10:17:51');
INSERT INTO `sys_logininfor` VALUES ('162', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 10:17:58');
INSERT INTO `sys_logininfor` VALUES ('163', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 10:19:27');
INSERT INTO `sys_logininfor` VALUES ('164', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 10:19:39');
INSERT INTO `sys_logininfor` VALUES ('165', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 10:23:54');
INSERT INTO `sys_logininfor` VALUES ('166', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 10:24:00');
INSERT INTO `sys_logininfor` VALUES ('167', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 10:38:05');
INSERT INTO `sys_logininfor` VALUES ('168', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 10:38:17');
INSERT INTO `sys_logininfor` VALUES ('169', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 10:46:31');
INSERT INTO `sys_logininfor` VALUES ('170', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-20 10:46:40');
INSERT INTO `sys_logininfor` VALUES ('171', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-20 10:46:40');
INSERT INTO `sys_logininfor` VALUES ('172', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 10:46:50');
INSERT INTO `sys_logininfor` VALUES ('173', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 10:58:50');
INSERT INTO `sys_logininfor` VALUES ('174', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 10:58:54');
INSERT INTO `sys_logininfor` VALUES ('175', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 11:18:06');
INSERT INTO `sys_logininfor` VALUES ('176', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-20 11:18:13');
INSERT INTO `sys_logininfor` VALUES ('177', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-20 11:18:13');
INSERT INTO `sys_logininfor` VALUES ('178', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2023-07-20 11:18:20');
INSERT INTO `sys_logininfor` VALUES ('179', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-20 11:18:20');
INSERT INTO `sys_logininfor` VALUES ('180', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 11:18:29');
INSERT INTO `sys_logininfor` VALUES ('181', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 11:42:37');
INSERT INTO `sys_logininfor` VALUES ('182', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 11:42:44');
INSERT INTO `sys_logininfor` VALUES ('183', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 11:43:09');
INSERT INTO `sys_logininfor` VALUES ('184', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 11:43:17');
INSERT INTO `sys_logininfor` VALUES ('185', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 11:43:40');
INSERT INTO `sys_logininfor` VALUES ('186', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-20 11:43:48');
INSERT INTO `sys_logininfor` VALUES ('187', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-20 11:43:48');
INSERT INTO `sys_logininfor` VALUES ('188', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2023-07-20 11:43:55');
INSERT INTO `sys_logininfor` VALUES ('189', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-20 11:43:55');
INSERT INTO `sys_logininfor` VALUES ('190', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 11:44:14');
INSERT INTO `sys_logininfor` VALUES ('191', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 11:44:38');
INSERT INTO `sys_logininfor` VALUES ('192', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 11:44:44');
INSERT INTO `sys_logininfor` VALUES ('193', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 11:45:33');
INSERT INTO `sys_logininfor` VALUES ('194', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 11:45:39');
INSERT INTO `sys_logininfor` VALUES ('195', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 11:46:36');
INSERT INTO `sys_logininfor` VALUES ('196', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 11:46:45');
INSERT INTO `sys_logininfor` VALUES ('197', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 11:48:04');
INSERT INTO `sys_logininfor` VALUES ('198', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 11:48:14');
INSERT INTO `sys_logininfor` VALUES ('199', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 11:50:33');
INSERT INTO `sys_logininfor` VALUES ('200', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 11:50:40');
INSERT INTO `sys_logininfor` VALUES ('201', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 15:58:09');
INSERT INTO `sys_logininfor` VALUES ('202', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-20 15:58:36');
INSERT INTO `sys_logininfor` VALUES ('203', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-20 15:58:44');
INSERT INTO `sys_logininfor` VALUES ('204', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-07-21 08:01:29');
INSERT INTO `sys_logininfor` VALUES ('205', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-21 08:01:33');
INSERT INTO `sys_logininfor` VALUES ('206', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-21 08:43:05');
INSERT INTO `sys_logininfor` VALUES ('207', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-21 08:43:12');
INSERT INTO `sys_logininfor` VALUES ('208', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-21 08:43:34');
INSERT INTO `sys_logininfor` VALUES ('209', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-21 08:43:46');
INSERT INTO `sys_logininfor` VALUES ('210', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-21 08:55:05');
INSERT INTO `sys_logininfor` VALUES ('211', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-21 08:55:08');
INSERT INTO `sys_logininfor` VALUES ('212', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-21 09:06:39');
INSERT INTO `sys_logininfor` VALUES ('213', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-21 09:23:06');
INSERT INTO `sys_logininfor` VALUES ('214', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-21 09:23:13');
INSERT INTO `sys_logininfor` VALUES ('215', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-21 09:23:21');
INSERT INTO `sys_logininfor` VALUES ('216', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-21 09:23:26');
INSERT INTO `sys_logininfor` VALUES ('217', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-21 09:23:26');
INSERT INTO `sys_logininfor` VALUES ('218', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2023-07-21 09:23:28');
INSERT INTO `sys_logininfor` VALUES ('219', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-21 09:23:28');
INSERT INTO `sys_logininfor` VALUES ('220', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误3次', '2023-07-21 09:23:31');
INSERT INTO `sys_logininfor` VALUES ('221', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-21 09:23:31');
INSERT INTO `sys_logininfor` VALUES ('222', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-21 09:23:39');
INSERT INTO `sys_logininfor` VALUES ('223', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-21 09:24:32');
INSERT INTO `sys_logininfor` VALUES ('224', '1763333', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '登录用户：1763333 不存在', '2023-07-21 09:25:04');
INSERT INTO `sys_logininfor` VALUES ('225', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-21 09:25:09');
INSERT INTO `sys_logininfor` VALUES ('226', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-21 09:25:09');
INSERT INTO `sys_logininfor` VALUES ('227', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-21 09:25:14');
INSERT INTO `sys_logininfor` VALUES ('228', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-21 09:26:48');
INSERT INTO `sys_logininfor` VALUES ('229', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-21 09:26:56');
INSERT INTO `sys_logininfor` VALUES ('230', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-21 09:29:30');
INSERT INTO `sys_logininfor` VALUES ('231', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-21 09:29:41');
INSERT INTO `sys_logininfor` VALUES ('232', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-21 09:30:45');
INSERT INTO `sys_logininfor` VALUES ('233', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-21 09:30:55');
INSERT INTO `sys_logininfor` VALUES ('234', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-21 09:39:48');
INSERT INTO `sys_logininfor` VALUES ('235', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '验证码错误', '2023-07-21 09:41:20');
INSERT INTO `sys_logininfor` VALUES ('236', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-21 09:41:23');
INSERT INTO `sys_logininfor` VALUES ('237', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-21 09:41:49');
INSERT INTO `sys_logininfor` VALUES ('238', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-21 09:41:56');
INSERT INTO `sys_logininfor` VALUES ('239', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-21 11:18:29');
INSERT INTO `sys_logininfor` VALUES ('240', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-21 11:18:40');
INSERT INTO `sys_logininfor` VALUES ('241', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-21 14:02:29');
INSERT INTO `sys_logininfor` VALUES ('242', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-21 14:37:03');
INSERT INTO `sys_logininfor` VALUES ('243', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-21 14:37:10');
INSERT INTO `sys_logininfor` VALUES ('244', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-21 14:37:26');
INSERT INTO `sys_logininfor` VALUES ('245', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-21 14:37:30');
INSERT INTO `sys_logininfor` VALUES ('246', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-21 15:24:13');
INSERT INTO `sys_logininfor` VALUES ('247', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-21 15:34:10');
INSERT INTO `sys_logininfor` VALUES ('248', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-21 15:34:21');
INSERT INTO `sys_logininfor` VALUES ('249', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-21 15:34:30');
INSERT INTO `sys_logininfor` VALUES ('250', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-21 15:34:35');
INSERT INTO `sys_logininfor` VALUES ('251', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-21 15:35:02');
INSERT INTO `sys_logininfor` VALUES ('252', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-21 15:35:08');
INSERT INTO `sys_logininfor` VALUES ('253', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-24 08:18:28');
INSERT INTO `sys_logininfor` VALUES ('254', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-24 08:43:42');
INSERT INTO `sys_logininfor` VALUES ('255', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-24 08:44:19');
INSERT INTO `sys_logininfor` VALUES ('256', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-24 08:44:25');
INSERT INTO `sys_logininfor` VALUES ('257', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-24 08:44:34');
INSERT INTO `sys_logininfor` VALUES ('258', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-24 08:44:40');
INSERT INTO `sys_logininfor` VALUES ('259', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-24 08:45:19');
INSERT INTO `sys_logininfor` VALUES ('260', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-24 08:45:24');
INSERT INTO `sys_logininfor` VALUES ('261', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-24 08:45:31');
INSERT INTO `sys_logininfor` VALUES ('262', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-24 08:45:36');
INSERT INTO `sys_logininfor` VALUES ('263', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-24 08:45:36');
INSERT INTO `sys_logininfor` VALUES ('264', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-24 08:45:40');
INSERT INTO `sys_logininfor` VALUES ('265', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-24 08:46:00');
INSERT INTO `sys_logininfor` VALUES ('266', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-24 08:46:08');
INSERT INTO `sys_logininfor` VALUES ('267', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-24 09:17:59');
INSERT INTO `sys_logininfor` VALUES ('268', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-24 09:19:17');
INSERT INTO `sys_logininfor` VALUES ('269', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-24 09:19:23');
INSERT INTO `sys_logininfor` VALUES ('270', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-24 09:19:30');
INSERT INTO `sys_logininfor` VALUES ('271', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-24 09:36:53');
INSERT INTO `sys_logininfor` VALUES ('272', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-24 09:36:55');
INSERT INTO `sys_logininfor` VALUES ('273', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-24 10:08:25');
INSERT INTO `sys_logininfor` VALUES ('274', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-24 10:13:11');
INSERT INTO `sys_logininfor` VALUES ('275', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-24 10:13:17');
INSERT INTO `sys_logininfor` VALUES ('276', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-24 10:13:23');
INSERT INTO `sys_logininfor` VALUES ('277', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-24 10:13:27');
INSERT INTO `sys_logininfor` VALUES ('278', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-24 10:14:14');
INSERT INTO `sys_logininfor` VALUES ('279', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-24 10:14:38');
INSERT INTO `sys_logininfor` VALUES ('280', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-24 10:15:39');
INSERT INTO `sys_logininfor` VALUES ('281', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-24 10:15:43');
INSERT INTO `sys_logininfor` VALUES ('282', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-24 10:15:46');
INSERT INTO `sys_logininfor` VALUES ('283', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-24 10:16:27');
INSERT INTO `sys_logininfor` VALUES ('284', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-24 10:16:43');
INSERT INTO `sys_logininfor` VALUES ('285', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-24 11:28:32');
INSERT INTO `sys_logininfor` VALUES ('286', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-24 11:28:40');
INSERT INTO `sys_logininfor` VALUES ('287', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-24 16:41:59');
INSERT INTO `sys_logininfor` VALUES ('288', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-24 17:25:42');
INSERT INTO `sys_logininfor` VALUES ('289', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 08:02:27');
INSERT INTO `sys_logininfor` VALUES ('290', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-25 08:18:18');
INSERT INTO `sys_logininfor` VALUES ('291', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-25 08:18:23');
INSERT INTO `sys_logininfor` VALUES ('292', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-25 08:18:23');
INSERT INTO `sys_logininfor` VALUES ('293', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2023-07-25 08:18:26');
INSERT INTO `sys_logininfor` VALUES ('294', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-25 08:18:26');
INSERT INTO `sys_logininfor` VALUES ('295', '1763333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '登录用户：1763333114 不存在', '2023-07-25 08:18:31');
INSERT INTO `sys_logininfor` VALUES ('296', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误3次', '2023-07-25 08:18:41');
INSERT INTO `sys_logininfor` VALUES ('297', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-25 08:18:41');
INSERT INTO `sys_logininfor` VALUES ('298', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 08:18:44');
INSERT INTO `sys_logininfor` VALUES ('299', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-25 08:19:09');
INSERT INTO `sys_logininfor` VALUES ('300', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 08:19:18');
INSERT INTO `sys_logininfor` VALUES ('301', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-25 08:19:28');
INSERT INTO `sys_logininfor` VALUES ('302', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 08:19:31');
INSERT INTO `sys_logininfor` VALUES ('303', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-25 08:20:17');
INSERT INTO `sys_logininfor` VALUES ('304', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 08:20:22');
INSERT INTO `sys_logininfor` VALUES ('305', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-25 08:43:55');
INSERT INTO `sys_logininfor` VALUES ('306', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 08:44:59');
INSERT INTO `sys_logininfor` VALUES ('307', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-25 08:52:01');
INSERT INTO `sys_logininfor` VALUES ('308', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 08:52:05');
INSERT INTO `sys_logininfor` VALUES ('309', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-25 08:58:56');
INSERT INTO `sys_logininfor` VALUES ('310', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 08:59:14');
INSERT INTO `sys_logininfor` VALUES ('311', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-25 10:29:18');
INSERT INTO `sys_logininfor` VALUES ('312', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 10:29:24');
INSERT INTO `sys_logininfor` VALUES ('313', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-25 10:29:38');
INSERT INTO `sys_logininfor` VALUES ('314', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 10:29:45');
INSERT INTO `sys_logininfor` VALUES ('315', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-25 10:49:07');
INSERT INTO `sys_logininfor` VALUES ('316', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 10:49:12');
INSERT INTO `sys_logininfor` VALUES ('317', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-25 10:53:15');
INSERT INTO `sys_logininfor` VALUES ('318', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 10:53:20');
INSERT INTO `sys_logininfor` VALUES ('319', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-25 10:54:03');
INSERT INTO `sys_logininfor` VALUES ('320', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 10:54:08');
INSERT INTO `sys_logininfor` VALUES ('321', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-25 10:54:59');
INSERT INTO `sys_logininfor` VALUES ('322', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 10:55:04');
INSERT INTO `sys_logininfor` VALUES ('323', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-25 10:55:13');
INSERT INTO `sys_logininfor` VALUES ('324', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 10:55:17');
INSERT INTO `sys_logininfor` VALUES ('325', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-25 10:56:07');
INSERT INTO `sys_logininfor` VALUES ('326', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 10:56:12');
INSERT INTO `sys_logininfor` VALUES ('327', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-25 10:56:42');
INSERT INTO `sys_logininfor` VALUES ('328', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 10:56:52');
INSERT INTO `sys_logininfor` VALUES ('329', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-25 10:57:01');
INSERT INTO `sys_logininfor` VALUES ('330', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 10:57:07');
INSERT INTO `sys_logininfor` VALUES ('331', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-25 11:31:19');
INSERT INTO `sys_logininfor` VALUES ('332', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-26 08:02:58');
INSERT INTO `sys_logininfor` VALUES ('333', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-26 09:10:11');
INSERT INTO `sys_logininfor` VALUES ('334', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-26 09:24:59');
INSERT INTO `sys_logininfor` VALUES ('335', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-26 09:25:03');
INSERT INTO `sys_logininfor` VALUES ('336', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-26 09:25:23');
INSERT INTO `sys_logininfor` VALUES ('337', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-26 09:25:30');
INSERT INTO `sys_logininfor` VALUES ('338', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-26 09:25:46');
INSERT INTO `sys_logininfor` VALUES ('339', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-26 09:25:49');
INSERT INTO `sys_logininfor` VALUES ('340', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-26 09:26:41');
INSERT INTO `sys_logininfor` VALUES ('341', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-26 09:26:46');
INSERT INTO `sys_logininfor` VALUES ('342', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-26 09:26:57');
INSERT INTO `sys_logininfor` VALUES ('343', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-26 09:27:02');
INSERT INTO `sys_logininfor` VALUES ('344', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-26 09:28:34');
INSERT INTO `sys_logininfor` VALUES ('345', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-26 09:28:39');
INSERT INTO `sys_logininfor` VALUES ('346', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-26 09:30:52');
INSERT INTO `sys_logininfor` VALUES ('347', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-26 09:30:56');
INSERT INTO `sys_logininfor` VALUES ('348', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-26 10:00:54');
INSERT INTO `sys_logininfor` VALUES ('349', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-26 10:56:07');
INSERT INTO `sys_logininfor` VALUES ('350', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-27 08:02:47');
INSERT INTO `sys_logininfor` VALUES ('351', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-27 09:27:27');
INSERT INTO `sys_logininfor` VALUES ('352', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-27 09:27:30');
INSERT INTO `sys_logininfor` VALUES ('353', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-27 09:45:08');
INSERT INTO `sys_logininfor` VALUES ('354', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-27 09:45:10');
INSERT INTO `sys_logininfor` VALUES ('355', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-27 09:54:59');
INSERT INTO `sys_logininfor` VALUES ('356', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-27 09:55:12');
INSERT INTO `sys_logininfor` VALUES ('357', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-27 09:55:29');
INSERT INTO `sys_logininfor` VALUES ('358', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-27 09:55:34');
INSERT INTO `sys_logininfor` VALUES ('359', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-27 09:56:23');
INSERT INTO `sys_logininfor` VALUES ('360', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-27 09:56:30');
INSERT INTO `sys_logininfor` VALUES ('361', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-27 09:56:45');
INSERT INTO `sys_logininfor` VALUES ('362', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-27 09:56:47');
INSERT INTO `sys_logininfor` VALUES ('363', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-27 09:57:50');
INSERT INTO `sys_logininfor` VALUES ('364', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-27 09:57:55');
INSERT INTO `sys_logininfor` VALUES ('365', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-27 09:59:23');
INSERT INTO `sys_logininfor` VALUES ('366', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-27 09:59:31');
INSERT INTO `sys_logininfor` VALUES ('367', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-27 09:59:31');
INSERT INTO `sys_logininfor` VALUES ('368', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-27 09:59:33');
INSERT INTO `sys_logininfor` VALUES ('369', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-27 10:07:32');
INSERT INTO `sys_logininfor` VALUES ('370', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-27 10:07:36');
INSERT INTO `sys_logininfor` VALUES ('371', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-27 11:19:47');
INSERT INTO `sys_logininfor` VALUES ('372', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-27 11:19:53');
INSERT INTO `sys_logininfor` VALUES ('373', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-27 11:20:50');
INSERT INTO `sys_logininfor` VALUES ('374', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-27 11:20:55');
INSERT INTO `sys_logininfor` VALUES ('375', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-27 11:22:52');
INSERT INTO `sys_logininfor` VALUES ('376', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-27 11:23:01');
INSERT INTO `sys_logininfor` VALUES ('377', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-27 11:25:21');
INSERT INTO `sys_logininfor` VALUES ('378', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-27 11:25:27');
INSERT INTO `sys_logininfor` VALUES ('379', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-27 11:57:32');
INSERT INTO `sys_logininfor` VALUES ('380', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 08:05:32');
INSERT INTO `sys_logininfor` VALUES ('381', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 08:18:47');
INSERT INTO `sys_logininfor` VALUES ('382', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 08:18:49');
INSERT INTO `sys_logininfor` VALUES ('383', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 09:02:14');
INSERT INTO `sys_logininfor` VALUES ('384', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 09:02:26');
INSERT INTO `sys_logininfor` VALUES ('385', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 09:21:03');
INSERT INTO `sys_logininfor` VALUES ('386', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 09:21:08');
INSERT INTO `sys_logininfor` VALUES ('387', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 09:21:32');
INSERT INTO `sys_logininfor` VALUES ('388', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-28 09:21:38');
INSERT INTO `sys_logininfor` VALUES ('389', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 09:21:41');
INSERT INTO `sys_logininfor` VALUES ('390', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 09:31:33');
INSERT INTO `sys_logininfor` VALUES ('391', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-28 09:31:39');
INSERT INTO `sys_logininfor` VALUES ('392', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-28 09:31:39');
INSERT INTO `sys_logininfor` VALUES ('393', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2023-07-28 09:31:42');
INSERT INTO `sys_logininfor` VALUES ('394', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-28 09:31:42');
INSERT INTO `sys_logininfor` VALUES ('395', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误3次', '2023-07-28 09:31:45');
INSERT INTO `sys_logininfor` VALUES ('396', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-28 09:31:45');
INSERT INTO `sys_logininfor` VALUES ('397', '信息部普通员工', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '登录用户：信息部普通员工 不存在', '2023-07-28 09:32:15');
INSERT INTO `sys_logininfor` VALUES ('398', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误4次', '2023-07-28 09:32:28');
INSERT INTO `sys_logininfor` VALUES ('399', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-28 09:32:29');
INSERT INTO `sys_logininfor` VALUES ('400', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 09:32:34');
INSERT INTO `sys_logininfor` VALUES ('401', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 09:32:42');
INSERT INTO `sys_logininfor` VALUES ('402', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 09:32:45');
INSERT INTO `sys_logininfor` VALUES ('403', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 09:36:22');
INSERT INTO `sys_logininfor` VALUES ('404', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-28 09:36:36');
INSERT INTO `sys_logininfor` VALUES ('405', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-28 09:36:36');
INSERT INTO `sys_logininfor` VALUES ('406', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 09:36:38');
INSERT INTO `sys_logininfor` VALUES ('407', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 09:37:59');
INSERT INTO `sys_logininfor` VALUES ('408', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 09:38:02');
INSERT INTO `sys_logininfor` VALUES ('409', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 09:41:31');
INSERT INTO `sys_logininfor` VALUES ('410', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 09:41:50');
INSERT INTO `sys_logininfor` VALUES ('411', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 09:43:27');
INSERT INTO `sys_logininfor` VALUES ('412', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 09:43:32');
INSERT INTO `sys_logininfor` VALUES ('413', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 09:46:24');
INSERT INTO `sys_logininfor` VALUES ('414', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 09:46:29');
INSERT INTO `sys_logininfor` VALUES ('415', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 09:53:13');
INSERT INTO `sys_logininfor` VALUES ('416', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-28 09:53:18');
INSERT INTO `sys_logininfor` VALUES ('417', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-28 09:53:18');
INSERT INTO `sys_logininfor` VALUES ('418', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 09:53:21');
INSERT INTO `sys_logininfor` VALUES ('419', 'admin', '192.168.27.109', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2023-07-28 09:56:10');
INSERT INTO `sys_logininfor` VALUES ('420', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 09:56:15');
INSERT INTO `sys_logininfor` VALUES ('421', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 09:56:20');
INSERT INTO `sys_logininfor` VALUES ('422', 'admin', '192.168.27.148', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 10:07:19');
INSERT INTO `sys_logininfor` VALUES ('423', 'admin', '192.168.27.148', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 10:11:17');
INSERT INTO `sys_logininfor` VALUES ('424', 'xxadmin', '192.168.27.148', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-28 10:11:27');
INSERT INTO `sys_logininfor` VALUES ('425', 'xxadmin', '192.168.27.148', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-28 10:11:27');
INSERT INTO `sys_logininfor` VALUES ('426', 'xxadmin', '192.168.27.148', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 10:11:30');
INSERT INTO `sys_logininfor` VALUES ('427', 'xxadmin', '192.168.27.148', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 10:14:48');
INSERT INTO `sys_logininfor` VALUES ('428', 'admin', '192.168.27.148', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 10:14:51');
INSERT INTO `sys_logininfor` VALUES ('429', 'admin', '192.168.27.148', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 10:15:37');
INSERT INTO `sys_logininfor` VALUES ('430', 'xxadmin', '192.168.27.148', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-28 10:15:44');
INSERT INTO `sys_logininfor` VALUES ('431', 'xxadmin', '192.168.27.148', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-28 10:15:44');
INSERT INTO `sys_logininfor` VALUES ('432', 'xxadmin', '192.168.27.148', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 10:15:47');
INSERT INTO `sys_logininfor` VALUES ('433', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 10:19:15');
INSERT INTO `sys_logininfor` VALUES ('434', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 10:19:18');
INSERT INTO `sys_logininfor` VALUES ('435', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 10:20:56');
INSERT INTO `sys_logininfor` VALUES ('436', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 10:21:04');
INSERT INTO `sys_logininfor` VALUES ('437', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 10:22:58');
INSERT INTO `sys_logininfor` VALUES ('438', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 10:23:05');
INSERT INTO `sys_logininfor` VALUES ('439', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 10:36:42');
INSERT INTO `sys_logininfor` VALUES ('440', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 10:36:49');
INSERT INTO `sys_logininfor` VALUES ('441', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 10:36:56');
INSERT INTO `sys_logininfor` VALUES ('442', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 10:37:38');
INSERT INTO `sys_logininfor` VALUES ('443', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 10:37:44');
INSERT INTO `sys_logininfor` VALUES ('444', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 10:39:53');
INSERT INTO `sys_logininfor` VALUES ('445', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-28 10:39:59');
INSERT INTO `sys_logininfor` VALUES ('446', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-28 10:39:59');
INSERT INTO `sys_logininfor` VALUES ('447', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 10:40:01');
INSERT INTO `sys_logininfor` VALUES ('448', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 10:40:18');
INSERT INTO `sys_logininfor` VALUES ('449', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 10:40:25');
INSERT INTO `sys_logininfor` VALUES ('450', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 10:42:32');
INSERT INTO `sys_logininfor` VALUES ('451', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-28 10:43:39');
INSERT INTO `sys_logininfor` VALUES ('452', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-28 10:43:39');
INSERT INTO `sys_logininfor` VALUES ('453', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 10:43:42');
INSERT INTO `sys_logininfor` VALUES ('454', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 10:44:51');
INSERT INTO `sys_logininfor` VALUES ('455', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 10:44:56');
INSERT INTO `sys_logininfor` VALUES ('456', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 10:48:37');
INSERT INTO `sys_logininfor` VALUES ('457', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 10:52:10');
INSERT INTO `sys_logininfor` VALUES ('458', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-28 10:52:15');
INSERT INTO `sys_logininfor` VALUES ('459', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-28 10:52:15');
INSERT INTO `sys_logininfor` VALUES ('460', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 10:52:18');
INSERT INTO `sys_logininfor` VALUES ('461', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 10:53:10');
INSERT INTO `sys_logininfor` VALUES ('462', 'rzadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-28 10:53:39');
INSERT INTO `sys_logininfor` VALUES ('463', 'rzadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-28 10:53:39');
INSERT INTO `sys_logininfor` VALUES ('464', 'rzadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 10:53:41');
INSERT INTO `sys_logininfor` VALUES ('465', 'rzadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 11:01:22');
INSERT INTO `sys_logininfor` VALUES ('466', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-28 11:01:26');
INSERT INTO `sys_logininfor` VALUES ('467', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 11:01:28');
INSERT INTO `sys_logininfor` VALUES ('468', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 11:25:05');
INSERT INTO `sys_logininfor` VALUES ('469', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 11:25:13');
INSERT INTO `sys_logininfor` VALUES ('470', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-28 11:30:28');
INSERT INTO `sys_logininfor` VALUES ('471', 'rzadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-28 11:30:35');
INSERT INTO `sys_logininfor` VALUES ('472', 'rzadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-28 11:30:35');
INSERT INTO `sys_logininfor` VALUES ('473', 'rzadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-28 11:30:37');
INSERT INTO `sys_logininfor` VALUES ('474', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-29 08:08:59');
INSERT INTO `sys_logininfor` VALUES ('475', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-29 08:22:54');
INSERT INTO `sys_logininfor` VALUES ('476', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-29 08:23:03');
INSERT INTO `sys_logininfor` VALUES ('477', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-29 08:25:39');
INSERT INTO `sys_logininfor` VALUES ('478', 'rzcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '登录用户：rzcommon 不存在', '2023-07-29 08:25:48');
INSERT INTO `sys_logininfor` VALUES ('479', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-29 08:25:58');
INSERT INTO `sys_logininfor` VALUES ('480', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-29 08:56:25');
INSERT INTO `sys_logininfor` VALUES ('481', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-29 10:08:32');
INSERT INTO `sys_logininfor` VALUES ('482', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-29 10:08:39');
INSERT INTO `sys_logininfor` VALUES ('483', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-29 10:48:57');
INSERT INTO `sys_logininfor` VALUES ('484', 'rzadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-29 10:49:05');
INSERT INTO `sys_logininfor` VALUES ('485', 'rzadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-29 10:53:30');
INSERT INTO `sys_logininfor` VALUES ('486', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-29 10:53:35');
INSERT INTO `sys_logininfor` VALUES ('487', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-29 11:03:43');
INSERT INTO `sys_logininfor` VALUES ('488', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-29 11:04:34');
INSERT INTO `sys_logininfor` VALUES ('489', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-29 11:04:34');
INSERT INTO `sys_logininfor` VALUES ('490', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-29 11:04:37');
INSERT INTO `sys_logininfor` VALUES ('491', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-29 11:05:07');
INSERT INTO `sys_logininfor` VALUES ('492', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-29 11:05:12');
INSERT INTO `sys_logininfor` VALUES ('493', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-29 11:06:32');
INSERT INTO `sys_logininfor` VALUES ('494', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-29 11:06:44');
INSERT INTO `sys_logininfor` VALUES ('495', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-29 11:06:55');
INSERT INTO `sys_logininfor` VALUES ('496', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-29 11:07:03');
INSERT INTO `sys_logininfor` VALUES ('497', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-29 11:07:03');
INSERT INTO `sys_logininfor` VALUES ('498', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-29 11:07:06');
INSERT INTO `sys_logininfor` VALUES ('499', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-29 11:09:48');
INSERT INTO `sys_logininfor` VALUES ('500', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-29 11:09:54');
INSERT INTO `sys_logininfor` VALUES ('501', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-29 11:09:54');
INSERT INTO `sys_logininfor` VALUES ('502', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-29 11:09:57');
INSERT INTO `sys_logininfor` VALUES ('503', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-29 11:12:12');
INSERT INTO `sys_logininfor` VALUES ('504', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-29 11:12:12');
INSERT INTO `sys_logininfor` VALUES ('505', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-29 11:12:15');
INSERT INTO `sys_logininfor` VALUES ('506', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-29 11:15:38');
INSERT INTO `sys_logininfor` VALUES ('507', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-29 11:15:43');
INSERT INTO `sys_logininfor` VALUES ('508', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-29 11:17:04');
INSERT INTO `sys_logininfor` VALUES ('509', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-29 11:17:10');
INSERT INTO `sys_logininfor` VALUES ('510', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-29 11:30:40');
INSERT INTO `sys_logininfor` VALUES ('511', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-29 11:31:00');
INSERT INTO `sys_logininfor` VALUES ('512', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-29 11:31:48');
INSERT INTO `sys_logininfor` VALUES ('513', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-29 11:31:54');
INSERT INTO `sys_logininfor` VALUES ('514', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-29 11:31:54');
INSERT INTO `sys_logininfor` VALUES ('515', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-29 11:31:57');
INSERT INTO `sys_logininfor` VALUES ('516', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-29 11:34:35');
INSERT INTO `sys_logininfor` VALUES ('517', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-29 11:34:40');
INSERT INTO `sys_logininfor` VALUES ('518', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-29 11:36:30');
INSERT INTO `sys_logininfor` VALUES ('519', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-07-29 11:36:47');
INSERT INTO `sys_logininfor` VALUES ('520', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-07-29 11:36:53');
INSERT INTO `sys_logininfor` VALUES ('521', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-07-29 11:36:53');
INSERT INTO `sys_logininfor` VALUES ('522', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-07-29 11:36:56');
INSERT INTO `sys_logininfor` VALUES ('523', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-01 08:02:15');
INSERT INTO `sys_logininfor` VALUES ('524', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-01 08:08:30');
INSERT INTO `sys_logininfor` VALUES ('525', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-01 08:08:35');
INSERT INTO `sys_logininfor` VALUES ('526', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-01 08:11:08');
INSERT INTO `sys_logininfor` VALUES ('527', 'rzadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-08-01 08:11:12');
INSERT INTO `sys_logininfor` VALUES ('528', 'rzadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-08-01 08:11:12');
INSERT INTO `sys_logininfor` VALUES ('529', 'rzadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-01 08:11:14');
INSERT INTO `sys_logininfor` VALUES ('530', 'rzadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-01 08:12:10');
INSERT INTO `sys_logininfor` VALUES ('531', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-08-01 08:12:16');
INSERT INTO `sys_logininfor` VALUES ('532', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-08-01 08:12:16');
INSERT INTO `sys_logininfor` VALUES ('533', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2023-08-01 08:12:19');
INSERT INTO `sys_logininfor` VALUES ('534', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-08-01 08:12:19');
INSERT INTO `sys_logininfor` VALUES ('535', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-01 08:12:24');
INSERT INTO `sys_logininfor` VALUES ('536', 'admin', '192.168.27.148', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-01 08:23:51');
INSERT INTO `sys_logininfor` VALUES ('537', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-02 09:28:31');
INSERT INTO `sys_logininfor` VALUES ('538', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-02 11:06:52');
INSERT INTO `sys_logininfor` VALUES ('539', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-03 10:52:14');
INSERT INTO `sys_logininfor` VALUES ('540', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-03 11:11:37');
INSERT INTO `sys_logininfor` VALUES ('541', 'admin', '219.148.143.24', 'XX XX', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-03 11:57:47');
INSERT INTO `sys_logininfor` VALUES ('542', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-05 08:55:07');
INSERT INTO `sys_logininfor` VALUES ('543', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-05 11:28:08');
INSERT INTO `sys_logininfor` VALUES ('544', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 08:12:05');
INSERT INTO `sys_logininfor` VALUES ('545', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 08:19:13');
INSERT INTO `sys_logininfor` VALUES ('546', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-08-15 08:19:51');
INSERT INTO `sys_logininfor` VALUES ('547', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-08-15 08:19:51');
INSERT INTO `sys_logininfor` VALUES ('548', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2023-08-15 08:19:53');
INSERT INTO `sys_logininfor` VALUES ('549', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-08-15 08:19:53');
INSERT INTO `sys_logininfor` VALUES ('550', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 08:19:57');
INSERT INTO `sys_logininfor` VALUES ('551', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 08:20:39');
INSERT INTO `sys_logininfor` VALUES ('552', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-08-15 08:20:44');
INSERT INTO `sys_logininfor` VALUES ('553', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-08-15 08:20:44');
INSERT INTO `sys_logininfor` VALUES ('554', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2023-08-15 08:20:47');
INSERT INTO `sys_logininfor` VALUES ('555', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-08-15 08:20:47');
INSERT INTO `sys_logininfor` VALUES ('556', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误3次', '2023-08-15 08:20:53');
INSERT INTO `sys_logininfor` VALUES ('557', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-08-15 08:20:53');
INSERT INTO `sys_logininfor` VALUES ('558', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 08:20:55');
INSERT INTO `sys_logininfor` VALUES ('559', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 08:32:26');
INSERT INTO `sys_logininfor` VALUES ('560', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-08-15 08:32:33');
INSERT INTO `sys_logininfor` VALUES ('561', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-08-15 08:32:33');
INSERT INTO `sys_logininfor` VALUES ('562', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误2次', '2023-08-15 08:32:35');
INSERT INTO `sys_logininfor` VALUES ('563', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-08-15 08:32:35');
INSERT INTO `sys_logininfor` VALUES ('564', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 08:32:37');
INSERT INTO `sys_logininfor` VALUES ('565', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 08:37:41');
INSERT INTO `sys_logininfor` VALUES ('566', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-08-15 08:37:45');
INSERT INTO `sys_logininfor` VALUES ('567', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-08-15 08:37:45');
INSERT INTO `sys_logininfor` VALUES ('568', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 08:37:47');
INSERT INTO `sys_logininfor` VALUES ('569', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 08:42:57');
INSERT INTO `sys_logininfor` VALUES ('570', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 08:43:03');
INSERT INTO `sys_logininfor` VALUES ('571', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 08:43:48');
INSERT INTO `sys_logininfor` VALUES ('572', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 08:43:53');
INSERT INTO `sys_logininfor` VALUES ('573', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 08:44:33');
INSERT INTO `sys_logininfor` VALUES ('574', 'xxcommmon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '登录用户：xxcommmon 不存在', '2023-08-15 08:44:38');
INSERT INTO `sys_logininfor` VALUES ('575', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 08:44:42');
INSERT INTO `sys_logininfor` VALUES ('576', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 08:46:15');
INSERT INTO `sys_logininfor` VALUES ('577', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-08-15 08:46:22');
INSERT INTO `sys_logininfor` VALUES ('578', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-08-15 08:46:22');
INSERT INTO `sys_logininfor` VALUES ('579', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 08:46:24');
INSERT INTO `sys_logininfor` VALUES ('580', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 08:48:38');
INSERT INTO `sys_logininfor` VALUES ('581', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-08-15 08:48:45');
INSERT INTO `sys_logininfor` VALUES ('582', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-08-15 08:48:45');
INSERT INTO `sys_logininfor` VALUES ('583', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 08:48:47');
INSERT INTO `sys_logininfor` VALUES ('584', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 08:49:01');
INSERT INTO `sys_logininfor` VALUES ('585', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 08:49:17');
INSERT INTO `sys_logininfor` VALUES ('586', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 08:50:34');
INSERT INTO `sys_logininfor` VALUES ('587', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 08:50:39');
INSERT INTO `sys_logininfor` VALUES ('588', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 08:51:02');
INSERT INTO `sys_logininfor` VALUES ('589', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 08:51:06');
INSERT INTO `sys_logininfor` VALUES ('590', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 08:57:31');
INSERT INTO `sys_logininfor` VALUES ('591', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 08:59:21');
INSERT INTO `sys_logininfor` VALUES ('592', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 08:59:26');
INSERT INTO `sys_logininfor` VALUES ('593', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 09:15:39');
INSERT INTO `sys_logininfor` VALUES ('594', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 09:34:08');
INSERT INTO `sys_logininfor` VALUES ('595', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 09:34:10');
INSERT INTO `sys_logininfor` VALUES ('596', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 09:34:18');
INSERT INTO `sys_logininfor` VALUES ('597', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 09:34:22');
INSERT INTO `sys_logininfor` VALUES ('598', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 09:36:17');
INSERT INTO `sys_logininfor` VALUES ('599', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 09:36:22');
INSERT INTO `sys_logininfor` VALUES ('600', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 09:36:34');
INSERT INTO `sys_logininfor` VALUES ('601', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 09:36:39');
INSERT INTO `sys_logininfor` VALUES ('602', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 09:38:31');
INSERT INTO `sys_logininfor` VALUES ('603', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 09:38:43');
INSERT INTO `sys_logininfor` VALUES ('604', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 09:38:56');
INSERT INTO `sys_logininfor` VALUES ('605', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 09:39:00');
INSERT INTO `sys_logininfor` VALUES ('606', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 09:43:35');
INSERT INTO `sys_logininfor` VALUES ('607', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 09:43:41');
INSERT INTO `sys_logininfor` VALUES ('608', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 09:47:15');
INSERT INTO `sys_logininfor` VALUES ('609', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 09:47:20');
INSERT INTO `sys_logininfor` VALUES ('610', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 09:55:38');
INSERT INTO `sys_logininfor` VALUES ('611', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 09:55:50');
INSERT INTO `sys_logininfor` VALUES ('612', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 09:55:57');
INSERT INTO `sys_logininfor` VALUES ('613', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 10:01:57');
INSERT INTO `sys_logininfor` VALUES ('614', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 10:02:02');
INSERT INTO `sys_logininfor` VALUES ('615', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 10:03:54');
INSERT INTO `sys_logininfor` VALUES ('616', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 10:03:58');
INSERT INTO `sys_logininfor` VALUES ('617', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 10:05:04');
INSERT INTO `sys_logininfor` VALUES ('618', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 10:05:09');
INSERT INTO `sys_logininfor` VALUES ('619', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 10:06:50');
INSERT INTO `sys_logininfor` VALUES ('620', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 10:06:55');
INSERT INTO `sys_logininfor` VALUES ('621', '17633333114', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 10:08:29');
INSERT INTO `sys_logininfor` VALUES ('622', 'deptadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '登录用户：deptadmin 不存在', '2023-08-15 10:08:54');
INSERT INTO `sys_logininfor` VALUES ('623', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '登录用户：dept 不存在', '2023-08-15 10:09:01');
INSERT INTO `sys_logininfor` VALUES ('624', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '登录用户：dept 不存在', '2023-08-15 10:09:09');
INSERT INTO `sys_logininfor` VALUES ('625', 'dept', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '登录用户：dept 不存在', '2023-08-15 10:10:25');
INSERT INTO `sys_logininfor` VALUES ('626', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 10:10:52');
INSERT INTO `sys_logininfor` VALUES ('627', 'xxadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 10:11:14');
INSERT INTO `sys_logininfor` VALUES ('628', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-08-15 10:11:21');
INSERT INTO `sys_logininfor` VALUES ('629', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-08-15 10:11:21');
INSERT INTO `sys_logininfor` VALUES ('630', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 10:11:24');
INSERT INTO `sys_logininfor` VALUES ('631', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 10:15:39');
INSERT INTO `sys_logininfor` VALUES ('632', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 10:15:43');
INSERT INTO `sys_logininfor` VALUES ('633', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 10:16:28');
INSERT INTO `sys_logininfor` VALUES ('634', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-08-15 10:16:32');
INSERT INTO `sys_logininfor` VALUES ('635', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-08-15 10:16:32');
INSERT INTO `sys_logininfor` VALUES ('636', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 10:16:35');
INSERT INTO `sys_logininfor` VALUES ('637', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 10:20:46');
INSERT INTO `sys_logininfor` VALUES ('638', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 10:21:15');
INSERT INTO `sys_logininfor` VALUES ('639', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 10:24:55');
INSERT INTO `sys_logininfor` VALUES ('640', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-08-15 10:24:59');
INSERT INTO `sys_logininfor` VALUES ('641', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-08-15 10:24:59');
INSERT INTO `sys_logininfor` VALUES ('642', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 10:25:02');
INSERT INTO `sys_logininfor` VALUES ('643', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 10:29:29');
INSERT INTO `sys_logininfor` VALUES ('644', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 10:29:33');
INSERT INTO `sys_logininfor` VALUES ('645', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 10:40:55');
INSERT INTO `sys_logininfor` VALUES ('646', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 10:41:01');
INSERT INTO `sys_logininfor` VALUES ('647', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 10:54:58');
INSERT INTO `sys_logininfor` VALUES ('648', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 10:55:02');
INSERT INTO `sys_logininfor` VALUES ('649', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 11:00:40');
INSERT INTO `sys_logininfor` VALUES ('650', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 11:00:48');
INSERT INTO `sys_logininfor` VALUES ('651', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 11:09:53');
INSERT INTO `sys_logininfor` VALUES ('652', 'xxcommon', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 11:10:06');
INSERT INTO `sys_logininfor` VALUES ('653', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 11:10:07');
INSERT INTO `sys_logininfor` VALUES ('654', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 11:32:35');
INSERT INTO `sys_logininfor` VALUES ('655', 'rzadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '密码输入错误1次', '2023-08-15 11:32:42');
INSERT INTO `sys_logininfor` VALUES ('656', 'rzadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '1', '用户不存在/密码错误', '2023-08-15 11:32:42');
INSERT INTO `sys_logininfor` VALUES ('657', 'rzadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 11:32:44');
INSERT INTO `sys_logininfor` VALUES ('658', 'rzadmin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 11:33:23');
INSERT INTO `sys_logininfor` VALUES ('659', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 11:33:28');
INSERT INTO `sys_logininfor` VALUES ('660', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 11:42:40');
INSERT INTO `sys_logininfor` VALUES ('661', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 11:42:43');
INSERT INTO `sys_logininfor` VALUES ('662', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 11:47:57');
INSERT INTO `sys_logininfor` VALUES ('663', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 11:48:14');
INSERT INTO `sys_logininfor` VALUES ('664', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 14:10:31');
INSERT INTO `sys_logininfor` VALUES ('665', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '退出成功', '2023-08-15 14:46:28');
INSERT INTO `sys_logininfor` VALUES ('666', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 14:52:00');
INSERT INTO `sys_logininfor` VALUES ('667', 'admin', '127.0.0.1', '内网IP', 'Chrome 11', 'Windows 10', '0', '登录成功', '2023-08-15 14:52:18');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(11) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(11) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(11) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2035 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', 'system', null, '', '1', '0', 'M', '0', '0', '', 'system', 'admin', '2023-07-17 15:13:35', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', 'monitor', null, '', '1', '0', 'M', '0', '0', '', 'monitor', 'admin', '2023-07-17 15:13:35', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', 'tool', null, '', '1', '0', 'M', '0', '0', '', 'tool', 'admin', '2023-07-17 15:13:35', '', null, '系统工具目录');
INSERT INTO `sys_menu` VALUES ('4', '巨力文件', '0', '4', 'ruoyi-jl', null, null, '1', '0', 'M', '0', '0', '', 'international', 'admin', '2023-07-17 15:13:35', 'admin', '2023-07-28 11:04:01', '');
INSERT INTO `sys_menu` VALUES ('100', '用户管理', '1', '1', 'user', 'system/user/index', '', '1', '0', 'C', '0', '0', 'system:user:list', 'user', 'admin', '2023-07-17 15:13:35', '', null, '用户管理菜单');
INSERT INTO `sys_menu` VALUES ('101', '角色管理', '1', '2', 'role', 'system/role/index', '', '1', '0', 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2023-07-17 15:13:35', '', null, '角色管理菜单');
INSERT INTO `sys_menu` VALUES ('102', '菜单管理', '1', '3', 'menu', 'system/menu/index', '', '1', '0', 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2023-07-17 15:13:35', '', null, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES ('103', '部门管理', '1', '4', 'dept', 'system/dept/index', '', '1', '0', 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2023-07-17 15:13:35', '', null, '部门管理菜单');
INSERT INTO `sys_menu` VALUES ('104', '岗位管理', '1', '5', 'post', 'system/post/index', '', '1', '0', 'C', '0', '0', 'system:post:list', 'post', 'admin', '2023-07-17 15:13:35', '', null, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES ('105', '字典管理', '1', '6', 'dict', 'system/dict/index', '', '1', '0', 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2023-07-17 15:13:35', '', null, '字典管理菜单');
INSERT INTO `sys_menu` VALUES ('106', '参数设置', '1', '7', 'config', 'system/config/index', '', '1', '0', 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2023-07-17 15:13:35', '', null, '参数设置菜单');
INSERT INTO `sys_menu` VALUES ('107', '通知公告', '1', '8', 'notice', 'system/notice/index', '', '1', '0', 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2023-07-17 15:13:35', '', null, '通知公告菜单');
INSERT INTO `sys_menu` VALUES ('108', '日志管理', '1', '9', 'log', '', '', '1', '0', 'M', '0', '0', '', 'log', 'admin', '2023-07-17 15:13:35', '', null, '日志管理菜单');
INSERT INTO `sys_menu` VALUES ('109', '在线用户', '2', '1', 'online', 'monitor/online/index', '', '1', '0', 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2023-07-17 15:13:35', '', null, '在线用户菜单');
INSERT INTO `sys_menu` VALUES ('110', '定时任务', '2', '2', 'job', 'monitor/job/index', '', '1', '0', 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2023-07-17 15:13:35', '', null, '定时任务菜单');
INSERT INTO `sys_menu` VALUES ('111', '数据监控', '2', '3', 'druid', 'monitor/druid/index', '', '1', '0', 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2023-07-17 15:13:35', '', null, '数据监控菜单');
INSERT INTO `sys_menu` VALUES ('112', '服务监控', '2', '4', 'server', 'monitor/server/index', '', '1', '0', 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2023-07-17 15:13:35', '', null, '服务监控菜单');
INSERT INTO `sys_menu` VALUES ('113', '缓存监控', '2', '5', 'cache', 'monitor/cache/index', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2023-07-17 15:13:35', '', null, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES ('114', '缓存列表', '2', '6', 'cacheList', 'monitor/cache/list', '', '1', '0', 'C', '0', '0', 'monitor:cache:list', 'redis-list', 'admin', '2023-07-17 15:13:35', '', null, '缓存列表菜单');
INSERT INTO `sys_menu` VALUES ('115', '表单构建', '3', '1', 'build', 'tool/build/index', '', '1', '0', 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2023-07-17 15:13:35', '', null, '表单构建菜单');
INSERT INTO `sys_menu` VALUES ('116', '代码生成', '3', '2', 'gen', 'tool/gen/index', '', '1', '0', 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2023-07-17 15:13:35', '', null, '代码生成菜单');
INSERT INTO `sys_menu` VALUES ('117', '系统接口', '3', '3', 'swagger', 'tool/swagger/index', '', '1', '0', 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2023-07-17 15:13:35', '', null, '系统接口菜单');
INSERT INTO `sys_menu` VALUES ('500', '操作日志', '108', '1', 'operlog', 'monitor/operlog/index', '', '1', '0', 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2023-07-17 15:13:35', '', null, '操作日志菜单');
INSERT INTO `sys_menu` VALUES ('501', '登录日志', '108', '2', 'logininfor', 'monitor/logininfor/index', '', '1', '0', 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2023-07-17 15:13:35', '', null, '登录日志菜单');
INSERT INTO `sys_menu` VALUES ('1000', '用户查询', '100', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:user:query', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1001', '用户新增', '100', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:user:add', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1002', '用户修改', '100', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:user:edit', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1003', '用户删除', '100', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:user:remove', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1004', '用户导出', '100', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:user:export', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1005', '用户导入', '100', '6', '', '', '', '1', '0', 'F', '0', '0', 'system:user:import', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1006', '重置密码', '100', '7', '', '', '', '1', '0', 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1007', '角色查询', '101', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:role:query', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1008', '角色新增', '101', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:role:add', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1009', '角色修改', '101', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:role:edit', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1010', '角色删除', '101', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:role:remove', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1011', '角色导出', '101', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:role:export', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1012', '菜单查询', '102', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:query', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1013', '菜单新增', '102', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:add', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1014', '菜单修改', '102', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1015', '菜单删除', '102', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1016', '部门查询', '103', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:query', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1017', '部门新增', '103', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:add', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1018', '部门修改', '103', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1019', '部门删除', '103', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1020', '岗位查询', '104', '1', '', '', '', '1', '0', 'F', '0', '0', 'system:post:query', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1021', '岗位新增', '104', '2', '', '', '', '1', '0', 'F', '0', '0', 'system:post:add', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1022', '岗位修改', '104', '3', '', '', '', '1', '0', 'F', '0', '0', 'system:post:edit', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1023', '岗位删除', '104', '4', '', '', '', '1', '0', 'F', '0', '0', 'system:post:remove', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1024', '岗位导出', '104', '5', '', '', '', '1', '0', 'F', '0', '0', 'system:post:export', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1025', '字典查询', '105', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:query', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1026', '字典新增', '105', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:add', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1027', '字典修改', '105', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1028', '字典删除', '105', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1029', '字典导出', '105', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:dict:export', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1030', '参数查询', '106', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:query', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1031', '参数新增', '106', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:add', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1032', '参数修改', '106', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:edit', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1033', '参数删除', '106', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:remove', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1034', '参数导出', '106', '5', '#', '', '', '1', '0', 'F', '0', '0', 'system:config:export', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1035', '公告查询', '107', '1', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:query', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1036', '公告新增', '107', '2', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:add', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1037', '公告修改', '107', '3', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1038', '公告删除', '107', '4', '#', '', '', '1', '0', 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1039', '操作查询', '500', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1040', '操作删除', '500', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1041', '日志导出', '500', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1042', '登录查询', '501', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1043', '登录删除', '501', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1044', '日志导出', '501', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1045', '账户解锁', '501', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:logininfor:unlock', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1046', '在线查询', '109', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1047', '批量强退', '109', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1048', '单条强退', '109', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1049', '任务查询', '110', '1', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1050', '任务新增', '110', '2', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1051', '任务修改', '110', '3', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1052', '任务删除', '110', '4', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1053', '状态修改', '110', '5', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1054', '任务导出', '110', '6', '#', '', '', '1', '0', 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1055', '生成查询', '116', '1', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1056', '生成修改', '116', '2', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1057', '生成删除', '116', '3', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1058', '导入代码', '116', '4', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1059', '预览代码', '116', '5', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('1060', '生成代码', '116', '6', '#', '', '', '1', '0', 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_menu` VALUES ('2006', '文件管理', '4', '9', 'file', 'ruoyi-jl/file/index', null, '1', '0', 'C', '1', '0', 'ruoyi-jl:file:list', 'clipboard', 'admin', '2023-07-17 16:21:13', 'admin', '2023-07-27 11:31:44', '文件管理菜单');
INSERT INTO `sys_menu` VALUES ('2007', '文件管理查询', '2006', '1', '#', '', null, '1', '0', 'F', '0', '0', 'ruoyi-jl:file:query', '#', 'admin', '2023-07-17 16:21:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('2008', '文件管理新增', '2006', '2', '#', '', null, '1', '0', 'F', '0', '0', 'ruoyi-jl:file:add', '#', 'admin', '2023-07-17 16:21:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('2009', '文件管理修改', '2006', '3', '#', '', null, '1', '0', 'F', '0', '0', 'ruoyi-jl:file:edit', '#', 'admin', '2023-07-17 16:21:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('2010', '文件管理删除', '2006', '4', '#', '', null, '1', '0', 'F', '0', '0', 'ruoyi-jl:file:remove', '#', 'admin', '2023-07-17 16:21:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('2011', '文件管理导出', '2006', '5', '#', '', null, '1', '0', 'F', '0', '0', 'ruoyi-jl:file:export', '#', 'admin', '2023-07-17 16:21:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('2013', '私人文件', '4', '0', 'private', 'ruoyi-jl/file/private', null, '1', '0', 'C', '0', '0', 'ruoyi-jl:file:privatelist', 'user', 'admin', '2023-07-21 08:56:33', 'admin', '2023-07-28 09:35:06', '');
INSERT INTO `sys_menu` VALUES ('2014', '部门文件', '4', '1', 'dept', 'ruoyi-jl/file/dept', null, '1', '0', 'C', '0', '0', 'ruoyi-jl:file:deptlist', 'tree', 'admin', '2023-07-24 08:21:22', 'admin', '2023-07-28 09:35:11', '');
INSERT INTO `sys_menu` VALUES ('2016', '公共文件', '4', '2', 'public', 'ruoyi-jl/file/public', null, '1', '0', 'C', '0', '0', 'ruoyi-jl:file:publiclist', 'list', 'admin', '2023-07-24 09:40:14', 'admin', '2023-07-24 09:55:24', '');
INSERT INTO `sys_menu` VALUES ('2017', '公开/归档操作', '2014', '1', '', null, null, '1', '0', 'F', '0', '0', 'ruoyi-jl:file:put', '#', 'admin', '2023-07-25 10:52:45', 'admin', '2023-08-15 10:04:37', '');
INSERT INTO `sys_menu` VALUES ('2018', '归档文件', '4', '3', 'borrowlist', 'ruoyi-jl/borrow/borrowlist', null, '1', '0', 'C', '0', '0', 'ruoyi-jl:file:borrowlist', 'education', 'admin', '2023-07-25 11:34:13', 'admin', '2023-07-28 11:02:02', '');
INSERT INTO `sys_menu` VALUES ('2019', '借阅记录', '4', '4', 'borrowrecords', 'ruoyi-jl/borrow/borrowrecords', null, '1', '0', 'C', '0', '0', 'ruoyi-jl:borrow:list', 'row', 'admin', '2023-07-26 10:36:38', 'admin', '2023-07-28 10:41:22', '借阅记录菜单');
INSERT INTO `sys_menu` VALUES ('2026', '借阅审批', '4', '5', 'examinelist', 'ruoyi-jl/borrow/borrowexamine', null, '1', '0', 'C', '0', '0', 'ruoyi-jl:borrow:examinelist', 'example', 'admin', '2023-07-27 11:32:27', 'admin', '2023-07-28 10:41:56', '');
INSERT INTO `sys_menu` VALUES ('2027', '同意借阅', '2026', '1', '', null, null, '1', '0', 'F', '0', '0', 'ruoyi-jl:borrow:examineSubmit', '#', 'admin', '2023-07-28 09:26:36', '', null, '');
INSERT INTO `sys_menu` VALUES ('2028', '新增私人文件', '2013', '1', '', null, null, '1', '0', 'F', '0', '0', 'ruoyi-jl:file:add', '#', 'admin', '2023-07-28 09:40:06', 'admin', '2023-07-28 09:41:08', '');
INSERT INTO `sys_menu` VALUES ('2029', '新增文件', '2016', '1', '', null, null, '1', '0', 'F', '0', '0', 'ruoyi-jl:file:add', '#', 'admin', '2023-07-28 09:47:21', '', null, '');
INSERT INTO `sys_menu` VALUES ('2030', '借阅按钮', '2018', '2', '', null, null, '1', '0', 'F', '0', '0', 'ruoyi-jl:borrow:add', '#', 'admin', '2023-07-28 09:50:19', '', null, '');
INSERT INTO `sys_menu` VALUES ('2031', '借阅审批查询', '2026', '2', '', null, null, '1', '0', 'F', '0', '0', 'ruoyi-jl:borrow:examinelist', '#', 'admin', '2023-07-28 09:52:18', '', null, '');
INSERT INTO `sys_menu` VALUES ('2033', '借阅列表', '2018', '1', '', null, null, '1', '0', 'F', '0', '0', 'ruoyi-jl:file:borrowlist', '#', 'admin', '2023-07-28 10:30:26', '', null, '');
INSERT INTO `sys_menu` VALUES ('2034', '文件下载', '2014', '2', '', null, null, '1', '0', 'F', '0', '0', null, '#', 'admin', '2023-07-29 11:06:16', '', null, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES ('1', '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2023-07-17 15:13:36', '', null, '管理员');
INSERT INTO `sys_notice` VALUES ('2', '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2023-07-17 15:13:36', '', null, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(11) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(11) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(11) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=657 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES ('100', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"sys_file\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-17 15:45:49', '124');
INSERT INTO `sys_oper_log` VALUES ('101', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"file\",\"className\":\"SysFile\",\"columns\":[{\"capJavaField\":\"FileId\",\"columnComment\":\"文件ID\",\"columnId\":1,\"columnName\":\"file_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 15:45:49\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"fileId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FileName\",\"columnComment\":\"文件名\",\"columnId\":2,\"columnName\":\"file_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 15:45:49\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"fileName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FilePath\",\"columnComment\":\"文件路径\",\"columnId\":3,\"columnName\":\"file_path\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 15:45:49\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"filePath\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FileType\",\"columnComment\":\"文件类型\",\"columnId\":4,\"columnName\":\"file_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 15:45:49\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"fileType\",\"j', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-17 15:47:25', '71');
INSERT INTO `sys_oper_log` VALUES ('102', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_file\"}', null, '0', null, '2023-07-17 15:47:27', '178');
INSERT INTO `sys_oper_log` VALUES ('103', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"file\",\"className\":\"SysFile\",\"columns\":[{\"capJavaField\":\"FileId\",\"columnComment\":\"文件ID\",\"columnId\":1,\"columnName\":\"file_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 15:45:49\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"fileId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-07-17 15:47:25\",\"usableColumn\":false},{\"capJavaField\":\"FileName\",\"columnComment\":\"文件名\",\"columnId\":2,\"columnName\":\"file_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 15:45:49\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"fileName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-07-17 15:47:25\",\"usableColumn\":false},{\"capJavaField\":\"FilePath\",\"columnComment\":\"文件路径\",\"columnId\":3,\"columnName\":\"file_path\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 15:45:49\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"filePath\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":1,\"updateBy\":\"\",\"updateTime\":\"2023-07-17 15:47:25\",\"usableColumn\":false},{\"capJavaField\":\"FileType\",\"columnComment\":\"文件类型\",\"columnId\":4,\"columnName\":\"file_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 15:45:49\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncre', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-17 16:08:16', '77');
INSERT INTO `sys_oper_log` VALUES ('104', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"sys_file\"}', null, '0', null, '2023-07-17 16:08:21', '227');
INSERT INTO `sys_oper_log` VALUES ('105', '代码生成', '3', 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', '1', 'admin', null, '/tool/gen/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-17 16:19:33', '41');
INSERT INTO `sys_oper_log` VALUES ('106', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"jl_file\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-17 16:19:35', '106');
INSERT INTO `sys_oper_log` VALUES ('107', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"file\",\"className\":\"JlFile\",\"columns\":[{\"capJavaField\":\"FileId\",\"columnComment\":\"文件ID\",\"columnId\":9,\"columnName\":\"file_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"fileId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FileName\",\"columnComment\":\"文件名\",\"columnId\":10,\"columnName\":\"file_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"fileName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FilePath\",\"columnComment\":\"文件路径\",\"columnId\":11,\"columnName\":\"file_path\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"filePath\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FileType\",\"columnComment\":\"文件类型\",\"columnId\":12,\"columnName\":\"file_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"fileType\",', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-17 16:20:37', '53');
INSERT INTO `sys_oper_log` VALUES ('108', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"jl_file\"}', null, '0', null, '2023-07-17 16:20:39', '197');
INSERT INTO `sys_oper_log` VALUES ('109', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2001', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-17 16:23:31', '29');
INSERT INTO `sys_oper_log` VALUES ('110', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2002', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-17 16:23:34', '19');
INSERT INTO `sys_oper_log` VALUES ('111', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2003', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-17 16:23:38', '21');
INSERT INTO `sys_oper_log` VALUES ('112', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2004', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-17 16:23:41', '13');
INSERT INTO `sys_oper_log` VALUES ('113', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2005', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-17 16:23:44', '14');
INSERT INTO `sys_oper_log` VALUES ('114', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2000', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-17 16:23:46', '13');
INSERT INTO `sys_oper_log` VALUES ('115', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"文档类型\",\"dictType\":\"file_type\",\"params\":{},\"remark\":\"0为私人文档，1为部门文档，2为公共文档\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 08:56:55', '103');
INSERT INTO `sys_oper_log` VALUES ('116', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"私人文档\",\"dictSort\":0,\"dictType\":\"file_type\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 08:57:13', '65');
INSERT INTO `sys_oper_log` VALUES ('117', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"部门文档\",\"dictSort\":1,\"dictType\":\"file_type\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 08:57:25', '68');
INSERT INTO `sys_oper_log` VALUES ('118', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"公共文档\",\"dictSort\":2,\"dictType\":\"file_type\",\"dictValue\":\"2\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 08:57:45', '66');
INSERT INTO `sys_oper_log` VALUES ('119', '字典类型', '2', 'com.ruoyi.web.controller.system.SysDictTypeController.edit()', 'PUT', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-07-18 08:56:55\",\"dictId\":100,\"dictName\":\"文件类型\",\"dictType\":\"file_type\",\"params\":{},\"remark\":\"0为私人，1为部门，2为公共\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 08:58:24', '128');
INSERT INTO `sys_oper_log` VALUES ('120', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-07-18 08:57:13\",\"default\":false,\"dictCode\":100,\"dictLabel\":\"私人文件\",\"dictSort\":0,\"dictType\":\"file_type\",\"dictValue\":\"0\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 08:58:33', '70');
INSERT INTO `sys_oper_log` VALUES ('121', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-07-18 08:57:25\",\"default\":false,\"dictCode\":101,\"dictLabel\":\"部门文件\",\"dictSort\":1,\"dictType\":\"file_type\",\"dictValue\":\"1\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 08:58:38', '97');
INSERT INTO `sys_oper_log` VALUES ('122', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-07-18 08:57:45\",\"default\":false,\"dictCode\":102,\"dictLabel\":\"公共文件\",\"dictSort\":2,\"dictType\":\"file_type\",\"dictValue\":\"2\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 08:58:44', '91');
INSERT INTO `sys_oper_log` VALUES ('123', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"文件状态\",\"dictType\":\"file_status\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 08:59:00', '50');
INSERT INTO `sys_oper_log` VALUES ('124', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"未归档\",\"dictSort\":0,\"dictType\":\"file_status\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 08:59:21', '70');
INSERT INTO `sys_oper_log` VALUES ('125', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"归档\",\"dictSort\":1,\"dictType\":\"file_status\",\"dictValue\":\"1\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 09:00:09', '68');
INSERT INTO `sys_oper_log` VALUES ('126', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-07-18 09:00:09\",\"default\":false,\"dictCode\":104,\"dictLabel\":\"已归档\",\"dictSort\":1,\"dictType\":\"file_status\",\"dictValue\":\"1\",\"isDefault\":\"N\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 09:00:19', '90');
INSERT INTO `sys_oper_log` VALUES ('127', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/109', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 09:00:32', '14');
INSERT INTO `sys_oper_log` VALUES ('128', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/108', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 09:00:33', '10');
INSERT INTO `sys_oper_log` VALUES ('129', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/102', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 09:00:35', '10');
INSERT INTO `sys_oper_log` VALUES ('130', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/107', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 09:00:37', '13');
INSERT INTO `sys_oper_log` VALUES ('131', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/106', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 09:00:38', '12');
INSERT INTO `sys_oper_log` VALUES ('132', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/105', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":601}', '0', null, '2023-07-18 09:00:40', '6');
INSERT INTO `sys_oper_log` VALUES ('133', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/104', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 09:00:42', '11');
INSERT INTO `sys_oper_log` VALUES ('134', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"部门存在用户,不允许删除\",\"code\":601}', '0', null, '2023-07-18 09:00:44', '8');
INSERT INTO `sys_oper_log` VALUES ('135', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', '1', 'admin', null, '/system/user/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 09:00:57', '17');
INSERT INTO `sys_oper_log` VALUES ('136', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/105', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 09:01:03', '9');
INSERT INTO `sys_oper_log` VALUES ('137', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"巨力集团\",\"email\":\"\",\"leader\":\"\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"phone\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 09:01:25', '14');
INSERT INTO `sys_oper_log` VALUES ('138', '部门管理', '2', 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":101,\"deptName\":\"总公司\",\"email\":\"\",\"leader\":\"\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"parentName\":\"巨力集团\",\"phone\":\"\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 09:01:37', '24');
INSERT INTO `sys_oper_log` VALUES ('139', '部门管理', '1', 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"信息部\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 09:02:07', '17');
INSERT INTO `sys_oper_log` VALUES ('140', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":200,\"nickName\":\"胡子龙\",\"params\":{},\"phonenumber\":\"17633333114\",\"postIds\":[],\"roleIds\":[2],\"status\":\"0\",\"userId\":100,\"userName\":\"17633333114\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 09:03:18', '87');
INSERT INTO `sys_oper_log` VALUES ('141', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', '17633333114', null, '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2023-07-18 09:05:12', '4');
INSERT INTO `sys_oper_log` VALUES ('142', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/103', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 11:08:14', '20');
INSERT INTO `sys_oper_log` VALUES ('143', '部门管理', '3', 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', '1', 'admin', null, '/system/dept/101', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 11:08:16', '12');
INSERT INTO `sys_oper_log` VALUES ('144', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"file\",\"className\":\"JlFile\",\"columns\":[{\"capJavaField\":\"FileId\",\"columnComment\":\"文件ID\",\"columnId\":9,\"columnName\":\"file_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"fileId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-07-17 16:20:37\",\"usableColumn\":false},{\"capJavaField\":\"FileName\",\"columnComment\":\"文件名\",\"columnId\":10,\"columnName\":\"file_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"fileName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-07-17 16:20:37\",\"usableColumn\":false},{\"capJavaField\":\"FilePath\",\"columnComment\":\"文件路径\",\"columnId\":11,\"columnName\":\"file_path\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"filePath\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-07-17 16:20:37\",\"usableColumn\":false},{\"capJavaField\":\"FileType\",\"columnComment\":\"文件类型\",\"columnId\":12,\"columnName\":\"file_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isInc', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 11:24:04', '59');
INSERT INTO `sys_oper_log` VALUES ('145', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"file\",\"className\":\"JlFile\",\"columns\":[{\"capJavaField\":\"FileId\",\"columnComment\":\"文件ID\",\"columnId\":9,\"columnName\":\"file_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"fileId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-07-18 11:24:04\",\"usableColumn\":false},{\"capJavaField\":\"FileName\",\"columnComment\":\"文件名\",\"columnId\":10,\"columnName\":\"file_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"fileName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-07-18 11:24:04\",\"usableColumn\":false},{\"capJavaField\":\"FilePath\",\"columnComment\":\"文件路径\",\"columnId\":11,\"columnName\":\"file_path\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"filePath\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-07-18 11:24:04\",\"usableColumn\":false},{\"capJavaField\":\"FileType\",\"columnComment\":\"文件类型\",\"columnId\":12,\"columnName\":\"file_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isInc', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-18 11:24:56', '31');
INSERT INTO `sys_oper_log` VALUES ('146', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileName\":\"123131\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/18/02a849d4-f6c7-4c35-991e-315f8aad1b39_20230718161327A005.png\",\"params\":{}}', null, '0', null, '2023-07-18 16:13:33', '15');
INSERT INTO `sys_oper_log` VALUES ('147', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileName\":\"123\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/18/02a849d4-f6c7-4c35-991e-315f8aad1b39_20230718161736A007.png\",\"params\":{}}', null, '0', null, '2023-07-18 16:17:37', '0');
INSERT INTO `sys_oper_log` VALUES ('148', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileName\":\"123123\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/18/02a849d4-f6c7-4c35-991e-315f8aad1b39_20230718163541A001.png\",\"params\":{}}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-18 16:35:42', '19');
INSERT INTO `sys_oper_log` VALUES ('149', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileName\":\"123123\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/18/02a849d4-f6c7-4c35-991e-315f8aad1b39_20230718163643A002.png\",\"params\":{}}', null, '0', null, '2023-07-18 16:36:44', '7');
INSERT INTO `sys_oper_log` VALUES ('150', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileName\":\"123123\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/18/02a849d4-f6c7-4c35-991e-315f8aad1b39_20230718164949A001.png\",\"params\":{}}', null, '0', null, '2023-07-18 16:49:50', '15');
INSERT INTO `sys_oper_log` VALUES ('151', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"deptId\":100,\"fileName\":\"123123\",\"params\":{}}', null, '0', null, '2023-07-18 17:41:22', '13');
INSERT INTO `sys_oper_log` VALUES ('152', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileName\":\"123123\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/19/[原创]咕泡教育30万字大厂面试真题深度解析(1)(1)_20230719083712A001.pdf\",\"params\":{}}', null, '0', null, '2023-07-19 08:37:14', '12');
INSERT INTO `sys_oper_log` VALUES ('153', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileName\":\"111111111111\",\"params\":{}}', null, '0', null, '2023-07-19 08:37:39', '0');
INSERT INTO `sys_oper_log` VALUES ('154', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileName\":\"111111111111111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/19/[原创]咕泡教育30万字大厂面试真题深度解析(1)(1)_20230719083807A002.pdf\",\"params\":{}}', null, '0', null, '2023-07-19 08:38:13', '0');
INSERT INTO `sys_oper_log` VALUES ('155', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileName\":\"1111111111111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/19/面试指北_20230719084022A003.pdf\",\"params\":{}}', null, '0', null, '2023-07-19 08:40:26', '2');
INSERT INTO `sys_oper_log` VALUES ('156', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileName\":\"123\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/19/Java基础知识_20230719084558A004.pdf\",\"params\":{}}', null, '0', null, '2023-07-19 08:45:59', '1');
INSERT INTO `sys_oper_log` VALUES ('157', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileName\":\"1233333333\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/19/10万字总结_20230719092924A001.pdf\",\"params\":{}}', null, '0', null, '2023-07-19 09:29:45', '14');
INSERT INTO `sys_oper_log` VALUES ('158', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"deptId\":100,\"fileName\":\"123\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/19/[原创]咕泡教育30万字大厂面试真题深度解析(1)(1)_20230719094911A001.pdf\",\"params\":{}}', null, '0', null, '2023-07-19 09:49:13', '19');
INSERT INTO `sys_oper_log` VALUES ('159', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileName\":\"111111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/19/高等学校设计模式课程系列教材  设计模式  第2版_14556359_20230719100726A001.pdf\",\"params\":{}}', null, '0', null, '2023-07-19 10:07:28', '14');
INSERT INTO `sys_oper_log` VALUES ('160', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"deptId\":100,\"fileName\":\"123\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/19/()&^%$$#@!@,.原创咕泡教育30万字大厂面试真题深度解析(1)(1)_20230719100914A002.pdf\",\"params\":{}}', null, '0', null, '2023-07-19 10:09:19', '0');
INSERT INTO `sys_oper_log` VALUES ('161', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-19 10:41:13\",\"deptId\":200,\"fileName\":\"面试指北\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/19/面试指北_20230719104111A001.pdf\",\"params\":{},\"userId\":1}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'file_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\GitRepository\\RuoYi-Vue\\ruoyi-jl\\target\\classes\\mapper\\ruoyi-jl\\JlFileMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.JlFileMapper.insertJlFile-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into jl_file          ( file_name,             file_path,                          user_id,             dept_id,                          create_time )           values ( ?,             ?,                          ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'file_type\' doesn\'t have a default value\n; Field \'file_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'file_type\' doesn\'t have a default value', '2023-07-19 10:41:13', '74');
INSERT INTO `sys_oper_log` VALUES ('162', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-19 10:47:00\",\"deptId\":200,\"fileId\":2,\"fileName\":\"面试\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/19/面试指北_20230719104659A001.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-19 10:47:00', '33');
INSERT INTO `sys_oper_log` VALUES ('163', '字典类型', '2', 'com.ruoyi.web.controller.system.SysDictTypeController.edit()', 'PUT', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-07-18 08:59:00\",\"dictId\":101,\"dictName\":\"文件状态\",\"dictType\":\"file_status\",\"params\":{},\"remark\":\"0为未归档，1为归档\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-19 10:53:48', '88');
INSERT INTO `sys_oper_log` VALUES ('164', '字典类型', '2', 'com.ruoyi.web.controller.system.SysDictTypeController.edit()', 'PUT', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-07-18 08:59:00\",\"dictId\":101,\"dictName\":\"文件状态\",\"dictType\":\"file_status\",\"params\":{},\"remark\":\"0为未归档，1为已归档\",\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-19 10:54:00', '52');
INSERT INTO `sys_oper_log` VALUES ('165', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"file\",\"className\":\"JlFile\",\"columns\":[{\"capJavaField\":\"FileId\",\"columnComment\":\"文件ID\",\"columnId\":9,\"columnName\":\"file_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"fileId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-07-18 11:24:56\",\"usableColumn\":false},{\"capJavaField\":\"FileName\",\"columnComment\":\"文件名\",\"columnId\":10,\"columnName\":\"file_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"fileName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-07-18 11:24:56\",\"usableColumn\":false},{\"capJavaField\":\"FilePath\",\"columnComment\":\"文件路径\",\"columnId\":11,\"columnName\":\"file_path\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"filePath\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-07-18 11:24:56\",\"usableColumn\":false},{\"capJavaField\":\"FileType\",\"columnComment\":\"文件类型\",\"columnId\":12,\"columnName\":\"file_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"file_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-19 11:09:56', '49');
INSERT INTO `sys_oper_log` VALUES ('166', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"jl_file\"}', null, '0', null, '2023-07-19 11:09:58', '228');
INSERT INTO `sys_oper_log` VALUES ('167', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"file\",\"className\":\"JlFile\",\"columns\":[{\"capJavaField\":\"FileId\",\"columnComment\":\"文件ID\",\"columnId\":9,\"columnName\":\"file_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"fileId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-07-19 11:09:55\",\"usableColumn\":false},{\"capJavaField\":\"FileName\",\"columnComment\":\"文件名\",\"columnId\":10,\"columnName\":\"file_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"fileName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-07-19 11:09:55\",\"usableColumn\":false},{\"capJavaField\":\"FilePath\",\"columnComment\":\"文件路径\",\"columnId\":11,\"columnName\":\"file_path\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"filePath\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-07-19 11:09:55\",\"usableColumn\":false},{\"capJavaField\":\"FileType\",\"columnComment\":\"文件类型\",\"columnId\":12,\"columnName\":\"file_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"file_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-19 11:10:27', '43');
INSERT INTO `sys_oper_log` VALUES ('168', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"jl_file\"}', null, '0', null, '2023-07-19 14:10:53', '62');
INSERT INTO `sys_oper_log` VALUES ('169', '文件管理', '3', 'com.ruoyi.system.controller.JlFileController.remove()', 'DELETE', '1', 'admin', null, '/ruoyi-jl/file/2', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-19 14:15:42', '10');
INSERT INTO `sys_oper_log` VALUES ('170', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-19 14:15:54\",\"deptId\":200,\"fileId\":3,\"fileName\":\"面试指南\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/19/面试指北_20230719141553A001.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-19 14:15:54', '14');
INSERT INTO `sys_oper_log` VALUES ('171', '文件管理', '3', 'com.ruoyi.system.controller.JlFileController.remove()', 'DELETE', '1', 'admin', null, '/ruoyi-jl/file/1', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-19 14:16:07', '5');
INSERT INTO `sys_oper_log` VALUES ('172', '部门管理', '1', 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', '1', 'admin', null, '/system/dept', '127.0.0.1', '内网IP', '{\"ancestors\":\"0,100\",\"children\":[],\"createBy\":\"admin\",\"deptName\":\"人力资源部\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-19 15:09:51', '37');
INSERT INTO `sys_oper_log` VALUES ('173', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/index\",\"createTime\":\"2023-07-17 16:21:13\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"文件管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"path\":\"file\",\"perms\":\"ruoyi-jl:file:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-19 15:12:36', '22');
INSERT INTO `sys_oper_log` VALUES ('174', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"JL\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"jl\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-19 15:13:39', '10');
INSERT INTO `sys_oper_log` VALUES ('175', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-07-19 15:13:39\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2012,\"menuName\":\"JL\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"ruoyi-jl/file\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-19 15:14:07', '12');
INSERT INTO `sys_oper_log` VALUES ('176', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/index\",\"createTime\":\"2023-07-17 16:21:13\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"文件管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2012,\"path\":\"file\",\"perms\":\"ruoyi-jl:file:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-19 15:14:46', '13');
INSERT INTO `sys_oper_log` VALUES ('177', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/index\",\"createTime\":\"2023-07-17 16:21:13\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"文件管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2012,\"path\":\"file\",\"perms\":\"ruoyi-jl:file:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-19 15:14:46', '13');
INSERT INTO `sys_oper_log` VALUES ('178', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-07-18 09:03:18\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":200,\"deptName\":\"信息部\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":201,\"email\":\"\",\"loginDate\":\"2023-07-18 09:04:44\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"胡子龙\",\"params\":{},\"phonenumber\":\"17633333114\",\"postIds\":[],\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":100,\"userName\":\"17633333114\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-19 16:20:23', '60');
INSERT INTO `sys_oper_log` VALUES ('179', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-07-18 09:03:18\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":201,\"deptName\":\"人力资源部\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":201,\"email\":\"\",\"loginDate\":\"2023-07-18 09:04:44\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"胡子龙\",\"params\":{},\"phonenumber\":\"17633333114\",\"postIds\":[],\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":100,\"userName\":\"17633333114\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-19 16:23:20', '21');
INSERT INTO `sys_oper_log` VALUES ('180', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'PUT', '1', 'admin', null, '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"updateBy\":\"admin\",\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-19 16:24:23', '110');
INSERT INTO `sys_oper_log` VALUES ('181', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2023-07-19 16:24:54', '7');
INSERT INTO `sys_oper_log` VALUES ('182', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2023-07-19 16:24:59', '5');
INSERT INTO `sys_oper_log` VALUES ('183', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117,2012,2006,2007,2008,2009,2010,2011],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-19 16:25:07', '35');
INSERT INTO `sys_oper_log` VALUES ('184', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2012', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":601}', '0', null, '2023-07-19 16:25:14', '4');
INSERT INTO `sys_oper_log` VALUES ('185', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-19 16:25:17', '9');
INSERT INTO `sys_oper_log` VALUES ('186', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2012,2006,2007,2008,2009,2010,2011],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-19 16:25:36', '19');
INSERT INTO `sys_oper_log` VALUES ('187', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-20 09:23:02\",\"deptId\":200,\"fileName\":\"PDF测试\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'file_path\' doesn\'t have a default value\r\n### The error may exist in file [D:\\GitRep\\filemanager\\ruoyi-jl\\target\\classes\\mapper\\ruoyi-jl\\JlFileMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.JlFileMapper.insertJlFile-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into jl_file          ( file_name,                          file_type,             user_id,             dept_id,             status,             create_time )           values ( ?,                          ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'file_path\' doesn\'t have a default value\n; Field \'file_path\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'file_path\' doesn\'t have a default value', '2023-07-20 09:23:02', '122');
INSERT INTO `sys_oper_log` VALUES ('188', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-20 09:25:43\",\"deptId\":200,\"fileId\":4,\"fileName\":\"测试pdf\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/20/111_20230720092541A001.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-20 09:25:43', '35');
INSERT INTO `sys_oper_log` VALUES ('189', '角色管理', '1', 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2012,2006,2007,2008,2009,2010,2011],\"params\":{},\"roleId\":100,\"roleKey\":\"system\",\"roleName\":\"部门管理员\",\"roleSort\":1,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-20 09:59:45', '34');
INSERT INTO `sys_oper_log` VALUES ('190', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2012,2006,2007,2008,2009,2010,2011],\"params\":{},\"roleId\":100,\"roleKey\":\"system\",\"roleName\":\"部门管理员\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-20 09:59:55', '23');
INSERT INTO `sys_oper_log` VALUES ('191', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":200,\"nickName\":\"deptadmin\",\"params\":{},\"postIds\":[],\"roleIds\":[100],\"status\":\"0\",\"userId\":101,\"userName\":\"dept\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-20 10:00:38', '86');
INSERT INTO `sys_oper_log` VALUES ('192', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"system\",\"roleName\":\"部门管理员\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-20 10:16:20', '32');
INSERT INTO `sys_oper_log` VALUES ('193', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'PUT', '1', 'admin', null, '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"updateBy\":\"admin\",\"userId\":101}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-20 10:17:47', '73');
INSERT INTO `sys_oper_log` VALUES ('194', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"system\",\"roleName\":\"部门管理员\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-20 10:19:57', '7');
INSERT INTO `sys_oper_log` VALUES ('195', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117,2012,2006,2007,2008,2009,2010,2011],\"params\":{},\"roleId\":100,\"roleKey\":\"system\",\"roleName\":\"部门管理员\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-20 10:20:19', '18');
INSERT INTO `sys_oper_log` VALUES ('196', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117,2012,2006,2007,2008,2009,2010,2011],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-20 10:22:22', '25');
INSERT INTO `sys_oper_log` VALUES ('197', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-07-20 10:00:38\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":200,\"deptName\":\"信息部\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":200,\"email\":\"\",\"loginDate\":\"2023-07-20 10:38:17\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"deptadmin\",\"params\":{},\"phonenumber\":\"\",\"postIds\":[],\"roleIds\":[100],\"roles\":[{\"admin\":false,\"dataScope\":\"4\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":101,\"userName\":\"dept\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-20 10:48:56', '28');
INSERT INTO `sys_oper_log` VALUES ('198', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.resetPwd()', 'PUT', '1', 'admin', null, '/system/user/resetPwd', '127.0.0.1', '内网IP', '{\"admin\":false,\"params\":{},\"updateBy\":\"admin\",\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-20 11:43:06', '76');
INSERT INTO `sys_oper_log` VALUES ('199', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-20 11:46:33', '21');
INSERT INTO `sys_oper_log` VALUES ('200', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', '17633333114', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-20 11:47:19\",\"deptId\":201,\"fileId\":5,\"fileName\":\"test\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/20/111_20230720114718A001.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-20 11:47:19', '11');
INSERT INTO `sys_oper_log` VALUES ('201', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2012,2006,2007,2008,2009,2010,2011],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-20 11:49:36', '16');
INSERT INTO `sys_oper_log` VALUES ('202', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"4\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117,2012,2006,2007,2008,2009,2010,2011],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-20 11:49:42', '22');
INSERT INTO `sys_oper_log` VALUES ('203', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-21 08:04:43\",\"deptId\":200,\"fileId\":6,\"fileName\":\"111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/21/111_20230721080443A001.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 08:04:43', '24');
INSERT INTO `sys_oper_log` VALUES ('204', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-21 08:08:34\",\"deptId\":200,\"fileId\":7,\"fileName\":\"test\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/21/111_20230721080834A001.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 08:08:34', '25');
INSERT INTO `sys_oper_log` VALUES ('205', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-21 08:24:51\",\"deptId\":201,\"fileName\":\"test\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'file_path\' doesn\'t have a default value\r\n### The error may exist in file [D:\\GitRep\\filemanager\\ruoyi-jl\\target\\classes\\mapper\\ruoyi-jl\\JlFileMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.JlFileMapper.insertJlFile-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into jl_file          ( file_name,                          file_type,             user_id,             dept_id,             status,             create_time )           values ( ?,                          ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'file_path\' doesn\'t have a default value\n; Field \'file_path\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'file_path\' doesn\'t have a default value', '2023-07-21 08:24:51', '64');
INSERT INTO `sys_oper_log` VALUES ('206', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-21 08:26:17\",\"deptId\":200,\"fileId\":8,\"fileName\":\"111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/21/123_20230721082616A001.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 08:26:17', '28');
INSERT INTO `sys_oper_log` VALUES ('207', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-21 08:28:36\",\"deptId\":200,\"fileId\":9,\"fileName\":\"TEST\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/21/JL_20230721082835A001.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 08:28:36', '30');
INSERT INTO `sys_oper_log` VALUES ('208', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-21 08:30:12\",\"deptId\":201,\"fileId\":10,\"fileName\":\"文档\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/21/JL_20230721083010A002.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 08:30:12', '6');
INSERT INTO `sys_oper_log` VALUES ('209', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 08:45:08', '23');
INSERT INTO `sys_oper_log` VALUES ('210', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', '1', 'admin', null, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 08:46:22', '12');
INSERT INTO `sys_oper_log` VALUES ('211', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/private\",\"createBy\":\"admin\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"私人文件\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2012,\"path\":\"file\",\"query\":\"\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 08:56:33', '12');
INSERT INTO `sys_oper_log` VALUES ('212', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/private\",\"createTime\":\"2023-07-21 08:56:33\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2013,\"menuName\":\"私人文件\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2012,\"path\":\"file\",\"perms\":\"ruoyi-jl:file:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 08:56:44', '13');
INSERT INTO `sys_oper_log` VALUES ('213', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/private\",\"createTime\":\"2023-07-21 08:56:33\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2013,\"menuName\":\"私人文件\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2012,\"path\":\"private\",\"perms\":\"ruoyi-jl:file:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 08:57:38', '11');
INSERT INTO `sys_oper_log` VALUES ('214', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2012,2006,2007,2008,2009,2010,2011,2013],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 09:24:10', '34');
INSERT INTO `sys_oper_log` VALUES ('215', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117,2012,2006,2007,2008,2009,2010,2011,2013],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 09:24:24', '23');
INSERT INTO `sys_oper_log` VALUES ('216', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/private\",\"createTime\":\"2023-07-21 08:56:33\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2013,\"menuName\":\"私人文件\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2012,\"path\":\"private\",\"perms\":\"ruoyi-jl:file\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 09:28:30', '13');
INSERT INTO `sys_oper_log` VALUES ('217', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/private\",\"createTime\":\"2023-07-21 08:56:33\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2013,\"menuName\":\"私人文件\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2012,\"path\":\"private\",\"perms\":\"ruoyi-jl:file:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 09:29:25', '12');
INSERT INTO `sys_oper_log` VALUES ('218', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/private\",\"createTime\":\"2023-07-21 08:56:33\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2013,\"menuName\":\"私人文件\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2012,\"path\":\"private\",\"perms\":\"ruoyi-jl:file:privatelist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 09:32:35', '20');
INSERT INTO `sys_oper_log` VALUES ('219', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', '1', 'admin', null, '/system/config', '127.0.0.1', '内网IP', '{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"账号自助-验证码开关\",\"configType\":\"N\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 15:13:35\",\"params\":{},\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 09:42:24', '43');
INSERT INTO `sys_oper_log` VALUES ('220', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"file\",\"className\":\"JlFile\",\"columns\":[{\"capJavaField\":\"FileId\",\"columnComment\":\"文件ID\",\"columnId\":9,\"columnName\":\"file_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"fileId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-07-19 11:10:27\",\"usableColumn\":false},{\"capJavaField\":\"FileName\",\"columnComment\":\"文件名\",\"columnId\":10,\"columnName\":\"file_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"fileName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-07-19 11:10:27\",\"usableColumn\":false},{\"capJavaField\":\"FilePath\",\"columnComment\":\"文件路径\",\"columnId\":11,\"columnName\":\"file_path\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"filePath\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-07-19 11:10:27\",\"usableColumn\":false},{\"capJavaField\":\"FileType\",\"columnComment\":\"文件类型\",\"columnId\":12,\"columnName\":\"file_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"file_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 10:07:37', '46');
INSERT INTO `sys_oper_log` VALUES ('221', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"jl_file\"}', null, '0', null, '2023-07-21 10:07:42', '154');
INSERT INTO `sys_oper_log` VALUES ('222', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"file\",\"className\":\"JlFile\",\"columns\":[{\"capJavaField\":\"FileId\",\"columnComment\":\"文件ID\",\"columnId\":9,\"columnName\":\"file_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"fileId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-07-21 10:07:37\",\"usableColumn\":false},{\"capJavaField\":\"FileName\",\"columnComment\":\"文件名\",\"columnId\":10,\"columnName\":\"file_name\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"fileName\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"LIKE\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-07-21 10:07:37\",\"usableColumn\":false},{\"capJavaField\":\"FilePath\",\"columnComment\":\"文件路径\",\"columnId\":11,\"columnName\":\"file_path\",\"columnType\":\"varchar(255)\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"filePath\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":2,\"updateBy\":\"\",\"updateTime\":\"2023-07-21 10:07:37\",\"usableColumn\":false},{\"capJavaField\":\"FileType\",\"columnComment\":\"文件类型\",\"columnId\":12,\"columnName\":\"file_type\",\"columnType\":\"int\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 16:19:35\",\"dictType\":\"file_type\",\"edit\":true,\"htmlType\":\"select\",\"increment\":false,\"insert\":true,\"isEdit\":\"', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 10:15:25', '51');
INSERT INTO `sys_oper_log` VALUES ('223', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"jl_file\"}', null, '0', null, '2023-07-21 10:15:30', '139');
INSERT INTO `sys_oper_log` VALUES ('224', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"jl_file\"}', null, '0', null, '2023-07-21 10:23:41', '36');
INSERT INTO `sys_oper_log` VALUES ('225', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-21 10:40:15\",\"deptId\":200,\"fileId\":11,\"fileName\":\"test\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/21/JL_20230721104015A005.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 10:40:15', '18');
INSERT INTO `sys_oper_log` VALUES ('226', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-21 10:53:26\",\"deptId\":200,\"fileId\":12,\"fileName\":\"111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/21/JL_20230721105324A009.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 10:53:27', '9');
INSERT INTO `sys_oper_log` VALUES ('227', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-21 10:59:33\",\"deptId\":200,\"fileId\":13,\"fileName\":\"111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/21/JL_20230721105933A010.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 10:59:33', '5');
INSERT INTO `sys_oper_log` VALUES ('228', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-21 11:04:36\",\"deptId\":200,\"fileId\":14,\"fileName\":\"11111111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/21/JL_20230721110435A011.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 11:04:36', '10');
INSERT INTO `sys_oper_log` VALUES ('229', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-21 11:06:37\",\"deptId\":200,\"fileId\":15,\"fileName\":\"222\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/21/JL_20230721110636A012.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 11:06:37', '10');
INSERT INTO `sys_oper_log` VALUES ('230', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-21 11:06:51\",\"deptId\":200,\"fileName\":\"111\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'file_path\' doesn\'t have a default value\r\n### The error may exist in file [D:\\GitRep\\filemanager\\ruoyi-jl\\target\\classes\\mapper\\ruoyi-jl\\JlFileMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.JlFileMapper.insertJlFile-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into jl_file          ( file_name,                          file_type,             user_id,             dept_id,             status,             create_time )           values ( ?,                          ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'file_path\' doesn\'t have a default value\n; Field \'file_path\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'file_path\' doesn\'t have a default value', '2023-07-21 11:06:51', '103');
INSERT INTO `sys_oper_log` VALUES ('231', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-21 11:06:58\",\"deptId\":200,\"fileId\":16,\"fileName\":\"111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/21/JL_20230721110654A013.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 11:06:58', '3');
INSERT INTO `sys_oper_log` VALUES ('232', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-21 11:07:03\",\"deptId\":200,\"fileName\":\"111\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'file_path\' doesn\'t have a default value\r\n### The error may exist in file [D:\\GitRep\\filemanager\\ruoyi-jl\\target\\classes\\mapper\\ruoyi-jl\\JlFileMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.JlFileMapper.insertJlFile-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into jl_file          ( file_name,                          file_type,             user_id,             dept_id,             status,             create_time )           values ( ?,                          ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'file_path\' doesn\'t have a default value\n; Field \'file_path\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'file_path\' doesn\'t have a default value', '2023-07-21 11:07:03', '3');
INSERT INTO `sys_oper_log` VALUES ('233', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-21 11:08:06\",\"deptId\":200,\"fileId\":17,\"fileName\":\"111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/21/JL_20230721110805A014.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 11:08:06', '4');
INSERT INTO `sys_oper_log` VALUES ('234', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-21 11:08:32\",\"deptId\":200,\"fileId\":18,\"fileName\":\"1212312\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/21/JL_20230721110830A015.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 11:08:32', '9');
INSERT INTO `sys_oper_log` VALUES ('235', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-21 11:08:49\",\"deptId\":200,\"fileId\":19,\"fileName\":\"1\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/21/JL_20230721110848A016.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 11:08:49', '6');
INSERT INTO `sys_oper_log` VALUES ('236', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', '1', 'admin', null, '/system/config', '127.0.0.1', '内网IP', '{\"configId\":4,\"configKey\":\"sys.account.captchaEnabled\",\"configName\":\"账号自助-验证码开关\",\"configType\":\"Y\",\"configValue\":\"false\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 15:13:35\",\"params\":{},\"remark\":\"是否开启验证码功能（true开启，false关闭）\",\"updateBy\":\"admin\",\"updateTime\":\"2023-07-21 09:42:24\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 11:18:58', '44');
INSERT INTO `sys_oper_log` VALUES ('237', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-21 11:31:36\",\"deptId\":200,\"fileId\":20,\"fileName\":\"11111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/21/JL_20230721113135A001.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 11:31:36', '33');
INSERT INTO `sys_oper_log` VALUES ('238', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'dept', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-21 15:34:48\",\"deptId\":200,\"fileId\":21,\"fileName\":\"11111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/21/JL_20230721153447A001.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":101}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-21 15:34:48', '15');
INSERT INTO `sys_oper_log` VALUES ('239', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/private\",\"createTime\":\"2023-07-19 15:13:39\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2012,\"menuName\":\"部门文件\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2012,\"path\":\"ruoyi-jl/file\",\"perms\":\"\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'部门文件\'失败，上级菜单不能选择自己\",\"code\":500}', '0', null, '2023-07-24 08:20:33', '11');
INSERT INTO `sys_oper_log` VALUES ('240', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"部门文件\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2012,\"path\":\"dept\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 08:21:22', '18');
INSERT INTO `sys_oper_log` VALUES ('241', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/deptlist\",\"createTime\":\"2023-07-24 08:21:22\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2014,\"menuName\":\"部门文件\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2012,\"path\":\"dept\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 08:21:40', '12');
INSERT INTO `sys_oper_log` VALUES ('242', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/deptlist\",\"createTime\":\"2023-07-24 08:21:22\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2014,\"menuName\":\"部门文件\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2012,\"path\":\"dept\",\"perms\":\"ruoyi-jl:file:deptlist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 08:21:58', '13');
INSERT INTO `sys_oper_log` VALUES ('243', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/deptlist\",\"createTime\":\"2023-07-24 08:21:22\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2014,\"menuName\":\"部门文件\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2012,\"path\":\"deptlist\",\"perms\":\"ruoyi-jl:file:deptlist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 08:23:08', '13');
INSERT INTO `sys_oper_log` VALUES ('244', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/deptlist\",\"createTime\":\"2023-07-24 08:21:22\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2014,\"menuName\":\"部门文件\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2012,\"path\":\"dept\",\"perms\":\"ruoyi-jl:file:deptlist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 08:24:21', '9');
INSERT INTO `sys_oper_log` VALUES ('245', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/dept\",\"createTime\":\"2023-07-24 08:21:22\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2014,\"menuName\":\"部门文件\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2012,\"path\":\"dept\",\"perms\":\"ruoyi-jl:file:deptlist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 08:25:00', '17');
INSERT INTO `sys_oper_log` VALUES ('246', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/dept\",\"createTime\":\"2023-07-24 08:21:22\",\"icon\":\"tree\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2014,\"menuName\":\"部门文件\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2012,\"path\":\"dept\",\"perms\":\"ruoyi-jl:file:deptlist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 08:25:54', '13');
INSERT INTO `sys_oper_log` VALUES ('247', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/private\",\"createTime\":\"2023-07-21 08:56:33\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2013,\"menuName\":\"私人文件\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":2012,\"path\":\"private\",\"perms\":\"ruoyi-jl:file:privatelist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 08:25:59', '14');
INSERT INTO `sys_oper_log` VALUES ('248', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-24 08:26:52\",\"deptId\":200,\"fileId\":22,\"fileName\":\"1111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/24/JL_20230724082651A001.pdf\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 08:26:52', '16');
INSERT INTO `sys_oper_log` VALUES ('249', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,2012,2006,2007,2008,2009,2010,2011,2014,2013],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 08:45:11', '37');
INSERT INTO `sys_oper_log` VALUES ('250', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[2012,2006,2007,2008,2009,2010,2011,2014,2013],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 08:45:57', '25');
INSERT INTO `sys_oper_log` VALUES ('251', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-07-19 15:13:39\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2012,\"menuName\":\"公共文件\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":2012,\"path\":\"ruoyi-jl/file\",\"perms\":\"\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"修改菜单\'公共文件\'失败，上级菜单不能选择自己\",\"code\":500}', '0', null, '2023-07-24 09:20:17', '2');
INSERT INTO `sys_oper_log` VALUES ('252', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-07-19 15:13:39\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2012,\"menuName\":\"公共文件\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":2006,\"path\":\"ruoyi-jl/file\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 09:20:26', '8');
INSERT INTO `sys_oper_log` VALUES ('253', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"JL\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"ruoyi-jl\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 09:23:15', '6');
INSERT INTO `sys_oper_log` VALUES ('254', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2015', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 09:37:45', '31');
INSERT INTO `sys_oper_log` VALUES ('255', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/public\",\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"公共文件\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":4,\"path\":\"public\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 09:40:14', '14');
INSERT INTO `sys_oper_log` VALUES ('256', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/public\",\"createTime\":\"2023-07-24 09:40:14\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2016,\"menuName\":\"公共文件\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":4,\"path\":\"public\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 09:40:59', '9');
INSERT INTO `sys_oper_log` VALUES ('257', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/public\",\"createTime\":\"2023-07-24 09:40:14\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2016,\"menuName\":\"公共文件\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":4,\"path\":\"public\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 09:41:53', '14');
INSERT INTO `sys_oper_log` VALUES ('258', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/public\",\"createTime\":\"2023-07-24 09:40:14\",\"icon\":\"list\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2016,\"menuName\":\"公共文件\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":4,\"path\":\"public\",\"perms\":\"ruoyi-jl:file:publiclist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 09:55:24', '26');
INSERT INTO `sys_oper_log` VALUES ('259', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-24 10:08:45\",\"deptId\":200,\"fileId\":23,\"fileName\":\"11111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/24/JL_20230724100844A001.pdf\",\"fileType\":2,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 10:08:45', '20');
INSERT INTO `sys_oper_log` VALUES ('260', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/index\",\"createTime\":\"2023-07-17 16:21:13\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"文件管理\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"file\",\"perms\":\"ruoyi-jl:file:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 10:12:46', '18');
INSERT INTO `sys_oper_log` VALUES ('261', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/dept\",\"createTime\":\"2023-07-24 08:21:22\",\"icon\":\"tree\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2014,\"menuName\":\"部门文件\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":4,\"path\":\"dept\",\"perms\":\"ruoyi-jl:file:deptlist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 10:12:56', '23');
INSERT INTO `sys_oper_log` VALUES ('262', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/private\",\"createTime\":\"2023-07-21 08:56:33\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2013,\"menuName\":\"私人文件\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":4,\"path\":\"private\",\"perms\":\"ruoyi-jl:file:privatelist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 10:13:02', '13');
INSERT INTO `sys_oper_log` VALUES ('263', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2006,2007,2008,2009,2010,2011,2016,2014,2013],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 10:13:57', '33');
INSERT INTO `sys_oper_log` VALUES ('264', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2016,2014,2013],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 10:14:09', '20');
INSERT INTO `sys_oper_log` VALUES ('265', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2006,2007,2008,2009,2010,2011,2016,2014,2013],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 10:16:13', '17');
INSERT INTO `sys_oper_log` VALUES ('266', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2006,2007,2008,2009,2010,2011,2016,2014,2013],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 10:16:22', '20');
INSERT INTO `sys_oper_log` VALUES ('267', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', '17633333114', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-24 10:17:00\",\"deptId\":201,\"fileId\":24,\"fileName\":\"test\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/24/JL_20230724101659A002.pdf\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 10:17:00', '9');
INSERT INTO `sys_oper_log` VALUES ('268', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', '17633333114', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-24 10:47:41\",\"deptId\":201,\"fileId\":25,\"fileName\":\"公共部门文件测试\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/24/JL_20230724104741A001.pdf\",\"fileType\":2,\"params\":{},\"status\":0,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-24 10:47:42', '28');
INSERT INTO `sys_oper_log` VALUES ('269', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,4,2006,2007,2008,2009,2010,2011,2016,2014,2013],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 08:20:14', '36');
INSERT INTO `sys_oper_log` VALUES ('270', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.openFile()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/openFile', '127.0.0.1', '内网IP', '{\"fileId\":22,\"fileType\":2,\"params\":{}}', null, '0', null, '2023-07-25 09:28:30', '7');
INSERT INTO `sys_oper_log` VALUES ('271', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.openFile()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/openFile', '127.0.0.1', '内网IP', '{\"fileId\":23,\"fileType\":1,\"params\":{}}', null, '0', null, '2023-07-25 09:28:51', '1');
INSERT INTO `sys_oper_log` VALUES ('272', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.openFile()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/openFile', '127.0.0.1', '内网IP', '{\"fileId\":22,\"fileType\":2,\"params\":{}}', null, '0', null, '2023-07-25 09:36:40', '5');
INSERT INTO `sys_oper_log` VALUES ('273', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.openFile()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/openFile', '127.0.0.1', '内网IP', '{\"fileId\":22,\"fileType\":2,\"params\":{}}', null, '0', null, '2023-07-25 09:37:01', '0');
INSERT INTO `sys_oper_log` VALUES ('274', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.openFile()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/openFile', '127.0.0.1', '内网IP', '{\"fileId\":22,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 09:42:07', '36');
INSERT INTO `sys_oper_log` VALUES ('275', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.openFile()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/openFile', '127.0.0.1', '内网IP', '{\"fileId\":22,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 09:44:48', '56');
INSERT INTO `sys_oper_log` VALUES ('276', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.openFile()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/openFile', '127.0.0.1', '内网IP', '{\"fileId\":23,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 09:44:57', '14');
INSERT INTO `sys_oper_log` VALUES ('277', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.openFile()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/openFile', '127.0.0.1', '内网IP', '{\"fileId\":22,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 09:47:09', '15');
INSERT INTO `sys_oper_log` VALUES ('278', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.openFile()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/openFile', '127.0.0.1', '内网IP', '{\"fileId\":23,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 09:47:12', '14');
INSERT INTO `sys_oper_log` VALUES ('279', '文件管理', '3', 'com.ruoyi.system.controller.JlFileController.remove()', 'DELETE', '1', 'dept', null, '/ruoyi-jl/file/22', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 09:59:50', '18');
INSERT INTO `sys_oper_log` VALUES ('280', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'dept', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-25 10:00:58\",\"deptId\":200,\"fileId\":26,\"fileName\":\"测试，部门文件公开/归档\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/25/JL_20230725100058A001.pdf\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":101}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:00:59', '14');
INSERT INTO `sys_oper_log` VALUES ('281', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.openFile()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/openFile', '127.0.0.1', '内网IP', '{\"fileId\":26,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:01:09', '22');
INSERT INTO `sys_oper_log` VALUES ('282', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.openFile()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/openFile', '127.0.0.1', '内网IP', '{\"fileId\":26,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:01:18', '37');
INSERT INTO `sys_oper_log` VALUES ('283', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.openFile()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/openFile', '127.0.0.1', '内网IP', '{\"fileId\":26,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:01:34', '4');
INSERT INTO `sys_oper_log` VALUES ('284', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.openFile()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/openFile', '127.0.0.1', '内网IP', '{\"fileId\":26,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:04:12', '9');
INSERT INTO `sys_oper_log` VALUES ('285', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.openFile()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/openFile', '127.0.0.1', '内网IP', '{\"fileId\":23,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:04:33', '17');
INSERT INTO `sys_oper_log` VALUES ('286', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.openFile()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/openFile', '127.0.0.1', '内网IP', '{\"fileId\":26,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:04:57', '9');
INSERT INTO `sys_oper_log` VALUES ('287', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/openFile', '127.0.0.1', '内网IP', '{\"fileId\":23,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:13:06', '17');
INSERT INTO `sys_oper_log` VALUES ('288', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/openFile', '127.0.0.1', '内网IP', '{\"fileId\":26,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:13:13', '5');
INSERT INTO `sys_oper_log` VALUES ('289', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":26,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:25:16', '15');
INSERT INTO `sys_oper_log` VALUES ('290', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":23,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:25:18', '10');
INSERT INTO `sys_oper_log` VALUES ('291', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', '17633333114', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":24,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:29:30', '9');
INSERT INTO `sys_oper_log` VALUES ('292', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"公开\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"perms\":\"ruoyi-jl:file:openFile\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:52:45', '13');
INSERT INTO `sys_oper_log` VALUES ('293', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,4,2006,2007,2008,2009,2010,2011,2016,2014,2017,2013],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:53:06', '39');
INSERT INTO `sys_oper_log` VALUES ('294', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2006,2007,2008,2009,2010,2011,2016,2014,2013],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:53:13', '20');
INSERT INTO `sys_oper_log` VALUES ('295', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":23,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:53:54', '7');
INSERT INTO `sys_oper_log` VALUES ('296', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":26,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:53:56', '10');
INSERT INTO `sys_oper_log` VALUES ('297', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":23,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:53:59', '12');
INSERT INTO `sys_oper_log` VALUES ('298', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-07-25 10:52:45\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2017,\"menuName\":\"公开/归档操作\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"\",\"perms\":\"ruoyi-jl:file:putFile\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:55:44', '7');
INSERT INTO `sys_oper_log` VALUES ('299', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,4,2006,2007,2008,2009,2010,2011,2016,2014,2017,2013],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:55:57', '19');
INSERT INTO `sys_oper_log` VALUES ('300', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2006,2007,2008,2009,2010,2011,2016,2014,2013],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:56:03', '15');
INSERT INTO `sys_oper_log` VALUES ('301', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":23,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:56:18', '3');
INSERT INTO `sys_oper_log` VALUES ('302', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":23,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:56:21', '10');
INSERT INTO `sys_oper_log` VALUES ('303', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":26,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:56:22', '11');
INSERT INTO `sys_oper_log` VALUES ('304', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":26,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:56:24', '4');
INSERT INTO `sys_oper_log` VALUES ('305', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'dept', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":26,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:56:30', '6');
INSERT INTO `sys_oper_log` VALUES ('306', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":23,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:57:18', '8');
INSERT INTO `sys_oper_log` VALUES ('307', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":26,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 10:57:20', '4');
INSERT INTO `sys_oper_log` VALUES ('308', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"借阅列表\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":4,\"path\":\"borrow\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 11:34:13', '10');
INSERT INTO `sys_oper_log` VALUES ('309', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-07-25 11:34:13\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"借阅列表\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":4,\"path\":\"borrow\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 11:34:27', '10');
INSERT INTO `sys_oper_log` VALUES ('310', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/borrow\",\"createTime\":\"2023-07-25 11:34:13\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"借阅列表\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":4,\"path\":\"borrow\",\"perms\":\"ruoyi-jl:file:borrow\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-25 11:35:19', '7');
INSERT INTO `sys_oper_log` VALUES ('311', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":23,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-26 09:24:48', '25');
INSERT INTO `sys_oper_log` VALUES ('312', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":26,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-26 09:24:51', '22');
INSERT INTO `sys_oper_log` VALUES ('313', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-07-18 09:03:18\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":201,\"deptName\":\"人力资源部\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":201,\"email\":\"\",\"loginDate\":\"2023-07-26 09:25:31\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"胡子龙\",\"params\":{},\"phonenumber\":\"17633333114\",\"postIds\":[],\"roleIds\":[100],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":100,\"userName\":\"17633333114\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-26 09:26:01', '30');
INSERT INTO `sys_oper_log` VALUES ('314', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2018,2006,2007,2008,2009,2010,2011,2016,2014,2013],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-26 09:26:32', '21');
INSERT INTO `sys_oper_log` VALUES ('315', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,4,2018,2006,2007,2008,2009,2010,2011,2016,2014,2017,2013],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-26 09:26:37', '21');
INSERT INTO `sys_oper_log` VALUES ('316', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/borrow\",\"createTime\":\"2023-07-25 11:34:13\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"借阅列表\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":4,\"path\":\"borrow\",\"perms\":\"ruoyi-jl:file:borrowlist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-26 09:28:30', '16');
INSERT INTO `sys_oper_log` VALUES ('317', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', '17633333114', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":24,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-26 09:28:53', '14');
INSERT INTO `sys_oper_log` VALUES ('318', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', '17633333114', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":25,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-26 09:28:55', '13');
INSERT INTO `sys_oper_log` VALUES ('319', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', '17633333114', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":24,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-26 09:28:58', '15');
INSERT INTO `sys_oper_log` VALUES ('320', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":23,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-26 09:31:08', '17');
INSERT INTO `sys_oper_log` VALUES ('321', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":26,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-26 09:31:11', '13');
INSERT INTO `sys_oper_log` VALUES ('322', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":26,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-26 09:31:25', '14');
INSERT INTO `sys_oper_log` VALUES ('323', '代码生成', '6', 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', '1', 'admin', null, '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":\"jl_borrow\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-26 10:15:49', '74');
INSERT INTO `sys_oper_log` VALUES ('324', '代码生成', '2', 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', '1', 'admin', null, '/tool/gen', '127.0.0.1', '内网IP', '{\"businessName\":\"borrow\",\"className\":\"JlBorrow\",\"columns\":[{\"capJavaField\":\"Id\",\"columnComment\":\"借阅ID\",\"columnId\":17,\"columnName\":\"id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-07-26 10:15:49\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"FileId\",\"columnComment\":\"文件ID\",\"columnId\":18,\"columnName\":\"file_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-07-26 10:15:49\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"fileId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":2,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"UserId\",\"columnComment\":\"用户ID\",\"columnId\":19,\"columnName\":\"user_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-07-26 10:15:49\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":true,\"sort\":3,\"superColumn\":false,\"tableId\":3,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"DeptId\",\"columnComment\":\"部门ID\",\"columnId\":20,\"columnName\":\"dept_id\",\"columnType\":\"bigint\",\"createBy\":\"admin\",\"createTime\":\"2023-07-26 10:15:49\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"isRequired\":\"1\",\"javaField\":\"deptId\",\"javaType\":\"Long\",\"list\":true,\"params\":{', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-26 10:24:54', '29');
INSERT INTO `sys_oper_log` VALUES ('325', '代码生成', '8', 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', '1', 'admin', null, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{\"tables\":\"jl_borrow\"}', null, '0', null, '2023-07-26 10:26:16', '38');
INSERT INTO `sys_oper_log` VALUES ('326', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/index\",\"createTime\":\"2023-07-26 10:36:38\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"借阅记录\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"borrow\",\"perms\":\"ruoyi-jl:borrow:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-26 10:37:59', '26');
INSERT INTO `sys_oper_log` VALUES ('327', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/index\",\"createTime\":\"2023-07-26 10:36:38\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"借阅记录\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"borrow/borrow\",\"perms\":\"ruoyi-jl:borrow:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-26 10:39:22', '8');
INSERT INTO `sys_oper_log` VALUES ('328', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"id\":23,\"params\":{}}', null, '0', null, '2023-07-26 11:03:56', '12');
INSERT INTO `sys_oper_log` VALUES ('329', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"id\":23,\"params\":{}}', null, '0', null, '2023-07-26 11:12:48', '0');
INSERT INTO `sys_oper_log` VALUES ('330', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"params\":{}}', null, '0', null, '2023-07-26 11:15:50', '0');
INSERT INTO `sys_oper_log` VALUES ('331', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"fileId\":23,\"params\":{}}', null, '0', null, '2023-07-26 11:16:22', '1');
INSERT INTO `sys_oper_log` VALUES ('332', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileId\":23,\"params\":{},\"status\":0,\"userId\":1}', null, '0', null, '2023-07-26 11:19:48', '10');
INSERT INTO `sys_oper_log` VALUES ('333', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-26 11:20:49\",\"deptId\":200,\"fileId\":23,\"params\":{},\"status\":0,\"userId\":1}', null, '0', null, '2023-07-26 11:20:49', '11');
INSERT INTO `sys_oper_log` VALUES ('334', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-26 11:22:37\",\"deptId\":200,\"fileId\":23,\"params\":{},\"status\":0,\"userId\":1}', null, '1', '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\GitRep\\filemanager\\ruoyi-jl\\target\\classes\\mapper\\ruoyi-jl\\JlBorrowMapper.xml]\r\n### The error may involve com.ruoyi.system.mapper.JlBorrowMapper.insertJlBorrow-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into jl_borrow          ( file_id,             user_id,             dept_id,             status,             create_time )           values ( ?,             ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2023-07-26 11:22:37', '70');
INSERT INTO `sys_oper_log` VALUES ('335', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-26 11:23:08\",\"deptId\":200,\"fileId\":23,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-26 11:23:08', '12');
INSERT INTO `sys_oper_log` VALUES ('336', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-26 11:43:40\",\"deptId\":200,\"fileId\":23,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-26 11:43:41', '45');
INSERT INTO `sys_oper_log` VALUES ('337', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-26 11:49:56\",\"deptId\":201,\"fileId\":24,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-26 11:49:56', '36');
INSERT INTO `sys_oper_log` VALUES ('338', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-26 11:55:22\",\"deptId\":200,\"fileId\":23,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-26 11:55:22', '22');
INSERT INTO `sys_oper_log` VALUES ('339', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-27 08:03:21\",\"deptId\":201,\"fileId\":24,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 08:03:21', '26');
INSERT INTO `sys_oper_log` VALUES ('340', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-27 08:05:35\",\"deptId\":201,\"fileId\":24,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 08:05:35', '11');
INSERT INTO `sys_oper_log` VALUES ('341', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-27 08:05:57\",\"deptId\":200,\"fileId\":23,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 08:05:57', '25');
INSERT INTO `sys_oper_log` VALUES ('342', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-27 08:06:03\",\"deptId\":201,\"fileId\":24,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 08:06:03', '15');
INSERT INTO `sys_oper_log` VALUES ('343', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-27 08:06:09\",\"deptId\":201,\"fileId\":24,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 08:06:09', '18');
INSERT INTO `sys_oper_log` VALUES ('344', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-27 08:06:56\",\"deptId\":201,\"fileId\":24,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 08:06:57', '30');
INSERT INTO `sys_oper_log` VALUES ('345', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-27 08:09:22\",\"deptId\":201,\"fileId\":24,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 08:09:22', '9');
INSERT INTO `sys_oper_log` VALUES ('346', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-27 08:09:30\",\"deptId\":201,\"fileId\":24,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 08:09:30', '24');
INSERT INTO `sys_oper_log` VALUES ('347', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-27 08:09:55\",\"deptId\":201,\"fileId\":24,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 08:09:55', '23');
INSERT INTO `sys_oper_log` VALUES ('348', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-27 08:11:13\",\"deptId\":201,\"fileId\":24,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 08:11:13', '13');
INSERT INTO `sys_oper_log` VALUES ('349', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-27 08:12:07\",\"deptId\":200,\"fileId\":27,\"fileName\":\"123\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/27/JL_20230727081204A001.pdf\",\"fileType\":2,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 08:12:07', '12');
INSERT INTO `sys_oper_log` VALUES ('350', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-27 08:14:10\",\"deptId\":200,\"fileId\":23,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 08:14:10', '13');
INSERT INTO `sys_oper_log` VALUES ('351', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-27 08:26:33\",\"deptId\":200,\"fileId\":23,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 08:26:33', '30');
INSERT INTO `sys_oper_log` VALUES ('352', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-27 08:38:13\",\"deptId\":200,\"fileId\":23,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 08:38:13', '56');
INSERT INTO `sys_oper_log` VALUES ('353', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-27 08:41:54\",\"deptId\":201,\"fileId\":24,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 08:41:54', '29');
INSERT INTO `sys_oper_log` VALUES ('354', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"fileId\":23,\"params\":{},\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-27 08:42:43', '12');
INSERT INTO `sys_oper_log` VALUES ('355', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-27 08:47:57\",\"deptId\":200,\"fileId\":23,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 08:47:57', '39');
INSERT INTO `sys_oper_log` VALUES ('356', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-27 08:48:25\",\"deptId\":201,\"fileId\":24,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 08:48:25', '16');
INSERT INTO `sys_oper_log` VALUES ('357', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"fileId\":24,\"params\":{},\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-27 08:48:50', '5');
INSERT INTO `sys_oper_log` VALUES ('358', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"fileId\":23,\"params\":{},\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-27 08:50:53', '12');
INSERT INTO `sys_oper_log` VALUES ('359', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"fileId\":23,\"params\":{},\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-27 08:51:21', '4');
INSERT INTO `sys_oper_log` VALUES ('360', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"fileId\":23,\"params\":{},\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-27 08:51:46', '4');
INSERT INTO `sys_oper_log` VALUES ('361', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"fileId\":23,\"params\":{},\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-27 08:52:41', '3');
INSERT INTO `sys_oper_log` VALUES ('362', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"fileId\":24,\"params\":{},\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-27 08:52:49', '3');
INSERT INTO `sys_oper_log` VALUES ('363', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"fileId\":23,\"params\":{},\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-27 08:53:18', '7');
INSERT INTO `sys_oper_log` VALUES ('364', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"fileId\":23,\"params\":{},\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-27 08:53:46', '5');
INSERT INTO `sys_oper_log` VALUES ('365', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-27 08:54:00\",\"deptId\":200,\"fileId\":23,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 08:54:00', '19');
INSERT INTO `sys_oper_log` VALUES ('366', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/borrowrecords\",\"createTime\":\"2023-07-26 10:36:38\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"借阅记录\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"borrow/borrow\",\"perms\":\"ruoyi-jl:borrow:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 09:29:00', '15');
INSERT INTO `sys_oper_log` VALUES ('367', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/borrowrecords\",\"createTime\":\"2023-07-26 10:36:38\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"借阅记录\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"borrow\",\"perms\":\"ruoyi-jl:borrow:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 09:29:18', '22');
INSERT INTO `sys_oper_log` VALUES ('368', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/borrowrecords\",\"createTime\":\"2023-07-26 10:36:38\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"借阅记录\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"borrowrecords\",\"perms\":\"ruoyi-jl:borrow:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 09:30:19', '14');
INSERT INTO `sys_oper_log` VALUES ('369', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/borrowrecords\",\"createTime\":\"2023-07-26 10:36:38\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"借阅记录\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"records\",\"perms\":\"ruoyi-jl:borrow:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 09:32:04', '12');
INSERT INTO `sys_oper_log` VALUES ('370', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowlist\",\"createTime\":\"2023-07-25 11:34:13\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"借阅列表\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":4,\"path\":\"borrowlist\",\"perms\":\"ruoyi-jl:borrow:borrowlist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 09:33:25', '11');
INSERT INTO `sys_oper_log` VALUES ('371', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowrecords\",\"createTime\":\"2023-07-26 10:36:38\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"借阅记录\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"borrowrecords\",\"perms\":\"ruoyi-jl:borrow:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 09:33:52', '12');
INSERT INTO `sys_oper_log` VALUES ('372', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowlist\",\"createTime\":\"2023-07-25 11:34:13\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"借阅列表\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":4,\"path\":\"borrowlist\",\"perms\":\"ruoyi-jl:borrow:borrowlist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 09:34:56', '8');
INSERT INTO `sys_oper_log` VALUES ('373', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-27 09:54:11\",\"deptId\":201,\"fileId\":24,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 09:54:11', '38');
INSERT INTO `sys_oper_log` VALUES ('374', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,4,2018,2006,2007,2008,2009,2010,2011,2019,2020,2021,2022,2023,2024,2016,2014,2017,2013],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 09:56:08', '35');
INSERT INTO `sys_oper_log` VALUES ('375', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2018,2006,2007,2008,2009,2010,2011,2019,2020,2021,2022,2023,2024,2016,2014,2017,2013],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 09:56:20', '19');
INSERT INTO `sys_oper_log` VALUES ('376', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"借阅列表\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2018,\"perms\":\"ruoyi-jl:file:borrowlist\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 09:58:23', '17');
INSERT INTO `sys_oper_log` VALUES ('377', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowlist\",\"createTime\":\"2023-07-25 11:34:13\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"借阅列表查询\",\"menuType\":\"F\",\"orderNum\":0,\"params\":{},\"parentId\":4,\"path\":\"borrowlist\",\"perms\":\"ruoyi-jl:borrow:borrowlist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 09:58:41', '15');
INSERT INTO `sys_oper_log` VALUES ('378', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowlist\",\"createTime\":\"2023-07-25 11:34:13\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"借阅列表\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":4,\"path\":\"borrowlist\",\"perms\":\"ruoyi-jl:borrow:borrowlist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 09:58:53', '27');
INSERT INTO `sys_oper_log` VALUES ('379', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-07-27 09:58:23\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2025,\"menuName\":\"借阅列表查询\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2018,\"path\":\"\",\"perms\":\"ruoyi-jl:file:borrowlist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 09:58:59', '8');
INSERT INTO `sys_oper_log` VALUES ('380', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2018,2025,2006,2007,2008,2009,2010,2011,2019,2020,2021,2022,2023,2024,2016,2014,2017,2013],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 09:59:10', '16');
INSERT INTO `sys_oper_log` VALUES ('381', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,4,2018,2025,2006,2007,2008,2009,2010,2011,2019,2020,2021,2022,2023,2024,2016,2014,2017,2013],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 09:59:20', '20');
INSERT INTO `sys_oper_log` VALUES ('382', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', '17633333114', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-27 09:59:50\",\"deptId\":200,\"fileId\":23,\"params\":{},\"status\":0,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 09:59:50', '7');
INSERT INTO `sys_oper_log` VALUES ('383', '字典类型', '1', 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', '1', 'admin', null, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"借阅状态\",\"dictType\":\"borrow_status\",\"params\":{},\"remark\":\"借阅状态，0为申请中，1为申请通过\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 10:55:38', '70');
INSERT INTO `sys_oper_log` VALUES ('384', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"申请中\",\"dictSort\":0,\"dictType\":\"borrow_status\",\"dictValue\":\"0\",\"listClass\":\"default\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 10:55:58', '60');
INSERT INTO `sys_oper_log` VALUES ('385', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"申请通过\",\"dictSort\":0,\"dictType\":\"borrow_status\",\"dictValue\":\"1\",\"listClass\":\"success\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 10:56:08', '59');
INSERT INTO `sys_oper_log` VALUES ('386', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-07-27 10:55:58\",\"default\":false,\"dictCode\":105,\"dictLabel\":\"申请中\",\"dictSort\":0,\"dictType\":\"borrow_status\",\"dictValue\":\"0\",\"isDefault\":\"N\",\"listClass\":\"primary\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 10:56:14', '52');
INSERT INTO `sys_oper_log` VALUES ('387', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowrecords\",\"createTime\":\"2023-07-26 10:36:38\",\"icon\":\"row\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"借阅记录\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"borrowrecords\",\"perms\":\"ruoyi-jl:borrow:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 10:58:29', '17');
INSERT INTO `sys_oper_log` VALUES ('388', '借阅记录', '3', 'com.ruoyi.system.controller.JlBorrowController.remove()', 'DELETE', '1', 'admin', null, '/ruoyi-jl/borrow/22', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 11:29:03', '19');
INSERT INTO `sys_oper_log` VALUES ('389', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/index\",\"createTime\":\"2023-07-17 16:21:13\",\"icon\":\"clipboard\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2006,\"menuName\":\"文件管理\",\"menuType\":\"C\",\"orderNum\":9,\"params\":{},\"parentId\":4,\"path\":\"file\",\"perms\":\"ruoyi-jl:file:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"1\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 11:31:44', '14');
INSERT INTO `sys_oper_log` VALUES ('390', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"icon\":\"example\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"借阅审批\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":4,\"path\":\"borrowexamine\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 11:32:27', '11');
INSERT INTO `sys_oper_log` VALUES ('391', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-07-27 11:32:27\",\"icon\":\"example\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2026,\"menuName\":\"借阅审批\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"borrowexamine\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 11:32:37', '12');
INSERT INTO `sys_oper_log` VALUES ('392', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowexamine\",\"createTime\":\"2023-07-27 11:32:27\",\"icon\":\"example\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2026,\"menuName\":\"借阅审批\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"borrowexamine\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 11:33:06', '14');
INSERT INTO `sys_oper_log` VALUES ('393', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowexamine\",\"createTime\":\"2023-07-27 11:32:27\",\"icon\":\"example\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2026,\"menuName\":\"借阅审批\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"borrowexamine\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-27 11:33:55', '23');
INSERT INTO `sys_oper_log` VALUES ('394', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowexamine\",\"createTime\":\"2023-07-27 11:32:27\",\"icon\":\"example\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2026,\"menuName\":\"借阅审批\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"examinelist\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 08:33:47', '25');
INSERT INTO `sys_oper_log` VALUES ('395', '字典数据', '1', 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"default\":false,\"dictLabel\":\"申请失败\",\"dictSort\":2,\"dictType\":\"borrow_status\",\"dictValue\":\"2\",\"listClass\":\"warning\",\"params\":{},\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 08:44:51', '39');
INSERT INTO `sys_oper_log` VALUES ('396', '字典数据', '2', 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', '1', 'admin', null, '/system/dict/data', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":\"2023-07-27 10:56:08\",\"default\":false,\"dictCode\":106,\"dictLabel\":\"申请通过\",\"dictSort\":1,\"dictType\":\"borrow_status\",\"dictValue\":\"1\",\"isDefault\":\"N\",\"listClass\":\"success\",\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 08:45:00', '43');
INSERT INTO `sys_oper_log` VALUES ('397', '借阅记录', '2', 'com.ruoyi.system.controller.JlBorrowController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"id\":21,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:09:16', '15');
INSERT INTO `sys_oper_log` VALUES ('398', '借阅记录', '2', 'com.ruoyi.system.controller.JlBorrowController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"id\":21,\"params\":{},\"status\":1}', null, '0', null, '2023-07-28 09:11:48', '5');
INSERT INTO `sys_oper_log` VALUES ('399', '借阅记录', '2', 'com.ruoyi.system.controller.JlBorrowController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"id\":21,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:15:38', '35');
INSERT INTO `sys_oper_log` VALUES ('400', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"fileId\":23,\"params\":{},\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-28 09:16:10', '5');
INSERT INTO `sys_oper_log` VALUES ('401', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"fileId\":23,\"params\":{},\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-28 09:16:23', '7');
INSERT INTO `sys_oper_log` VALUES ('402', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"fileId\":23,\"params\":{},\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-28 09:17:13', '5');
INSERT INTO `sys_oper_log` VALUES ('403', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2018,2025,2019,2020,2021,2022,2023,2024,2016,2014,2017,2013,2006,2007,2008,2009,2010,2011],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:20:37', '38');
INSERT INTO `sys_oper_log` VALUES ('404', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,4,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,2018,2025,2019,2020,2021,2022,2023,2024,2026,2016,2014,2017,2013],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:20:53', '25');
INSERT INTO `sys_oper_log` VALUES ('405', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2020', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2023-07-28 09:22:32', '14');
INSERT INTO `sys_oper_log` VALUES ('406', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2024', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2023-07-28 09:22:38', '4');
INSERT INTO `sys_oper_log` VALUES ('407', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2024', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2023-07-28 09:22:55', '16');
INSERT INTO `sys_oper_log` VALUES ('408', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2020', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2023-07-28 09:23:08', '5');
INSERT INTO `sys_oper_log` VALUES ('409', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2018,2025,2016,2014,2017,2013,2006,2007,2008,2009,2010,2011],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:23:21', '16');
INSERT INTO `sys_oper_log` VALUES ('410', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,4,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,2018,2025,2016,2014,2017,2013],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:23:30', '20');
INSERT INTO `sys_oper_log` VALUES ('411', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2024', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:23:39', '15');
INSERT INTO `sys_oper_log` VALUES ('412', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2023', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:23:42', '14');
INSERT INTO `sys_oper_log` VALUES ('413', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2022', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:23:45', '13');
INSERT INTO `sys_oper_log` VALUES ('414', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2021', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:23:47', '14');
INSERT INTO `sys_oper_log` VALUES ('415', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2020', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:23:52', '11');
INSERT INTO `sys_oper_log` VALUES ('416', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"同意借阅\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2026,\"perms\":\"ruoyi-jl:borrow:examineSubmit\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:26:36', '19');
INSERT INTO `sys_oper_log` VALUES ('417', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":201,\"nickName\":\"rzadmin\",\"params\":{},\"postIds\":[],\"roleIds\":[100],\"status\":\"0\",\"userId\":102,\"userName\":\"人资管理员\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:28:20', '83');
INSERT INTO `sys_oper_log` VALUES ('418', '用户管理', '2', 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-07-18 09:03:18\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":201,\"deptName\":\"人力资源部\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":201,\"email\":\"\",\"loginDate\":\"2023-07-27 11:23:01\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"人资普通员工\",\"params\":{},\"phonenumber\":\"17633333114\",\"postIds\":[],\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"1\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":100,\"userName\":\"17633333114\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:29:10', '17');
INSERT INTO `sys_oper_log` VALUES ('419', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', '1', 'admin', null, '/system/user/101', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:29:33', '22');
INSERT INTO `sys_oper_log` VALUES ('420', '用户管理', '3', 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', '1', 'admin', null, '/system/user/102', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:29:50', '23');
INSERT INTO `sys_oper_log` VALUES ('421', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":201,\"nickName\":\"人资管理员\",\"params\":{},\"postIds\":[],\"roleIds\":[100],\"status\":\"0\",\"userId\":103,\"userName\":\"rzadmin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:30:13', '78');
INSERT INTO `sys_oper_log` VALUES ('422', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":200,\"nickName\":\"信息部管理员\",\"params\":{},\"postIds\":[],\"roleIds\":[100],\"status\":\"0\",\"userId\":104,\"userName\":\"xxadmin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:30:32', '81');
INSERT INTO `sys_oper_log` VALUES ('423', '用户管理', '1', 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', '1', 'admin', null, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"createBy\":\"admin\",\"deptId\":200,\"nickName\":\"信息部员工\",\"params\":{},\"postIds\":[],\"roleIds\":[2],\"status\":\"0\",\"userId\":105,\"userName\":\"xxcommon\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:31:08', '80');
INSERT INTO `sys_oper_log` VALUES ('424', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2018,2025,2019,2016,2014,2017,2013],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:33:08', '15');
INSERT INTO `sys_oper_log` VALUES ('425', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,4,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,2018,2025,2026,2027,2019,2016,2014,2017,2013],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:33:22', '18');
INSERT INTO `sys_oper_log` VALUES ('426', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/private\",\"createTime\":\"2023-07-21 08:56:33\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2013,\"menuName\":\"私人文件\",\"menuType\":\"C\",\"orderNum\":0,\"params\":{},\"parentId\":4,\"path\":\"private\",\"perms\":\"ruoyi-jl:file:privatelist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:35:06', '12');
INSERT INTO `sys_oper_log` VALUES ('427', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/file/dept\",\"createTime\":\"2023-07-24 08:21:22\",\"icon\":\"tree\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2014,\"menuName\":\"部门文件\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"dept\",\"perms\":\"ruoyi-jl:file:deptlist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:35:11', '9');
INSERT INTO `sys_oper_log` VALUES ('428', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowlist\",\"createTime\":\"2023-07-25 11:34:13\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"借阅列表\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":4,\"path\":\"borrowlist\",\"perms\":\"ruoyi-jl:borrow:borrowlist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:35:43', '12');
INSERT INTO `sys_oper_log` VALUES ('429', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowrecords\",\"createTime\":\"2023-07-26 10:36:38\",\"icon\":\"row\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"借阅记录\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":4,\"path\":\"borrowrecords\",\"perms\":\"ruoyi-jl:borrow:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:35:59', '11');
INSERT INTO `sys_oper_log` VALUES ('430', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowexamine\",\"createTime\":\"2023-07-27 11:32:27\",\"icon\":\"example\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2026,\"menuName\":\"借阅审批\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":4,\"path\":\"examinelist\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:36:03', '11');
INSERT INTO `sys_oper_log` VALUES ('431', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"新增私人文件\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2013,\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:40:06', '11');
INSERT INTO `sys_oper_log` VALUES ('432', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-07-28 09:40:06\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2028,\"menuName\":\"新增私人文件\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2013,\"path\":\"\",\"perms\":\"ruoyi-jl:file:add\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:41:08', '13');
INSERT INTO `sys_oper_log` VALUES ('433', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2013,2028,2014,2017,2016,2018,2025,2019],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:41:28', '18');
INSERT INTO `sys_oper_log` VALUES ('434', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'xxcommon', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-28 09:42:15\",\"deptId\":200,\"fileId\":28,\"fileName\":\"信息部普通员工私人文件测试\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/28/JL_20230728094213A001.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":105}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:42:15', '7');
INSERT INTO `sys_oper_log` VALUES ('435', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'xxcommon', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-28 09:42:41\",\"deptId\":200,\"fileId\":29,\"fileName\":\"信息部普通员工部门文件测试\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/28/JL_20230728094240A002.pdf\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":105}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:42:41', '4');
INSERT INTO `sys_oper_log` VALUES ('436', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'xxcommon', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-28 09:43:16\",\"deptId\":200,\"fileId\":30,\"fileName\":\"信息部普通员工公共文件测试\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/28/JL_20230728094315A003.pdf\",\"fileType\":2,\"params\":{},\"status\":0,\"userId\":105}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:43:16', '10');
INSERT INTO `sys_oper_log` VALUES ('437', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"新增文件\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2016,\"perms\":\"ruoyi-jl:file:add\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:47:21', '12');
INSERT INTO `sys_oper_log` VALUES ('438', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-07-27 09:58:23\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2025,\"menuName\":\"借阅列表查询\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2018,\"path\":\"\",\"perms\":\"ruoyi-jl:borrow:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:48:10', '12');
INSERT INTO `sys_oper_log` VALUES ('439', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"借阅按钮\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2018,\"perms\":\"ruoyi-jl:borrow:add\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:50:19', '7');
INSERT INTO `sys_oper_log` VALUES ('440', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"借阅审批查询\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2026,\"perms\":\"ruoyi-jl:borrow:examinelist\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:52:18', '11');
INSERT INTO `sys_oper_log` VALUES ('441', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2013,2028,2014,2017,2016,2029,2018,2025,2030,2019],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:52:50', '13');
INSERT INTO `sys_oper_log` VALUES ('442', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,4,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,2013,2028,2014,2017,2016,2029,2018,2025,2030,2019,2026,2027,2031],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:53:10', '14');
INSERT INTO `sys_oper_log` VALUES ('443', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'xxadmin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-28 09:53:50\",\"deptId\":200,\"fileId\":31,\"fileName\":\"信息部管理私人文件测试\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/28/JL_20230728095349A004.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":104}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:53:50', '9');
INSERT INTO `sys_oper_log` VALUES ('444', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'xxadmin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-28 09:54:51\",\"deptId\":200,\"fileId\":32,\"fileName\":\"信息部管理员新增公共文件测试\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/28/JL_20230728095450A005.pdf\",\"fileType\":2,\"params\":{},\"status\":0,\"userId\":104}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 09:54:51', '5');
INSERT INTO `sys_oper_log` VALUES ('445', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '192.168.27.148', '内网IP', '{\"createTime\":\"2023-07-28 10:07:32\",\"deptId\":200,\"fileId\":33,\"fileName\":\"test\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/28/JL_20230728100731A006.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:07:32', '9');
INSERT INTO `sys_oper_log` VALUES ('446', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '192.168.27.148', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,4,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,2013,2028,2014,2017,2016,2029,2018,2025,2030,2019,2026,2027,2031],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:15:05', '40');
INSERT INTO `sys_oper_log` VALUES ('447', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '192.168.27.148', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowlist\",\"createTime\":\"2023-07-25 11:34:13\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"借阅列表\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":4,\"path\":\"borrowlist\",\"perms\":\"ruoyi-jl:borrow:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:15:28', '13');
INSERT INTO `sys_oper_log` VALUES ('448', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowlist\",\"createTime\":\"2023-07-25 11:34:13\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"借阅列表\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":4,\"path\":\"borrowlist\",\"perms\":\"ruoyi-jl:borrow:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:17:59', '10');
INSERT INTO `sys_oper_log` VALUES ('449', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-07-27 09:58:23\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2025,\"menuName\":\"借阅列表查询\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2018,\"path\":\"\",\"perms\":\"ruoyi-jl:borrow:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:18:09', '8');
INSERT INTO `sys_oper_log` VALUES ('450', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2025', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2023-07-28 10:18:13', '10');
INSERT INTO `sys_oper_log` VALUES ('451', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2018,2013,2028,2014,2017,2016,2029,2030,2019],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:18:39', '17');
INSERT INTO `sys_oper_log` VALUES ('452', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2025', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2023-07-28 10:18:44', '8');
INSERT INTO `sys_oper_log` VALUES ('453', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,4,2018,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,2013,2028,2014,2017,2016,2029,2030,2019,2026,2027,2031],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:19:03', '23');
INSERT INTO `sys_oper_log` VALUES ('454', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2025', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:19:42', '16');
INSERT INTO `sys_oper_log` VALUES ('455', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowlist\",\"createTime\":\"2023-07-25 11:34:13\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"借阅列表\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":4,\"path\":\"borrowlist\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:20:42', '50');
INSERT INTO `sys_oper_log` VALUES ('456', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowrecords\",\"createTime\":\"2023-07-26 10:36:38\",\"icon\":\"row\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"借阅记录\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":4,\"path\":\"borrowrecords\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:23:56', '14');
INSERT INTO `sys_oper_log` VALUES ('457', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"借阅列表\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2030,\"perms\":\"ruoyi-jl:file:borrowlist\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:26:48', '24');
INSERT INTO `sys_oper_log` VALUES ('458', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowlist\",\"createTime\":\"2023-07-25 11:34:13\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"借阅列表\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":4,\"path\":\"borrowlist\",\"perms\":\"ruoyi-jl:file:borrowlist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:28:21', '25');
INSERT INTO `sys_oper_log` VALUES ('459', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,4,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,2013,2028,2014,2017,2016,2029,2018,2030,2032,2019,2026,2027,2031],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:28:54', '34');
INSERT INTO `sys_oper_log` VALUES ('460', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,4,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,2013,2028,2014,2017,2016,2029,2018,2030,2032,2019,2026,2027,2031],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:29:05', '18');
INSERT INTO `sys_oper_log` VALUES ('461', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2032', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2023-07-28 10:29:24', '5');
INSERT INTO `sys_oper_log` VALUES ('462', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,4,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,2013,2028,2014,2017,2016,2029,2019,2026,2027,2031],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:29:50', '20');
INSERT INTO `sys_oper_log` VALUES ('463', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2032', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:29:55', '14');
INSERT INTO `sys_oper_log` VALUES ('464', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"借阅列表\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2018,\"perms\":\"ruoyi-jl:file:borrowlist\",\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:30:26', '14');
INSERT INTO `sys_oper_log` VALUES ('465', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,4,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,2013,2028,2014,2017,2016,2029,2018,2033,2030,2019,2026,2027,2031],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:30:55', '20');
INSERT INTO `sys_oper_log` VALUES ('466', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowlist\",\"createTime\":\"2023-07-25 11:34:13\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"借阅列表\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":4,\"path\":\"borrowlist\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:31:48', '8');
INSERT INTO `sys_oper_log` VALUES ('467', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowlist\",\"createTime\":\"2023-07-25 11:34:13\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"借阅列表\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":4,\"path\":\"borrowlist\",\"perms\":\"ruoyi-jl:file:borrowlist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:35:37', '23');
INSERT INTO `sys_oper_log` VALUES ('468', '菜单管理', '3', 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', '1', 'admin', null, '/system/menu/2033', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":601}', '0', null, '2023-07-28 10:35:45', '10');
INSERT INTO `sys_oper_log` VALUES ('469', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2013,2028,2014,2017,2016,2029,2018,2033,2030,2019],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:35:57', '31');
INSERT INTO `sys_oper_log` VALUES ('470', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,4,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,2013,2028,2014,2017,2016,2029,2018,2033,2030,2019,2026,2027,2031],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:36:03', '19');
INSERT INTO `sys_oper_log` VALUES ('471', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowrecords\",\"createTime\":\"2023-07-26 10:36:38\",\"icon\":\"row\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2019,\"menuName\":\"借阅记录\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":4,\"path\":\"borrowrecords\",\"perms\":\"ruoyi-jl:borrow:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:41:22', '18');
INSERT INTO `sys_oper_log` VALUES ('472', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowexamine\",\"createTime\":\"2023-07-27 11:32:27\",\"icon\":\"example\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2026,\"menuName\":\"借阅审批\",\"menuType\":\"C\",\"orderNum\":5,\"params\":{},\"parentId\":4,\"path\":\"examinelist\",\"perms\":\"ruoyi-jl:borrow:examinelist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:41:56', '15');
INSERT INTO `sys_oper_log` VALUES ('473', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2013,2028,2014,2017,2016,2029,2018,2033,2030,2019],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:42:19', '32');
INSERT INTO `sys_oper_log` VALUES ('474', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,4,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,2013,2028,2014,2017,2016,2029,2018,2033,2030,2019,2026,2027,2031],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:42:28', '22');
INSERT INTO `sys_oper_log` VALUES ('475', '借阅记录', '2', 'com.ruoyi.system.controller.JlBorrowController.edit()', 'PUT', '1', 'xxadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"id\":23,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:43:56', '15');
INSERT INTO `sys_oper_log` VALUES ('476', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'xxadmin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":29,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:48:47', '22');
INSERT INTO `sys_oper_log` VALUES ('477', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'xxadmin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":27,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:48:52', '15');
INSERT INTO `sys_oper_log` VALUES ('478', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'xxadmin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":29,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:48:54', '12');
INSERT INTO `sys_oper_log` VALUES ('479', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'xxadmin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":30,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:48:56', '10');
INSERT INTO `sys_oper_log` VALUES ('480', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'xxadmin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":32,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:48:59', '11');
INSERT INTO `sys_oper_log` VALUES ('481', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'xxadmin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":32,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:50:34', '12');
INSERT INTO `sys_oper_log` VALUES ('482', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'xxadmin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":30,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:50:36', '14');
INSERT INTO `sys_oper_log` VALUES ('483', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'xxadmin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":29,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:50:38', '5');
INSERT INTO `sys_oper_log` VALUES ('484', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'xxadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-28 10:50:50\",\"deptId\":200,\"fileId\":29,\"params\":{},\"status\":0,\"userId\":104}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:50:50', '17');
INSERT INTO `sys_oper_log` VALUES ('485', '借阅记录', '2', 'com.ruoyi.system.controller.JlBorrowController.edit()', 'PUT', '1', 'xxadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"id\":24,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:51:08', '14');
INSERT INTO `sys_oper_log` VALUES ('486', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'xxcommon', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-28 10:52:51\",\"deptId\":200,\"fileId\":23,\"params\":{},\"status\":0,\"userId\":105}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:52:51', '20');
INSERT INTO `sys_oper_log` VALUES ('487', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'xxcommon', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-28 10:52:53\",\"deptId\":201,\"fileId\":24,\"params\":{},\"status\":0,\"userId\":105}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:52:53', '12');
INSERT INTO `sys_oper_log` VALUES ('488', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'xxcommon', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"fileId\":24,\"params\":{},\"userId\":105}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-28 10:52:57', '2');
INSERT INTO `sys_oper_log` VALUES ('489', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'xxcommon', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"fileId\":23,\"params\":{},\"userId\":105}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-28 10:53:00', '2');
INSERT INTO `sys_oper_log` VALUES ('490', '借阅记录', '2', 'com.ruoyi.system.controller.JlBorrowController.edit()', 'PUT', '1', 'rzadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"id\":26,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:53:55', '14');
INSERT INTO `sys_oper_log` VALUES ('491', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'rzadmin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":24,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:55:44', '7');
INSERT INTO `sys_oper_log` VALUES ('492', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'rzadmin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":24,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 10:59:22', '11');
INSERT INTO `sys_oper_log` VALUES ('493', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'rzadmin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":25,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 11:00:12', '12');
INSERT INTO `sys_oper_log` VALUES ('494', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'rzadmin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":24,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 11:00:18', '13');
INSERT INTO `sys_oper_log` VALUES ('495', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'rzadmin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":25,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 11:00:20', '9');
INSERT INTO `sys_oper_log` VALUES ('496', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"component\":\"ruoyi-jl/borrow/borrowlist\",\"createTime\":\"2023-07-25 11:34:13\",\"icon\":\"education\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2018,\"menuName\":\"归档文件\",\"menuType\":\"C\",\"orderNum\":3,\"params\":{},\"parentId\":4,\"path\":\"borrowlist\",\"perms\":\"ruoyi-jl:file:borrowlist\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 11:02:02', '16');
INSERT INTO `sys_oper_log` VALUES ('497', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-07-17 15:13:35\",\"icon\":\"international\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":4,\"menuName\":\"JL\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"ruoyi-jl\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 11:03:24', '12');
INSERT INTO `sys_oper_log` VALUES ('498', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-07-17 15:13:35\",\"icon\":\"international\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":4,\"menuName\":\"巨力文件\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"ruoyi-jl\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 11:04:01', '11');
INSERT INTO `sys_oper_log` VALUES ('499', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":26,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 11:12:55', '20');
INSERT INTO `sys_oper_log` VALUES ('500', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":27,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 11:12:59', '12');
INSERT INTO `sys_oper_log` VALUES ('501', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":32,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 11:13:05', '4');
INSERT INTO `sys_oper_log` VALUES ('502', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":32,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 11:13:11', '14');
INSERT INTO `sys_oper_log` VALUES ('503', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileId\":23,\"params\":{},\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-28 11:13:33', '4');
INSERT INTO `sys_oper_log` VALUES ('504', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileId\":23,\"params\":{},\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-28 11:15:37', '4');
INSERT INTO `sys_oper_log` VALUES ('505', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileId\":23,\"params\":{},\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-28 11:16:21', '8');
INSERT INTO `sys_oper_log` VALUES ('506', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileId\":23,\"params\":{},\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-28 11:16:54', '3');
INSERT INTO `sys_oper_log` VALUES ('507', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileId\":23,\"params\":{},\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-28 11:17:19', '2');
INSERT INTO `sys_oper_log` VALUES ('508', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileId\":23,\"params\":{},\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-28 11:17:42', '5');
INSERT INTO `sys_oper_log` VALUES ('509', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileId\":23,\"params\":{},\"userId\":1}', '{\"msg\":\"操作失败\",\"code\":500}', '0', null, '2023-07-28 11:17:56', '3');
INSERT INTO `sys_oper_log` VALUES ('510', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'xxadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-28 11:25:21\",\"deptId\":200,\"fileId\":23,\"params\":{},\"status\":0,\"userId\":104}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 11:25:21', '23');
INSERT INTO `sys_oper_log` VALUES ('511', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'xxadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileId\":23,\"params\":{},\"userId\":104}', '{\"msg\":\"请勿重复申请借阅\",\"code\":500}', '0', null, '2023-07-28 11:25:33', '10');
INSERT INTO `sys_oper_log` VALUES ('512', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'xxadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-28 11:26:06\",\"deptId\":200,\"fileId\":26,\"params\":{},\"status\":0,\"userId\":104}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 11:26:06', '20');
INSERT INTO `sys_oper_log` VALUES ('513', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'xxadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-28 11:26:15\",\"deptId\":200,\"fileId\":27,\"params\":{},\"status\":0,\"userId\":104}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 11:26:15', '10');
INSERT INTO `sys_oper_log` VALUES ('514', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'xxadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileId\":26,\"params\":{},\"userId\":104}', '{\"msg\":\"请勿重复申请借阅\",\"code\":500}', '0', null, '2023-07-28 11:26:30', '7');
INSERT INTO `sys_oper_log` VALUES ('515', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'xxadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileId\":29,\"params\":{},\"userId\":104}', '{\"msg\":\"请勿重复申请借阅\",\"code\":500}', '0', null, '2023-07-28 11:27:02', '3');
INSERT INTO `sys_oper_log` VALUES ('516', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'xxadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-28 11:27:07\",\"deptId\":200,\"fileId\":30,\"params\":{},\"status\":0,\"userId\":104}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 11:27:07', '14');
INSERT INTO `sys_oper_log` VALUES ('517', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'xxadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-28 11:27:37\",\"deptId\":200,\"fileId\":30,\"params\":{},\"status\":0,\"userId\":104}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 11:27:37', '13');
INSERT INTO `sys_oper_log` VALUES ('518', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'xxadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileId\":23,\"params\":{}}', '{\"msg\":\"本部门文件，无需借阅\",\"code\":500}', '0', null, '2023-07-28 11:29:45', '5');
INSERT INTO `sys_oper_log` VALUES ('519', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'rzadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-28 11:30:47\",\"deptId\":200,\"fileId\":23,\"params\":{},\"status\":0,\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 11:30:47', '18');
INSERT INTO `sys_oper_log` VALUES ('520', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'rzadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileId\":23,\"params\":{},\"userId\":103}', '{\"msg\":\"请勿重复申请借阅\",\"code\":500}', '0', null, '2023-07-28 11:31:17', '2');
INSERT INTO `sys_oper_log` VALUES ('521', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'rzadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-28 11:31:24\",\"deptId\":200,\"fileId\":26,\"params\":{},\"status\":0,\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 11:31:24', '14');
INSERT INTO `sys_oper_log` VALUES ('522', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'rzadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileId\":23,\"params\":{},\"userId\":103}', '{\"msg\":\"请勿重复申请借阅\",\"code\":500}', '0', null, '2023-07-28 11:32:16', '7');
INSERT INTO `sys_oper_log` VALUES ('523', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'rzadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-28 11:32:20\",\"deptId\":200,\"fileId\":29,\"params\":{},\"status\":0,\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 11:32:20', '36');
INSERT INTO `sys_oper_log` VALUES ('524', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'rzadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileId\":23,\"params\":{},\"userId\":103}', '{\"msg\":\"请勿重复申请借阅\",\"code\":500}', '0', null, '2023-07-28 11:34:03', '3');
INSERT INTO `sys_oper_log` VALUES ('525', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'rzadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-28 11:39:30\",\"deptId\":200,\"fileId\":30,\"params\":{},\"status\":0,\"userId\":103}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-28 11:39:30', '51');
INSERT INTO `sys_oper_log` VALUES ('526', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'rzadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"fileId\":23,\"params\":{},\"userId\":103}', '{\"msg\":\"请勿重复申请借阅\",\"code\":500}', '0', null, '2023-07-28 11:43:36', '11');
INSERT INTO `sys_oper_log` VALUES ('527', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileId\":23,\"params\":{},\"userId\":1}', '{\"msg\":\"本部门文件，无需借阅，请到部门文件中查看\",\"code\":500}', '0', null, '2023-07-29 08:15:41', '11');
INSERT INTO `sys_oper_log` VALUES ('528', '借阅记录', '2', 'com.ruoyi.system.controller.JlBorrowController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"id\":31,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 08:16:22', '14');
INSERT INTO `sys_oper_log` VALUES ('529', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', '17633333114', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-29 08:26:10\",\"deptId\":200,\"fileId\":23,\"params\":{},\"status\":0,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 08:26:10', '19');
INSERT INTO `sys_oper_log` VALUES ('530', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', '17633333114', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"fileId\":23,\"params\":{},\"userId\":100}', '{\"msg\":\"请勿重复申请借阅\",\"code\":500}', '0', null, '2023-07-29 08:26:13', '9');
INSERT INTO `sys_oper_log` VALUES ('531', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', '17633333114', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-29 08:26:17\",\"deptId\":200,\"fileId\":26,\"params\":{},\"status\":0,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 08:26:17', '26');
INSERT INTO `sys_oper_log` VALUES ('532', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', '17633333114', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-29 08:26:19\",\"deptId\":200,\"fileId\":27,\"params\":{},\"status\":0,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 08:26:19', '13');
INSERT INTO `sys_oper_log` VALUES ('533', '借阅记录', '3', 'com.ruoyi.system.controller.JlBorrowController.remove()', 'DELETE', '1', 'admin', null, '/ruoyi-jl/borrow/31', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 10:17:10', '25');
INSERT INTO `sys_oper_log` VALUES ('534', '借阅记录', '2', 'com.ruoyi.system.controller.JlBorrowController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"id\":32,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 10:17:31', '10');
INSERT INTO `sys_oper_log` VALUES ('535', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'rzadmin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":25,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 10:49:31', '23');
INSERT INTO `sys_oper_log` VALUES ('536', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-29 10:55:45\",\"deptId\":200,\"fileId\":34,\"fileName\":\"12231132\",\"filePath\":\"http://localhost:8080/profile/upload/2023/07/29/JL_20230729105544A001.pdf\",\"fileType\":2,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 10:55:45', '13');
INSERT INTO `sys_oper_log` VALUES ('537', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-07-29 10:56:08\",\"deptId\":201,\"fileId\":25,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 10:56:08', '27');
INSERT INTO `sys_oper_log` VALUES ('538', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"fileId\":25,\"params\":{},\"userId\":1}', '{\"msg\":\"请勿重复申请借阅\",\"code\":500}', '0', null, '2023-07-29 10:56:12', '4');
INSERT INTO `sys_oper_log` VALUES ('539', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'xxcommon', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileId\":30,\"params\":{},\"userId\":105}', '{\"msg\":\"本部门文件，无需借阅，请到部门文件中查看\",\"code\":500}', '0', null, '2023-07-29 11:04:45', '8');
INSERT INTO `sys_oper_log` VALUES ('540', '菜单管理', '1', 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"文件下载\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2014,\"status\":\"0\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 11:06:16', '11');
INSERT INTO `sys_oper_log` VALUES ('541', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2014,2013,2028,2034,2016,2029,2018,2033,2030,2019],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 11:06:27', '35');
INSERT INTO `sys_oper_log` VALUES ('542', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'xxadmin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":34,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 11:10:33', '11');
INSERT INTO `sys_oper_log` VALUES ('543', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'xxadmin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":34,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 11:10:36', '11');
INSERT INTO `sys_oper_log` VALUES ('544', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2013,2028,2014,2017,2034,2016,2029,2018,2033,2030,2019],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 11:16:17', '28');
INSERT INTO `sys_oper_log` VALUES ('545', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2014,2013,2028,2034,2016,2029,2018,2033,2030,2019],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 11:16:28', '32');
INSERT INTO `sys_oper_log` VALUES ('546', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-07-25 10:52:45\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2017,\"menuName\":\"公开/归档操作\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"\",\"perms\":\"ruoyi-jl:file:putFile\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 11:17:00', '19');
INSERT INTO `sys_oper_log` VALUES ('547', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-07-25 10:52:45\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2017,\"menuName\":\"公开/归档操作\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"\",\"perms\":\"ruoyi-jl:file:putfile\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 11:31:21', '15');
INSERT INTO `sys_oper_log` VALUES ('548', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2014,2013,2028,2034,2016,2029,2018,2033,2030,2019],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 11:31:36', '23');
INSERT INTO `sys_oper_log` VALUES ('549', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,4,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,2013,2028,2014,2017,2034,2016,2029,2018,2033,2030,2019,2026,2027,2031],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 11:31:45', '30');
INSERT INTO `sys_oper_log` VALUES ('550', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":34,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 11:36:39', '12');
INSERT INTO `sys_oper_log` VALUES ('551', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":34,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-07-29 11:36:43', '16');
INSERT INTO `sys_oper_log` VALUES ('552', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'xxcommon', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileId\":34,\"params\":{},\"userId\":105}', '{\"msg\":\"本部门文件，无需借阅，请到部门文件中查看\",\"code\":500}', '0', null, '2023-08-01 08:10:54', '14');
INSERT INTO `sys_oper_log` VALUES ('553', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'xxcommon', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-01 08:10:58\",\"deptId\":201,\"fileId\":25,\"params\":{},\"status\":0,\"userId\":105}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-01 08:10:58', '30');
INSERT INTO `sys_oper_log` VALUES ('554', '借阅记录', '2', 'com.ruoyi.system.controller.JlBorrowController.edit()', 'PUT', '1', 'rzadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"id\":40,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-01 08:11:29', '15');
INSERT INTO `sys_oper_log` VALUES ('555', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'xxcommon', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-01 08:23:16\",\"deptId\":200,\"fileId\":35,\"fileName\":\"123\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/01/JL_20230801082310A001.pdf\",\"fileType\":2,\"params\":{},\"status\":0,\"userId\":105}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-01 08:23:16', '14');
INSERT INTO `sys_oper_log` VALUES ('556', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '192.168.27.148', '内网IP', '{\"createTime\":\"2023-08-01 08:24:05\",\"deptId\":200,\"fileId\":36,\"fileName\":\"123\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/01/JL_20230801082402A002.pdf\",\"fileType\":2,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-01 08:24:05', '13');
INSERT INTO `sys_oper_log` VALUES ('557', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-02 09:55:05\",\"deptId\":200,\"fileId\":37,\"fileName\":\"test\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/02/JL_20230802095502A001.docx\",\"fileType\":2,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-02 09:54:41', '73');
INSERT INTO `sys_oper_log` VALUES ('558', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-02 09:55:51\",\"deptId\":200,\"fileId\":38,\"fileName\":\"test\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/02/JL_20230802095549A002.docx\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-02 09:55:27', '67');
INSERT INTO `sys_oper_log` VALUES ('559', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '219.148.143.24', 'XX XX', '{\"createTime\":\"2023-08-03 11:58:19\",\"deptId\":200,\"fileId\":39,\"fileName\":\"测试服务区\",\"filePath\":\"http://121.229.99.128:8081/profile/upload/2023/08/03/JL_20230803115816A001.pdf\",\"fileType\":0,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-03 11:58:19', '34');
INSERT INTO `sys_oper_log` VALUES ('560', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":32,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:14:09', '77');
INSERT INTO `sys_oper_log` VALUES ('561', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":32,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:14:14', '74');
INSERT INTO `sys_oper_log` VALUES ('562', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":37,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:14:59', '82');
INSERT INTO `sys_oper_log` VALUES ('563', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 08:16:09\",\"deptId\":200,\"fileId\":40,\"fileName\":\"111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815081608A001.pdf\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:15:31', '67');
INSERT INTO `sys_oper_log` VALUES ('564', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":40,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:15:40', '69');
INSERT INTO `sys_oper_log` VALUES ('565', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":40,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:17:07', '97');
INSERT INTO `sys_oper_log` VALUES ('566', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":40,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:17:57', '61');
INSERT INTO `sys_oper_log` VALUES ('567', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":40,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:18:26', '62');
INSERT INTO `sys_oper_log` VALUES ('568', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":40,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:18:30', '70');
INSERT INTO `sys_oper_log` VALUES ('569', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 08:22:23\",\"deptId\":200,\"fileId\":41,\"fileName\":\"123\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815082222A002.docx\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:21:44', '65');
INSERT INTO `sys_oper_log` VALUES ('570', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":41,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:21:53', '65');
INSERT INTO `sys_oper_log` VALUES ('571', '文件管理', '3', 'com.ruoyi.system.controller.JlFileController.remove()', 'DELETE', '1', 'admin', null, '/ruoyi-jl/file/37', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:31:47', '67');
INSERT INTO `sys_oper_log` VALUES ('572', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 08:32:33\",\"deptId\":200,\"fileId\":42,\"fileName\":\"111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815083233A003.pdf\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:31:55', '63');
INSERT INTO `sys_oper_log` VALUES ('573', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":42,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:32:00', '64');
INSERT INTO `sys_oper_log` VALUES ('574', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":42,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:32:10', '65');
INSERT INTO `sys_oper_log` VALUES ('575', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":42,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:32:14', '84');
INSERT INTO `sys_oper_log` VALUES ('576', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 08:38:51\",\"deptId\":200,\"fileId\":43,\"fileName\":\"111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815083850A004.docx\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:38:12', '67');
INSERT INTO `sys_oper_log` VALUES ('577', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2013,2028,2014,2017,2034,2016,2029,2018,2033,2030,2019],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:48:33', '388');
INSERT INTO `sys_oper_log` VALUES ('578', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2014,2013,2028,2034,2016,2029,2018,2033,2030,2019],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:50:22', '350');
INSERT INTO `sys_oper_log` VALUES ('579', '借阅记录', '2', 'com.ruoyi.system.controller.JlBorrowController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"id\":33,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:52:41', '68');
INSERT INTO `sys_oper_log` VALUES ('580', '文件管理', '3', 'com.ruoyi.system.controller.JlFileController.remove()', 'DELETE', '1', 'admin', null, '/ruoyi-jl/file/13', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:57:44', '92');
INSERT INTO `sys_oper_log` VALUES ('581', '文件管理', '3', 'com.ruoyi.system.controller.JlFileController.remove()', 'DELETE', '1', 'admin', null, '/ruoyi-jl/file/12', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:57:47', '64');
INSERT INTO `sys_oper_log` VALUES ('582', '文件管理', '3', 'com.ruoyi.system.controller.JlFileController.remove()', 'DELETE', '1', 'admin', null, '/ruoyi-jl/file/11', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:57:51', '66');
INSERT INTO `sys_oper_log` VALUES ('583', '文件管理', '3', 'com.ruoyi.system.controller.JlFileController.remove()', 'DELETE', '1', 'admin', null, '/ruoyi-jl/file/9,8,7,6,4', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:57:59', '63');
INSERT INTO `sys_oper_log` VALUES ('584', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":43,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:58:09', '78');
INSERT INTO `sys_oper_log` VALUES ('585', '借阅记录', '3', 'com.ruoyi.system.controller.JlBorrowController.remove()', 'DELETE', '1', 'admin', null, '/ruoyi-jl/borrow/34', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:58:53', '62');
INSERT INTO `sys_oper_log` VALUES ('586', '借阅记录', '3', 'com.ruoyi.system.controller.JlBorrowController.remove()', 'DELETE', '1', 'admin', null, '/ruoyi-jl/borrow/32', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:59:01', '61');
INSERT INTO `sys_oper_log` VALUES ('587', '借阅记录', '3', 'com.ruoyi.system.controller.JlBorrowController.remove()', 'DELETE', '1', 'admin', null, '/ruoyi-jl/borrow/33', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:59:04', '59');
INSERT INTO `sys_oper_log` VALUES ('588', '借阅记录', '3', 'com.ruoyi.system.controller.JlBorrowController.remove()', 'DELETE', '1', 'admin', null, '/ruoyi-jl/borrow/35', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:59:05', '81');
INSERT INTO `sys_oper_log` VALUES ('589', '借阅记录', '3', 'com.ruoyi.system.controller.JlBorrowController.remove()', 'DELETE', '1', 'admin', null, '/ruoyi-jl/borrow/36', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:59:07', '64');
INSERT INTO `sys_oper_log` VALUES ('590', '借阅记录', '3', 'com.ruoyi.system.controller.JlBorrowController.remove()', 'DELETE', '1', 'admin', null, '/ruoyi-jl/borrow/37', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:59:10', '97');
INSERT INTO `sys_oper_log` VALUES ('591', '借阅记录', '3', 'com.ruoyi.system.controller.JlBorrowController.remove()', 'DELETE', '1', 'admin', null, '/ruoyi-jl/borrow/38', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 08:59:12', '61');
INSERT INTO `sys_oper_log` VALUES ('592', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":43,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 09:34:32', '64');
INSERT INTO `sys_oper_log` VALUES ('593', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":false,\"menuIds\":[4,2014,2013,2028,2034,2016,2029,2018,2033,2030,2019],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 09:36:01', '318');
INSERT INTO `sys_oper_log` VALUES ('594', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2013,2028,2014,2034,2016,2029,2018,2033,2030,2019],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 09:37:45', '301');
INSERT INTO `sys_oper_log` VALUES ('595', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,4,2014,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,2013,2028,2034,2016,2029,2018,2033,2030,2019,2026,2027,2031],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 09:38:20', '303');
INSERT INTO `sys_oper_log` VALUES ('596', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-20 09:59:45\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,4,100,1000,1001,1002,1003,1004,1005,1006,108,500,1039,1040,1041,501,1042,1043,1044,1045,2013,2028,2014,2017,2034,2016,2029,2018,2033,2030,2019,2026,2027,2031],\"params\":{},\"roleId\":100,\"roleKey\":\"dept\",\"roleName\":\"部门管理员\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 09:39:17', '298');
INSERT INTO `sys_oper_log` VALUES ('597', '角色管理', '2', 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', '1', 'admin', null, '/system/role', '127.0.0.1', '内网IP', '{\"admin\":false,\"createTime\":\"2023-07-17 15:13:35\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[4,2014,2013,2028,2034,2016,2029,2018,2033,2030,2019],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":3,\"status\":\"0\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 09:39:25', '335');
INSERT INTO `sys_oper_log` VALUES ('598', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":43,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 09:57:01', '64');
INSERT INTO `sys_oper_log` VALUES ('599', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":43,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 09:57:19', '63');
INSERT INTO `sys_oper_log` VALUES ('600', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":43,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 09:57:28', '64');
INSERT INTO `sys_oper_log` VALUES ('601', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 10:01:11\",\"deptId\":200,\"fileId\":44,\"fileName\":\"1111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815100110A001.docx\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:00:32', '65');
INSERT INTO `sys_oper_log` VALUES ('602', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":44,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:00:36', '66');
INSERT INTO `sys_oper_log` VALUES ('603', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":44,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:00:40', '66');
INSERT INTO `sys_oper_log` VALUES ('604', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":44,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:00:42', '67');
INSERT INTO `sys_oper_log` VALUES ('605', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":44,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:00:51', '67');
INSERT INTO `sys_oper_log` VALUES ('606', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":44,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:01:45', '68');
INSERT INTO `sys_oper_log` VALUES ('607', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":44,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:01:49', '64');
INSERT INTO `sys_oper_log` VALUES ('608', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":44,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:01:52', '63');
INSERT INTO `sys_oper_log` VALUES ('609', '菜单管理', '2', 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', '1', 'admin', null, '/system/menu', '127.0.0.1', '内网IP', '{\"children\":[],\"createTime\":\"2023-07-25 10:52:45\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2017,\"menuName\":\"公开/归档操作\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2014,\"path\":\"\",\"perms\":\"ruoyi-jl:file:put\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:04:37', '97');
INSERT INTO `sys_oper_log` VALUES ('610', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', '17633333114', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 10:07:50\",\"deptId\":201,\"fileId\":45,\"fileName\":\"11111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815100749A001.pdf\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:07:11', '82');
INSERT INTO `sys_oper_log` VALUES ('611', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', '17633333114', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 10:08:15\",\"deptId\":201,\"fileId\":46,\"fileName\":\"1234567\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815100815A002.pdf\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":100}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:07:37', '76');
INSERT INTO `sys_oper_log` VALUES ('612', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":44,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:16:03', '93');
INSERT INTO `sys_oper_log` VALUES ('613', '文件管理', '3', 'com.ruoyi.system.controller.JlFileController.remove()', 'DELETE', '1', 'admin', null, '/ruoyi-jl/file/44,43,42,41,40,36,35,34,32,30', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:21:29', '81');
INSERT INTO `sys_oper_log` VALUES ('614', '文件管理', '3', 'com.ruoyi.system.controller.JlFileController.remove()', 'DELETE', '1', 'admin', null, '/ruoyi-jl/file/29,27,26,23', '127.0.0.1', '内网IP', '{}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:21:33', '74');
INSERT INTO `sys_oper_log` VALUES ('615', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 10:22:43\",\"deptId\":200,\"fileId\":47,\"fileName\":\"111111111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815102242A003.pdf\",\"fileType\":2,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:22:04', '75');
INSERT INTO `sys_oper_log` VALUES ('616', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":47,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:22:11', '77');
INSERT INTO `sys_oper_log` VALUES ('617', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":47,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:22:18', '78');
INSERT INTO `sys_oper_log` VALUES ('618', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileId\":47,\"params\":{},\"userId\":1}', '{\"msg\":\"本部门文件，无需借阅，请到部门文件中查看\",\"code\":500}', '0', null, '2023-08-15 10:22:27', '5');
INSERT INTO `sys_oper_log` VALUES ('619', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":47,\"params\":{},\"status\":0}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:22:33', '75');
INSERT INTO `sys_oper_log` VALUES ('620', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":47,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:22:37', '79');
INSERT INTO `sys_oper_log` VALUES ('621', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 10:23:33\",\"deptId\":200,\"fileId\":48,\"fileName\":\"122222\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815102332A004.docx\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:22:55', '74');
INSERT INTO `sys_oper_log` VALUES ('622', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 10:23:48\",\"deptId\":200,\"fileId\":49,\"fileName\":\"133333\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815102346A005.pdf\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:23:09', '74');
INSERT INTO `sys_oper_log` VALUES ('623', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":47,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:23:16', '77');
INSERT INTO `sys_oper_log` VALUES ('624', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 10:24:06\",\"deptId\":200,\"fileId\":50,\"fileName\":\"1222222223333\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815102406A006.docx\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:23:28', '74');
INSERT INTO `sys_oper_log` VALUES ('625', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 10:25:23\",\"deptId\":200,\"fileId\":51,\"fileName\":\"11111111111111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815102521A007.pdf\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:24:44', '78');
INSERT INTO `sys_oper_log` VALUES ('626', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'xxcommon', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 10:25:58\",\"deptId\":200,\"fileId\":52,\"fileName\":\"1111111111111111\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815102557A008.docx\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":105}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:25:19', '75');
INSERT INTO `sys_oper_log` VALUES ('627', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'xxcommon', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 10:29:03\",\"deptId\":200,\"fileId\":53,\"fileName\":\"123\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815102900A009.docx\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":105}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:28:25', '74');
INSERT INTO `sys_oper_log` VALUES ('628', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 10:30:36\",\"deptId\":200,\"fileId\":54,\"fileName\":\"123\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815103033A012.pdf\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:29:58', '75');
INSERT INTO `sys_oper_log` VALUES ('629', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 10:38:49\",\"deptId\":200,\"fileId\":55,\"fileName\":\"123\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815103848A015.docx\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:38:10', '66');
INSERT INTO `sys_oper_log` VALUES ('630', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":55,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:39:43', '97');
INSERT INTO `sys_oper_log` VALUES ('631', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":54,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:39:46', '66');
INSERT INTO `sys_oper_log` VALUES ('632', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":53,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:39:48', '63');
INSERT INTO `sys_oper_log` VALUES ('633', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":52,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:39:53', '64');
INSERT INTO `sys_oper_log` VALUES ('634', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":47,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:39:57', '65');
INSERT INTO `sys_oper_log` VALUES ('635', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":49,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:39:59', '65');
INSERT INTO `sys_oper_log` VALUES ('636', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":51,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:40:02', '63');
INSERT INTO `sys_oper_log` VALUES ('637', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":50,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:40:04', '62');
INSERT INTO `sys_oper_log` VALUES ('638', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":48,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:40:07', '71');
INSERT INTO `sys_oper_log` VALUES ('639', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 10:40:52\",\"deptId\":200,\"fileId\":56,\"fileName\":\"1333444\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815104052A016.pdf\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:40:14', '65');
INSERT INTO `sys_oper_log` VALUES ('640', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 10:41:00\",\"deptId\":200,\"fileId\":57,\"fileName\":\"123123123\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815104100A017.pdf\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:40:22', '64');
INSERT INTO `sys_oper_log` VALUES ('641', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 10:41:09\",\"deptId\":200,\"fileId\":58,\"fileName\":\"222222222\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815104108A018.pdf\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:40:30', '65');
INSERT INTO `sys_oper_log` VALUES ('642', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":56,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:40:33', '65');
INSERT INTO `sys_oper_log` VALUES ('643', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":57,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:40:36', '63');
INSERT INTO `sys_oper_log` VALUES ('644', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":58,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:40:42', '67');
INSERT INTO `sys_oper_log` VALUES ('645', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'xxcommon', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 10:45:39\",\"deptId\":200,\"fileId\":59,\"fileName\":\"111133333\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815104538A019.docx\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":105}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:45:00', '72');
INSERT INTO `sys_oper_log` VALUES ('646', '文件管理', '1', 'com.ruoyi.system.controller.JlFileController.add()', 'POST', '1', 'xxcommon', null, '/ruoyi-jl/file', '127.0.0.1', '内网IP', '{\"createTime\":\"2023-08-15 10:54:58\",\"deptId\":200,\"fileId\":60,\"fileName\":\"3333\",\"filePath\":\"http://localhost:8080/profile/upload/2023/08/15/JL_20230815105457A020.pdf\",\"fileType\":1,\"params\":{},\"status\":0,\"userId\":105}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:54:19', '65');
INSERT INTO `sys_oper_log` VALUES ('647', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":60,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:55:13', '74');
INSERT INTO `sys_oper_log` VALUES ('648', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":59,\"fileType\":2,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 10:55:17', '74');
INSERT INTO `sys_oper_log` VALUES ('649', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":60,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 11:00:28', '76');
INSERT INTO `sys_oper_log` VALUES ('650', '文件管理', '2', 'com.ruoyi.system.controller.JlFileController.edit()', 'PUT', '1', 'admin', null, '/ruoyi-jl/file/updateFile', '127.0.0.1', '内网IP', '{\"fileId\":59,\"fileType\":1,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 11:00:36', '75');
INSERT INTO `sys_oper_log` VALUES ('651', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'rzadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":201,\"fileId\":25,\"params\":{},\"userId\":103}', '{\"msg\":\"本部门文件，无需借阅，请到部门文件中查看\",\"code\":500}', '0', null, '2023-08-15 11:33:02', '5');
INSERT INTO `sys_oper_log` VALUES ('652', '借阅记录', '2', 'com.ruoyi.system.controller.JlBorrowController.edit()', 'PUT', '1', 'rzadmin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"id\":39,\"params\":{},\"status\":1}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 11:33:08', '78');
INSERT INTO `sys_oper_log` VALUES ('653', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"deptId\":200,\"fileId\":50,\"params\":{},\"userId\":1}', '{\"msg\":\"本部门文件，无需借阅，请到部门文件中查看\",\"code\":500}', '0', null, '2023-08-15 11:34:08', '0');
INSERT INTO `sys_oper_log` VALUES ('654', '借阅记录', '1', 'com.ruoyi.system.controller.JlBorrowController.add()', 'POST', '1', 'admin', null, '/ruoyi-jl/borrow', '127.0.0.1', '内网IP', '{\"fileId\":25,\"params\":{},\"userId\":1}', '{\"msg\":\"请勿重复申请借阅\",\"code\":500}', '0', null, '2023-08-15 11:34:12', '38');
INSERT INTO `sys_oper_log` VALUES ('655', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', '1', 'admin', null, '/system/config', '127.0.0.1', '内网IP', '{\"configId\":5,\"configKey\":\"sys.account.registerUser\",\"configName\":\"账号自助-是否开启用户注册功能\",\"configType\":\"Y\",\"configValue\":\"true\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 15:13:35\",\"params\":{},\"remark\":\"是否开启注册用户功能（true开启，false关闭）\",\"updateBy\":\"admin\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 11:47:53', '179');
INSERT INTO `sys_oper_log` VALUES ('656', '参数管理', '2', 'com.ruoyi.web.controller.system.SysConfigController.edit()', 'PUT', '1', 'admin', null, '/system/config', '127.0.0.1', '内网IP', '{\"configId\":5,\"configKey\":\"sys.account.registerUser\",\"configName\":\"账号自助-是否开启用户注册功能\",\"configType\":\"Y\",\"configValue\":\"false\",\"createBy\":\"admin\",\"createTime\":\"2023-07-17 15:13:35\",\"params\":{},\"remark\":\"是否开启注册用户功能（true开启，false关闭）\",\"updateBy\":\"admin\",\"updateTime\":\"2023-08-15 11:47:53\"}', '{\"msg\":\"操作成功\",\"code\":200}', '0', null, '2023-08-15 11:48:28', '170');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(11) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1', 'ceo', '董事长', '1', '0', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_post` VALUES ('2', 'se', '项目经理', '2', '0', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_post` VALUES ('3', 'hr', '人力资源', '3', '0', 'admin', '2023-07-17 15:13:35', '', null, '');
INSERT INTO `sys_post` VALUES ('4', 'user', '普通员工', '4', '0', 'admin', '2023-07-17 15:13:35', '', null, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(11) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '1', '1', '0', '0', 'admin', '2023-07-17 15:13:35', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '3', '1', '1', '1', '0', '0', 'admin', '2023-07-17 15:13:35', 'admin', '2023-08-15 09:39:24', '普通角色');
INSERT INTO `sys_role` VALUES ('100', '部门管理员', 'dept', '2', '1', '1', '1', '0', '0', 'admin', '2023-07-20 09:59:45', 'admin', '2023-08-15 09:39:16', null);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '2013');
INSERT INTO `sys_role_menu` VALUES ('2', '2014');
INSERT INTO `sys_role_menu` VALUES ('2', '2016');
INSERT INTO `sys_role_menu` VALUES ('2', '2018');
INSERT INTO `sys_role_menu` VALUES ('2', '2019');
INSERT INTO `sys_role_menu` VALUES ('2', '2028');
INSERT INTO `sys_role_menu` VALUES ('2', '2029');
INSERT INTO `sys_role_menu` VALUES ('2', '2030');
INSERT INTO `sys_role_menu` VALUES ('2', '2033');
INSERT INTO `sys_role_menu` VALUES ('2', '2034');
INSERT INTO `sys_role_menu` VALUES ('100', '1');
INSERT INTO `sys_role_menu` VALUES ('100', '4');
INSERT INTO `sys_role_menu` VALUES ('100', '100');
INSERT INTO `sys_role_menu` VALUES ('100', '108');
INSERT INTO `sys_role_menu` VALUES ('100', '500');
INSERT INTO `sys_role_menu` VALUES ('100', '501');
INSERT INTO `sys_role_menu` VALUES ('100', '1000');
INSERT INTO `sys_role_menu` VALUES ('100', '1001');
INSERT INTO `sys_role_menu` VALUES ('100', '1002');
INSERT INTO `sys_role_menu` VALUES ('100', '1003');
INSERT INTO `sys_role_menu` VALUES ('100', '1004');
INSERT INTO `sys_role_menu` VALUES ('100', '1005');
INSERT INTO `sys_role_menu` VALUES ('100', '1006');
INSERT INTO `sys_role_menu` VALUES ('100', '1039');
INSERT INTO `sys_role_menu` VALUES ('100', '1040');
INSERT INTO `sys_role_menu` VALUES ('100', '1041');
INSERT INTO `sys_role_menu` VALUES ('100', '1042');
INSERT INTO `sys_role_menu` VALUES ('100', '1043');
INSERT INTO `sys_role_menu` VALUES ('100', '1044');
INSERT INTO `sys_role_menu` VALUES ('100', '1045');
INSERT INTO `sys_role_menu` VALUES ('100', '2013');
INSERT INTO `sys_role_menu` VALUES ('100', '2014');
INSERT INTO `sys_role_menu` VALUES ('100', '2016');
INSERT INTO `sys_role_menu` VALUES ('100', '2017');
INSERT INTO `sys_role_menu` VALUES ('100', '2018');
INSERT INTO `sys_role_menu` VALUES ('100', '2019');
INSERT INTO `sys_role_menu` VALUES ('100', '2026');
INSERT INTO `sys_role_menu` VALUES ('100', '2027');
INSERT INTO `sys_role_menu` VALUES ('100', '2028');
INSERT INTO `sys_role_menu` VALUES ('100', '2029');
INSERT INTO `sys_role_menu` VALUES ('100', '2030');
INSERT INTO `sys_role_menu` VALUES ('100', '2031');
INSERT INTO `sys_role_menu` VALUES ('100', '2033');
INSERT INTO `sys_role_menu` VALUES ('100', '2034');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '200', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-08-15 14:52:56', 'admin', '2023-07-17 15:13:35', '', '2023-08-15 14:52:18', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '2', '127.0.0.1', '2023-07-17 15:13:35', 'admin', '2023-07-17 15:13:35', '', null, '测试员');
INSERT INTO `sys_user` VALUES ('100', '201', '17633333114', '人资普通员工', '00', '', '17633333114', '0', '', '$2a$10$XkhFaAlHUq5GRFyTysRnyOVPTEedUrGFc9zllaB01nbANXzJJLcLe', '0', '0', '127.0.0.1', '2023-08-15 10:07:35', 'admin', '2023-07-18 09:03:18', 'admin', '2023-08-15 10:06:55', null);
INSERT INTO `sys_user` VALUES ('101', '200', 'dept', 'deptadmin', '00', '', '', '0', '', '$2a$10$o0J2wYAIKuESuxvXY/DLHeHvkozVXq7rLetlmMRkw5P8x7hsEE.V.', '0', '2', '127.0.0.1', '2023-07-28 09:21:09', 'admin', '2023-07-20 10:00:38', 'admin', '2023-07-28 09:21:08', null);
INSERT INTO `sys_user` VALUES ('102', '201', '人资管理员', 'rzadmin', '00', '', '', '0', '', '$2a$10$k0JW1CK68YwyLuGqvCiKwe9saaj1wuVh9KxAOUPK3V65XeUqWLvhC', '0', '2', '', null, 'admin', '2023-07-28 09:28:20', '', null, null);
INSERT INTO `sys_user` VALUES ('103', '201', 'rzadmin', '人资管理员', '00', '', '', '0', '', '$2a$10$dsCNIDC8DTM.qpxx8o40fuEdR1E6tU3oW2LbxDilaiLr8IjQdARHe', '0', '0', '127.0.0.1', '2023-08-15 11:33:23', 'admin', '2023-07-28 09:30:12', '', '2023-08-15 11:32:44', null);
INSERT INTO `sys_user` VALUES ('104', '200', 'xxadmin', '信息部管理员', '00', '', '', '0', '', '$2a$10$7D8kUcH7evcrBtf31U02vuKxBHdgJal73d04tNWW8OmI4EernWOTa', '0', '0', '127.0.0.1', '2023-08-15 10:11:31', 'admin', '2023-07-28 09:30:32', '', '2023-08-15 10:10:52', null);
INSERT INTO `sys_user` VALUES ('105', '200', 'xxcommon', '信息部员工', '00', '', '', '0', '', '$2a$10$6GeQjOAFXUe39s8Rz3qb7eTP4d/OjbXsG.YmcC4C/0mW/FeAL8PnK', '0', '0', '127.0.0.1', '2023-08-15 11:01:27', 'admin', '2023-07-28 09:31:08', '', '2023-08-15 11:00:48', null);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('100', '2');
INSERT INTO `sys_user_role` VALUES ('103', '100');
INSERT INTO `sys_user_role` VALUES ('104', '100');
INSERT INTO `sys_user_role` VALUES ('105', '2');
