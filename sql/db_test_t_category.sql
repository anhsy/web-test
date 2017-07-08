-- MySQL dump 10.13  Distrib 5.7.9, for linux-glibc2.5 (x86_64)
--
-- Host: 127.0.0.1    Database: db_test
-- ------------------------------------------------------
-- Server version	5.7.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_category`
--

DROP TABLE IF EXISTS `t_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `pid` int(11) NOT NULL COMMENT '父id',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `level` int(11) DEFAULT NULL COMMENT '级别',
  `title` varchar(500) NOT NULL COMMENT '显示标题',
  `href` varchar(500) DEFAULT NULL COMMENT '链接',
  `remark` text COMMENT '标示',
  `short` varchar(500) DEFAULT NULL COMMENT '链接短标示',
  `hide` int(11) DEFAULT '0' COMMENT '是否隐藏0显示,1隐藏',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_category`
--

LOCK TABLES `t_category` WRITE;
/*!40000 ALTER TABLE `t_category` DISABLE KEYS */;
INSERT INTO `t_category` VALUES (1,0,1,1,'首页','/','','',0),(2,0,3,1,'自动化运维工具','','','',1),(4,2,2,1,'服务器操作系统自动安装','/ai',NULL,'',0),(5,2,1,1,'域名解析自动化','/',NULL,'',1),(6,2,3,1,'IDC机房可视化管理','/idcshow',NULL,'',0),(7,2,4,1,'操作系统安装源切换','/pexsw',NULL,'',0),(8,2,5,1,'CDN专属工具','/cdn','','',0),(9,0,4,1,'监控平台','',NULL,'',1),(10,0,5,1,'资源管理','',NULL,'',1),(11,0,2,1,'服务菜单','','','',1),(12,0,6,1,'项目管理','',NULL,'',1),(13,0,7,1,'健康报告','','','',1),(14,0,8,1,'报表平台','',NULL,'',1),(15,0,9,1,'日常管理','',NULL,'',1),(16,0,10,1,'自助化工具','','','',1),(17,9,1,1,'MNC网络监控','/ua/mnc',NULL,'',0),(18,9,2,1,'运维监控平台','http://mdc.jd.com',NULL,'',0),(19,10,1,1,'服务器上架管理','',NULL,'',1),(20,10,2,1,'服务器资源管理','/rms',NULL,'',0),(21,10,3,1,'固定资产管理','/zc','','',0),(22,10,4,1,'IP地址资源管理','/idc',NULL,'',0),(23,10,5,1,'服务器信息查询','/rms/search',NULL,'',1),(26,14,1,1,'CDN日志分析报表','/cdnstatistics','','',0),(27,14,2,1,'服务器报表','/serverstat',NULL,'',0),(28,14,3,1,'资源使用率报表','http://mdc.jd.com',NULL,'',0),(29,15,1,1,'周期性反馈工作填报','/cycle','','',0),(34,11,1,1,'应用服务申请','/flow/index/yw','','yw',1),(35,34,1,1,'OS配置修改申请','/soxos','线上操作系统环境参数的配置变更','',0),(36,34,2,1,'操作系统账户申请','/soxopsys','操作系统账户的添加、变更以及删除','',0),(37,34,3,1,'堡垒机权限申请','/soxfortress','堡垒机权限的添加、修改以及下线','',1),(38,34,4,1,'堡垒机账号申请','/soxfortressapply','堡垒机账号的申请','',1),(39,34,5,1,'堡垒机账号申请','/soxfortresschange','堡垒机账号及权限的申请以及变更','',0),(40,34,6,1,'运维脚本上线/变更处理申请','/soxscriptoc','运维人员编写的脚本上线以及变更操作','',0),(41,34,7,1,'运维脚本下线处理申请','/soxscriptoff','运维人员编写的脚本下线操作','',0),(43,0,2,1,'数据库流程','/flow/index/dba','','dba',0),(44,11,3,1,'网络服务申请','/flow/index/network','','network',1),(45,11,4,1,'基础设施服务申请','/flow/index/base','','base',1),(46,11,5,1,'安全流程工具','/flow/index/security','','security',1),(47,11,6,1,'工单管理系统','/event','','event',1),(48,47,1,1,'工单管理系统','/event','为运维部量化运维工作，改进运维质量，提高用户满意度，提供了工具支持','',0),(49,45,1,1,'硬件资源申请','/resapply','你可以在线申请服务器并可实时查询申请进度和资源满足情况','',0),(50,45,2,1,'人员进入京东机房','','','',1),(51,43,2,1,'DDL变更申请','/soxdbaddl','对线上数据结构的增/删/改操作(包括：CREATE、ALTER、TRUNCATE、DROP、RENAME、COMMENT、ENABLE TRIGGER、UPDATE STATISTICS等)','',0),(52,43,3,1,'DDL变更申请（测试环境）','/soxdbaddltest','测试环境里的数据库DDL变更','',0),(53,43,5,1,'DML变更申请','/soxdbadml','对线上数据记录进行增/删/改操作(包括：INSERT、UPDATE、DELETE等）','',0),(54,43,7,1,'数据迁移申请（试运行）','http://itsv.jd.com/forms/itsm-ap2/JDYZ%3ADATA%3AMigration/Default-View/?mode=CREATE&cacheid=8844b8b9','同构、异构数据库迁移申请','',2),(55,43,10,1,'数据库参数变更流程(试运行)','/flow/index/dbaparam','DBA部门内数据库参数变更流程','dbaparam',0),(56,43,11,1,'数据库账号管理流程(试运行)','/flow/index/dbaaccount','数据库帐号申请,修改,删除流程,数据库账号清单复核','dbaaccount',0),(57,43,9,1,'查询机访问管理流程','http://dbquery.jd.com/','经过申请权限后，可以查询生产线上非敏感数据，如SQL Server的、MySQL的、Oracle的','',0),(58,43,12,1,'堡垒机帐号管理流程(试运行)','/flow/index/dbafortress','堡垒机帐号申请流程','dbafortress',0),(59,43,13,1,'数据库批处理管理流程(试运行)','/flow/index/dbabatch','OS上定期执行脚本任务的申请、变更、卸载流程','dbabatch',0),(60,43,14,1,'应用程序线上数据访问授权管理流程','','<span class=\'label label-success\'>即将开放</span>应用程序申请访问线上数据库流程','',2),(61,43,6,1,'DML变更申请补录','/soxdmlbook','所有特殊情况下通过邮件申请的DML变更需要在此进行补录。','',0),(62,43,4,1,'DDL变更申请补录','/soxddlbook','所有特殊情况下通过邮件申请的DDL变更需要在此进行补录。','',0),(63,44,1,1,'堡垒机权限申请','/soxnetfortress','堡垒机权限的添加、修改以及下线','',1),(64,44,2,1,'堡垒机账号管理','/soxnetfortresschange','堡垒机账号及权限的申请以及变更','',0),(65,12,1,1,'项目管理','/pmp','','pmp',0),(66,0,11,1,'合同管理','','','',1),(67,66,1,1,'合同管理','/cd/contract','','',1),(68,66,2,1,'合同管理报表','/cd/contractstatistics','','',1),(69,34,8,1,'测试环境域名申请','/soxdns','测试环境域名申请入口','',0),(70,55,1,1,'参数变更申请','/soxdbaparam','DBA部门内数据库参数变更流程','',0),(71,55,2,1,'参数变更年度审阅','/soxdbaparamreview','DBA经理对DBA提交的数据库参数年度检查表进行审阅','',0),(72,55,3,1,'参数变更年度检查','/soxdbaparamcheck','DBA执行检查，记录异常处理情况','',0),(73,56,1,1,'数据库账号管理流程(试运行)','/soxdbaaccount','数据库账号申请，修改，删除流程','',0),(74,56,2,1,'数据库账号清单复核','/soxdbaaccountrecheck','数据库账号清单复核表','',0),(75,56,3,1,'数据库账号查询','/soxdbaaccountsearch','数据库账号查询','',0),(76,58,1,1,'堡垒机帐号管理流程(试运行)','/soxdbafortress','堡垒机帐号申请','',0),(77,58,2,1,'信息检索','/soxdbafortressshow','堡垒机帐号申请信息检索功','',0),(78,59,1,1,'批处理申请','/soxdbabatch','OS上定期执行脚本任务的申请、变更、卸载流程','',0),(79,59,2,1,'批处理范围表','/soxdbabatchrange','记录批处理申请与批处理所在服务器IP的对应关系','',1),(80,59,3,1,'批处理作业情况日检查表','/soxdbabatchcheck','DBA在此生成或查询批处理日检查表，执行检查，并对异常处理进行记录说明。','',0),(81,59,4,1,'批处理月度检查表','/soxdbabatchcheck/manager','DBA经理每月在此检查DBA的日批处理检查表，并标注已检查信息。','',0),(82,43,15,1,'数据库备份策略修订申请(试运行)','/soxdbabackuprevision','DBA部门内数据库备份策略修订申请流程','',2),(83,43,16,1,'数据库备份服务流程(试运行)','/soxdbabackup','数据库备份策略修订申请流程','',2),(84,43,17,1,'敏感数据提取登记(试运行)','/soxdsensitivedatabook','敏感数据提取登记','',0),(85,43,18,1,'数据库安装服务流程(试运行)','/soxdbainstall','本流程以线上数据库连同其下操作系统安装申请为起点，以数据库管理员安装完成为终点，指导数据库连同其下操作系统安装全过程。','',0),(86,43,19,1,'数据恢复服务流程(试运行)','/flow/index/datarecovercheck','数据恢复测试流程、数据恢复测试检查表、数据恢复测试审核表','datarecovercheck',2),(87,86,1,1,'数据库恢复服务流程(试运行)','/soxdatarecover','数据库恢复服务流程','',0),(88,86,2,1,'数据库恢复(含恢复测试)检查表','/soxdatarecovercheck','数据恢复检查表','',0),(89,86,3,1,'数据库恢复(含恢复测试)审核表','/soxdatarecovercheck/managerreview','数据恢复测试审核表','',0),(90,43,20,1,'数据库同步服务流程(试运行)','/soxdbsync','数据库同步服务流程','',2),(91,43,21,1,'数据库迁移服务流程(试运行)','/soxdbmove','数据库迁移服务流程','',0),(92,43,22,1,'数据库升级服务流程(试运行)','/Soxdbaupgrade','数据库补丁和小版本升级服务流程','',0),(93,66,3,1,'合同管理','/cd?action=/contract/index.action','','',0),(94,66,4,1,'合同管理报表','/cd?action=/ContractStatistics/index.action','','',0),(95,45,3,1,'测试资源申请','/cd?action=/testResource/index.action','你可以在线申请测试资源并可实时查询申请进度和资源满足情况','',0),(96,43,23,1,'数据库监控','/flow/index/soxdbamonitor','数据库流程监控、数据库检查表监控','soxdbamonitor',0),(97,45,4,1,'设备资源申请','/cd?action=/deviceApply/index.action','你可以在线申请设备资源并可实时查询申请进度和资源满足情况','',0),(98,45,5,1,'配件资源申请','/cd?action=/accessoriesResource/index.action','你可以在线申请配件资源并可实时查询申请进度和资源满足情况','',0),(99,43,24,1,'历史库的历史库DML变更服务流程(试运行)','/soxdbahistorydml','本流程是为了保证历史库的历史库DML变更的安全性和及时性','',0),(100,96,1,1,'数据库流程监控','/soxdbamonitor','数据库流程监控','',0),(101,96,2,1,'数据库检查表监控','/soxdbamonitor/checkindex','数据库检查表监控','',0),(102,2,6,1,'CDN自动化运维工具','/CdnLog','cdn管理员','',0),(103,102,1,1,'VIP资源生成','/lbip','VIP管理-资源生成','',0),(104,102,2,1,'VIP资源管理','/lbipdomain','VIP资源管理','',0),(105,102,3,1,'域名VIP查询','/lbvipsearch','域名VIP管理系统-域名VIP查询','',0),(106,102,4,1,'VIP变更权限申请','/soxlbvipapply','域名VIP管理系统-VIP变更权限申请与赋权','',0),(107,102,5,1,'VIP变更赋权','/lbvippoweradmin','VIP变更赋权-赋权管理','',0),(108,102,6,1,'VIP变更','/vip','VIP变更','',0),(109,102,7,1,'集中控制台','/Lbscript','用户分组，脚本管理，脚本执行','',0),(110,102,8,1,'脚本申请','/Soxlbscript','集中控制台脚本申请','',1),(111,16,1,1,'VIP自助化工具','/flow/index/lb2','负载均衡\n','lb2',0),(112,111,1,1,'VIP变更权限申请','/soxlbvipapply','VIP变更权限申请','',0),(113,111,2,1,'VIP变更','/vip','VIP变更','',0),(114,13,1,1,'网络健康报告','http://mdc.jd.com','','',0),(115,13,2,1,'CDN日志分析','/CdnLog','','',0),(116,2,7,1,'DNS自动化运维工具','/gslb','','',0),(117,11,7,1,'网络健康报告','http://mdc.jd.com','','',1),(118,11,8,1,'CDN日志健康分析报告','/CdnLog/pageview?test=1','','',1),(119,11,9,1,'VIP自助服务','/soxlbvipapply','','',1),(120,2,8,1,'VIP自动化运维工具','/soxlbvipapply','管理员使用','',0),(121,2,9,1,'监控中心','http://mdc.jd.com','','',0),(122,2,10,1,'业务关联关系查询','http://eye.jd.com','','',0),(123,66,5,1,'供应商管理','','','',1),(125,2,11,1,'DNS质量监控','/dnsmon/index','','',0),(126,2,12,1,'机房自动化切换','/dnsAuto','','',0),(127,2,13,1,'CDN自动化切换','/CdnAuto','','',0),(128,120,1,1,'运维提升工具','/soxlbvipapply','负载均衡-运维提升工具','lb',1),(129,128,1,1,'VIP变更权限申请','/soxlbvipapply','域名VIP管理系统-VIP变更权限申请与赋权','',1),(130,128,2,1,'脚本申请','/Soxlbscript','集中控制台脚本申请','',1),(131,11,10,1,'服务器信息查询','/machine','服务器信息查询(我运维的、我管理的、其他查询)','',1),(132,2,14,1,'DNS日志分析工具','http://ops.jd.com/dnsicat/index','','DNS日志分析工具',0),(133,43,25,1,'数据库服务器申请流程','/flow/index/dbserver','数据库服务器申请流程','dbserver',0),(134,43,26,1,'IO卡申请流程','/soxiocard','IO卡申请流程',NULL,2),(136,0,99,1,'数据库工具','/flow/index/dbutil','数据库工具','dbutil',0),(137,136,1,1,'Mysql BI离线授权','/Soxmysqlauthorization','MySQL自动授权',NULL,2),(138,43,8,1,'数据迁移申请（试运行）','/soxdbmigration','同构、异构数据库迁移申请',NULL,0),(139,0,100,1,'数据库管理','http://jmysql.jd.com',NULL,NULL,0),(140,0,101,1,'数据库报表','/flow/index/dbreport','数据库报表功能模块','dbreport',0),(141,140,1,1,'DDL申请明细','/reportddlapplydetail','DDL申请明细',NULL,0),(142,140,2,1,'DDL状态统计','/reportddlstatus','DDL状态统计',NULL,0),(143,140,3,1,'DDL申请部门统计','/reportddldepartment','DDL申请部门统计',NULL,0),(144,140,4,1,'DML申请明细','/reportdmlapplydetail','DML申请明细',NULL,0),(145,140,5,1,'DML状态统计','/reportdmlstatus','DML状态统计',NULL,0),(146,140,6,1,'DML申请部门统计','/reportdmldepartment','DML申请部门统计',NULL,0),(150,43,1,1,'数据库自助上线服务','/soxdbfree','数据库自助上线服务','数据库自助上线服务',2),(151,133,99,1,'数据库服务器申请流程','/soxdbserver','数据库服务器申请流程','',0),(152,136,2,1,'密码管理','/Soxzabbix','密码服务','',0),(156,133,103,1,'数据库服务器查询','/soxdbssearch','数据库服务器查询功能','',0),(157,133,104,1,'数据库服务器管理','/soxdbsedit','数据库服务器信息编辑','',1),(160,133,105,1,'服务器资源信息批处理','/soxdbsserverbatch','服务器资源信息批处理',NULL,0),(161,43,1,1,'上线流程申请','/flow/index/dbaddlparam','上线流程申请 ','dbaddlparam',1),(164,161,28,1,'空库初始化','/soxdbfree2','空库初始化',NULL,0),(166,171,30,1,'DDL变更申请','/soxdbaddl','对线上数据结构的增/删/改操作(包括：CREATE、ALTER、TRUNCATE、DROP、RENAME、COMMENT、ENABLE TRIGGER、UPDATE STATISTICS等)',NULL,0),(167,171,31,1,'DDL变成申请（测试环境）','/soxdbaddltest','测试环境里的数据库DDL变更',NULL,0),(168,171,32,1,'DML变更申请','/soxdbadml','对线上数据记录进行增/删/改操作(包括：INSERT、UPDATE、DELETE等）',NULL,0),(169,43,33,1,'上线流程申请（测试环境）','/flow/index/dbaonlientestparam','上线流程申请（测试环境） ','dbaonlientestparam',0),(170,43,1,1,'空库初始化','/soxdbfree2','空库初始化','空库初始化',2),(171,161,29,1,'普通上线（使用）','/flow/index/soxdbageneralparpm','普通上线（使用）','soxdbageneralparpm',0),(172,161,30,1,'普通上线','/soxdbaonlineauto','普通上线',NULL,0),(173,43,1,1,'上线流程申请（新）','/soxdbaipcheck','上线流程申请（新）',NULL,0),(174,43,1,1,'提数申请服务流程','/soxdbaextractiondata','提数申请服务流程',NULL,0),(175,140,7,1,'DBA处理工单汇总','/reportdbaworkordersum','DBA处理工单汇总',NULL,0),(192,0,NULL,NULL,'',NULL,NULL,NULL,0),(193,43,103,1,'(订单|用户)敏感数据安全提数人审批流程','http://dev.dbsv3.jd.com/Flow/DataApplyUser','安全提数人审批流程',NULL,0),(194,43,103,1,'(订单|用户)敏感数据安全提数人审批流程','http://dev.dbsv3.jd.com/Flow/DataApplyUser','安全提数人审批流程',NULL,0),(195,43,1,1,'慢查询申请审批流程','http://dev.dbsv3.jd.com/flow/Soxslowloguser','慢查询申请审批流程',NULL,0),(196,43,121,1,'数据库切换确认流程','http://dbsv3.jd.com/Flow/DbChange/','数据库切换确认流程','数据库切换',0);
/*!40000 ALTER TABLE `t_category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-08 16:20:05
