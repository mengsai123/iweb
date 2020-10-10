/*iweb在线课堂项目必须的数据库结构*/
/*SQL 语句不区分大小写，习惯上: 关键字都大写，非关键字小写*/

#删除数据库iweb，如果它存在的话
DROP DATABASE  IF  EXISTS  iweb;
#重新创建数据库iweb
CREATE  DATABASE  iweb  CHARSET=UTF8;
#进入数据库
USE  iweb;

#创建校区表
CREATE  TABLE  iw_school(
	sid  INT  PRIMARY   KEY  AUTO_INCREMENT,					#校区编号
	sname VARCHAR(32), 			#名称
	pic VARCHAR(128), 			#图片
	address  VARCHAR(64),		#联系地址
	phone  VARCHAR(32), 		#联系电话
	postcode  CHAR(6), 			#邮编
	longitude  DECIMAL(9,6), 	#经度
	latitude   DECIMAL(8,6)		#纬度
	);
	
	INSERT  INTO   iw_school  VALUES (NULL, '北京中关村中心', 'img.school/bjzgc.jpg', '北京市海淀区北三环西路甲18号（大钟寺附近）中鼎大厦B座7层', '010-62130963', '100098', 116.347527, 39.972529);
	INSERT  INTO   iw_school  VALUES (NULL, '北京北京清华园中心', 'img.school/bjbjqhyzx.jpg', '北京市海淀区花园路小关街120号万盛商务会馆A区三层', '010-82676916', '100088', 116.386508, 39.984261);
	INSERT  INTO   iw_school  VALUES (NULL, '北京万寿路中心', 'img.school/bjwsl.jpg', '北京市海淀区万寿路西街2号文博大厦二层达内科技', '010-82761288', '100081', 116.300901, 39.916085);
	INSERT  INTO   iw_school  VALUES (NULL, '北京天坛中心', 'img.school/bjttzx.jpg', '北京市崇文区珠市口东大街6号珍贝大厦西侧3层达内科技', '010-67028668', '100050', 116.418203, 39.898655);
	INSERT  INTO   iw_school  VALUES (NULL, '北京广渠门中心', 'img.school/bjgqm.jpg', '北京市东城区广渠门东广渠家园25号楼启达大厦一层', '010-82764488', '100088', 116.462916, 39.89666);
	INSERT  INTO   iw_school  VALUES (NULL, '上海中山公园', 'img.school/shzsgy.jpg', '上海中山公园', '010-82761888', '100678', 121.427073, 31.228765);
	INSERT  INTO   iw_school  VALUES (NULL, '上海静安雕塑公园', 'img.school/shjadsgy.jpg', '上海静安雕塑公园', '010-82761234', '100666', 121.470623, 31.241486);
	INSERT  INTO   iw_school  VALUES (NULL, '上海环球港', 'img.school/shhqg.jpg', '上海环球港', '010-82767777', '100999', 121.418305, 31.240128);
	INSERT  INTO   iw_school  VALUES (NULL, '上海科技京城', 'img.school/shjkjjc.jpg', '上海科技京城', '010-12345634', '108990', 121.184133, 31.245624);
	INSERT  INTO   iw_school  VALUES (NULL, '上海国金会议中心', 'img.school/shgjhyzx.jpg', '上海国金会议中心', '010-12345634', '108990', 121.503482, 31.245193);
	INSERT  INTO   iw_school  VALUES (NULL, '上海滨江公园', 'img.school/shbjgy.jpg', '上海滨江公园', '010-12345634', '108990', 121.503266, 31.241966);
	INSERT  INTO   iw_school  VALUES (NULL, '无锡崇安寺步行街', 'img.school/wxcasxj.jpg', '无锡崇安寺步行街', '010-12345634', '108990', 120.307766, 31.583314);


#创建讲师表
CREATE  TABLE  iw_teacher(
	tid INT PRIMARY  KEY  AUTO_INCREMENT,		#讲师编号
	tname  VARCHAR(64),		#姓名
	pic VARCHAR(128),		#照片
	skills  VARCHAR(32),		#擅长的领域
	experience  VARCHAR(1024),		#工作经历
	style VARCHAR(1024)		#授课风格
);

INSERT  INTO  iw_teacher VALUES(NULL,'成亮','img.teacher/cl.jpg','WEB全栈开发','10年互联网开发经验， 精通HTML5，CSS3，js，vue，angualr 等网页前端技术及 php后端 开发；先后就职于多家 IT 互联网公司，曾任某网络公司技术主管，服务机构有首都师范大学、中国联通、中国石油、国家图书馆、中国摄影协会等。','讲课诙谐幽默，深处浅出，深得学生喜爱。');
INSERT  INTO  iw_teacher VALUES(NULL,'李然','img.teacher/lr.jpg','高级网页设计','从事前端开发多年，参与 及主导研发过多个省级政府项目及海 外项目，参与 NEC，福特等大型企业 CRM 系统的研发。项目涉及金融，汽 车，电子等多个领域。于文思海辉专 职负责前端产品线培训时，积累了大 量的教学经验。','教学风格风趣幽默，细致严谨。善于以项目流程反推知识点讲解，深受学员好评。');
INSERT  INTO  iw_teacher VALUES(NULL,'张东','img.teacher/zd.jpg','JS高级编程','美国PMP认证高级项目经理，微软认证解决方案开发专家。先后在中软国际、中国搜索、太极计算机担任高级开发工程师，架构师，项目经理。曾担任中央外汇管理中心、中国石油、二炮工程研究院、首都国际机场技术咨询顾问。','感情充沛，富有激情，容易引起学生们的共鸣。授课时能旁征博引，使学生从诸多的材料中得出结论，并且启迪学生的想象能力。');
INSERT  INTO  iw_teacher VALUES(NULL,'程涛','img.teacher/ct.jpg','移动APP开发','曾就职于东软集团。参与开发家乐福，津津会员卡等多款上线app。拥有外包和产品两种开发经历。已指导并帮助学员上架多个项目到AppStore。授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。','授课风趣幽默，亲和力强。教学耐心，循序渐进，课堂气氛活跃。善于结合生活中的实例，把艰涩难懂的知识点传授给学员。');
INSERT  INTO  iw_teacher VALUES(NULL,'纪盈鑫','img.teacher/jyx.jpg','前端框架开发','曾就职于北京塞博维尔信息咨询公司，具备多年的互联网应用经验，精通PHP框架技术。在Web3.0前沿技术方面有着深入的研究，曾参与Shop EX核心模块开发。','感情充沛，富有激情，容易引起学生们的共鸣。授课时能旁征博引，使学生从诸多的材料中得出结论，并且启迪学生的想象能力。');
INSERT  INTO  iw_teacher VALUES(NULL,'张淑敏','img.teacher/zsm.jpg','嵌入式讲师','五年高校教学经验（华北理工大学信息工程学院），八年知名培训机构教学及教学管理经验，参与24小时心电监护系统（Holter）、脑电图（BEAM）等多个项目的研发，并发表多篇学术论文。','授课循序渐进、反复思考、推演、总结。善于将知识和生活结合，并应用于实际的产品中。');
INSERT  INTO  iw_teacher VALUES(NULL,'顾婷婷','img.teacher/gtt.jpg','产品经理讲师','5年互联网从业经验，曾就职于知名互联网企业和教育培训机构，参与多个团队实战项目；精通产品管理与设计及开发运营的关系和全流程。','善于沟通，懂得技巧；一起享受设计旅程的美好；风趣幽默，思路清晰，善于总结业内经验和规律，表达能力较强，善于激发学员积极性，富有亲和力。');
INSERT  INTO  iw_teacher VALUES(NULL,'曾一','img.teacher/zy.jpg','Unity3D讲师','8 年以上 3D 游戏项目经验和教学经验，熟知游戏行业的流程，具有丰富的制作、研发和教学经验和深厚的美术专业功底。对游戏模型贴图制作有独到方式和见解。','曾参与过《梦幻红楼》、《武侠世界》、《女神的斗士》、《热血江湖》等多款网络游戏以及移动端游戏，涉及风格多样，经验丰富。');
INSERT  INTO  iw_teacher VALUES(NULL,'段敏','img.teacher/dm.jpg','产品经理讲师','7年一线产品实战及管理经验，曾任职中兴及知名游戏公司第九城市产品总监，参与过手游，页游，智能TV等产品策划与设计，亲自领导发起多款软件&硬件的调研，研发，测试，上线运营整个产品的闭环。','授课循序渐进、反复思考、推演、总结。善于将知识和生活结合，并应用于实际的产品中。');
INSERT  INTO  iw_teacher VALUES(NULL,'潘福利','img.teacher/pfl.jpg','高级电商讲师','达内视频编导，国内编导，八年视频行业策划运营经验;曾就职于长春影视、北广传媒。','授课思路清晰、严谨务实，精辟透彻；生动幽默、绘声绘色，富有极强的亲和力。');
 
#创建课程类别
CREATE  TABLE  iw_course_type(
	tid INT PRIMARY  KEY AUTO_INCREMENT,	#类别编号
	tname VARCHAR(16)						#类别名称
);
INSERT  INTO  iw_course_type VALUES (NULL,'基础课程');
INSERT  INTO  iw_course_type VALUES (NULL,'核心课程');
INSERT  INTO  iw_course_type VALUES (NULL,'进阶课程');

#创建课程
CREATE  TABLE iw_course(

);

#创建用户信息
CREATE TABLE  iw_user();
#创建购物车表
#创建订单表
#创建用户收藏夹表