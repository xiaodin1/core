/*
Navicat MySQL Data Transfer

Source Server         : 本地数据库
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : zhonglv

Target Server Type    : MYSQL
Target Server Version : 50699
File Encoding         : 65001

Date: 2016-05-15 14:23:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
`id`  varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单编号' ,
`name`  varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称' ,
`url`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址' ,
`pid`  varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '父级菜单编号' ,
`iconcls`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标' ,
`createTime`  datetime NOT NULL COMMENT '创建时间' ,
`updateTime`  datetime NOT NULL COMMENT '修改时间' ,
`orderBy`  bigint(20) NOT NULL COMMENT '排序' ,
`isDel`  char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT '是否已删除' ,
`description`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述' ,
PRIMARY KEY (`id`),
FOREIGN KEY (`pid`) REFERENCES `sys_menu` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `sys_menu_pid` (`pid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_online`;
CREATE TABLE `sys_online` (
`userId`  varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录用户ID' ,
`ip`  varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录IP地址' ,
`loginTime`  datetime NOT NULL COMMENT '登录时间' ,
PRIMARY KEY (`userId`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of sys_online
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_resources
-- ----------------------------
DROP TABLE IF EXISTS `sys_resources`;
CREATE TABLE `sys_resources` (
`id`  varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源ID' ,
`name`  varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源名称' ,
`url`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源路径URL' ,
`pid`  varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '父级节点ID' ,
`createTime`  datetime NOT NULL COMMENT '创建时间' ,
`updateTime`  datetime NOT NULL COMMENT '修改时间' ,
`orderBy`  bigint(20) NOT NULL COMMENT '排序ID' ,
`isDel`  char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT '是否已删除' ,
`description`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述' ,
PRIMARY KEY (`id`),
FOREIGN KEY (`pid`) REFERENCES `sys_resources` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `sys_resources_pid` (`pid`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of sys_resources
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
`id`  varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色ID' ,
`name`  varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称' ,
`createTime`  datetime NOT NULL COMMENT '创建时间' ,
`updateTime`  datetime NOT NULL COMMENT '修改时间' ,
`orderBy`  bigint(20) NOT NULL COMMENT '排序ID' ,
`idDel`  char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N' COMMENT '是否已经删除' ,
`description`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_role_resources
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_resources`;
CREATE TABLE `sys_role_resources` (
`id`  varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID' ,
`roleId`  varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID' ,
`resourcesId`  varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '资源ID' ,
PRIMARY KEY (`id`),
FOREIGN KEY (`resourcesId`) REFERENCES `sys_resources` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`roleId`) REFERENCES `sys_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `sys_role_resources_roleid` (`roleId`) USING BTREE ,
INDEX `sys_role_resources_resourcesId` (`resourcesId`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of sys_role_resources
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
`id`  varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户主键' ,
`name`  varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名' ,
`loginName`  varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录名' ,
`password`  varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录密码' ,
`status`  int(11) NOT NULL COMMENT '用户状态' ,
`sex`  bit(1) NULL DEFAULT NULL COMMENT '性别' ,
`address`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系地址' ,
`createTime`  datetime NOT NULL COMMENT '创建时间' ,
`updateTime`  datetime NOT NULL COMMENT '修改时间' ,
`orderBy`  bigint(20) NOT NULL COMMENT '排序' ,
`isDel`  char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'N' COMMENT '是否已删除' ,
`description`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述' ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci

;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES ('1461925041176003', '测试', 'test', 'test', '0', '\0', null, '2016-04-29 18:17:54', '2016-04-29 18:17:59', '1', 'N', '');
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
`id`  varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID' ,
`userId`  varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户ID' ,
`roleId`  varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色ID' ,
PRIMARY KEY (`id`),
FOREIGN KEY (`roleId`) REFERENCES `sys_role` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`userId`) REFERENCES `sys_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `sys_user_role_userId` (`userId`) USING BTREE ,
INDEX `sys_user_role_roleId` (`roleId`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci

;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
COMMIT;
