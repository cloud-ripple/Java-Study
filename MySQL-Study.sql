#一、创建数据库
#1. cahracter set：指定数据库采用的字符集，如果不指定字符集，默认utf8
#2. collate :指定数据库字符集的校对规则，常用的 utf8_bin (区分大小写) 、 默认使用 utf8_general_ci (不区分大小写)
#3. 创建表时，如果不指定字符集和校对规则，则默认采用数据库的字符集和校对规则。
CREATE DATABASE hsp_db01 CHARACTER SET utf8 COLLATE utf8_bin;
CREATE DATABASE hsp_db02 CHARACTER SET utf8;
CREATE DATABASE hsp_db03 CHAR SET utf8 COLLATE utf8_bin;

USE hsp_db03;
SELECT * FROM t1;
SELECT * 
	FROM t1 
	WHERE NAME = 'tom';
	
USE hsp_db02;
SELECT *
	FROM t1
	WHERE NAME = 'tom';
	
#二、查询数据库
#1.显示数据库语句：show databases
#2.显示数据库创建语句：show create dtaabase db_name
#3.数据库删除语句：drop database [if exists] db_name

#查看当前所有数据库
SHOW DATABASES;

#查看前面创建的hsp_db01数据库的定义信息
SHOW CREATE DATABASE hsp_db01;

#在创建数据库表的时候，为了避免关键字，可以使用反引号解决
CREATE DATABASE `create`;

-- 查看MYSQL数据库服务器和数据库字符集
	方法一：show variables like '%character%';
	方法二：show variables like 'collation%';


 /*数据库客户端的编码*/
 set character_set_client = utf8mb4;
 /*建立连接使用的编码*/
 set character_set_connection = utf8mb4;
 /*数据库的编码*/
 set character_set_database = utf8mb4;
 /*结果集的编码*/
 set character_set_results = utf8mb4;
 /*数据库服务器的编码*/
 set character_set_server=utf8mb4;

--  查看MYSQL所支持的字符集
show charset;
-- 查看库的字符集
语法：show database status from 库名 like 表名;
-- 查看表的字符集
语法：show table status from 库名 like 表名;
-- 查看表中所有列的字符集
语法：show full columns from 表名;
原文链接：https://blog.csdn.net/weixin_37304575/article/details/86544623


三、备份恢复数据库
1.备份数据库
(注意是在cmd DOS中执行，而不是在mysql命令中执行，进入在mysql安装目录\bin下面执行，因为bin目录下有个 mysqldump.exe 执行文件)
	mysqldump -u 用户名 -p -B 数据库1 数据库2 数据库n > 文件名.sql     -- 备份文件名的路径要写清楚
	
数据库的导出（备份）-- 注意：进入在mysql安装目录\bin下面执行，因为bin目录下有个 mysqldump.exe 执行文件)
一般形式：mysqldump -h IP地址 -P 端口 -u 用户名 -p 数据库名 > 导出的文件名

导出所有表以及数据
C:\Program Files\MySQL\MySQL SERVER 5.5\BIN>mysqldump -h localhost -u root -p test > G:\arcgisworkspace\zypdoc\test.sql

导出所有表的表结构不含数据，加-d
C:\Program Files\MySQL\MySQL SERVER 5.5\BIN>mysqldump -h localhost -u root -p -d test > G:\arcgisworkspace\zypdoc\test.sql

备份多个数据库的语法
C:\Program Files\MySQL\MySQL SERVER 5.5\BIN>mysqldump -h localhost -u root -p --databases test bank > G:\arcgisworkspace\zypdoc\test.sql


2.恢复数据库
	source 文件名.sql
练习：database03.sql备份 hsp_db02 和hsp_db03 数据库中的数据，并恢复
 mysqldump -u root -p -B hsp_db02 hsp_db03 > d:\\bak.sql   这条指令在DOS中执行，备份文件本质就是对应的sql语句
 -- 可以在 -p后直接跟上密码  -ptwb
 
 #恢复数据库之前，先删除数据库
 DROP DATABASE hsp_db02;
 DROP DATABASE hsp_db03;
 #恢复数据库(注意：进入DOS中的MYSQL命令行再执行, mysql -u root -p )
 source d:\\bak.sql;
 #第二个恢复方法，直接把备份的bak.sql文件中的语句赋值粘贴到SQLyog执行

3.备份恢复数据库的表(注意在DOS中执行，进入在mysql安装目录\bin下面执行，因为bin目录下有个 mysqldump.exe 执行文件)
mysqldump -u 用户名 -p密码 数据库 表1 表2 表n > 文件名.sql
#先备hsp_db02数据库下的t1表，然后再删除，恢复
mysqldump -u root -p hsp_db02 t1 > d:\\table.sql
USE hsp_db02;
DROP TABLE t1;
#进入DOS中的MYSQL命令行再执行, mysql -u root -p ,要选择数据库
source d:\\table.sql
`hsp_db02`

四、创建表
/*
CREATE TABLE table_name
 (
	field1 datatype,
	field2 datatype,
	field3 datatype,
) character set 字符集 collate 校对规则 engine 引擎

field:指定列名  datatype:指定列类型（字段类型）
character set:如不指定则为所在数据库的字符集
collate: 如不指定则为所在数据库的校对规则
engine:引擎
*/ 

CREATE TABLE `user`
(
	id INT,
	`name` VARCHAR(32),
	`password` VARCHAR(255),
	birthday DATE
) CHARACTER SET utf8 COLLATE utf8_bin;


五、MySQL列类型
1.数值类型：
a. 整型：tinyint(1个字节)、smallint(2个字节)、mediumint(3个字节)、int(4个字节)、bigint(8个字节)
b. 小数类型：float(单精度4个字节)、double(双精度8个字节)、decimal(M, D)

2.文本类型（字符串类型）
-- a. char(0-255)、varchar(0-65535)、text(0-65535)、longtext(0-2^32 -1)

3.二进制数据类型：blob(0-65535)、longblob(0-2^32 -1)

4.日期类型：date[日期 年月日]、time[时间 时分秒]、datetime[年月日 时分秒  YYYY-MM-DD HH:mm:ss]、timestamp(时间戳)在insert和update时，自动更新


（一）列类型之整型
1.tinyint 范围：有符号 -128 - 127，如果没有符号范围是 0-255，没有指定unsigned，则tinyint就是有符号
CREATE TABLE t3 (
	id TINYINT); -- 默认是有符号的    id tinyint unsigned 是无符号
	
INSERT INTO t3 VALUES(-128) -- 成功
INSERT INTO t3 VALUES(-129) -- 报错


（二）列类型之小数型
1.float(单精度4个字节)、double(双精度8个字节)
2.decimal(M, D) 可以更加精确的小数位， M是小数位数总数，D是小数点后面的位数
如果D是0，则值没有小数点或分数部分。M最大65，D最大是30. 如果D被省略，默认是0；如果M被省略，默认是10.

CREATE TABLE t4 (
	num1 FLOAT,
	num2 DOUBLE,
	num3 DECIMAL(30,20));
	
INSERT INTO t4 VALUES(88.12636748588748, 77.2536715116277, 66.12435475889569);
SELECT * FROM t4;


（三）列类型字符串
1. CHAR(size) 固定长度字符串，最大255字符
2. VARCHAR(size) 0-65535 可变长度字符串，最大 65532字节  
【utf8编码最大21844字符，三个字节表示一个字符，1-3个字符用于记录大小 size=(65535-3) / 3 = 21844】

【GBK编码中，两个字节表示一个字符，1-3个字符用于记录大小，size=(65535-3) / 2 = 32766】
CREATE TABLE t5 (
	`name` CHAR(256));  -- 会报错
	
CREATE TABLE t6 (
	-- `name` VARCHAR(21845) CHARSET utf8, 会报错
	`name2` VARCHAR(32766) CHARSET gbk  -- 成功
); 


3.字符串使用细节1
a. CHAR(4) 这个4表示字符数，不是字节数，不管是字母还是中文都是放4个，按照字符计算

b. VARCHAR(4) 这个4表示字符数，不是字节数，不管是字母还是中文都以定义好的表的字符集编码来存放数据

CREATE TABLE t7 (
	`name` CHAR(4));
	-- 如果插入的数据是字符串，要用单引号
INSERT INTO t7 VALUES ('abcde'); -- 报错。超过4个字符了，不区分字母还是汉字
INSERT INTO t7 VALUES ('abc波'); -- 成功
SELECT * FROM t7;

CREATE TABLE t8 (
	`name` VARCHAR(4));
INSERT INTO t8 VALUES ('韩顺平好a'); -- 报错。超过4个字符了，不区分字母还是汉字
INSERT INTO t8 VALUES ('韩顺平好');  -- 成功
INSERT INTO t8 VALUES ('ab北京');  -- 成功
SELECT * FROM t8;


3.字符串使用细节2
a. CHAR(4) 是定长，固定的大小，就是说即使你插入 'aa'两个字符，也会占用分配的4个字符空间

b. VARCHAR(4) 是变长，变化的大小，就是说如果你插入了 'aa'，实际占用空间大小并不是4个字符，而是按照实际占用空间来分配，不会造成空间浪费
（注意：varchar本身还需要占用1-3个字节来记录存放内容长度） 占用空间大小 = 实际数据大小(如'aa') + (1-3)字节


3.字符串使用细节3
什么时候用char，什么时候用varchar
1. 如果数据是定长，推荐使用char，比如：密码，邮箱、手机号、身份证号码
查询速度; CHAR > VARCHAR 
 
2. 如果一个字段的长度不是确定，使用varchar，比如;留言、文章

3. 在存放文本时，也可以使用 TEXT 数据类型，可以将text列视为varchar列，注意 TEXT 不能有默认值，大小0-65535字节  0-2^16
如果希望存放更多字符，可以选择mediumtext 0-2^24 或者longtext 0-2^32
CREATE TABLE t9 (
	content TEXT, content2 MEDIUMTEXT, content3 LONGTEXT);
	
	-- 如果插入的数据是字符串，要用单引号
INSERT INTO t9 VALUES ('韩顺平教育', '韩顺平教育100', '韩顺平教育10000');
SELECT * FROM t9;


（四）列类型之日期类型
-- date[日期 年月日 如：2022-10-29]、time[时间 时分秒 如：11:46:59]、datetime[年月日 时分秒  YYYY-MM-DD HH:mm:ss]
-- timestamp(时间戳)在insert和update时，自动更新 not null default current_timestamp on current_timestamp
CREATE TABLE t10 ( 
	birthday DATE, -- 生日
	jobtime DATETIME, -- 入职 记录年月日 时分秒
	login_time TIMESTAMP 
	NOT NULL DEFAULT CURRENT_TIMESTAMP -- 登录时间 如果希望时间戳自动更新，需要这样设置
	ON UPDATE CURRENT_TIMESTAMP); -- 在修改时候，login_time 字段以当前时间自动更新，不用插入

INSERT INTO t10 (birthday, jobtime) VALUES ('2022-11-11', '2022-11-11 10:10:10');
SELECT * FROM t10;


六、创建表练习
CREATE TABLE t11 (
	id INT,
	`name` VARCHAR(30),
	sex CHAR(1), -- 性别
	birthday DATE,  -- 生日
	entry_date DATETIME, -- 入职时间
	job VARCHAR(30),
	salary DOUBLE, -- 薪水
	`resume` TEXT  -- 个人介绍
	) CHARSET utf8 COLLATE utf8_bin ENGINE INNODB; -- 常用的 utf8_bin (区分大小写) 、 默认使用 utf8_general_ci (不区分大小写)
-- 插入两条数据
INSERT INTO t11 
	VALUES (1, '小妖怪', '男', '2000-11-11', '2010-12-12 11:11:10','巡山的', 3000, '大王叫我来巡山'),
		(2, '大妖怪', '女', '2000-11-11', '2010-12-12 11:11:10','巡山的', 6000, '大王叫我来巡山');

SELECT * FROM t11;



七、修改表 ===>重点
使用 ALTER TABLE 语句 追加，修改或删除列的语法

1. 添加列(add.)：   
ALTER TABLE 表名
	ADD COLUMN 列名1 列类型 [DEFAULT expr]; -- [DEFAULT expr]代表可选，即默认值可以省略不写
	-- 可接着添加多列	
-- 	ADD COLUMN 列名2 列类型 [DEFAULT expr] -- 其中的 COLUMN 可以省略不写，直接在ADD后面写列名就行

-- 实例：
-- 向表中添加多列方法1  -- COLUMN可以省略不写，直接写列名都一样 添加3个字段 bobo、weiwei、twb
ALTER TABLE t11
	ADD bobo CHAR(3) NOT NULL DEFAULT '啵啵' AFTER image, 
	-- 向t11表中添加bobo字段，设置默认值为'啵啵', after image表示添加的列排在image列的后面
	ADD weiwei CHAR(3) DEFAULT '薇薇' AFTER bobo,
	ADD twb CHAR(4) AFTER weiwei;
	
-- 向表中添加多列方法2	添加2个字段 kunkun、rap
ALTER TABLE t11  
	ADD COLUMN kunkun VARCHAR(40) NOT NULL DEFAULT '' AFTER id,
	-- COLUMN可以省略不写
	ADD COLUMN rap CHAR(4) DEFAULT '' AFTER kunkun;



2. 修改列属性(modify.) -->不改变列名，相当于重新的定义该字段的 列类型、约束、默认值、主键等等
ALTER TABLE 表名
	MODIFY COLUMN 列名1 列类型 [DEFAULT expr];
	-- 可接着修改多列
--	MODIFY COLUMN 列名2 列类型 [DEFAULT expr] -- 其中的 COLUMN 可以省略不写，直接在MODIFY后面写列名就行
-- 实例：
ALTER TABLE t11
	MODIFY bobo TEXT,      -- 修改bobo字段的列类型为text，注意text列类型不能设置默认值
	MODIFY weiwei VARCHAR(20) DEFAULT '' NOT NULL; 
	-- 修改t11表中的weiwei字段属性，列类型为varchar，默认值为空字符，非空约束




3. 修改列名(change.) -->改变列名，也可以改变字段的 列类型、约束、默认值、主键等等
 ALTER TABLE 表名 
	CHANGE 列名 新列名 新列名的数据类型;
-- 举例：
ALTER TABLE t11 CHANGE twb huahai VARCHAR(50); -- 如;修改t11表中的twb字段 改名为huahai,列类型为 VARCHAR
ALTER TABLE t11 CHANGE kunkun caixukun CHAR(4); -- 修改t11表中的kunkun字段 改名为caixukun,列类型为 CHAR
ALTER TABLE t11 CHANGE caixukun kunkun VARCHAR(350) NOT NULL DEFAULT '蔡徐坤'; -- 也可以设置约束，默认值为'蔡徐坤'




4.删除列	(drop.)： 
	ALTER TABLE 表名
		DROP COLUMN 列名1; -- COLUMN 可以省略不写
-- 可删除多列	DROP COLUMN 列名2
		
		
5.查看表结构：desc 表名; -- 可以查看表的列


6.修改表名(rename. to.)：
-- 方法1
RENAME TABLE 表名 TO 新表名 
-- 方法2 
ALTER TABLE 表名 RENAME TO 新表名;


7.修改表的字符集： ALTER TABLE 表名 CHARACTER SET 字符集;
-- 如：修改t11表的字符集为gbk
ALTER TABLE t11 CHARSET gbk;
ALTER TABLE t11 CHARSET utf8;



(一)修改表练习：
a. 给员工表t11上增加一个image列，varchar类型(要求在resume后面)
ALTER TABLE t11
	ADD image VARCHAR(30) NOT NULL DEFAULT '' AFTER RESUME; 	
		             -- 非空约束，并且设置默认值为空字符 -- after resume表示在resume列后面

-- 向表中添加多列方法1
ALTER TABLE t11
	ADD bobo CHAR(3) NOT NULL DEFAULT '啵啵' AFTER image,
	ADD weiwei CHAR(3) DEFAULT '薇薇' AFTER bobo,
	ADD twb CHAR(4) AFTER weiwei;
	
-- 向表中添加多列方法2	
ALTER TABLE t11  
	ADD COLUMN kunkun VARCHAR(40) NOT NULL DEFAULT '' AFTER id,
	-- column可以不加，直接写列名都一样
	ADD COLUMN rap CHAR(4) DEFAULT '' AFTER kunkun;

	
b. 修改job列，使其长度为60
ALTER TABLE t11
	MODIFY job VARCHAR(60) DEFAULT '';
	
	
c. 删除sex列
ALTER TABLE t11
	DROP sex,	
	DROP bobo,
	DROP weiwei,
	DROP twb;

	
d. 表名改为employee
-- 方法1
RENAME TABLE t11 TO employee;
-- 方法2
ALTER TABLE t11 RENAME TO employee;

e. 修改表的字符集为utf8
ALTER TABLE t11 CHARSET utf8;

f. 列名name 修改为user_name
ALTER TABLE t11
	CHANGE `name` user_name VARCHAR(10) NOT NULL DEFAULT '';
	
	
SELECT * FROM t11;

DESC t11;




八、insert基本使用
（一）.使用insert语句系向表中插入数据
INSERT INTO 表名 [(列名1,列名2，列名3 ...)]  -- 值与列名相对应，[]表示可选，即可以不指定列名
	VALUES (value1,value2,value3, ....)

CREATE TABLE t12 (
	id INT,
	goods_name VARCHAR(10),
	price DOUBLE) CHARSET utf8 COLLATE utf8_bin;

INSERT INTO t12 (id,goods_name,price)
	VALUES 	(1,'凡人修仙传',67.89),
		(2,'白菊山',34.00),
		(3,'乱星海',156.7),
		(4,'黄枫谷',56),
		(5,'啵啵',99);

SELECT * FROM t12;


（二）、insert 语句使用细节和注意事项

1. 插入的数据应该与字段的数据类型相同
-- 实列 id是int类型，goods_name是字符串类型， price是double类型 

INSERT INTO t12 (id,goods_name,price)
	VALUES 	('1','凡人修仙传',67.89); -- 成功 
	-- int值也可以用单引号 ，转换逻辑在MWSQL底层实现，它会尝试着去转换
	-- 数值1本身就可以转成int类型，即使加了单引号，但如果值本身就是一个字符串就不能转换成int类型
INSERT INTO t12 (id,goods_name,price)
	VALUES 	('凡人修仙传','78',67.89); -- 报错 Incorrect integer value: '凡人修仙传' for column 'id' 
	
INSERT INTO t12 (id,goods_name,price)
	VALUES 	('2','凡人修仙传','67.89'); -- 成功
INSERT INTO t12 (id,goods_name,price)
	VALUES 	('3','78',67.89); -- 成功


2. 数据的长度应在列的规定范围内，比如：不能将一个长度为80的字符串加入到长度为40的列中
-- 实例 goods_name VARCHAR(10) 长度为10
INSERT INTO t12 (id,goods_name,price)
	VALUES 	(1,'凡人修仙传凡人修仙传凡人修仙传凡人修仙传凡人修仙传',67.89); -- 报错 Data too long for column 'goods_name'

	
3. 在 VALUES 中列出的数据位置必须与被加入的列的排列位置相对应
INSERT INTO t12 (id,goods_name,price)
	VALUES 	(1,67.89,'凡人修仙传'); -- 报错 Data truncated for column 'price'
	
INSERT INTO t12 (id,price,goods_name)
	VALUES 	(1,67.89,'凡人修仙传');	-- 成功 也可以把字段的位置交换一下，互相对应
	
	
4. 字符和日期类应包含在单引号中 -- 注意
INSERT INTO t12 (id,goods_name,price)
	VALUES 	(1,67.89,凡人修仙传); -- 报错 Unknown column '凡人修仙传' in 'field list'
	

5. 列可以插入空值，前提时该字段允许为空
INSERT INTO t12 (id,goods_name,price)
	VALUES 	('2','凡人修仙传',NULL); -- 成功
	

6. INSERT INTO 表名 (列名...) VALUES (),(),().. 形式可以插入多条记录
INSERT INTO t12 (id,goods_name,price)
	VALUES 	('6','凡人修仙传',6789),
		('7','红米手机',3456),
		('8','三星手机',5600),
		('9','华为手机',7023); -- 成功
		

7. 如果是给表中的所有字段添加数据，可以省略不写前面的字段名称(会默认匹配字段) -- 注意
INSERT INTO t12 VALUES (6,'凡人修仙传',6789);  -- 成功 
INSERT INTO t12 VALUES (6,'凡人修仙传');  -- 报错 少了一个字段的数据

8. 默认值的使用，指定了 NOT NULL ，当不给某个字段值时，如果有默认值就会添加，否则会报错 -- 注意 
   如果某个列，没有指定 NOT NULL ，那么当添加数据时，没有给定值，则会默认给null        
CREATE TABLE t2 (
	id INT,
	goods_name VARCHAR(10) NOT NULL DEFAULT '',
	price DOUBLE) CHARSET utf8 COLLATE utf8_bin;
INSERT INTO t2 (id,price)
	VALUES 	(10,300); -- 成功

SELECT * FROM t2;



九、update 语句
(一)语法：
UPDATE 表名
	SET 列名1=表达式或值 [,列名2=表达式或值...]
	[WHERE ..] -- 不用where条件的话相当于是对表中的所有记录修改
	
-- 实例 在上面创建的t11表中：
-- 1.将所有员工薪水修改为5000元
UPDATE t11 
	SET salary=5000; -- 成功 salary这一列列的值全部改为5000

-- 2.将姓名为 小妖怪 的员工薪水修改为3000元
UPDATE t11 
	SET salary=3000 
	WHERE user_name = '小妖怪'; -- 成功 只是修改了 小妖怪 的员工薪水
UPDATE t11 
	SET salary = NULL 
	WHERE user_name = '小妖怪';  -- 成功 修改了 小妖怪 的员工薪水为 null

-- 3.将 大妖怪 的薪水在原有基础上增加1000元
UPDATE t11
	SET salary = salary + 1000 
	WHERE user_name = '大妖怪'; -- 成功
	
SELECT * FROM t11;

(二)update语句使用细节
1. update语法可以用新值更新原有表行中的各列
2. set子句指示要修改那些列和要给予的哪些值
3. where子句指定赢更新哪些行，如果没有where子句，则更新所有行
4. 如果需要修改多个字段，可以通过 SET 列名1=值1，列名2=值2....


十、delete语句 删除表中数据
DELETE FROM 表名
	[WHERE ...] -- 不写where子句表示删除表中所有记录数据，但结构还在
-- 实例
-- 1. 删除表中名为 大妖怪 的记录（行，元组）
DELETE FROM t11
	WHERE user_name = '大妖怪';	

SELECT * FROM t11;

delete语句使用细节
1. delete语句不能删除某一列的值，可以使用update 设置为 NULL 或 ''空字符串
2. 使用delete语句仅删除记录，不删除表本身，如果要删除表，使用 DROP TABLE 表名
3. 不写where子句表示删除表中所有记录数据，但结构还在



十一、select语句  -- 重点 -- 重点
基本语法：
SELECT [DISTINCT] * | 列名1, 列名2, 列名3, ...  -- |代表或
	FROM 表名
注意事项：
1.select指定查询哪些列的数据，*号代表查询所有列
2.from指定查询那张表，distinct 可选，指显示结果时，是否去掉重复记录数据

CREATE TABLE student(
	id INT NOT NULL DEFAULT 1,
	`name` VARCHAR(20) NOT NULL DEFAULT '',
	chinese FLOAT NOT NULL DEFAULT 0.0,
	english FLOAT NOT NULL DEFAULT 0.0,
	math FLOAT NOT NULL DEFAULT 0.0);
	
INSERT INTO student (id,`name`,chinese,english,math)
	   VALUES (1,'韩顺平',89,78,90),
		  (2,'张飞',67,98,56),
		  (3,'宋江',87,78,77),
		  (4,'关羽',88,98,90),
		  (5,'赵云',82,84,67),
		  (6,'欧阳锋',55,85,45),
		  (7,'黄蓉',75,65,30);	
-- 实例：
查询表中所有学生信息
SELECT * FROM student;

查询表中所有学生的姓名和对应的英语成绩
SELECT `name`,english FROM student;

过滤表中重复数据
SELECT DISTINCT * FROM student; -- 要查询的记录，每个字段都相同，才会去重


3. 使用表达式对查询的列进行运算，在select语句中可以使用as语句
SELECT 列名 AS 别名 FROM 表名;
-- 实例：
统计每个学生的总分
SELECT `name`,(chinese+english+math) FROM student;

在所有学生总分加10的情况
SELECT `name`,(chinese + english + math + 10) FROM student;

使用别名表示学生的分数
SELECT `name` AS '名字',(chinese + english + math + 10) AS '总成绩'
	FROM student;


4.在where子句中经常使用的运算符
比较运算符：<> 、 !=  都代表不等于
显示在某一区间的值：between ...and... -- 是闭区间
显示在in列表中的值：in(SET) -- 如：in(100,200)
模糊查询：like '张pattern'、not like. ''
判断是否为空：is null.
逻辑运算符：and 多个条件同时成立，or 多个条件任一成立，not 不成立 -- 如：where not(salary > 100);

-- 实例：
查询姓名为赵云的学生成绩
SELECT * FROM student
	WHERE `name` = '赵云';
	
查询英语成绩大于90分的同学
SELECT * FROM student
	WHERE english > 90;
	
查询总分大于200分的所有同学
SELECT * FROM student
	WHERE (chinese + english + math) > 200;

查询math大于60，并且id大于4的学生成绩
SELECT * FROM student
	WHERE math > 60 AND id > 4;
查询英语成绩大于语文成绩的同学
SELECT `name`,english,chinese
	FROM student
	WHERE english > chinese;
	
查询总分大于200分 并且 数学成绩小于语文成绩 的 姓张和姓赵的学生
SELECT `name`,math,chinese
	FROM student
	WHERE (chinese + english + math) > 200 AND 
	math < chinese AND
	 `name` LIKE '张%' OR `name` LIKE '赵%'; -- 韩% 表示名字以韩开头就可以
	 
 查询英语分数在80-90之间的同学
 SELECT `name`,english
	FROM student
	WHERE english BETWEEN 80 AND 90; -- between .. and .. 是闭区间
	
 查询数学分数为89，90，91的同学
 SELECT `name`,math
	FROM student
	WHERE math IN(89,90,91);
	
 查询所有姓宋的学生成绩
 SELECT *
	FROM student
	WHERE `name` LIKE '宋%';
	


5.使用order by子句排序查询结果
SELECT 列名1,列名2,列名3...
	FROM 表名
	ORDER BY 列名 ASC | DESC, ...
a.order by指定排序的列，排序的列既可以是表中的列名，也可以是select语句后指定的列名
b. asc升序（默认）、desc降序
c. ORDER BY 子句应位于select语句的结尾

-- 实例：
对数学成绩排序后输出【升序】
SELECT *
	FROM student
	ORDER BY math; -- math后面可以省略 asc 默认升序

对总分按从高到低的顺序输出
SELECT *
	FROM student
	ORDER BY (chinese + english + math) DESC; -- 这样写不会按照总分来排序，因为表中没有(chinese + english + math)这一列
						  -- 需要取别名，如下：
	
SELECT `name`,(chinese + english + math) AS total_score  -- 取别名，当作排序的列
	FROM student
	ORDER BY total_score DESC; -- 排序的列既可以是表中的列名，也可以是select语句后指定的列名
-- 这样也可以：
SELECT `name`,(chinese + english + math) AS total_score 
	FROM student
	ORDER BY (chinese + english + math) DESC; -- 也可以是select语句后指定的列名
	
对姓韩的学生成绩排序输出【升序】
SELECT *
	FROM student
	WHERE `name` LIKE '韩%'
	ORDER BY math;


6. 统计函数count，返回行的总数，即某一列中有多少条记录
SELECT COUNT(*) | COUNT(列名)
	FROM 表名
	[WHERE ....]
-- 实例：
统计一个班级共有多少学生
SELECT COUNT(*) FROM student;

统计数学成绩大于80的学生有多少个
SELECT COUNT(*)
	FROM student
	WHERE math > 80;
	
统计总分大于250的人数有多少
SELECT COUNT(*)
	FROM student
	WHERE (math+english+chinese) > 250;
	
-- 注意 count(*)和count(列名)的区别：
COUNT(*)：返回满足条件的记录的行数
COUNT(列)：统计满足条件的某列有多少个，但是会排除为 NULL 的情况
-- 实例：
CREATE TABLE t13(
	`name` VARCHAR(20));

INSERT INTO t13 VALUES('tom'),('jack'),('mary');
INSERT INTO t13 VALUES (NULL);

SELECT COUNT(*) FROM t13; -- 4
SELECT COUNT(`name`) FROM t13; -- 3



7. 合计函数-SUM 返回满足where条件的行的和，一般使用在数值列
-- 注意：sum 仅对数值起作用，否则会报错，对多列求和 "，" 号不能少
SELECT SUM(列名) [,SUM(列名)...]
	FROM 表名
	[WHERE ....]
-- 实例：
统计一个班数学总成绩
SELECT SUM(math)
	FROM student; -- 在math列中所有行的值的和
	
统计一个班级语文、英语、数学各科的总成绩
SELECT SUM(chinese),SUM(english),SUM(math)
	FROM student;
	
统计一个班级语文、英语、数学的成绩总和
SELECT SUM(chinese + english + math)
	FROM student;
	
统计一个班级语文成绩平均分
SELECT SUM(chinese) / COUNT(*) FROM student;



8.合计函数-AVG 返回满足where条件的一列中的数据平均值
SELECT AVG(列名) [,AVG(列名...)]
	FROM 表名
	[WHERE ...]
-- 实例：
求一个班级数学平均分
SELECT AVG(math)
	FROM student;

求一个班级总分平均分
SELECT AVG(chinese + english + math)
	FROM student;
-- 或者
SELECT AVG(math),AVG(chinese + english + math) FROM student;


9.合计函数-MAX MIN 返回满足where条件的一列中的数据的最大/最小值
SELECT MAX(列名) FROM 表名 [WHERE ...]
-- 实例：
求班级最高分和最低分
SELECT MAX(chinese + english + math),MIN(chinese + english + math) FROM student;



10.使用group by子句对列进行分组
-- group by用于对查询的结果分组统计
-- having 子句用于限制分组显示结果，即进行条件过滤
SELECT 列名1,列名2,列名3..  -- 投影了表中的哪些列，就要在 GROUP BY 语句后面加上所有的列，作为依次按照...列分组
	FROM 表名
	GROUP BY 列名1,列名2,列名3...
	
使用having子句对分组后的结果进行过滤（相当于where子句）
SELECT 列名1,列名2,列名3..
	FROM 表名
	GROUP BY 列名1,列名2列名3... 
	HAVING ... -- 当以 别名 作为having子句后面的列来充当过滤条件时：英文别名不会有影响，但中文别名会让过滤条件失效	
	

-- 实例：


CREATE TABLE dept( -- 部门表 department
	deptno MEDIUMINT UNSIGNED NOT NULL DEFAULT 0, -- 部门编号
	dname VARCHAR(20) NOT NULL DEFAULT '', -- 部门名称
	loc VARCHAR(13) NOT NULL DEFAULT ''); 
	
INSERT INTO dept VALUES (10, 'ACCOUNTING', 'NEW YORK'), -- 财务部
			(20, 'RESEACH', 'DALLAS'), -- 研发部
			(30, 'SALES', 'CHICAGO'), -- 销售部
			(40, 'OPERATIONS', 'BOSTON'); -- 业务部
SELECT * FROM dept;

CREATE TABLE emp( -- 员工表employees
	empno MEDIUMINT UNSIGNED NOT NULL DEFAULT 0, -- 编号
	ename VARCHAR(20) NOT NULL DEFAULT '',
	job VARCHAR(9) NOT NULL DEFAULT '',
	mgr MEDIUMINT UNSIGNED, -- 上级
	hiredate DATE NOT NULL, -- 入职时间
	sal DECIMAL(7,2) NOT NULL, -- 薪水
	comm DECIMAL(7,2), -- 红利
	deptno MEDIUMINT UNSIGNED NOT NULL DEFAULT 0); -- 部门编号
	
INSERT INTO emp
	VALUES (7369, 'SMITH', 'CLERK', 7902, '1990-12-17', 800.00, NULL, 20),
		(7499, 'ALLEN', 'SALESMAN', 7698, '1991-2-20', 1600.00, 300.00, 30),
		(7521, 'WARD', 'SALESMAN', 7698, '1991-2-22', 1250.00, 500.00, 30),
		(7566, 'JONES', 'MANAGER', 7839, '1991-4-2', 2975.00, NULL, 20),
		(7654, 'MARTIN', 'SALESMAN', 7698, '1991-9-28', 1250.00, 1400.00, 30),
		(7698, 'BLAKE', 'MANAGER', 7839, '1991-5-1', 2850.00, NULL, 30),
		(7782, 'CLARK', 'MANAGER', 7839, '1991-6-9', 2450.00, NULL, 10),
		(7788, 'SCOTT', 'ANALYST', 7566, '1997-4-19', 3000.00, 300.00L, 20),
		(7767, 'JACK', 'CLEDER', 7980, '1999-4-19', 3000.00, 500.00, 10),
		(7792, 'BOBO', 'PRESIDENT', 7546, '1998-3-19', 3000.00, NULL, 10);
SELECT * FROM emp;


CREATE TABLE salgrade ( -- 工资级别表
	grade MEDIUMINT UNSIGNED NOT NULL DEFAULT 0, -- 工资级别
	losal DECIMAL(17,2) NOT NULL, -- 最低工资
	hisal DECIMAL(17,2) NOT NULL);
	
INSERT INTO salgrade VALUES (1, 700, 1200),
			    (2, 1201, 1400),
			    (3, 1401, 2000),
			    (4, 2001, 3000),
			    (5, 3001, 9999);
SELECT * FROM salgrade;			   

-- group by用于对查询的结果分组统计
-- having 子句用于限制分组显示结果
-- 实例：
如何显示每个部门的平均工资和最高工资
SELECT AVG(sal), MAX(sal), deptno
	FROM emp 
	GROUP BY deptno; -- 员工表emp中没有插入部门编号为40的数据记录，所以在以部门编号分组的时候，
			-- 查询结果只有编号为10，20，30这几个部门
	
显示每个部门的每种岗位的平均工资和最低工资
SELECT AVG(sal), MIN(sal), deptno, job -- 投影了哪些列。就要在 GROUP BY 后面加上所有的列，作为按照...列分组
	FROM emp
	GROUP BY deptno, job; -- 先按照部门分组，再按照岗位分组
	
	
显示平均工资低于2000的部门号和它的平均工资 //取别名为平均工资
SELECT deptno, AVG(sal) AS '平均工资'
	FROM emp
	GROUP BY deptno -- 以部门编号分组
	HAVING AVG(sal) < 2000; -- 过滤正确

-- 当以 别名 作为having子句后面的列来充当过滤条件时：英文别名不会有影响，但中文别名会让过滤条件失效				
SELECT deptno, AVG(sal) AS '平均工资'
	FROM emp
	GROUP BY deptno 
	HAVING '平均工资' < 2000; -- having子句后面的列名，如果以别名是中文的话，那么having子句后面的过滤条件就失效了
				 -- 不会报错，但是查询到的平均工资并不是低于2000的
SELECT deptno, AVG(sal) AS avg_sal
	FROM emp
	GROUP BY deptno 
	HAVING avg_sal < 2000; -- 正确



11.字符串函数 p31集


12.数学函数 p33集

13.日期函数 p34集

14.加密函数 p37集

15.流程控制函数 p38集


16.查询增强
-- 以下三张表为实例：
SELECT * FROM emp;
SELECT * FROM dept;
SELECT * FROM salgrade;

查询在1992.1.1后入职的员工
SELECT *
	FROM emp
	WHERE hiredate >= '1991-01-01'; -- 在mysql中，日期类型可以直接比较，需要注意日期格式
	
如何使用like操作符， % 表示0到多个字符 _ 表示单个任意字符
-- 实例：
如何显示首字母为S的员工姓名和工资
SELECT ename, sal
	FROM emp
	WHERE ename LIKE 'S%';  -- 首字母为S，后面的无所谓

如何显示第三个字符为大写O的所有员工姓名和工资
SELECT ename, sal
	FROM emp
	WHERE ename LIKE '__O%';  -- 两个下划线_，第三个为O字符，后面的随意

如何显示没有上级的雇员的情况
SELECT *
	FROM emp
	WHERE mgr IS NULL;
	
查询表结构
DESC 表名

分页查询-LIMIT START,ROWS
  
-- 每页显示3条记录
SELECT * FROM emp
	ORDER BY empno
	LIMIT 0, 3; -- 第一个0表示从第1行开始，后面的3表示显示3条记录
SELECT * FROM emp
	ORDER BY empno
	LIMIT 3, 3; -- 第一个3表示从第3行开始，后面的3表示显示3条记录
SELECT * FROM emp
	ORDER BY empno
	LIMIT 6, 3; -- 第一个6表示从第6行开始，后面的3表示显示3条记录

17.分组查询增强
显示每种岗位的雇员总数、平均工资
SELECT job,COUNT(*),AVG(sal)
	FROM emp
	GROUP BY job;
	
显示雇员总数，以及获得补助的雇员数
SELECT COUNT(*), COUNT(comm)
	FROM emp;
	
显示管理者的总人数
SELECT COUNT(DISTINCT mgr) FROM emp;

显示雇员工资的最大差额
SELECT MAX(sal) - MIN(sal)
	FROM emp;
	
请统计各个部门的平均工资，并且是大于1000的，并且按照平均工资从高到低排序，取出前两行记录
SELECT AVG(sal), deptno
	FROM emp
	GROUP BY deptno -- 按照部门编号deptno分组
	HAVING AVG(sal) > 1000 -- 过滤条件为平均工资于1000的
	ORDER BY AVG(sal) DESC -- 按照平均工资降序排序
	LIMIT 0,2; -- 从第1行开始，显示2条记录
	

18.多表笛卡尔积
-- 实例：
显示雇员名，雇员工资及所在部门的名字[笛卡尔积]
注意：多表查询的条件不能少于表的个数-1，否则会出现笛卡尔积
-- 当我们需要指定显示某个表的列时(由于这两个表emp, dept都有deptno字段)，需要 表名.列名
SELECT * FROM salgrade
SELECT * FROM emp
SELECT * FROM dept


SELECT ename,sal,dname,emp.deptno 
	FROM emp, dept
	WHERE emp.deptno = dept.deptno


如何显示部门号为10的部门名、员工名和工资
SELECT ename,sal,dname,emp.deptno 
	FROM emp, dept
	WHERE emp.deptno = dept.deptno
	AND dept.deptno = 10 
	
显示各个员工的姓名，工资，及其工资的级别
SELECT ename,sal,grade
	FROM emp,salgrade
	WHERE sal BETWEEN losal AND hisal  -- 工资要在salgrade工资级别表的最低与最高工资之间


19.自连接-多表查询
-- 实例：
显示公司员工名字和他上级的名字
-- 员工名字在emp, 上级的名字也在 emp,  员工和上街是通过 emp表的mgr列关联
-- 自连接的特点：1. 把一张表当作两张表使用  2. 需要给表取别名   3. 列名不明确，可以指定列的别名

SELECT worker.ename AS '职员名', boss.ename AS '上级名'
	FROM emp worker, emp boss  -- 给表取别名，把emp分为工人表和老板表
	WHERE worker.mgr = boss.empno  -- 实际要找的是，工人的上级编号要等于老板的部门编号，他们之间形成上下级关系


	
20.子查询
子查询是指嵌入在其它sql语句中的select语句，也叫嵌套查询
单行子查询：是指只返回一行数据的子查询语句
多行子查询：指返回多行数据的子查询，使用关键字 IN

-- 实例：
如何显示与SMITH同一部门的所有员工信息
/*思路：
1. 先查询到 SMITH的所在部门号
2. 把下面的 select语句当作一个子查询来使用
*/
SELECT deptno
	FROM emp
	WHERE ename = 'SMITH'
-- 完整语句;
SELECT *
	FROM emp
	WHERE deptno = (
		SELECT deptno
			FROM emp
			WHERE ename = 'SMITH') -- 单行子查询，返回一行数据
			
-- 实例：
如何查询和部门10的工作岗位相同的雇员的名字、岗位、工资、部门号，但是不含10号部门自己的雇员
/*思路：
1.先查询到10号部门有哪些工作
2.把下面查询的结果当作子查询使用

*/
SELECT DISTINCT job  -- 每个部门的工作岗位很多有可能相同，要去重
	FROM emp
	WHERE deptno = 10
	
-- 完整语句：
SELECT ename, job, sal, deptno
	FROM emp
	WHERE job IN 
	(
		SELECT DISTINCT job
		FROM emp
		WHERE deptno = 10
	)
	AND deptno != 10  -- 不包含10号部门的员工，这里的 ！= 可以用 <> 代替



21.子查询当作临时表使用
-- 实例：
查询goods表中各个类别中，价格最高的商品
/*思路：
1.先得到各个类别中价格最高的商品 max ，然后按照类别分组,把这个子查询当作一个临时表
可以解决很多很多复杂的问题
*/
SELECT * FROM goods

SELECT `name`,MAX(price) AS max_price
	FROM goods
	GROUP BY `name`   -- 临时表 temp

-- 完整语句：	
SELECT `number`, goods.name, madeTime, price
	FROM (
		SELECT `name`,MAX(price) AS max_price
		FROM goods
		GROUP BY `name`
		)temp, goods
	WHERE temp.name = goods.name
	AND temp.max_price = goods.price



22.子查询中使用all和any操作符

-- 实例：
显示工资比部门30的所有员工的工资高的员工姓名、工资和部门号
/*思路：
1.先查询到部门号30的所有员工工资
*/
SELECT sal
	FROM emp
	WHERE deptno = 30
	
SELECT ename, sal, deptno
	FROM emp
	WHERE sal > ALL(SELECT sal
				FROM emp
				WHERE deptno = 30) -- sal要大于这个子查询的所有sal结果
-- 上下两种写法查询结果等价
SELECT ename, sal, deptno
	FROM emp
	WHERE sal > (SELECT MAX(sal)
				FROM emp
				WHERE deptno = 30) -- sal大于这个子查询的最大sal，那么查询出来的sal就比所有的高

				
思考：显示工资比部门30的其中一个员工的工资高的员工姓名、工资和部门号
SELECT ename, sal, deptno
	FROM emp
	WHERE sal > ANY(SELECT sal
				FROM emp
				WHERE deptno = 30) -- sal要大于这个子查询的其中一个sal结果
-- 上下两种写法查询结果等价
SELECT ename, sal, deptno
	FROM emp
	WHERE sal > (SELECT MIN(sal)
				FROM emp
				WHERE deptno = 30) -- sal大于这个子查询的最小sal，那么就满足

23.多列子查询
指的是查询返回多个列数据的子查询语句
语法形式: (字段1，字段2) = (SELECT 字段1，字段2 FROM ....)
-- 实例：
如何查询与ALLEN的部门和岗位完全相同的所有雇员(并不包含SMITH本人)
/*思路：
1.先查询到ALLEN的部门和岗位
2.根据 部门和岗位条件 与 子查询匹配
*/
-- 多列子查询
SELECT dname, job
	FROM dept, emp
	WHERE dept.deptno = emp.deptno
	AND ename = 'ALLEN'
	
-- 完整语句：把多列子查询当作条件匹配
SELECT *
	FROM dept, emp
	WHERE (dname,job) = (
		SELECT dname, job
		FROM dept, emp
		WHERE dept.deptno = emp.deptno
		AND ename = 'ALLEN')
	AND ename <> 'ALLEN'


24.子查询练习
-- 实例1：
查找每个部门工资高于本部门平均工资的员工资料（这里用到数据查询的小技巧，把一个子查询当作一个临时表使用）
/*思路：
1.先查询到每个部门的部门号和对应的平均工资,根据部门号分组
2.把下面的结果当作子查询，并看作一个临时表temp
*/

SELECT deptno,AVG(sal) AS avg_sal
	FROM emp
	GROUP BY deptno
	
-- 完整语句：
SELECT ename, sal, temp.avg_sal, emp.deptno
	FROM emp, (SELECT deptno,AVG(sal) AS avg_sal
			FROM emp
			GROUP BY deptno)temp
	WHERE temp.deptno = emp.deptno AND emp.sal > temp.avg_sal
		-- 本部门条件，当两个表的部门号相同时  ，而且该所在部门emp表中的工资sal比temp表中的平均工资高


-- 实例2：
查找每个部门工资最高的员工资料	

SELECT deptno, MAX(sal) AS max_sal
	FROM emp
	GROUP BY deptno
-- 得到各个部门的最高工资，当作一个临时表

SELECT ename, sal, temp.max_sal, emp.deptno
	FROM emp,(SELECT deptno, MAX(sal) AS max_sal
			FROM emp
			GROUP BY deptno)temp
	WHERE temp.deptno = emp.deptno AND emp.sal = temp.max_sal
	-- 按照部门号建立等值连接


-- 实例3：
查询每个部门的信息，包括:部门名、编号、地址和人员数量

-- 分析：
-- 1.部门名、编号、地址 来自dept表
-- 2.各个部门的人员数量 --> 构建一个临时表

SELECT deptno, COUNT(*) AS emp_num
	FROM emp
	GROUP BY deptno

SELECT dname, dept.deptno, loc, emp_num AS '人数'  -- 这里的deptno字段，两个表都有，需要指定是哪个表的，随便指定一个都可以
	FROM dept, (
		SELECT deptno, COUNT(*) AS emp_num
		FROM emp
		GROUP BY deptno
		)temp
	WHERE dept.deptno = temp.deptno -- 两个表建立等值连接
	
-- 注意：还有一种写法，---> 表名.* <--- 表示将该表所有列都显示出来,如果直接写 * 表示将两个表的所有列都显示了
-- 在多表查询中，当多个表的列不重复时，才可以直接写列名，否则需要指定是哪个表的列
SELECT dname, loc, temp.*
	FROM dept, (
		SELECT deptno, COUNT(*) AS emp_num
		FROM emp
		GROUP BY deptno
		)temp
	WHERE dept.deptno = temp.deptno



25.表复制和去重
-- 表的复制，即插入一条查询语句
-- 为例对某个sql语句进行效率测试，我们需要海量数据时，可以使用此法为表创建海量数据

CREATE TABLE my_tab01 (
	id INT,
	`name` VARCHAR(32),
	sal DOUBLE,
	job VARCHAR(32),
	deptno INT);

DESC my_tab01
SELECT * FROM my_tab01

-- 演示如何自我复制
/* 1.先把emp表的记录复制到 my_tab01 */
INSERT INTO my_tab01
	(id, `name`, sal, job, deptno)
	SELECT empno, ename, sal, job, deptno FROM emp; -- 插入一条查询语句,作为数据

/* 2. 自我复制，把自身表查询到的结果记录插入到自己表中 */
INSERT INTO my_tab01
	SELECT * FROM my_tab01 -- 本质上还是把查询结果的数据作为插入的值，只是省略了values关键字
	-- 这个插入语句可以执行多次，达到海量数据的效果，记录以2的倍数增长


-- 演示去重，如何删除掉一张表重复记录

/* 1.先创建一张表 my_tab02
 
   2. 让 my_tab02 有重复的记录 
*/
   
CREATE TABLE my_tab02 LIKE emp;    -- 这种语句写法，表示把 emp表的结构(列类型等信息)，复制到 my_tab02表

DESC my_tab02 -- 可以看到与emp表结构一样

INSERT INTO my_tab02
	SELECT * FROM emp -- 把查询结果作为数据插入表中，多次执行该插入语句，产生重复数据
	
SELECT * FROM my_tab02

/* 3. 如何去重？
	思路分析：
	(1)先创建一张临时表 my_temp, 该表的结构和 my_tab02 一样 
	(2)把 my_tab02表 的记录通过 distinct 关键字去重处理后，把记录复制到 my_temp
	(3)清除掉 my_tab02 中的原有数据记录,DELETE FROM
	(4)把 my_temp 表的记录复制到 my_tab02表中
	(5)最后删除drop临时表my_temp
*/
-- 代码实现：
-- (1)先创建一张临时表 my_temp, 该表的结构和 my_tab02 一样 
CREATE TABLE my_temp LIKE my_tab02

-- (2)把 my_tab02表 的记录通过 distinct 关键字去重处理后，把记录复制到 my_temp
INSERT INTO my_temp
	SELECT DISTINCT * FROM my_tab02
	
SELECT * FROM my_temp -- 此时 my_temp临时表中已经插入了去重后的数据

-- (3)清除掉 my_tab02 中的原有数据记录
DELETE FROM my_tab02 -- 此时该表为空表，但结构还在

-- (4)把 my_temp 表的记录复制到 my_tab02表中
INSERT INTO my_tab02
	SELECT * FROM my_temp

-- (5)最后删除drop临时表my_temp
DROP TABLE my_temp


26.合并查询
有时候在实际应用中，为了合并多个 select语句的结果，可以使用集合操作符号 UNION, UNION ALL
UNION ALL 该操作符用于取得两个结果集的并集，当使用该操作符时，不会取消重复行
-- 实例：

SELECT ename, sal, job FROM emp WHERE sal > 2500 -- 查到5条记录
SELECT ename, sal, job FROM emp WHERE job = 'MANAGER' -- 查到3条记录

-- union all 就是将两个查询结果合并，但不会去重
SELECT ename, sal, job 
	FROM emp WHERE sal > 2500 
	UNION ALL
	SELECT ename, sal, job 
	FROM emp WHERE job = 'MANAGER' -- 查到8条记录
	
-- union 将两个查询结果合并，会自动去重
SELECT ename, sal, job 
	FROM emp WHERE sal > 2500 
	UNION 
	SELECT ename, sal, job 
	FROM emp WHERE job = 'MANAGER' -- 查到去重后的6条记录


27.外连接需求
前面我们学习的查询，是利用where子句对两张表或者多张表，形成的笛卡尔积进行筛选
根据关联条件，显示所有匹配的记录，匹配不上的，不显示

-- 引出外连接
(1) 左外连接：如果左侧的表完全显示我们就说是左外连接 -- 左边的表即使没有跟右边的表匹配到结果，也会显示出来
(2) 右外连接：如果右侧的表完全显示就说是右外连接
/*创建 stu表
	id  name
	1   jack
	2   tom
	3   kity
	4   nono
*/
CREATE TABLE stu (
	id INT,
	`name` VARCHAR(32));
INSERT INTO stu VALUES (1, 'jack'),(2, 'tom'),(3, 'kity'),(4, 'nono');

SELECT * FROM stu
/*创建 exam表
	id   grade
	1    56
	2    76
	11    8
*/
CREATE TABLE exam (
	id INT,
	grade INT);

INSERT INTO exam VALUES (1, 56),(2, 76), (11, 8)
SELECT * FROM exam

使用左连接，显示所有人的成绩，如果没有成绩，也要显示该人的姓名和id号，成绩显示为空

-- 传统的多表查询，根据等值条件建立连接，只会匹配到条件相同的记录，并不能显示所有人的成绩
SELECT stu.id, `name`, grade
	FROM stu, exam
	WHERE stu.id = exam.id
	
-- 改成左外连接，左侧表stu全部显示，即使  kity、nono两人没有grade成绩，也会显示出来，并为空
SELECT stu.id, `name`, grade
	FROM stu LEFT JOIN exam
	ON stu.id = exam.id

左外连接语法： SELECT ... FROM 表1 LEFT JOIN 表2 ON 条件  -- 表1就是左表，表2就是右表



使用右外连接，显示所有成绩，如果没有名字匹配，显示空
-- 即使右边的表exam和左表没有在条件上匹配到记录，也会把右边表的记录全部显示出来
SELECT exam.id, `name`, grade
	FROM stu RIGHT JOIN exam
	ON stu.id = exam.id

右外连接语法： SELECT ... FROM 表1 RIGHT JOIN 表2 ON 条件  -- 表1就是左表，表2就是右表


-- 实例：
列出部门名称和这些部门的员工名称和工作，同时要求显示出那些没有员工的部门

-- 先使用学习过的多表查询，发现并没有显示所有部门的信息
SELECT dname, ename, job
	FROM emp, dept
	WHERE emp.deptno = dept.deptno
	ORDER BY dname
	
-- 使用左外连接实现,部门表dept即使没有在条件上与emp表匹配到记录也会显示出来
SELECT dname, ename, job
	FROM dept LEFT JOIN emp
	ON dept.deptno = emp.deptno

-- 使用右外连接实现
SELECT dname, ename, job
	FROM emp RIGHT JOIN dept
	ON dept.deptno = emp.deptno



28.约束
约束用于确保数据库的数据满足特定的商业规则，包括： NOT NULL 、unique、primary ket、foreign key、check五种

PRIMARY KEY(主键约束)： 用于唯一的标识表行的数据，当定义主键约束后，该列不能重复
语法：字段名 字段类型 PRIMARY KEY
主键细节说明：
(1) PRIMARY KEY 不能重复而且不能为null
(2) 一张表最多只能有一个主键，但是可以是复合主键
(3) 主键的指定方式有两种：
	直接在字段名后指定：字段名 字段类型 PRIMARY KEY
	在表定义最后写 PRIMARY KEY(列名)
(4) 使用desc 表名，可以看到主键的情况

CREATE TABLE t17 (
	id INT PRIMARY KEY,  -- 表示id列是主键,主键列的值是不可以重复的
	`name` VARCHAR(32),
	email VARCHAR(32));

INSERT INTO t17
	VALUES (NULL, 'jack', 'jack@shou.com') -- 错误 (1) PRIMARY KEY 不能重复而且不能为null

-- (2) 一张表最多只能有一个主键，但是可以是复合主键

CREATE TABLE t18 (
	id INT,
	`name` VARCHAR(32),
	email VARCHAR(32),
	PRIMARY KEY (id, `name`)); -- 这里就是复合主键，当id和name的值都相同时才违反主键约束
	
DESC t18  -- 这里并不是说id是第一个主键，name是第二个，而是 id+name作为共同的主键

INSERT INTO t18
	VALUES (1, 'tom', 'tom@shou.com'); -- 成功

INSERT INTO t18
	VALUES (1, 'jack', 'jack@shou.com'); -- 成功

INSERT INTO t18
	VALUES (1, 'tom', 'xx@shou.com'); -- 添加失败  复合主键id-name重复了，违反主键约束
	

UNIQUE(唯一)约束：当定义了唯一约束后，该列值是不能重复的
语法：字段名 字段类型 UNIQUE
细节：(1)如果没有指定 NOT NULL,则 UNIQUE 字段可以有多个 NULL
      (2)一张表可以有多个 UNIQUE 字段
CREATE TABLE t19 (
	id INT UNIQUE,  -- 表示id列是不可以重复的，但可以为null空
	`name` VARCHAR(32),
	email VARCHAR(32));	 

INSERT INTO t19
	VALUES (1, 'tom', 'xx@shou.com'); -- 插入成功
	
INSERT INTO t19
	VALUES (1, 'tom', 'xx@shou.com'); -- 插入失败
		
INSERT INTO t19
	VALUES (NULL, 'tom', 'xx@shou.com');	-- 插入成功
	
INSERT INTO t19
	VALUES (NULL, 'tom', 'xx@shou.com');	-- 插入成功 (1)如果没有指定 NOT NULL约束,则 UNIQUE 字段可以有多个 NULL
-- 如果一个字段是 unique not null 唯一 +非空约束，使用效果等价于 主键约束	
SELECT * FROM t19	
	
	

FOREIGN KEY(外键约束)：
用于定义主表和从表之间的关系，外键约束要定义在从表上，
主表则必须具有主键约束或是unique唯一约束。当定义外键约束后，要求外键列数据必须在主表的主键列存在或是为null空	
	
语法： FOREIGN KEY (本表字段名) REFERENCES 主表名(主键名或unique字段名)	  -- references 参考

-- 先创建主表 my_class
CREATE TABLE my_class (
	id INT PRIMARY KEY,   -- 班级编号
	`name` VARCHAR(32) NOT NULL DEFAULT '');

	
-- 创建从表 my_stu
CREATE TABLE my_stu (
	id INT PRIMARY KEY,   -- 学生编号
	`name` VARCHAR(32) NOT NULL DEFAULT '',
	class_id INT,  -- 学生所在班级编号，作为外键，参考主表的主键
	-- 下面指定外键关系,指向主表中的主键id
	FOREIGN KEY (class_id) REFERENCES my_class(id));
	
	
-- 测试数据
INSERT INTO my_class VALUES (100, 'java'), (200, 'web')	
SELECT * FROM my_class
		
INSERT INTO my_stu VALUES (1, 'tom', 100);    -- 插入成功
INSERT INTO my_stu VALUES (2, 'jack', 200);   -- 插入成功

INSERT INTO my_stu VALUES (3, 'bobo', 300);   -- 插入失败，由于班级编号class_id与主表的id关联了外键约束
					-- 而在主表my_class中，并不存在id 为300	的班级编号，
					-- 所以在从表my_stu中插入class_id为300的记录时，插入失败
					-- 除非在主表my_class中，添加一条id班级编号为300的记录
										
INSERT INTO my_stu VALUES (4, 'smith', 200);  -- 插入成功
INSERT INTO my_stu VALUES (5, 'weiwei', 100);	-- 插入成功 
INSERT INTO my_stu VALUES (6, 'weiwei', NULL);	-- 插入成功 (4) 外键字段的值，必须在主键字段中存在或者说出现过，
							-- 或者为空null(前提是外键字段允许为null)
SELECT * FROM my_stu	
	

外键使用细节：
(1) 外键指向的表的字段，要求是 PRIMARY KEY 或者是 UNIQUE 约束的	
(2) 表的类型是 INNODB ，这样的表才支持外键
(3) 外键字段的类型要和主键字段的类型一致(长度可以不同)
(4) 外键字段的值，必须在主键字段中存在或者说出现过，或者为空null(前提是外键字段允许为null),NULL 没有指向，不受外键约束
(5) 一旦建立主外键的关系，数据不能随意删除了
SELECT * FROM my_class
	
DELETE FROM my_class WHERE id = 100; -- 删除失败
 -- 这里能否删除成功的关键在于，有没有从表的外键关联并指向了主表的这个id主键
-- 如果在my_stu表中有外键 指向了my_class表的班级标号id为100的字段，那么不能随意删除主表中记录
-- 可以先删除从表 my_stu中的class_id为100的记录，此时没有任何一条记录指向关联的主键，然后再删除主表中id为100的记录
	
DELETE FROM my_stu WHERE class_id = 100;  -- 先删除学生表中班级编号(外键)为100的记录

DELETE FROM my_class WHERE id = 100; -- 删除成功	
	
SELECT * FROM my_class	
	
	

CHECK 约束：用于强制行数据必须满足的条件，假定在 sal列上定义了check约束
并要求sal列值在1000-2000之间，如果不在该区间范围就会提示出错	
-- 注意：oracle 和 sql server均支持check约束，但是 mysql 5.7目前还不支持check只做语法校验，但不会生效	
语法：列名 类型 CHECK (check条件)	

-- 测试
CREATE TABLE t20 (
	id INT PRIMARY KEY,
	`name` VARCHAR(32),
	sex VARCHAR(6) CHECK (sex IN('man', 'woman')),
	sal DOUBLE CHECK (sal > 1000 AND sal < 2000)
	);

INSERT INTO t20 VALUES (1, 'jack', 'mid', 1); -- 插入成功，mysql 5.7目前还不支持check约束，只做语法校验，并不会生效

SELECT * FROM t20




29.商店表设计
现有一个商店的数据库shop_db，记录客户及其购物情况，有下面三个表组成：
商品goods(商品号goods_id，商品名goods_name，单价unitprice，商品类别category，供应商provider);
客户customer(客户号customer_id，姓名name，住址address，电邮email，性别sex，身份证card_id)
购买purchase(购买订单号order_id，客户号customer_id，商品号goods_id，购买数量nums)

-- 建表，在定义中要求声明：
(1)每个表的主外键
(2)客户的姓名不能为空值
(3)电邮不能够重复
(4)客户的性别【男|女】
(5)单价unitprice在1.0-9999.99之间check

-- 商品goods(商品号goods_id，商品名goods_name，单价unitprice，商品类别category，供应商provider);
CREATE TABLE goods (
	goods_id INT PRIMARY KEY,
	goods_name VARCHAR(50) NOT NULL DEFAULT '',
	unitprice DECIMAL(10, 2) NOT NULL DEFAULT 0 CHECK (unitprice BETWEEN 1.0 AND 9999.99),
	category INT NOT NULL DEFAULT 0,
	provider VARCHAR(30) NOT NULL DEFAULT ''
	) COMMENT '商品表';
	
DROP TABLE purchase,goods,customer  -- 删除成功，删除多个表细节：把有外键的从表放在前面(先删除),主表放在其后
DROP TABLE goods,customer  -- 删除失败，除非先删除具有外键依赖的从表purchase，一旦有了外键，就不能随意删除其参考的主表	


-- 客户customer(客户号customer_id，姓名name，住址address，电邮email，性别sex，身份证card_id)
CREATE TABLE customer (
	customer_id CHAR(8) PRIMARY KEY, -- 自己决定
	`name` VARCHAR(20) NOT NULL DEFAULT '',
	address VARCHAR(50) NOT NULL DEFAULT '',
	email VARCHAR(30) UNIQUE NOT NULL,
	sex ENUM('男', '女') NOT NULL, -- 这里使用枚举类型
	card_id CHAR(18) UNIQUE
	) COMMENT '顾客表';


-- 购买purchase(购买订单号order_id，客户号customer_id，商品号goods_id，购买数量nums)	
CREATE TABLE purchase (
	order_id INT UNSIGNED PRIMARY KEY,
	customer_id CHAR(8) NOT NULL DEFAULT '',  -- 外键字段的类型要和主键字段的类型一致(长度可以不同)
	goods_id INT NOT NULL DEFAULT 0, -- 外键约束在后面设置
	nums INT NOT NULL DEFAULT 0,   
	-- 注意：设置外键这里必须加()括号，否则会报语法错误
	FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY (goods_id) REFERENCES goods(goods_id)
	) COMMENT '购买表';




30.自增长
在某张表中，存在一个id列(整数)，如果希望在添加记录时，该列从1开始，自动的增长。
语法：字段名 整型 PRIMARY KEY AUTO_INCREMENT
自增长使用细节：
(1)一般来说自增长是和 PRIMARY KEY 配合使用的
(2)自增长也可以单独使用，但是需要配合一个unique
(3)自增长修饰的字段为整数类型
(4)自增长默认从1开始，也可以通过如下命令修改：
ALTER TABLE 表名 AUTO_INCREMENT = 新的开始值;
(5)如果在添加数据时，给自增长字段列指定的有值，则以指定的值为准，并从指定的值自增


-- 演示自增长的使用
CREATE TABLE t21 (
	id INT PRIMARY KEY AUTO_INCREMENT,
	email VARCHAR(32) NOT NULL DEFAULT '',
	`name` VARCHAR(32) NOT NULL DEFAULT '');

DESC t21
-- 测试自增长的使用

-- 方式1： id字段直接给空值
INSERT INTO t21
	VALUES (NULL, 'tom@qq.com', 'tom'); 
	
-- 方式2：不给id字段赋值	
INSERT INTO t21
	(email, `name`) VALUES ('bobo@qq.com', 'bobo')
	
-- 修改默认的自增长开始值
ALTER TABLE t21 AUTO_INCREMENT = 100; -- 从100开始自增，以后再次插入数据时，从100开始增长


INSERT INTO t21
	VALUES (666, 'weiwei@qq.com', 'weiwei') -- 以后再次插入数据时，从666开始增长

SELECT * FROM t21



31.索引优化速度-索引机制
说起提高数据库性能，索引是最物美价廉的东西了，不用加内存，不用改程序，不用调sql，查询速度就可能提高百倍千倍

创建索引-索引的类型
(1)主键索引，主键自动的为主索引，类型primary
(2)唯一索引 UNIQUE
(3)普通索引 INDEX
(4)全文索引 FULLTEXT 一般开发中，不使用mysql自带的全文索引，而是考虑使用全文搜索 Solr 和 ElasticSearch

索引使用
1.添加索引
CREATE [UNIQUE] INDEX 索引名 ON 表名(字段名[(LENGTH)] [ASC|DESC], ....);

ALTER TABLE 表名 ADD INDEX [索引名] (字段名)

2.添加主键（索引）
ALTER TABLE 表名 ADD PRIMARY KEY (列名,...)

3.删除索引
DROP INDEX 索引名 ON 表名

ALTER TABLE 表名 DROP INDEX 索引名

4.删除主键索引
ALTER TABLE 表名 DROP PRIMARY KEY;

-- 演示索引的使用
CREATE TABLE t22 (
	id INT,
	`name` VARCHAR(32));
	
-- 查询表是否有索引
SHOW INDEXES FROM t22;

-- 添加索引
-- 添加唯一索引
CREATE UNIQUE INDEX id_index ON t22 (id); -- 当希望id的值不会重复，就用唯一索引

-- 添加普通索引 方式1
CREATE INDEX id_index ON t22 (id); -- id字段的值可以重复
-- 添加普通索引 方式2
ALTER TABLE t22 ADD INDEX id_index (id);

-- 如何选择：
-- 1.如果某列的值，是不会重复的，则优先考虑使用unique索引，否则使用普通索引

-- 添加主键索引
ALTER TABLE t22 ADD PRIMARY KEY (id); -- 其实也可以在创建表的时候指定主键，主键就是一个索引

SHOW INDEX FROM t22; -- 查看表的索引

-- 删除索引
DROP INDEX id_index ON t22;

-- 删除主键索引,因为一个表只有一个主键，所以不用指定那一列
ALTER TABLE t22 DROP PRIMARY KEY;

-- 修改索引，先删除，再添加即可

-- 查询索引
-- 方式1
SHOW INDEX FROM t22

-- 方式2
SHOW INDEXES FROM t22

-- 方式3
SHOW KEYS FROM t22



创建索引规则-那些列上适合使用索引
1.较频繁的作为查询条件字段应该创建索引
SELECT * FROM emp WHERE empno = 1;

2.唯一性太差的字段不合适单独创建索引，即使频繁作为查询条件
SELECT * FROM emp WHERE sex = '男';

3.更新非常频繁的字段不适合创建索引
SELECT * FROM emp WHERE logincount = 1;

4.不会出现在where子句中字段不该创建索引



32.事务
事务用于保证数据的一致性，它由一组相关的dml语句组成，该组的dml语句要么全部成功，要么全部失败
例如：转账就要用事务来处理，用以保证数据的一致性。

事务和锁
当执行事务操作时(dml语句)，mysql会在表上加锁，防止其他用户修改表的数据，这对用户来讲是非常重要的

mysql数据库控制台事务的几个重要操作：
1. START TRANSACTION  -- 开始一个事务

2. SAVEPOINT 保存点名 -- 设置保存点

3. ROLLBACK TO 保存点名 -- 回退事务

4. ROLLBACK -- 回退全部事务

5. COMMIT -- 提交事务，所有的操作生效，不能回退


需求：
1.将tom的100块钱，转到名为king的用户
UPDATE balance SET money = money - 100 WHERE id = 100

UPDATE balance SET money = money + 100 WHERE id = 200
2.如果第一条语句执行成功，但是第二条语句失败。。。

-- 这里就引出一个需求，将多个dml语句(update, insert, delete)当作一个整体，要么全部成功，要么全部失败
-- -->使用事务来解决
-- 1.创建表
CREATE TABLE t23 (
	id INT,
	`name` VARCHAR(32));
	
-- 2.开始事务
START TRANSACTION 

-- 3.设置保存点 a
SAVEPOINT a;
-- 执行dml操作
INSERT INTO t23 VALUES (100, 'tom');

SELECT * FROM t23;


-- 4.设置保存点 b
SAVEPOINT b;
-- 执行dml操作
INSERT INTO t23 VALUES (200, 'jack');

-- 5.回退到保存点 b
ROLLBACK TO b;

SELECT * FROM t23; -- 此时表中只有一条数据

-- 6.还可以继续回退
ROLLBACK TO a;

SELECT * FROM t23; -- 此时表中没有记录，回到事务开始状态


回退事务
在介绍回退事务之前，先介绍一下保存点(SAVEPOINT),保存点是事务中的点，用于取消部分事务
当结束事务时，会自动删除该事务所定义的所有保存点。
当执行回退事务时，通过指定保存点可以回退到指定的点。


提交事务
使用 COMMIT 语句可以提交事务，当执行了commit语句后，
会确认事务的变化、结束事务、删除保存点、释放锁，数据生效。
当使用commit语句结束事务子后，其它会话[其它连接]将可以查看到事务变化后的新数据[所有数据就正式生效]。


事务注意事项
1.如果不开始事务，默认情况下，dml操作是自动提交的，不能回滚

2.如果开始一个事务，你没有创建保存点，你可以执行 ROLLBACK ，默认就是回退到你事务开始的状态

3.你也可以在这个事务中(还没有提交的)，创建多个保存点，比如：savepoint aaa;  执行dml语句;  SAVEPOINT bbb;

4.你可以在事务没有提交前，选择回退到哪个保存点

5.mysql的事务机制需要 INNODB 的存储引擎还可以使用，myisam 不好使

6.开始一个事务 START TRANSACTION , SET autocommit = off; 

 -- 讨论事务细节
 -- 1.如果不开始事务，默认情况下，dml操作是自动提交的，不能回滚
 INSERT INTO t23 VALUES (300, 'milan')  -- 自动提交 commit
 
 SELECT * FROM t23
 
 ROLLBACK  -- 发现表中记录还在，该回滚没有任何意义
 
 
 -- 2.如果开始一个事务，但你没有创建保存点，你可以执行 rollback, 默认就是回退到你事务开始的状态
 START TRANSACTION; -- 开始事务
 
 INSERT INTO t23 VALUES(400, 'king');
 INSERT INTO t23 VALUES(500, 'bobo');
 
 SELECT * FROM t23;
 
 ROLLBACK -- 表示直接回退到事务开始的状态，则前面的dml语句操作不生效，再次查询时，发现表中并没有上面这两条记录
 
 
 -- 3.你也可以在这个事务中(还没有提交的)，创建多个保存点
 
 
 -- 4.你可以在事务没有提交前，选择回退到哪个保存点
 
 
 -- 5.mysql的事务机制需要 INNODB 的存储引擎才可以使用，myisam 不好使

 -- 6.开始一个事务 START TRANSACTION , SET autocommit = off; 
 -- 方式1
 START TRANSACTION 
 -- 方式2
 SET autocommit = off;



33.事务隔离级别

1.多个连接开启各自事务操作数据库中数据时，数据库系统要负责隔离操作，以保证各个连接在获取数据时的准确性。

2.如果不考虑隔离性，可能会引发如下问题：
	-- 脏读：
	当一个事务读取另一个事务尚未提交的修改时，产生脏读。
	
	-- 不可重复读：
	同一查询在同一事务中多次进行，由于其它提交事务所做的修改或删除，每次返回不同的结果集，此时发生不可重复读。
	
	-- 幻读：
	同一查询在同一事务中多次进行，由于其他提交事务所做的插入操作，每次返回不同的结果集，此时发生幻读。
	

3. 事务隔离级别：定义了事务与事务之间的隔离程度        注意： √ 可能出现    X 不会出现


	MySQL隔离级别(4种)		脏读     不可重复读	幻读		加锁读

	读未提交(READ UNCOMMITTED)      √	      √	 √            	 不加锁

	读已提交(READ COMMITTED)         X            √	 √		 不加锁

	可重复读(REPEATABLE READ)	 X	       X	  X		 不加锁

	可串行化(SERIALIZABLE)           X             X          X               加锁    -- 隔离级别最高


-- 演示MySQL的事务隔离级别
	-- 1.先打开两个mysql控制台
	-- 2.查看当前mysql的隔离级别

	SELECT @@tx_isolation;

	-- mysql> select @@tx_isolation;    
	-- +-----------------+
	-- | @@tx_isolation  |
	-- +-----------------+
	-- | REPEATABLE-READ |
	-- +-----------------+

	-- 3.把其中一个控制台的隔离级别设置为 Read uncommitted
	SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;

	-- 4.创建表
	CREATE TABLE `account` (
		id INT,
		`name` VARCHAR(32),
		money INT);


4. 事务隔离级别的基本操作：
	(1)查看当前会话隔离级别
	SELECT @@tx_isolation;

	(2)查看系统当前隔离级别
	SELECT @@global.tx_isolation;

	(3)设置当前会话隔离级别 -- session
	SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;   -- level最后面加上级别 如：可重复读 REPEATABLE READ

	(4)设置系统当前隔离级别 -- global
	SET GLOBAL TRANSACTION ISOLATION LEVEL REPEATABLE READ;

	(5)MySQL默认的事务隔离级别是repeatable read，一般情况下，没有特殊要求，没有必要修改
	因为该级别可以满足绝大部分项目需求。


5.如何全局修改事务隔离级别，修改 my.ini 配置文件,在最后加上一条语句即可，保存文件后，要重新启动MySQL服务才会生效
	# 可选参数有：READ-UNCOMMITTED   READ-COMMITTED	  REPEATABLE-READ(可重复读，默认的隔离级别)   SERIALIZABLE
	[mysqld]
	TRANSACTION-ISOLATION = REPEATABLE-READ  -- 只需在[mysqld]下面加上这一句即可

6.事务的acid特性：
	(1) 原子性(Atomicity)
	原子性是指事务是一个不可分割的工作单位，事务中的操作要么都发生，要么都不发生。

	(2) 一致性(Consistency)
	事务必须使数据库从一个一致性状态变换到另外一个一致性状态

	(3) 隔离性(Isolation.)
	事务的隔离性是多个用户并发访问数据库时，数据库为每一个用户开启的事务，不能被其他事务的操作数据所干扰，多个并发事务之间要相互隔离。

	(4) 持久性(Durability)
	持久性是指一个事务一旦被提交，它对数据库中数据的改变就是永久性的，接下来即使数据库发生故障也不应该对其有任何影响



34.存储引擎

1.MySQL的表类型由存储引擎(STORAGE ENGINES)决定，主要包括 MYISAM,INNODB,MEMORY 等

2.MySQL数据表主要支持六种类型，分别是：CSV、Memory、ARCHIVE、MRG、MYISAM、Innodb.

3.这六种又分为两类，一类是"事务安全型"，比如：Innodb(默认的存储引擎)，只有INNODB支持事务，其余都属于第二类，称为"非事务安全型"。


查看当前数据库支持的存储引擎：
SHOW ENGINES;

4.如何选择表的存储引擎：
(1)如果你的应用不需要事务，处理的只是基本的CRUD操作，那么MyISAM是不二选择，速度块。

(2)如果需要支持事务，选择INNODB.

(3)Memory存储引擎就是将数据存储在内存中，由于没有磁盘I/O的等待，速度极快
但是由于是内存存储引擎，所做的任务修改在服务器重启后都将消失。(用户的在线状态)


-- innodb 存储引擎
-- 1.支持事务  2.支持外键  3.支持行级锁


-- myisam 存储引擎
CREATE TABLE t24 (
	id INT,
	`name` VARCHAR(32)) ENGINE MYISAM;

-- 1.添加速度快  2.不支持外键和事务  3.支持表级锁

START TRANSACTION;  -- 开始事务
SAVEPOINT t1;

INSERT INTO t24 VALUES (1, 'jack');
ROLLBACK TO t1;  -- 即使回滚到事务保存点，也还能查询到之后插入的数据，不支持事务

SELECT * FROM t24;


-- memory 存储引擎
-- 1.数据存储在内存中  2.执行速度很快(没有I/O读写)  3.默认支持索引(hash表)

5.修改表的存储引擎

ALTER TABLE 表名 ENGINE = 存储引擎;  -- 除了在建表时指定存储引擎，也可以通过这条语句修改




35.视图
需求：emp表的字段信息很多，有些信息是个人很重要的信息(比如：sal, comm, mgr..)，
如果我们希望某个用户只能查询emp表的(empno, ename, job等)信息，有什么办法呢？----> 引出视图

1.视图是一个虚拟表，其内容由查询定义，同真实的表一样，视图包含列，其数据来自对应的真实表(基表)

2.视图的基本使用
CREATE VIEW 视图名 AS select语句

ALTER VIEW 视图名 AS select语句

SHOW CREATE VIEW 视图名

DROP VIEW 视图名1, 视图名2...


-- 实例 视图的使用
创建一个视图，只能查询emp表的empno,ename,job等信息
CREATE VIEW emp_view01 
	AS
	SELECT empno,ename,job FROM emp;

-- 查看视图
DESC emp_view01

-- 通过视图查询数据
SELECT * FROM emp_view01;
SELECT empno, job FROM emp_view01

-- 查看已经创建的视图
SHOW CREATE VIEW emp_view01

-- 删除视图
DROP VIEW emp_view01


3.视图使用细节
(1)创建视图后，到数据库去看，对应视图只有一个视图结构文件(形式：视图名.frm)
(2)视图的数据变化会影响到基表，基表的数据变化也会影响到视图
(3)视图中可以再使用视图


-- 修改视图
UPDATE emp_view01 SET job = 'MANAGER' WHERE empno = 7369  -- 基表的数据也会受到影响

SELECT * FROM emp_view01;  -- 查询视图
SELECT * FROM emp;  -- 查询基表  数据也改变了

-- 修改基本表的数据，视图也会影响
UPDATE emp SET job = 'cc' WHERE empno = 7499


-- 视图中可以再使用视图，数据任然来自基表，比如从emp_view01视图中，选出empno,ename作为新视图
CREATE VIEW emp_view02
	AS
	SELECT empno,ename FROM emp_view01

SELECT * FROM emp_view02  -- 视图和基本表之间是映射关系，修改视图或基表，两者之间的数据都会发生变化




36.MySQL用户管理
mysql中的用户，都存储在系统数据库mysql中的user表中
其中user表的重要字段说明
(1)HOST:允许登录的位置，localhost表示该用户只允许本机登录，也可以指定ip地址
(2)USER:用户名
(3)authentication_string:密码，是通过mysql的password()函数加密之后的密码。

(4)创建用户语法
CREATE USER '用户名'@'允许登录位置' IDENTIFIED BY '密码'    -- 创建用户，同时指定密码

(5)删除用户
DROP USER '用户名'@'允许登录位置'

-- 演示mysql用户的管理
-- 原因：当我们做项目开发时，可以根据不同的开发人员，赋给他相应的mysql操作权限
-- 所以，MySQL数据库管理人员(root)，根据需要创建不同的用户，赋给相应的权限

CREATE USER 'bobo'@'localhost' IDENTIFIED BY '123456'
-- 解读：'bobo'@'localhost'表示用户的完整信息  bobo 用户名  localhost 登录的ip
--  123456 密码，它存放到mysql.user表时，是通过password('123456')函数加密过的密码

-- 1.查询用户信息
SELECT * FROM mysql.user

SELECT PASSWORD('123456')   -- 通过函数传入设置的密码参数，得到加密后的密码 authentication_string
SELECT PASSWORD('twb')  -- root用户

SELECT `host`, `user`, authentication_string
	FROM mysql.user

-- 2.删除用户
DROP USER 'bobo'@'localhost'  -- 用户名和登录地址要完整


-- 3.登录
不同的数据库用户，登录到DBMS后，根据相应的权限，所看到的，操作的数据库和数据对象(表、视图、触发器)都是不相同的


(6)用户修改密码
修改自己的密码： SET PASSWORD = PASSWORD('密码');

修改他人的密码(需要有修改用户密码权限)： SET PASSWORD FOR '用户名'@'登录位置' = PASSWORD('密码');	
	
-- 修改自己的密码，没问题
SET PASSWORD = PASSWORD('123456');	

SELECT `user`, authentication_string
		FROM mysql.user
	
SELECT PASSWORD('abcdef')	
	
-- 登录bobo用户账号。修改root用户的密码，需要权限
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('123456');  -- 这里需要登录另外一个用户才能演示	
	
-- 而root用户修改 bobo@localhost 的密码是可以成功的	
SET PASSWORD FOR 'bobo'@'localhost' = PASSWORD('123456')  -- 当前是root用户登录	




37.MySQL权限管理

1.给用户授权，基本语法：
GRANT 权限列表 ON 库.对象名 TO '用户名'@'登录位置' [IDENTIFIED BY '密码']
说明：
-- 1.权限列表，多个权限用逗号分开
GRANT SELECT ON ....
GRANT SELECT, DELETE, CREATE ON ....
GRANT ALL [PRIVILEGES] ON ....  -- 表示赋予该用户在该对象上的所有权限

-- 2.特别说明
*.* :代表本系统中的所有数据库的所有对象(表，视图，存储过程)
库.* :表示某个数据库中的所有数据对象(表，视图，存储过程)

-- 3.identified by 可以省略
(1)如果用户存在，就是修改该用户的密码

(2)如果该用户不存在，就是创建该用户


2.回收用户授权
基本语法： REVOKE 权限列表 ON 库.对象名 FROM '用户名'@'登录位置';

权限生效指令
如果权限没有生效，可以执行下面命令： FLUSH PRIVILEGES

-- 演示 用户权限的管理
-- 1.创建用户 boboking  密码 123，从本地登录
CREATE USER 'boboking'@'localhost' IDENTIFIED BY '123';

-- 2.使用root用户创建 testdb 库，表 news
CREATE DATABASE testdb

CREATE TABLE news (
	id INT,
	content VARCHAR(32));
-- 添加测试数据
INSERT INTO news VALUES (1, 'bobo paly basketball');

SELECT * FROM news;


-- 3.给 boboking用户分配查看 表news和添加news的权限
GRANT SELECT, INSERT
	ON testdb.news
	TO 'boboking'@'localhost'

-- 4.修改 boboking用户的密码为 abc，此时，如果还想使用boboking登录需要使用新密码abc才行
SET PASSWORD FOR 'boboking'@'localhost' = PASSWORD('abc');


-- 5.回收 boboking用户在 当前root用户下的 testdb.news表的所有操作权限
REVOKE SELECT, INSERT ON testdb.news FROM 'boboking'@'localhost';

REVOKE ALL ON testdb.news FROM 'boboking'@'localhost'; -- 也可以写 all


-- 6.删除 boboking用户
DROP USER 'boboking'@'localhost';


3.管理细节
(1)在创建用户的时候，如果不指定host,则为%，%表示所有IP都有连接权限
CREATE USER ....

(2)也可以这样指定
CREATE USER 'xxx'@'192.168.1.%' 表示 xxx 用户在 192.168.1.* 的IP段范围内都可以登录mysql

(3)在删除用户的时候，如果host不是 %,需要明确指定 '用户'@'host值'

-- 演示
CREATE USER jack

SELECT `host`,`user` FROM mysql.user  -- 查询用户和IP信息

-- 也可以这样创建
CREATE USER 'smith'@'192.168.1.%'

-- 删除用户
DROP USER jack  -- 删除成功，默认就是 等价于 drop user 'jack'@'%'

DROP USER smith  -- 删除失败，根据创建的情况，必须指定完整的信息

DROP USER 'smith'@'192.168.1.%'  -- 删除成功





	
	