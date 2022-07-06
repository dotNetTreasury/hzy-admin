/*
 Navicat Premium Data Transfer

 Source Server         : 本地_SqlServer
 Source Server Type    : SQL Server
 Source Server Version : 14001000
 Source Host           : .:1433
 Source Catalog        : hzy_admin_sqlserver_20220705
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 14001000
 File Encoding         : 65001

 Date: 06/07/2022 10:50:24
*/


-- ----------------------------
-- Table structure for flow
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flow]') AND type IN ('U'))
	DROP TABLE [dbo].[flow]
GO

CREATE TABLE [dbo].[flow] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime  NULL,
  [Number] int  NULL,
  [Code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[flow] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序号',
'SCHEMA', N'dbo',
'TABLE', N'flow',
'COLUMN', N'Number'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'flow',
'COLUMN', N'Code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程名称',
'SCHEMA', N'dbo',
'TABLE', N'flow',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'备注',
'SCHEMA', N'dbo',
'TABLE', N'flow',
'COLUMN', N'Remark'
GO


-- ----------------------------
-- Records of flow
-- ----------------------------

-- ----------------------------
-- Table structure for flow_approval
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flow_approval]') AND type IN ('U'))
	DROP TABLE [dbo].[flow_approval]
GO

CREATE TABLE [dbo].[flow_approval] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime  NULL,
  [UserId] uniqueidentifier  NULL,
  [UserName] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LaunchTime] datetime  NULL,
  [FormId] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [FlowId] uniqueidentifier  NULL,
  [FlowCode] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [FlowName] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[flow_approval] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'发起人Id',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval',
'COLUMN', N'UserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发起人',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval',
'COLUMN', N'UserName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'发起时间',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval',
'COLUMN', N'LaunchTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单Id',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval',
'COLUMN', N'FormId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程Id',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval',
'COLUMN', N'FlowId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程编码',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval',
'COLUMN', N'FlowCode'
GO

EXEC sp_addextendedproperty
'MS_Description', N'流程名称',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval',
'COLUMN', N'FlowName'
GO


-- ----------------------------
-- Records of flow_approval
-- ----------------------------

-- ----------------------------
-- Table structure for flow_approval_step
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flow_approval_step]') AND type IN ('U'))
	DROP TABLE [dbo].[flow_approval_step]
GO

CREATE TABLE [dbo].[flow_approval_step] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime  NULL,
  [Sort] int  NULL,
  [FlowNodeId] uniqueidentifier  NULL,
  [FlowNodeName] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [SortMore] int  NULL,
  [State] int  NULL,
  [OpinIons] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [UserId] uniqueidentifier  NULL,
  [UserName] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ApprovalDate] datetime  NULL
)
GO

ALTER TABLE [dbo].[flow_approval_step] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'步骤顺序号',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval_step',
'COLUMN', N'Sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'审批流节点Id',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval_step',
'COLUMN', N'FlowNodeId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'审批流节点名称',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval_step',
'COLUMN', N'FlowNodeName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'多次审批顺序号（可能是多次审批次数）',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval_step',
'COLUMN', N'SortMore'
GO

EXEC sp_addextendedproperty
'MS_Description', N'步骤状态（待审批、同意、不同意、回退升级审批）',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval_step',
'COLUMN', N'State'
GO

EXEC sp_addextendedproperty
'MS_Description', N'步骤审批意见',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval_step',
'COLUMN', N'OpinIons'
GO

EXEC sp_addextendedproperty
'MS_Description', N'步骤审批人Id',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval_step',
'COLUMN', N'UserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'步骤审批人名称',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval_step',
'COLUMN', N'UserName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'审批时间',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval_step',
'COLUMN', N'ApprovalDate'
GO


-- ----------------------------
-- Records of flow_approval_step
-- ----------------------------

-- ----------------------------
-- Table structure for flow_approval_step_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flow_approval_step_user]') AND type IN ('U'))
	DROP TABLE [dbo].[flow_approval_step_user]
GO

CREATE TABLE [dbo].[flow_approval_step_user] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime  NULL,
  [FlowApprovalStepId] uniqueidentifier  NULL,
  [FlowNodeId] uniqueidentifier  NULL,
  [FlowNodeName] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [UserId] uniqueidentifier  NULL,
  [UserName] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[flow_approval_step_user] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'步骤Id',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval_step_user',
'COLUMN', N'FlowApprovalStepId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'审批节点Id',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval_step_user',
'COLUMN', N'FlowNodeId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'审批节点名称',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval_step_user',
'COLUMN', N'FlowNodeName'
GO

EXEC sp_addextendedproperty
'MS_Description', N'审批人Id',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval_step_user',
'COLUMN', N'UserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'审批人名称',
'SCHEMA', N'dbo',
'TABLE', N'flow_approval_step_user',
'COLUMN', N'UserName'
GO


-- ----------------------------
-- Records of flow_approval_step_user
-- ----------------------------

-- ----------------------------
-- Table structure for flow_node
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[flow_node]') AND type IN ('U'))
	DROP TABLE [dbo].[flow_node]
GO

CREATE TABLE [dbo].[flow_node] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime  NULL,
  [FlowId] uniqueidentifier  NULL,
  [FlowCode] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Sort] int  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [RoleId] uniqueidentifier  NULL,
  [Remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[flow_node] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of flow_node
-- ----------------------------

-- ----------------------------
-- Table structure for low_code_list
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[low_code_list]') AND type IN ('U'))
	DROP TABLE [dbo].[low_code_list]
GO

CREATE TABLE [dbo].[low_code_list] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime  NULL,
  [Low_Code_TableId] uniqueidentifier  NULL,
  [Low_Code_Table_InfoId] uniqueidentifier  NULL,
  [ForeignKeyTableId] uniqueidentifier  NULL,
  [ForeignKeyTableFieldName] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[low_code_list] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of low_code_list
-- ----------------------------

-- ----------------------------
-- Table structure for low_code_search
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[low_code_search]') AND type IN ('U'))
	DROP TABLE [dbo].[low_code_search]
GO

CREATE TABLE [dbo].[low_code_search] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime  NULL,
  [Low_Code_TableId] uniqueidentifier  NULL,
  [Low_Code_Table_InfoId] uniqueidentifier  NULL
)
GO

ALTER TABLE [dbo].[low_code_search] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of low_code_search
-- ----------------------------

-- ----------------------------
-- Table structure for low_code_table
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[low_code_table]') AND type IN ('U'))
	DROP TABLE [dbo].[low_code_table]
GO

CREATE TABLE [dbo].[low_code_table] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime  NULL,
  [TableName] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Schema] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Type] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [DisplayName] varchar(200) COLLATE Chinese_PRC_CI_AS  NULL,
  [EntityName] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Remark] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[low_code_table] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of low_code_table
-- ----------------------------
INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'69B24F04-0ED3-45FC-91D9-0DC929175A57', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'sys_user_post', N'dbo', N'TABLE', N'用户与岗位', N'SysUserPost', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'6BA9805C-916E-4D2C-99D0-216FCBC361CC', N'2022-05-24 21:57:34.433', N'2022-05-23 00:00:00.000', N'low_code_table', N'dbo', N'TABLE', N'低代码表', N'LowCodeTable', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'651BB982-1130-4E1C-9070-36B90DCF2324', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'flow_approval_step', N'dbo', N'TABLE', N'工作流审批步骤配置', N'FlowApprovalStep', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'524E71B4-CBF7-4248-8B29-3F99B43F2EB2', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'sys_data_authority_custom', N'dbo', N'TABLE', N'自定义数据权限', N'SysDataAuthorityCustom', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'7AD3B915-F0BD-443A-89CD-42D41DD6C554', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'flow_approval_step_user', N'dbo', N'TABLE', N'工作流用户审批步骤', N'FlowApprovalStepUser', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'1A8DF018-79F8-4E26-B4EB-4B735AAE7275', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'flow', N'dbo', N'TABLE', N'审批流', N'Flow', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'sys_operation_log', N'dbo', N'TABLE', N'操作日志', N'SysOperationLog', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'2AE9E532-7D9A-474B-B629-50A39945C44D', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'sys_menu_function', N'dbo', N'TABLE', N'菜单功能', N'SysMenuFunction', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'D8948C56-C5BD-4061-B272-5417375F38F0', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'flow_approval', N'dbo', N'TABLE', N'审批流审批', N'FlowApproval', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'sys_organization', N'dbo', N'TABLE', N'组织', N'SysOrganization', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'sys_user', N'dbo', N'TABLE', N'用户', N'SysUser', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'2022-05-24 21:57:34.433', N'2022-05-23 00:00:00.000', N'low_code_table_info', N'dbo', N'TABLE', N'低代码表信息', N'LowCodeTableInfo', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'AF37F705-7BA0-4883-B1BE-8A274EA4C026', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'sys_dictionary', N'dbo', N'TABLE', N'数据字典', N'SysDictionary', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'73C97832-4E7F-4758-86D2-94327971B5FD', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'member', N'dbo', N'TABLE', N'会员', N'Member', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'sys_menu', N'dbo', N'TABLE', N'菜单', N'SysMenu', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'F3D7BBB3-C1FB-4D61-92A4-9BC101811335', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'sys_role', N'dbo', N'TABLE', N'角色', N'SysRole', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'852F53FF-0D00-4C32-AA55-A9C11993751B', N'2022-05-24 21:57:34.433', N'2022-05-23 00:00:00.000', N'low_code_list', N'dbo', N'TABLE', N'低代码列表', N'LowCodeList', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'AE6D94D8-6A15-4348-B600-AA17E4B61718', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'flow_node', N'dbo', N'TABLE', N'工作流节点', N'FlowNode', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'69EDD8A8-1D24-478C-A909-B82039EDCEC0', N'2022-05-24 21:57:34.433', N'2022-05-23 00:00:00.000', N'low_code_search', N'dbo', N'TABLE', N'低代码检索表', N'LowCodeSearch', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'6FABC67A-8B48-49A6-8BA1-C8A32C499D36', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'sys_function', N'dbo', N'TABLE', N'功能', N'SysFunction', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'0A8BDB18-758A-4798-9FFC-E7031DCBF262', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'sys_post', N'dbo', N'TABLE', N'岗位', N'SysPost', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'8DA38D20-8A09-4E81-8DD8-ED6702AEE380', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'sys_role_menu_function', N'dbo', N'TABLE', N'角色菜单功能关联', N'SysRoleMenuFunction', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'E79DB53B-7162-4669-9B5E-F860501475AC', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'sys_data_authority', N'dbo', N'TABLE', N'数据权限', N'SysDataAuthority', NULL)
GO

INSERT INTO [dbo].[low_code_table] ([Id], [LastModificationTime], [CreationTime], [TableName], [Schema], [Type], [DisplayName], [EntityName], [Remark]) VALUES (N'3DA5D264-2E8D-460C-A10C-FF9A6BB57A60', N'2022-05-24 21:57:34.433', N'2022-04-17 00:00:00.000', N'sys_user_role', N'dbo', N'TABLE', N'用户与角色', N'SysUserRole', NULL)
GO


-- ----------------------------
-- Table structure for low_code_table_info
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[low_code_table_info]') AND type IN ('U'))
	DROP TABLE [dbo].[low_code_table_info]
GO

CREATE TABLE [dbo].[low_code_table_info] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime  NULL,
  [Low_Code_TableId] uniqueidentifier  NULL,
  [IsPrimary] bit  NULL,
  [IsIdentity] bit  NULL,
  [IsNullable] bit  NULL,
  [Position] int  NULL,
  [ColumnName] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [Describe] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DatabaseColumnType] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [CsType] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [CsField] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [MaxLength] int  NULL,
  [DisplayName] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[low_code_table_info] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of low_code_table_info
-- ----------------------------
INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'60019CD9-49EB-489B-97B5-08DA39A2EF6C', N'2022-05-19 22:26:18.973', N'2022-05-19 00:00:00.000', N'3DA5D264-2E8D-460C-A10C-FF9A6BB57A60', N'1', N'0', N'0', N'170', N'Id', N'Id', N'uniqueidentifier', N'Guid', N'Id', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'825E69B9-CD33-4AB8-97B6-08DA39A2EF6C', N'2022-05-19 22:26:18.973', N'2022-05-19 00:00:00.000', N'3DA5D264-2E8D-460C-A10C-FF9A6BB57A60', N'0', N'0', N'1', N'174', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'252AC7B2-0E62-48E1-97B7-08DA39A2EF6C', N'2022-05-19 22:26:18.973', N'2022-05-19 00:00:00.000', N'3DA5D264-2E8D-460C-A10C-FF9A6BB57A60', N'0', N'0', N'1', N'173', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'2029BB6D-A0F2-41DE-97B8-08DA39A2EF6C', N'2022-05-19 22:26:18.973', N'2022-05-19 00:00:00.000', N'3DA5D264-2E8D-460C-A10C-FF9A6BB57A60', N'0', N'0', N'1', N'172', N'RoleId', N'', N'uniqueidentifier', N'Guid', N'RoleId', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'18B4430B-765D-4A71-97B9-08DA39A2EF6C', N'2022-05-19 22:26:18.973', N'2022-05-19 00:00:00.000', N'3DA5D264-2E8D-460C-A10C-FF9A6BB57A60', N'0', N'0', N'1', N'171', N'UserId', N'', N'uniqueidentifier', N'Guid', N'UserId', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'A72C0341-82E8-48AD-D481-08DA3D8D5A26', N'2022-05-24 21:57:33.877', N'2022-05-24 21:57:33.877', N'1A8DF018-79F8-4E26-B4EB-4B735AAE7275', N'1', N'0', N'0', N'24', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'70E30A70-99F9-44B3-D482-08DA3D8D5A26', N'2022-05-24 21:57:33.877', N'2022-05-24 21:57:33.877', N'1A8DF018-79F8-4E26-B4EB-4B735AAE7275', N'0', N'0', N'1', N'28', N'Code', N'编码', N'nvarchar(255)', N'String', N'Code', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'5FC01EB0-4833-4E93-D483-08DA3D8D5A26', N'2022-05-24 21:57:33.877', N'2022-05-24 21:57:33.877', N'1A8DF018-79F8-4E26-B4EB-4B735AAE7275', N'0', N'0', N'1', N'26', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'FD9ABF54-3C88-44B0-D484-08DA3D8D5A26', N'2022-05-24 21:57:33.877', N'2022-05-24 21:57:33.877', N'1A8DF018-79F8-4E26-B4EB-4B735AAE7275', N'0', N'0', N'1', N'25', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'06F4F5A9-F63F-4E47-D485-08DA3D8D5A26', N'2022-05-24 21:57:33.877', N'2022-05-24 21:57:33.877', N'1A8DF018-79F8-4E26-B4EB-4B735AAE7275', N'0', N'0', N'1', N'29', N'Name', N'流程名称', N'nvarchar(255)', N'String', N'Name', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'5CB41F1C-E68A-47F9-D486-08DA3D8D5A26', N'2022-05-24 21:57:33.877', N'2022-05-24 21:57:33.877', N'1A8DF018-79F8-4E26-B4EB-4B735AAE7275', N'0', N'0', N'1', N'27', N'Number', N'排序号', N'int', N'Int32', N'Number', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'F21D4C33-E65A-4DFE-D487-08DA3D8D5A26', N'2022-05-24 21:57:33.877', N'2022-05-24 21:57:33.877', N'1A8DF018-79F8-4E26-B4EB-4B735AAE7275', N'0', N'0', N'1', N'30', N'Remark', N'备注', N'nvarchar(255)', N'String', N'Remark', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'B9BBAB1D-0A03-4D07-D488-08DA3D8D5A26', N'2022-05-24 21:57:33.903', N'2022-05-24 21:57:33.903', N'D8948C56-C5BD-4061-B272-5417375F38F0', N'1', N'0', N'0', N'31', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'01CA178C-112A-4A49-D489-08DA3D8D5A26', N'2022-05-24 21:57:33.903', N'2022-05-24 21:57:33.903', N'D8948C56-C5BD-4061-B272-5417375F38F0', N'0', N'0', N'1', N'33', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'A0FDEB45-C9FE-439B-D48A-08DA3D8D5A26', N'2022-05-24 21:57:33.903', N'2022-05-24 21:57:33.903', N'D8948C56-C5BD-4061-B272-5417375F38F0', N'0', N'0', N'1', N'39', N'FlowCode', N'流程编码', N'varchar(255)', N'String', N'FlowCode', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'2B4747ED-0409-4D14-D48B-08DA3D8D5A26', N'2022-05-24 21:57:33.903', N'2022-05-24 21:57:33.903', N'D8948C56-C5BD-4061-B272-5417375F38F0', N'0', N'0', N'1', N'38', N'FlowId', N'流程Id', N'uniqueidentifier', N'Guid', N'FlowId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'F00CDE73-2294-40D6-D48C-08DA3D8D5A26', N'2022-05-24 21:57:33.903', N'2022-05-24 21:57:33.903', N'D8948C56-C5BD-4061-B272-5417375F38F0', N'0', N'0', N'1', N'40', N'FlowName', N'流程名称', N'varchar(255)', N'String', N'FlowName', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'CAAE5D6F-F9C7-4EDB-D48D-08DA3D8D5A26', N'2022-05-24 21:57:33.903', N'2022-05-24 21:57:33.903', N'D8948C56-C5BD-4061-B272-5417375F38F0', N'0', N'0', N'1', N'37', N'FormId', N'表单Id', N'varchar(50)', N'String', N'FormId', N'50', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'609A52AA-48B2-4E64-D48E-08DA3D8D5A26', N'2022-05-24 21:57:33.903', N'2022-05-24 21:57:33.903', N'D8948C56-C5BD-4061-B272-5417375F38F0', N'0', N'0', N'1', N'32', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'3071360B-C1EF-4DFF-D48F-08DA3D8D5A26', N'2022-05-24 21:57:33.903', N'2022-05-24 21:57:33.903', N'D8948C56-C5BD-4061-B272-5417375F38F0', N'0', N'0', N'1', N'36', N'LaunchTime', N'发起时间', N'datetime', N'DateTime', N'LaunchTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'ACF079D0-3DB9-43F7-D490-08DA3D8D5A26', N'2022-05-24 21:57:33.903', N'2022-05-24 21:57:33.903', N'D8948C56-C5BD-4061-B272-5417375F38F0', N'0', N'0', N'1', N'34', N'UserId', N'发起人Id', N'uniqueidentifier', N'Guid', N'UserId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'6284C929-4115-4C17-D491-08DA3D8D5A26', N'2022-05-24 21:57:33.903', N'2022-05-24 21:57:33.903', N'D8948C56-C5BD-4061-B272-5417375F38F0', N'0', N'0', N'1', N'35', N'UserName', N'发起人', N'varchar(255)', N'String', N'UserName', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'F5C93CC7-50A6-4E0E-D492-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'1', N'0', N'0', N'41', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'F6D23541-2FCA-40E6-D493-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'52', N'ApprovalDate', N'审批时间', N'datetime', N'DateTime', N'ApprovalDate', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'8AD408DB-B5AA-4CB7-D494-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'43', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'2FFAA9EE-C286-4F90-D495-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'45', N'FlowNodeId', N'审批流节点Id', N'uniqueidentifier', N'Guid', N'FlowNodeId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'AAA312A2-73FB-4C84-D496-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'46', N'FlowNodeName', N'审批流节点名称', N'varchar(255)', N'String', N'FlowNodeName', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'043612F1-E16A-4C44-D497-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'42', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'A8BE7873-7CE4-4CB2-D498-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'49', N'OpinIons', N'步骤审批意见', N'varchar(255)', N'String', N'OpinIons', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'E8E60481-FB7F-4F1D-D499-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'44', N'Sort', N'步骤顺序号', N'int', N'Int32', N'Sort', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'2A1C3F3D-4EFC-472B-D49A-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'47', N'SortMore', N'多次审批顺序号（可能是多次审批次数）', N'int', N'Int32', N'SortMore', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'CBD75568-2ECE-4F90-D49B-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'48', N'State', N'步骤状态（待审批、同意、不同意、回退升级审批）', N'int', N'Int32', N'State', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'E67FD0C6-A997-4956-D49C-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'50', N'UserId', N'步骤审批人Id', N'uniqueidentifier', N'Guid', N'UserId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'24DB7ED8-1A4F-4B25-D49D-08DA3D8D5A26', N'2022-05-24 21:57:33.927', N'2022-05-24 21:57:33.927', N'651BB982-1130-4E1C-9070-36B90DCF2324', N'0', N'0', N'1', N'51', N'UserName', N'步骤审批人名称', N'varchar(255)', N'String', N'UserName', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'E346CF76-EC76-4409-D49E-08DA3D8D5A26', N'2022-05-24 21:57:33.953', N'2022-05-24 21:57:33.953', N'7AD3B915-F0BD-443A-89CD-42D41DD6C554', N'1', N'0', N'0', N'53', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'AE55FABC-3944-4A36-D49F-08DA3D8D5A26', N'2022-05-24 21:57:33.953', N'2022-05-24 21:57:33.953', N'7AD3B915-F0BD-443A-89CD-42D41DD6C554', N'0', N'0', N'1', N'55', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'B754AF63-F1DE-4000-D4A0-08DA3D8D5A26', N'2022-05-24 21:57:33.953', N'2022-05-24 21:57:33.953', N'7AD3B915-F0BD-443A-89CD-42D41DD6C554', N'0', N'0', N'1', N'56', N'FlowApprovalStepId', N'步骤Id', N'uniqueidentifier', N'Guid', N'FlowApprovalStepId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'495FE86E-5BD6-44D4-D4A1-08DA3D8D5A26', N'2022-05-24 21:57:33.953', N'2022-05-24 21:57:33.953', N'7AD3B915-F0BD-443A-89CD-42D41DD6C554', N'0', N'0', N'1', N'57', N'FlowNodeId', N'审批节点Id', N'uniqueidentifier', N'Guid', N'FlowNodeId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'D48C70E6-4549-41B6-D4A2-08DA3D8D5A26', N'2022-05-24 21:57:33.953', N'2022-05-24 21:57:33.953', N'7AD3B915-F0BD-443A-89CD-42D41DD6C554', N'0', N'0', N'1', N'58', N'FlowNodeName', N'审批节点名称', N'varchar(500)', N'String', N'FlowNodeName', N'500', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'0E864B91-B667-4F53-D4A3-08DA3D8D5A26', N'2022-05-24 21:57:33.953', N'2022-05-24 21:57:33.953', N'7AD3B915-F0BD-443A-89CD-42D41DD6C554', N'0', N'0', N'1', N'54', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'92BC9094-160E-4338-D4A4-08DA3D8D5A26', N'2022-05-24 21:57:33.953', N'2022-05-24 21:57:33.953', N'7AD3B915-F0BD-443A-89CD-42D41DD6C554', N'0', N'0', N'1', N'59', N'UserId', N'审批人Id', N'uniqueidentifier', N'Guid', N'UserId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'0CFC881C-98D4-4A2C-D4A5-08DA3D8D5A26', N'2022-05-24 21:57:33.953', N'2022-05-24 21:57:33.953', N'7AD3B915-F0BD-443A-89CD-42D41DD6C554', N'0', N'0', N'1', N'60', N'UserName', N'审批人名称', N'varchar(500)', N'String', N'UserName', N'500', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'2819DFE7-F12B-483C-D4A6-08DA3D8D5A26', N'2022-05-24 21:57:33.973', N'2022-05-24 21:57:33.973', N'AE6D94D8-6A15-4348-B600-AA17E4B61718', N'1', N'0', N'0', N'61', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'0E19400D-1876-4FE3-D4A7-08DA3D8D5A26', N'2022-05-24 21:57:33.973', N'2022-05-24 21:57:33.973', N'AE6D94D8-6A15-4348-B600-AA17E4B61718', N'0', N'0', N'1', N'63', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'5CA84ECF-5971-45BC-D4A8-08DA3D8D5A26', N'2022-05-24 21:57:33.973', N'2022-05-24 21:57:33.973', N'AE6D94D8-6A15-4348-B600-AA17E4B61718', N'0', N'0', N'1', N'65', N'FlowCode', N'', N'nvarchar(255)', N'String', N'FlowCode', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'9BC385E0-10EE-4299-D4A9-08DA3D8D5A26', N'2022-05-24 21:57:33.973', N'2022-05-24 21:57:33.973', N'AE6D94D8-6A15-4348-B600-AA17E4B61718', N'0', N'0', N'1', N'64', N'FlowId', N'', N'uniqueidentifier', N'Guid', N'FlowId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'D45AC420-E348-4D6B-D4AA-08DA3D8D5A26', N'2022-05-24 21:57:33.973', N'2022-05-24 21:57:33.973', N'AE6D94D8-6A15-4348-B600-AA17E4B61718', N'0', N'0', N'1', N'62', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'0DF6B078-B248-4C83-D4AB-08DA3D8D5A26', N'2022-05-24 21:57:33.973', N'2022-05-24 21:57:33.973', N'AE6D94D8-6A15-4348-B600-AA17E4B61718', N'0', N'0', N'1', N'67', N'Name', N'', N'nvarchar(255)', N'String', N'Name', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'2321AAC8-0EED-4B87-D4AC-08DA3D8D5A26', N'2022-05-24 21:57:33.973', N'2022-05-24 21:57:33.973', N'AE6D94D8-6A15-4348-B600-AA17E4B61718', N'0', N'0', N'1', N'69', N'Remark', N'', N'nvarchar(255)', N'String', N'Remark', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'73D17476-E006-4530-D4AD-08DA3D8D5A26', N'2022-05-24 21:57:33.973', N'2022-05-24 21:57:33.973', N'AE6D94D8-6A15-4348-B600-AA17E4B61718', N'0', N'0', N'1', N'68', N'RoleId', N'', N'uniqueidentifier', N'Guid', N'RoleId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'E571FD26-B1A8-4648-D4AE-08DA3D8D5A26', N'2022-05-24 21:57:33.973', N'2022-05-24 21:57:33.973', N'AE6D94D8-6A15-4348-B600-AA17E4B61718', N'0', N'0', N'1', N'66', N'Sort', N'', N'int', N'Int32', N'Sort', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'C2F1A286-2B35-41D6-D4AF-08DA3D8D5A26', N'2022-05-24 21:57:33.997', N'2022-05-24 21:57:33.997', N'852F53FF-0D00-4C32-AA55-A9C11993751B', N'1', N'0', N'0', N'189', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'92C1FFFC-5A00-468C-D4B0-08DA3D8D5A26', N'2022-05-24 21:57:33.997', N'2022-05-24 21:57:33.997', N'852F53FF-0D00-4C32-AA55-A9C11993751B', N'0', N'0', N'1', N'191', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'7B900BAF-65DF-4910-D4B1-08DA3D8D5A26', N'2022-05-24 21:57:33.997', N'2022-05-24 21:57:33.997', N'852F53FF-0D00-4C32-AA55-A9C11993751B', N'0', N'0', N'1', N'195', N'ForeignKeyTableFieldName', N'', N'varchar(50)', N'String', N'ForeignKeyTableFieldName', N'50', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'E7FACEE2-5132-4003-D4B2-08DA3D8D5A26', N'2022-05-24 21:57:33.997', N'2022-05-24 21:57:33.997', N'852F53FF-0D00-4C32-AA55-A9C11993751B', N'0', N'0', N'1', N'194', N'ForeignKeyTableId', N'', N'uniqueidentifier', N'Guid', N'ForeignKeyTableId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'2AE91C1D-D618-4267-D4B3-08DA3D8D5A26', N'2022-05-24 21:57:33.997', N'2022-05-24 21:57:33.997', N'852F53FF-0D00-4C32-AA55-A9C11993751B', N'0', N'0', N'1', N'190', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'A2660342-556E-4AEF-D4B4-08DA3D8D5A26', N'2022-05-24 21:57:33.997', N'2022-05-24 21:57:33.997', N'852F53FF-0D00-4C32-AA55-A9C11993751B', N'0', N'0', N'1', N'193', N'Low_Code_Table_InfoId', N'', N'uniqueidentifier', N'Guid', N'Low_Code_Table_InfoId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'585E18EA-AB50-4216-D4B5-08DA3D8D5A26', N'2022-05-24 21:57:33.997', N'2022-05-24 21:57:33.997', N'852F53FF-0D00-4C32-AA55-A9C11993751B', N'0', N'0', N'1', N'192', N'Low_Code_TableId', N'', N'uniqueidentifier', N'Guid', N'Low_Code_TableId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'7C7400ED-EC08-4832-D4B6-08DA3D8D5A26', N'2022-05-24 21:57:34.027', N'2022-05-24 21:57:34.027', N'69EDD8A8-1D24-478C-A909-B82039EDCEC0', N'1', N'0', N'0', N'184', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'A29E0236-9C06-4A70-D4B7-08DA3D8D5A26', N'2022-05-24 21:57:34.027', N'2022-05-24 21:57:34.027', N'69EDD8A8-1D24-478C-A909-B82039EDCEC0', N'0', N'0', N'1', N'186', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'8237D289-05CF-485B-D4B8-08DA3D8D5A26', N'2022-05-24 21:57:34.027', N'2022-05-24 21:57:34.027', N'69EDD8A8-1D24-478C-A909-B82039EDCEC0', N'0', N'0', N'1', N'185', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'1A2A9E15-DC83-49E1-D4B9-08DA3D8D5A26', N'2022-05-24 21:57:34.027', N'2022-05-24 21:57:34.027', N'69EDD8A8-1D24-478C-A909-B82039EDCEC0', N'0', N'0', N'1', N'188', N'Low_Code_Table_InfoId', N'', N'uniqueidentifier', N'Guid', N'Low_Code_Table_InfoId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'7B4DF31F-36A3-477C-D4BA-08DA3D8D5A26', N'2022-05-24 21:57:34.027', N'2022-05-24 21:57:34.027', N'69EDD8A8-1D24-478C-A909-B82039EDCEC0', N'0', N'0', N'1', N'187', N'Low_Code_TableId', N'', N'uniqueidentifier', N'Guid', N'Low_Code_TableId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'B97D19D1-948A-489F-D4BB-08DA3D8D5A26', N'2022-05-24 21:57:34.047', N'2022-05-24 21:57:34.047', N'6BA9805C-916E-4D2C-99D0-216FCBC361CC', N'1', N'0', N'0', N'15', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'8430C5A1-6C73-4733-D4BC-08DA3D8D5A26', N'2022-05-24 21:57:34.047', N'2022-05-24 21:57:34.047', N'6BA9805C-916E-4D2C-99D0-216FCBC361CC', N'0', N'0', N'1', N'17', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'D7EF7A4E-F4B9-4AC4-D4BD-08DA3D8D5A26', N'2022-05-24 21:57:34.047', N'2022-05-24 21:57:34.047', N'6BA9805C-916E-4D2C-99D0-216FCBC361CC', N'0', N'0', N'1', N'21', N'DisplayName', N'', N'varchar(200)', N'String', N'DisplayName', N'200', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'5E4C83FD-7071-4997-D4BE-08DA3D8D5A26', N'2022-05-24 21:57:34.047', N'2022-05-24 21:57:34.047', N'6BA9805C-916E-4D2C-99D0-216FCBC361CC', N'0', N'0', N'1', N'22', N'EntityName', N'', N'varchar(50)', N'String', N'EntityName', N'50', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'0F0C03E3-604F-489F-D4BF-08DA3D8D5A26', N'2022-05-24 21:57:34.047', N'2022-05-24 21:57:34.047', N'6BA9805C-916E-4D2C-99D0-216FCBC361CC', N'0', N'0', N'1', N'16', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'FA8B1456-88F3-4D4E-D4C0-08DA3D8D5A26', N'2022-05-24 21:57:34.047', N'2022-05-24 21:57:34.047', N'6BA9805C-916E-4D2C-99D0-216FCBC361CC', N'0', N'0', N'1', N'23', N'Remark', N'', N'varchar(500)', N'String', N'Remark', N'500', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'441E03EC-ECB7-4172-D4C1-08DA3D8D5A26', N'2022-05-24 21:57:34.047', N'2022-05-24 21:57:34.047', N'6BA9805C-916E-4D2C-99D0-216FCBC361CC', N'0', N'0', N'1', N'19', N'Schema', N'', N'varchar(50)', N'String', N'Schema', N'50', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'02FFAFB8-CF9B-441C-D4C2-08DA3D8D5A26', N'2022-05-24 21:57:34.047', N'2022-05-24 21:57:34.047', N'6BA9805C-916E-4D2C-99D0-216FCBC361CC', N'0', N'0', N'1', N'18', N'TableName', N'', N'varchar(50)', N'String', N'TableName', N'50', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'3AB15F84-8722-4837-D4C3-08DA3D8D5A26', N'2022-05-24 21:57:34.047', N'2022-05-24 21:57:34.047', N'6BA9805C-916E-4D2C-99D0-216FCBC361CC', N'0', N'0', N'1', N'20', N'Type', N'', N'int', N'Int32', N'Type', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'9B1B319A-E9DC-406D-D4C4-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'1', N'0', N'0', N'196', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'11AFCF11-9B42-47CE-D4C5-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'204', N'ColumnName', N'', N'varchar(500)', N'String', N'ColumnName', N'500', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'1E40D97A-49EE-4727-D4C6-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'198', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'E0E9D3C3-B713-419C-D4C7-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'208', N'CsField', N'', N'varchar(50)', N'String', N'CsField', N'50', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'EB846AC3-723E-4207-D4C8-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'207', N'CsType', N'', N'varchar(50)', N'String', N'CsType', N'50', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'48B12860-84DE-4F7B-D4C9-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'206', N'DatabaseColumnType', N'', N'varchar(50)', N'String', N'DatabaseColumnType', N'50', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'3B959124-21D2-45B9-D4CA-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'205', N'Describe', N'', N'varchar(50)', N'String', N'Describe', N'50', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'86B95BF0-4418-46BA-D4CB-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'201', N'IsIdentity', N'', N'bit', N'Boolean', N'IsIdentity', N'1', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'5FEA8348-AA6B-4577-D4CC-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'202', N'IsNullable', N'', N'bit', N'Boolean', N'IsNullable', N'1', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'1D3C8224-A3A5-4B88-D4CD-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'200', N'IsPrimary', N'', N'bit', N'Boolean', N'IsPrimary', N'1', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'CF99D60B-2392-493C-D4CE-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'197', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'F221DA94-0A1D-4CE7-D4CF-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'199', N'Low_Code_TableId', N'', N'uniqueidentifier', N'Guid', N'Low_Code_TableId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'DE43269D-D43B-4A77-D4D0-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'209', N'MaxLength', N'', N'int', N'Int32', N'MaxLength', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'4AAA1E18-8C06-4806-D4D1-08DA3D8D5A26', N'2022-05-24 21:57:34.070', N'2022-05-24 21:57:34.070', N'79FBD4EC-9F4E-45DC-8065-70F2EB422CDF', N'0', N'0', N'1', N'203', N'Position', N'', N'int', N'Int32', N'Position', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'E75B8650-EE49-4F83-D4D2-08DA3D8D5A26', N'2022-06-08 21:20:04.053', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'1', N'0', N'0', N'70', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'B7FBB61F-94FC-4242-D4D3-08DA3D8D5A26', N'2022-06-08 21:20:04.053', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'75', N'Birthday', N'', N'datetime2', N'DateTime', N'Birthday', NULL, N'生日')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'5541E535-7CBE-43D2-D4D4-08DA3D8D5A26', N'2022-06-08 21:20:04.053', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'80', N'CreationTime', N'创建时间', N'datetime2', N'DateTime', N'CreationTime', NULL, N'创建时间')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'E4245F5F-BFFA-43F0-D4D5-08DA3D8D5A26', N'2022-06-08 21:20:04.053', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'78', N'FilePath', N'文件地址', N'nvarchar(255)', N'String', N'FilePath', NULL, N'文件地址')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'8326CA11-09F1-4C38-D4D6-08DA3D8D5A26', N'2022-06-08 21:20:04.053', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'77', N'Introduce', N'', N'nvarchar(255)', N'String', N'Introduce', NULL, N'简介')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'897A208C-2E13-46F1-D4D7-08DA3D8D5A26', N'2022-06-08 21:20:04.053', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'81', N'LastModificationTime', N'更新时间', N'datetime2', N'DateTime', N'LastModificationTime', NULL, N'更新时间')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'D1EB49CF-C053-4226-D4D8-08DA3D8D5A26', N'2022-06-08 21:20:04.053', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'72', N'Name', N'', N'nvarchar(255)', N'String', N'Name', NULL, N'会员名称')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'BF24A276-6ED0-49D4-D4D9-08DA3D8D5A26', N'2022-06-08 21:20:04.053', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'71', N'Number', N'', N'nvarchar(255)', N'String', N'Number', NULL, N'编号')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'669B87CE-C694-4C8C-D4DA-08DA3D8D5A26', N'2022-06-08 21:20:04.053', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'73', N'Phone', N'', N'nvarchar(255)', N'String', N'Phone', NULL, N'联系电话')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'F03AC01C-E0CF-4F13-D4DB-08DA3D8D5A26', N'2022-06-08 21:20:04.053', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'76', N'Photo', N'', N'nvarchar(255)', N'String', N'Photo', NULL, N'头像')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'72AC247C-D792-4FEE-D4DC-08DA3D8D5A26', N'2022-06-08 21:20:04.053', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'74', N'Sex', N'', N'nvarchar(255)', N'String', N'Sex', NULL, N'性别')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'837B058B-A88E-4107-D4DD-08DA3D8D5A26', N'2022-06-08 21:20:04.053', N'2022-05-24 00:00:00.000', N'73C97832-4E7F-4758-86D2-94327971B5FD', N'0', N'0', N'1', N'79', N'UserId', N'所属用户', N'uniqueidentifier', N'Guid', N'UserId', NULL, N'所属用户')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'BFEC557A-1223-49EC-D4DE-08DA3D8D5A26', N'2022-05-24 21:57:34.120', N'2022-05-24 21:57:34.120', N'C5883367-42AA-43B8-9577-4720A2253EFA', N'1', N'0', N'0', N'210', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'31F56D34-2216-45B0-D4DF-08DA3D8D5A26', N'2022-05-24 21:57:34.120', N'2022-05-24 21:57:34.120', N'C5883367-42AA-43B8-9577-4720A2253EFA', N'0', N'0', N'1', N'214', N'Author', N'', N'varchar(50)', N'String', N'Author', N'50', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'6FE5687C-BFAF-4E2F-D4E0-08DA3D8D5A26', N'2022-05-24 21:57:34.120', N'2022-05-24 21:57:34.120', N'C5883367-42AA-43B8-9577-4720A2253EFA', N'0', N'0', N'1', N'216', N'Content', N'', N'varchar(MAX)', N'String', N'Content', N'-1', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'BE86A4EE-E843-4C2A-D4E1-08DA3D8D5A26', N'2022-05-24 21:57:34.120', N'2022-05-24 21:57:34.120', N'C5883367-42AA-43B8-9577-4720A2253EFA', N'0', N'0', N'1', N'212', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', N'6', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'C03BA636-ABB2-43F7-D4E2-08DA3D8D5A26', N'2022-05-24 21:57:34.120', N'2022-05-24 21:57:34.120', N'C5883367-42AA-43B8-9577-4720A2253EFA', N'0', N'0', N'1', N'211', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', N'6', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'5F28BE90-E415-46DD-D4E3-08DA3D8D5A26', N'2022-05-24 21:57:34.120', N'2022-05-24 21:57:34.120', N'C5883367-42AA-43B8-9577-4720A2253EFA', N'0', N'0', N'1', N'215', N'Time', N'', N'datetime', N'DateTime', N'Time', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'804E418F-3206-4090-D4E4-08DA3D8D5A26', N'2022-05-24 21:57:34.120', N'2022-05-24 21:57:34.120', N'C5883367-42AA-43B8-9577-4720A2253EFA', N'0', N'0', N'1', N'213', N'Title', N'', N'varchar(50)', N'String', N'Title', N'50', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'97284D66-88B9-478F-D4E5-08DA3D8D5A26', N'2022-05-24 21:57:34.137', N'2022-05-24 21:57:34.137', N'E79DB53B-7162-4669-9B5E-F860501475AC', N'1', N'0', N'0', N'82', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'B6422CB6-498E-4FF5-D4E6-08DA3D8D5A26', N'2022-05-24 21:57:34.137', N'2022-05-24 21:57:34.137', N'E79DB53B-7162-4669-9B5E-F860501475AC', N'0', N'0', N'1', N'84', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'9DE60DD7-A403-442D-D4E7-08DA3D8D5A26', N'2022-05-24 21:57:34.137', N'2022-05-24 21:57:34.137', N'E79DB53B-7162-4669-9B5E-F860501475AC', N'0', N'0', N'1', N'83', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'0F908E1D-4A82-42C1-D4E8-08DA3D8D5A26', N'2022-05-24 21:57:34.137', N'2022-05-24 21:57:34.137', N'E79DB53B-7162-4669-9B5E-F860501475AC', N'0', N'0', N'1', N'86', N'PermissionType', N'数据权限类型', N'int', N'Int32', N'PermissionType', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'9C9F9672-3FA0-4C65-D4E9-08DA3D8D5A26', N'2022-05-24 21:57:34.137', N'2022-05-24 21:57:34.137', N'E79DB53B-7162-4669-9B5E-F860501475AC', N'0', N'0', N'1', N'85', N'RoleId', N'', N'uniqueidentifier', N'Guid', N'RoleId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'DF559C6B-6F60-467C-D4EA-08DA3D8D5A26', N'2022-05-24 21:57:34.153', N'2022-05-24 21:57:34.153', N'524E71B4-CBF7-4248-8B29-3F99B43F2EB2', N'1', N'0', N'0', N'87', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'2341DCB1-8056-4A7C-D4EB-08DA3D8D5A26', N'2022-05-24 21:57:34.153', N'2022-05-24 21:57:34.153', N'524E71B4-CBF7-4248-8B29-3F99B43F2EB2', N'0', N'0', N'1', N'89', N'CreationTime', N'', N'datetime', N'DateTime', N'CreationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'6304E602-84A1-4C57-D4EC-08DA3D8D5A26', N'2022-05-24 21:57:34.153', N'2022-05-24 21:57:34.153', N'524E71B4-CBF7-4248-8B29-3F99B43F2EB2', N'0', N'0', N'1', N'88', N'LastModificationTime', N'', N'datetime', N'DateTime', N'LastModificationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'DE898F57-ABE7-4D2C-D4ED-08DA3D8D5A26', N'2022-05-24 21:57:34.153', N'2022-05-24 21:57:34.153', N'524E71B4-CBF7-4248-8B29-3F99B43F2EB2', N'0', N'0', N'1', N'90', N'SysDataAuthorityId', N'', N'uniqueidentifier', N'Guid', N'SysDataAuthorityId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'325AF03C-CBB7-4DE6-D4EE-08DA3D8D5A26', N'2022-05-24 21:57:34.153', N'2022-05-24 21:57:34.153', N'524E71B4-CBF7-4248-8B29-3F99B43F2EB2', N'0', N'0', N'0', N'91', N'SysOrganizationId', N'', N'int', N'Int32', N'SysOrganizationId', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'BBAC9A7C-6E62-4FE6-D4EF-08DA3D8D5A26', N'2022-05-24 21:57:34.173', N'2022-05-24 21:57:34.173', N'AF37F705-7BA0-4883-B1BE-8A274EA4C026', N'0', N'0', N'1', N'96', N'Code', N'编码', N'varchar(255)', N'String', N'Code', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'2CA9AA7E-321E-47F0-D4F0-08DA3D8D5A26', N'2022-05-24 21:57:34.173', N'2022-05-24 21:57:34.173', N'AF37F705-7BA0-4883-B1BE-8A274EA4C026', N'0', N'0', N'1', N'94', N'CreationTime', N'创建时间', N'datetime', N'DateTime', N'CreationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'AB5C0B3D-8871-42FD-D4F1-08DA3D8D5A26', N'2022-05-24 21:57:34.173', N'2022-05-24 21:57:34.173', N'AF37F705-7BA0-4883-B1BE-8A274EA4C026', N'0', N'1', N'0', N'92', N'Id', N'id', N'int', N'Int32', N'Id', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'ABA55AD7-7153-4658-D4F2-08DA3D8D5A26', N'2022-05-24 21:57:34.173', N'2022-05-24 21:57:34.173', N'AF37F705-7BA0-4883-B1BE-8A274EA4C026', N'0', N'0', N'1', N'93', N'LastModificationTime', N'更新时间', N'datetime', N'DateTime', N'LastModificationTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'29B765BD-36F4-462F-D4F3-08DA3D8D5A26', N'2022-05-24 21:57:34.173', N'2022-05-24 21:57:34.173', N'AF37F705-7BA0-4883-B1BE-8A274EA4C026', N'0', N'0', N'1', N'98', N'Name', N'分组名/键', N'varchar(255)', N'String', N'Name', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'6E69CF9B-D9CD-4C31-D4F4-08DA3D8D5A26', N'2022-05-24 21:57:34.173', N'2022-05-24 21:57:34.173', N'AF37F705-7BA0-4883-B1BE-8A274EA4C026', N'0', N'0', N'1', N'99', N'ParentId', N'父级分组id', N'int', N'Int32', N'ParentId', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'84A87E33-8B66-4B9A-D4F5-08DA3D8D5A26', N'2022-05-24 21:57:34.173', N'2022-05-24 21:57:34.173', N'AF37F705-7BA0-4883-B1BE-8A274EA4C026', N'0', N'0', N'1', N'95', N'Sort', N'排序号', N'int', N'Int32', N'Sort', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'9A850F29-2DD2-4779-D4F6-08DA3D8D5A26', N'2022-05-24 21:57:34.173', N'2022-05-24 21:57:34.173', N'AF37F705-7BA0-4883-B1BE-8A274EA4C026', N'0', N'0', N'1', N'97', N'Value', N'值', N'varchar(255)', N'String', N'Value', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'E1316750-62A4-46AA-D4F7-08DA3D8D5A26', N'2022-05-24 21:57:34.193', N'2022-05-24 21:57:34.193', N'6FABC67A-8B48-49A6-8BA1-C8A32C499D36', N'1', N'0', N'0', N'100', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'743D6EAB-B4C8-4A15-D4F8-08DA3D8D5A26', N'2022-05-24 21:57:34.193', N'2022-05-24 21:57:34.193', N'6FABC67A-8B48-49A6-8BA1-C8A32C499D36', N'0', N'0', N'1', N'103', N'ByName', N'', N'nvarchar(255)', N'String', N'ByName', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'82EE25D2-4E01-4100-D4F9-08DA3D8D5A26', N'2022-05-24 21:57:34.193', N'2022-05-24 21:57:34.193', N'6FABC67A-8B48-49A6-8BA1-C8A32C499D36', N'0', N'0', N'1', N'106', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', N'6', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'A61101B5-8E66-4456-D4FA-08DA3D8D5A26', N'2022-05-24 21:57:34.193', N'2022-05-24 21:57:34.193', N'6FABC67A-8B48-49A6-8BA1-C8A32C499D36', N'0', N'0', N'1', N'105', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', N'6', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'AAA5FAE3-8C5B-4427-D4FB-08DA3D8D5A26', N'2022-05-24 21:57:34.193', N'2022-05-24 21:57:34.193', N'6FABC67A-8B48-49A6-8BA1-C8A32C499D36', N'0', N'0', N'1', N'102', N'Name', N'', N'nvarchar(255)', N'String', N'Name', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'F9FD0E13-4E5D-42B4-D4FC-08DA3D8D5A26', N'2022-05-24 21:57:34.193', N'2022-05-24 21:57:34.193', N'6FABC67A-8B48-49A6-8BA1-C8A32C499D36', N'0', N'0', N'1', N'101', N'Number', N'', N'int', N'Int32', N'Number', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'646614D9-D7F3-42C5-D4FD-08DA3D8D5A26', N'2022-05-24 21:57:34.193', N'2022-05-24 21:57:34.193', N'6FABC67A-8B48-49A6-8BA1-C8A32C499D36', N'0', N'0', N'1', N'104', N'Remark', N'', N'nvarchar(255)', N'String', N'Remark', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'498327EB-5676-4091-D4FE-08DA3D8D5A26', N'2022-05-24 21:58:07.503', N'2022-05-24 00:00:00.000', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'1', N'1', N'0', N'107', N'Id', N'', N'int', N'Int32', N'Id', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'3133985D-586C-4C4E-D4FF-08DA3D8D5A26', N'2022-05-24 21:57:34.220', N'2022-05-24 21:57:34.220', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'119', N'Close', N'', N'bit', N'Boolean', N'Close', N'1', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'78757B0D-D9EE-45EA-D500-08DA3D8D5A26', N'2022-05-24 21:58:07.503', N'2022-05-24 00:00:00.000', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'115', N'ComponentName', N'', N'nvarchar(255)', N'String', N'ComponentName', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'2006AC52-BB49-4E41-D501-08DA3D8D5A26', N'2022-05-24 21:58:07.503', N'2022-05-24 00:00:00.000', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'109', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'F5193134-B39D-4CA0-D502-08DA3D8D5A26', N'2022-05-24 21:58:07.503', N'2022-05-24 00:00:00.000', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'116', N'Icon', N'', N'nvarchar(255)', N'String', N'Icon', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'12E9E9AD-5631-4DC8-D503-08DA3D8D5A26', N'2022-05-24 21:57:34.220', N'2022-05-24 21:57:34.220', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'122', N'JumpUrl', N'', N'varchar(255)', N'String', N'JumpUrl', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'B1F89F8D-8E22-4C4A-D504-08DA3D8D5A26', N'2022-05-24 21:57:34.220', N'2022-05-24 21:57:34.220', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'120', N'KeepAlive', N'', N'bit', N'Boolean', N'KeepAlive', N'1', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'7211AEA6-EB91-41E5-D505-08DA3D8D5A26', N'2022-05-24 21:58:07.503', N'2022-05-24 00:00:00.000', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'108', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'B52A9E8C-DFFB-40B7-D506-08DA3D8D5A26', N'2022-05-24 21:58:07.503', N'2022-05-24 00:00:00.000', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'110', N'LevelCode', N'', N'varchar(50)', N'String', N'LevelCode', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'E74C1F4B-AF12-4EAA-D507-08DA3D8D5A26', N'2022-05-24 21:58:07.503', N'2022-05-24 00:00:00.000', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'112', N'Name', N'', N'nvarchar(255)', N'String', N'Name', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'235B67F8-62D2-480E-D508-08DA3D8D5A26', N'2022-05-24 21:58:07.503', N'2022-05-24 00:00:00.000', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'111', N'Number', N'编号', N'int', N'Int32', N'Number', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'F029B676-48AC-4BA3-D509-08DA3D8D5A26', N'2022-05-24 21:57:34.220', N'2022-05-24 21:57:34.220', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'117', N'ParentId', N'', N'int', N'Int32', N'ParentId', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'5AA598A9-6E52-4AE4-D50A-08DA3D8D5A26', N'2022-05-24 21:58:07.503', N'2022-05-24 00:00:00.000', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'114', N'Router', N'', N'nvarchar(255)', N'String', N'Router', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'1916E619-4818-4C63-D50B-08DA3D8D5A26', N'2022-05-24 21:57:34.220', N'2022-05-24 21:57:34.220', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'118', N'Show', N'', N'bit', N'Boolean', N'Show', N'1', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'D0FBF229-7204-4494-D50C-08DA3D8D5A26', N'2022-05-24 21:57:34.220', N'2022-05-24 21:57:34.220', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'121', N'State', N'', N'bit', N'Boolean', N'State', N'1', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'6C3BB548-AAFC-4F16-D50D-08DA3D8D5A26', N'2022-05-24 21:57:34.220', N'2022-05-24 21:57:34.220', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'123', N'Type', N'', N'int', N'Int32', N'Type', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'19FA02FE-FB8F-4631-D50E-08DA3D8D5A26', N'2022-05-24 21:58:07.503', N'2022-05-24 00:00:00.000', N'D2600250-6F32-4D7D-8395-96CC9FA36DB4', N'0', N'0', N'1', N'113', N'Url', N'', N'nvarchar(255)', N'String', N'Url', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'9C4158F4-B5B5-4928-D50F-08DA3D8D5A26', N'2022-05-24 21:57:34.250', N'2022-05-24 21:57:34.250', N'2AE9E532-7D9A-474B-B629-50A39945C44D', N'1', N'0', N'0', N'124', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'FBF2D2C1-454B-4898-D510-08DA3D8D5A26', N'2022-05-24 21:57:34.250', N'2022-05-24 21:57:34.250', N'2AE9E532-7D9A-474B-B629-50A39945C44D', N'0', N'0', N'1', N'126', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', N'6', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'6CFE3B57-006F-436B-D511-08DA3D8D5A26', N'2022-05-24 21:57:34.250', N'2022-05-24 21:57:34.250', N'2AE9E532-7D9A-474B-B629-50A39945C44D', N'0', N'0', N'1', N'129', N'FunctionCode', N'', N'varchar(100)', N'String', N'FunctionCode', N'100', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'A908815C-C0E6-4565-D512-08DA3D8D5A26', N'2022-05-24 21:57:34.250', N'2022-05-24 21:57:34.250', N'2AE9E532-7D9A-474B-B629-50A39945C44D', N'0', N'0', N'1', N'130', N'FunctionName', N'', N'varchar(100)', N'String', N'FunctionName', N'100', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'E4DD55F0-9697-43AE-D513-08DA3D8D5A26', N'2022-05-24 21:57:34.250', N'2022-05-24 21:57:34.250', N'2AE9E532-7D9A-474B-B629-50A39945C44D', N'0', N'0', N'1', N'125', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', N'6', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'29D08351-9091-4C91-D514-08DA3D8D5A26', N'2022-05-24 21:57:34.250', N'2022-05-24 21:57:34.250', N'2AE9E532-7D9A-474B-B629-50A39945C44D', N'0', N'0', N'1', N'128', N'MenuId', N'', N'int', N'Int32', N'MenuId', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'C7B2AD1D-ECB0-4497-D515-08DA3D8D5A26', N'2022-05-24 21:57:34.250', N'2022-05-24 21:57:34.250', N'2AE9E532-7D9A-474B-B629-50A39945C44D', N'0', N'0', N'1', N'127', N'Number', N'', N'int', N'Int32', N'Number', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'9A050102-6300-46EF-D516-08DA3D8D5A26', N'2022-05-24 21:57:34.250', N'2022-05-24 21:57:34.250', N'2AE9E532-7D9A-474B-B629-50A39945C44D', N'0', N'0', N'1', N'131', N'Remark', N'', N'varchar(100)', N'String', N'Remark', N'100', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'BA392537-C1C5-4ECC-D517-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'1', N'0', N'0', N'1', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'EE8CA902-4E27-40C5-D518-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'14', N'ActionDisplayName', N'', N'varchar(255)', N'String', N'ActionDisplayName', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'200FF922-513C-4B19-D519-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'4', N'Api', N'接口地址', N'varchar(500)', N'String', N'Api', N'500', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'063D44B8-6CE2-47A6-D51A-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'9', N'Browser', N'', N'varchar(255)', N'String', N'Browser', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'A62BB184-93B0-40E3-D51B-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'13', N'ControllerDisplayName', N'', N'varchar(255)', N'String', N'ControllerDisplayName', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'0AA2DAAB-50DF-4397-D51C-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'3', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', N'6', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'5F5C2997-DAA8-491C-D51D-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'6', N'Form', N'表单信息', N'varchar(MAX)', N'String', N'Form', N'-1', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'1D881E59-D88E-497F-D51E-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'7', N'FormBody', N'json表单信息', N'varchar(MAX)', N'String', N'FormBody', N'-1', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'CA605278-6972-48B4-D51F-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'5', N'Ip', N'ip地址', N'varchar(255)', N'String', N'Ip', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'A932F1CE-A55A-480B-D520-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'2', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', N'6', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'4736479F-6089-4141-D521-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'10', N'OS', N'', N'varchar(255)', N'String', N'OS', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'4467BF43-6E95-4798-D522-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'8', N'QueryString', N'地址栏信息', N'varchar(MAX)', N'String', N'QueryString', N'-1', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'0888B15F-3BD2-4881-D523-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'0', N'12', N'TakeUpTime', N'接口耗时（毫秒）', N'bigint', N'Int64', N'TakeUpTime', N'8', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'66718DE6-5C1A-4229-D524-08DA3D8D5A26', N'2022-05-24 21:57:34.270', N'2022-05-24 21:57:34.270', N'60CCEBA1-28BF-4D1D-B603-4EDF95D512B8', N'0', N'0', N'1', N'11', N'UserId', N'当前操作人id', N'uniqueidentifier', N'Guid', N'UserId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'D6008705-0D21-42AC-D525-08DA3D8D5A26', N'2022-06-09 21:20:26.477', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'1', N'1', N'0', N'132', N'Id', N'', N'int', N'Int32', N'Id', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'0B45E9BB-B9F1-4A2F-D526-08DA3D8D5A26', N'2022-06-09 21:20:26.477', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'0', N'0', N'1', N'142', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'CE802713-74F5-4F30-D527-08DA3D8D5A26', N'2022-06-09 21:20:26.477', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'0', N'0', N'1', N'138', N'Email', N'', N'nvarchar(255)', N'String', N'Email', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'19A7504C-F740-4B49-D528-08DA3D8D5A26', N'2022-06-09 21:20:26.477', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'0', N'0', N'1', N'141', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'CF2E3691-AB88-4420-D529-08DA3D8D5A26', N'2022-06-09 21:20:26.477', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'0', N'0', N'1', N'136', N'Leader', N'', N'nvarchar(255)', N'String', N'Leader', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'11F3D291-CF7A-4143-D52A-08DA3D8D5A26', N'2022-06-09 21:20:26.477', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'0', N'0', N'1', N'135', N'LevelCode', N'', N'varchar(50)', N'String', N'LevelCode', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'1121D642-49E8-4B25-D52B-08DA3D8D5A26', N'2022-06-09 21:20:26.477', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'0', N'0', N'1', N'133', N'Name', N'', N'nvarchar(255)', N'String', N'Name', NULL, N'组织名称')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'5AED3FEB-3D77-4E1E-D52C-08DA3D8D5A26', N'2022-06-09 21:20:26.477', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'0', N'0', N'1', N'134', N'OrderNumber', N'', N'int', N'Int32', N'OrderNumber', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'042A59E2-72C1-4C38-D52D-08DA3D8D5A26', N'2022-06-09 21:20:26.477', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'0', N'0', N'1', N'140', N'ParentId', N'', N'int', N'Int32', N'ParentId', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'EA63351C-C203-4D40-D52E-08DA3D8D5A26', N'2022-06-09 21:20:26.477', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'0', N'0', N'1', N'137', N'Phone', N'', N'nvarchar(255)', N'String', N'Phone', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'B9BFCA2E-F72B-4A3F-D52F-08DA3D8D5A26', N'2022-06-09 21:20:26.477', N'2022-05-24 00:00:00.000', N'D26D07CB-158A-4CB2-8B20-5DFD5181AF54', N'0', N'0', N'1', N'139', N'State', N'', N'int', N'Int32', N'State', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'6AA13B8F-1E3C-4750-D530-08DA3D8D5A26', N'2022-05-24 21:57:34.320', N'2022-05-24 21:57:34.320', N'0A8BDB18-758A-4798-9FFC-E7031DCBF262', N'1', N'0', N'0', N'143', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'B76500C1-91F8-4E44-D531-08DA3D8D5A26', N'2022-05-24 21:57:34.320', N'2022-05-24 21:57:34.320', N'0A8BDB18-758A-4798-9FFC-E7031DCBF262', N'0', N'0', N'1', N'145', N'Code', N'', N'nvarchar(255)', N'String', N'Code', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'134C9F62-ABD2-476E-D532-08DA3D8D5A26', N'2022-05-24 21:57:34.320', N'2022-05-24 21:57:34.320', N'0A8BDB18-758A-4798-9FFC-E7031DCBF262', N'0', N'0', N'1', N'150', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', N'6', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'5257AD4F-589D-40D0-D533-08DA3D8D5A26', N'2022-05-24 21:57:34.320', N'2022-05-24 21:57:34.320', N'0A8BDB18-758A-4798-9FFC-E7031DCBF262', N'0', N'0', N'1', N'149', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', N'6', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'1790B4D5-51B2-4DC0-D534-08DA3D8D5A26', N'2022-05-24 21:57:34.320', N'2022-05-24 21:57:34.320', N'0A8BDB18-758A-4798-9FFC-E7031DCBF262', N'0', N'0', N'1', N'146', N'Name', N'', N'nvarchar(255)', N'String', N'Name', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'2286C948-4F0D-4B66-D535-08DA3D8D5A26', N'2022-05-24 21:57:34.320', N'2022-05-24 21:57:34.320', N'0A8BDB18-758A-4798-9FFC-E7031DCBF262', N'0', N'0', N'1', N'144', N'Number', N'', N'int', N'Int32', N'Number', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'5F9A4A78-1BB9-4592-D536-08DA3D8D5A26', N'2022-05-24 21:57:34.320', N'2022-05-24 21:57:34.320', N'0A8BDB18-758A-4798-9FFC-E7031DCBF262', N'0', N'0', N'1', N'148', N'Remarks', N'', N'nvarchar(255)', N'String', N'Remarks', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'564A907B-1F47-4849-D537-08DA3D8D5A26', N'2022-05-24 21:57:34.320', N'2022-05-24 21:57:34.320', N'0A8BDB18-758A-4798-9FFC-E7031DCBF262', N'0', N'0', N'1', N'147', N'State', N'', N'int', N'Int32', N'State', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'69875823-326C-4E13-D538-08DA3D8D5A26', N'2022-05-24 21:57:34.340', N'2022-05-24 21:57:34.340', N'F3D7BBB3-C1FB-4D61-92A4-9BC101811335', N'1', N'0', N'0', N'151', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'42430604-7090-442D-D539-08DA3D8D5A26', N'2022-05-24 21:57:34.340', N'2022-05-24 21:57:34.340', N'F3D7BBB3-C1FB-4D61-92A4-9BC101811335', N'0', N'0', N'1', N'153', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', N'6', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'3F7E43C9-762F-48EA-D53A-08DA3D8D5A26', N'2022-05-24 21:57:34.340', N'2022-05-24 21:57:34.340', N'F3D7BBB3-C1FB-4D61-92A4-9BC101811335', N'0', N'0', N'1', N'157', N'DeleteLock', N'', N'bit', N'Boolean', N'DeleteLock', N'1', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'517CBFE0-275D-4F36-D53B-08DA3D8D5A26', N'2022-05-24 21:57:34.340', N'2022-05-24 21:57:34.340', N'F3D7BBB3-C1FB-4D61-92A4-9BC101811335', N'0', N'0', N'1', N'152', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', N'6', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'BE481209-565B-4099-D53C-08DA3D8D5A26', N'2022-05-24 21:57:34.340', N'2022-05-24 21:57:34.340', N'F3D7BBB3-C1FB-4D61-92A4-9BC101811335', N'0', N'0', N'1', N'155', N'Name', N'', N'nvarchar(255)', N'String', N'Name', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'DD367FD5-2030-43B2-D53D-08DA3D8D5A26', N'2022-05-24 21:57:34.340', N'2022-05-24 21:57:34.340', N'F3D7BBB3-C1FB-4D61-92A4-9BC101811335', N'0', N'0', N'1', N'154', N'Number', N'', N'int', N'Int32', N'Number', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'DBE000FC-4895-42F2-D53E-08DA3D8D5A26', N'2022-05-24 21:57:34.340', N'2022-05-24 21:57:34.340', N'F3D7BBB3-C1FB-4D61-92A4-9BC101811335', N'0', N'0', N'1', N'156', N'Remark', N'', N'nvarchar(255)', N'String', N'Remark', N'255', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'7B6DF0CD-C31B-4508-D53F-08DA3D8D5A26', N'2022-05-24 21:57:34.357', N'2022-05-24 21:57:34.357', N'8DA38D20-8A09-4E81-8DD8-ED6702AEE380', N'1', N'0', N'0', N'158', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'1213C179-E366-4E3C-D540-08DA3D8D5A26', N'2022-05-24 21:57:34.357', N'2022-05-24 21:57:34.357', N'8DA38D20-8A09-4E81-8DD8-ED6702AEE380', N'0', N'0', N'1', N'163', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', N'6', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'B24AC0E3-71AB-4D48-D541-08DA3D8D5A26', N'2022-05-24 21:57:34.357', N'2022-05-24 21:57:34.357', N'8DA38D20-8A09-4E81-8DD8-ED6702AEE380', N'0', N'0', N'1', N'162', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', N'6', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'6C934348-BE20-4C9E-D542-08DA3D8D5A26', N'2022-05-24 21:57:34.357', N'2022-05-24 21:57:34.357', N'8DA38D20-8A09-4E81-8DD8-ED6702AEE380', N'0', N'0', N'1', N'161', N'MenuFunctionId', N'', N'uniqueidentifier', N'Guid', N'MenuFunctionId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'D41BD8DB-1B3F-48FA-D543-08DA3D8D5A26', N'2022-05-24 21:57:34.357', N'2022-05-24 21:57:34.357', N'8DA38D20-8A09-4E81-8DD8-ED6702AEE380', N'0', N'0', N'1', N'160', N'MenuId', N'', N'int', N'Int32', N'MenuId', N'4', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'F24F0E45-209E-46B7-D544-08DA3D8D5A26', N'2022-05-24 21:57:34.357', N'2022-05-24 21:57:34.357', N'8DA38D20-8A09-4E81-8DD8-ED6702AEE380', N'0', N'0', N'1', N'159', N'RoleId', N'', N'uniqueidentifier', N'Guid', N'RoleId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'5BCF7406-75CC-4171-D545-08DA3D8D5A26', N'2022-06-09 21:20:04.707', N'2022-05-24 00:00:00.000', N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'1', N'0', N'0', N'164', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', NULL, NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'46BAC66F-3CF0-46B3-D546-08DA3D8D5A26', N'2022-06-09 21:20:04.707', N'2022-05-24 00:00:00.000', N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'0', N'0', N'1', N'166', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', NULL, N'创建时间')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'A6752BD9-F3D6-451F-D547-08DA3D8D5A26', N'2022-06-09 21:20:04.707', N'2022-05-24 00:00:00.000', N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'0', N'0', N'1', N'172', N'DeleteLock', N'', N'bit', N'Boolean', N'DeleteLock', NULL, N'删除锁')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'287314B2-3141-4957-D548-08DA3D8D5A26', N'2022-06-09 21:20:04.707', N'2022-05-24 00:00:00.000', N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'0', N'0', N'0', N'171', N'Email', N'', N'nvarchar(255)', N'String', N'Email', NULL, N'电子邮箱')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'E5418D61-916F-45FD-D549-08DA3D8D5A26', N'2022-06-09 21:20:04.707', N'2022-05-24 00:00:00.000', N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'0', N'0', N'1', N'165', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', NULL, N'更新时间')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'7CBE8988-CBAC-4EA2-D54A-08DA3D8D5A26', N'2022-06-09 21:20:04.707', N'2022-05-24 00:00:00.000', N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'0', N'0', N'1', N'168', N'LoginName', N'', N'nvarchar(255)', N'String', N'LoginName', NULL, N'登录名称')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'4B5BC027-5663-463A-D54B-08DA3D8D5A26', N'2022-06-09 21:20:04.707', N'2022-05-24 00:00:00.000', N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'0', N'0', N'1', N'167', N'Name', N'', N'nvarchar(255)', N'String', N'Name', NULL, N'用户名称')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'5A9FA990-B6D6-445F-D54C-08DA3D8D5A26', N'2022-06-09 21:20:04.707', N'2022-05-24 00:00:00.000', N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'0', N'0', N'1', N'173', N'OrganizationId', N'', N'int', N'Int32', N'OrganizationId', NULL, N'组织id')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'E36410B5-CB7C-4FC3-D54D-08DA3D8D5A26', N'2022-06-09 21:20:04.707', N'2022-05-24 00:00:00.000', N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'0', N'0', N'1', N'169', N'Password', N'', N'nvarchar(255)', N'String', N'Password', NULL, N'密码')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'C82D5132-6CDA-463E-D54E-08DA3D8D5A26', N'2022-06-09 21:20:04.707', N'2022-05-24 00:00:00.000', N'6323638B-A45F-4A76-886E-69A9E9BE0901', N'0', N'0', N'1', N'170', N'Phone', N'', N'nvarchar(255)', N'String', N'Phone', NULL, N'联系电话')
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'A9766BBB-21BF-46DA-D54F-08DA3D8D5A26', N'2022-05-24 21:57:34.407', N'2022-05-24 21:57:34.407', N'69B24F04-0ED3-45FC-91D9-0DC929175A57', N'1', N'0', N'0', N'174', N'Id', N'', N'uniqueidentifier', N'Guid', N'Id', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'F731CCD3-9A9C-4DDA-D550-08DA3D8D5A26', N'2022-05-24 21:57:34.407', N'2022-05-24 21:57:34.407', N'69B24F04-0ED3-45FC-91D9-0DC929175A57', N'0', N'0', N'1', N'178', N'CreationTime', N'', N'datetime2', N'DateTime', N'CreationTime', N'6', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'135E23DB-540B-4096-D551-08DA3D8D5A26', N'2022-05-24 21:57:34.407', N'2022-05-24 21:57:34.407', N'69B24F04-0ED3-45FC-91D9-0DC929175A57', N'0', N'0', N'1', N'177', N'LastModificationTime', N'', N'datetime2', N'DateTime', N'LastModificationTime', N'6', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'4C479D54-530F-4652-D552-08DA3D8D5A26', N'2022-05-24 21:57:34.407', N'2022-05-24 21:57:34.407', N'69B24F04-0ED3-45FC-91D9-0DC929175A57', N'0', N'0', N'1', N'176', N'PostId', N'', N'uniqueidentifier', N'Guid', N'PostId', N'16', NULL)
GO

INSERT INTO [dbo].[low_code_table_info] ([Id], [LastModificationTime], [CreationTime], [Low_Code_TableId], [IsPrimary], [IsIdentity], [IsNullable], [Position], [ColumnName], [Describe], [DatabaseColumnType], [CsType], [CsField], [MaxLength], [DisplayName]) VALUES (N'CB5F9ECF-9317-4B11-D553-08DA3D8D5A26', N'2022-05-24 21:57:34.407', N'2022-05-24 21:57:34.407', N'69B24F04-0ED3-45FC-91D9-0DC929175A57', N'0', N'0', N'1', N'175', N'UserId', N'', N'uniqueidentifier', N'Guid', N'UserId', N'16', NULL)
GO


-- ----------------------------
-- Table structure for member
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[member]') AND type IN ('U'))
	DROP TABLE [dbo].[member]
GO

CREATE TABLE [dbo].[member] (
  [Id] uniqueidentifier  NOT NULL,
  [Number] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Phone] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Sex] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Birthday] datetime2(0)  NULL,
  [Photo] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Introduce] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [FilePath] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [UserId] uniqueidentifier  NULL,
  [CreationTime] datetime2(0)  NULL,
  [LastModificationTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[member] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO [dbo].[member] ([Id], [Number], [Name], [Phone], [Sex], [Birthday], [Photo], [Introduce], [FilePath], [UserId], [CreationTime], [LastModificationTime]) VALUES (N'96A1AA3D-A61A-42D0-954A-C71753FB2065', N'123', N'123', N'123', N'女', N'2018-04-25 23:00:00', NULL, N'<p>123</p>', NULL, N'AC18F496-E93D-42F0-B59E-E321ACC85335', N'2020-10-24 00:07:42', N'2021-04-18 22:08:06')
GO

INSERT INTO [dbo].[member] ([Id], [Number], [Name], [Phone], [Sex], [Birthday], [Photo], [Introduce], [FilePath], [UserId], [CreationTime], [LastModificationTime]) VALUES (N'9A604AA2-9AE6-4A2F-8DDB-D9E0289EAD9E', N'1', N'测试会员', N'18510912123', N'男', N'2019-07-08 11:47:24', N'http://localhost:5600http://localhost:5600http://localhost:5600/upload/files/20210118/time_232747_old_name_hzy.png', N'<p>999888</p>', N'/upload/files/20210118/time_233310_old_name_hzy.png', N'AC18F496-E93D-42F0-B59E-E321ACC85335', N'2018-04-25 23:00:00', N'2022-05-08 16:46:21')
GO


-- ----------------------------
-- Table structure for sys_data_authority
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_data_authority]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_data_authority]
GO

CREATE TABLE [dbo].[sys_data_authority] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime DEFAULT (getdate()) NULL,
  [RoleId] uniqueidentifier  NULL,
  [PermissionType] int  NULL
)
GO

ALTER TABLE [dbo].[sys_data_authority] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据权限类型',
'SCHEMA', N'dbo',
'TABLE', N'sys_data_authority',
'COLUMN', N'PermissionType'
GO


-- ----------------------------
-- Records of sys_data_authority
-- ----------------------------
INSERT INTO [dbo].[sys_data_authority] ([Id], [LastModificationTime], [CreationTime], [RoleId], [PermissionType]) VALUES (N'D09BF250-C5B0-41CB-237D-08DA00442990', N'2022-05-31 20:47:14.180', N'2022-03-07 22:09:58.000', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'5')
GO

INSERT INTO [dbo].[sys_data_authority] ([Id], [LastModificationTime], [CreationTime], [RoleId], [PermissionType]) VALUES (N'0228A5B5-2202-4BA0-6E48-08DA205DA7B7', N'2022-04-17 18:33:04.440', N'2022-04-17 18:33:04.440', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'2')
GO


-- ----------------------------
-- Table structure for sys_data_authority_custom
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_data_authority_custom]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_data_authority_custom]
GO

CREATE TABLE [dbo].[sys_data_authority_custom] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime DEFAULT (getdate()) NULL,
  [SysDataAuthorityId] uniqueidentifier  NULL,
  [SysOrganizationId] int  NOT NULL
)
GO

ALTER TABLE [dbo].[sys_data_authority_custom] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sys_data_authority_custom
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dictionary
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dictionary]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_dictionary]
GO

CREATE TABLE [dbo].[sys_dictionary] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [LastModificationTime] datetime  NULL,
  [CreationTime] datetime  NULL,
  [Sort] int  NULL,
  [Code] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Value] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Name] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ParentId] int  NULL
)
GO

ALTER TABLE [dbo].[sys_dictionary] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'id',
'SCHEMA', N'dbo',
'TABLE', N'sys_dictionary',
'COLUMN', N'Id'
GO

EXEC sp_addextendedproperty
'MS_Description', N'更新时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_dictionary',
'COLUMN', N'LastModificationTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'创建时间',
'SCHEMA', N'dbo',
'TABLE', N'sys_dictionary',
'COLUMN', N'CreationTime'
GO

EXEC sp_addextendedproperty
'MS_Description', N'排序号',
'SCHEMA', N'dbo',
'TABLE', N'sys_dictionary',
'COLUMN', N'Sort'
GO

EXEC sp_addextendedproperty
'MS_Description', N'编码',
'SCHEMA', N'dbo',
'TABLE', N'sys_dictionary',
'COLUMN', N'Code'
GO

EXEC sp_addextendedproperty
'MS_Description', N'值',
'SCHEMA', N'dbo',
'TABLE', N'sys_dictionary',
'COLUMN', N'Value'
GO

EXEC sp_addextendedproperty
'MS_Description', N'分组名/键',
'SCHEMA', N'dbo',
'TABLE', N'sys_dictionary',
'COLUMN', N'Name'
GO

EXEC sp_addextendedproperty
'MS_Description', N'父级分组id',
'SCHEMA', N'dbo',
'TABLE', N'sys_dictionary',
'COLUMN', N'ParentId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'数据字典',
'SCHEMA', N'dbo',
'TABLE', N'sys_dictionary'
GO


-- ----------------------------
-- Records of sys_dictionary
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_dictionary] ON
GO

INSERT INTO [dbo].[sys_dictionary] ([Id], [LastModificationTime], [CreationTime], [Sort], [Code], [Value], [Name], [ParentId]) VALUES (N'1', N'2021-07-25 22:39:34.870', N'2021-07-25 22:31:30.490', N'1', N'news_type', NULL, N'资讯类别', NULL)
GO

INSERT INTO [dbo].[sys_dictionary] ([Id], [LastModificationTime], [CreationTime], [Sort], [Code], [Value], [Name], [ParentId]) VALUES (N'2', N'2021-07-25 22:40:30.037', N'2021-07-25 22:38:49.153', N'1', N'news_type_nan', N'1', N'男', N'1')
GO

INSERT INTO [dbo].[sys_dictionary] ([Id], [LastModificationTime], [CreationTime], [Sort], [Code], [Value], [Name], [ParentId]) VALUES (N'3', N'2022-04-23 22:18:52.613', N'2021-07-25 22:40:47.000', N'2', N'news_type_nv', N'2', N'女', N'1')
GO

INSERT INTO [dbo].[sys_dictionary] ([Id], [LastModificationTime], [CreationTime], [Sort], [Code], [Value], [Name], [ParentId]) VALUES (N'4', N'2022-06-29 20:55:46.967', N'2022-06-29 20:55:46.967', N'0', N'3', N'3', N'未知', N'1')
GO

SET IDENTITY_INSERT [dbo].[sys_dictionary] OFF
GO


-- ----------------------------
-- Table structure for sys_function
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_function]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_function]
GO

CREATE TABLE [dbo].[sys_function] (
  [Id] uniqueidentifier  NOT NULL,
  [Number] int  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ByName] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[sys_function] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sys_function
-- ----------------------------
INSERT INTO [dbo].[sys_function] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'B6FD5425-504A-46A9-993B-2F8DC9158EB8', N'80', N'打印', N'Print', N'Print', N'2021-04-18 22:08:06', N'2022-06-16 17:28:00')
GO

INSERT INTO [dbo].[sys_function] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'C9518758-B2E1-4F51-B517-5282E273889C', N'10', N'显示', N'Display', N'Display', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[sys_function] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'F27ECB0A-197D-47B1-B243-59A8C71302BF', N'60', N'检索', N'Search', N'Search', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[sys_function] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'383E7EE2-7690-46AC-9230-65155C84AA30', N'50', N'保存', N'Save', N'Save', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[sys_function] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'9C388461-2704-4C5E-A729-72C17E9018E1', N'40', N'删除', N'Delete', N'Delete', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[sys_function] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'BFFEFB1C-8988-4DDF-B4AC-81C2B30E80CD', N'20', N'添加', N'Insert', N'Insert', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[sys_function] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'2401F4D0-60B0-4E2E-903F-84C603373572', N'70', N'导出', N'Export', N'Export', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO

INSERT INTO [dbo].[sys_function] ([Id], [Number], [Name], [ByName], [Remark], [LastModificationTime], [CreationTime]) VALUES (N'E7EF2A05-8317-41C3-B588-99519FE88BF9', N'30', N'修改', N'Update', N'Update', N'2021-04-18 22:08:06', N'2016-06-20 13:40:52')
GO


-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_menu]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_menu]
GO

CREATE TABLE [dbo].[sys_menu] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL,
  [LevelCode] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Number] int  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Url] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Router] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ComponentName] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Icon] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ParentId] int  NULL,
  [Show] bit  NULL,
  [Close] bit  NULL,
  [KeepAlive] bit  NULL,
  [State] bit  NULL,
  [JumpUrl] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Type] int  NULL
)
GO

ALTER TABLE [dbo].[sys_menu] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sys_menu
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_menu] ON
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'1', N'2022-03-04 12:25:39', N'2021-05-28 11:49:02', N'1', N'10', N'更多示例', NULL, NULL, NULL, N'MoreOutlined', NULL, N'1', N'1', N'1', N'1', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'2', N'2022-03-18 12:06:20', N'2021-01-16 16:05:22', N'1.2', N'10', N'Antd Vue3.0组件', N'views/AppComponents.vue', N'/app/components', N'AppComponentsCom', N'LayoutOutlined', N'1', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'3', N'2022-03-04 12:26:14', N'2020-12-17 14:58:05', N'1.3', N'30', N'按钮', N'views/Button.vue', N'/button', N'ButtonCom', N'AppstoreOutlined', N'1', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'4', N'2022-03-04 12:26:21', N'2021-01-16 16:06:33', N'1.4', N'40', N'图表 AntV G2', NULL, NULL, NULL, N'PieChartOutlined', N'1', N'1', N'1', N'1', N'1', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'5', N'2022-03-04 12:26:25', N'2021-01-16 16:07:24', N'1.4.5', N'10', N'基础图表', N'views/chart/Base.vue', N'/chart/base', N'ChartBaseCom', NULL, N'4', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'6', N'2022-03-04 12:26:28', N'2021-01-16 16:10:06', N'1.4.6', N'20', N'更多图表', N'views/chart/More.vue', N'/chart/more', N'ChartMoreCom', NULL, N'4', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'7', N'2022-03-04 12:26:34', N'2018-03-10 12:16:38', N'1.7', N'50', N'表格管理', NULL, NULL, NULL, N'TableOutlined', N'1', N'1', N'1', N'1', N'1', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'8', N'2022-03-04 12:26:38', N'2020-12-17 14:49:12', N'1.7.8', N'100', N'基础列表', N'views/BaseList.vue', N'/base/list', N'BaseListCom', NULL, N'7', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'9', N'2022-03-04 12:26:41', N'2020-12-17 14:51:07', N'1.7.9', N'110', N'标准表格', N'views/list/Index.vue', N'/list', N'ListIndexCom', NULL, N'7', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'10', N'2022-03-04 12:26:46', N'2021-01-18 19:34:28', N'1.10', N'60', N'富文本编辑器', N'views/Editor.vue', N'/editor', N'EditorCom', N'PicRightOutlined', N'1', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'11', N'2022-03-04 12:26:49', N'2021-08-05 21:51:12', N'1.11', N'70', N'跳转外部地址', N'components/ExternalJump.vue', N'/external/jump/:path(.*)', N'ExternalJumpCom', N'RadarChartOutlined', N'1', N'1', N'1', N'1', N'1', N'https://antv.vision/zh', N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'12', N'2022-03-04 12:25:43', N'2018-03-10 12:16:38', N'12', N'50', N'基础信息', NULL, NULL, NULL, N'GoldOutlined', NULL, N'1', N'1', N'1', N'1', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'13', N'2022-03-04 12:26:55', N'2018-03-10 12:16:38', N'12.13', N'10', N'会员管理', N'views/base/member/Index.vue', N'/base/member', N'base_member', N'UsergroupAddOutlined', N'12', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'14', N'2022-03-04 12:25:46', N'2018-03-10 12:16:38', N'14', N'100', N'系统管理', NULL, NULL, NULL, N'DesktopOutlined', NULL, N'1', N'1', N'1', N'1', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'15', N'2022-03-04 12:27:02', N'2018-03-10 12:16:38', N'14.15', N'100', N'账户管理', N'views/system/user/Index.vue', N'/system/user', N'system_user', N'UserOutlined', N'14', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'16', N'2022-04-22 22:24:03', N'2018-03-10 12:16:38', N'14.16', N'110', N'角色管理', N'views/system/role/Index.vue', N'/system/role', N'system_role', N'TeamOutlined', N'14', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'17', N'2022-03-04 12:27:11', N'2018-03-10 12:16:38', N'14.17', N'120', N'功能管理', N'views/system/function/Index.vue', N'/system/function', N'system_function', N'ControlOutlined', N'14', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'19', N'2022-03-04 12:27:19', N'2018-03-10 12:16:38', N'14.19', N'150', N'个人中心', N'views/system/personal_center/Index.vue', N'/system/personal/center', N'system_personal_center', N'FormOutlined', N'14', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'20', N'2022-03-04 12:27:23', N'2021-05-27 17:29:49', N'14.20', N'160', N'岗位管理', N'views/system/post/Index.vue', N'/system/post', N'system_post', N'IdcardOutlined', N'14', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'21', N'2022-03-04 12:27:27', N'2021-05-27 20:27:56', N'14.21', N'170', N'组织机构', N'views/system/organization/Index.vue', N'/system/organization', N'system_organization', N'ClusterOutlined', N'14', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'22', N'2022-03-04 12:27:41', N'2018-03-10 12:17:03', N'29.22', N'10', N'接口文档', N'views/development_tool/Swagger.vue', N'/development_tool/swagger', N'swagger', N'FileSearchOutlined', N'29', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'23', N'2022-03-04 12:27:31', N'2021-07-25 21:50:01', N'14.23', N'190', N'数据字典', N'views/system/dictionary/Index.vue', N'/system/dictionary', N'system_dictionary', N'FileDoneOutlined', N'14', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'24', N'2022-03-04 12:27:35', N'2021-08-05 21:24:54', N'14.24', N'200', N'操作日志', N'views/system/sys_operation_log/Index.vue', N'/system/sys_operation_log', N'sys_operation_log', N'ContainerOutlined', N'14', N'1', N'1', N'1', N'1', N'', N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'25', N'2022-03-04 12:27:15', N'2018-03-10 12:16:38', N'14.25', N'130', N'菜单功能', N'views/system/menu/Index.vue', N'/system/menu', N'system_menu', N'MenuOutlined', N'14', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'28', N'2022-03-04 12:26:00', N'2021-12-29 17:13:26', N'1.28', N'1', N'Vxe-Table', N'views/VxeTable.vue', N'/vxe/table', N'VxeTableCom', N'BorderlessTableOutlined', N'1', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'29', N'2022-03-04 12:25:49', N'2022-01-12 14:17:21', N'29', N'200', N'开发工具', NULL, NULL, NULL, N'CodepenOutlined', NULL, N'1', N'1', N'1', N'1', NULL, N'1')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'30', N'2022-03-04 12:27:44', N'2022-01-12 14:22:04', N'29.30', N'20', N'定时任务', N'views/development_tool/timed_task/Index.vue', N'/development_tool/timed_task', N'TimedTaskCom', N'FieldTimeOutlined', N'29', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'31', N'2022-05-24 22:05:57', N'2022-01-12 15:39:46', N'29.31', N'30', N'代码生成', N'views/development_tool/low_code/Index.vue', N'/development-tool/low-code', N'LowCode', N'CodeTwoTone', N'29', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'32', N'2022-03-18 12:06:38', N'2022-02-24 10:51:38', N'1.32', N'20', N'图标展示', N'views/Icons.vue', N'/icons', N'IconsVue', N'TagsTwoTone', N'1', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'33', N'2022-04-10 10:56:17', N'2022-04-10 10:55:41', N'29.33', N'40', N'EFCore监控台', N'views/development_tool/monitor_ef_core/Index.vue', N'/development_tool/monitor/efcore', N'monitor_ef_core', N'DashboardFilled', N'29', N'1', N'1', N'1', N'1', NULL, N'2')
GO

INSERT INTO [dbo].[sys_menu] ([Id], [LastModificationTime], [CreationTime], [LevelCode], [Number], [Name], [Url], [Router], [ComponentName], [Icon], [ParentId], [Show], [Close], [KeepAlive], [State], [JumpUrl], [Type]) VALUES (N'36', N'2022-04-17 17:49:13', N'2022-04-17 17:45:25', N'12.13.36', N'1', N'详情', N'views/base/member/components/Details.vue', N'/base/member/details/:id/:title', N'base_member_info_Details', NULL, N'13', N'0', N'1', N'1', N'1', NULL, N'2')
GO

SET IDENTITY_INSERT [dbo].[sys_menu] OFF
GO


-- ----------------------------
-- Table structure for sys_menu_function
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_menu_function]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_menu_function]
GO

CREATE TABLE [dbo].[sys_menu_function] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL,
  [Number] int  NULL,
  [MenuId] int  NULL,
  [FunctionCode] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [FunctionName] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL,
  [Remark] varchar(100) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_menu_function] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sys_menu_function
-- ----------------------------
INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'33C80938-82C8-4299-0F12-08D9FDAD00AB', N'2022-03-04 15:17:09', N'2022-03-04 15:17:09', N'10', N'30', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'EF70B789-21EE-4850-0F1B-08D9FDAD00AB', N'2022-03-04 15:16:44', N'2022-03-04 15:16:44', N'10', N'22', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'A7CD04DB-BBE3-49B6-0F1E-08D9FDAD00AB', N'2022-03-18 12:06:20', N'2022-03-18 12:06:20', N'10', N'2', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'6C09C0C0-72FA-4842-0F1F-08D9FDAD00AB', N'2022-03-18 12:06:38', N'2022-03-18 12:06:38', N'10', N'32', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'F64CFE50-1EF1-457F-0F20-08D9FDAD00AB', N'2022-03-04 15:24:24', N'2022-03-04 15:24:24', N'10', N'3', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'A1DDD02F-8C21-4D79-0F21-08D9FDAD00AB', N'2022-03-04 15:24:30', N'2022-03-04 15:24:30', N'10', N'5', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'1CB6FBE1-4A6C-4AAD-0F22-08D9FDAD00AB', N'2022-03-04 15:24:34', N'2022-03-04 15:24:34', N'10', N'6', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'D2E6EA60-2CF6-478A-0F23-08D9FDAD00AB', N'2022-03-04 15:24:40', N'2022-03-04 15:24:40', N'10', N'8', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'B7533A90-DAE4-4263-0F24-08D9FDAD00AB', N'2022-03-04 15:24:43', N'2022-03-04 15:24:43', N'10', N'9', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'EC535908-8671-4928-0F25-08D9FDAD00AB', N'2022-03-04 15:24:47', N'2022-03-04 15:24:47', N'10', N'10', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'3BC0E68F-D03D-4E99-0F26-08D9FDAD00AB', N'2022-03-04 15:24:53', N'2022-03-04 15:24:53', N'10', N'11', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'EB958545-6449-40DB-0F27-08D9FDAD00AB', N'2022-03-04 15:25:07', N'2022-03-04 15:25:07', N'10', N'13', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'B5881044-AFB8-40B2-0F28-08D9FDAD00AB', N'2022-03-04 15:25:07', N'2022-03-04 15:25:07', N'20', N'13', N'Insert', N'添加', N'Insert')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'106FB69A-8BB5-4559-0F29-08D9FDAD00AB', N'2022-03-04 15:25:07', N'2022-03-04 15:25:07', N'30', N'13', N'Update', N'修改', N'Update')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'F4621FBE-6B40-4454-0F2A-08D9FDAD00AB', N'2022-03-04 15:25:07', N'2022-03-04 15:25:07', N'40', N'13', N'Delete', N'删除', N'Delete')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'523B53B5-8159-4A16-0F2B-08D9FDAD00AB', N'2022-03-04 15:25:07', N'2022-03-04 15:25:07', N'50', N'13', N'Save', N'保存', N'Save')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'A3754771-F6E9-4A23-0F2C-08D9FDAD00AB', N'2022-03-04 15:25:07', N'2022-03-04 15:25:07', N'60', N'13', N'Search', N'检索', N'Search')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'B96F977C-A36E-4E7F-0F2D-08D9FDAD00AB', N'2022-03-04 15:25:07', N'2022-03-04 15:25:07', N'70', N'13', N'Export', N'导出', N'Export')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'541D9045-47B2-4629-0F2E-08D9FDAD00AB', N'2022-03-04 15:25:07', N'2022-03-04 15:25:07', N'80', N'13', N'Print', N'打印', N'Print')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'13F3F74D-C6FC-4488-0F2F-08D9FDAD00AB', N'2022-03-04 15:25:14', N'2022-03-04 15:25:14', N'10', N'15', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'CCE82EB4-7FC5-4308-0F30-08D9FDAD00AB', N'2022-03-04 15:25:14', N'2022-03-04 15:25:14', N'20', N'15', N'Insert', N'添加', N'Insert')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'8564E4D8-D7F4-4F12-0F31-08D9FDAD00AB', N'2022-03-04 15:25:14', N'2022-03-04 15:25:14', N'30', N'15', N'Update', N'修改', N'Update')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0AD6A459-1D9D-4512-0F32-08D9FDAD00AB', N'2022-03-04 15:25:14', N'2022-03-04 15:25:14', N'40', N'15', N'Delete', N'删除', N'Delete')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'37D3E492-62DA-47A4-0F33-08D9FDAD00AB', N'2022-03-04 15:25:14', N'2022-03-04 15:25:14', N'50', N'15', N'Save', N'保存', N'Save')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'BEB87004-5CFB-417A-0F34-08D9FDAD00AB', N'2022-03-04 15:25:14', N'2022-03-04 15:25:14', N'60', N'15', N'Search', N'检索', N'Search')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'A46E07D3-C722-4548-0F35-08D9FDAD00AB', N'2022-03-04 15:25:14', N'2022-03-04 15:25:14', N'70', N'15', N'Export', N'导出', N'Export')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'C8EDBB79-567E-461B-0F36-08D9FDAD00AB', N'2022-03-04 15:25:14', N'2022-03-04 15:25:14', N'80', N'15', N'Print', N'打印', N'Print')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'550F874B-E804-44A0-0F37-08D9FDAD00AB', N'2022-04-22 22:24:03', N'2022-04-22 22:24:03', N'10', N'16', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'C67A0ABE-DAEC-491B-0F38-08D9FDAD00AB', N'2022-04-22 22:24:03', N'2022-04-22 22:24:03', N'20', N'16', N'Insert', N'添加', N'Insert')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'823AC05D-65E4-4216-0F39-08D9FDAD00AB', N'2022-04-22 22:24:03', N'2022-04-22 22:24:03', N'30', N'16', N'Update', N'修改', N'Update')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'BD6AE6DA-1CA6-46C2-0F3A-08D9FDAD00AB', N'2022-04-22 22:24:03', N'2022-04-22 22:24:03', N'40', N'16', N'Delete', N'删除', N'Delete')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'14783A71-E265-4D6B-0F3B-08D9FDAD00AB', N'2022-04-22 22:24:03', N'2022-04-22 22:24:03', N'50', N'16', N'Save', N'保存', N'Save')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'2FEA8F87-2A13-4C95-0F3C-08D9FDAD00AB', N'2022-04-22 22:24:03', N'2022-04-22 22:24:03', N'60', N'16', N'Search', N'检索', N'Search')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'437FBF85-8704-4E87-0F3D-08D9FDAD00AB', N'2022-04-22 22:24:03', N'2022-04-22 22:24:03', N'70', N'16', N'Export', N'导出', N'Export')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'6B009415-EADF-4DAB-0F3E-08D9FDAD00AB', N'2022-04-22 22:24:03', N'2022-04-22 22:24:03', N'80', N'16', N'Print', N'打印', N'Print')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'53FDB4A0-CA6E-4568-0F3F-08D9FDAD00AB', N'2022-03-04 15:25:21', N'2022-03-04 15:25:21', N'10', N'17', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'86465238-C51C-45D5-0F40-08D9FDAD00AB', N'2022-03-04 15:25:21', N'2022-03-04 15:25:21', N'20', N'17', N'Insert', N'添加', N'Insert')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'86FF83FD-D34A-4290-0F41-08D9FDAD00AB', N'2022-03-04 15:25:21', N'2022-03-04 15:25:21', N'30', N'17', N'Update', N'修改', N'Update')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'7EA8F706-BFE5-42B2-0F42-08D9FDAD00AB', N'2022-03-04 15:25:21', N'2022-03-04 15:25:21', N'40', N'17', N'Delete', N'删除', N'Delete')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'DEE401B1-E20E-496E-0F43-08D9FDAD00AB', N'2022-03-04 15:25:21', N'2022-03-04 15:25:21', N'50', N'17', N'Save', N'保存', N'Save')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0B27E69F-AF16-4481-0F44-08D9FDAD00AB', N'2022-03-04 15:25:21', N'2022-03-04 15:25:21', N'60', N'17', N'Search', N'检索', N'Search')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'A726455F-1C29-4BE0-0F45-08D9FDAD00AB', N'2022-03-04 15:25:21', N'2022-03-04 15:25:21', N'70', N'17', N'Export', N'导出', N'Export')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0CAA6E7D-92B0-4814-0F46-08D9FDAD00AB', N'2022-03-04 15:25:21', N'2022-03-04 15:25:21', N'80', N'17', N'Print', N'打印', N'Print')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'DB3AB8BD-7709-41A2-0F47-08D9FDAD00AB', N'2022-03-04 15:25:28', N'2022-03-04 15:25:28', N'10', N'25', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'FE6465BF-E429-45BD-0F48-08D9FDAD00AB', N'2022-03-04 15:25:28', N'2022-03-04 15:25:28', N'20', N'25', N'Insert', N'添加', N'Insert')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'4A67FCDB-A7A9-4E3C-0F49-08D9FDAD00AB', N'2022-03-04 15:25:28', N'2022-03-04 15:25:28', N'30', N'25', N'Update', N'修改', N'Update')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'20AB5395-D57C-49DB-0F4A-08D9FDAD00AB', N'2022-03-04 15:25:28', N'2022-03-04 15:25:28', N'40', N'25', N'Delete', N'删除', N'Delete')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'41CB1942-573A-4D63-0F4B-08D9FDAD00AB', N'2022-03-04 15:25:28', N'2022-03-04 15:25:28', N'50', N'25', N'Save', N'保存', N'Save')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'7E0F6C84-D7F1-4243-0F4C-08D9FDAD00AB', N'2022-03-04 15:25:28', N'2022-03-04 15:25:28', N'60', N'25', N'Search', N'检索', N'Search')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'1E69DF5D-D1E9-4BC8-0F4D-08D9FDAD00AB', N'2022-03-04 15:25:28', N'2022-03-04 15:25:28', N'70', N'25', N'Export', N'导出', N'Export')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'4BBBE120-0CC6-4A08-0F4E-08D9FDAD00AB', N'2022-03-04 15:25:28', N'2022-03-04 15:25:28', N'80', N'25', N'Print', N'打印', N'Print')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'45E2CA86-4823-4FB9-0F57-08D9FDAD00AB', N'2022-03-04 15:25:36', N'2022-03-04 15:25:36', N'10', N'20', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'3E44C6F5-E090-40A1-0F58-08D9FDAD00AB', N'2022-03-04 15:25:36', N'2022-03-04 15:25:36', N'20', N'20', N'Insert', N'添加', N'Insert')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'22A675F6-EFDA-481D-0F59-08D9FDAD00AB', N'2022-03-04 15:25:36', N'2022-03-04 15:25:36', N'30', N'20', N'Update', N'修改', N'Update')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'69DA651E-787B-42E5-0F5A-08D9FDAD00AB', N'2022-03-04 15:25:36', N'2022-03-04 15:25:36', N'40', N'20', N'Delete', N'删除', N'Delete')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'616C4E4A-FB61-49CF-0F5B-08D9FDAD00AB', N'2022-03-04 15:25:36', N'2022-03-04 15:25:36', N'50', N'20', N'Save', N'保存', N'Save')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'5E4E87BD-C179-4B5B-0F5C-08D9FDAD00AB', N'2022-03-04 15:25:36', N'2022-03-04 15:25:36', N'60', N'20', N'Search', N'检索', N'Search')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'54743C86-AC73-4345-0F5D-08D9FDAD00AB', N'2022-03-04 15:25:36', N'2022-03-04 15:25:36', N'70', N'20', N'Export', N'导出', N'Export')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'2469188C-21DE-492A-0F5E-08D9FDAD00AB', N'2022-03-04 15:25:36', N'2022-03-04 15:25:36', N'80', N'20', N'Print', N'打印', N'Print')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'C6BA141B-99BA-4114-0F5F-08D9FDAD00AB', N'2022-03-04 15:25:40', N'2022-03-04 15:25:40', N'10', N'21', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0A85E4FD-5A1C-47F6-0F60-08D9FDAD00AB', N'2022-03-04 15:25:40', N'2022-03-04 15:25:40', N'20', N'21', N'Insert', N'添加', N'Insert')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'F4C73AC0-C66D-4988-0F61-08D9FDAD00AB', N'2022-03-04 15:25:40', N'2022-03-04 15:25:40', N'30', N'21', N'Update', N'修改', N'Update')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'3CB3CBC7-9E45-4CC3-0F62-08D9FDAD00AB', N'2022-03-04 15:25:40', N'2022-03-04 15:25:40', N'40', N'21', N'Delete', N'删除', N'Delete')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'6B209D5A-B366-4A61-0F63-08D9FDAD00AB', N'2022-03-04 15:25:40', N'2022-03-04 15:25:40', N'50', N'21', N'Save', N'保存', N'Save')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'F36B9B06-2826-425F-0F64-08D9FDAD00AB', N'2022-03-04 15:25:40', N'2022-03-04 15:25:40', N'60', N'21', N'Search', N'检索', N'Search')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'A9503588-E6F7-420B-0F65-08D9FDAD00AB', N'2022-03-04 15:25:40', N'2022-03-04 15:25:40', N'70', N'21', N'Export', N'导出', N'Export')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'C9E5FFF0-6744-47D7-0F66-08D9FDAD00AB', N'2022-03-04 15:25:40', N'2022-03-04 15:25:40', N'80', N'21', N'Print', N'打印', N'Print')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'9426768E-B90D-41E1-0F67-08D9FDAD00AB', N'2022-03-04 15:25:50', N'2022-03-04 15:25:50', N'10', N'23', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'E991934A-0D30-416B-0F68-08D9FDAD00AB', N'2022-03-04 15:25:50', N'2022-03-04 15:25:50', N'20', N'23', N'Insert', N'添加', N'Insert')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'B98A365E-6FB4-4EFB-0F69-08D9FDAD00AB', N'2022-03-04 15:25:50', N'2022-03-04 15:25:50', N'30', N'23', N'Update', N'修改', N'Update')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'92B39A10-3927-4EE7-0F6A-08D9FDAD00AB', N'2022-03-04 15:25:50', N'2022-03-04 15:25:50', N'40', N'23', N'Delete', N'删除', N'Delete')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'A03D56D7-4B0D-47CC-0F6B-08D9FDAD00AB', N'2022-03-04 15:25:50', N'2022-03-04 15:25:50', N'50', N'23', N'Save', N'保存', N'Save')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'E2319118-42CC-41A2-0F6C-08D9FDAD00AB', N'2022-03-04 15:25:50', N'2022-03-04 15:25:50', N'60', N'23', N'Search', N'检索', N'Search')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0984A2E1-3722-41D4-0F6D-08D9FDAD00AB', N'2022-03-04 15:25:50', N'2022-03-04 15:25:50', N'70', N'23', N'Export', N'导出', N'Export')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'1D831D57-6634-45D7-0F6E-08D9FDAD00AB', N'2022-03-04 15:25:50', N'2022-03-04 15:25:50', N'80', N'23', N'Print', N'打印', N'Print')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'C77C812A-1601-4311-0F70-08D9FDAD00AB', N'2022-03-04 15:26:00', N'2022-03-04 15:26:00', N'10', N'19', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'3F6D0AF7-5386-4D3A-0F71-08D9FDAD00AB', N'2022-03-04 15:40:52', N'2022-03-04 15:40:52', N'10', N'28', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'55750F56-EDC9-4771-E2D6-08D9FDEFA8F8', N'2022-03-04 23:00:02', N'2022-03-04 23:00:02', N'10', N'24', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'7694FBF5-E28D-424C-E2D7-08D9FDEFA8F8', N'2022-03-04 23:00:02', N'2022-03-04 23:00:02', N'40', N'24', N'Delete', N'删除', N'Delete')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'2186550D-246C-4552-E2D8-08D9FDEFA8F8', N'2022-03-04 23:00:02', N'2022-03-04 23:00:02', N'60', N'24', N'Search', N'检索', N'Search')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'687254AE-0D76-4788-A4E8-08DA1A9D9949', N'2022-04-10 10:56:17', N'2022-04-10 10:56:17', N'10', N'33', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'0073CCE2-FF42-496C-9FF6-08DA204FCECB', N'2022-04-17 20:40:12', N'2022-04-17 20:40:12', N'10', N'36', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'48F0A694-0539-4E69-A2E4-08DA3D8E6577', N'2022-05-24 22:05:57', N'2022-05-24 22:05:57', N'10', N'31', N'Display', N'显示', N'Display')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'4DBF096D-D3D3-4565-A2E5-08DA3D8E6577', N'2022-05-24 22:05:57', N'2022-05-24 22:05:57', N'40', N'31', N'Delete', N'删除', N'Delete')
GO

INSERT INTO [dbo].[sys_menu_function] ([Id], [LastModificationTime], [CreationTime], [Number], [MenuId], [FunctionCode], [FunctionName], [Remark]) VALUES (N'38B4704D-7C5D-4F89-A2E7-08DA3D8E6577', N'2022-05-24 22:05:57', N'2022-05-24 22:05:57', N'60', N'31', N'Search', N'检索', N'Search')
GO


-- ----------------------------
-- Table structure for sys_operation_log
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_operation_log]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_operation_log]
GO

CREATE TABLE [dbo].[sys_operation_log] (
  [Id] uniqueidentifier  NOT NULL ROWGUIDCOL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL,
  [Api] varchar(500) COLLATE Chinese_PRC_CI_AS  NULL,
  [Ip] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Form] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [FormBody] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [QueryString] varchar(max) COLLATE Chinese_PRC_CI_AS  NULL,
  [Browser] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [OS] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [UserId] uniqueidentifier  NULL,
  [TakeUpTime] bigint  NOT NULL,
  [ControllerDisplayName] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [ActionDisplayName] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sys_operation_log] SET (LOCK_ESCALATION = TABLE)
GO

EXEC sp_addextendedproperty
'MS_Description', N'接口地址',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'Api'
GO

EXEC sp_addextendedproperty
'MS_Description', N'ip地址',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'Ip'
GO

EXEC sp_addextendedproperty
'MS_Description', N'表单信息',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'Form'
GO

EXEC sp_addextendedproperty
'MS_Description', N'json表单信息',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'FormBody'
GO

EXEC sp_addextendedproperty
'MS_Description', N'地址栏信息',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'QueryString'
GO

EXEC sp_addextendedproperty
'MS_Description', N'当前操作人id',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'UserId'
GO

EXEC sp_addextendedproperty
'MS_Description', N'接口耗时（毫秒）',
'SCHEMA', N'dbo',
'TABLE', N'sys_operation_log',
'COLUMN', N'TakeUpTime'
GO


-- ----------------------------
-- Records of sys_operation_log
-- ----------------------------
INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7F9F5E45-D27B-47CF-05E6-08DA4934AB3C', N'2022-06-08 17:52:59', N'2022-06-08 17:52:59', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'171', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'9C42B8CA-5C93-4939-05E7-08DA4934AB3C', N'2022-06-08 17:53:02', N'2022-06-08 17:53:02', N'/api/account/check', N'0.0.0.1', N'', N'{"userName":"admin","userPassword":"123456"}', N'', N'Chrome102', N'Windows10', NULL, N'702', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8E0424D1-0FAD-40CC-05E8-08DA4934AB3C', N'2022-06-08 17:53:03', N'2022-06-08 17:53:03', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'306', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'9FDD050B-2CB9-4045-05E9-08DA4934AB3C', N'2022-06-08 17:53:07', N'2022-06-08 17:53:07', N'/api/admin/LowCodeTable/findList/10/1', N'0.0.0.1', N'', N'{"tableName":null,"entityName":null,"displayName":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'307', N'LowCodeTableController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1592B2C5-79DA-43B1-05EA-08DA4934AB3C', N'2022-06-08 17:53:10', N'2022-06-08 17:53:10', N'/api/admin/LowCodeTableInfo/findList/20/1', N'0.0.0.1', N'', N'{"columnName":null,"describe":null,"low_Code_TableId":"f3d7bbb3-c1fb-4d61-92a4-9bc101811335"}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'134', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'CFD829EC-1E94-4441-05EB-08DA4934AB3C', N'2022-06-08 17:53:12', N'2022-06-08 17:53:12', N'/api/admin/CodeGeneration/getCode', N'0.0.0.1', N'', N'{"tableName":"SysRole","type":"HZY.Models","codeText":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'293', NULL, N'获取代码')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A5D483AB-430B-4327-05EC-08DA4934AB3C', N'2022-06-08 17:53:16', N'2022-06-08 17:53:16', N'/api/admin/QuartzTasks/findList/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'471', NULL, N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E75AC2CE-299E-4B97-05ED-08DA4934AB3C', N'2022-06-08 17:53:22', N'2022-06-08 17:53:22', N'/api/admin/QuartzTasks/findList/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'48', NULL, N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A109E2DE-6DAD-41A0-05EE-08DA4934AB3C', N'2022-06-08 17:53:24', N'2022-06-08 17:53:24', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'117', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6DB585E2-EA83-4A57-05EF-08DA4934AB3C', N'2022-06-08 17:53:24', N'2022-06-08 17:53:24', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'230', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'296887BF-9E1B-45A3-87B3-08DA4950A32A', N'2022-06-08 21:13:11', N'2022-06-08 21:13:11', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'19', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D9B2B80D-E83D-4D06-87B4-08DA4950A32A', N'2022-06-08 21:13:11', N'2022-06-08 21:13:11', N'/_vs/browserLink', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F6E33D0D-7465-4B17-87B5-08DA4950A32A', N'2022-06-08 21:13:11', N'2022-06-08 21:13:11', N'/_framework/aspnetcore-browser-refresh.js', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8A82C2D1-D1F2-4C56-87B6-08DA4950A32A', N'2022-06-08 21:13:12', N'2022-06-08 21:13:12', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'184', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'CD9700A2-3103-4B14-87B7-08DA4950A32A', N'2022-06-08 21:13:17', N'2022-06-08 21:13:17', N'/api/admin/LowCodeTable/findList/10/1', N'0.0.0.1', N'', N'{"tableName":null,"entityName":null,"displayName":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'258', N'LowCodeTableController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'80DE4C20-CC2E-4304-87B8-08DA4950A32A', N'2022-06-08 21:13:20', N'2022-06-08 21:13:20', N'/api/admin/LowCodeTableInfo/findList/20/1', N'0.0.0.1', N'', N'{"columnName":null,"describe":null,"low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901"}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'33', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1F63AAEE-42F8-41B2-87B9-08DA4950A32A', N'2022-06-08 21:15:09', N'2022-06-08 21:15:09', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'16', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'360B8EE4-2079-4492-87BA-08DA4950A32A', N'2022-06-08 21:15:09', N'2022-06-08 21:15:09', N'/api/admin/LowCodeTable/findList/10/1', N'0.0.0.1', N'', N'{"tableName":null,"entityName":null,"displayName":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'73', N'LowCodeTableController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'204E6639-DA82-495E-87BB-08DA4950A32A', N'2022-06-08 21:15:30', N'2022-06-08 21:15:30', N'/api/admin/LowCodeTableInfo/findList/20/1', N'0.0.0.1', N'', N'{"columnName":null,"describe":null,"low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901"}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'10', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B1D1F27D-ACEF-4AA5-87BC-08DA4950A32A', N'2022-06-08 21:15:33', N'2022-06-08 21:15:33', N'/api/admin/LowCodeTableInfo/findList/20/1', N'0.0.0.1', N'', N'{"columnName":null,"describe":null,"low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901"}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'7', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'997D17FA-A2A6-4E1D-87BD-08DA4950A32A', N'2022-06-08 21:15:41', N'2022-06-08 21:15:41', N'/api/admin/CodeGeneration/getCode', N'0.0.0.1', N'', N'{"tableName":"SysUser","type":"HZY.Models","codeText":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'134', NULL, N'获取代码')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'0B966C8A-CA78-4F02-87BE-08DA4950A32A', N'2022-06-08 21:15:47', N'2022-06-08 21:15:47', N'/api/admin/CodeGeneration/getCode', N'0.0.0.1', N'', N'{"tableName":"SysUser","type":"Index.vue","codeText":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'108', NULL, N'获取代码')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'74844B30-81E0-40C4-87BF-08DA4950A32A', N'2022-06-08 21:16:30', N'2022-06-08 21:16:30', N'/api/admin/CodeGeneration/getCode', N'0.0.0.1', N'', N'{"tableName":"SysUser","type":"Info.vue","codeText":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'101', NULL, N'获取代码')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8BD71E08-BF43-4172-87C0-08DA4950A32A', N'2022-06-08 21:16:31', N'2022-06-08 21:16:31', N'/api/admin/CodeGeneration/getCode', N'0.0.0.1', N'', N'{"tableName":"SysUser","type":"Index.vue","codeText":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'101', NULL, N'获取代码')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1D63BEBB-867C-42E3-87C1-08DA4950A32A', N'2022-06-08 21:16:47', N'2022-06-08 21:16:47', N'/api/admin/CodeGeneration/getCode', N'0.0.0.1', N'', N'{"tableName":"SysUser","type":"Info.vue","codeText":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'105', NULL, N'获取代码')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'BA77DEB3-4095-424E-87C2-08DA4950A32A', N'2022-06-08 21:16:48', N'2022-06-08 21:16:48', N'/api/admin/CodeGeneration/getCode', N'0.0.0.1', N'', N'{"tableName":"SysUser","type":"Index.vue","codeText":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'97', NULL, N'获取代码')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'332A002C-0F89-4B95-87C3-08DA4950A32A', N'2022-06-08 21:18:37', N'2022-06-08 21:18:37', N'/api/admin/CodeGeneration/getCode', N'0.0.0.1', N'', N'{"tableName":"SysUser","type":"HZY.Controllers.Admin","codeText":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'95', NULL, N'获取代码')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F1416AA6-6FDE-4A01-87C4-08DA4950A32A', N'2022-06-08 21:18:37', N'2022-06-08 21:18:37', N'/api/admin/CodeGeneration/getCode', N'0.0.0.1', N'', N'{"tableName":"SysUser","type":"HZY.Services.Admin","codeText":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'96', NULL, N'获取代码')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'CCF44636-7B7B-4FBD-87C5-08DA4950A32A', N'2022-06-08 21:18:39', N'2022-06-08 21:18:39', N'/api/admin/CodeGeneration/getCode', N'0.0.0.1', N'', N'{"tableName":"SysUser","type":"HZY.Models","codeText":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'114', NULL, N'获取代码')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'43E03102-4A5D-4A6B-87C6-08DA4950A32A', N'2022-06-08 21:18:45', N'2022-06-08 21:18:45', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'50', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'AE5AE9B0-8459-4C8A-87C7-08DA4950A32A', N'2022-06-08 21:18:45', N'2022-06-08 21:18:45', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'112', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6146B491-7A38-49E1-87C8-08DA4950A32A', N'2022-06-08 21:18:48', N'2022-06-08 21:18:48', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'34', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8C0C8A30-547F-4A73-87C9-08DA4950A32A', N'2022-06-08 21:18:48', N'2022-06-08 21:18:48', N'/client/NaN', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'0114E648-ED4B-43CB-784A-08DA49517795', N'2022-06-08 21:19:07', N'2022-06-08 21:19:07', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'19', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B759DC1F-5279-4245-784B-08DA49517795', N'2022-06-08 21:19:09', N'2022-06-08 21:19:09', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'163', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'63BDD462-851B-4837-784C-08DA49517795', N'2022-06-08 21:19:09', N'2022-06-08 21:19:09', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'18', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'205FA1BB-B6CB-4216-784D-08DA49517795', N'2022-06-08 21:19:10', N'2022-06-08 21:19:10', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'223', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'AA0C44AD-CC99-4BEA-784E-08DA49517795', N'2022-06-08 21:19:10', N'2022-06-08 21:19:10', N'/client/NaN', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'27FD6C85-2B89-4E1C-784F-08DA49517795', N'2022-06-08 21:19:23', N'2022-06-08 21:19:23', N'/client/NaN', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'BCE0E59B-940E-40FB-7850-08DA49517795', N'2022-06-08 21:19:23', N'2022-06-08 21:19:23', N'/api/admin/QuartzTasks/findList/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'306', NULL, N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'50AAD55A-642F-4023-7851-08DA49517795', N'2022-06-08 21:19:24', N'2022-06-08 21:19:24', N'/api/admin/LowCodeTable/findList/10/1', N'0.0.0.1', N'', N'{"tableName":null,"entityName":null,"displayName":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'84', N'LowCodeTableController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'46180645-5FBB-4DA8-7852-08DA49517795', N'2022-06-08 21:19:29', N'2022-06-08 21:19:29', N'/api/admin/LowCodeTable/findList/10/2', N'0.0.0.1', N'', N'{"tableName":null,"entityName":null,"displayName":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'68', N'LowCodeTableController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D679B64A-0A91-4070-7853-08DA49517795', N'2022-06-08 21:19:31', N'2022-06-08 21:19:31', N'/api/admin/LowCodeTableInfo/findList/20/1', N'0.0.0.1', N'', N'{"columnName":null,"describe":null,"low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd"}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'32', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'001593FE-9FB4-481A-7854-08DA49517795', N'2022-06-08 21:20:04', N'2022-06-08 21:20:04', N'/api/admin/LowCodeTableInfo/change', N'0.0.0.1', N'', N'[{"id":"e75b8650-ee49-4f83-d4d2-08da3d8d5a26","isPrimary":true,"isIdentity":false,"isNullable":false,"position":70,"columnName":"Id","describe":"","databaseColumnType":"uniqueidentifier","csType":"Guid","csField":"Id","displayName":null,"low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_94"},{"id":"bf24a276-6ed0-49d4-d4d9-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":71,"columnName":"Number","describe":"","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Number","displayName":"编号","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_95"},{"id":"d1eb49cf-c053-4226-d4d8-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":72,"columnName":"Name","describe":"","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Name","displayName":"会员名称","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_96"},{"id":"669b87ce-c694-4c8c-d4da-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":73,"columnName":"Phone","describe":"","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Phone","displayName":"联系电话","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_97"},{"id":"72ac247c-d792-4fee-d4dc-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":74,"columnName":"Sex","describe":"","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Sex","displayName":"性别","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_98"},{"id":"b7fbb61f-94fc-4242-d4d3-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":75,"columnName":"Birthday","describe":"","databaseColumnType":"datetime2","csType":"DateTime","csField":"Birthday","displayName":"生日","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_99"},{"id":"f03ac01c-e0cf-4f13-d4db-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":76,"columnName":"Photo","describe":"","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Photo","displayName":"头像","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_100"},{"id":"8326ca11-09f1-4c38-d4d6-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":77,"columnName":"Introduce","describe":"","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Introduce","displayName":"简介","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_101"},{"id":"e4245f5f-bffa-43f0-d4d5-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":78,"columnName":"FilePath","describe":"文件地址","databaseColumnType":"nvarchar(255)","csType":"String","csField":"FilePath","displayName":"文件地址","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_102"},{"id":"837b058b-a88e-4107-d4dd-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":79,"columnName":"UserId","describe":"所属用户","databaseColumnType":"uniqueidentifier","csType":"Guid","csField":"UserId","displayName":"所属用户","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_103"},{"id":"5541e535-7cbe-43d2-d4d4-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":80,"columnName":"CreationTime","describe":"创建时间","databaseColumnType":"datetime2","csType":"DateTime","csField":"CreationTime","displayName":"创建时间","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_104"},{"id":"897a208c-2e13-46f1-d4d7-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":81,"columnName":"LastModificationTime","describe":"更新时间","databaseColumnType":"datetime2","csType":"DateTime","csField":"LastModificationTime","displayName":"更新时间","low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_105"}]', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'54', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'632C132E-D37C-4559-7855-08DA49517795', N'2022-06-08 21:20:04', N'2022-06-08 21:20:04', N'/api/admin/LowCodeTableInfo/findList/20/1', N'0.0.0.1', N'', N'{"columnName":null,"describe":null,"low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd"}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'69', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7FA0DA83-8E50-4FCF-7856-08DA49517795', N'2022-06-08 21:20:07', N'2022-06-08 21:20:07', N'/api/admin/LowCodeTableInfo/findList/20/1', N'0.0.0.1', N'', N'{"columnName":null,"describe":null,"low_Code_TableId":"73c97832-4e7f-4758-86d2-94327971b5fd"}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'6', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7416F8A9-D1D6-47C2-7857-08DA49517795', N'2022-06-08 21:20:10', N'2022-06-08 21:20:10', N'/api/admin/CodeGeneration/getCode', N'0.0.0.1', N'', N'{"tableName":"Member","type":"HZY.Models","codeText":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'124', NULL, N'获取代码')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4AAF71A2-17ED-4D03-7858-08DA49517795', N'2022-06-08 21:20:15', N'2022-06-08 21:20:15', N'/client/NaN', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'C3A8E258-02C6-473C-7859-08DA49517795', N'2022-06-08 21:20:17', N'2022-06-08 21:20:17', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'14', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8ED9D09A-7FC8-4B0D-785A-08DA49517795', N'2022-06-08 21:20:17', N'2022-06-08 21:20:17', N'/client/NaN', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7DDAB2F1-1375-4720-24FB-08DA4A1A8DE5', N'2022-06-09 21:18:34', N'2022-06-09 21:18:34', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'211', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'CB89F934-536F-4AB9-24FC-08DA4A1A8DE5', N'2022-06-09 21:18:38', N'2022-06-09 21:18:38', N'/api/account/check', N'0.0.0.1', N'', N'{"userName":"admin","userPassword":"123456"}', N'', N'Chrome102', N'Windows10', NULL, N'752', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E0D3696B-25CC-494F-24FD-08DA4A1A8DE5', N'2022-06-09 21:18:39', N'2022-06-09 21:18:39', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'249', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3A175501-CD95-4052-24FE-08DA4A1A8DE5', N'2022-06-09 21:18:51', N'2022-06-09 21:18:51', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'126', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'44011A12-7006-40D3-24FF-08DA4A1A8DE5', N'2022-06-09 21:18:52', N'2022-06-09 21:18:52', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'314', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'FA5BB991-553A-4B75-2500-08DA4A1A8DE5', N'2022-06-09 21:19:29', N'2022-06-09 21:19:29', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'58', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'22E35F44-8EB9-41DC-2501-08DA4A1A8DE5', N'2022-06-09 21:19:30', N'2022-06-09 21:19:30', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'99', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'86084DBD-6564-4840-2502-08DA4A1A8DE5', N'2022-06-09 21:19:30', N'2022-06-09 21:19:30', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'77', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8A6D1A8B-EFCF-4170-2503-08DA4A1A8DE5', N'2022-06-09 21:19:35', N'2022-06-09 21:19:35', N'/api/admin/LowCodeTable/findList/10/1', N'0.0.0.1', N'', N'{"tableName":null,"entityName":null,"displayName":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'154', N'LowCodeTableController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'308EF69F-8079-418A-2504-08DA4A1A8DE5', N'2022-06-09 21:19:38', N'2022-06-09 21:19:38', N'/api/admin/LowCodeTableInfo/findList/20/1', N'0.0.0.1', N'', N'{"columnName":null,"describe":null,"low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901"}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'132', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D3B08EB4-C413-4679-2505-08DA4A1A8DE5', N'2022-06-09 21:20:05', N'2022-06-09 21:20:05', N'/api/admin/LowCodeTableInfo/change', N'0.0.0.1', N'', N'[{"id":"5bcf7406-75cc-4171-d545-08da3d8d5a26","isPrimary":true,"isIdentity":false,"isNullable":false,"position":164,"columnName":"Id","describe":"","databaseColumnType":"uniqueidentifier","csType":"Guid","csField":"Id","displayName":null,"low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_90"},{"id":"e5418d61-916f-45fd-d549-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":165,"columnName":"LastModificationTime","describe":"","databaseColumnType":"datetime2","csType":"DateTime","csField":"LastModificationTime","displayName":"更新时间","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_91"},{"id":"46bac66f-3cf0-46b3-d546-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":166,"columnName":"CreationTime","describe":"","databaseColumnType":"datetime2","csType":"DateTime","csField":"CreationTime","displayName":"创建时间","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_92"},{"id":"4b5bc027-5663-463a-d54b-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":167,"columnName":"Name","describe":"","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Name","displayName":"用户名称","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_93"},{"id":"7cbe8988-cbac-4ea2-d54a-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":168,"columnName":"LoginName","describe":"","databaseColumnType":"nvarchar(255)","csType":"String","csField":"LoginName","displayName":"登录名称","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_94"},{"id":"e36410b5-cb7c-4fc3-d54d-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":169,"columnName":"Password","describe":"","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Password","displayName":"密码","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_95"},{"id":"c82d5132-6cda-463e-d54e-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":170,"columnName":"Phone","describe":"","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Phone","displayName":"联系电话","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_96"},{"id":"287314b2-3141-4957-d548-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":false,"position":171,"columnName":"Email","describe":"","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Email","displayName":"电子邮箱","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_97"},{"id":"a6752bd9-f3d6-451f-d547-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":172,"columnName":"DeleteLock","describe":"","databaseColumnType":"bit","csType":"Boolean","csField":"DeleteLock","displayName":"删除锁","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_98"},{"id":"5a9fa990-b6d6-445f-d54c-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":173,"columnName":"OrganizationId","describe":"","databaseColumnType":"int","csType":"Int32","csField":"OrganizationId","displayName":"组织id","low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_99"}]', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'95', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A4890AB1-F03C-46D0-2506-08DA4A1A8DE5', N'2022-06-09 21:20:05', N'2022-06-09 21:20:05', N'/api/admin/LowCodeTableInfo/findList/20/1', N'0.0.0.1', N'', N'{"columnName":null,"describe":null,"low_Code_TableId":"6323638b-a45f-4a76-886e-69a9e9be0901"}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'130', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'26C2D0E2-036B-4484-2507-08DA4A1A8DE5', N'2022-06-09 21:20:09', N'2022-06-09 21:20:09', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'57', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'51A86198-7032-48CF-2508-08DA4A1A8DE5', N'2022-06-09 21:20:10', N'2022-06-09 21:20:10', N'/api/admin/LowCodeTable/findList/10/1', N'0.0.0.1', N'', N'{"tableName":null,"entityName":null,"displayName":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'140', N'LowCodeTableController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'40C007A3-73F1-48BA-2509-08DA4A1A8DE5', N'2022-06-09 21:20:12', N'2022-06-09 21:20:12', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'80', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'143059EE-2A0D-4137-250A-08DA4A1A8DE5', N'2022-06-09 21:20:13', N'2022-06-09 21:20:13', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'87', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'EFA40A19-84F9-4CD8-250B-08DA4A1A8DE5', N'2022-06-09 21:20:21', N'2022-06-09 21:20:21', N'/api/admin/LowCodeTableInfo/findList/20/1', N'0.0.0.1', N'', N'{"columnName":null,"describe":null,"low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54"}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'124', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1C4A805D-D89D-45FC-250C-08DA4A1A8DE5', N'2022-06-09 21:20:27', N'2022-06-09 21:20:27', N'/api/admin/LowCodeTableInfo/change', N'0.0.0.1', N'', N'[{"id":"d6008705-0d21-42ac-d525-08da3d8d5a26","isPrimary":true,"isIdentity":true,"isNullable":false,"position":132,"columnName":"Id","describe":"","databaseColumnType":"int","csType":"Int32","csField":"Id","displayName":null,"low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_90"},{"id":"1121d642-49e8-4b25-d52b-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":133,"columnName":"Name","describe":"","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Name","displayName":"组织名称","low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_91"},{"id":"5aed3feb-3d77-4e1e-d52c-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":134,"columnName":"OrderNumber","describe":"","databaseColumnType":"int","csType":"Int32","csField":"OrderNumber","displayName":null,"low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_92"},{"id":"11f3d291-cf7a-4143-d52a-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":135,"columnName":"LevelCode","describe":"","databaseColumnType":"varchar(50)","csType":"String","csField":"LevelCode","displayName":null,"low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_93"},{"id":"cf2e3691-ab88-4420-d529-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":136,"columnName":"Leader","describe":"","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Leader","displayName":null,"low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_94"},{"id":"ea63351c-c203-4d40-d52e-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":137,"columnName":"Phone","describe":"","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Phone","displayName":null,"low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_95"},{"id":"ce802713-74f5-4f30-d527-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":138,"columnName":"Email","describe":"","databaseColumnType":"nvarchar(255)","csType":"String","csField":"Email","displayName":null,"low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_96"},{"id":"b9bfca2e-f72b-4a3f-d52f-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":139,"columnName":"State","describe":"","databaseColumnType":"int","csType":"Int32","csField":"State","displayName":null,"low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_97"},{"id":"042a59e2-72c1-4c38-d52d-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":140,"columnName":"ParentId","describe":"","databaseColumnType":"int","csType":"Int32","csField":"ParentId","displayName":null,"low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_98"},{"id":"19a7504c-f740-4b49-d528-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":141,"columnName":"LastModificationTime","describe":"","databaseColumnType":"datetime2","csType":"DateTime","csField":"LastModificationTime","displayName":null,"low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-30","creationTime":"2022-05-24","_X_ROW_KEY":"row_99"},{"id":"0b45e9bb-b9f1-4a2f-d526-08da3d8d5a26","isPrimary":false,"isIdentity":false,"isNullable":true,"position":142,"columnName":"CreationTime","describe":"","databaseColumnType":"datetime2","csType":"DateTime","csField":"CreationTime","displayName":null,"low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54","lastModificationTime":"2022-05-24","creationTime":"2022-05-24","_X_ROW_KEY":"row_100"}]', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'114', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'9274514B-5E79-4E8F-250D-08DA4A1A8DE5', N'2022-06-09 21:20:27', N'2022-06-09 21:20:27', N'/api/admin/LowCodeTableInfo/findList/20/1', N'0.0.0.1', N'', N'{"columnName":null,"describe":null,"low_Code_TableId":"d26d07cb-158a-4cb2-8b20-5dfd5181af54"}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'197', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'19E9324F-2EE2-4A55-250E-08DA4A1A8DE5', N'2022-06-09 21:20:28', N'2022-06-09 21:20:28', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'50', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'46A50DE2-9FC0-4D7F-250F-08DA4A1A8DE5', N'2022-06-09 21:20:29', N'2022-06-09 21:20:29', N'/api/admin/LowCodeTable/findList/10/1', N'0.0.0.1', N'', N'{"tableName":null,"entityName":null,"displayName":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'162', N'LowCodeTableController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'56CA352D-E4E3-4841-2510-08DA4A1A8DE5', N'2022-06-09 21:20:32', N'2022-06-09 21:20:32', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'78', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'13DB830F-CD28-481A-2511-08DA4A1A8DE5', N'2022-06-09 21:20:32', N'2022-06-09 21:20:32', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'108', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'0BC37DD3-F23F-481D-2512-08DA4A1A8DE5', N'2022-06-09 21:20:34', N'2022-06-09 21:20:34', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'99', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'20327992-E935-43AE-2513-08DA4A1A8DE5', N'2022-06-09 21:20:34', N'2022-06-09 21:20:34', N'/client/NaN', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A455BF82-1DDD-4C49-B352-08DA4A1F24A6', N'2022-06-09 21:51:25', N'2022-06-09 21:51:25', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'144', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E72AF86F-D3BC-48F0-B353-08DA4A1F24A6', N'2022-06-09 21:51:26', N'2022-06-09 21:51:26', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'327', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'5F5DD7C0-D9F5-48C9-B354-08DA4A1F24A6', N'2022-06-09 21:51:50', N'2022-06-09 21:51:50', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'128', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4E20771B-3E28-48D9-B355-08DA4A1F24A6', N'2022-06-09 21:51:51', N'2022-06-09 21:51:51', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'384', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'0D9B4D9F-5195-4F7E-B356-08DA4A1F24A6', N'2022-06-09 21:51:54', N'2022-06-09 21:51:54', N'/api/admin/SysUser/findForm/1550d6d4-0529-4fdd-62dc-08da00e3d8a0', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'157', N'系统账号', N'查询数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3EE77A3E-9098-4C93-B357-08DA4A1F24A6', N'2022-06-09 21:51:54', N'2022-06-09 21:51:54', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'117', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'FBF0EF8D-95D8-480E-B358-08DA4A1F24A6', N'2022-06-09 21:51:55', N'2022-06-09 21:51:55', N'/api/admin/SysUser/saveForm', N'0.0.0.1', N'', N'{"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","form":{"name":"鲁迅","loginName":"鲁迅","password":"","phone":"12345678900","email":"12345678900@qq.com","deleteLock":false,"organizationId":7,"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","lastModificationTime":"2022-03-08 17:30:56","creationTime":"2022-03-08 17:21:56"},"roleIds":["40ff1844-c099-4061-98e0-cd6e544fcfd3"],"allRoleList":[{"number":1,"name":"超级管理员","remark":"拥有所有权限","deleteLock":true,"id":"18fa4771-6f58-46a3-80d2-6f0f5e9972e3","lastModificationTime":"2021-01-10 11:25:12","creationTime":"2016-07-06 17:59:20"},{"number":2,"name":"普通用户","remark":"普通用户","deleteLock":true,"id":"40ff1844-c099-4061-98e0-cd6e544fcfd3","lastModificationTime":"2021-01-30 00:51:17","creationTime":"2016-07-06 17:59:20"}],"postIds":["f0bd38c2-f1de-4bd9-e2db-08da00a93622"],"allPostList":[{"number":1,"code":"ceo","name":"董事长","state":1,"remarks":null,"id":"96927c30-41d0-4ced-8e29-cbed35c90fb0","lastModificationTime":"2021-05-27 20:26:22","creationTime":"2021-05-27 20:26:22"},{"number":2,"code":"se","name":"项目经理","state":1,"remarks":null,"id":"0716b4b0-9a06-43e9-8ae8-82c74875f83e","lastModificationTime":"2021-05-27 20:26:35","creationTime":"2021-05-27 20:26:35"},{"number":3,"code":"hr","name":"人力资源","state":1,"remarks":null,"id":"f0c67537-8094-429a-b474-f54ac518609e","lastModificationTime":"2021-05-27 20:26:44","creationTime":"2021-05-27 20:26:44"},{"number":4,"code":"user","name":"普通员工","state":1,"remarks":null,"id":"e46af329-6d08-442c-9837-f22cff954411","lastModificationTime":"2022-04-23 21:50:55","creationTime":"2021-05-27 20:26:52"},{"number":5,"code":"dotnet_engineer","name":"DotNet软件工程师","state":1,"remarks":null,"id":"f0bd38c2-f1de-4bd9-e2db-08da00a93622","lastModificationTime":"2022-03-08 10:13:18","creationTime":"2022-03-08 10:13:18"}]}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'240', N'系统账号', N'保存/编辑数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'BBF46D93-F8A2-4160-B359-08DA4A1F24A6', N'2022-06-09 21:51:55', N'2022-06-09 21:51:55', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'126', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'660C87A9-A2E4-4F07-5FD3-08DA4A1F6923', N'2022-06-09 21:53:20', N'2022-06-09 21:53:20', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'142', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A83AAEAD-692A-46D8-5FD4-08DA4A1F6923', N'2022-06-09 21:53:21', N'2022-06-09 21:53:21', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'302', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1D8EA321-9932-495C-5A34-08DA4A1F78A4', N'2022-06-09 21:53:46', N'2022-06-09 21:53:46', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'132', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E900876D-25A8-4800-5A35-08DA4A1F78A4', N'2022-06-09 21:53:47', N'2022-06-09 21:53:47', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'285', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6306BB91-0912-4E22-5A36-08DA4A1F78A4', N'2022-06-09 21:53:50', N'2022-06-09 21:53:50', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'119', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4CE0D43C-54C2-4420-5A37-08DA4A1F78A4', N'2022-06-09 21:53:51', N'2022-06-09 21:53:51', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'364', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F7713B02-993F-461E-5A38-08DA4A1F78A4', N'2022-06-09 21:53:55', N'2022-06-09 21:53:55', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'160', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'BCE223B6-3BFB-4128-5A39-08DA4A1F78A4', N'2022-06-09 21:53:55', N'2022-06-09 21:53:55', N'/api/admin/SysUser/findForm/1550d6d4-0529-4fdd-62dc-08da00e3d8a0', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'205', N'系统账号', N'查询数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3079FFE6-E3DF-464F-5A3A-08DA4A1F78A4', N'2022-06-09 21:54:48', N'2022-06-09 21:54:48', N'/api/admin/SysUser/saveForm', N'0.0.0.1', N'', N'{"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","form":{"name":"鲁迅","loginName":"鲁迅","password":"","phone":"12345678900","email":"12345678900@qq.com","deleteLock":false,"organizationId":7,"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","lastModificationTime":"2022-03-08 17:30:56","creationTime":"2022-03-08 17:21:56"},"roleIds":["40ff1844-c099-4061-98e0-cd6e544fcfd3"],"allRoleList":[{"number":1,"name":"超级管理员","remark":"拥有所有权限","deleteLock":true,"id":"18fa4771-6f58-46a3-80d2-6f0f5e9972e3","lastModificationTime":"2021-01-10 11:25:12","creationTime":"2016-07-06 17:59:20"},{"number":2,"name":"普通用户","remark":"普通用户","deleteLock":true,"id":"40ff1844-c099-4061-98e0-cd6e544fcfd3","lastModificationTime":"2021-01-30 00:51:17","creationTime":"2016-07-06 17:59:20"}],"postIds":["f0bd38c2-f1de-4bd9-e2db-08da00a93622"],"allPostList":[{"number":1,"code":"ceo","name":"董事长","state":1,"remarks":null,"id":"96927c30-41d0-4ced-8e29-cbed35c90fb0","lastModificationTime":"2021-05-27 20:26:22","creationTime":"2021-05-27 20:26:22"},{"number":2,"code":"se","name":"项目经理","state":1,"remarks":null,"id":"0716b4b0-9a06-43e9-8ae8-82c74875f83e","lastModificationTime":"2021-05-27 20:26:35","creationTime":"2021-05-27 20:26:35"},{"number":3,"code":"hr","name":"人力资源","state":1,"remarks":null,"id":"f0c67537-8094-429a-b474-f54ac518609e","lastModificationTime":"2021-05-27 20:26:44","creationTime":"2021-05-27 20:26:44"},{"number":4,"code":"user","name":"普通员工","state":1,"remarks":null,"id":"e46af329-6d08-442c-9837-f22cff954411","lastModificationTime":"2022-04-23 21:50:55","creationTime":"2021-05-27 20:26:52"},{"number":5,"code":"dotnet_engineer","name":"DotNet软件工程师","state":1,"remarks":null,"id":"f0bd38c2-f1de-4bd9-e2db-08da00a93622","lastModificationTime":"2022-03-08 10:13:18","creationTime":"2022-03-08 10:13:18"}]}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'51750', N'系统账号', N'保存/编辑数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7D15FB79-B8F0-4AD9-5A3B-08DA4A1F78A4', N'2022-06-09 21:54:48', N'2022-06-09 21:54:48', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'100', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B4C94A66-22E0-424A-B51C-08DA4A1FAB7E', N'2022-06-09 21:55:11', N'2022-06-09 21:55:11', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'166', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'EB1645BC-C34B-45D6-B51D-08DA4A1FAB7E', N'2022-06-09 21:55:12', N'2022-06-09 21:55:12', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'265', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'2A04001A-65C7-4CED-B51E-08DA4A1FAB7E', N'2022-06-09 21:55:15', N'2022-06-09 21:55:15', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'138', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'9D89E969-D688-4D58-B51F-08DA4A1FAB7E', N'2022-06-09 21:55:16', N'2022-06-09 21:55:16', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'488', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3F5F09C1-F449-4E31-B520-08DA4A1FAB7E', N'2022-06-09 21:55:18', N'2022-06-09 21:55:18', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'155', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'68EC409D-0C6D-4786-B521-08DA4A1FAB7E', N'2022-06-09 21:55:18', N'2022-06-09 21:55:18', N'/api/admin/SysUser/findForm/1550d6d4-0529-4fdd-62dc-08da00e3d8a0', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'188', N'系统账号', N'查询数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6945B82B-2B86-44B8-B522-08DA4A1FAB7E', N'2022-06-09 21:56:05', N'2022-06-09 21:56:05', N'/api/admin/SysUser/saveForm', N'0.0.0.1', N'', N'{"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","form":{"name":"鲁迅","loginName":"鲁迅","password":"","phone":"12345678900","email":"12345678900@qq.com","deleteLock":false,"organizationId":7,"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","lastModificationTime":"2022-03-08 17:30:56","creationTime":"2022-03-08 17:21:56"},"roleIds":["40ff1844-c099-4061-98e0-cd6e544fcfd3"],"allRoleList":[{"number":1,"name":"超级管理员","remark":"拥有所有权限","deleteLock":true,"id":"18fa4771-6f58-46a3-80d2-6f0f5e9972e3","lastModificationTime":"2021-01-10 11:25:12","creationTime":"2016-07-06 17:59:20"},{"number":2,"name":"普通用户","remark":"普通用户","deleteLock":true,"id":"40ff1844-c099-4061-98e0-cd6e544fcfd3","lastModificationTime":"2021-01-30 00:51:17","creationTime":"2016-07-06 17:59:20"}],"postIds":["f0bd38c2-f1de-4bd9-e2db-08da00a93622"],"allPostList":[{"number":1,"code":"ceo","name":"董事长","state":1,"remarks":null,"id":"96927c30-41d0-4ced-8e29-cbed35c90fb0","lastModificationTime":"2021-05-27 20:26:22","creationTime":"2021-05-27 20:26:22"},{"number":2,"code":"se","name":"项目经理","state":1,"remarks":null,"id":"0716b4b0-9a06-43e9-8ae8-82c74875f83e","lastModificationTime":"2021-05-27 20:26:35","creationTime":"2021-05-27 20:26:35"},{"number":3,"code":"hr","name":"人力资源","state":1,"remarks":null,"id":"f0c67537-8094-429a-b474-f54ac518609e","lastModificationTime":"2021-05-27 20:26:44","creationTime":"2021-05-27 20:26:44"},{"number":4,"code":"user","name":"普通员工","state":1,"remarks":null,"id":"e46af329-6d08-442c-9837-f22cff954411","lastModificationTime":"2022-04-23 21:50:55","creationTime":"2021-05-27 20:26:52"},{"number":5,"code":"dotnet_engineer","name":"DotNet软件工程师","state":1,"remarks":null,"id":"f0bd38c2-f1de-4bd9-e2db-08da00a93622","lastModificationTime":"2022-03-08 10:13:18","creationTime":"2022-03-08 10:13:18"}]}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'46112', N'系统账号', N'保存/编辑数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1201F4B3-1631-4133-B523-08DA4A1FAB7E', N'2022-06-09 21:56:06', N'2022-06-09 21:56:06', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'114', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'85751297-9BF1-49E5-B524-08DA4A1FAB7E', N'2022-06-09 21:56:33', N'2022-06-09 21:56:33', N'/api/admin/SysUser/findForm/1550d6d4-0529-4fdd-62dc-08da00e3d8a0', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'93', N'系统账号', N'查询数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'18E13973-B856-4F94-B525-08DA4A1FAB7E', N'2022-06-09 21:56:33', N'2022-06-09 21:56:33', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'121', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8A89FDA2-1170-44EE-B526-08DA4A1FAB7E', N'2022-06-09 21:56:44', N'2022-06-09 21:56:44', N'/api/admin/SysUser/saveForm', N'0.0.0.1', N'', N'{"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","form":{"name":"鲁迅","loginName":"鲁迅","password":"","phone":"12345678900","email":"12345678900@qq.com","deleteLock":false,"organizationId":7,"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","lastModificationTime":"2022-03-08 17:30:56","creationTime":"2022-03-08 17:21:56"},"roleIds":["40ff1844-c099-4061-98e0-cd6e544fcfd3"],"allRoleList":[{"number":1,"name":"超级管理员","remark":"拥有所有权限","deleteLock":true,"id":"18fa4771-6f58-46a3-80d2-6f0f5e9972e3","lastModificationTime":"2021-01-10 11:25:12","creationTime":"2016-07-06 17:59:20"},{"number":2,"name":"普通用户","remark":"普通用户","deleteLock":true,"id":"40ff1844-c099-4061-98e0-cd6e544fcfd3","lastModificationTime":"2021-01-30 00:51:17","creationTime":"2016-07-06 17:59:20"}],"postIds":["f0bd38c2-f1de-4bd9-e2db-08da00a93622"],"allPostList":[{"number":1,"code":"ceo","name":"董事长","state":1,"remarks":null,"id":"96927c30-41d0-4ced-8e29-cbed35c90fb0","lastModificationTime":"2021-05-27 20:26:22","creationTime":"2021-05-27 20:26:22"},{"number":2,"code":"se","name":"项目经理","state":1,"remarks":null,"id":"0716b4b0-9a06-43e9-8ae8-82c74875f83e","lastModificationTime":"2021-05-27 20:26:35","creationTime":"2021-05-27 20:26:35"},{"number":3,"code":"hr","name":"人力资源","state":1,"remarks":null,"id":"f0c67537-8094-429a-b474-f54ac518609e","lastModificationTime":"2021-05-27 20:26:44","creationTime":"2021-05-27 20:26:44"},{"number":4,"code":"user","name":"普通员工","state":1,"remarks":null,"id":"e46af329-6d08-442c-9837-f22cff954411","lastModificationTime":"2022-04-23 21:50:55","creationTime":"2021-05-27 20:26:52"},{"number":5,"code":"dotnet_engineer","name":"DotNet软件工程师","state":1,"remarks":null,"id":"f0bd38c2-f1de-4bd9-e2db-08da00a93622","lastModificationTime":"2022-03-08 10:13:18","creationTime":"2022-03-08 10:13:18"}]}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9514', N'系统账号', N'保存/编辑数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'AC443B5D-E634-4FDB-B527-08DA4A1FAB7E', N'2022-06-09 21:56:44', N'2022-06-09 21:56:44', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'99', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'C800BE8E-D13A-412B-2ECC-08DA4A204633', N'2022-06-09 21:59:30', N'2022-06-09 21:59:30', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'187', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'DABB03CE-8B4C-4815-2ECD-08DA4A204633', N'2022-06-09 21:59:31', N'2022-06-09 21:59:31', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'266', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3B8692BD-D10C-4351-2ECE-08DA4A204633', N'2022-06-09 21:59:34', N'2022-06-09 21:59:34', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'121', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4C44BB6A-276B-441F-2ECF-08DA4A204633', N'2022-06-09 21:59:35', N'2022-06-09 21:59:35', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'400', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F90F227D-2108-4F96-2ED0-08DA4A204633', N'2022-06-09 21:59:36', N'2022-06-09 21:59:36', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'191', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'CC93CA48-E025-4410-2ED1-08DA4A204633', N'2022-06-09 21:59:36', N'2022-06-09 21:59:36', N'/api/admin/SysUser/findForm/1550d6d4-0529-4fdd-62dc-08da00e3d8a0', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'255', N'系统账号', N'查询数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'EC5CC9AF-BE5C-420A-2ED2-08DA4A204633', N'2022-06-09 21:59:46', N'2022-06-09 21:59:46', N'/api/admin/SysUser/saveForm', N'0.0.0.1', N'', N'{"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","form":{"name":"鲁迅","loginName":"鲁迅","password":"","phone":"12345678900","email":"12345678900@qq.com","deleteLock":false,"organizationId":7,"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","lastModificationTime":"2022-03-08 17:30:56","creationTime":"2022-03-08 17:21:56"},"roleIds":["40ff1844-c099-4061-98e0-cd6e544fcfd3"],"allRoleList":[{"number":1,"name":"超级管理员","remark":"拥有所有权限","deleteLock":true,"id":"18fa4771-6f58-46a3-80d2-6f0f5e9972e3","lastModificationTime":"2021-01-10 11:25:12","creationTime":"2016-07-06 17:59:20"},{"number":2,"name":"普通用户","remark":"普通用户","deleteLock":true,"id":"40ff1844-c099-4061-98e0-cd6e544fcfd3","lastModificationTime":"2021-01-30 00:51:17","creationTime":"2016-07-06 17:59:20"}],"postIds":["f0bd38c2-f1de-4bd9-e2db-08da00a93622"],"allPostList":[{"number":1,"code":"ceo","name":"董事长","state":1,"remarks":null,"id":"96927c30-41d0-4ced-8e29-cbed35c90fb0","lastModificationTime":"2021-05-27 20:26:22","creationTime":"2021-05-27 20:26:22"},{"number":2,"code":"se","name":"项目经理","state":1,"remarks":null,"id":"0716b4b0-9a06-43e9-8ae8-82c74875f83e","lastModificationTime":"2021-05-27 20:26:35","creationTime":"2021-05-27 20:26:35"},{"number":3,"code":"hr","name":"人力资源","state":1,"remarks":null,"id":"f0c67537-8094-429a-b474-f54ac518609e","lastModificationTime":"2021-05-27 20:26:44","creationTime":"2021-05-27 20:26:44"},{"number":4,"code":"user","name":"普通员工","state":1,"remarks":null,"id":"e46af329-6d08-442c-9837-f22cff954411","lastModificationTime":"2022-04-23 21:50:55","creationTime":"2021-05-27 20:26:52"},{"number":5,"code":"dotnet_engineer","name":"DotNet软件工程师","state":1,"remarks":null,"id":"f0bd38c2-f1de-4bd9-e2db-08da00a93622","lastModificationTime":"2022-03-08 10:13:18","creationTime":"2022-03-08 10:13:18"}]}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9093', N'系统账号', N'保存/编辑数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B30AEC31-D918-4C45-7698-08DA4A206BD0', N'2022-06-09 22:00:34', N'2022-06-09 22:00:34', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'183', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1422DB18-321D-479A-7699-08DA4A206BD0', N'2022-06-09 22:00:35', N'2022-06-09 22:00:35', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'282', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'966362E4-4A28-4816-769A-08DA4A206BD0', N'2022-06-09 22:00:39', N'2022-06-09 22:00:39', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'126', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'9C33EDEB-573A-42B1-769B-08DA4A206BD0', N'2022-06-09 22:00:40', N'2022-06-09 22:00:40', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'419', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'686C7674-2FE1-4C94-769C-08DA4A206BD0', N'2022-06-09 22:00:42', N'2022-06-09 22:00:42', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'143', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A13FDEEC-F460-4DAC-769D-08DA4A206BD0', N'2022-06-09 22:00:42', N'2022-06-09 22:00:42', N'/api/admin/SysUser/findForm/1550d6d4-0529-4fdd-62dc-08da00e3d8a0', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'169', N'系统账号', N'查询数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'53C9FE18-CFA9-4EB3-769E-08DA4A206BD0', N'2022-06-09 22:00:44', N'2022-06-09 22:00:44', N'/api/admin/SysUser/saveForm', N'0.0.0.1', N'', N'{"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","form":{"name":"鲁迅","loginName":"鲁迅","password":"","phone":"12345678900","email":"12345678900@qq.com","deleteLock":false,"organizationId":7,"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","lastModificationTime":"2022-03-08 17:30:56","creationTime":"2022-03-08 17:21:56"},"roleIds":["40ff1844-c099-4061-98e0-cd6e544fcfd3"],"allRoleList":[{"number":1,"name":"超级管理员","remark":"拥有所有权限","deleteLock":true,"id":"18fa4771-6f58-46a3-80d2-6f0f5e9972e3","lastModificationTime":"2021-01-10 11:25:12","creationTime":"2016-07-06 17:59:20"},{"number":2,"name":"普通用户","remark":"普通用户","deleteLock":true,"id":"40ff1844-c099-4061-98e0-cd6e544fcfd3","lastModificationTime":"2021-01-30 00:51:17","creationTime":"2016-07-06 17:59:20"}],"postIds":["f0bd38c2-f1de-4bd9-e2db-08da00a93622"],"allPostList":[{"number":1,"code":"ceo","name":"董事长","state":1,"remarks":null,"id":"96927c30-41d0-4ced-8e29-cbed35c90fb0","lastModificationTime":"2021-05-27 20:26:22","creationTime":"2021-05-27 20:26:22"},{"number":2,"code":"se","name":"项目经理","state":1,"remarks":null,"id":"0716b4b0-9a06-43e9-8ae8-82c74875f83e","lastModificationTime":"2021-05-27 20:26:35","creationTime":"2021-05-27 20:26:35"},{"number":3,"code":"hr","name":"人力资源","state":1,"remarks":null,"id":"f0c67537-8094-429a-b474-f54ac518609e","lastModificationTime":"2021-05-27 20:26:44","creationTime":"2021-05-27 20:26:44"},{"number":4,"code":"user","name":"普通员工","state":1,"remarks":null,"id":"e46af329-6d08-442c-9837-f22cff954411","lastModificationTime":"2022-04-23 21:50:55","creationTime":"2021-05-27 20:26:52"},{"number":5,"code":"dotnet_engineer","name":"DotNet软件工程师","state":1,"remarks":null,"id":"f0bd38c2-f1de-4bd9-e2db-08da00a93622","lastModificationTime":"2022-03-08 10:13:18","creationTime":"2022-03-08 10:13:18"}]}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'442', N'系统账号', N'保存/编辑数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D2718754-CFE9-4D3A-769F-08DA4A206BD0', N'2022-06-09 22:00:47', N'2022-06-09 22:00:47', N'/api/admin/SysUser/saveForm', N'0.0.0.1', N'', N'{"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","form":{"name":"鲁迅","loginName":"鲁迅","password":"","phone":"12345678900","email":"12345678900@qq.com","deleteLock":false,"organizationId":7,"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","lastModificationTime":"2022-03-08 17:30:56","creationTime":"2022-03-08 17:21:56"},"roleIds":["40ff1844-c099-4061-98e0-cd6e544fcfd3"],"allRoleList":[{"number":1,"name":"超级管理员","remark":"拥有所有权限","deleteLock":true,"id":"18fa4771-6f58-46a3-80d2-6f0f5e9972e3","lastModificationTime":"2021-01-10 11:25:12","creationTime":"2016-07-06 17:59:20"},{"number":2,"name":"普通用户","remark":"普通用户","deleteLock":true,"id":"40ff1844-c099-4061-98e0-cd6e544fcfd3","lastModificationTime":"2021-01-30 00:51:17","creationTime":"2016-07-06 17:59:20"}],"postIds":["f0bd38c2-f1de-4bd9-e2db-08da00a93622"],"allPostList":[{"number":1,"code":"ceo","name":"董事长","state":1,"remarks":null,"id":"96927c30-41d0-4ced-8e29-cbed35c90fb0","lastModificationTime":"2021-05-27 20:26:22","creationTime":"2021-05-27 20:26:22"},{"number":2,"code":"se","name":"项目经理","state":1,"remarks":null,"id":"0716b4b0-9a06-43e9-8ae8-82c74875f83e","lastModificationTime":"2021-05-27 20:26:35","creationTime":"2021-05-27 20:26:35"},{"number":3,"code":"hr","name":"人力资源","state":1,"remarks":null,"id":"f0c67537-8094-429a-b474-f54ac518609e","lastModificationTime":"2021-05-27 20:26:44","creationTime":"2021-05-27 20:26:44"},{"number":4,"code":"user","name":"普通员工","state":1,"remarks":null,"id":"e46af329-6d08-442c-9837-f22cff954411","lastModificationTime":"2022-04-23 21:50:55","creationTime":"2021-05-27 20:26:52"},{"number":5,"code":"dotnet_engineer","name":"DotNet软件工程师","state":1,"remarks":null,"id":"f0bd38c2-f1de-4bd9-e2db-08da00a93622","lastModificationTime":"2022-03-08 10:13:18","creationTime":"2022-03-08 10:13:18"}]}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'424', N'系统账号', N'保存/编辑数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'53BFCFF5-A35D-4BED-76A0-08DA4A206BD0', N'2022-06-09 22:01:10', N'2022-06-09 22:01:10', N'/api/admin/SysUser/saveForm', N'0.0.0.1', N'', N'{"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","form":{"name":"鲁迅","loginName":"鲁迅","password":"","phone":"12345678900","email":"12345678900@qq.com","deleteLock":false,"organizationId":7,"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","lastModificationTime":"2022-03-08 17:30:56","creationTime":"2022-03-08 17:21:56"},"roleIds":["40ff1844-c099-4061-98e0-cd6e544fcfd3"],"allRoleList":[{"number":1,"name":"超级管理员","remark":"拥有所有权限","deleteLock":true,"id":"18fa4771-6f58-46a3-80d2-6f0f5e9972e3","lastModificationTime":"2021-01-10 11:25:12","creationTime":"2016-07-06 17:59:20"},{"number":2,"name":"普通用户","remark":"普通用户","deleteLock":true,"id":"40ff1844-c099-4061-98e0-cd6e544fcfd3","lastModificationTime":"2021-01-30 00:51:17","creationTime":"2016-07-06 17:59:20"}],"postIds":["f0bd38c2-f1de-4bd9-e2db-08da00a93622"],"allPostList":[{"number":1,"code":"ceo","name":"董事长","state":1,"remarks":null,"id":"96927c30-41d0-4ced-8e29-cbed35c90fb0","lastModificationTime":"2021-05-27 20:26:22","creationTime":"2021-05-27 20:26:22"},{"number":2,"code":"se","name":"项目经理","state":1,"remarks":null,"id":"0716b4b0-9a06-43e9-8ae8-82c74875f83e","lastModificationTime":"2021-05-27 20:26:35","creationTime":"2021-05-27 20:26:35"},{"number":3,"code":"hr","name":"人力资源","state":1,"remarks":null,"id":"f0c67537-8094-429a-b474-f54ac518609e","lastModificationTime":"2021-05-27 20:26:44","creationTime":"2021-05-27 20:26:44"},{"number":4,"code":"user","name":"普通员工","state":1,"remarks":null,"id":"e46af329-6d08-442c-9837-f22cff954411","lastModificationTime":"2022-04-23 21:50:55","creationTime":"2021-05-27 20:26:52"},{"number":5,"code":"dotnet_engineer","name":"DotNet软件工程师","state":1,"remarks":null,"id":"f0bd38c2-f1de-4bd9-e2db-08da00a93622","lastModificationTime":"2022-03-08 10:13:18","creationTime":"2022-03-08 10:13:18"}]}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'3890', N'系统账号', N'保存/编辑数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8800DB85-D3A1-49AF-216B-08DA4A2241DA', N'2022-06-09 22:13:42', N'2022-06-09 22:13:42', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'168', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6557EE5F-C1E0-4609-216C-08DA4A2241DA', N'2022-06-09 22:13:43', N'2022-06-09 22:13:43', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'247', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'502A7DD5-F322-4635-216D-08DA4A2241DA', N'2022-06-09 22:13:48', N'2022-06-09 22:13:48', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'265', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'EE472257-3B56-40FA-216E-08DA4A2241DA', N'2022-06-09 22:13:48', N'2022-06-09 22:13:48', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'755', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'C3A0F74B-6E89-4309-216F-08DA4A2241DA', N'2022-06-09 22:13:50', N'2022-06-09 22:13:50', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'305', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3882CBCB-4220-4BF2-2170-08DA4A2241DA', N'2022-06-09 22:13:50', N'2022-06-09 22:13:50', N'/api/admin/SysUser/findForm/1550d6d4-0529-4fdd-62dc-08da00e3d8a0', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'336', N'系统账号', N'查询数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'5B5D43C9-B95A-48EF-2171-08DA4A2241DA', N'2022-06-09 22:13:52', N'2022-06-09 22:13:52', N'/api/admin/SysUser/saveForm', N'0.0.0.1', N'', N'{"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","form":{"name":"鲁迅","loginName":"鲁迅","password":"","phone":"12345678900","email":"12345678900@qq.com","deleteLock":false,"organizationId":7,"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","lastModificationTime":"2022-03-08 17:30:56","creationTime":"2022-03-08 17:21:56"},"roleIds":["40ff1844-c099-4061-98e0-cd6e544fcfd3"],"allRoleList":[{"number":1,"name":"超级管理员","remark":"拥有所有权限","deleteLock":true,"id":"18fa4771-6f58-46a3-80d2-6f0f5e9972e3","lastModificationTime":"2021-01-10 11:25:12","creationTime":"2016-07-06 17:59:20"},{"number":2,"name":"普通用户","remark":"普通用户","deleteLock":true,"id":"40ff1844-c099-4061-98e0-cd6e544fcfd3","lastModificationTime":"2021-01-30 00:51:17","creationTime":"2016-07-06 17:59:20"}],"postIds":["f0bd38c2-f1de-4bd9-e2db-08da00a93622"],"allPostList":[{"number":1,"code":"ceo","name":"董事长","state":1,"remarks":null,"id":"96927c30-41d0-4ced-8e29-cbed35c90fb0","lastModificationTime":"2021-05-27 20:26:22","creationTime":"2021-05-27 20:26:22"},{"number":2,"code":"se","name":"项目经理","state":1,"remarks":null,"id":"0716b4b0-9a06-43e9-8ae8-82c74875f83e","lastModificationTime":"2021-05-27 20:26:35","creationTime":"2021-05-27 20:26:35"},{"number":3,"code":"hr","name":"人力资源","state":1,"remarks":null,"id":"f0c67537-8094-429a-b474-f54ac518609e","lastModificationTime":"2021-05-27 20:26:44","creationTime":"2021-05-27 20:26:44"},{"number":4,"code":"user","name":"普通员工","state":1,"remarks":null,"id":"e46af329-6d08-442c-9837-f22cff954411","lastModificationTime":"2022-04-23 21:50:55","creationTime":"2021-05-27 20:26:52"},{"number":5,"code":"dotnet_engineer","name":"DotNet软件工程师","state":1,"remarks":null,"id":"f0bd38c2-f1de-4bd9-e2db-08da00a93622","lastModificationTime":"2022-03-08 10:13:18","creationTime":"2022-03-08 10:13:18"}]}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'662', N'系统账号', N'保存/编辑数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'DFAA42CE-0440-4D85-2172-08DA4A2241DA', N'2022-06-09 22:15:24', N'2022-06-09 22:15:24', N'/api/admin/SysUser/saveForm', N'0.0.0.1', N'', N'{"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","form":{"name":"鲁迅","loginName":"鲁迅","password":"","phone":"12345678900","email":"12345678900@qq.com","deleteLock":false,"organizationId":7,"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","lastModificationTime":"2022-03-08 17:30:56","creationTime":"2022-03-08 17:21:56"},"roleIds":["40ff1844-c099-4061-98e0-cd6e544fcfd3"],"allRoleList":[{"number":1,"name":"超级管理员","remark":"拥有所有权限","deleteLock":true,"id":"18fa4771-6f58-46a3-80d2-6f0f5e9972e3","lastModificationTime":"2021-01-10 11:25:12","creationTime":"2016-07-06 17:59:20"},{"number":2,"name":"普通用户","remark":"普通用户","deleteLock":true,"id":"40ff1844-c099-4061-98e0-cd6e544fcfd3","lastModificationTime":"2021-01-30 00:51:17","creationTime":"2016-07-06 17:59:20"}],"postIds":["f0bd38c2-f1de-4bd9-e2db-08da00a93622"],"allPostList":[{"number":1,"code":"ceo","name":"董事长","state":1,"remarks":null,"id":"96927c30-41d0-4ced-8e29-cbed35c90fb0","lastModificationTime":"2021-05-27 20:26:22","creationTime":"2021-05-27 20:26:22"},{"number":2,"code":"se","name":"项目经理","state":1,"remarks":null,"id":"0716b4b0-9a06-43e9-8ae8-82c74875f83e","lastModificationTime":"2021-05-27 20:26:35","creationTime":"2021-05-27 20:26:35"},{"number":3,"code":"hr","name":"人力资源","state":1,"remarks":null,"id":"f0c67537-8094-429a-b474-f54ac518609e","lastModificationTime":"2021-05-27 20:26:44","creationTime":"2021-05-27 20:26:44"},{"number":4,"code":"user","name":"普通员工","state":1,"remarks":null,"id":"e46af329-6d08-442c-9837-f22cff954411","lastModificationTime":"2022-04-23 21:50:55","creationTime":"2021-05-27 20:26:52"},{"number":5,"code":"dotnet_engineer","name":"DotNet软件工程师","state":1,"remarks":null,"id":"f0bd38c2-f1de-4bd9-e2db-08da00a93622","lastModificationTime":"2022-03-08 10:13:18","creationTime":"2022-03-08 10:13:18"}]}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'76170', N'系统账号', N'保存/编辑数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'EA8CB5BE-58D6-4712-2173-08DA4A2241DA', N'2022-06-09 22:15:33', N'2022-06-09 22:15:33', N'/api/admin/SysUser/saveForm', N'0.0.0.1', N'', N'{"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","form":{"name":"鲁迅","loginName":"鲁迅","password":"","phone":"12345678900","email":"12345678900@qq.com","deleteLock":false,"organizationId":7,"id":"1550d6d4-0529-4fdd-62dc-08da00e3d8a0","lastModificationTime":"2022-03-08 17:30:56","creationTime":"2022-03-08 17:21:56"},"roleIds":["40ff1844-c099-4061-98e0-cd6e544fcfd3"],"allRoleList":[{"number":1,"name":"超级管理员","remark":"拥有所有权限","deleteLock":true,"id":"18fa4771-6f58-46a3-80d2-6f0f5e9972e3","lastModificationTime":"2021-01-10 11:25:12","creationTime":"2016-07-06 17:59:20"},{"number":2,"name":"普通用户","remark":"普通用户","deleteLock":true,"id":"40ff1844-c099-4061-98e0-cd6e544fcfd3","lastModificationTime":"2021-01-30 00:51:17","creationTime":"2016-07-06 17:59:20"}],"postIds":["f0bd38c2-f1de-4bd9-e2db-08da00a93622"],"allPostList":[{"number":1,"code":"ceo","name":"董事长","state":1,"remarks":null,"id":"96927c30-41d0-4ced-8e29-cbed35c90fb0","lastModificationTime":"2021-05-27 20:26:22","creationTime":"2021-05-27 20:26:22"},{"number":2,"code":"se","name":"项目经理","state":1,"remarks":null,"id":"0716b4b0-9a06-43e9-8ae8-82c74875f83e","lastModificationTime":"2021-05-27 20:26:35","creationTime":"2021-05-27 20:26:35"},{"number":3,"code":"hr","name":"人力资源","state":1,"remarks":null,"id":"f0c67537-8094-429a-b474-f54ac518609e","lastModificationTime":"2021-05-27 20:26:44","creationTime":"2021-05-27 20:26:44"},{"number":4,"code":"user","name":"普通员工","state":1,"remarks":null,"id":"e46af329-6d08-442c-9837-f22cff954411","lastModificationTime":"2022-04-23 21:50:55","creationTime":"2021-05-27 20:26:52"},{"number":5,"code":"dotnet_engineer","name":"DotNet软件工程师","state":1,"remarks":null,"id":"f0bd38c2-f1de-4bd9-e2db-08da00a93622","lastModificationTime":"2022-03-08 10:13:18","creationTime":"2022-03-08 10:13:18"}]}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'2380', N'系统账号', N'保存/编辑数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3870989C-C257-4BC2-C6DE-08DA4A22A6F5', N'2022-06-09 22:16:32', N'2022-06-09 22:16:32', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'197', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'25E46E96-D0B1-40B4-C6DF-08DA4A22A6F5', N'2022-06-09 22:16:33', N'2022-06-09 22:16:33', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'317', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4FD5D0D4-EFEC-466A-C6E0-08DA4A22A6F5', N'2022-06-09 22:16:36', N'2022-06-09 22:16:36', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'150', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'C24CFEBB-B509-4259-C6E1-08DA4A22A6F5', N'2022-06-09 22:16:36', N'2022-06-09 22:16:36', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'333', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'540338E2-E9B1-40FC-C6E2-08DA4A22A6F5', N'2022-06-09 22:16:41', N'2022-06-09 22:16:41', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":10}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'150', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'097FEB32-6A0B-4FE8-C6E3-08DA4A22A6F5', N'2022-06-09 22:16:41', N'2022-06-09 22:16:41', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'150', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'24DD0A8B-E9F0-468B-C6E4-08DA4A22A6F5', N'2022-06-09 22:16:41', N'2022-06-09 22:16:41', N'/api/admin/SysUser/findForm', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'205', N'系统账号', N'查询数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D1391E84-58B3-4FC8-C6E5-08DA4A22A6F5', N'2022-06-09 22:17:00', N'2022-06-09 22:17:00', N'/api/admin/SysUser/saveForm', N'0.0.0.1', N'', N'{"id":"","form":{"name":"我是测试1","loginName":"ces1","password":"","phone":null,"email":null,"deleteLock":false,"organizationId":10,"id":"00000000-0000-0000-0000-000000000000","lastModificationTime":"0001-01-01 00:00:00","creationTime":"0001-01-01 00:00:00"},"roleIds":["40ff1844-c099-4061-98e0-cd6e544fcfd3"],"allRoleList":[{"number":1,"name":"超级管理员","remark":"拥有所有权限","deleteLock":true,"id":"18fa4771-6f58-46a3-80d2-6f0f5e9972e3","lastModificationTime":"2021-01-10 11:25:12","creationTime":"2016-07-06 17:59:20"},{"number":2,"name":"普通用户","remark":"普通用户","deleteLock":true,"id":"40ff1844-c099-4061-98e0-cd6e544fcfd3","lastModificationTime":"2021-01-30 00:51:17","creationTime":"2016-07-06 17:59:20"}],"postIds":["f0bd38c2-f1de-4bd9-e2db-08da00a93622"],"allPostList":[{"number":1,"code":"ceo","name":"董事长","state":1,"remarks":null,"id":"96927c30-41d0-4ced-8e29-cbed35c90fb0","lastModificationTime":"2021-05-27 20:26:22","creationTime":"2021-05-27 20:26:22"},{"number":2,"code":"se","name":"项目经理","state":1,"remarks":null,"id":"0716b4b0-9a06-43e9-8ae8-82c74875f83e","lastModificationTime":"2021-05-27 20:26:35","creationTime":"2021-05-27 20:26:35"},{"number":3,"code":"hr","name":"人力资源","state":1,"remarks":null,"id":"f0c67537-8094-429a-b474-f54ac518609e","lastModificationTime":"2021-05-27 20:26:44","creationTime":"2021-05-27 20:26:44"},{"number":4,"code":"user","name":"普通员工","state":1,"remarks":null,"id":"e46af329-6d08-442c-9837-f22cff954411","lastModificationTime":"2022-04-23 21:50:55","creationTime":"2021-05-27 20:26:52"},{"number":5,"code":"dotnet_engineer","name":"DotNet软件工程师","state":1,"remarks":null,"id":"f0bd38c2-f1de-4bd9-e2db-08da00a93622","lastModificationTime":"2022-03-08 10:13:18","creationTime":"2022-03-08 10:13:18"}]}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'76', N'系统账号', N'保存/编辑数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'2E849F39-4D94-4690-C6E6-08DA4A22A6F5', N'2022-06-09 22:17:03', N'2022-06-09 22:17:03', N'/api/admin/SysUser/saveForm', N'0.0.0.1', N'', N'{"id":"","form":{"name":"我是测试1","loginName":"ces1","password":"","phone":null,"email":"1231231","deleteLock":false,"organizationId":10,"id":"00000000-0000-0000-0000-000000000000","lastModificationTime":"0001-01-01 00:00:00","creationTime":"0001-01-01 00:00:00"},"roleIds":["40ff1844-c099-4061-98e0-cd6e544fcfd3"],"allRoleList":[{"number":1,"name":"超级管理员","remark":"拥有所有权限","deleteLock":true,"id":"18fa4771-6f58-46a3-80d2-6f0f5e9972e3","lastModificationTime":"2021-01-10 11:25:12","creationTime":"2016-07-06 17:59:20"},{"number":2,"name":"普通用户","remark":"普通用户","deleteLock":true,"id":"40ff1844-c099-4061-98e0-cd6e544fcfd3","lastModificationTime":"2021-01-30 00:51:17","creationTime":"2016-07-06 17:59:20"}],"postIds":["f0bd38c2-f1de-4bd9-e2db-08da00a93622"],"allPostList":[{"number":1,"code":"ceo","name":"董事长","state":1,"remarks":null,"id":"96927c30-41d0-4ced-8e29-cbed35c90fb0","lastModificationTime":"2021-05-27 20:26:22","creationTime":"2021-05-27 20:26:22"},{"number":2,"code":"se","name":"项目经理","state":1,"remarks":null,"id":"0716b4b0-9a06-43e9-8ae8-82c74875f83e","lastModificationTime":"2021-05-27 20:26:35","creationTime":"2021-05-27 20:26:35"},{"number":3,"code":"hr","name":"人力资源","state":1,"remarks":null,"id":"f0c67537-8094-429a-b474-f54ac518609e","lastModificationTime":"2021-05-27 20:26:44","creationTime":"2021-05-27 20:26:44"},{"number":4,"code":"user","name":"普通员工","state":1,"remarks":null,"id":"e46af329-6d08-442c-9837-f22cff954411","lastModificationTime":"2022-04-23 21:50:55","creationTime":"2021-05-27 20:26:52"},{"number":5,"code":"dotnet_engineer","name":"DotNet软件工程师","state":1,"remarks":null,"id":"f0bd38c2-f1de-4bd9-e2db-08da00a93622","lastModificationTime":"2022-03-08 10:13:18","creationTime":"2022-03-08 10:13:18"}]}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'36', N'系统账号', N'保存/编辑数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'BECAA46B-0923-4CA7-C6E7-08DA4A22A6F5', N'2022-06-09 22:17:17', N'2022-06-09 22:17:17', N'/api/admin/SysUser/saveForm', N'0.0.0.1', N'', N'{"id":"","form":{"name":"我是测试1","loginName":"ces1","password":"","phone":null,"email":"1231231@qq.com","deleteLock":false,"organizationId":10,"id":"00000000-0000-0000-0000-000000000000","lastModificationTime":"0001-01-01 00:00:00","creationTime":"0001-01-01 00:00:00"},"roleIds":["40ff1844-c099-4061-98e0-cd6e544fcfd3"],"allRoleList":[{"number":1,"name":"超级管理员","remark":"拥有所有权限","deleteLock":true,"id":"18fa4771-6f58-46a3-80d2-6f0f5e9972e3","lastModificationTime":"2021-01-10 11:25:12","creationTime":"2016-07-06 17:59:20"},{"number":2,"name":"普通用户","remark":"普通用户","deleteLock":true,"id":"40ff1844-c099-4061-98e0-cd6e544fcfd3","lastModificationTime":"2021-01-30 00:51:17","creationTime":"2016-07-06 17:59:20"}],"postIds":["f0bd38c2-f1de-4bd9-e2db-08da00a93622"],"allPostList":[{"number":1,"code":"ceo","name":"董事长","state":1,"remarks":null,"id":"96927c30-41d0-4ced-8e29-cbed35c90fb0","lastModificationTime":"2021-05-27 20:26:22","creationTime":"2021-05-27 20:26:22"},{"number":2,"code":"se","name":"项目经理","state":1,"remarks":null,"id":"0716b4b0-9a06-43e9-8ae8-82c74875f83e","lastModificationTime":"2021-05-27 20:26:35","creationTime":"2021-05-27 20:26:35"},{"number":3,"code":"hr","name":"人力资源","state":1,"remarks":null,"id":"f0c67537-8094-429a-b474-f54ac518609e","lastModificationTime":"2021-05-27 20:26:44","creationTime":"2021-05-27 20:26:44"},{"number":4,"code":"user","name":"普通员工","state":1,"remarks":null,"id":"e46af329-6d08-442c-9837-f22cff954411","lastModificationTime":"2022-04-23 21:50:55","creationTime":"2021-05-27 20:26:52"},{"number":5,"code":"dotnet_engineer","name":"DotNet软件工程师","state":1,"remarks":null,"id":"f0bd38c2-f1de-4bd9-e2db-08da00a93622","lastModificationTime":"2022-03-08 10:13:18","creationTime":"2022-03-08 10:13:18"}]}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'4585', N'系统账号', N'保存/编辑数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'AD9430BF-172D-4472-C6E8-08DA4A22A6F5', N'2022-06-09 22:17:31', N'2022-06-09 22:17:31', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'102', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F79D9646-483B-42E5-C6E9-08DA4A22A6F5', N'2022-06-09 22:17:33', N'2022-06-09 22:17:33', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":11}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'87', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'22BA40A5-A659-4FB4-C6EA-08DA4A22A6F5', N'2022-06-09 22:17:33', N'2022-06-09 22:17:33', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":10}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'107', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'69F80F8D-7922-4F88-C6EB-08DA4A22A6F5', N'2022-06-09 22:17:35', N'2022-06-09 22:17:35', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":5}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'88', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F28A3953-D84F-4C27-C6EC-08DA4A22A6F5', N'2022-06-09 22:17:36', N'2022-06-09 22:17:36', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":7}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'133', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7175620D-A501-4224-C6ED-08DA4A22A6F5', N'2022-06-09 22:17:37', N'2022-06-09 22:17:37', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":11}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'109', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E088E629-E46F-4886-C6EE-08DA4A22A6F5', N'2022-06-09 22:17:37', N'2022-06-09 22:17:37', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":7}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'107', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3468C496-445D-4D2D-C6EF-08DA4A22A6F5', N'2022-06-09 22:17:39', N'2022-06-09 22:17:39', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":11}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'88', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1DBED01E-46FE-4A56-E769-08DA4A28F95A', N'2022-06-09 23:01:47', N'2022-06-09 23:01:47', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'164', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'703369D7-B885-4383-E76A-08DA4A28F95A', N'2022-06-09 23:01:48', N'2022-06-09 23:01:48', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'254', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'796665CF-752C-4A2C-E76B-08DA4A28F95A', N'2022-06-09 23:01:51', N'2022-06-09 23:01:51', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'115', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'949C1AF9-3176-45BA-E76C-08DA4A28F95A', N'2022-06-09 23:01:51', N'2022-06-09 23:01:51', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'350', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E763D897-9528-46D7-8EAC-08DA4D441F40', N'2022-06-13 21:53:40', N'2022-06-13 21:53:40', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'20', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3607DD66-8D72-40D7-8EAD-08DA4D441F40', N'2022-06-13 21:53:41', N'2022-06-13 21:53:41', N'/_framework/aspnetcore-browser-refresh.js', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'83E46CC7-6B7B-4932-8EAE-08DA4D441F40', N'2022-06-13 21:53:41', N'2022-06-13 21:53:41', N'/_vs/browserLink', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7E6A47CE-2AC6-4FFC-8EAF-08DA4D441F40', N'2022-06-13 21:53:46', N'2022-06-13 21:53:46', N'/api/account/check', N'0.0.0.1', N'', N'{"userName":"admin","userPassword":"123456"}', N'', N'Chrome102', N'Windows10', NULL, N'465', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F64770C8-6C04-41CF-8EB0-08DA4D441F40', N'2022-06-13 21:53:46', N'2022-06-13 21:53:46', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'561', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E65AA1D4-2BB6-48BF-8EB1-08DA4D441F40', N'2022-06-13 21:53:50', N'2022-06-13 21:53:50', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'96', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D2FACEF3-4B0E-46D7-8EB2-08DA4D441F40', N'2022-06-13 21:53:53', N'2022-06-13 21:53:53', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'3776', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E2D79EB3-1658-43A3-8EB3-08DA4D441F40', N'2022-06-13 21:53:59', N'2022-06-13 21:53:59', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'41', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3077F6A3-58A3-4386-8EB4-08DA4D441F40', N'2022-06-13 21:54:02', N'2022-06-13 21:54:02', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'3515', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'C707EC2B-4B8D-4113-8EB5-08DA4D441F40', N'2022-06-13 21:54:08', N'2022-06-13 21:54:08', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'42', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'909400B2-BEE6-4D32-8EB6-08DA4D441F40', N'2022-06-13 21:54:24', N'2022-06-13 21:54:24', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'16539', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'392A8018-4B07-4D20-8EB7-08DA4D441F40', N'2022-06-13 21:54:29', N'2022-06-13 21:54:29', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'29', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3B121599-BCC4-4D28-8EB8-08DA4D441F40', N'2022-06-13 21:54:36', N'2022-06-13 21:54:36', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'7123', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8C320F57-C2C0-409E-FF7F-08DA4D44484B', N'2022-06-13 21:54:49', N'2022-06-13 21:54:49', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'20', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F98DD3C5-D939-46F0-FF80-08DA4D44484B', N'2022-06-13 21:54:50', N'2022-06-13 21:54:50', N'/_vs/browserLink', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'95320ECB-20A9-4714-FF81-08DA4D44484B', N'2022-06-13 21:54:50', N'2022-06-13 21:54:50', N'/_framework/aspnetcore-browser-refresh.js', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'0F1313B3-D462-4358-FF82-08DA4D44484B', N'2022-06-13 21:54:51', N'2022-06-13 21:54:51', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'604', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3EB4A414-C420-4604-FF83-08DA4D44484B', N'2022-06-13 21:54:57', N'2022-06-13 21:54:57', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'3179', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1AB55586-B7C2-4F5A-FF84-08DA4D44484B', N'2022-06-13 21:55:09', N'2022-06-13 21:55:09', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'10120', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4497C426-2C82-4376-0AAD-08DA4D44F58C', N'2022-06-13 21:59:40', N'2022-06-13 21:59:40', N'/', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'23', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B32A4D49-C6BD-4648-0AAE-08DA4D44F58C', N'2022-06-13 21:59:40', N'2022-06-13 21:59:40', N'/_vs/browserLink', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'29793D1B-CA25-4625-0AAF-08DA4D44F58C', N'2022-06-13 21:59:40', N'2022-06-13 21:59:40', N'/_framework/aspnetcore-browser-refresh.js', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F7E86791-9DEE-4839-0AB0-08DA4D44F58C', N'2022-06-13 21:59:41', N'2022-06-13 21:59:41', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'670', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'982C7E31-F1AE-4617-0AB1-08DA4D44F58C', N'2022-06-13 21:59:51', N'2022-06-13 21:59:51', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'8105', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E410A19A-A0F4-4B4D-0AB2-08DA4D44F58C', N'2022-06-13 21:59:55', N'2022-06-13 21:59:55', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'7', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'FF1BD566-15A8-4EBF-0AB3-08DA4D44F58C', N'2022-06-13 21:59:57', N'2022-06-13 21:59:57', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'11', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'5AAFFBFB-845E-4861-0AB4-08DA4D44F58C', N'2022-06-13 21:59:57', N'2022-06-13 21:59:57', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'7', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6634C343-2DC8-4916-0AB5-08DA4D44F58C', N'2022-06-13 21:59:57', N'2022-06-13 21:59:57', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'10', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'44C0AEEE-F212-44EF-0AB6-08DA4D44F58C', N'2022-06-13 21:59:57', N'2022-06-13 21:59:57', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'10', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'092FE555-B631-4E9B-0AB7-08DA4D44F58C', N'2022-06-13 21:59:57', N'2022-06-13 21:59:57', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'156B0F35-3E1D-446E-0AB8-08DA4D44F58C', N'2022-06-13 21:59:57', N'2022-06-13 21:59:57', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'6', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F6F961D2-BEC4-44E3-0AB9-08DA4D44F58C', N'2022-06-13 21:59:58', N'2022-06-13 21:59:58', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'7', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6D3B1773-0414-4E2D-0ABA-08DA4D44F58C', N'2022-06-13 22:00:07', N'2022-06-13 22:00:07', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'2660', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1689792B-85C4-433B-0ABB-08DA4D44F58C', N'2022-06-13 22:00:07', N'2022-06-13 22:00:07', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'13', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'FDE28D80-8455-4A37-0ABC-08DA4D44F58C', N'2022-06-13 22:00:07', N'2022-06-13 22:00:07', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D59335D7-97D1-49A3-0ABD-08DA4D44F58C', N'2022-06-13 22:00:09', N'2022-06-13 22:00:09', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4C96A05F-A52A-498C-0ABE-08DA4D44F58C', N'2022-06-13 22:00:09', N'2022-06-13 22:00:09', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'6', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D2E6E971-6FB9-45F6-0ABF-08DA4D44F58C', N'2022-06-13 22:00:10', N'2022-06-13 22:00:10', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'6', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'941583B5-99E5-46BA-0AC0-08DA4D44F58C', N'2022-06-13 22:00:10', N'2022-06-13 22:00:10', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'6', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'AE2088A0-7156-4B05-0AC1-08DA4D44F58C', N'2022-06-13 22:00:14', N'2022-06-13 22:00:14', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'5', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'26E38338-52C2-41F1-0AC2-08DA4D44F58C', N'2022-06-13 22:00:14', N'2022-06-13 22:00:14', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'6', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6198A1EE-CA9D-41CD-0AC3-08DA4D44F58C', N'2022-06-13 22:00:14', N'2022-06-13 22:00:14', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'5', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'03F73610-FE2E-4DE6-0AC4-08DA4D44F58C', N'2022-06-13 22:00:15', N'2022-06-13 22:00:15', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'6', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B4067E4C-56C5-4119-0AC5-08DA4D44F58C', N'2022-06-13 22:00:15', N'2022-06-13 22:00:15', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'5', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A03109B3-5B8A-4FEA-0AC6-08DA4D44F58C', N'2022-06-13 22:00:15', N'2022-06-13 22:00:15', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'6', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'99ED5EF5-7ED2-4818-0AC7-08DA4D44F58C', N'2022-06-13 22:00:15', N'2022-06-13 22:00:15', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'6', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D39A742E-1208-496D-0AC8-08DA4D44F58C', N'2022-06-13 22:00:15', N'2022-06-13 22:00:15', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'6', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'5157D7FB-EC55-4EEE-0AC9-08DA4D44F58C', N'2022-06-13 22:00:15', N'2022-06-13 22:00:15', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'6', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'77D0A49A-59FF-45A3-0ACA-08DA4D44F58C', N'2022-06-13 22:00:16', N'2022-06-13 22:00:16', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'5', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'11C40829-7C29-452A-0ACB-08DA4D44F58C', N'2022-06-13 22:00:16', N'2022-06-13 22:00:16', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'5', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A0211558-541C-4E49-0ACC-08DA4D44F58C', N'2022-06-13 22:00:16', N'2022-06-13 22:00:16', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'6', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'77400695-45BE-4110-0ACD-08DA4D44F58C', N'2022-06-13 22:00:16', N'2022-06-13 22:00:16', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'7', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'60F0F3F1-4E68-4608-0ACE-08DA4D44F58C', N'2022-06-13 22:00:16', N'2022-06-13 22:00:16', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'5', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'25BB7415-12FA-49B6-0ACF-08DA4D44F58C', N'2022-06-13 22:00:16', N'2022-06-13 22:00:16', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'9', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F169E769-8718-4E91-0AD0-08DA4D44F58C', N'2022-06-13 22:00:17', N'2022-06-13 22:00:17', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'5', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'81AF51C7-4ADB-4F1C-0AD1-08DA4D44F58C', N'2022-06-13 22:00:17', N'2022-06-13 22:00:17', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'5', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F889FEC9-7D10-4186-0AD2-08DA4D44F58C', N'2022-06-13 22:00:21', N'2022-06-13 22:00:21', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'10', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'C8AC6457-19E6-4033-0AD3-08DA4D44F58C', N'2022-06-13 22:00:21', N'2022-06-13 22:00:21', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'4258', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7AB6B584-7690-44B7-0AD4-08DA4D44F58C', N'2022-06-13 22:00:21', N'2022-06-13 22:00:21', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Chrome102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'10', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B34E6C82-844D-40E7-A0C8-08DA52BB81BA', N'2022-06-20 20:50:52', N'2022-06-20 20:50:52', N'/', N'0.0.0.1', N'', N'', N'', N'Edge102', N'Windows10', NULL, N'70', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'66C31B6F-85BB-4961-A0C9-08DA52BB81BA', N'2022-06-20 20:50:54', N'2022-06-20 20:50:54', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'539', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'59278784-D854-41A9-C7BD-08DA52BF7B19', N'2022-06-20 21:19:19', N'2022-06-20 21:19:19', N'/', N'0.0.0.1', N'', N'', N'', N'Edge102', N'Windows10', NULL, N'64', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3D9B6C02-70CF-415C-C7BE-08DA52BF7B19', N'2022-06-20 21:19:20', N'2022-06-20 21:19:20', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'483', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'0E5A6FD1-5314-46CC-C7BF-08DA52BF7B19', N'2022-06-20 21:19:27', N'2022-06-20 21:19:27', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'121', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A36735D2-83F4-469B-C7C0-08DA52BF7B19', N'2022-06-20 21:19:28', N'2022-06-20 21:19:28', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'458', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7127067A-F461-4A01-C7C1-08DA52BF7B19', N'2022-06-20 21:19:28', N'2022-06-20 21:19:28', N'/api/admin/SysRole/findList/10/1', N'0.0.0.1', N'', N'{"name":null}', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'108', N'角色', N'查看表格')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'CDB77A70-4E68-42D9-7BC7-08DA537D6855', N'2022-06-21 19:58:52', N'2022-06-21 19:58:52', N'/', N'0.0.0.1', N'', N'', N'', N'Edge102', N'Windows10', NULL, N'51', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'CE1F384D-49ED-40BC-7BC8-08DA537D6855', N'2022-06-21 19:58:56', N'2022-06-21 19:58:56', N'/api/account/check', N'0.0.0.1', N'', N'{"userName":"admin","userPassword":"123456"}', N'', N'Edge102', N'Windows10', NULL, N'901', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6F01F09D-A672-4C22-7BC9-08DA537D6855', N'2022-06-21 19:58:56', N'2022-06-21 19:58:56', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'352', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'5B185745-D942-429E-7BCA-08DA537D6855', N'2022-06-21 19:58:59', N'2022-06-21 19:58:59', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'81', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'20DBE147-7B06-44F1-7BCB-08DA537D6855', N'2022-06-21 19:59:00', N'2022-06-21 19:59:00', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'356', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D8D8BEAA-5C8A-4E0F-7BCC-08DA537D6855', N'2022-06-21 19:59:01', N'2022-06-21 19:59:01', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'129', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'934877A4-549A-4107-7BCD-08DA537D6855', N'2022-06-21 19:59:01', N'2022-06-21 19:59:01', N'/api/admin/SysUser/findForm/a1b6dafb-2b6a-4ff9-62da-08da00e3d8a0', N'0.0.0.1', N'', N'', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'167', N'系统账号', N'查询数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'68CFCA56-48FB-4BB5-7BCE-08DA537D6855', N'2022-06-21 19:59:03', N'2022-06-21 19:59:03', N'/api/admin/SysUser/saveForm', N'0.0.0.1', N'', N'{"id":"a1b6dafb-2b6a-4ff9-62da-08da00e3d8a0","form":{"name":"屈原","loginName":"屈原","password":"","phone":"12345678900","email":"12345678900@qq.com","deleteLock":false,"organizationId":7,"id":"a1b6dafb-2b6a-4ff9-62da-08da00e3d8a0","lastModificationTime":"2022-03-08 17:19:55","creationTime":"2022-03-08 17:19:55"},"roleIds":["40ff1844-c099-4061-98e0-cd6e544fcfd3"],"allRoleList":[{"number":1,"name":"超级管理员","remark":"拥有所有权限","deleteLock":true,"id":"18fa4771-6f58-46a3-80d2-6f0f5e9972e3","lastModificationTime":"2021-01-10 11:25:12","creationTime":"2016-07-06 17:59:20"},{"number":2,"name":"普通用户","remark":"普通用户","deleteLock":true,"id":"40ff1844-c099-4061-98e0-cd6e544fcfd3","lastModificationTime":"2021-01-30 00:51:17","creationTime":"2016-07-06 17:59:20"}],"postIds":["f0bd38c2-f1de-4bd9-e2db-08da00a93622"],"allPostList":[{"number":1,"code":"ceo","name":"董事长","state":1,"remarks":null,"id":"96927c30-41d0-4ced-8e29-cbed35c90fb0","lastModificationTime":"2021-05-27 20:26:22","creationTime":"2021-05-27 20:26:22"},{"number":2,"code":"se","name":"项目经理","state":1,"remarks":null,"id":"0716b4b0-9a06-43e9-8ae8-82c74875f83e","lastModificationTime":"2021-05-27 20:26:35","creationTime":"2021-05-27 20:26:35"},{"number":3,"code":"hr","name":"人力资源","state":1,"remarks":null,"id":"f0c67537-8094-429a-b474-f54ac518609e","lastModificationTime":"2021-05-27 20:26:44","creationTime":"2021-05-27 20:26:44"},{"number":4,"code":"user","name":"普通员工","state":1,"remarks":null,"id":"e46af329-6d08-442c-9837-f22cff954411","lastModificationTime":"2022-04-23 21:50:55","creationTime":"2021-05-27 20:26:52"},{"number":5,"code":"dotnet_engineer","name":"DotNet软件工程师","state":1,"remarks":null,"id":"f0bd38c2-f1de-4bd9-e2db-08da00a93622","lastModificationTime":"2022-03-08 10:13:18","creationTime":"2022-03-08 10:13:18"}]}', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'181', N'系统账号', N'保存/编辑数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A7F53447-8069-4336-7BCF-08DA537D6855', N'2022-06-21 19:59:03', N'2022-06-21 19:59:03', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'98', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7EDD5E32-915C-4B80-7BD0-08DA537D6855', N'2022-06-21 19:59:10', N'2022-06-21 19:59:10', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'52', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'263E8C35-3C67-44B1-7BD1-08DA537D6855', N'2022-06-21 19:59:10', N'2022-06-21 19:59:10', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'58', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'2AE1CAC9-6EA7-4E9E-63FF-08DA538E1506', N'2022-06-21 21:58:13', N'2022-06-21 21:58:13', N'/', N'0.0.0.1', N'', N'', N'', N'Edge102', N'Windows10', NULL, N'48', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'349D98D8-D2DA-4331-6400-08DA538E1506', N'2022-06-21 21:58:15', N'2022-06-21 21:58:15', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'466', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F61D327B-0BA8-486A-6325-08DA538E68B9', N'2022-06-21 22:00:34', N'2022-06-21 22:00:34', N'/', N'0.0.0.1', N'', N'', N'', N'Edge102', N'Windows10', NULL, N'47', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'DDC0A881-5A8E-4300-6326-08DA538E68B9', N'2022-06-21 22:00:35', N'2022-06-21 22:00:35', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'439', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B53C3618-D68F-40A0-0F4A-08DA538EF54B', N'2022-06-21 22:04:29', N'2022-06-21 22:04:29', N'/', N'0.0.0.1', N'', N'', N'', N'Edge102', N'Windows10', NULL, N'50', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'CBAE11FD-024E-4463-0F4B-08DA538EF54B', N'2022-06-21 22:04:31', N'2022-06-21 22:04:31', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'440', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'442AD21A-65E9-4D88-806B-08DA5459EC41', N'2022-06-22 22:17:22', N'2022-06-22 22:17:22', N'/', N'0.0.0.1', N'', N'', N'', N'Edge102', N'Windows10', NULL, N'25', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6E871C19-A16D-4CDC-806C-08DA5459EC41', N'2022-06-22 22:17:23', N'2022-06-22 22:17:23', N'/_framework/aspnetcore-browser-refresh.js', N'0.0.0.1', N'', N'', N'', N'Edge102', N'Windows10', NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D9917F47-2A0F-447C-806D-08DA5459EC41', N'2022-06-22 22:17:23', N'2022-06-22 22:17:23', N'/_vs/browserLink', N'0.0.0.1', N'', N'', N'', N'Edge102', N'Windows10', NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'38DD701B-597F-48C2-806E-08DA5459EC41', N'2022-06-22 22:20:15', N'2022-06-22 22:20:15', N'/api/account/check', N'0.0.0.1', N'', N'{"userName":"admin","userPassword":"123456"}', N'', N'Edge102', N'Windows10', NULL, N'727', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'405E7239-703A-4E05-806F-08DA5459EC41', N'2022-06-22 22:20:15', N'2022-06-22 22:20:15', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'213', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4DE4E841-F528-485F-8070-08DA5459EC41', N'2022-06-22 22:20:20', N'2022-06-22 22:20:20', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'80', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'FF63B20F-4A16-4E45-8071-08DA5459EC41', N'2022-06-22 22:20:20', N'2022-06-22 22:20:20', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'289', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B7798CB0-FBC6-4550-8072-08DA5459EC41', N'2022-06-22 22:20:21', N'2022-06-22 22:20:21', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'43', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'2F7D6B2F-E3B4-4091-8073-08DA5459EC41', N'2022-06-22 22:20:22', N'2022-06-22 22:20:22', N'/api/admin/SysUser/findForm/cc186fe2-ee27-4292-62db-08da00e3d8a0', N'0.0.0.1', N'', N'', N'', N'Edge102', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'166', N'系统账号', N'查询数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1B1A4F9A-53CE-4ABB-47AC-08DA5849155A', N'2022-06-27 22:26:56', N'2022-06-27 22:26:56', N'/', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', NULL, N'93', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1EF3CA3D-FD4A-4EE4-47AD-08DA5849155A', N'2022-06-27 22:27:04', N'2022-06-27 22:27:04', N'/api/account/check', N'0.0.0.1', N'', N'{"userName":"admin","userPassword":"123456"}', N'', N'Edge103', N'Windows10', NULL, N'1053', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'07F66947-2872-45A8-47AE-08DA5849155A', N'2022-06-27 22:27:04', N'2022-06-27 22:27:04', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'430', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'09CDAFF0-E586-4511-47AF-08DA5849155A', N'2022-06-27 22:27:13', N'2022-06-27 22:27:13', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'113', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'96302686-C598-4C3B-47B0-08DA5849155A', N'2022-06-27 22:27:14', N'2022-06-27 22:27:14', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'443', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'45409215-CA0A-4B51-47B1-08DA5849155A', N'2022-06-27 22:27:15', N'2022-06-27 22:27:15', N'/api/admin/SysUser/findForm/a1b6dafb-2b6a-4ff9-62da-08da00e3d8a0', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'187', N'系统账号', N'查询数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B97779FD-E3CC-4741-47B2-08DA5849155A', N'2022-06-27 22:27:15', N'2022-06-27 22:27:15', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'129', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4B0BAB95-A5F2-4D7E-BB43-08DA58CD678C', N'2022-06-28 14:14:07', N'2022-06-28 14:14:07', N'/', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', NULL, N'41', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'16EF5F26-B93C-4FA8-BB44-08DA58CD678C', N'2022-06-28 14:14:51', N'2022-06-28 14:14:51', N'/api/account/check', N'0.0.0.1', N'', N'{"userName":"admin","userPassword":"123456"}', N'', N'Edge103', N'Windows10', NULL, N'1030', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'47D40D22-4F02-4637-BB45-08DA58CD678C', N'2022-06-28 14:14:52', N'2022-06-28 14:14:52', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'382', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'0AAD2321-D25F-40DB-2000-08DA59CE7A37', N'2022-06-29 20:54:18', N'2022-06-29 20:54:18', N'/', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', NULL, N'40', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'BC8C37C9-8419-4388-2001-08DA59CE7A37', N'2022-06-29 20:55:11', N'2022-06-29 20:55:11', N'/api/account/check', N'0.0.0.1', N'', N'{"userName":"admin","userPassword":"123456"}', N'', N'Edge103', N'Windows10', NULL, N'1009', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F989158A-A01D-438C-2002-08DA59CE7A37', N'2022-06-29 20:55:11', N'2022-06-29 20:55:11', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'359', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E8D02623-AA41-4E06-2003-08DA59CE7A37', N'2022-06-29 20:55:31', N'2022-06-29 20:55:31', N'/api/admin/SysDictionary/getDictionaryTree', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'84', N'数据字典', N'获取字典树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'81F14375-0BF4-476C-2004-08DA59CE7A37', N'2022-06-29 20:55:31', N'2022-06-29 20:55:31', N'/api/admin/SysDictionary/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"parentId":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'281', N'数据字典', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7D9F719E-1A44-45A0-2005-08DA59CE7A37', N'2022-06-29 20:55:33', N'2022-06-29 20:55:33', N'/api/admin/SysDictionary/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"parentId":1}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'86', N'数据字典', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'EE305C38-D6FA-43F7-2006-08DA59CE7A37', N'2022-06-29 20:55:34', N'2022-06-29 20:55:34', N'/api/admin/SysDictionary/findForm', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'39', N'数据字典', N'查看表单')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'759ACCF7-D57C-4924-2007-08DA59CE7A37', N'2022-06-29 20:55:47', N'2022-06-29 20:55:47', N'/api/admin/SysDictionary/saveForm', N'0.0.0.1', N'', N'{"id":0,"sort":0,"code":"3","name":"未知","value":"3","parentId":1,"lastModificationTime":"0001-01-01 00:00:00","creationTime":"0001-01-01 00:00:00"}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'101', N'数据字典', N'保存/编辑表单')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A7C86974-4F69-4BEE-2008-08DA59CE7A37', N'2022-06-29 20:55:47', N'2022-06-29 20:55:47', N'/api/admin/SysDictionary/getDictionaryTree', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'81', N'数据字典', N'获取字典树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4A94A650-2C10-4D12-2009-08DA59CE7A37', N'2022-06-29 20:55:47', N'2022-06-29 20:55:47', N'/api/admin/SysDictionary/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"parentId":1}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'100', N'数据字典', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'62B41F85-8E3F-483D-200A-08DA59CE7A37', N'2022-06-29 20:55:51', N'2022-06-29 20:55:51', N'/api/admin/SysDictionary/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"parentId":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'59', N'数据字典', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'10B6B4F8-D919-4926-200B-08DA59CE7A37', N'2022-06-29 20:55:52', N'2022-06-29 20:55:52', N'/api/admin/SysDictionary/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"parentId":1}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'44', N'数据字典', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1E74F653-DFE9-44DA-200C-08DA59CE7A37', N'2022-06-29 20:55:54', N'2022-06-29 20:55:54', N'/api/admin/SysDictionary/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"parentId":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'48', N'数据字典', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'C21D0156-3605-43BA-200D-08DA59CE7A37', N'2022-06-29 20:55:55', N'2022-06-29 20:55:55', N'/api/admin/SysDictionary/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"parentId":1}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'60', N'数据字典', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'FC45A908-A88F-45DB-200E-08DA59CE7A37', N'2022-06-29 20:55:58', N'2022-06-29 20:55:58', N'/api/admin/SysDictionary/findForm/4', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'33', N'数据字典', N'查看表单')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'20DB3917-6868-447B-200F-08DA59CE7A37', N'2022-06-29 20:56:03', N'2022-06-29 20:56:03', N'/api/admin/SysDictionary/findForm/4', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'36', N'数据字典', N'查看表单')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F24E9E07-ACEB-44C1-2010-08DA59CE7A37', N'2022-06-29 20:56:09', N'2022-06-29 20:56:09', N'/api/admin/SysDictionary/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"parentId":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'49', N'数据字典', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6A2963CF-C5C9-40F4-2011-08DA59CE7A37', N'2022-06-29 20:56:09', N'2022-06-29 20:56:09', N'/api/admin/SysDictionary/findForm', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'30', N'数据字典', N'查看表单')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F5965203-3E03-4289-2012-08DA59CE7A37', N'2022-06-29 20:56:17', N'2022-06-29 20:56:17', N'/api/admin/SysDictionary/saveForm', N'0.0.0.1', N'', N'{"id":0,"sort":0,"code":"q","name":"11","value":null,"parentId":null,"lastModificationTime":"0001-01-01 00:00:00","creationTime":"0001-01-01 00:00:00"}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'36', N'数据字典', N'保存/编辑表单')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'3B4E24AD-03CB-43DD-2013-08DA59CE7A37', N'2022-06-29 20:56:18', N'2022-06-29 20:56:18', N'/api/admin/SysDictionary/getDictionaryTree', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'48', N'数据字典', N'获取字典树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'C4AB2B09-77DD-4B33-2014-08DA59CE7A37', N'2022-06-29 20:56:18', N'2022-06-29 20:56:18', N'/api/admin/SysDictionary/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"parentId":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'70', N'数据字典', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1470DA4B-A246-49CC-2015-08DA59CE7A37', N'2022-06-29 20:56:19', N'2022-06-29 20:56:19', N'/api/admin/SysDictionary/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"parentId":5}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'50', N'数据字典', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'9FE75670-2414-4509-2016-08DA59CE7A37', N'2022-06-29 20:56:19', N'2022-06-29 20:56:19', N'/api/admin/SysDictionary/findForm', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'32', N'数据字典', N'查看表单')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F8D72B7F-CD50-4D20-2017-08DA59CE7A37', N'2022-06-29 20:56:22', N'2022-06-29 20:56:22', N'/api/admin/SysDictionary/saveForm', N'0.0.0.1', N'', N'{"id":0,"sort":0,"code":"22","name":"22","value":"22","parentId":5,"lastModificationTime":"0001-01-01 00:00:00","creationTime":"0001-01-01 00:00:00"}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'39', N'数据字典', N'保存/编辑表单')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'166194CE-5A39-4A6A-2018-08DA59CE7A37', N'2022-06-29 20:56:23', N'2022-06-29 20:56:23', N'/api/admin/SysDictionary/getDictionaryTree', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'65', N'数据字典', N'获取字典树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'AEBFF7BA-A522-49C7-2019-08DA59CE7A37', N'2022-06-29 20:56:23', N'2022-06-29 20:56:23', N'/api/admin/SysDictionary/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"parentId":5}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'98', N'数据字典', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'EEB12B42-B45E-4160-201A-08DA59CE7A37', N'2022-06-29 20:56:34', N'2022-06-29 20:56:34', N'/api/admin/SysDictionary/deleteList', N'0.0.0.1', N'', N'[6]', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'4556', N'数据字典', N'删除数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'32F72106-C811-4D36-201B-08DA59CE7A37', N'2022-06-29 20:56:34', N'2022-06-29 20:56:34', N'/api/admin/SysDictionary/deleteList', N'0.0.0.1', N'', N'[6]', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'365', N'数据字典', N'删除数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'41D38B42-E016-490D-201C-08DA59CE7A37', N'2022-06-29 20:56:40', N'2022-06-29 20:56:40', N'/api/admin/SysDictionary/deleteList', N'0.0.0.1', N'', N'[6]', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'236', N'数据字典', N'删除数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'082158B0-11FA-474B-201D-08DA59CE7A37', N'2022-06-29 20:56:56', N'2022-06-29 20:56:56', N'/api/admin/SysDictionary/deleteList', N'0.0.0.1', N'', N'[6]', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'251', N'数据字典', N'删除数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'61DFD15E-D3AE-451E-201E-08DA59CE7A37', N'2022-06-29 20:57:55', N'2022-06-29 20:57:55', N'/api/admin/SysDictionary/deleteList', N'0.0.0.1', N'', N'[6]', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'21176', N'数据字典', N'删除数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B59BDA2B-5A16-4351-201F-08DA59CE7A37', N'2022-06-29 20:57:57', N'2022-06-29 20:57:57', N'/api/admin/SysDictionary/findForm/6', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'56', N'数据字典', N'查看表单')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4AC82905-56EE-46B4-DFB8-08DA59CF241F', N'2022-06-29 20:59:03', N'2022-06-29 20:59:03', N'/', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', NULL, N'70', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'03B780F5-7E99-44E6-DFB9-08DA59CF241F', N'2022-06-29 20:59:04', N'2022-06-29 20:59:04', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'476', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'764F62D0-936F-4076-DFBA-08DA59CF241F', N'2022-06-29 20:59:04', N'2022-06-29 20:59:04', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'83', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A394FE08-4E65-4DD8-DFBB-08DA59CF241F', N'2022-06-29 20:59:17', N'2022-06-29 20:59:17', N'/api/admin/SysDictionary/getDictionaryTree', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'87', N'数据字典', N'获取字典树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'46C9E3B1-EE2A-4E07-DFBC-08DA59CF241F', N'2022-06-29 20:59:17', N'2022-06-29 20:59:17', N'/api/admin/SysDictionary/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"parentId":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'384', N'数据字典', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'DEAF6F65-4774-4BC0-DFBD-08DA59CF241F', N'2022-06-29 20:59:22', N'2022-06-29 20:59:22', N'/api/admin/SysDictionary/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"parentId":5}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'61', N'数据字典', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'BD5329B2-9D76-4104-DFBE-08DA59CF241F', N'2022-06-29 20:59:31', N'2022-06-29 20:59:31', N'/api/admin/SysDictionary/deleteList', N'0.0.0.1', N'', N'[6]', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'3585', N'数据字典', N'删除数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'89BBCC0A-225C-4EC9-DFBF-08DA59CF241F', N'2022-06-29 20:59:32', N'2022-06-29 20:59:32', N'/api/admin/SysDictionary/getDictionaryTree', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'77', N'数据字典', N'获取字典树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'51D022F5-97A7-46A7-DFC0-08DA59CF241F', N'2022-06-29 20:59:32', N'2022-06-29 20:59:32', N'/api/admin/SysDictionary/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"parentId":5}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'108', N'数据字典', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'5D7B9991-DF25-4CE4-DFC1-08DA59CF241F', N'2022-06-29 21:01:16', N'2022-06-29 21:01:16', N'/api/admin/SysDictionary/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"parentId":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'54', N'数据字典', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'5162E530-0CC3-4DAD-DFC2-08DA59CF241F', N'2022-06-29 21:01:17', N'2022-06-29 21:01:17', N'/api/admin/SysDictionary/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"parentId":1}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'45', N'数据字典', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'11CEAC6F-ECE5-4890-DFC3-08DA59CF241F', N'2022-06-29 21:01:18', N'2022-06-29 21:01:18', N'/api/admin/SysDictionary/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"parentId":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'52', N'数据字典', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'DDEABC9F-EADB-451D-DFC4-08DA59CF241F', N'2022-06-29 21:01:24', N'2022-06-29 21:01:24', N'/api/admin/SysDictionary/deleteList', N'0.0.0.1', N'', N'[5]', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'1662', N'数据字典', N'删除数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'0B09A4D4-E7D8-4E42-DFC5-08DA59CF241F', N'2022-06-29 21:01:24', N'2022-06-29 21:01:24', N'/api/admin/SysDictionary/getDictionaryTree', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'40', N'数据字典', N'获取字典树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E784A925-C86F-40BF-DFC6-08DA59CF241F', N'2022-06-29 21:01:24', N'2022-06-29 21:01:24', N'/api/admin/SysDictionary/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"parentId":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'57', N'数据字典', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'310CFD29-DD07-4969-2E38-08DA5DB93746', N'2022-07-04 20:32:11', N'2022-07-04 20:32:11', N'/', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', NULL, N'42', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'F58CA171-834C-4C16-2E39-08DA5DB93746', N'2022-07-04 20:44:14', N'2022-07-04 20:44:14', N'/api/account/check', N'0.0.0.1', N'', N'{"userName":"admin","userPassword":"123456"}', N'', N'Edge103', N'Windows10', NULL, N'1021', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6690CA4E-7507-4E64-2E3A-08DA5DB93746', N'2022-07-04 20:44:15', N'2022-07-04 20:44:15', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'310', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'874BA78A-4019-4EEC-2E3B-08DA5DB93746', N'2022-07-04 20:44:22', N'2022-07-04 20:44:22', N'/api/admin/Member/findList/10/1', N'0.0.0.1', N'', N'{"name":""}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'321', N'会员', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'166A3FF8-2934-4FFC-2E3C-08DA5DB93746', N'2022-07-04 20:44:22', N'2022-07-04 20:44:22', N'/client/null', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'51C4A0DA-500B-42D8-2E3D-08DA5DB93746', N'2022-07-04 20:44:24', N'2022-07-04 20:44:24', N'/api/admin/Member/findForm/96a1aa3d-a61a-42d0-954a-c71753fb2065', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'88', N'会员', N'查看表单')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E3D38690-4FF4-49B9-2E3E-08DA5DB93746', N'2022-07-04 20:44:24', N'2022-07-04 20:44:24', N'/client/null', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', NULL, N'0', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7DF6EB89-1E5D-491B-2E3F-08DA5DB93746', N'2022-07-04 20:44:26', N'2022-07-04 20:44:26', N'/api/admin/Member/findForm/9a604aa2-9ae6-4a2f-8ddb-d9e0289ead9e', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'50', N'会员', N'查看表单')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6AA9B4DD-B116-4E1D-2E40-08DA5DB93746', N'2022-07-04 20:44:29', N'2022-07-04 20:44:29', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'77', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D3F21CE0-4280-42CD-2E41-08DA5DB93746', N'2022-07-04 20:44:29', N'2022-07-04 20:44:29', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'201', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'DBDE397D-2756-4E16-2E42-08DA5DB93746', N'2022-07-04 20:44:30', N'2022-07-04 20:44:30', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'89', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A71352ED-760B-46CE-2E43-08DA5DB93746', N'2022-07-04 20:44:30', N'2022-07-04 20:44:30', N'/api/admin/SysUser/findForm/a1b6dafb-2b6a-4ff9-62da-08da00e3d8a0', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'140', N'系统账号', N'查询数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'2D7200B4-300F-4313-2E44-08DA5DB93746', N'2022-07-04 20:45:17', N'2022-07-04 20:45:17', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'27', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'252133FE-129B-47CB-2E45-08DA5DB93746', N'2022-07-04 20:45:18', N'2022-07-04 20:45:18', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'72', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'AA0B3EAA-CF03-4B68-2E46-08DA5DB93746', N'2022-07-04 20:45:18', N'2022-07-04 20:45:18', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'48', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'BA0FB8EE-3855-4362-0F9C-08DA5E86C60F', N'2022-07-05 21:03:37', N'2022-07-05 21:03:37', N'/', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', NULL, N'46', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7F6D14F2-2FA8-42B0-0F9D-08DA5E86C60F', N'2022-07-05 21:03:39', N'2022-07-05 21:03:39', N'/api/account/check', N'0.0.0.1', N'', N'{"userName":"admin","userPassword":"123456"}', N'', N'Edge103', N'Windows10', NULL, N'1028', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A264B3A3-72FC-45FA-0F9E-08DA5E86C60F', N'2022-07-05 21:03:40', N'2022-07-05 21:03:40', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'556', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'AEFD50A6-1620-4591-0F9F-08DA5E86C60F', N'2022-07-05 21:03:44', N'2022-07-05 21:03:44', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'108', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'07C23B19-E68E-4CF3-0FA0-08DA5E86C60F', N'2022-07-05 21:03:44', N'2022-07-05 21:03:44', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'409', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'DE1A0301-7BC6-4E5F-0FA1-08DA5E86C60F', N'2022-07-05 21:03:46', N'2022-07-05 21:03:46', N'/api/admin/SysRole/findList/10/1', N'0.0.0.1', N'', N'{"name":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'173', N'角色', N'查看表格')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8DA8EC71-F8B3-46AC-0FA2-08DA5E86C60F', N'2022-07-05 21:03:47', N'2022-07-05 21:03:47', N'/api/admin/SysRole/findForm/40ff1844-c099-4061-98e0-cd6e544fcfd3', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'38', N'角色', N'获取数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'37186225-C497-4D18-73BE-08DA5E87152F', N'2022-07-05 21:05:50', N'2022-07-05 21:05:50', N'/', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', NULL, N'57', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'0BCB2143-9187-46BF-73BF-08DA5E87152F', N'2022-07-05 21:05:51', N'2022-07-05 21:05:51', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'593', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'001EDE3C-C36D-4967-73C0-08DA5E87152F', N'2022-07-05 21:08:30', N'2022-07-05 21:08:30', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'121', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'04668E9D-DD9A-4B0F-73C1-08DA5E87152F', N'2022-07-05 21:08:36', N'2022-07-05 21:08:36', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'116', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D874CBDF-A44B-46EA-73C2-08DA5E87152F', N'2022-07-05 21:08:36', N'2022-07-05 21:08:36', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'364', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'34277187-A98B-4310-89B2-08DA5E8BCC11', N'2022-07-05 21:39:35', N'2022-07-05 21:39:35', N'/', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', NULL, N'41', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E3A82609-8FA5-4231-89B3-08DA5E8BCC11', N'2022-07-05 21:39:36', N'2022-07-05 21:39:36', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'430', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'7019442C-66BC-4D23-89B4-08DA5E8BCC11', N'2022-07-05 21:39:59', N'2022-07-05 21:39:59', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'83', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'B6C11183-1A7D-43D9-89B5-08DA5E8BCC11', N'2022-07-05 21:40:04', N'2022-07-05 21:40:04', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'84', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'73AFDE0C-5CCB-47F9-89B6-08DA5E8BCC11', N'2022-07-05 21:40:05', N'2022-07-05 21:40:05', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'365', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'116DC9E2-7C11-4D12-89B7-08DA5E8BCC11', N'2022-07-05 21:40:40', N'2022-07-05 21:40:40', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'60', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1DFDFC8F-9F76-4725-89B8-08DA5E8BCC11', N'2022-07-05 21:40:40', N'2022-07-05 21:40:40', N'/api/admin/SysUser/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"loginName":null,"organizationId":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'77', N'系统账号', N'查看数据')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D3D981F6-9D8C-44A8-89B9-08DA5E8BCC11', N'2022-07-05 21:41:13', N'2022-07-05 21:41:13', N'/api/admin/SysRole/findList/10/1', N'0.0.0.1', N'', N'{"name":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'93', N'角色', N'查看表格')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'2DBE887C-1C2B-433A-89BA-08DA5E8BCC11', N'2022-07-05 21:41:15', N'2022-07-05 21:41:15', N'/api/admin/SysDataAuthority/getDataAuthorityByRoleId/40ff1844-c099-4061-98e0-cd6e544fcfd3', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'96', N'数据权限', N'获取数据权限信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'BAF62A70-6182-4055-89BB-08DA5E8BCC11', N'2022-07-05 21:41:15', N'2022-07-05 21:41:15', N'/api/admin/SysOrganization/sysOrganizationTree', N'0.0.0.1', N'', N'{}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'58', N'组织机构', N'查看组织架构树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'BC9D5B6F-3C6C-4896-89BC-08DA5E8BCC11', N'2022-07-05 21:41:18', N'2022-07-05 21:41:18', N'/api/admin/SysFunction/findList/10/1', N'0.0.0.1', N'', N'{"name":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'81', N'功能', N'查看数据列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'564AA11F-5B6F-4EE0-89BD-08DA5E8BCC11', N'2022-07-05 21:41:19', N'2022-07-05 21:41:19', N'/api/admin/SysMenu/getAll', N'0.0.0.1', N'', N'{"name":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'58', N'菜单', N'获取所有的菜单')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1F6FF599-17BD-433F-89BE-08DA5E8BCC11', N'2022-07-05 21:41:21', N'2022-07-05 21:41:21', N'/api/admin/SysPost/findList/10/1', N'0.0.0.1', N'', N'{"name":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'80', N'岗位', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A78DF6A9-E2AD-4A2A-89BF-08DA5E8BCC11', N'2022-07-05 21:41:22', N'2022-07-05 21:41:22', N'/api/admin/SysOrganization/findList/', N'0.0.0.1', N'', N'{"name":null,"state":1}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'75', N'组织机构', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'8BDA3209-CF97-454D-89C0-08DA5E8BCC11', N'2022-07-05 21:41:23', N'2022-07-05 21:41:23', N'/api/admin/SysDictionary/getDictionaryTree', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'90', N'数据字典', N'获取字典树')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'D8D25EAA-A210-420B-89C1-08DA5E8BCC11', N'2022-07-05 21:41:23', N'2022-07-05 21:41:23', N'/api/admin/SysDictionary/findList/10/1', N'0.0.0.1', N'', N'{"name":null,"parentId":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'178', N'数据字典', N'查看列表')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'6586A7B7-E9AC-49E5-336E-08DA5E8D7025', N'2022-07-05 21:51:19', N'2022-07-05 21:51:19', N'/', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', NULL, N'44', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'39FB560E-436E-4231-336F-08DA5E8D7025', N'2022-07-05 21:51:21', N'2022-07-05 21:51:21', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'429', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'A4A38DBA-63FE-4AEE-3370-08DA5E8D7025', N'2022-07-05 21:52:56', N'2022-07-05 21:52:56', N'/api/admin/LowCodeTable/findList/10/1', N'0.0.0.1', N'', N'{"tableName":null,"entityName":null,"displayName":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'305', N'LowCodeTableController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'2CEEBDE6-A261-41A6-3371-08DA5E8D7025', N'2022-07-05 21:53:00', N'2022-07-05 21:53:00', N'/api/admin/LowCodeTableInfo/findList/20/1', N'0.0.0.1', N'', N'{"columnName":null,"describe":null,"low_Code_TableId":"69b24f04-0ed3-45fc-91d9-0dc929175a57"}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'86', N'LowCodeSearchController', NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'4E8E71AA-E832-4E96-1BFB-08DA5EF79F26', N'2022-07-06 10:31:26', N'2022-07-06 10:31:26', N'/', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', NULL, N'43', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'1218EF9C-7628-4E55-1BFC-08DA5EF79F26', N'2022-07-06 10:33:34', N'2022-07-06 10:33:34', N'/api/account/check', N'0.0.0.1', N'', N'{"userName":"admin","userPassword":"123456"}', N'', N'Edge103', N'Windows10', NULL, N'1048', NULL, NULL)
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'03DD8D0A-2713-4F38-1BFD-08DA5EF79F26', N'2022-07-06 10:33:35', N'2022-07-06 10:33:35', N'/api/admin/SysUser/info', N'0.0.0.1', N'', N'', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'393', N'系统账号', N'获取用户信息')
GO

INSERT INTO [dbo].[sys_operation_log] ([Id], [LastModificationTime], [CreationTime], [Api], [Ip], [Form], [FormBody], [QueryString], [Browser], [OS], [UserId], [TakeUpTime], [ControllerDisplayName], [ActionDisplayName]) VALUES (N'E6AA8613-4BD3-4608-1BFE-08DA5EF79F26', N'2022-07-06 10:33:46', N'2022-07-06 10:33:46', N'/api/admin/LowCodeTable/findList/10/1', N'0.0.0.1', N'', N'{"tableName":null,"entityName":null,"displayName":null}', N'', N'Edge103', N'Windows10', N'0198459E-2034-4533-B843-5D227AD20740', N'242', N'LowCodeTableController', NULL)
GO


-- ----------------------------
-- Table structure for sys_organization
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_organization]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_organization]
GO

CREATE TABLE [dbo].[sys_organization] (
  [Id] int  IDENTITY(1,1) NOT NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [OrderNumber] int  NULL,
  [LevelCode] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [Leader] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Phone] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Email] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [State] int  NULL,
  [ParentId] int  NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[sys_organization] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sys_organization
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_organization] ON
GO

INSERT INTO [dbo].[sys_organization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (N'1', N'阿里巴巴集团', N'1', N'1', N'hzy', N'18410912184', N'18410912184@qq.com', N'1', NULL, N'2021-05-27 20:50:31', N'2021-05-27 20:50:31')
GO

INSERT INTO [dbo].[sys_organization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (N'2', N'北京分部', N'3', N'1.2', N'北京分部', N'132123', N'13131', N'1', N'1', N'2021-12-28 16:13:34', N'2021-05-27 22:33:44')
GO

INSERT INTO [dbo].[sys_organization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (N'3', N'市场部门', N'1', N'1.2.3', N'市场部门', N'234124234', N'234234@qq.com', N'1', N'2', N'2021-05-27 22:33:57', N'2021-05-27 22:33:57')
GO

INSERT INTO [dbo].[sys_organization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (N'4', N'财务部门', N'2', N'1.2.4', N'财务部门', N'435543535', N'123@qq.com', N'1', N'2', N'2021-05-27 22:34:11', N'2021-05-27 22:34:11')
GO

INSERT INTO [dbo].[sys_organization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (N'5', N'成都分部', N'2', N'1.5', N'成都分部', N'123123123', N'123@qq.com', N'1', N'1', N'2021-05-27 22:31:45', N'2021-05-27 21:01:50')
GO

INSERT INTO [dbo].[sys_organization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (N'7', N'研发部门', N'1', N'1.5.7', N'研发部门', N'1234323423', N'12312@qq.com', N'1', N'5', N'2021-05-27 22:32:29', N'2021-05-27 22:32:08')
GO

INSERT INTO [dbo].[sys_organization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (N'9', N'运维部门', N'4', N'1.5.9', N'运维部门', N'1232133452', N'12341@qq.com', N'1', N'5', N'2022-03-08 17:07:47', N'2021-05-27 22:33:25')
GO

INSERT INTO [dbo].[sys_organization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (N'10', N'测试部门', N'3', N'1.5.10', N'测试部门', N'12313', N'123123@qq.com', N'1', N'5', N'2021-05-27 22:32:59', N'2021-05-27 22:32:59')
GO

INSERT INTO [dbo].[sys_organization] ([Id], [Name], [OrderNumber], [LevelCode], [Leader], [Phone], [Email], [State], [ParentId], [LastModificationTime], [CreationTime]) VALUES (N'11', N'技术部门', N'2', N'1.5.11', N'技术部门', N'12345678911', N'12345678901@qq.com', N'1', N'5', N'2022-03-08 17:07:37', N'2022-03-08 17:00:20')
GO

SET IDENTITY_INSERT [dbo].[sys_organization] OFF
GO


-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_post]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_post]
GO

CREATE TABLE [dbo].[sys_post] (
  [Id] uniqueidentifier  NOT NULL,
  [Number] int  NULL,
  [Code] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [State] int  NULL,
  [Remarks] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[sys_post] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO [dbo].[sys_post] ([Id], [Number], [Code], [Name], [State], [Remarks], [LastModificationTime], [CreationTime]) VALUES (N'F0BD38C2-F1DE-4BD9-E2DB-08DA00A93622', N'5', N'dotnet_engineer', N'DotNet软件工程师', N'1', NULL, N'2022-03-08 10:13:18', N'2022-03-08 10:13:18')
GO

INSERT INTO [dbo].[sys_post] ([Id], [Number], [Code], [Name], [State], [Remarks], [LastModificationTime], [CreationTime]) VALUES (N'0716B4B0-9A06-43E9-8AE8-82C74875F83E', N'2', N'se', N'项目经理', N'1', NULL, N'2021-05-27 20:26:35', N'2021-05-27 20:26:35')
GO

INSERT INTO [dbo].[sys_post] ([Id], [Number], [Code], [Name], [State], [Remarks], [LastModificationTime], [CreationTime]) VALUES (N'96927C30-41D0-4CED-8E29-CBED35C90FB0', N'1', N'ceo', N'董事长', N'1', NULL, N'2021-05-27 20:26:22', N'2021-05-27 20:26:22')
GO

INSERT INTO [dbo].[sys_post] ([Id], [Number], [Code], [Name], [State], [Remarks], [LastModificationTime], [CreationTime]) VALUES (N'E46AF329-6D08-442C-9837-F22CFF954411', N'4', N'user', N'普通员工', N'1', NULL, N'2022-04-23 21:50:55', N'2021-05-27 20:26:52')
GO

INSERT INTO [dbo].[sys_post] ([Id], [Number], [Code], [Name], [State], [Remarks], [LastModificationTime], [CreationTime]) VALUES (N'F0C67537-8094-429A-B474-F54AC518609E', N'3', N'hr', N'人力资源', N'1', NULL, N'2021-05-27 20:26:44', N'2021-05-27 20:26:44')
GO


-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_role]
GO

CREATE TABLE [dbo].[sys_role] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL,
  [Number] int  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Remark] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [DeleteLock] bit  NULL
)
GO

ALTER TABLE [dbo].[sys_role] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO [dbo].[sys_role] ([Id], [LastModificationTime], [CreationTime], [Number], [Name], [Remark], [DeleteLock]) VALUES (N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'2021-01-10 11:25:12', N'2016-07-06 17:59:20', N'1', N'超级管理员', N'拥有所有权限', N'1')
GO

INSERT INTO [dbo].[sys_role] ([Id], [LastModificationTime], [CreationTime], [Number], [Name], [Remark], [DeleteLock]) VALUES (N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2021-01-30 00:51:17', N'2016-07-06 17:59:20', N'2', N'普通用户', N'普通用户', N'1')
GO


-- ----------------------------
-- Table structure for sys_role_menu_function
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role_menu_function]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_role_menu_function]
GO

CREATE TABLE [dbo].[sys_role_menu_function] (
  [Id] uniqueidentifier  NOT NULL,
  [RoleId] uniqueidentifier  NULL,
  [MenuId] int  NULL,
  [MenuFunctionId] uniqueidentifier  NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[sys_role_menu_function] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sys_role_menu_function
-- ----------------------------
INSERT INTO [dbo].[sys_role_menu_function] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'723496DE-EDF5-4ABB-8913-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2', N'A7CD04DB-BBE3-49B6-0F1E-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[sys_role_menu_function] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'47CF05E0-72B6-486F-8914-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'3', N'F64CFE50-1EF1-457F-0F20-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[sys_role_menu_function] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'CB8AD405-AFFD-4AA9-8915-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'5', N'A1DDD02F-8C21-4D79-0F21-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[sys_role_menu_function] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'03E8FE58-17FE-4284-8916-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'6', N'1CB6FBE1-4A6C-4AAD-0F22-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[sys_role_menu_function] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'07E218FC-2298-4954-8917-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'8', N'D2E6EA60-2CF6-478A-0F23-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[sys_role_menu_function] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'D44F1F28-B588-4B68-8918-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'9', N'B7533A90-DAE4-4263-0F24-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[sys_role_menu_function] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'A9B2D796-7FB4-4D61-8919-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'10', N'EC535908-8671-4928-0F25-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[sys_role_menu_function] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'234FAC8D-C4EE-46E2-891A-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'11', N'3BC0E68F-D03D-4E99-0F26-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[sys_role_menu_function] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'3C0CBCA5-310F-41DB-891B-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'13', N'EB958545-6449-40DB-0F27-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[sys_role_menu_function] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'B03F0D20-4079-462A-891C-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'13', N'B5881044-AFB8-40B2-0F28-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[sys_role_menu_function] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'4854C7F2-E61B-4A3A-891D-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'13', N'106FB69A-8BB5-4559-0F29-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[sys_role_menu_function] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'DA031F6C-E0EC-4460-891E-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'13', N'F4621FBE-6B40-4454-0F2A-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[sys_role_menu_function] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'8284A625-2407-44CA-891F-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'13', N'523B53B5-8159-4A16-0F2B-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[sys_role_menu_function] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'3A82A6ED-573A-4CBA-8920-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'13', N'A3754771-F6E9-4A23-0F2C-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[sys_role_menu_function] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'F55A6AB8-E54F-4C31-8921-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'13', N'B96F977C-A36E-4E7F-0F2D-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[sys_role_menu_function] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'AACC3780-8729-43DF-8922-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'13', N'541D9045-47B2-4629-0F2E-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[sys_role_menu_function] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'47D72C2C-D4E1-4D3E-8923-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'15', N'13F3F74D-C6FC-4488-0F2F-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[sys_role_menu_function] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'D05AADEA-113C-4D48-8924-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'19', N'C77C812A-1601-4311-0F70-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[sys_role_menu_function] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'D461B335-CC62-4AF1-8925-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'28', N'3F6D0AF7-5386-4D3A-0F71-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO

INSERT INTO [dbo].[sys_role_menu_function] ([Id], [RoleId], [MenuId], [MenuFunctionId], [LastModificationTime], [CreationTime]) VALUES (N'62941AC4-12B1-4427-8926-08DA250BDF25', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'32', N'6C09C0C0-72FA-4842-0F1F-08D9FDAD00AB', N'2022-04-23 17:30:14', N'2022-04-23 17:30:14')
GO


-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user]
GO

CREATE TABLE [dbo].[sys_user] (
  [Id] uniqueidentifier  NOT NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL,
  [Name] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [LoginName] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Password] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Phone] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [Email] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [DeleteLock] bit  NULL,
  [OrganizationId] int  NULL
)
GO

ALTER TABLE [dbo].[sys_user] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO [dbo].[sys_user] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'5722AF0F-2366-4FC9-62D5-08DA00E3D8A0', N'2022-03-08 17:13:02', N'2022-03-08 17:13:02', N'杜甫', N'杜甫', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', N'0', N'7')
GO

INSERT INTO [dbo].[sys_user] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'4FD6A740-0CF1-4975-62D6-08DA00E3D8A0', N'2022-03-08 17:14:13', N'2022-03-08 17:14:13', N'李商隐', N'李商隐', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', N'0', N'7')
GO

INSERT INTO [dbo].[sys_user] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'E225E163-31C9-4DA9-62D7-08DA00E3D8A0', N'2022-03-08 17:15:07', N'2022-03-08 17:15:07', N'苏轼', N'苏轼', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', N'0', N'7')
GO

INSERT INTO [dbo].[sys_user] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'3739F349-7995-4C63-62D8-08DA00E3D8A0', N'2022-03-08 17:17:58', N'2022-03-08 17:17:58', N'白居易', N'白居易', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', N'0', N'7')
GO

INSERT INTO [dbo].[sys_user] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'A3F9784C-5F00-4EC9-62D9-08DA00E3D8A0', N'2022-03-08 17:19:22', N'2022-03-08 17:19:22', N'陶渊明 ', N'陶渊明 ', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', N'0', N'7')
GO

INSERT INTO [dbo].[sys_user] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'A1B6DAFB-2B6A-4FF9-62DA-08DA00E3D8A0', N'2022-03-08 17:19:55', N'2022-03-08 17:19:55', N'屈原', N'屈原', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', N'0', N'7')
GO

INSERT INTO [dbo].[sys_user] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'CC186FE2-EE27-4292-62DB-08DA00E3D8A0', N'2022-03-08 17:20:20', N'2022-03-08 17:20:20', N'孟浩然', N'孟浩然', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', N'0', N'7')
GO

INSERT INTO [dbo].[sys_user] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'1550D6D4-0529-4FDD-62DC-08DA00E3D8A0', N'2022-03-08 17:30:56', N'2022-03-08 17:21:56', N'鲁迅', N'鲁迅', N'46F94C8DE14FB36680850768FF1B7F2A', N'12345678900', N'12345678900@qq.com', N'0', N'7')
GO

INSERT INTO [dbo].[sys_user] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'0198459E-2034-4533-B843-5D227AD20740', N'2022-03-08 17:27:36', N'2017-04-06 19:55:53', N'超级管理员', N'admin', N'E10ADC3949BA59ABBE56E057F20F883E', N'10000000000', N'1396510655@qq.com', N'1', N'7')
GO

INSERT INTO [dbo].[sys_user] ([Id], [LastModificationTime], [CreationTime], [Name], [LoginName], [Password], [Phone], [Email], [DeleteLock], [OrganizationId]) VALUES (N'AC18F496-E93D-42F0-B59E-E321ACC85335', N'2022-03-08 10:12:14', N'2017-04-06 19:55:53', N'李白', N'libai', N'E10ADC3949BA59ABBE56E057F20F883E', N'12345678900', N'12345678900@live.com', N'1', N'7')
GO


-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user_post]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user_post]
GO

CREATE TABLE [dbo].[sys_user_post] (
  [Id] uniqueidentifier  NOT NULL,
  [UserId] uniqueidentifier  NULL,
  [PostId] uniqueidentifier  NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[sys_user_post] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO [dbo].[sys_user_post] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'978FC672-D829-4DAD-ABC7-071810C5AD18', N'E225E163-31C9-4DA9-62D7-08DA00E3D8A0', N'E46AF329-6D08-442C-9837-F22CFF954411', N'2022-03-08 17:15:08', N'2022-03-08 17:15:08')
GO

INSERT INTO [dbo].[sys_user_post] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'DA9B04C9-D1EF-4721-8A94-4558DFE2EB7D', N'A1B6DAFB-2B6A-4FF9-62DA-08DA00E3D8A0', N'F0BD38C2-F1DE-4BD9-E2DB-08DA00A93622', N'2022-06-21 19:59:02', N'2022-06-21 19:59:02')
GO

INSERT INTO [dbo].[sys_user_post] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'575BF085-47BB-42F2-8B68-620CF460B164', N'0198459E-2034-4533-B843-5D227AD20740', N'96927C30-41D0-4CED-8E29-CBED35C90FB0', N'2022-03-08 17:29:22', N'2022-03-08 17:29:22')
GO

INSERT INTO [dbo].[sys_user_post] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'AF1BEC7E-3309-4629-9606-72EEFA1826B3', N'CC186FE2-EE27-4292-62DB-08DA00E3D8A0', N'F0BD38C2-F1DE-4BD9-E2DB-08DA00A93622', N'2022-03-08 17:20:20', N'2022-03-08 17:20:20')
GO

INSERT INTO [dbo].[sys_user_post] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'9F4597F3-5D31-4F2C-B470-7F97706421CF', N'1550D6D4-0529-4FDD-62DC-08DA00E3D8A0', N'F0BD38C2-F1DE-4BD9-E2DB-08DA00A93622', N'2022-06-09 21:54:18', N'2022-06-09 21:54:18')
GO

INSERT INTO [dbo].[sys_user_post] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'D4E0AE0B-3573-4901-8FD7-9BB2C88EBE94', N'3739F349-7995-4C63-62D8-08DA00E3D8A0', N'F0BD38C2-F1DE-4BD9-E2DB-08DA00A93622', N'2022-03-08 17:17:58', N'2022-03-08 17:17:58')
GO

INSERT INTO [dbo].[sys_user_post] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'B97331A7-E281-4027-AADE-9F068558826A', N'5722AF0F-2366-4FC9-62D5-08DA00E3D8A0', N'F0BD38C2-F1DE-4BD9-E2DB-08DA00A93622', N'2022-03-08 17:13:02', N'2022-03-08 17:13:02')
GO

INSERT INTO [dbo].[sys_user_post] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'0C1A55BA-6BD3-4810-A494-A6B9B7374D4D', N'AC18F496-E93D-42F0-B59E-E321ACC85335', N'F0BD38C2-F1DE-4BD9-E2DB-08DA00A93622', N'2022-03-08 10:13:35', N'2022-03-08 10:13:35')
GO

INSERT INTO [dbo].[sys_user_post] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'E64EF93C-2CE5-4B1D-A5D0-A9DE937C5A3F', N'E225E163-31C9-4DA9-62D7-08DA00E3D8A0', N'F0BD38C2-F1DE-4BD9-E2DB-08DA00A93622', N'2022-03-08 17:15:07', N'2022-03-08 17:15:07')
GO

INSERT INTO [dbo].[sys_user_post] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'6F671077-C98D-4106-9736-BF2EDB6DB58D', N'4FD6A740-0CF1-4975-62D6-08DA00E3D8A0', N'E46AF329-6D08-442C-9837-F22CFF954411', N'2022-03-08 17:14:13', N'2022-03-08 17:14:13')
GO

INSERT INTO [dbo].[sys_user_post] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'6C34F115-28DD-441A-81D5-F6598C97D44A', N'A3F9784C-5F00-4EC9-62D9-08DA00E3D8A0', N'F0BD38C2-F1DE-4BD9-E2DB-08DA00A93622', N'2022-03-08 17:19:22', N'2022-03-08 17:19:22')
GO

INSERT INTO [dbo].[sys_user_post] ([Id], [UserId], [PostId], [LastModificationTime], [CreationTime]) VALUES (N'B797FF16-D6F7-45DB-83EC-F910B2612926', N'4FD6A740-0CF1-4975-62D6-08DA00E3D8A0', N'F0BD38C2-F1DE-4BD9-E2DB-08DA00A93622', N'2022-03-08 17:14:13', N'2022-03-08 17:14:13')
GO


-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user_role]') AND type IN ('U'))
	DROP TABLE [dbo].[sys_user_role]
GO

CREATE TABLE [dbo].[sys_user_role] (
  [Id] uniqueidentifier  NOT NULL,
  [UserId] uniqueidentifier  NULL,
  [RoleId] uniqueidentifier  NULL,
  [LastModificationTime] datetime2(0)  NULL,
  [CreationTime] datetime2(0)  NULL
)
GO

ALTER TABLE [dbo].[sys_user_role] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO [dbo].[sys_user_role] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'AD5014F2-92E8-4109-9CA4-013A92390F8B', N'CC186FE2-EE27-4292-62DB-08DA00E3D8A0', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2022-03-08 17:20:20', N'2022-03-08 17:20:20')
GO

INSERT INTO [dbo].[sys_user_role] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'CE9F61AC-79D8-426F-9066-36962C017BF6', N'5722AF0F-2366-4FC9-62D5-08DA00E3D8A0', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2022-03-08 17:13:02', N'2022-03-08 17:13:02')
GO

INSERT INTO [dbo].[sys_user_role] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'DBC656A6-4264-417D-97D8-577E1218FECA', N'A3F9784C-5F00-4EC9-62D9-08DA00E3D8A0', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2022-03-08 17:19:22', N'2022-03-08 17:19:22')
GO

INSERT INTO [dbo].[sys_user_role] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'9B7BEE51-2FB4-4ABA-B680-6EEA512919EB', N'A1B6DAFB-2B6A-4FF9-62DA-08DA00E3D8A0', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2022-06-21 19:59:02', N'2022-06-21 19:59:02')
GO

INSERT INTO [dbo].[sys_user_role] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'1FE23F57-97C5-4670-9064-88D7D972CD28', N'E225E163-31C9-4DA9-62D7-08DA00E3D8A0', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2022-03-08 17:15:07', N'2022-03-08 17:15:07')
GO

INSERT INTO [dbo].[sys_user_role] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'4CBDEB60-7C7B-4A1A-9B50-8C84935B5D03', N'1550D6D4-0529-4FDD-62DC-08DA00E3D8A0', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2022-06-09 21:54:18', N'2022-06-09 21:54:18')
GO

INSERT INTO [dbo].[sys_user_role] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'A9F8A23B-8C2F-43CC-97AF-8ED6F4C4D097', N'4FD6A740-0CF1-4975-62D6-08DA00E3D8A0', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2022-03-08 17:14:13', N'2022-03-08 17:14:13')
GO

INSERT INTO [dbo].[sys_user_role] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'45B7D5AF-4D2C-465E-A4B6-99E52AF9AEE5', N'3739F349-7995-4C63-62D8-08DA00E3D8A0', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2022-03-08 17:17:58', N'2022-03-08 17:17:58')
GO

INSERT INTO [dbo].[sys_user_role] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'1C9F81DF-C8A0-45BB-A272-C84BD3AF0C19', N'0198459E-2034-4533-B843-5D227AD20740', N'18FA4771-6F58-46A3-80D2-6F0F5E9972E3', N'2022-03-08 17:29:22', N'2022-03-08 17:29:22')
GO

INSERT INTO [dbo].[sys_user_role] ([Id], [UserId], [RoleId], [LastModificationTime], [CreationTime]) VALUES (N'FA1FDF14-3847-4194-894C-CD935A3DD9E6', N'AC18F496-E93D-42F0-B59E-E321ACC85335', N'40FF1844-C099-4061-98E0-CD6E544FCFD3', N'2022-03-08 10:13:35', N'2022-03-08 10:13:35')
GO


-- ----------------------------
-- Primary Key structure for table flow
-- ----------------------------
ALTER TABLE [dbo].[flow] ADD CONSTRAINT [PK__flow__3214EC07BC64B717] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table flow_approval
-- ----------------------------
ALTER TABLE [dbo].[flow_approval] ADD CONSTRAINT [PK__FlowAppr__3214EC07D0DB8D96] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table flow_approval_step
-- ----------------------------
ALTER TABLE [dbo].[flow_approval_step] ADD CONSTRAINT [PK__FlowAppr__3214EC0754EDFF34] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table flow_approval_step_user
-- ----------------------------
ALTER TABLE [dbo].[flow_approval_step_user] ADD CONSTRAINT [PK_FlowApprovalStepUser] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table flow_node
-- ----------------------------
ALTER TABLE [dbo].[flow_node] ADD CONSTRAINT [PK__flownode__3214EC07319731E2] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table low_code_list
-- ----------------------------
ALTER TABLE [dbo].[low_code_list] ADD CONSTRAINT [PK_Low_Code_List] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table low_code_search
-- ----------------------------
ALTER TABLE [dbo].[low_code_search] ADD CONSTRAINT [PK_Low_Code_Search] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table low_code_table
-- ----------------------------
ALTER TABLE [dbo].[low_code_table] ADD CONSTRAINT [PK_Low_Code_Table] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table low_code_table_info
-- ----------------------------
ALTER TABLE [dbo].[low_code_table_info] ADD CONSTRAINT [PK_Low_Code_Table_Info] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table member
-- ----------------------------
ALTER TABLE [dbo].[member] ADD CONSTRAINT [Member_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_data_authority
-- ----------------------------
ALTER TABLE [dbo].[sys_data_authority] ADD CONSTRAINT [PK_DataAuthority] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_data_authority_custom
-- ----------------------------
ALTER TABLE [dbo].[sys_data_authority_custom] ADD CONSTRAINT [PK_SysDataAuthorityCustom] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sys_dictionary
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sys_dictionary]', RESEED, 1003)
GO


-- ----------------------------
-- Primary Key structure for table sys_function
-- ----------------------------
ALTER TABLE [dbo].[sys_function] ADD CONSTRAINT [SysFunction_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sys_menu
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sys_menu]', RESEED, 36)
GO


-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE [dbo].[sys_menu] ADD CONSTRAINT [SysMenu_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_menu_function
-- ----------------------------
ALTER TABLE [dbo].[sys_menu_function] ADD CONSTRAINT [SysMenuFunction_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_operation_log
-- ----------------------------
ALTER TABLE [dbo].[sys_operation_log] ADD CONSTRAINT [PK__SysOpera__3214EC0743ACCFCD] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sys_organization
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sys_organization]', RESEED, 11)
GO


-- ----------------------------
-- Primary Key structure for table sys_organization
-- ----------------------------
ALTER TABLE [dbo].[sys_organization] ADD CONSTRAINT [SysOrganization_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_post
-- ----------------------------
ALTER TABLE [dbo].[sys_post] ADD CONSTRAINT [SysPost_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE [dbo].[sys_role] ADD CONSTRAINT [SysRole_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_role_menu_function
-- ----------------------------
ALTER TABLE [dbo].[sys_role_menu_function] ADD CONSTRAINT [SysRoleMenuFunction_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE [dbo].[sys_user] ADD CONSTRAINT [SysUser_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_user_post
-- ----------------------------
ALTER TABLE [dbo].[sys_user_post] ADD CONSTRAINT [SysUserPost_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE [dbo].[sys_user_role] ADD CONSTRAINT [SysUserRole_pkey] PRIMARY KEY CLUSTERED ([Id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

