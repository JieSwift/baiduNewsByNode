drop database if exists baidunews;
create database if not exists baidunews;


use baidunews;
/*删除新闻表*/
drop  table if exists news;
/*创建新闻表*/
create table news(
	/*id 自增长非空*/
	id int not null auto_increment,
	/*新闻标题*/
	newsTitle varchar(20),
	/*新闻类型*/
	newsType varchar(5),
	/*新闻来源*/
	newsSrc varchar(10),
	/*新闻时间*/
	newsTime datetime default null,
	/*新闻图片*/
	newsImg varchar(100),
	/*主键id*/
	primary key(id)
);

select * from news;
