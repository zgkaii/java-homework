
/*==============================================================*/
/* CREATE SCHEMA                                                */
/*==============================================================*/
CREATE SCHEMA learn_ds_0;
CREATE SCHEMA learn_ds_1;

/*==============================================================*/
/* CREATE TEABLE IN learn_ds_0                                  */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS learn_ds_0.orders_0
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_0.orders_0 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_0.orders_1
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_0.orders_1 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_0.orders_2
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_0.orders_2 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_0.orders_3
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_0.orders_3 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_0.orders_4
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_0.orders_4 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_0.orders_5
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_0.orders_5 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_0.orders_6
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_0.orders_6 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_0.orders_7
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_0.orders_7 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_0.orders_8
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_0.orders_8 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_0.orders_9
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_0.orders_9 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_0.orders_10
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_0.orders_10 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_0.orders_11
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_0.orders_11 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_0.orders_12
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_0.orders_12 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_0.orders_13
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_0.orders_13 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_0.orders_14
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_0.orders_14 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_0.orders_15
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_0.orders_15 ADD PRIMARY KEY (orderid);

/*==============================================================*/
/* CREATE TEABLE IN learn_ds_1                                  */
/*==============================================================*/
CREATE TABLE IF NOT EXISTS learn_ds_1.orders_0
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_1.orders_0 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_1.orders_1
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_1.orders_1 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_1.orders_2
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_1.orders_2 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_1.orders_3
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_1.orders_3 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_1.orders_4
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_1.orders_4 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_1.orders_5
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_1.orders_5 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_1.orders_6
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_1.orders_6 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_1.orders_7
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_1.orders_7 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_1.orders_8
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_1.orders_8 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_1.orders_9
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_1.orders_9 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_1.orders_10
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_1.orders_10 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_1.orders_11
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_1.orders_11 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_1.orders_12
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_1.orders_12 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_1.orders_13
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_1.orders_13 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_1.orders_14
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_1.orders_14 ADD PRIMARY KEY (orderid);

CREATE TABLE IF NOT EXISTS learn_ds_1.orders_15
(
   orderid       VARCHAR(20) NOT NULL COMMENT '订单id',
   proid         VARCHAR(20) NOT NULL COMMENT '商品id',
   userid        INT NOT NULL COMMENT '用户id',
   payment       DECIMAL(20,2) NOT NULL COMMENT '订单金额',
   paymenttype   INT(1) NOT NULL COMMENT '支付类型:1-全额支付,2-分期支付',
   postage       DECIMAL(5,2) NOT NULL COMMENT '运费',
   ostatus       INT(1) NOT NULL COMMENT '订单状态:0-已取消,1-未付款,2-已付款,4-已发货,5-交易成功,6-交易关闭',
   paymenttime   DATETIME NOT NULL COMMENT '支付时间'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE learn_ds_1.orders_15 ADD PRIMARY KEY (orderid);

/*==============================================================*/
/* INSERT DATA IN learn_ds_0                                    */
/*==============================================================*/
INSERT INTO learn_ds_0.orders_0(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('0','1',2,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_0.orders_1(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('1','2',2,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_0.orders_2(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('2','3',2,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_0.orders_3(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('3','4',2,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_0.orders_4(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('4','5',2,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_0.orders_5(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('5','6',0,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_0.orders_6(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('6','7',0,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_0.orders_7(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('7','8',0,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_0.orders_8(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('8','9',2,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_0.orders_9(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('9','10',0,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_0.orders_10(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('10','11',2,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_0.orders_11(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('11','12',0,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_0.orders_12(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('12','13',2,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_0.orders_13(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('13','14',2,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_0.orders_14(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('14','15',2,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_0.orders_15(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('15','16',0,'10',1,'20',1,'2020-12-12 01:34:12');

/*==============================================================*/
/* INSERT DATA IN learn_ds_1                                    */
/*==============================================================*/
INSERT INTO learn_ds_1.orders_0(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('0','1',1,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_1.orders_1(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('1','2',1,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_1.orders_2(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('2','3',1,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_1.orders_3(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('3','4',3,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_1.orders_4(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('4','5',5,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_1.orders_5(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('5','6',1,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_1.orders_6(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('6','7',1,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_1.orders_7(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('7','8',1,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_1.orders_8(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('8','9',1,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_1.orders_9(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('9','10',3,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_1.orders_10(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('10','11',1,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_1.orders_11(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('11','12',1,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_1.orders_12(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('12','13',1,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_1.orders_13(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('13','14',3,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_1.orders_14(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('14','15',5,'10',1,'20',1,'2020-12-12 01:34:12');

INSERT INTO learn_ds_1.orders_15(orderid,proid,userid,payment,paymenttype,postage,ostatus,paymenttime) 
VALUES ('15','16',7,'10',1,'20',1,'2020-12-12 01:34:12');































