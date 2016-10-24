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
	newsTitle varchar(100),
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

INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('记者实地探访总书记讲的“半条被子”的故事', '本地', '新浪', '2016-10-17 00:00:00', 'images/1.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('四川凉山悬崖村绝壁修路', '精选', '搜狐', '2016-10-27 00:00:00', 'images/2.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('记者实地探访总书记讲的“半条被子”的故事', '本地', '新浪', '2016-10-17 00:00:00', 'images/2.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('四川凉山悬崖村绝壁修路', '精选', '搜狐', '2016-10-27 00:00:00', 'images/3.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('喀麦隆火车脱轨事故已致63人死亡', '百家', '新浪', '2016-10-17 00:00:00', 'images/1.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('美国驱逐舰来中国南海裸奔', '军事', '搜狐', '2016-10-27 00:00:00', 'images/4.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('央视90后女主播走红', '百家', '搜狐', '2016-10-27 00:00:00', 'images/5.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('记者实地探访总书记讲的“半条被子”的故事', '本地', '新浪', '2016-10-17 00:00:00', 'images/1.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('四川凉山悬崖村绝壁修路', '精选', '搜狐', '2016-10-27 00:00:00', 'images/2.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('记者实地探访总书记讲的“半条被子”的故事', '本地', '新浪', '2016-10-17 00:00:00', 'images/2.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('四川凉山悬崖村绝壁修路', '精选', '搜狐', '2016-10-27 00:00:00', 'images/3.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('喀麦隆火车脱轨事故已致63人死亡', '百家', '新浪', '2016-10-17 00:00:00', 'images/1.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('美国驱逐舰来中国南海裸奔', '军事', '搜狐', '2016-10-27 00:00:00', 'images/4.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('央视90后女主播走红', '百家', '搜狐', '2016-10-27 00:00:00', 'images/5.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('记者实地探访总书记讲的“半条被子”的故事', '本地', '新浪', '2016-10-17 00:00:00', 'images/1.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('四川凉山悬崖村绝壁修路', '精选', '搜狐', '2016-10-27 00:00:00', 'images/2.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('记者实地探访总书记讲的“半条被子”的故事', '本地', '新浪', '2016-10-17 00:00:00', 'images/2.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('四川凉山悬崖村绝壁修路', '精选', '搜狐', '2016-10-27 00:00:00', 'images/3.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('喀麦隆火车脱轨事故已致63人死亡', '百家', '新浪', '2016-10-17 00:00:00', 'images/1.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('美国驱逐舰来中国南海裸奔', '军事', '搜狐', '2016-10-27 00:00:00', 'images/4.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('央视90后女主播走红', '百家', '搜狐', '2016-10-27 00:00:00', 'images/5.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('记者实地探访总书记讲的“半条被子”的故事', '本地', '新浪', '2016-10-17 00:00:00', 'images/1.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('四川凉山悬崖村绝壁修路', '精选', '搜狐', '2016-10-27 00:00:00', 'images/2.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('记者实地探访总书记讲的“半条被子”的故事', '本地', '新浪', '2016-10-17 00:00:00', 'images/2.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('四川凉山悬崖村绝壁修路', '精选', '搜狐', '2016-10-27 00:00:00', 'images/3.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('喀麦隆火车脱轨事故已致63人死亡', '百家', '新浪', '2016-10-17 00:00:00', 'images/1.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('美国驱逐舰来中国南海裸奔', '军事', '搜狐', '2016-10-27 00:00:00', 'images/4.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('央视90后女主播走红', '百家', '搜狐', '2016-10-27 00:00:00', 'images/5.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('记者实地探访总书记讲的“半条被子”的故事', '本地', '新浪', '2016-10-17 00:00:00', 'images/1.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('四川凉山悬崖村绝壁修路', '精选', '搜狐', '2016-10-27 00:00:00', 'images/2.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('记者实地探访总书记讲的“半条被子”的故事', '本地', '新浪', '2016-10-17 00:00:00', 'images/2.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('四川凉山悬崖村绝壁修路', '精选', '搜狐', '2016-10-27 00:00:00', 'images/3.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('喀麦隆火车脱轨事故已致63人死亡', '百家', '新浪', '2016-10-17 00:00:00', 'images/1.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('美国驱逐舰来中国南海裸奔', '军事', '搜狐', '2016-10-27 00:00:00', 'images/4.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('央视90后女主播走红', '百家', '搜狐', '2016-10-27 00:00:00', 'images/5.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('记者实地探访总书记讲的“半条被子”的故事', '本地', '新浪', '2016-10-17 00:00:00', 'images/1.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('四川凉山悬崖村绝壁修路', '精选', '搜狐', '2016-10-27 00:00:00', 'images/2.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('记者实地探访总书记讲的“半条被子”的故事', '本地', '新浪', '2016-10-17 00:00:00', 'images/2.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('四川凉山悬崖村绝壁修路', '精选', '搜狐', '2016-10-27 00:00:00', 'images/3.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('喀麦隆火车脱轨事故已致63人死亡', '百家', '新浪', '2016-10-17 00:00:00', 'images/1.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('美国驱逐舰来中国南海裸奔', '军事', '搜狐', '2016-10-27 00:00:00', 'images/4.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('央视90后女主播走红', '百家', '搜狐', '2016-10-27 00:00:00', 'images/5.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('美国驱逐舰来中国南海裸奔', '军事', '搜狐', '2016-10-27 00:00:00', 'images/4.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('央视90后女主播走红', '百家', '搜狐', '2016-10-27 00:00:00', 'images/5.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('记者实地探访总书记讲的“半条被子”的故事', '本地', '新浪', '2016-10-17 00:00:00', 'images/1.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('四川凉山悬崖村绝壁修路', '精选', '搜狐', '2016-10-27 00:00:00', 'images/2.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('记者实地探访总书记讲的“半条被子”的故事', '本地', '新浪', '2016-10-17 00:00:00', 'images/2.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('四川凉山悬崖村绝壁修路', '精选', '搜狐', '2016-10-27 00:00:00', 'images/3.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('喀麦隆火车脱轨事故已致63人死亡', '百家', '新浪', '2016-10-17 00:00:00', 'images/1.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('美国驱逐舰来中国南海裸奔', '军事', '搜狐', '2016-10-27 00:00:00', 'images/4.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('央视90后女主播走红', '百家', '搜狐', '2016-10-27 00:00:00', 'images/5.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('美国驱逐舰来中国南海裸奔', '军事', '搜狐', '2016-10-27 00:00:00', 'images/4.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('央视90后女主播走红', '百家', '搜狐', '2016-10-27 00:00:00', 'images/5.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('记者实地探访总书记讲的“半条被子”的故事', '本地', '新浪', '2016-10-17 00:00:00', 'images/1.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('四川凉山悬崖村绝壁修路', '精选', '搜狐', '2016-10-27 00:00:00', 'images/2.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('记者实地探访总书记讲的“半条被子”的故事', '本地', '新浪', '2016-10-17 00:00:00', 'images/2.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('四川凉山悬崖村绝壁修路', '精选', '搜狐', '2016-10-27 00:00:00', 'images/3.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('喀麦隆火车脱轨事故已致63人死亡', '百家', '新浪', '2016-10-17 00:00:00', 'images/1.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('美国驱逐舰来中国南海裸奔', '军事', '搜狐', '2016-10-27 00:00:00', 'images/4.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('央视90后女主播走红', '百家', '搜狐', '2016-10-27 00:00:00', 'images/5.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('央视90后女主播走红', '百家', '搜狐', '2016-10-27 00:00:00', 'images/5.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('美国驱逐舰来中国南海裸奔', '军事', '搜狐', '2016-10-27 00:00:00', 'images/4.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('央视90后女主播走红', '百家', '搜狐', '2016-10-27 00:00:00', 'images/5.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('记者实地探访总书记讲的“半条被子”的故事', '本地', '新浪', '2016-10-17 00:00:00', 'images/1.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('四川凉山悬崖村绝壁修路', '精选', '搜狐', '2016-10-27 00:00:00', 'images/2.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('记者实地探访总书记讲的“半条被子”的故事', '本地', '新浪', '2016-10-17 00:00:00', 'images/2.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('四川凉山悬崖村绝壁修路', '精选', '搜狐', '2016-10-27 00:00:00', 'images/3.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('喀麦隆火车脱轨事故已致63人死亡', '百家', '新浪', '2016-10-17 00:00:00', 'images/1.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('美国驱逐舰来中国南海裸奔', '军事', '搜狐', '2016-10-27 00:00:00', 'images/4.jpg');
INSERT INTO `news` (`newsTitle`, `newsType`, `newsSrc`, `newsTime`, `newsImg`) VALUES ('央视90后女主播走红', '百家', '搜狐', '2016-10-27 00:00:00', 'images/5.jpg');
