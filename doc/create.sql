
/*==============================================================*/
/* Table: ttpm_buy                                              */
/*==============================================================*/
create table ttpm_buy
(
   buyId                int not null auto_increment comment '购买ID',
   customerId           int not null comment '客户ID',
   productId            int not null comment '产品ID',
   insertDate           datetime not null comment '创建日期',
   insertUserId         varchar(20) not null comment '创建人',
   updateDate           datetime not null comment '最后一次修改日期',
   updateUserId         varchar(20) not null comment '最后一次修改人',
   version              varchar(50) comment '版本号',
   primary key (buyId)
);

alter table ttpm_buy comment 'ttpm_buy - 客户购买记录表';

/*==============================================================*/
/* Table: ttpm_customer                                         */
/*==============================================================*/
create table ttpm_customer
(
   customerId           int not null auto_increment comment '客户ID',
   customerName         varchar(150) not null comment '客户名称',
   customerSex          int comment '客户性别',
   customerAge          int comment '客户年龄',
   customerNo           varchar(50) comment '电话',
   customerAddress      varchar(150) comment '地址',
   customerNote         varchar(300) comment '备注',
   customerGrade        int comment '客户级别',
   staffId              varchar(20) comment '所属员工工号',
   insertDate           datetime not null comment '创建日期',
   insertUserId         varchar(20) not null comment '创建人',
   updateDate           datetime not null comment '最后一次修改日期',
   updateUserId         varchar(20) not null comment '最后一次修改人',
   version              varchar(50) comment '版本号',
   primary key (customerId)
);

alter table ttpm_customer comment 'ttpm_customer - 客户管理表';

/*==============================================================*/
/* Table: ttpm_product                                          */
/*==============================================================*/
create table ttpm_product
(
   productId            int not null auto_increment comment '产品ID',
   productName          varchar(300) not null comment '产品名称',
   productPrice         float not null comment '产品价格',
   insertDate           datetime not null comment '创建日期',
   insertUserId         varchar(20) not null comment '创建人',
   updateDate           datetime not null comment '最后一次修改日期',
   updateUserId         varchar(20) not null comment '最后一次修改人',
   version              varchar(50) comment '版本号',
   primary key (productId)
);

alter table ttpm_product comment 'ttpm_product - 产品表';

/*==============================================================*/
/* Table: ttpm_staff                                            */
/*==============================================================*/
create table ttpm_staff
(
   staffId              varchar(20) not null comment '员工工号',
   staffPwd             varchar(16) not null comment '员工app密码',
   staffName            varchar(50) not null comment '员工名称',
   staffSex             int comment '性别',
   staffAge             int comment '年龄',
   staffDepartment      varchar(100) comment '所属部门',
   staffPhone           varchar(50) comment '员工电话',
   staffNote            varchar(300) comment '备注',
   staffGrade           int comment '员工级别',
   insertDate           datetime not null comment '创建日期',
   insertUserId         varchar(20) not null comment '创建人',
   updateDate           datetime not null comment '最后一次修改日期',
   updateUserId         varchar(20) not null comment '最后一次修改人',
   version              varchar(50) comment '版本号',
   primary key (staffId)
);

alter table ttpm_staff comment 'ttpm_staff - 员工管理表';

/*==============================================================*/
/* Table: ttpm_user                                             */
/*==============================================================*/
create table ttpm_user
(
   username             varchar(20) not null comment '用户名称',
   pwd                  varchar(16) not null comment '用户密码',
   email                varchar(250) not null comment '用户注册邮箱',
   telephone            varchar(20) not null comment '用户电话',
   insertDate           datetime not null comment '创建日期',
   insertUserId         varchar(20) not null comment '创建人',
   updateDate           datetime not null comment '最后一次修改日期',
   updateUserId         varchar(20) not null comment '最后一次修改人',
   primary key (username)
);

alter table ttpm_user comment 'ttpm_user - 用户管理表';