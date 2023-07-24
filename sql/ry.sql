/*
Navicat MySQL Data Transfer

Source Server         : 1
Source Server Version : 80026
Source Host           : localhost:3306
Source Database       : ry

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2023-07-24 11:51:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table` (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='代码生成业务表';

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES ('2', 'jl_file', '文件管理', null, null, 'JlFile', 'crud', 'com.ruoyi.system', 'ruoyi-jl', 'file', '文件管理', 'HZL', '0', '/', '{}', 'admin', '2023-07-17 16:19:35', '', '2023-07-21 10:15:25', null);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column` (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint DEFAULT NULL COMMENT '归属表编号',
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
  `sort` int DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='代码生成业务表字段';

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

-- ----------------------------
-- Table structure for jl_file
-- ----------------------------
DROP TABLE IF EXISTS `jl_file`;
CREATE TABLE `jl_file` (
  `file_id` bigint NOT NULL AUTO_INCREMENT COMMENT '文件ID',
  `file_name` varchar(255) NOT NULL COMMENT '文件名',
  `file_path` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '文件路径',
  `file_type` int NOT NULL COMMENT '文件类型',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  `status` int NOT NULL COMMENT '文件状态',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of jl_file
-- ----------------------------
INSERT INTO `jl_file` VALUES ('3', '面试指南', 'http://localhost:8080/profile/upload/2023/07/19/面试指北_20230719141553A001.pdf', '0', '1', '201', '0', '2023-07-19 14:15:55');
INSERT INTO `jl_file` VALUES ('4', '测试pdf', 'http://localhost:8080/profile/upload/2023/07/20/111_20230720092541A001.pdf', '0', '1', '200', '0', '2023-07-20 09:25:44');
INSERT INTO `jl_file` VALUES ('5', 'test', 'http://localhost:8080/profile/upload/2023/07/20/111_20230720114718A001.pdf', '0', '100', '201', '0', '2023-07-20 11:47:19');
INSERT INTO `jl_file` VALUES ('6', '111', 'http://localhost:8080/profile/upload/2023/07/21/111_20230721080443A001.pdf', '0', '1', '200', '0', '2023-07-21 08:04:44');
INSERT INTO `jl_file` VALUES ('7', 'test', 'http://localhost:8080/profile/upload/2023/07/21/111_20230721080834A001.pdf', '0', '1', '200', '0', '2023-07-21 08:08:35');
INSERT INTO `jl_file` VALUES ('8', '111', 'http://localhost:8080/profile/upload/2023/07/21/123_20230721082616A001.pdf', '0', '1', '200', '0', '2023-07-21 08:26:17');
INSERT INTO `jl_file` VALUES ('9', 'TEST', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721082835A001.pdf', '0', '1', '200', '0', '2023-07-21 08:28:36');
INSERT INTO `jl_file` VALUES ('10', '文档', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721083010A002.pdf', '0', '1', '201', '0', '2023-07-21 08:30:12');
INSERT INTO `jl_file` VALUES ('11', 'test', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721104015A005.pdf', '0', '1', '200', '0', '2023-07-21 10:40:16');
INSERT INTO `jl_file` VALUES ('12', '111', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721105324A009.pdf', '0', '1', '200', '0', '2023-07-21 10:53:27');
INSERT INTO `jl_file` VALUES ('13', '111', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721105933A010.pdf', '0', '1', '200', '0', '2023-07-21 10:59:34');
INSERT INTO `jl_file` VALUES ('14', '11111111', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721110435A011.pdf', '0', '1', '200', '0', '2023-07-21 11:04:36');
INSERT INTO `jl_file` VALUES ('15', '222', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721110636A012.pdf', '0', '1', '200', '0', '2023-07-21 11:06:38');
INSERT INTO `jl_file` VALUES ('16', '111', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721110654A013.pdf', '0', '1', '200', '0', '2023-07-21 11:06:59');
INSERT INTO `jl_file` VALUES ('17', '111', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721110805A014.pdf', '0', '1', '200', '0', '2023-07-21 11:08:06');
INSERT INTO `jl_file` VALUES ('18', '1212312', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721110830A015.pdf', '0', '1', '200', '0', '2023-07-21 11:08:33');
INSERT INTO `jl_file` VALUES ('19', '1', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721110848A016.pdf', '0', '1', '200', '0', '2023-07-21 11:08:50');
INSERT INTO `jl_file` VALUES ('20', '11111', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721113135A001.pdf', '0', '1', '200', '0', '2023-07-21 11:31:37');
INSERT INTO `jl_file` VALUES ('21', '11111', 'http://localhost:8080/profile/upload/2023/07/21/JL_20230721153447A001.pdf', '0', '101', '200', '0', '2023-07-21 15:34:48');
INSERT INTO `jl_file` VALUES ('22', '1111', 'http://localhost:8080/profile/upload/2023/07/24/JL_20230724082651A001.pdf', '1', '1', '200', '0', '2023-07-24 08:26:52');
INSERT INTO `jl_file` VALUES ('23', '11111', 'http://localhost:8080/profile/upload/2023/07/24/JL_20230724100844A001.pdf', '2', '1', '200', '0', '2023-07-24 10:08:45');
INSERT INTO `jl_file` VALUES ('24', 'test', 'http://localhost:8080/profile/upload/2023/07/24/JL_20230724101659A002.pdf', '1', '100', '201', '0', '2023-07-24 10:17:00');
INSERT INTO `jl_file` VALUES ('25', '公共部门文件测试', 'http://localhost:8080/profile/upload/2023/07/24/JL_20230724104741A001.pdf', '2', '100', '201', '0', '2023-07-24 10:47:42');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Blob类型的触发器表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='日历信息表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Cron类型的触发器表';

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
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='已触发的触发器表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='任务详细信息表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='存储的悲观锁信息表';

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='暂停的触发器表';

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
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='调度器状态表';

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
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='简单触发器的信息表';

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
  `int_prop_1` int DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='同步机制的行锁表';

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
  `next_fire_time` bigint DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='触发器详细信息表';

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb3 COMMENT='参数配置表';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-07-17 15:13:35', '', null, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES ('2', '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-07-17 15:13:35', '', null, '初始化密码 123456');
INSERT INTO `sys_config` VALUES ('3', '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-07-17 15:13:35', '', null, '深色主题theme-dark，浅色主题theme-light');
INSERT INTO `sys_config` VALUES ('4', '账号自助-验证码开关', 'sys.account.captchaEnabled', 'false', 'Y', 'admin', '2023-07-17 15:13:35', 'admin', '2023-07-21 11:18:58', '是否开启验证码功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('5', '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-07-17 15:13:35', '', null, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES ('6', '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2023-07-17 15:13:35', '', null, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept` (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
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
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb3 COMMENT='部门表';

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
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int DEFAULT '0' COMMENT '字典排序',
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
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb3 COMMENT='字典数据表';

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

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb3 COMMENT='字典类型表';

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

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job` (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb3 COMMENT='定时任务调度表';

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
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='定时任务调度日志表';

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
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
) ENGINE=InnoDB AUTO_INCREMENT=287 DEFAULT CHARSET=utf8mb3 COMMENT='系统访问记录';

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

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
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
) ENGINE=InnoDB AUTO_INCREMENT=2017 DEFAULT CHARSET=utf8mb3 COMMENT='菜单权限表';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '系统管理', '0', '1', 'system', null, '', '1', '0', 'M', '0', '0', '', 'system', 'admin', '2023-07-17 15:13:35', '', null, '系统管理目录');
INSERT INTO `sys_menu` VALUES ('2', '系统监控', '0', '2', 'monitor', null, '', '1', '0', 'M', '0', '0', '', 'monitor', 'admin', '2023-07-17 15:13:35', '', null, '系统监控目录');
INSERT INTO `sys_menu` VALUES ('3', '系统工具', '0', '3', 'tool', null, '', '1', '0', 'M', '0', '0', '', 'tool', 'admin', '2023-07-17 15:13:35', '', null, '系统工具目录');
INSERT INTO `sys_menu` VALUES ('4', 'JL', '0', '4', 'ruoyi-jl', null, null, '1', '0', 'M', '0', '0', null, '#', 'admin', '2023-07-17 15:13:35', 'admin', null, '');
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
INSERT INTO `sys_menu` VALUES ('2006', '文件管理', '4', '1', 'file', 'ruoyi-jl/file/index', null, '1', '0', 'C', '1', '0', 'ruoyi-jl:file:list', 'clipboard', 'admin', '2023-07-17 16:21:13', 'admin', '2023-07-24 10:12:46', '文件管理菜单');
INSERT INTO `sys_menu` VALUES ('2007', '文件管理查询', '2006', '1', '#', '', null, '1', '0', 'F', '0', '0', 'ruoyi-jl:file:query', '#', 'admin', '2023-07-17 16:21:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('2008', '文件管理新增', '2006', '2', '#', '', null, '1', '0', 'F', '0', '0', 'ruoyi-jl:file:add', '#', 'admin', '2023-07-17 16:21:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('2009', '文件管理修改', '2006', '3', '#', '', null, '1', '0', 'F', '0', '0', 'ruoyi-jl:file:edit', '#', 'admin', '2023-07-17 16:21:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('2010', '文件管理删除', '2006', '4', '#', '', null, '1', '0', 'F', '0', '0', 'ruoyi-jl:file:remove', '#', 'admin', '2023-07-17 16:21:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('2011', '文件管理导出', '2006', '5', '#', '', null, '1', '0', 'F', '0', '0', 'ruoyi-jl:file:export', '#', 'admin', '2023-07-17 16:21:13', '', null, '');
INSERT INTO `sys_menu` VALUES ('2013', '私人文件', '4', '4', 'private', 'ruoyi-jl/file/private', null, '1', '0', 'C', '0', '0', 'ruoyi-jl:file:privatelist', 'user', 'admin', '2023-07-21 08:56:33', 'admin', '2023-07-24 10:13:02', '');
INSERT INTO `sys_menu` VALUES ('2014', '部门文件', '4', '3', 'dept', 'ruoyi-jl/file/dept', null, '1', '0', 'C', '0', '0', 'ruoyi-jl:file:deptlist', 'tree', 'admin', '2023-07-24 08:21:22', 'admin', '2023-07-24 10:12:56', '');
INSERT INTO `sys_menu` VALUES ('2016', '公共文件', '4', '2', 'public', 'ruoyi-jl/file/public', null, '1', '0', 'C', '0', '0', 'ruoyi-jl:file:publiclist', 'list', 'admin', '2023-07-24 09:40:14', 'admin', '2023-07-24 09:55:24', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice` (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COMMENT='通知公告表';

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
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8mb3 COMMENT='操作日志记录';

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

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post` (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='岗位信息表';

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
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
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
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb3 COMMENT='角色信息表';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '1', '1', '1', '1', '0', '0', 'admin', '2023-07-17 15:13:35', '', null, '超级管理员');
INSERT INTO `sys_role` VALUES ('2', '普通角色', 'common', '3', '1', '1', '1', '0', '0', 'admin', '2023-07-17 15:13:35', 'admin', '2023-07-24 10:16:13', '普通角色');
INSERT INTO `sys_role` VALUES ('100', '部门管理员', 'dept', '2', '1', '1', '1', '0', '0', 'admin', '2023-07-20 09:59:45', 'admin', '2023-07-24 10:16:22', null);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='角色和部门关联表';

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='角色和菜单关联表';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('2', '4');
INSERT INTO `sys_role_menu` VALUES ('2', '2006');
INSERT INTO `sys_role_menu` VALUES ('2', '2007');
INSERT INTO `sys_role_menu` VALUES ('2', '2008');
INSERT INTO `sys_role_menu` VALUES ('2', '2009');
INSERT INTO `sys_role_menu` VALUES ('2', '2010');
INSERT INTO `sys_role_menu` VALUES ('2', '2011');
INSERT INTO `sys_role_menu` VALUES ('2', '2013');
INSERT INTO `sys_role_menu` VALUES ('2', '2014');
INSERT INTO `sys_role_menu` VALUES ('2', '2016');
INSERT INTO `sys_role_menu` VALUES ('100', '4');
INSERT INTO `sys_role_menu` VALUES ('100', '2006');
INSERT INTO `sys_role_menu` VALUES ('100', '2007');
INSERT INTO `sys_role_menu` VALUES ('100', '2008');
INSERT INTO `sys_role_menu` VALUES ('100', '2009');
INSERT INTO `sys_role_menu` VALUES ('100', '2010');
INSERT INTO `sys_role_menu` VALUES ('100', '2011');
INSERT INTO `sys_role_menu` VALUES ('100', '2013');
INSERT INTO `sys_role_menu` VALUES ('100', '2014');
INSERT INTO `sys_role_menu` VALUES ('100', '2016');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint DEFAULT NULL COMMENT '部门ID',
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb3 COMMENT='用户信息表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '200', 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2023-07-24 11:28:40', 'admin', '2023-07-17 15:13:35', '', '2023-07-24 11:28:40', '管理员');
INSERT INTO `sys_user` VALUES ('2', '105', 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '2', '127.0.0.1', '2023-07-17 15:13:35', 'admin', '2023-07-17 15:13:35', '', null, '测试员');
INSERT INTO `sys_user` VALUES ('100', '201', '17633333114', '胡子龙', '00', '', '17633333114', '0', '', '$2a$10$XkhFaAlHUq5GRFyTysRnyOVPTEedUrGFc9zllaB01nbANXzJJLcLe', '0', '0', '127.0.0.1', '2023-07-24 10:16:43', 'admin', '2023-07-18 09:03:18', 'admin', '2023-07-24 10:16:43', null);
INSERT INTO `sys_user` VALUES ('101', '200', 'dept', 'deptadmin', '00', '', '', '0', '', '$2a$10$o0J2wYAIKuESuxvXY/DLHeHvkozVXq7rLetlmMRkw5P8x7hsEE.V.', '0', '0', '127.0.0.1', '2023-07-21 15:34:35', 'admin', '2023-07-20 10:00:38', 'admin', '2023-07-21 15:34:35', null);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='用户与岗位关联表';

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1', '1');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='用户和角色关联表';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1', '1');
INSERT INTO `sys_user_role` VALUES ('100', '2');
INSERT INTO `sys_user_role` VALUES ('101', '100');
