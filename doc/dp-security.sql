/*
Navicat MySQL Data Transfer

Source Server         : mysql192.168.180.134
Source Server Version : 50548
Source Host           : 192.168.180.134:3306
Source Database       : dp-security

Target Server Type    : MYSQL
Target Server Version : 50548
File Encoding         : 65001

Date: 2017-08-15 22:09:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `operation` varchar(50) DEFAULT NULL COMMENT '用户操作',
  `time` int(11) DEFAULT NULL COMMENT '相应时间',
  `method` varchar(200) DEFAULT NULL COMMENT '请求方法',
  `params` varchar(5000) DEFAULT NULL COMMENT '请求参数',
  `ip` varchar(64) DEFAULT NULL COMMENT 'IP地址',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='系统日志';

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('36', '1', 'admin', '清空日志', '8', 'net.chenlin.dp.common.controller.SysLogController.batchRemoveAll()', null, '0:0:0:0:0:0:0:1', '2017-08-15 11:30:18');
INSERT INTO `sys_log` VALUES ('37', '1', 'admin', '登录', '105', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 11:38:15');
INSERT INTO `sys_log` VALUES ('38', '1', 'admin', '登录', '123', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 14:39:35');
INSERT INTO `sys_log` VALUES ('39', '1', 'admin', '登录', '112', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 14:48:35');
INSERT INTO `sys_log` VALUES ('40', '1', 'admin', '登录', '140', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 15:47:52');
INSERT INTO `sys_log` VALUES ('41', '1', 'admin', '登录', '178', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 15:49:33');
INSERT INTO `sys_log` VALUES ('42', '1', 'admin', '登录', '173', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 15:56:40');
INSERT INTO `sys_log` VALUES ('43', '1', 'admin', '登录', '108', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 16:42:56');
INSERT INTO `sys_log` VALUES ('44', '1', 'admin', '登录', '106', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 16:43:44');
INSERT INTO `sys_log` VALUES ('45', '1', 'admin', '新增菜单', '6', 'net.chenlin.dp.shiro.controller.SysMenuController.save()', '{}', '0:0:0:0:0:0:0:1', '2017-08-15 16:51:35');
INSERT INTO `sys_log` VALUES ('46', '1', 'admin', '新增菜单', '8', 'net.chenlin.dp.shiro.controller.SysMenuController.save()', '{\"name\":\"刷新\",\"orderNum\":0,\"parentId\":4,\"parentName\":\"通用字典\",\"perms\":\"sys:macro:list\",\"type\":2}', '0:0:0:0:0:0:0:1', '2017-08-15 16:55:33');
INSERT INTO `sys_log` VALUES ('47', '1', 'admin', '新增菜单', '10', 'net.chenlin.dp.shiro.controller.SysMenuController.save()', '{\"name\":\"新增\",\"orderNum\":0,\"parentId\":4,\"parentName\":\"通用字典\",\"perms\":\"sys:macro:save\",\"type\":2}', '0:0:0:0:0:0:0:1', '2017-08-15 16:55:52');
INSERT INTO `sys_log` VALUES ('48', '1', 'admin', '新增菜单', '6', 'net.chenlin.dp.shiro.controller.SysMenuController.save()', '{\"name\":\"编辑\",\"orderNum\":0,\"parentId\":4,\"parentName\":\"通用字典\",\"perms\":\"sys:macro:edit\",\"type\":2}', '0:0:0:0:0:0:0:1', '2017-08-15 16:56:09');
INSERT INTO `sys_log` VALUES ('49', '1', 'admin', '新增菜单', '4', 'net.chenlin.dp.shiro.controller.SysMenuController.save()', '{\"name\":\"删除\",\"orderNum\":0,\"parentId\":4,\"parentName\":\"通用字典\",\"perms\":\"sys:macro:remove\",\"type\":2}', '0:0:0:0:0:0:0:1', '2017-08-15 16:56:29');
INSERT INTO `sys_log` VALUES ('50', '1', 'admin', '分配权限', '13', 'net.chenlin.dp.shiro.controller.SysRoleController.updateRoleAuthorization()', '{\"menuIdList\":[1,5,4,32,33,34,35,27,28,29,30,3,6,11,12,13,14,24,25,26,7,15,16,17,18,19,2,20,21,22,23],\"remark\":\"【系统内置】\",\"roleId\":1,\"roleName\":\"超级管理员\",\"roleSign\":\"admin\"}', '0:0:0:0:0:0:0:1', '2017-08-15 16:57:40');
INSERT INTO `sys_log` VALUES ('51', '1', 'admin', '登录', '129', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 19:55:42');
INSERT INTO `sys_log` VALUES ('52', '1', 'admin', '新增字典', '9', 'net.chenlin.dp.base.controller.SysMacroController.save()', '{\"name\":\"客户关系\",\"orderNum\":1,\"status\":1,\"type\":0,\"typeId\":0,\"typeName\":\"一级目录\",\"value\":\" clientManage\"}', '0:0:0:0:0:0:0:1', '2017-08-15 19:58:24');
INSERT INTO `sys_log` VALUES ('53', '1', 'admin', '新增字典', '10', 'net.chenlin.dp.base.controller.SysMacroController.save()', '{\"name\":\"产品信息\",\"orderNum\":0,\"status\":1,\"type\":0,\"typeId\":5,\"typeName\":\"客户关系\",\"value\":\"clientProduct\"}', '0:0:0:0:0:0:0:1', '2017-08-15 19:59:06');
INSERT INTO `sys_log` VALUES ('54', '1', 'admin', '新增字典', '8', 'net.chenlin.dp.base.controller.SysMacroController.save()', '{\"name\":\"基础班\",\"orderNum\":0,\"status\":1,\"type\":1,\"typeId\":6,\"typeName\":\"产品信息\",\"value\":\"1\"}', '0:0:0:0:0:0:0:1', '2017-08-15 20:06:59');
INSERT INTO `sys_log` VALUES ('55', '1', 'admin', '删除字典', '85', 'net.chenlin.dp.base.controller.SysMacroController.batchRemove()', '[7]', '0:0:0:0:0:0:0:1', '2017-08-15 20:07:07');
INSERT INTO `sys_log` VALUES ('56', '-1', '获取用户信息为空', '登录', '1', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 20:13:55');
INSERT INTO `sys_log` VALUES ('57', '1', 'admin', '登录', '67', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 20:14:02');
INSERT INTO `sys_log` VALUES ('58', '1', 'admin', '登录', '118', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 20:17:47');
INSERT INTO `sys_log` VALUES ('59', '1', 'admin', '修改字典', '7', 'net.chenlin.dp.base.controller.SysMacroController.update()', '{\"macroId\":3,\"name\":\"正常\",\"orderNum\":0,\"remark\":\"用户可登录\",\"status\":0,\"type\":1,\"typeId\":2,\"typeName\":\"用户状态\",\"value\":\"1\"}', '0:0:0:0:0:0:0:1', '2017-08-15 20:23:29');
INSERT INTO `sys_log` VALUES ('60', '1', 'admin', '修改字典', '9', 'net.chenlin.dp.base.controller.SysMacroController.update()', '{\"macroId\":4,\"name\":\"禁用\",\"orderNum\":0,\"remark\":\"禁止用户登录\",\"status\":0,\"type\":1,\"typeId\":2,\"typeName\":\"用户状态\",\"value\":\"0\"}', '0:0:0:0:0:0:0:1', '2017-08-15 20:23:49');
INSERT INTO `sys_log` VALUES ('61', '1', 'admin', '禁用账户', '10', 'net.chenlin.dp.shiro.controller.SysUserController.updateUserDisable()', '[1]', '0:0:0:0:0:0:0:1', '2017-08-15 20:41:47');
INSERT INTO `sys_log` VALUES ('62', '1', 'admin', '启用账户', '4', 'net.chenlin.dp.shiro.controller.SysUserController.updateUserEnable()', '[1]', '0:0:0:0:0:0:0:1', '2017-08-15 20:41:51');
INSERT INTO `sys_log` VALUES ('63', '1', 'admin', '修改字典', '5', 'net.chenlin.dp.base.controller.SysMacroController.update()', '{\"macroId\":4,\"name\":\"禁用\",\"orderNum\":0,\"remark\":\"禁止用户登录\",\"status\":1,\"type\":1,\"typeId\":2,\"typeName\":\"用户状态\",\"value\":\"0\"}', '0:0:0:0:0:0:0:1', '2017-08-15 20:44:42');
INSERT INTO `sys_log` VALUES ('64', '-1', null, '退出系统', '5', 'net.chenlin.dp.shiro.controller.SysLoginController.logout()', null, '0:0:0:0:0:0:0:1', '2017-08-15 20:45:21');
INSERT INTO `sys_log` VALUES ('65', '1', 'admin', '登录', '105', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 21:22:14');
INSERT INTO `sys_log` VALUES ('66', '-1', null, '退出系统', '2', 'net.chenlin.dp.shiro.controller.SysLoginController.logout()', null, '0:0:0:0:0:0:0:1', '2017-08-15 21:22:24');
INSERT INTO `sys_log` VALUES ('67', '2', 'test', '登录', '4', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"test\"', '0:0:0:0:0:0:0:1', '2017-08-15 21:22:37');
INSERT INTO `sys_log` VALUES ('68', '-1', null, '退出系统', '0', 'net.chenlin.dp.shiro.controller.SysLoginController.logout()', null, '0:0:0:0:0:0:0:1', '2017-08-15 21:22:42');
INSERT INTO `sys_log` VALUES ('69', '1', 'admin', '登录', '2', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 21:22:47');
INSERT INTO `sys_log` VALUES ('70', '1', 'admin', '分配权限', '106', 'net.chenlin.dp.shiro.controller.SysRoleController.updateRoleAuthorization()', '{\"menuIdList\":[1,5,4,32,33,34,35,27,28,29,30,3,6,11,12,13,14,24,25,26,7,15,16,17,18,19,2,20,21,22,23],\"roleId\":38,\"roleName\":\"测试角色\",\"roleSign\":\"test\"}', '0:0:0:0:0:0:0:1', '2017-08-15 21:23:07');
INSERT INTO `sys_log` VALUES ('71', '-1', null, '退出系统', '0', 'net.chenlin.dp.shiro.controller.SysLoginController.logout()', null, '0:0:0:0:0:0:0:1', '2017-08-15 21:23:11');
INSERT INTO `sys_log` VALUES ('72', '2', 'test', '登录', '2', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"test\"', '0:0:0:0:0:0:0:1', '2017-08-15 21:23:23');
INSERT INTO `sys_log` VALUES ('73', '2', 'test', '登录', '115', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"test\"', '0:0:0:0:0:0:0:1', '2017-08-15 21:25:05');
INSERT INTO `sys_log` VALUES ('74', '-1', null, '退出系统', '2', 'net.chenlin.dp.shiro.controller.SysLoginController.logout()', null, '0:0:0:0:0:0:0:1', '2017-08-15 21:25:26');
INSERT INTO `sys_log` VALUES ('75', '1', 'admin', '登录', '105', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 21:34:30');
INSERT INTO `sys_log` VALUES ('76', '1', 'admin', '登录', '106', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 21:39:34');
INSERT INTO `sys_log` VALUES ('77', '1', 'admin', '禁用账户', '54', 'net.chenlin.dp.shiro.controller.SysUserController.updateUserDisable()', '[1]', '0:0:0:0:0:0:0:1', '2017-08-15 21:39:48');
INSERT INTO `sys_log` VALUES ('78', '1', 'admin', '启用账户', '6', 'net.chenlin.dp.shiro.controller.SysUserController.updateUserEnable()', '[1]', '0:0:0:0:0:0:0:1', '2017-08-15 21:39:52');
INSERT INTO `sys_log` VALUES ('79', '1', 'admin', '删除用户', '8', 'net.chenlin.dp.shiro.controller.SysUserController.batchRemove()', '[1]', '0:0:0:0:0:0:0:1', '2017-08-15 21:39:57');
INSERT INTO `sys_log` VALUES ('80', '1', 'admin', '新增用户', '10', 'net.chenlin.dp.shiro.controller.SysUserController.save()', '{\"password\":\"33808479d49ca8a3cdc93d4f976d1e3d\",\"roleIdList\":[1],\"status\":1,\"userId\":3,\"userIdCreate\":1,\"username\":\"admin\"}', '0:0:0:0:0:0:0:1', '2017-08-15 21:40:39');
INSERT INTO `sys_log` VALUES ('81', '1', 'admin', '修改用户', '7', 'net.chenlin.dp.shiro.controller.SysUserController.update()', '{\"email\":\"admin@example.com\",\"mobile\":\"123456\",\"password\":\"33808479d49ca8a3cdc93d4f976d1e3d\",\"roleIdList\":[1],\"status\":1,\"userId\":3,\"username\":\"admin\"}', '0:0:0:0:0:0:0:1', '2017-08-15 21:41:00');
INSERT INTO `sys_log` VALUES ('82', '-1', null, '退出系统', '1', 'net.chenlin.dp.shiro.controller.SysLoginController.logout()', null, '0:0:0:0:0:0:0:1', '2017-08-15 21:42:07');
INSERT INTO `sys_log` VALUES ('83', '1', 'admin', '登录', '3', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 21:42:13');
INSERT INTO `sys_log` VALUES ('84', '1', 'admin', '登录', '108', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 21:44:12');
INSERT INTO `sys_log` VALUES ('85', '1', 'admin', '登录', '103', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 21:49:14');
INSERT INTO `sys_log` VALUES ('86', '1', 'admin', '分配权限', '11', 'net.chenlin.dp.shiro.controller.SysRoleController.updateRoleAuthorization()', '{\"menuIdList\":[1,5,4,32,33,34,35,27,28,29,30,3,6,11,12,13,14,24,25,26,7,15,16,17,18,19,2,20,21,22,23],\"roleId\":38,\"roleName\":\"测试角色\",\"roleSign\":\"test\"}', '0:0:0:0:0:0:0:1', '2017-08-15 21:50:30');
INSERT INTO `sys_log` VALUES ('87', '1', 'admin', '删除菜单', '7', 'net.chenlin.dp.shiro.controller.SysMenuController.remove()', '[5]', '0:0:0:0:0:0:0:1', '2017-08-15 21:52:14');
INSERT INTO `sys_log` VALUES ('88', '1', 'admin', '登录', '117', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 21:58:51');
INSERT INTO `sys_log` VALUES ('89', '1', 'admin', '登录', '109', 'net.chenlin.dp.shiro.controller.SysLoginController.login()', '\"admin\"', '0:0:0:0:0:0:0:1', '2017-08-15 22:03:15');
INSERT INTO `sys_log` VALUES ('90', '1', 'admin', '新增菜单', '10', 'net.chenlin.dp.shiro.controller.SysMenuController.save()', '{\"icon\":\"fa fa-eercast\",\"name\":\"123123\",\"orderNum\":0,\"parentId\":0,\"type\":0}', '0:0:0:0:0:0:0:1', '2017-08-15 22:03:39');
INSERT INTO `sys_log` VALUES ('91', '-1', null, '退出系统', '2', 'net.chenlin.dp.shiro.controller.SysLoginController.logout()', null, '0:0:0:0:0:0:0:1', '2017-08-15 22:04:53');

-- ----------------------------
-- Table structure for sys_macro
-- ----------------------------
DROP TABLE IF EXISTS `sys_macro`;
CREATE TABLE `sys_macro` (
  `macro_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type_id` bigint(255) DEFAULT NULL COMMENT '父级id',
  `name` varchar(50) DEFAULT NULL COMMENT '名称',
  `value` varchar(2000) DEFAULT NULL COMMENT '值',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态，0：隐藏   1：显示',
  `type` tinyint(20) DEFAULT NULL COMMENT '类型,0:目录，1:参数配置',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`macro_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='通用字典表';

-- ----------------------------
-- Records of sys_macro
-- ----------------------------
INSERT INTO `sys_macro` VALUES ('1', '0', '系统参数', null, '1', '0', '0', null, '2017-08-15 14:51:27', null);
INSERT INTO `sys_macro` VALUES ('2', '1', '用户状态', 'userStatus', '1', '0', '0', null, '2017-08-15 14:51:30', null);
INSERT INTO `sys_macro` VALUES ('3', '2', '正常', '1', '0', '1', '0', '用户可登录', '2017-08-15 14:52:48', '2017-08-15 20:23:29');
INSERT INTO `sys_macro` VALUES ('4', '2', '禁用', '0', '1', '1', '0', '禁止用户登录', '2017-08-15 14:52:51', '2017-08-15 20:44:42');
INSERT INTO `sys_macro` VALUES ('5', '0', '客户关系', ' clientManage', '1', '0', '1', null, '2017-08-15 19:58:24', null);
INSERT INTO `sys_macro` VALUES ('6', '5', '产品信息', 'clientProduct', '1', '0', '0', null, '2017-08-15 19:59:06', null);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) DEFAULT NULL COMMENT '父菜单ID，一级菜单为0',
  `name` varchar(50) DEFAULT NULL COMMENT '菜单名称',
  `url` varchar(200) DEFAULT NULL COMMENT '菜单URL',
  `perms` varchar(500) DEFAULT NULL COMMENT '授权(多个用逗号分隔，如：user:list,user:create)',
  `type` int(11) DEFAULT NULL COMMENT '类型   0：目录   1：菜单   2：按钮',
  `icon` varchar(50) DEFAULT NULL COMMENT '菜单图标',
  `order_num` int(11) DEFAULT NULL COMMENT '排序',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '0', '基础管理', null, '', '0', 'fa fa-coffee', '0', '2017-08-09 22:49:47', null);
INSERT INTO `sys_menu` VALUES ('2', '3', '系统菜单', 'base/menu/list.html', null, '1', 'fa fa-th-list', '2', '2017-08-09 22:55:15', null);
INSERT INTO `sys_menu` VALUES ('3', '0', '系统管理', null, null, '0', 'fa fa-desktop', '1', '2017-08-09 23:06:55', '2017-08-14 14:13:43');
INSERT INTO `sys_menu` VALUES ('4', '1', '通用字典', 'base/macro/list.html', null, '1', 'fa fa-book', '1', '2017-08-09 23:06:58', '2017-08-14 10:46:53');
INSERT INTO `sys_menu` VALUES ('6', '3', '用户管理', 'base/user/list.html', null, '1', 'fa fa-user', '0', '2017-08-10 14:12:11', null);
INSERT INTO `sys_menu` VALUES ('7', '3', '角色管理', 'base/role/list.html', null, '1', 'fa fa-paw', '1', '2017-08-10 14:13:19', null);
INSERT INTO `sys_menu` VALUES ('11', '6', '刷新', null, 'sys:user:list', '2', null, '0', '2017-08-14 10:51:05', null);
INSERT INTO `sys_menu` VALUES ('12', '6', '新增', null, 'sys:user:save', '2', null, '0', '2017-08-14 10:51:35', null);
INSERT INTO `sys_menu` VALUES ('13', '6', '编辑', null, 'sys:user:edit', '2', null, '0', '2017-08-14 10:52:06', null);
INSERT INTO `sys_menu` VALUES ('14', '6', '删除', null, 'sys:user:remove', '2', null, '0', '2017-08-14 10:52:24', null);
INSERT INTO `sys_menu` VALUES ('15', '7', '刷新', null, 'sys:role:list', '2', null, '0', '2017-08-14 10:56:37', null);
INSERT INTO `sys_menu` VALUES ('16', '7', '新增', null, 'sys:role:save', '2', null, '0', '2017-08-14 10:57:02', null);
INSERT INTO `sys_menu` VALUES ('17', '7', '编辑', null, 'sys:user:edit', '2', null, '0', '2017-08-14 10:57:31', null);
INSERT INTO `sys_menu` VALUES ('18', '7', '删除', null, 'sys:role:remove', '2', null, '0', '2017-08-14 10:57:50', null);
INSERT INTO `sys_menu` VALUES ('19', '7', '分配权限', null, 'sys:role:authorize', '2', null, '0', '2017-08-14 10:58:55', null);
INSERT INTO `sys_menu` VALUES ('20', '2', '刷新', null, 'sys:menu:list', '2', null, '0', '2017-08-14 10:59:32', null);
INSERT INTO `sys_menu` VALUES ('21', '2', '新增', null, 'sys:menu:save', '2', null, '0', '2017-08-14 10:59:56', null);
INSERT INTO `sys_menu` VALUES ('22', '2', '编辑', null, 'sys:menu:edit', '2', null, '0', '2017-08-14 11:00:26', null);
INSERT INTO `sys_menu` VALUES ('23', '2', '删除', null, 'sys:menu:remove', '2', null, '0', '2017-08-14 11:00:58', null);
INSERT INTO `sys_menu` VALUES ('24', '6', '启用', null, 'sys:user:enable', '2', null, '0', '2017-08-14 17:27:18', null);
INSERT INTO `sys_menu` VALUES ('25', '6', '停用', null, 'sys:user:disable', '2', null, '0', '2017-08-14 17:27:43', null);
INSERT INTO `sys_menu` VALUES ('26', '6', '重置密码', null, 'sys:user:resetPassword', '2', null, '0', '2017-08-14 17:28:34', null);
INSERT INTO `sys_menu` VALUES ('27', '1', '系统日志', 'base/log/list.html', null, '1', 'fa fa-warning', '2', '2017-08-14 22:11:53', null);
INSERT INTO `sys_menu` VALUES ('28', '27', '刷新', null, 'sys:log:list', '2', null, '0', '2017-08-14 22:30:22', null);
INSERT INTO `sys_menu` VALUES ('29', '27', '删除', null, 'sys:log:remove', '2', null, '0', '2017-08-14 22:30:43', null);
INSERT INTO `sys_menu` VALUES ('30', '27', '清空', null, 'sys:log:clear', '2', null, '0', '2017-08-14 22:31:02', null);
INSERT INTO `sys_menu` VALUES ('32', '4', '刷新', null, 'sys:macro:list', '2', null, '0', '2017-08-15 16:55:33', null);
INSERT INTO `sys_menu` VALUES ('33', '4', '新增', null, 'sys:macro:save', '2', null, '0', '2017-08-15 16:55:52', null);
INSERT INTO `sys_menu` VALUES ('34', '4', '编辑', null, 'sys:macro:edit', '2', null, '0', '2017-08-15 16:56:09', null);
INSERT INTO `sys_menu` VALUES ('35', '4', '删除', null, 'sys:macro:remove', '2', null, '0', '2017-08-15 16:56:29', null);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(100) DEFAULT NULL COMMENT '角色名称',
  `role_sign` varchar(100) DEFAULT NULL COMMENT '角色标识',
  `remark` varchar(100) DEFAULT NULL COMMENT '备注',
  `user_id_create` bigint(255) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1', '超级管理员', 'admin', '【系统内置】', '2', '2017-08-12 00:43:52', '2017-08-12 19:14:59');
INSERT INTO `sys_role` VALUES ('38', '测试角色', 'test', null, '1', '2017-08-14 15:35:33', null);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  `menu_id` bigint(20) DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=367 DEFAULT CHARSET=utf8 COMMENT='角色与菜单对应关系';

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('274', '1', '1');
INSERT INTO `sys_role_menu` VALUES ('276', '1', '4');
INSERT INTO `sys_role_menu` VALUES ('277', '1', '32');
INSERT INTO `sys_role_menu` VALUES ('278', '1', '33');
INSERT INTO `sys_role_menu` VALUES ('279', '1', '34');
INSERT INTO `sys_role_menu` VALUES ('280', '1', '35');
INSERT INTO `sys_role_menu` VALUES ('281', '1', '27');
INSERT INTO `sys_role_menu` VALUES ('282', '1', '28');
INSERT INTO `sys_role_menu` VALUES ('283', '1', '29');
INSERT INTO `sys_role_menu` VALUES ('284', '1', '30');
INSERT INTO `sys_role_menu` VALUES ('285', '1', '3');
INSERT INTO `sys_role_menu` VALUES ('286', '1', '6');
INSERT INTO `sys_role_menu` VALUES ('287', '1', '11');
INSERT INTO `sys_role_menu` VALUES ('288', '1', '12');
INSERT INTO `sys_role_menu` VALUES ('289', '1', '13');
INSERT INTO `sys_role_menu` VALUES ('290', '1', '14');
INSERT INTO `sys_role_menu` VALUES ('291', '1', '24');
INSERT INTO `sys_role_menu` VALUES ('292', '1', '25');
INSERT INTO `sys_role_menu` VALUES ('293', '1', '26');
INSERT INTO `sys_role_menu` VALUES ('294', '1', '7');
INSERT INTO `sys_role_menu` VALUES ('295', '1', '15');
INSERT INTO `sys_role_menu` VALUES ('296', '1', '16');
INSERT INTO `sys_role_menu` VALUES ('297', '1', '17');
INSERT INTO `sys_role_menu` VALUES ('298', '1', '18');
INSERT INTO `sys_role_menu` VALUES ('299', '1', '19');
INSERT INTO `sys_role_menu` VALUES ('300', '1', '2');
INSERT INTO `sys_role_menu` VALUES ('301', '1', '20');
INSERT INTO `sys_role_menu` VALUES ('302', '1', '21');
INSERT INTO `sys_role_menu` VALUES ('303', '1', '22');
INSERT INTO `sys_role_menu` VALUES ('304', '1', '23');
INSERT INTO `sys_role_menu` VALUES ('336', '38', '1');
INSERT INTO `sys_role_menu` VALUES ('338', '38', '4');
INSERT INTO `sys_role_menu` VALUES ('339', '38', '32');
INSERT INTO `sys_role_menu` VALUES ('340', '38', '33');
INSERT INTO `sys_role_menu` VALUES ('341', '38', '34');
INSERT INTO `sys_role_menu` VALUES ('342', '38', '35');
INSERT INTO `sys_role_menu` VALUES ('343', '38', '27');
INSERT INTO `sys_role_menu` VALUES ('344', '38', '28');
INSERT INTO `sys_role_menu` VALUES ('345', '38', '29');
INSERT INTO `sys_role_menu` VALUES ('346', '38', '30');
INSERT INTO `sys_role_menu` VALUES ('347', '38', '3');
INSERT INTO `sys_role_menu` VALUES ('348', '38', '6');
INSERT INTO `sys_role_menu` VALUES ('349', '38', '11');
INSERT INTO `sys_role_menu` VALUES ('350', '38', '12');
INSERT INTO `sys_role_menu` VALUES ('351', '38', '13');
INSERT INTO `sys_role_menu` VALUES ('352', '38', '14');
INSERT INTO `sys_role_menu` VALUES ('353', '38', '24');
INSERT INTO `sys_role_menu` VALUES ('354', '38', '25');
INSERT INTO `sys_role_menu` VALUES ('355', '38', '26');
INSERT INTO `sys_role_menu` VALUES ('356', '38', '7');
INSERT INTO `sys_role_menu` VALUES ('357', '38', '15');
INSERT INTO `sys_role_menu` VALUES ('358', '38', '16');
INSERT INTO `sys_role_menu` VALUES ('359', '38', '17');
INSERT INTO `sys_role_menu` VALUES ('360', '38', '18');
INSERT INTO `sys_role_menu` VALUES ('361', '38', '19');
INSERT INTO `sys_role_menu` VALUES ('362', '38', '2');
INSERT INTO `sys_role_menu` VALUES ('363', '38', '20');
INSERT INTO `sys_role_menu` VALUES ('364', '38', '21');
INSERT INTO `sys_role_menu` VALUES ('365', '38', '22');
INSERT INTO `sys_role_menu` VALUES ('366', '38', '23');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  `email` varchar(100) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(100) DEFAULT NULL COMMENT '手机号',
  `status` tinyint(255) DEFAULT NULL COMMENT '状态 0:禁用，1:正常',
  `user_id_create` bigint(255) DEFAULT NULL COMMENT '创建用户id',
  `gmt_create` datetime DEFAULT NULL COMMENT '创建时间',
  `gmt_modified` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', '33808479d49ca8a3cdc93d4f976d1e3d', 'admin@example.com', '123456', '1', '1', '2017-08-15 21:40:39', '2017-08-15 21:41:00');
INSERT INTO `sys_user` VALUES ('2', 'test', '3a447dc3b0b83930f08c55d76c205048', null, null, '1', '1', '2017-08-14 13:43:05', '2017-08-14 21:15:36');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `role_id` bigint(20) DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='用户与角色对应关系';

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('44', '2', '38');
INSERT INTO `sys_user_role` VALUES ('46', '1', '1');
