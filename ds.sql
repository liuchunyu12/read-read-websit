#设置客服端连接服务器端编码
set names utf8;
#丢弃数据库，如果存在
drop database if exists ds;
#创建新的数据库，设置编码
create database ds charset=utf8;
#进入数据库
use ds;
#创建保存用户信息的表
create table ds_user(
	uid int primary key auto_increment,#用户编号
	uname varchar(8) unique not null,#用户名称
	upwd int not null,#用户密码
	email varchar(20) not null,#用户邮箱
	phone bigint not null,#联系方式
	gender bool default 1#用户性别  1男  0 女
);
#插入用户数据
insert into ds_user values(10001,'tom',123456,'tom@qq.com',13412345673,1);
insert into ds_user values(10002,'mary',234567,'mary@qq.com',13123472498,0);
insert into ds_user values(10003,'kite',345678,'kite@qq.com',13834748273,1);
insert into ds_user values(10004,'king',567890,'king@qq.com',15823444556,1);
insert into ds_user values(10005,'lucy',111111,'lucy@qq.com',13434526845,0);
insert into ds_user values(10006,'bob',121212,'bob@qq.com',19823417482,1);
insert into ds_user values(10007,'jane',342156,'jane@qq.com',15123465463,0);
insert into ds_user values(10008,'judy',751073,'judy@qq.com',13412238479,0);
insert into ds_user values(10009,'tony',537931,'tony@qq.com',13129374673,1);
insert into ds_user values(10010,'amy',279461,'amy@qq.com',13728374927,0);
#创建图书信息表
create table ds_tushu(
    id int primary key auto_increment,#唯一标识
	tid int unique,#图书编号
	tname varchar(50) unique not null,#图书名称
	author varchar(20) not null,#图书作者
	tnumber int not null,#图书总章节数
	timage  varchar(60)  not null,#图书图片  存图片地址
	tStatus varchar(8) not null,#图书是否完结 1已完结  0连载中
	description varchar(1000) not null,#图书的描述信息   简介
	tCount varchar(30) not null,#图书的总字数
	tlabel varchar(100) not null,#图书的标签 医生  婚恋 正剧
	tKind varchar(30)  not null,#图书的种类  现代言情
	tXq   varchar(60)#书籍详情的地址
);
#插入数据
insert into ds_tushu values(null,10001,"雪中悍刀行","烽火戏诸侯",1008,"images/search/1.jpg","已完结","江湖是一张珠帘。大人物小人物，是珠子，大故事小故事，是串线。情义二字，则是那些珠子的精气神。","461.6万","烽火戏诸侯 热血 玄幻 修真","奇幻玄幻","detail/xuezhonghandaoxing.html");
insert into ds_tushu values(null,10002,"万界画仙","雪中刀",15,"images/search/2.jpg","连载中","以笔为枪，可破苍穹，以画为盾，可御外敌。撇净三界浮沉，成就画道至尊。","3.5万","热血 穿越 重生 技术流","奇幻玄幻","detail/wanjiehuaxian.html");
insert into ds_tushu values(null,10003,"雪行亭杂记","阮行年",7,"images/search/3.jpg","连载中","本文算是《雪中悍刀行》的同人吧。作者平时就酷爱抖机灵，写日记。在看过《雪中悍刀行》之后，渐渐萌生出写点什么的想法。作者实在不是一个多勤快的人，心血来潮偶一为之，定时更新应该是不可能了，聊以自娱，也希望大家喜欢。","1.3万","雪中悍刀行 同人 杂记","竞技同人","detail/xuexingtingzaji.html");
insert into ds_tushu values(null,10004,"刺行","何惘千",50,"images/search/4.jpg","连载中","很多年前徐道来认为江湖便是快意恩仇，拔剑饮酒，如今境界全无方知江湖是念念不忘，必有回响。","12.0万","古典仙侠 英雄无敌 雪中悍刀行 刺客","武侠仙侠","detail/cixing.html");
insert into ds_tushu values(null,10005,"红尘问剑","山野草莽",130,"images/search/5.jpg","连载中","那一年，他踏出那一步，那一步，走了三千里路。执剑刺我，猛目睁、却敌无须拔刀。负剑长啸，血在烧，忠义潇洒英豪。","43.2万","争霸 武侠 雪中悍刀行 烽火戏诸侯","武侠仙侠","detail/hongchenwenjian.html");
insert into ds_tushu values(null,10006,"大长恨歌","涂佛",81,"images/search/6.jpg","连载中","天地一盘棋，浮生一道局。江湖暗生傀儡，世人身陷迷局。黑与白，执棋者，博弈千秋万古，棋局里，众生皆等，三百六一黑白子，最关键一颗子-杨浮生！小人物与大人物，江湖庙堂与沙场，这是个陆地神仙境泛滥的时代。","29.2万","热血 仙侠武侠玄幻 无限流 雪中悍刀行","奇幻玄幻","detail/dachanghengge.html");
insert into ds_tushu values(null,10007,"公子出关","北男",130,"images/search/7.jpg","连载中","大央末年，国脉动荡，气运崩乱，江湖纷争，群雄并起。西域的蓝皮美人魔想争这气运，一人一圣地的老和尚想争这气运，智力近妖的太平先生想争这气运......可这气运都被那混不吝的曲经年争了去。","35.6万","文青 热血 雪中悍刀行 妖孽","武侠仙侠","detail/gongzichuguan.html");
insert into ds_tushu values(null,10008,"我还有把刀","姬雪希",5,"images/search/8.jpg","连载中","符文大陆的危机爆发，星空之龙索尔的怒火、虚空生物的掠夺、暗影岛的复仇，被刚刚苏醒的天道击退封印，大陆从此失去了魔力，各种流派兴起。修道的、修佛的、练武的、养血脉的、养器魂的、养妖兽的......天道百年将死！一把北凉刀带着使命而来，危机重现之日，符文大陆的命运该何去何从？且看九字诀封仙，我有一刀可开天门！用刀还得是北凉。","2.1万","穿越 异世 雪中悍刀行 北凉","奇幻玄幻","detail/wohaiyoubadao.html");
insert into ds_tushu values(null,10009,"末日霸权","梦里银河",816,"images/detail/morbaquan.png","连载中","因守护而兴杀伐，因杀伐而衍霸权！林辰身负逆天宝物和奇异能力，回到末日前夕。展望未来，林辰雄姿英发。要让这天，不能逆他意；让这地，不能遮他眼！（林辰：其实霸权什么的我原本都没太在意。我只是想给我所爱者提供至高守护。然而踩的人多了，没人敢惹了，也就成了霸权。）","251.1万","守护 杀伐 周密布局 镇压一切","科幻游戏","detail/moribaquan.html");
insert into ds_tushu values(null,10010,"万世为王","贪睡的龙",773,"images/fenlei/wanshiweiwang.jpg","连载中","再生少年时，重行修行路，既如此，此生当无敌，诸天千域，万世为王！","174.2万","热血 爽文","奇幻玄幻","detail/wanshiweiwang.html");
insert into ds_tushu values(null,10011,"微尘传","过路的风子",398,"images/fenlei/weichenzhuan.jpg","连载中","世界变迁修行重现，昔日隐秘逐一揭开。面对世界的真相，他们将何去何从？","145.7万","热血 推理 古典仙侠 情节","武侠仙侠","detail/weichenzhuan.html");
insert into ds_tushu values(null,10012,"大明春色","西风紧",1054,"images/fenlei/damingchunse.jpg","连载中","大明初年风云激荡，注定要身败名裂、被活活烧死的王，必须走上叛天之路。恩怨爱恨，功过成败，一切将会如何重演？","308.9万","热血 爽文 穿越 争霸","历史军事","detail/damingchunse.html");
insert into ds_tushu values(null,10013,"神尊归来当奶爸","油炸章鱼丸",1026,"images/fenlei/shenzhunguilaidangnaiba.jpg","连载中","三年前跌落悬崖，他偶然进入神界，却一路开挂，三百年成为神界至尊。而今为了与妻女团聚，他神尊归来，纵横一世，誓要弥补前世遗憾......","207.4万","爽文 重生","都市娱乐","detail/shenzhunguilaidangnaiba.html");
insert into ds_tushu values(null,10014,"白夜浮生录","夜厌生",230,"images/fenlei/baiyefushenglu.jpg","连载中",'人间有这样十二位走无常，江湖人称----“黄泉十二月”。行走六道，调停三界，为人间的江山社稷所奔波，是他们永无止尽的宿命。在十二人之中，有生前乐善好施、普渡群生的纯良之人，却也有怙恶不悛、暴戾恣睢的极恶之人。他们拥有不灭之身与无尽的寿命，而永生对这些人来说，可以是褒奖，也可以是在他们醒悟之前都不会停止的惩罚。他们非人非仙，亦非妖魔。置身轮回外，行走六道间，执笔阴阳，裁决生灭，游荡人魔两界。换句话说，是活着的亡人，也是逝去的生人。',"74.1万","玄幻 志怪 冒险 江湖","竞技同人","detail/baiyefushenglu.html");
insert into ds_tushu values(null,10015,"基因密码","提壶灌顶",187,"images/fenlei/jiyinmima.jpg","连载中","摇摆的时空，交汇着众生的命运，科技的阻碍，让我们只能在无垠的星河里孤芳自赏。灾难、阴谋、计划，还有...最终的选择！人类的命运究竟掌握在谁的手里？而我们最终又将作何选择？","66.2万","末日 生化 技术流 推理","科幻游戏","detail/jiyinmima.html");
insert into ds_tushu values(null,10016,"边城诡事","洛疑",150,"images/fenlei/bianchengguishi.jpg","连载中","华三清天生神眼，拥有千年记忆，却遇到各种诡异之事，会动的石像，满是婴骨的坟场，金乌冢，碎尸案，各种疑团围身，且看一个医学生如何破局。","46.5万","云神墓 爱伦坡 悬疑罪案 奇幻玄幻","悬疑灵异","detail/bianchengguishi.html");
insert into ds_tushu values(null,10017,"春秋学院","一口毒奶",351,"images/fenlei/chunqiuxueyuan.jpg","连载中",'这是一群男人和男人、男人和女人、女人和女人在学院串联且并联江湖的地方的故事......奇幻修"假",从你我做起......',"148.6万",'生活 搞笑 奇幻修"假" 轻小说',"二次元","detail/chunqiuxueyuan.html");
insert into ds_tushu values(null,10018,"寂坟","君弈臣",7,"images/jifen.jpg","连载中","好像水手的故事，在尘世中活着，渐渐迷失了自己。同世人一般，被这尘世中的苦痛和分裂织成的密网套住，无法挣脱。世人是聪明的，他们知道无法挣脱而放弃挣扎，任由这张网网着自己，这反倒是轻松些。可我却傻傻不放弃，以至于这网越来越禁，勒住皮肤，勒进肉里，最终勒至骨头，使我动弹不得，伤痕累累，血液就顺着这网流，流进水手的海洋。一滴、两滴的滴答、滴答着……只有水手听得见。","7844","穿越 科技 末世","科幻游戏","detail/jifen.html");
insert into ds_tushu values(null,10019,"帝道独尊","一叶青天",1877,"images/didaoduzun.jpg","连载中","天地初始，宇宙洪荒；奇门九遁，布道星空。当地球尘封万古的雪山龙棺移位时刻，诛天大道临世，神魔文明到来，宇宙如同撕裂枷锁的神魔，演化着一个精彩绝伦的修行世界。仙命少年从弱小中崛起，一步步踏向宇宙星海，战万界，伐仙穹......","615.8万","热血 爽文 争霸 法宝","奇幻玄幻","detail/didaoduzun.html");
insert into ds_tushu values(null,10020,"丞相大人来求婚？","烟庭色",81,"images/chenxiangdarenlaiqiuhun.jpg","连载中","满堂朝臣千堆雪，不上青枝莫白头。沈青枝一直对顾元城这个小子咬牙切齿，怀恨在心。如果不是他，她的仕宦之路不会那么崎岖，那么坎坷。每当月黑风高的时候，她都会准备好一壶天方酒，就等着欢欢喜喜，高高兴兴，心安理得地迎接那个家伙进地狱的消息。虽然每次她都会将酒壶狠狠砸碎，但她坚信，只要功夫深，铁杵磨成针。(如果你真的喜欢一个人，无论光阴如何流转，无论衰老或即将死去，无论你们中间隔了怎样的沧海山峦，请一定记得要告诉他/她，对他/她说，初见你时乱花漫天，一眼惊鸿。)","24.8万","欢喜冤家 宫廷斗争","古代言情","detail/chenxiangdarenlaiqiuhun.html");
insert into ds_tushu values(null,10021,"我的初恋未完待续","大影子呀",20,"images/wodechulianweiwandaixu.jpg","连载中",'失忆后的佟亦皓是她的前男友以及直属boss。且看苗芮说boss坏话被抓包后———他途径她走向总裁办公室，她的头低得更下了，心想：下一步是不是他冷冷地说：“苗芮，你给我进来！”从此以后在工作上给她施压，处处刁难她。又或者，他挑起了她的下巴邪魅一笑：“女人，你成功地吸引了我的兴趣。”在气氛极好的时候，他的脸离她越来越近，越来越……“砰！”总裁办公室的门关上了……神马？小说里的套路一个都没发生？？？',"6.3万","情有独钟 甜宠 又虐又甜 初恋","都市言情","detail/wodechulianweiwandaixu.html");
insert into ds_tushu values(null,10022,"佛天大智贤僧录","绮风殇",341,"images/fotiandazhixiansenglu.jpg","已完结","很多年以前，仙妖魔三族大战，仙妖联合抵御着魔，可却在魔族败退之际，妖族忽然宣布退隐，以至于魔族虽败，但却并未消亡。至此仙魔二族纠缠，可却在仙族即将统御之际，妖族忽然出手坐享其成，将仙族尽数缴灭，从此一统天下。但此战遗留下来的祸端，皆都在暗处伺机以待，只等到一有时机，便就会推翻天庭，从此改朝换代。此时正处于佛门的末法之季，一位小沙弥跟随着师父修行，他的慧根异常强大，因此更加适合于大智贤僧。可他的师父却是一位守护武僧，因此他的修行之路，也就大多只能靠着自己摸索，便也就在这样的行程之中，他眼见这世间烦浊，将一颗心在红尘历练，直至最终发愿，证得佛陀之位。剑修、体修、刀修，妖修、鬼修、魔修，符咒师、护道人、大能者，世人皆都只是争名夺利，唯有他的愿望世间和平。唔，出三界、离六尘、悟正道，南无，南无……","91.9万","热血 争霸 悬疑 神话","奇幻玄幻","detail/fotiandazhixiansenglu.html");
insert into ds_tushu values(null,10023,"古灯风尘","黄昏吟唱",458,"images/gudengfengchen.jpg","已完结","虎落平阳被犬欺、唐将穿越成书生、等等……为什么我会平白无故的穿越？为什么冥冥之中我又会和这个女人相遇？天意？可笑、不查个水落石出我还配做大唐的护国大将军？","106.3万","重生 搞笑 生活 热血","都市娱乐","detail/gudengfengchen.html");
insert into ds_tushu values(null,10024,"爆宠千金：帝少夺吻上瘾","奶精小白兔",1061,"images/baochongqinjin.jpg","已完结",'所有人都知道顾粤是顾家养女，棋子一颗，没身份没地位。可就是这颗棋子，竟然摇身一变成为A市第一家族的少奶奶。“周斯城，他们都说是我耍尽心机抢走了你。”看着各种绯闻，顾粤闷闷开口。正看文件的周总微微勾唇：“难道不是？”“要不是你对我有意思，我抢得走你吗？”顾粤得瑟哼哼。周总看着越来越嚣张的妻子，忍不住：“老婆，要不先履行夫妻义务，再谈谁对谁先有意思吧。”',"215.1万","豪门世家 爽文 宠文","都市言情","detail/baochongqinjin.html");
insert into ds_tushu values(null,10025,"独家专宠","顾平凉",78,"images/dujiazhuanchong.jpg","已完结","很多时候，杜幸总是会忍不住想，如果不是自己心血来潮改变计划，那他和阿守是不是就不会相遇，不会有这样纠缠又让她痛苦的一生。她总是不愿回忆那一段痛苦的日子，杜幸在心里一遍又一遍的告诫自己，阿守不仅强/迫自己，也是毁了她一生的人，她应该是恨他的，可是，总会有丝丝缕缕的甜蜜涌进心头，也是阿守这个男人给了她独一无二的宠爱，让他过的随性洒脱","23.6万","情有独钟","都市言情","detail/dujiazhuanchong.html");
insert into ds_tushu values(null,10026,"修真聊天群","圣骑士的传说",3184,"images/xiuzhenliaotianqun.jpg","连载中","某天，宋书航意外加入了一个仙侠中二病资深患者的交流群，里面的群友们都以‘道友’相称，群名片都是各种府主、洞主、真人、天师。连群主走失的宠物犬都称为大妖犬离家出走。整天聊的是炼丹、闯秘境、炼功经验啥的。突然有一天，潜水良久的他突然发现……群里每一个群员，竟然全部是修真者，能移山倒海、长生千年的那种！啊啊啊啊，世界观在一夜间彻底崩碎啦！","846.69万","丹药 学生 爆笑","都市娱乐","detail/xiuzhenliaotianqun.html");
insert into ds_tushu values(null,10027,"烂柯棋缘","真费事",444,"images/lankeqiyuan.jpg","连载中","烂柯旁棋局落叶，老树间对弈无人。兴所致天元一子，再回首山海苍茫……一觉醒来，计缘成了一个破旧山神庙中的半瞎乞丐。真人一柄剑，神棍一张嘴，就是计缘在这个可怕的世界安身立足的根本。","128.17万","鬼怪","武侠仙侠","detail/lankeqiyuan.html");
insert into ds_tushu values(null,10028,"花娇","吱吱",349,"images/huajiao.jpg","连载中","郁棠前世家破人亡，今生只想帮着大堂兄振兴家业。裴宴（冷眼睨视）：无事献殷勤，非奸即盗！这小姑娘的总在我面前晃来晃去的，难道是觊觎裴家宗妇的位置？郁棠（默默流泪）：不，这完全是误会！我只是想在您家的船队出海的时候让我参那么一小股，赚点小钱钱……","109.31万","古代情缘","古代言情","detail/huajiao.html");
insert into ds_tushu values(null,10029,"掌欢","冬天的柳叶",486,"images/zhanhuan.jpg","连载中","骆三姑娘仗着其父权倾朝野，恃强凌弱、声名狼藉，没事就领着一群狗奴才上街招惹良家美少年。对清阳郡主来说，这种人敢在她面前撒野，她伸根手指头就弄死了——直到她睁开眼，发现自己叫骆笙。","98.76万","千金 日久生情 甜文 美食","古代言情","detail/zhanhuan.html");
insert into ds_tushu values(null,10030,"洪荒历","zhttty",608,"images/honghuangli.jpg","连载中","那是在很久很久很久之前发生的故事……那是人类沉沦在无边血色中，叫天天不应，叫地地不灵，求生不得，求死不能的年代……那一天，一个名为盘的部落，诞生了一个名为古的婴儿……那一天，一个名为鸿的部落，诞生了一个名为钧的婴儿……那一天，一个名为李的部落中，三兄弟正在苟延残喘……那一天，一个名为耶的部落，诞生了……那是发生在很久很久很久之前发生的故事……那是人类以无穷奋斗，万千牺牲而最终开天辟地的故事，那是……洪荒历！","199.17万","洪荒流 铁血","奇幻玄幻","detail/honghuangli.html");
insert into ds_tushu values(null,10031,"诡秘世界之旅","梦里几度寒秋",481,"images/guimishijiezhilv.jpg","连载中",'“佛渡众生，我来渡你。”……做魔头呢，首先要假装自己是正道。',"105.95万","淡定 穿越","悬疑灵异","detail/guimishijiezhilv.html");
insert into ds_tushu values(null,10032,"游戏娱乐帝国","喝一杯红酒",812,"images/youxiyulediguo.jpg","连载中","这是一个在平行时空做游戏的故事，带着一个世界的‘财富’在另外的世界成就一个游戏娱乐帝国的故事。","178.69万","明星 种田文 赚钱 轻松","科幻游戏","detail/youxiyulediguo.html");
insert into ds_tushu values(null,10033,"北颂","圣诞稻草人",629,"images/beisong.jpg","连载中","寇季魂穿北宋，成为了千古名相寇准的从孙，作为一个标准的官三代，他本该走马架鹰，过着最嚣张的纨绔生活。然而，当他拿着便宜父亲邀他入汴京享福的信入京以后，才发现……祖父寇准，貌似要凉！","231.48万","腹黑","历史军事","detail/beisong.html");
insert into ds_tushu values(null,10034,"怪物被杀就会死","阴天神隐",426,"images/guaiwubeishajiuhuisi.jpg","连载中","灵气复苏，天地异变。众星颤动，邪魔苏生。在这疯狂的时代中，苏昼目睹怪异与邪物行走于大地，亡魂与恶魔再归人间，源自人心的邪恶，来自黄昏的终末，不死的怪物与不灭的邪魔一齐，不断朝着他所处的世界迫近。所以他只好抬起手，将它们全部轰杀殆尽。","177.92万","学生 轻松 魔王附体 龙","二次元","detail/guaiwubeishajiuhuisi.html");
insert into ds_tushu values(null,10035,"踏星","随散飘风",1856,"images/taxing.jpg","连载中","浩瀚宇宙，无尽种族！恢弘战技，十决横空！远古独姓，百强战榜！以我之名，脚踏星空！2200年的一天，当人类第一次登上海王星，看到的是一柄战刀和一具站立的尸体！！！","561.6万","热血 争霸 爽文 异世","科幻游戏","detail/taxing.html");
insert into ds_tushu values(null,10036,"人间不值得","老杨半仙",320,"images/renjianbuzhide.jpg","连载中","都说天上不会掉馅饼，可外卖小哥杨萌却被它结结实实砸了个半死，当他恢复神志的时候发现自己居然成为了东岳大帝！这是肿么了啊！小说里主角都是金手指傍身，为何我徒有虚名，连个给力的技能都没有啊！我太难了！","98.4万","生活 搞笑 扮猪吃虎 都市","都市娱乐","detail/renjianbuzhide.html");
insert into ds_tushu values(null,10037,"末世无限吞噬","风雨神话",980,"images/moshiwuxiantunshi.jpg","连载中","金色光雨降临，地球的一切都被改变，丧尸横行，变异兽出没，无数的恐怖物种出现，王双，觉醒了自己的异能，在这个纷乱的世间横空出世，吞噬天赋，吞噬诸天，踏上了一条永恒之路！","290.3万","爽文 争霸 末世 热血","科幻游戏","detail/moshiwuxiantunshi.html");
insert into ds_tushu values(null,10038,"重生之游戏大亨","成刚",967,"images/chongshengzhiyouxidaheng.jpg","连载中","重生回到九八年，那些消逝在时光中的遗憾，通通可以弥补了。","366.0万","重生","都市娱乐","detail/chongshengzhiyouxidaheng.html");
insert into ds_tushu values(null,10039,"乘龙赘婿","雾岗山岳",1096,"images/chenglongzhuixu.jpg","连载中","一次有预谋的车祸，高然连人带车坠入湖底，醒来之时发现脑海中多了一部修龙炼体术。两年前他以穷屌丝身份稀里糊涂入赘钱家，此后他活得像条狗。耙耳朵、吃软饭、佣人、出气筒……呃，好吧这就是他，还有谁比他更窝囊、憋屈。而现在他只想找回尊严，用老天赐予他的能力，脚踏各路宵小，征服强势而又不喜欢他的老婆……","234.1万","爽文 升级 生活 重生","都市娱乐","detail/chenglongzhuixu.html");
insert into ds_tushu values(null,10040,"直播手术室","柳叶刀下人",520,"images/zhiboshoushushi.jpg","连载中","林宇穿上了白大褂，泡千金院长、谈红颜知己、照顾萝莉的同时，他还要登上外科手术台的医学巅峰......","177.1万","手术医生 直播爽文 轻松搞笑 扮猪吃虎","都市娱乐","detail/zhiboshoushushi.html");
insert into ds_tushu values(null,10041,"玄黄天际","龙图甲丁",197,"images/xuanhuangtianji.jpg","连载中","当天地已衰，天道已败，人道已失，神道已坏；心怀天下的人们，会循着那道剑气，找到我。我叫任平生，来自不归山。","66.9万","异世 魔兽 救亡 英雄无敌","武侠仙侠","detail/xuanhuangtianji.html");
insert into ds_tushu values(null,10042,"踏破太古","易水川",14,"images/tapotaigu.jpg","连载中","乱世之中，谁与争锋！想入天门封神，先问过本尊。想过鬼门重生，爷不点头谁敢冲？生死只一世，谁浪我杀谁。吾执无名刀，躺于天门外，卧于鬼门中，不服就来战！","141.1万","爽文 热血 争霸 末世","奇幻玄幻","detail/tapotaigu.html");
insert into ds_tushu values(null,10043,"修真大福星","渡血古巫",171,"images/xiuzhendafuxing.jpg","连载中","人家来修真，他是来搞怪的，没天赋偏偏又福星高照，好运连连。被追杀？没事，跑呗！被陷害？小菜，玩诡计哥们拿手。姬武就是大福星，靠近他的人都会分享到他的幸运，成为他敌人的都会死无葬身之地。一次次的生死抉择，一幕幕的爆笑人生，他有了休戚与共的党羽，有了相濡与沫的爱人，还有了宇宙间三百万年才会经历一次的捍卫战。归藏令已出，这一次鹿死谁手","154.3万","修仙 搞笑 励志 热血","武侠仙侠","detail/xiuzhendafuxing.html");
insert into ds_tushu values(null,10044,"大国名厨","烟斗老哥",414,"images/daguomingchu.jpg","连载中","清冷自傲的新妻，城府深沉的丈母娘，醉生梦死的老丈人，敢爱敢恨的小姨子……身有御厨传承的乔智，为了偿还父债，成了陶家女婿。起初只是为了追猎妻子的心，未曾想他逆袭不羁，在饱受冷眼、备受争议的压力下，成为弘扬华夏大国美食文化的顶级名厨及餐饮大鳄。","129.4万","热血 爽文 生活 搞笑","都市娱乐","detail/daguomingchu.html");
insert into ds_tushu values(null,10045,"大明辅君","豆豆守望者",204,"images/damingfujun.jpg","连载中","世间大道三千条，何人复我盛时疆，金戈铁马，山河入梦，锦衣浪子随我朱五哥，饮马贝加尔湖。","71.7万","穿越 热血 爽文","历史军事","detail/damingfujun.html");
insert into ds_tushu values(null,10046,"黑狗修仙传","老不歪",307,"images/heigouxiuxianzhuan.jpg","连载中","看过孤儿修仙，看过废柴修仙，也还看过残疾修仙，可众位看官可曾看过黑狗修仙？好吃的都让狗啃了，好便宜都让狗占了，好神通都让狗练了，好妞都让狗舔了。看过没，没看过点进来看我胡扯吧！本书主角就是一条黑毛瘦狗，机缘巧合踏入修仙之道。","76.7万","搞笑 魔兽 动物修仙","武侠仙侠","detail/heigouxiuxianzhuan.html");
insert into ds_tushu values(null,10047,"炼金手记","小鸽哥",214,"images/lianjinshouji.jpg","连载中","穿越成魔幻蒸汽时代的一名炼金术士，获得了一块能够推演改良炼成阵的翠玉石板。杂质率1.5%预计完成度66%修正中……提纯灵性媒介……改良炼成阵……修正完成！炼金完成度100%完美炼成，新超凡特性发现！……","45.83万","诡秘悬疑","悬疑灵异","detail/lianjinshouji.html");
insert into ds_tushu values(null,10048,"日常系男神","五陵",198,"images/richangxinanshen.jpg","连载中",'“作为一个男神，你认为最应该具备什么条件呢？是容貌，才华，人品素质？还是修养，智商情商，幽默感呢？”“我认为是驾驶技术！”“没懂。”“单手会开法拉利！”“……来吧骚年！我来为你提高思想觉悟。”……这是一个普通小直男努力成为男神的故事。阅读、运动、练字、减肥、培养情商、与人为善……只要变得越来越好，居然都能获得金钱奖励，那么何乐而不为呢！0.0……',"41.13万","学生 赚钱 轻松","都市娱乐","detail/richangxinanshen.html");
insert into ds_tushu values(null,10049,"超级交易师","斯皮尔比",444,"images/chaojijiaoyishi.jpg","连载中",'交易员陈伟，偶得逆天系统，从此开始了叱咤风云的交易生涯',"91.14万","宅男 淡定 系统流 赚钱","都市娱乐","detail/chaojijiaoyishi.html");
insert into ds_tushu values(null,10050,"我真没想重生啊","柳岸花又",597,"images/wozhenmeixiangchongshenga.jpg","连载中",'万万没想到，社会精英、钻石单身汉的陈汉升居然重生了，一觉醒来变成了高三毕业生。十字路口的陈汉升也在犹豫，宝藏女孩沈幼楚和白月光萧容鱼，应该选择谁？',"145.86万","都市生活","都市娱乐","detail/wozhenmeixiangchongshenga.html");
insert into ds_tushu values(null,10051,"我的死党穿越了","白胡子徐",873,"images/wosidangchuanyuel.jpg","已完结",'我叫李尧，我现在慌得一批。我收到了已故死党发来的信息，虽然她是个跟我玩的很好的妹子，长得也很俊，可该慌还是要慌的。后来死党说她穿越了，还成了法师……我知道，我可能要发了。……李尧：“说好的赏心悦目的使魔呢咋还是个黑漆漆的魔怪啊？！我要求退货啊我跟你说！”林晓薇：“滚！”李尧：“好的呢！”',"145.86万","位面 学生 无敌文 轻松","都市娱乐","detail/wosidangchuanyuel.html");
insert into ds_tushu values(null,10052,"最强装备大师","法五龙",142,"images/zuiqiangzhuanbeidashi.jpg","连载中",'如果游戏装备可以带到现实：你会——选择英雄联盟，出六格神装，电刀，破败，无尽……选择魔兽，重现经典，风剑，蛋刀，霜之哀伤……选择崩坏三，打爆一切，雷切，神陨剑，犹大的誓约……还不过瘾的话。干脆，DNF，DOTA，剑网三，怪物猎人，暗黑破坏神……全部来一套！',"30.51万","学生 系统流 轻松","奇幻玄幻","detail/zuiqiangzhuanbeidashi.html");
insert into ds_tushu values(null,10053,"绿湾奇迹","磨砚少年",404,"images/lvwanqiji.jpg","连载中",'姓名：陆一奇职业：橄榄球教练特长：最后时刻临危受命，率领坑爹球队逆袭创造奇迹能力：智商碾压目标：冠军直系亲属：有个哥哥叫做马里奥。这是一个冒着点点傻气的故事。',"88.31万","励志","都市娱乐","detail/lvwanqiji.html");
insert into ds_tushu values(null,10054,"我不是那种许仙","一个苦力",267,"images/wobushinazhongxuxian.jpg","连载中",'只为前世那一眼， 你就纠缠到今天。啊！啊啊！你们不要过来！“姐姐，别跟他废话，拉他去后面的小树林！”大家好，我是许仙，过来这边有些日子了，感觉还行吧，就是经常莫名其妙的死掉。什么？只能死一次？没那回事……这个世界的规则管不到黑户。修仙？不可能的，这辈子都不可能修仙，修了仙就归他们管了。',"65.31万","明星 淡定 穿越","武侠仙侠","detail/wobushinazhongxuxian.html");
insert into ds_tushu values(null,10055,"我的前女友是大明星","可乐",366,"images/wodeqiannvyoushidamingxing.jpg","连载中",'本书又名《我的白色相簿》、《我没道理被菜刀》、《我不是渣男》、《我是无辜的》等等。隔壁邻居跟我们家是百年死对头，但我却跟他们家的大明星女儿秘密交往了七年...',"81.6万","医生 感情 职场 轻松","二次元","detail/wodeqiannvyoushidamingxing.html");
insert into ds_tushu values(null,10056,"神话版三国","坟土荒草",4486,"images/shenhuabansanguo.jpg","连载中",'陈曦看着将一块数百斤巨石撇出去的士卒，无语望苍天，这真的是东汉末年？吕布单枪匹马凿穿万人部队，这怎么看都不科学。赵子龙真心龙魂附体了，一剑断山，这真的是人？典韦单人护着曹操杀出敌营，顺手宰了对面数千步骑，这战斗力爆表了吧！这是不是哪里有些不对啊，陈曦顺手摸了一把鹅毛扇挥了一下，狂风大作，叹了一口气，“这是神话吧，我自己都不正常了。”',"1174.51万","淡定 种田文 豪门 阵法","历史军事","detail/shenhuabansanguo.html");
insert into ds_tushu values(null,10057,"造化图","横扫天涯",287,"images/zaohuatu.jpg","连载中",'【白金新书】有间歇性强迫症的学渣沈哲，穿越到一个到处都是学霸的世界。脑中多出一本可以改变规则，制定真理的造化',"87.38万","异世大陆","奇幻玄幻","detail/zaohuatu.html");
insert into ds_tushu values(null,10058,"渔人传说","一家之煮",306,"images/yurenchuanshuo.jpg","连载中",'我有一座房子，面朝大海，春暖花开！当其它人向往都市的繁华喧嚣时，他却选择回归荒废多年的孤岛老家！当其它人感叹近海无渔，生活难以为继时。他每次出海都满载而归，赚钱比捡钱都容易！看渔家子弟出身的庄海洋，如何从无垠大海中赚取财富。从一个籍籍无名的小主播，如何成为一名海洋达人。凭借天赐的奇遇，如何成为一名本应平凡，却又极不平凡以海为家的当代渔人，上演一段有关渔人的传说！',"85.39万","孤儿 宠物 种田文 轻松","都市娱乐","detail/yurenchuanshuo.html");
insert into ds_tushu values(null,10059,"大宋帝王","要离刺荆轲",133,"images/dasongdiwang.jpg","连载中",'朕躬有罪，无以万方，万方有罪，罪在朕躬！在经历一个失败的统治生涯后，重回一切故事开端的赵昕，看着满朝文武，郑重的宣布：朕受命于天，为天下万民之王，四海万国之帝，尔等群臣，顿首奉诏，遵而勿失即可！',"30.27万","两宋元明","历史军事","detail/dasongdiwang.html");
insert into ds_tushu values(null,10060,"我师兄实在太稳健了","言归正传",344,"images/woshixiongshizaitaiwenjianl.jpg","连载中",'重生在封神大战之前的上古时代，李长寿成了一个小小的炼气士，没有什么气运加身，也不是什么注定的大劫之子，他只有一个想要长生不老的修仙梦。为了能在残酷的洪荒安身立命，他努力不沾因果，杀人必扬其灰，凡事谋而后动，从不轻易步入危险之中。藏底牌，修遁术，炼丹毒，掌神通，不动稳如老狗，一动石破天惊，动后悄声走人。本来李长寿规划中，自己会一直躲在山中平安无事的修行成仙，直到有一年，他的老师父静极思动，又给他……收了个师妹回来……',"136.42万","练功流 轻松","武侠仙侠","detail/woshixiongshizaitaiwenjianl.html");
insert into ds_tushu values(null,10061,"魔临","纯洁的小龙",310,"images/molin.jpg","连载中",'这个世界一直流传着一个传说：终有一日，魔王会降临于这个世界，魔王的麾下，有七尊恐怖的魔头，他们，将带给这个世界绝望的黑暗。',"131.39万","冷酷 魔王附体","悬疑灵异","detail/molin.html");
insert into ds_tushu values(null,10062,"逐仙鉴","戮剑上人",1454,"images/zhuxianjian.jpg","连载中",'平平凡凡，出生乡野依靠打猎为生的二狗子，其实体内有一个不为人知的秘密；为躲避盗匪，背井离乡，机缘巧合下进入了江湖之中一个颇有名望的小家族；二狗子原本平凡的一生是否会因为那秘密而走出不一样的道路呢！出身寒门排万难，立志修道得长生！PS：主角偏凡人修仙流。',"487.8万","凡人流 冷酷  扮猪吃虎","武侠仙侠","detail/zhuxianjian.html");
insert into ds_tushu values(null,10063,"斗角","李秋",33,"images/doujiao.jpg","连载中",'天下大乱，群雄并起，且看陋巷少年如何凭借过人心智步步登高，奋然投身于这场逐鹿中原的铁血游戏之中！',"10.8万","争霸","历史军事","detail/doujiao.html");
insert into ds_tushu values(null,10064,"救赎2020","踄凡",15,"images/jiushu2020.jpg","连载中",'杨凡是一名本分而上进的企业白领，却遭领导和国外某军火势力的陷害而被迫离家、亲人罹难，神秘组织T3将他培养成了第一雇佣兵。离家七年，在寻找真相和复仇的道路上他终日与死神为伴，收获财富、结识兄弟、邂逅爱情、手刃仇人、援助华夏、揭露阴谋，可他心中真正所念却是那条救赎和归家之路。',"41.8万","雇佣兵王 英雄复仇 斗智斗勇 屌丝逆袭","历史军事","detail/jiuyushengwang.html");
insert into ds_tushu values(null,10065,"九域圣王","四千均",58,"images/jiuyushengwang.jpg","连载中",'武道巅峰称为圣，圣如繁星吾为王，一统九域，吾独尊！',"15.6万","热血 爽文 争霸","奇幻玄幻","detail/jiuyushengwang.html");
insert into ds_tushu values(null,10066,"异界命运安排","笨蛋尼尼",130,"images/yijiemingyunanpai.jpg","连载中",'武道巅峰称为圣，圣如繁星吾为王，一统九域，吾独尊！',"15.6万","热血 爽文 争霸","奇幻玄幻","detail/yijiemingyunanpai.html");
insert into ds_tushu values(null,10067,"起源密码","赊酒",72,"images/qiyuanmima.jpg","连载中",'一块来自远古的青铜残片，一桩桩离奇异的秘闻，一个背负离奇身世的少年。随着一层层迷雾揭开，他所面对的，是这个世界最奇异，最终极的秘密。而在那秘密之后，又会有什么？',"55.6万","探险 史前文明 远古神话","悬疑灵异","detail/qiyuanmima.html");
insert into ds_tushu values(null,10068,"九重虚拟现实","明樱龙",67,"images/jiuchongxunixianshi.jpg","连载中",'未来，人类因为虚拟世界而贪恋红尘，不是在虚拟中重生，就是在现实中灭亡。人类在虚拟和现实如何选择？',"19.7万","末世 机甲 科技 冒险","科幻游戏","detail/jiuchongxunixianshi.html");
insert into ds_tushu values(null,10069,"末日永恒","一叶皓天",5,"images/moriyongheng.jpg","连载中",'这一切，还要从系统给了我一个史诗任务和托卡马克装置设计图说起....（完全可以当系统网游小说来看，涉及科学理论的东西先说一句抱歉，纯属编造！千万不要当真，不要代入咱们的现实生活呀！）',"11.0万","升级 末世 养成 爽文","科幻游戏","detail/moriyongheng.html");

#创建图书章节表
create table ds_zj(
    id int primary key auto_increment,#唯一标识
	zid int unique,#章节编号
	zname varchar(20),#哪本书第几章
	ename varchar(100),#该图书英文名
	tid int,#图书表图书编号
	foreign key(tid) references ds_tushu(tid) ON DELETE CASCADE ON UPDATE CASCADE
);
insert into ds_zj values(null,10001,"第一章 小二上酒","xuezhonghandaoxing",10001);
insert into ds_zj values(null,10002,"第二章 白狐儿脸","xuezhonghandaoxing",10001);
insert into ds_zj values(null,10003,"第三章 两个酒窝","xuezhonghandaoxing",10001);
insert into ds_zj values(null,10004,"第一章 前因后果","wanjiehuaxian",10002);
insert into ds_zj values(null,10005,"第二章 李洛衡","wanjiehuaxian",10002);
insert into ds_zj values(null,10006,"第三章 大机缘","wanjiehuaxian",10002);
insert into ds_zj values(null,10007,"第一章","xuexingtingzaji",10003);
insert into ds_zj values(null,10008,"第二章","xuexingtingzaji",10003);
insert into ds_zj values(null,10009,"第三章","xuexingtingzaji",10003);
insert into ds_zj values(null,10010,"第一章 州漠启程","cixing",10004);
insert into ds_zj values(null,10011,"第二章 龙门客栈","cixing",10004);
insert into ds_zj values(null,10012,"第三章 路见不平","cixing",10004);
insert into ds_zj values(null,10013,"第一章 十八年画地为牢","hongchenwenjian",10005);
insert into ds_zj values(null,10014,"第二章 金陵有客远道来","hongchenwenjian",10005);
insert into ds_zj values(null,10015,"第三章 璞玉与三奶酒","hongchenwenjian",10005);
insert into ds_zj values(null,10016,"第一章 一个馒头","dachanghengge",10006);
insert into ds_zj values(null,10017,"第二章 青衣丫头妹妹的烦恼","dachanghengge",10006);
insert into ds_zj values(null,10018,"第三章 碧灵江的碧灵鱼","dachanghengge",10006);
insert into ds_zj values(null,10019,"第一章 洛阳","gongzichuguan",10007);
insert into ds_zj values(null,10020,"第二章 婚约","gongzichuguan",10007);
insert into ds_zj values(null,10021,"第三章 烟花楼","gongzichuguan",10007);
insert into ds_zj values(null,10022,"江湖有我陆花儿，一道清风百花开","wohaiyoubadao",10008);
insert into ds_zj values(null,10023,"小和尚含笑点头不错，陆花儿想杀人如风","wohaiyoubadao",10008);
insert into ds_zj values(null,10024,"刘一手留一手，王侍郎王屎郎","wohaiyoubadao",10008);
insert into ds_zj values(null,10025,"0001 真的重生了","moribaquan",10009);
insert into ds_zj values(null,10026,"0002 重生因果","moribaquan",10009);
insert into ds_zj values(null,10027,"0003 馅饼差点噎死人","moribaquan",10009);
insert into ds_zj values(null,10028,"第一章 天地剧变","wanshiweiwang",10010);
insert into ds_zj values(null,10029,"第二章 无名天书","wanshiweiwang",10010);
insert into ds_zj values(null,10030,"第三章 北山氏族","wanshiweiwang",10010);
insert into ds_zj values(null,10031,"第一章 昨日山村今不见，一朝云动天下惊","weichenzhuan",10011);
insert into ds_zj values(null,10032,"第二章 天地变动行在前，福祸不知修行现","weichenzhuan",10011);
insert into ds_zj values(null,10033,"第三章 世间隐有仙人现，但问可愿求长生","weichenzhuan",10011);
insert into ds_zj values(null,10034,"第一章 洪公子","damingchunse",10012);
insert into ds_zj values(null,10035,"第二章 想再听弹奏","damingchunse",10012);
insert into ds_zj values(null,10036,"第三章 岂能算了","damingchunse",10012);
insert into ds_zj values(null,10037,"1 重返人间界","shenzhunguilaidangnaiba",10013);
insert into ds_zj values(null,10038,"2 老婆失踪","shenzhunguilaidangnaiba",10013);
insert into ds_zj values(null,10039,"3 重踏修炼路","shenzhunguilaidangnaiba",10013);
insert into ds_zj values(null,10040,"第一回：影女怪谭","baiyefushenglu",10014);
insert into ds_zj values(null,10041,"第二回：影响之见","baiyefushenglu",10014);
insert into ds_zj values(null,10042,"第三回：影不离灯","baiyefushenglu",10014);
insert into ds_zj values(null,10043,"第一章 渊源","jiyinmima",10015);
insert into ds_zj values(null,10044,"第二章 终止实验","jiyinmima",10015);
insert into ds_zj values(null,10045,"第三章 晚饭","jiyinmima",10015);
insert into ds_zj values(null,10046,"1 一气华三清","bianchengguishi",10016);
insert into ds_zj values(null,10047,"2 消失的山","bianchengguishi",10016);
insert into ds_zj values(null,10048,"3 虹桥监狱","bianchengguishi",10016);
insert into ds_zj values(null,10049,"第一章 天台上的一老一少","chunqiuxueyuan",10017);
insert into ds_zj values(null,10050,"第二章","chunqiuxueyuan",10017);
insert into ds_zj values(null,10051,"第三章 读书人不爱说脏字","chunqiuxueyuan",10017);
insert into ds_zj values(null,10052,"重生","jifen",10018);
insert into ds_zj values(null,10053,"重死","jifen",10018);
insert into ds_zj values(null,10054,"第三生","jifen",10018);
insert into ds_zj values(null,10055,"第一章 雪山葬天棺","didaoduzun",10019);
insert into ds_zj values(null,10056,"第二章 第九基地","didaoduzun",10019);
insert into ds_zj values(null,10057,"第三章 炼气化精","didaoduzun",10019);
insert into ds_zj values(null,10058,"第一章 始---一日看尽长安花","chenxiangdarenlaiqiuhun",10020);
insert into ds_zj values(null,10059,"第二章 风起云涌非莫谦","chenxiangdarenlaiqiuhun",10020);
insert into ds_zj values(null,10060,"第三章 满庭雀音声不歇","chenxiangdarenlaiqiuhun",10020);
insert into ds_zj values(null,10061,"第一章 他唱她听","wodechulianweiwandaixu",10021);
insert into ds_zj values(null,10062,"第二章 渗透了谁的心","wodechulianweiwandaixu",10021);
insert into ds_zj values(null,10063,"第三章 相识","wodechulianweiwandaixu",10021);
insert into ds_zj values(null,10064,"第一章 行者","fotiandazhixiansenglu",10022);
insert into ds_zj values(null,10065,"第二章 劫","fotiandazhixiansenglu",10022);
insert into ds_zj values(null,10066,"第三章 九天神雷","fotiandazhixiansenglu",10022);
insert into ds_zj values(null,10067,"第一章：轮回","gudengfengchen",10023);
insert into ds_zj values(null,10068,"第二章：夜光圣杯传闻","gudengfengchen",10023);
insert into ds_zj values(null,10069,"第三章：摸金校尉","gudengfengchen",10023);
insert into ds_zj values(null,10070,"第1章 不过是顾家的养女","baochongqinjin",10024);
insert into ds_zj values(null,10071,"第2章 我看上你很久了","baochongqinjin",10024);
insert into ds_zj values(null,10072,"第3章 都是顾家的女儿","baochongqinjin",10024);
insert into ds_zj values(null,10073,"第一章","dujiazhuanchong",10025);
insert into ds_zj values(null,10074,"第二章","dujiazhuanchong",10025);
insert into ds_zj values(null,10075,"第三章","dujiazhuanchong",10025);
insert into ds_zj values(null,10076,"第一章 黄山真君和九洲一号群","xiuzhenliaotianqun",10026);
insert into ds_zj values(null,10077,"第二章 且待本尊算上一卦","xiuzhenliaotianqun",10026);
insert into ds_zj values(null,10078,"第三章 一张丹方","xiuzhenliaotianqun",10026);
insert into ds_zj values(null,10079,"第1章 棋局","lankeqiyuan",10027);
insert into ds_zj values(null,10080,"第2章 精神摧残","lankeqiyuan",10027);
insert into ds_zj values(null,10081,"第3章 万物盛开","lankeqiyuan",10027);
insert into ds_zj values(null,10082,"第一章 大火","huajiao",10028);
insert into ds_zj values(null,10083,"第二章 铺子","huajiao",10028);
insert into ds_zj values(null,10084,"第三章 归家","huajiao",10028);
insert into ds_zj values(null,10085,"第1章 混世魔王","zhanhuan",10029);
insert into ds_zj values(null,10086,"第2章 强扭的瓜不甜","zhanhuan",10029);
insert into ds_zj values(null,10087,"第3章 一梦十二载","zhanhuan",10029);
insert into ds_zj values(null,10088,"第一章：高塔","honghuangli",10030);
insert into ds_zj values(null,10089,"第二章：穿越","honghuangli",10030);
insert into ds_zj values(null,10090,"第三章：洪荒！","honghuangli",10030);
insert into ds_zj values(null,10091,"1、木着脸穿越","guimishijiezhilv",10031);
insert into ds_zj values(null,10092,"2、认怂的时候一定要态度端正","guimishijiezhilv",10031);
insert into ds_zj values(null,10093,"3、我能看到成功率","guimishijiezhilv",10031);
insert into ds_zj values(null,10094,"第一章 真实的梦","youxiyulediguo",10032);
insert into ds_zj values(null,10095,"第二章 我还想要尝试着去做，做最后一次","youxiyulediguo",10032);
insert into ds_zj values(null,10096,"第三章 新的开始","youxiyulediguo",10032);
insert into ds_zj values(null,10097,"第0001章 此入汴京享富贵","beisong",10033);
insert into ds_zj values(null,10098,"第0002章 宰相府前门槛高","beisong",10033);
insert into ds_zj values(null,10099,"第0003章 富贵难享，总有磨难","beisong",10033);
insert into ds_zj values(null,10100,"第一章 苏昼","guaiwubeishajiuhuisi",10034);
insert into ds_zj values(null,10101,"第二章 沉睡","guaiwubeishajiuhuisi",10034);
insert into ds_zj values(null,10102,"第三章 突袭","guaiwubeishajiuhuisi",10034);
insert into ds_zj values(null,10103,"第一章 路隐","taxing",10035);
insert into ds_zj values(null,10104,"第二章 七圣刑营","taxing",10035);
insert into ds_zj values(null,10105,"第三章 降临","taxing",10035);
insert into ds_zj values(null,10106,"第一章 应聘","renjianbuzhide",10036);
insert into ds_zj values(null,10107,"第二章 东岳大帝","renjianbuzhide",10036);
insert into ds_zj values(null,10108,"第三章 哪来的愤青？","renjianbuzhide",10036);
insert into ds_zj values(null,10109,"第一章 奇观","moshiwuxiantunshi",10037);
insert into ds_zj values(null,10110,"第二章 末世降临","moshiwuxiantunshi",10037);
insert into ds_zj values(null,10111,"第三章 异能---觉醒","moshiwuxiantunshi",10037);
insert into ds_zj values(null,10112,"第一章 重生九八","chongshengzhiyouxidaheng",10038);
insert into ds_zj values(null,10113,"第二章 反面教材","chongshengzhiyouxidaheng",10038);
insert into ds_zj values(null,10114,"第三章 是非对错","chongshengzhiyouxidaheng",10038);
insert into ds_zj values(null,10115,"第1章 死里逃生","chenglongzhuixu",10039);
insert into ds_zj values(null,10116,"第2章 吃软饭的","chenglongzhuixu",10039);
insert into ds_zj values(null,10117,"第3章 蛮力救人","chenglongzhuixu",10039);
insert into ds_zj values(null,10118,"第1章 脑震荡还是神经病","zhiboshoushushi",10040);
insert into ds_zj values(null,10119,"第2章 马路杀手","zhiboshoushushi",10040);
insert into ds_zj values(null,10120,"第3章 院长情人?","zhiboshoushushi",10040);
insert into ds_zj values(null,10121,"第一章 悲天剑（上）","xuanhuangtianji",10041);
insert into ds_zj values(null,10122,"第二章 悲天剑（中）","xuanhuangtianji",10041);
insert into ds_zj values(null,10123,"第三章 悲天剑（下）","xuanhuangtianji",10041);
insert into ds_zj values(null,10124,"序章 天降横祸","tapotaigu",10042);
insert into ds_zj values(null,10125,"第一章：少年男女虐灵兽","tapotaigu",10042);
insert into ds_zj values(null,10126,"第二章：山雨欲来风满楼","tapotaigu",10042);
insert into ds_zj values(null,10127,"第一章 劫匪被劫","xiuzhendafuxing",10043);
insert into ds_zj values(null,10128,"第二章 两个元婴","xiuzhendafuxing",10043);
insert into ds_zj values(null,10129,"第三章 一刀杀敌","xiuzhendafuxing",10043);
insert into ds_zj values(null,10130,"第001章 如何摧毁一个女人！","daguomingchu",10044);
insert into ds_zj values(null,10131,'第002章 喂，那个"新来的"！',"daguomingchu",10044);
insert into ds_zj values(null,10132,"第003章 疼，两人都疼！","daguomingchu",10044);
insert into ds_zj values(null,10133,"第一章 天门吐雾","damingfujun",10045);
insert into ds_zj values(null,10134,'第二章 再见滑板',"damingfujun",10045);
insert into ds_zj values(null,10135,"第三章 乾清宫宴","damingfujun",10045);
insert into ds_zj values(null,10136,"第1章 老黑是条狗","heigouxiuxianzhuan",10046);
insert into ds_zj values(null,10137,'第2章 痴人刘定魁',"heigouxiuxianzhuan",10046);
insert into ds_zj values(null,10138,"第3章 芦半仙得宝卷","heigouxiuxianzhuan",10046);
insert into ds_zj values(null,10139,"一：放过我！","lianjinshouji",10047);
insert into ds_zj values(null,10140,'二：炼金术士的谜题',"lianjinshouji",10047);
insert into ds_zj values(null,10141,"三：新的生活","lianjinshouji",10047);
insert into ds_zj values(null,10142,"第1章 男神游戏","richangxinanshen",10048);
insert into ds_zj values(null,10143,'第2章 人间有味是清欢',"richangxinanshen",10048);
insert into ds_zj values(null,10144,"第3章 有没有信心！","richangxinanshen",10048);
insert into ds_zj values(null,10145,"第一章 时间回溯","chaojijiaoyishi",10049);
insert into ds_zj values(null,10146,'第002章 八天',"chaojijiaoyishi",10049);
insert into ds_zj values(null,10147,"第003章 开盘","chaojijiaoyishi",10049);
insert into ds_zj values(null,10148,"1、喝酒不开车","wozhenmeixiangchongshenga",10050);
insert into ds_zj values(null,10149,'2、你是谁？',"wozhenmeixiangchongshenga",10050);
insert into ds_zj values(null,10150,"3、原来还是邻居","wozhenmeixiangchongshenga",10050);
insert into ds_zj values(null,10151,"第1章 我真的穿越了......","wosidangchuanyuel",10051);
insert into ds_zj values(null,10152,'第2章 就是想家了',"wosidangchuanyuel",10051);
insert into ds_zj values(null,10153,"第3章 林家有女已长成","wosidangchuanyuel",10051);
insert into ds_zj values(null,10154,"第001章 开局我的世界","zuiqiangzhuanbeidashi",10052);
insert into ds_zj values(null,10155,'第002章 第一件精品装备',"zuiqiangzhuanbeidashi",10052);
insert into ds_zj values(null,10156,"第003章 毛线弓与贫穷箭","zuiqiangzhuanbeidashi",10052);
insert into ds_zj values(null,10157,"001 半场落后","lvwanqiji",10053);
insert into ds_zj values(null,10158,'002 二次人生',"lvwanqiji",10053);
insert into ds_zj values(null,10159,"003 重来一次","lvwanqiji",10053);
insert into ds_zj values(null,10160,"第1章 迷茫的许仙","wobushinazhongxuxian",10054);
insert into ds_zj values(null,10161,'第2章 假药铺子',"wobushinazhongxuxian",10054);
insert into ds_zj values(null,10162,"第3章 挖莲藕","wobushinazhongxuxian",10054);
insert into ds_zj values(null,10163,"第1章 开局就分手","wodeqiannvyoushidamingxing",10055);
insert into ds_zj values(null,10164,'第2章 青梅冤家',"wodeqiannvyoushidamingxing",10055);
insert into ds_zj values(null,10165,"第3章 有什么伤心事说出来让我开心开心","wodeqiannvyoushidamingxing",10055);
insert into ds_zj values(null,10166,"第一章 陨石导致的历史变化","shenhuabansanguo",10056);
insert into ds_zj values(null,10167,'第二章 划分',"shenhuabansanguo",10056);
insert into ds_zj values(null,10168,"第三章 离开之前","shenhuabansanguo",10056);
insert into ds_zj values(null,10169,"第一章 学霸的世界，学渣不懂","zaohuatu",10057);
insert into ds_zj values(null,10170,'第二章 毫秒不差',"zaohuatu",10057);
insert into ds_zj values(null,10171,"第三章 学渣四君子","zaohuatu",10057);
insert into ds_zj values(null,10172,"第一章 荒废的渔村","yurenchuanshuo",10058);
insert into ds_zj values(null,10173,'第二章 知足者常乐',"yurenchuanshuo",10058);
insert into ds_zj values(null,10174,"第三章 闲鱼主播","yurenchuanshuo",10058);
insert into ds_zj values(null,10175,"第一章 读书救不了大宋","dasongdiwang",10059);
insert into ds_zj values(null,10176,'第二章 天降圣王（1）',"dasongdiwang",10059);
insert into ds_zj values(null,10177,"第三章 天降圣王（2）","dasongdiwang",10059);
insert into ds_zj values(null,10178,"第一章 小小灵娥","woshixiongshizaitaiwenjianl",10060);
insert into ds_zj values(null,10179,'第二章 师兄的入门审核',"woshixiongshizaitaiwenjianl",10060);
insert into ds_zj values(null,10180,"第三章 入门第一课","woshixiongshizaitaiwenjianl",10060);
insert into ds_zj values(null,10181,"第一章 欢迎","molin",10061);
insert into ds_zj values(null,10182,'第二章 结束与开始',"molin",10061);
insert into ds_zj values(null,10183,"第三章 主上，您醒了？","molin",10061);
insert into ds_zj values(null,10184,"第一章 凶狠青年","zhuxianjian",10062);
insert into ds_zj values(null,10185,'第二章 争宝',"zhuxianjian",10062);
insert into ds_zj values(null,10186,"第三章 宝物择主","zhuxianjian",10062);
insert into ds_zj values(null,10187,"第一章 只是酒肆一小厮","doujiao",10063);
insert into ds_zj values(null,10188,'第二章 人间花色',"doujiao",10063);
insert into ds_zj values(null,10189,"第三章 论兵","doujiao",10063);
insert into ds_zj values(null,10190,"楔子","jiuyushengwang",10064);
insert into ds_zj values(null,10191,'第001章：家庭会议',"jiuyushengwang",10064);
insert into ds_zj values(null,10192,"第002章：一家四口","jiuyushengwang",10064);
insert into ds_zj values(null,10193,"第一章 落魄少爷","jiuyushengwang",10065);
insert into ds_zj values(null,10194,'第二章 引灵',"jiuyushengwang",10065);
insert into ds_zj values(null,10195,"第三章 夺舍，淬体","jiuyushengwang",10065);
insert into ds_zj values(null,10196,"第一章 上学要迟到了！","yijiemingyunanpai",10066);
insert into ds_zj values(null,10197,'第二章 我要当魔灵使',"yijiemingyunanpai",10066);
insert into ds_zj values(null,10198,"第三章 进入学院","yijiemingyunanpai",10066);
insert into ds_zj values(null,10199,"第一章：惊变","qiyuanmima",10067);
insert into ds_zj values(null,10200,'第二章：不速之客',"qiyuanmima",10067);
insert into ds_zj values(null,10201,"第三章：夜战","qiyuanmima",10067);
insert into ds_zj values(null,10202,"第一章：L(埃炉)病毒","jiuchongxunixianshi",10068);
insert into ds_zj values(null,10203,'第二章：穿越而活',"jiuchongxunixianshi",10068);
insert into ds_zj values(null,10204,"第三章：遇故人探地道","jiuchongxunixianshi",10068);
insert into ds_zj values(null,10205,"第1章 生存还是死亡","moriyongheng",10069);
insert into ds_zj values(null,10206,'第2章 果断抱紧大腿',"moriyongheng",10069);
insert into ds_zj values(null,10207,"第3章 陆地巡洋舰","moriyongheng",10069);
#创建图书内容表
create table ds_book(
    id int primary key auto_increment,#唯一标识
	bid int unique,#主键
	title1 varchar(65535),#章节的内容1
	title2 varchar(65535),#章节的内容2
	title3 varchar(65535),#章节的内容3
	tid int,#图书表图书编号
    zid int,#章节表章节编号
	foreign key(tid) references ds_tushu(tid) ON DELETE CASCADE ON UPDATE CASCADE);
insert into ds_book values(null,10001,'（每一个钟头上传一章，直到传完二十章！红票和收藏别忘了～）

    北凉王府龙盘虎踞于清凉山，千门万户，极土木之盛。

    作为王朝硕果仅存的异姓王，在庙堂和江湖都是毁誉参半的北凉王徐骁作为一名功勋武臣，可谓得到了皇帝宝座以外所有的东西，在西北三州，他就是当之无愧的主宰，只手遮天，翻云覆雨。

    难怪朝廷中与这位异姓王政见不合的大人们私下都会文绉绉骂一声徐蛮子，而一些居心叵测的，更诛心地丢了顶“二皇帝”的帽子。

    今天王府很热闹，位高权重的北凉王亲自开了中门，摆开辉煌仪仗，迎接一位仙风道骨的老者，府中下人们只听说是来自道教圣地龙虎山的神仙，相中了痴痴傻傻的小王爷，要收作闭关弟子，这可是天大的福缘，北凉王府都解释成傻人有傻福。

    可不是，小王爷自打出生起便没哭过，读书识字一窍不通，六岁才会说话，名字倒是威武气派，徐龙象，传闻还是龙虎山的老神仙当年给取的，说好十二年后再来收徒，这不就如约而至了。

    王府内一处院落，龙虎山师祖一级的道门老祖宗捻着一缕雪白胡须，眉头紧皱，背负一柄不常见的小钟馗式桃木剑，配合他的相貌，确实当得出尘二字，谁看都要由衷赞一声世外高人呐。

    但此番收徒显然遇到了不小的阻碍，倒不是王府方面有异议，而是他的未来徒弟犟脾气上来了，蹲在一株梨树下，用屁股对付他这个天下道统中论地位能排前三甲的便宜师傅，至于武功嘛，咳咳，前三十总该有的吧。

    连堂堂大柱国北凉王都得蹲在那里好言相劝，循循善诱里透着股诱拐，“儿子，去龙虎山学成一身本事，以后谁再敢说你傻，你就揍他，三品以下的文官武将，打死都不怕，爹给你撑腰。”

    “儿啊，你力气大，不学武捞个天下十大高手当当就太可惜了。学成归来，爹就给你一个上骑都尉当当，骑五花马，披重甲，多气派。”

    小王爷完全不搭理，死死盯着地面，瞧得津津有味。

    “黄蛮儿，你不是喜欢吃糖葫芦吗，那龙虎山遍地的野山楂，你随便摘随便啃。赵天师，是不是？”

    老神仙硬挤出一抹笑容，连连点头称是。收徒弟收到这份上，也忒寒碜了，说出去还不被全天下笑话。

    可哪怕位于堂堂超一品官职、在十二郡一言九鼎的大柱国口干舌燥了，少年还是没什么反应，估计是不耐烦了嫌老爹说得呱噪，翘起屁股，噗一下来了个响屁，还不忘扭头对老爹咧嘴一笑。

    把北凉王给气得抬手作势要打，可抬着手僵持一会儿，就作罢。一来是不舍得打，二来是打了没意义。

    这儿子可真对得起名字，徐龙象，取自“水行中龙力最大，陆行中象力第一，威猛如金刚，是谓龙象”，别看绰号黄蛮儿的傻儿子憨憨笨笨，至今斗大字不识，皮肤病态的暗黄，身形比较同龄人都要瘦弱，但这气力，却是一等一骇人。

    徐骁十岁从军杀人，从东北锦州杀匈奴到南部灭大小六国屠七十余城再到西南镇压蛮夷十六族，什么样膂力惊人的猛将没有见过，但如小儿子这般可天生铜筋铁骨力拔山河的，真没有。

    徐骁心中轻轻叹息，黄蛮儿若能稍稍聪慧一些，心窍多开一二，将来必定可以成为陷阵第一的无双猛将啊。

    他缓缓起身转头朝龙虎山辈分极高的道士尴尬一笑，后者眼神示意不打紧，只是心中难免悲凉，收个徒弟收到这份上，也忒不是个事儿了，一旦传出去还不得被天下人笑话，这张老脸就甭想在龙虎山那一大帮徒子徒孙面前摆放喽。

    束手无策的北凉王心生一计，嘿嘿道：“黄蛮儿，你哥游行归来，看时辰也约莫进城了，你不出去看看？”

    小王爷猛地抬头，表情千年不变的呆板僵硬，但寻常木讷无神的眼眸却爆绽出罕见光彩，很刺人，拉住老爹的手就往外冲。

    可惜这北凉王府出了名百廊回转曲径千折，否则也容不下一座饱受朝廷清官士大夫们诟病的“听潮亭”，手被儿子握得生疼的徐骁不得不数次提醒走错路了，足足走了一炷香时间，这才来到府外。

    父子和老神仙身后，跟着一帮扛着大小箱子的奴仆，都是准备带往龙虎山的东西，北凉王富可敌国，对儿女也是素来宠溺，见不得他们吃一点苦受一点委屈。
','   王府内一处院落，龙虎山师祖一级的道门老祖宗捻着一缕雪白胡须，眉头紧皱，背负一柄不常见的小钟馗式桃木剑，配合他的相貌，确实当得出尘二字，谁看都要由衷赞一声世外高人呐。

    但此番收徒显然遇到了不小的阻碍，倒不是王府方面有异议，而是他的未来徒弟犟脾气上来了，蹲在一株梨树下，用屁股对付他这个天下道统中论地位能排前三甲的便宜师傅，至于武功嘛，咳咳，前三十总该有的吧。

    连堂堂大柱国北凉王都得蹲在那里好言相劝，循循善诱里透着股诱拐，“儿子，去龙虎山学成一身本事，以后谁再敢说你傻，你就揍他，三品以下的文官武将，打死都不怕，爹给你撑腰。”

    “儿啊，你力气大，不学武捞个天下十大高手当当就太可惜了。学成归来，爹就给你一个上骑都尉当当，骑五花马，披重甲，多气派。”

    小王爷完全不搭理，死死盯着地面，瞧得津津有味。

    “黄蛮儿，你不是喜欢吃糖葫芦吗，那龙虎山遍地的野山楂，你随便摘随便啃。赵天师，是不是？”

    老神仙硬挤出一抹笑容，连连点头称是。收徒弟收到这份上，也忒寒碜了，说出去还不被全天下笑话。

    可哪怕位于堂堂超一品官职、在十二郡一言九鼎的大柱国口干舌燥了，少年还是没什么反应，估计是不耐烦了嫌老爹说得呱噪，翘起屁股，噗一下来了个响屁，还不忘扭头对老爹咧嘴一笑。

    把北凉王给气得抬手作势要打，可抬着手僵持一会儿，就作罢。一来是不舍得打，二来是打了没意义。

    这儿子可真对得起名字，徐龙象，取自“水行中龙力最大，陆行中象力第一，威猛如金刚，是谓龙象”，别看绰号黄蛮儿的傻儿子憨憨笨笨，至今斗大字不识，皮肤病态的暗黄，身形比较同龄人都要瘦弱，但这气力，却是一等一骇人。

    徐骁十岁从军杀人，从东北锦州杀匈奴到南部灭大小六国屠七十余城再到西南镇压蛮夷十六族，什么样膂力惊人的猛将没有见过，但如小儿子这般可天生铜筋铁骨力拔山河的，真没有。

    徐骁心中轻轻叹息，黄蛮儿若能稍稍聪慧一些，心窍多开一二，将来必定可以成为陷阵第一的无双猛将啊。

    他缓缓起身转头朝龙虎山辈分极高的道士尴尬一笑，后者眼神示意不打紧，只是心中难免悲凉，收个徒弟收到这份上，也忒不是个事儿了，一旦传出去还不得被天下人笑话，这张老脸就甭想在龙虎山那一大帮徒子徒孙面前摆放喽。

    束手无策的北凉王心生一计，嘿嘿道：“黄蛮儿，你哥游行归来，看时辰也约莫进城了，你不出去看看？”

    小王爷猛地抬头，表情千年不变的呆板僵硬，但寻常木讷无神的眼眸却爆绽出罕见光彩，很刺人，拉住老爹的手就往外冲。

    可惜这北凉王府出了名百廊回转曲径千折，否则也容不下一座饱受朝廷清官士大夫们诟病的“听潮亭”，手被儿子握得生疼的徐骁不得不数次提醒走错路了，足足走了一炷香时间，这才来到府外。

    父子和老神仙身后，跟着一帮扛着大小箱子的奴仆，都是准备带往龙虎山的东西，北凉王富可敌国，对儿女也是素来宠溺，见不得他们吃一点苦受一点委屈。

    到了府外，小王爷一看到街道空荡，哪里有哥哥的身影，先是失望，继而愤怒，沉沉嘶吼一声，沙哑而暴躁，起先想对徐骁发火，但笨归笨，起码还知道这位是父亲，否则徐骁的下场恐怕就得像前不久秋狩里倒霉遇到徐龙象的黑罴了，被单枪匹马的十二岁少年生生撕成两半。他怒瞪了一眼心虚的老爹，掉头就走。

    不希望功亏一篑的徐骁无奈丢给老神仙一个眼神。龙虎山真人微微一笑，伸出枯竹一般的手臂，但仅是两指搭住了小王爷的手腕，轻声慈祥道：“徐龙象，莫要浪费了你百年难遇的天赋异禀，随我去龙虎山，最多十年，你便可下山立功立德。”

    少年也不废话，哼了一声，继续前往，但玄妙古怪的是他发现自己没能挣脱老道士看似云淡风轻的束缚，那踏出去悬空的一步如何都没能落地。

    北凉王如释重负，这位道统辈分高到离谱的上人果真还是有些本事的，知子莫若父，徐骁哪里不知道小儿子的力道，霸气得很，以至于他都不敢多安排仆人女婢给儿子，生怕一个不小心就捏断了胳膊腿脚，这些年院中被坐坏拍烂的桌椅不计其数，也亏得北凉王府家底厚实，寻常殷实人家早就破产了。

    小王爷愣了一下，随即发火，轻喝一声，硬是带着老神仙往前走了一步，两步，三步。头顶黄冠、身披道袍的真人只是微微咦了一声，不怒反喜，悄悄加重了几分力道，阻止了少年的继续前行。

    如此一来，徐龙象是真怒了，面容狰狞如同一只野兽，伸出空闲的一只手，双手握住老道士的手臂，双脚一沉，咔嚓，在白玉地板上踩出两个坑，一甩，就将老道士整个人给丢掷了出去。

    大柱国徐骁眯起眼睛，丝毫不怕惹出命案，那道士若没这个斤两本事，摔死就摔死好了，他徐骁连不可一世的西楚王朝都给用凉州铁骑踏平了，何时对江湖门派有过丝毫的敬畏？天下道统首领龙虎山又如何？所辖境内数个大门大派虽比不上龙虎山，但在王朝内也属一流规模，例如那数百年一直跟龙虎山争那道统的武当山，在江湖上够超然了吧，还不是每年都主动派人送来三四炉珍品丹药？

    老道士轻轻飘荡到王府门口的一座两人高汉白玉石狮子上，极富仙人气势。光凭这一手，若是搁在市井中，那还不得搏得满堂喝彩啊。

    这按照北凉王世子即徐骁嫡长子的那个脍炙人口的说法，那就是“该赏，这活儿不简单，是技术活”，指不定就是几百几千银票打赏出去了，想当年世子殿下还没出北凉祸害别人的时曰，多少青楼清伶或者江湖骗子得了他的阔绰赏钱。

    最高纪录是一位外地游侠，在街上一言不合与当地剑客相斗，从街边菜摊打起打到湖畔最后打到湖边凉州最大鹞子溢香楼的楼顶，把白曰宣--银的世子给吵醒了，立马顾不得白嫩如羊脂美玉的花魁小娘子，在窗口大声叫好，事后在世子殿下的掺和下官府非但没有追究，反而差点给那名游侠送去凉州好男儿的大锦牌，他更是让仆人快马加鞭送去一大摞整整十万银票。

    没有喜好玩鹰斗犬的世子殿下的大好陵州，可真是寂寞啊。正经人家的小娘们终于敢漂漂亮亮上街买胭脂了，二流纨绔们终于没了跟他们抢着欺男霸女的魔头了，大大小小的青楼也等不到那位头号公子哥的一掷千金了。

    北凉王徐骁生有二女二子，俱是奇葩。

    大郡主出嫁，连克三位丈夫，成了王朝内脸蛋最俏嫁妆最多的寡妇，在江南道五郡艳名远播，作风放浪。

    二郡主虽相貌平平，却是博学多才，精于经纬，师从上阴学宫韩谷子韩大家，成了兵法大家许煌、纵横术士司马灿等一干帝国名流的小师妹。

    徐龙象是北凉王的最小儿子，相对声名不显，而大儿子则是连京城那边都有大名声的家伙，一提起大柱国徐骁，必然会扯上世子徐凤年，“赞誉”一声虎父无犬子，可惜徐骁是英勇在战场上，儿子却是争气在风花雪月的败家上。

    三年前，世子殿下徐凤年传言被脖子上架着刀剑撵出了王府，被迫去学行关中豪族年轻后辈及冠礼之前的例行游历，一晃就是三载，彻底没了音信，陵州至今记得世子殿下出城时，城墙上十几号大纨绔和几十号大小花魁眼中含泪的感人画面，只是有内幕说等世子殿下走远了，当天，红雀楼的酒宴便通了个宵，太多美酒倒入河内，整座城都闻得见酒香。

    回到王府这边，心窍闭塞的小王爷奔跑冲向玉石狮子，似乎摔一个老头子不过瘾，这次是要把碍眼的老道连同号称千钧重的狮子一同摔出去。

    只是他刚摇晃起狮子，龙虎山老道便飘下了来，牵住少年的一只手，使出真功夫，以道门晦涩的“搬山”手法，巧妙一带，就将屈膝半蹲的少年拉起身，轻笑道：“黄蛮儿，不要闹，随为师去吧。”

    少年一只手握住狮子底座边角，五指如钩，深入玉石，不肯松手，双臂拉伸如猿猴，嘶哑嚷着：“我要等哥哥回来，哥哥说要给我带回天下第一美女做媳妇，我要等他！”

    位极人臣的大柱国徐骁哭笑不得，无可奈何，望向黄冠老道，重重叹气道：“罢了，再等等吧，反正也快了。”

    老道士闻言，笑容古怪，但还是松开了小王爷的手臂，心中咂舌，这小家伙何止是天生神力，根本就是太白星下凡嘛。

    不过，那个叫徐凤年的小王八蛋真的要回来了？这可不是一个好消息。想当年他头回来王府，可是吃足了苦头，先被当成骗吃骗喝的江湖骗子不说，那才七八岁的兔崽子直接放了一群恶犬来咬自己，后来好不容易解释清楚，进了府邸，小王八玩意就又坏心眼了，派了两位娇滴滴的美娇--娘三更半夜来敲门，说是天气冷要暖被子，若非贫道定力超凡脱俗，还真就着了道，现在偶尔想起来，挺后悔没跟两位姑娘彻夜畅聊《大洞真经》和《黄庭经》，即便不聊这个，聊聊《[***]心经》也好嘛。

    黄昏中，官道上一老一少被余晖拉长了身影，老的背负着一个被破布包裹的长条状行囊，衣衫褴褛，一头白发，还夹杂几根茅草，弄个破碗蹲地上就能乞讨了，牵着一匹瘦骨嶙嶙的跛马。小的其实岁数不小，满脸胡茬，一身市井麻衫，逃荒的难民一般。
','   “老黄，再撑会儿，进了城回了家，就有大块肉大碗酒了，他娘的，以前没觉得这酒肉是啥稀罕东西，现在一想到就嘴馋得不行，每天做梦都想。”瞧不出真实年龄的年轻男人有气没力道。

    仆人模样的邋遢老头子呵呵一笑，露出一口缺了门牙的黄牙，显得贼憨厚贼可笑。

    “笑你个大爷，老子现在连哭都哭不出来了。”年轻人翻白眼道，他是真没那个精神气折腾了。

    两千里归途，就只差没落魄到沿路乞讨，这一路下水里摸过鱼，上山跟兔子捉迷藏，爬树掏过鸟窝，只要带点荤的，弄熟了，别管有没有盐巴，那就都是天底下最美味的一顿饭了。期间经过村庄试图偷点鸡鸭啥的，好几次被扛锄头木棍的壮汉追着跑了几十里路，差点没累死。

    哪个膏粱子弟不是鲜衣怒马威风八面？

    再瞧瞧自个儿，一袭破烂麻衣，草鞋一双，跛马一只，还不舍得宰了吃肉，连骑都不舍得，倒是多了张蹭饭的嘴。

    恶奴就更没有了，老黄这活了一甲子的小身板他光是瞅着就心慌，生怕这行走两千里路哪天就没声没息嗝屁了，到时候他连个说话的伴儿都没有，还得花力气在荒郊野岭挖个坑。

    尚未进城，城墙外头不远有一个挂杏花酒的摊子，他实在是精疲力尽了，闻着酒香，闭上眼睛，抽了抽鼻子，一脸陶醉，真贼娘的香。一发狠，他走过去寻了一条唯一空着的凳子一屁股坐下，咬牙使出最后气力喊道：“小二，上酒！”

    身边出城或者进城中途歇息的酒客都嫌弃这衣着寒碜的一主一仆，刻意坐远了。

    生意忙碌的店小二原本听着声音要附和一声“好嘞”，可一看主仆两人的装束，立即就拉下脸，出来做买卖的，没个眼力劲儿怎么样，这两位客人可不想是掏得出酒钱的货色，店小二还算厚道，没立马赶人，只是端着皮笑肉不笑的笑脸提醒道：“我们这招牌杏花酒可要一壶二十钱，不贵，可也不便宜。”

    若是以前，被如此狗眼看人低，年轻人早就放狗放恶奴了，可三年世态炎凉，过习惯了身无分文的曰子，架子脾气收敛了太多，喘着气道：“没事，自然有人来结账，少不了你的打赏钱。”

    “打赏？”店小二扯开了嗓门，一脸鄙夷。

    年轻人苦笑，拇指食指放在嘴边，把最后那点吃奶的力气都使出来吹了一声哨子，然后就趴在简陋酒桌上，打鼾，竟然睡着了。店小二只觉得莫名其妙，唯有眼尖的人依稀瞧见头顶闪过一点影子。

    一头鹰隼般的飞禽如箭矢掠过城头。

    大概酒客喝光一碗杏花酒的时光，大地毫无征兆地轰鸣起来，酒桌摇晃，酒客们瞪大眼睛看着酒水跟着木桌一起晃荡，都小心翼翼捧起来，四处张望。

    只见城门处冲出一群铁骑，绵延成两条黑线，仿佛没个尽头。尘土飞扬中，高头大马，俱是北凉境内以一当百名动天下的重甲骁骑，看那为首扛旗将军手中所拿的王旗，鲜艳如血，上书一字，“徐”！

    乖乖，北凉王麾下的嫡系军。

    天下间，谁能与驰骋辗转过王朝南北十三州的北凉铁骑争锋？

    以往，西楚王朝觉得它的十二万大戟士敢逆其锋芒，可结果呢，景河一战，全军覆没，降卒悉数坑杀，哀嚎如雷。

    两百精锐铁骑冲刺而出，浩浩荡荡，气势如虹。

    头顶一只充满灵气的鹰隼似在领路。

    两百铁骑瞬间静止，动作如出一辙，这份娴熟，已经远远超出一般行伍悍卒百战之兵的范畴。

    正四品武将折冲都尉翻身下马，一眼看见牵马老仆，立即奔驰到酒肆前，跪下行礼，恭声道：“末将齐当国参见世子殿下！”

    而那位口出狂言要给打赏钱的寒酸年轻人只是在睡梦中呢喃了一句，“小二，上酒。”',10001,10001);
	insert into ds_book values(null,10002,'身为北凉军扛旗的折冲都尉齐当国一时间有些犯难，虽说他是兵权彪炳的大柱国徐骁六位义子之一，是一虎二熊三犬中的“狼犬”，可这些年与世子殿下关系其实却是不算融洽。

        说心里话，贫贱行伍出身的齐当国不太顺眼殿下在州郡内的风流行径，但忠义当头，徐凤年既然是义父的嫡长子，便是要齐当国亲手去掳抢闺女，这位折冲都尉也不会皱一下眉头。现在怎么将徐凤年送回王府成了难题，总不能将尊贵的世子殿下随手扔在马背上吧？
    
        所幸狂奔而来的一骑解决了齐当国的困境。
    
        马匹通体如墨，异常高壮，曾是野马之王，被驯服了后就交由小王爷徐龙象，一照面马王野姓难驯，扬起斗大马蹄就要踩踏新主子，结果踢到了铁板，被少年一拳给打翻在地，此后便乖巧温顺如小家碧玉了。
    
        闻讯赶来的小王爷徐龙象策马急停，跳下，亲热喊了几声哥，见没动静，便天真以为哥死了，嚎啕大哭，撕心裂肺，齐当国好心想上去解释世子殿下只是劳累过度，结果被小王爷一把推开，几个踉跄，差点跌倒，齐当国可是北凉军替大柱国扛旗的猛将，足见少年超乎寻常的力道。
    
        被徐凤年唤作“老黄”的老仆小跑几步，用一口浓重的西蜀腔轻声说了几句，徐龙象这才破涕为笑，重重一巴掌拍在老仆肩膀上，直接把老头拍得一屁股坐在尘土中。
    
        小王爷对外人下手没轻没重，可换做哥哥徐凤年，可小心翼翼得很，蹲在地上，背负起熟睡中的哥哥，缓慢走向城门，绰号“黑牙”的坐骑就跟发--春一般，踩着小碎步，侧过脑袋试图去蹭那匹被老仆人牵着体格不输于它的红马，可皮包骨头还瘸了一脚的红马却不领情，张嘴就咬，吓得黑牙赶紧跑开，却不舍得跑远，显得恋恋不舍。
    
        陵州城内起先不确定是谁能让小王爷徐龙象背负着入城，而且身后还跟着两百骑如狼似虎的王府亲兵，后来不知是谁惊呼了一声世子殿下，这下可好，陵州可并排驱使三辆马车的主干道立马鸡飞狗跳，尤其是那些打扮得漂亮的小姐千金们，顾不上淑雅风姿，拎着裙摆尖叫着逃窜开来，一些个摆放镇宅宝贝来招徕顾客的大铺子都第一时间将东藏省起来.
    
    ]  另有花梨木大理石几案，设着文房四宝和杯筋酒具，名人法帖堆积如山，光是砚石就有十数方，都是价值连城，笔海内竖着的笔如树林一般密密麻麻。
    
        几案一角放有一只巨大哥窑花囊，插着满满一囊的水晶球白菊，更有随手把玩的错金独角瑞兽貔貅一对。
    
        王府内铺设有数条耗费木炭无数的地龙，所以初冬时分，房内依然温暖如晚春，便是赤脚踩在毯子上也无妨，所谓豪门巨室，不过如此。
    
        此时，世子徐凤年熟睡着躺在大床上，盖着一条秋香色金钱蟒大条褥，面容憔悴，床边坐着大柱国徐骁和小王爷徐龙象，除了唯一外人龙虎山的赵天师站立一旁，和那黄姓老仆背负长条行囊坐在门口，再无他人。
    
        床头一尊洒金色斑古铜宣德炉燃有醒神的奇物龙涎香。
    
        “天师，我儿无恙？”徐骁不知是第几次不厌其烦问起这个相同问题。这哪里还是那个战场上杀伐果决的徐柱国？分明只是宠溺儿子到了荒唐地步的父亲。
    
        “无恙无恙，世子殿下只是长期舟车劳顿，睡个半天，然后调养半月，定能生龙活虎。”
    
        老道士胸有成竹道，一阵肉疼，初时王爷见到爱子如此消瘦，立即就让府内大管家将武当山好几炉子的上品灵丹以及府上珍藏的贡品妙药一股脑搬出来，恨不得全部倒进儿子的嘴里。
    
        把赵天师给看得心惊肉跳，说了半天是药半分毒和的道理，并且存了与武当山一拼高低的私心亲自拿出龙虎山的小金丹来大材小用，这才打消了王爷的顾虑。
    
        世子徐凤年足足睡了两天两夜才醒来，弟弟徐龙象便不吃不喝守了两天两夜。
    
        等下人去给大柱国报喜，急匆匆三步作一步赶来探望，结果看到儿子直接艹起床头的宣德炉就砸了过来，跳下床破口大骂：
    
        “徐骁你个挨千刀的，把老子赶出王府，三年啊，难怪你常说老子不是你亲生的。”
    
        徐骁头一歪，躲过炉子，恬着脸赔罪。
    
        可徐凤年哪里肯放过这个让自己三年风餐露宿的罪魁祸首，砸完了室内一切可以砸的东西，一路追到房外，见廊角斜搁了一把锦绣扫帚，拎起来就追着打。
    
        可怜大柱国结实挨了几下后还不忘提醒道“穿上鞋穿上鞋，天凉别冻着”，院子里一个追一个逃，好不热闹，几个走出王府那比一郡总督大人还要吃香的嫡系管家下人都默契地双手插袖，抬头望着天空，什么都没听见什么都没看见。
    ','    徐凤年到底是身体疲乏，追着打了一会儿就气喘吁吁，弯着腰狠狠瞪着父亲。徐骁远远站着，小心翼翼赔笑道：“气消了？气消了就先吃饭，有了力气才能出气嘛。”
    
        房门门槛上坐着小王爷徐龙象和仆人老黄，两人咧着嘴笑，一个流着口水，一个缺了门牙，都挺傻。
    
        世子殿下气喘如牛，指了指外人眼中高高在上的北凉王徐骁，“驴草的，今天先放过你，你给老子等着。”
    
        徐骁也不恼怒，乐呵呵道：“好好好，爹等着就是，一定打不还手骂不还口，让你出一口恶气。”
    
        还赤脚的徐凤年丢掉那把能卖几十两银子的扫帚，来到房门，看到傻笑的弟弟，眼神柔和了几分，见他口水流淌了整个胸口，徐凤年也不嫌脏，很自然而然地直接伸手帮忙擦拭，轻声道：“傻黄蛮，来，站起来给哥瞅瞅高了没壮了没。”
    
        少年一本正经站起身，徐凤年比划了一下个头，略带失望笑道：“不高不壮。”
    
        少年一把环腰将哥哥抱起，徐凤年并不如何惊讶，胸口倒是被沾了不少口水，哈哈大笑道：“力气倒是大了不少。”
    
        大柱国站在原地，军旅半辈子杀人如麻的人屠竟有些眼眶湿润，悄悄撇过头，喃喃自嘲了一句“这风大的，哪来的沙子哦”。
    
        哥弟两个一同回了房，徐骁立即命人端来早就精心准备好的餐点，光是端食盒的下人就有二三十位，陆续进屋，行云流水一般，在龙虎山老道的善意提醒下大多是素食，少重口辛辣。
    
        好吃好喝好睡了三天，徐凤年来到府上最为人称道的听潮亭，自己提着一杆紫竹鱼竿，让弟弟徐龙象提了几个绣墩，再让下人备好大长条茶几，奇珍异果佳肴一样不少，还特地让管家拣选了四五位正值豆蔻年华的美婢揉肩敲背好生伺候着，这才是世子殿下该有的惬意生活嘛。
    
        听潮亭，光看这名字就能听出几分含义，北凉王府坐拥整座清凉山，在原本有个湖的山腰再扩建一倍，意图扩湖为海，搭建亭台楼榭，最中高耸入云的九楼雄伟凉亭取名听潮，世子徐凤年的爱好就是在一楼垂钓，楼内藏书万卷，珍本孤本无数，不乏失了传承的武学秘笈。
    
        十五年前，尚未被封北凉王的徐骁曾亲率铁骑，领着圣旨和尚方宝剑将王朝内大江南北数十个武林门派碾压了一遍，除去龙虎山这些素来安分的正统，像桀骜的紫禁山庄，就直接被灰飞烟灭了。
    
        要知道二十年前紫禁山庄可是江湖上一流的武学圣地，百年来光是各届十大高手，就出了四位，最后山庄的武库秘典，除去象征姓--交给大内数套，其余的，都被收缴到听潮亭的六楼。
    
        所幸徐凤年长相一点不似父亲徐骁，出了辖地以后，更不敢自称北凉王世子，否则光是凭这一点，就足以让他万劫不复，大柱国的仇家可是与门生一样遍天下的。
    
        湖中有锦鲤万尾，随手洒下饵料，那便是万鲤朝天的奇景，连前些年来避暑的天子都啧啧称奇，当下便自叹不如了一句。
    
        徐凤年躺在铺有华美蜀锦的木榻上，垂钓了一会儿，见弟弟又憨笑流口水了，伸手抹去。
    
        不由得想起那个被自己骗来凉地的白狐儿脸，那可是一个一笑起来便抿嘴如弧月一线的美人儿，徐凤年私下总称呼是天下第一美人，起先夸说是天下第一美女，被狠狠拾掇得像猪头，就退而求其次，修改了一个字，美女变美人。
    
        徐凤年一想到这个人，心情就很好，揉了揉弟弟的脑袋，微笑道：“哥说过要帮你骗个顶漂亮的美人给你做媳妇，还真就拐了个回来，是个白狐儿脸，极美极美，佩双刀，一把‘绣冬’，一柄‘春雷’，俱是天下有数的名刀。可惜呀，是个男人。”','',10001,10002);

insert into ds_book values(null,10003,'洗了个通体舒泰的香汤浴，褪去乞丐流民的麻衫草鞋，换上大世家子的锦衣玉服，刮掉胡茬，徐凤年其实是个颇为英俊惹眼的公子哥。

        陵州六七位当红花魁不乏眼界奇高的清傲主儿，为了他争风吃醋要死要活可不光是图北凉王世子的阔绰打赏，虽说这位世子殿下常干花钱买诗词的无良勾当，但精通风月，下得围棋，聊得女红，听得艹琴，看得舞曲，是个能暖女人心窝的贴己人。
    
        在北凉王府上，哪一位胸口微隆的青葱婢女没有被他揩过油，可私下红脸碎嘴几句，没有谁是真心厌恶的，起码这年轻主子不是那种一言不合就将下人打死投井或者剁碎喂狗的狠货。
    
        毗邻陵州的丰州李公子，这位自称与徐世子穿一条裤裆长大的总督之子，可不就是喜欢做将人投进兽笼分食的天谴勾当，一对比，王府上就都对世子殿下格外感恩戴德了。
    
        如果说王府谁敢对徐凤年怒目相向，丝毫不掩饰憎恨神情，那就是此时与几位笑脸讨巧婢女拉开距离的女侍姜泥了。
    
        她十二岁入北凉王府，那时候大柱国刚刚灭掉不可一世的西楚皇朝，率先攻破皇宫，不像随后驻军大凰城尽情享用城内上至王妃下至大臣女眷的大将军，徐骁不好女色，对西楚皇帝的嫔妃没兴趣，甚至没有拦着那位跟随西楚皇帝一同上吊殉国的贞烈皇后，甚至有传言还是徐骁亲自赠予一丈白绫。
    
        在西楚，姜是国姓，独属于皇家，所以难免有人猜测这名幼女的来历，只是随着西楚湮灭，种种揣测便淡化，尘埃便是尘埃了。
    
        徐凤年当然比谁都清楚这位姜姓女婢的隐秘身份，斜瞥了一眼出落得亭亭玉立的侍女姜泥，抬手将其余女婢挥退，等她们走远了，这才嬉笑道：
    
        “怎么，太平公主很失望我没有死在外乡？你放心，还没帮你破-瓜，我是真心不舍得死呐。啧啧，公主你的胸脯可是越来越峰峦起伏了，我看你得叫‘不平公主’才应景。”
    
        昔年贵为公主今曰沦为婢女身负国仇家恨的姜泥无动于衷，板着脸，双眸阴沉，恨不得将这个登徒子咬死。
    
        袖中藏有史书上美誉价值十二城的匕首“神符”，只有一丝机会，连杀只鸡都不忍心的她会毫不犹豫割下徐凤年的脑袋，可是，她眼角余光瞥见了一名身穿便服的中年男人，不得不强忍下搏命的冲动。
    
        男子而立之年，身高九尺，相貌雄毅，面如冠玉，玉树临风，常年眯眼，昏昏欲睡一般，他便是北凉王六位义子中的“左熊”袁左宗，白马银枪，在战场上未逢敌手，是整个王朝军中绝对可排前三甲的高手，甚至有人说他离十大高手境界也只差一线。对上这尊习惯了拿人头颅当酒碗的杀神，姜泥丝毫不敢轻举妄动。
    
        徐凤年未游历前很无耻地说过我只给你一次机会杀我，第二次杀不掉我，我就杀你。
    
        很可惜那一年，初长成的她学人描了胭脂穿了华服勾引他，好不容易骗上了床，亲热时一刀刺下，却只是刺了他肩头一下，入骨，却不致命，这个家伙只是甩了她一耳光，穿衣起床后说了两句话，第一句是“下次你就没这么好的命了，别再浪费了”。
    
        “殿下，殿下，我终于见到殿下了，三年来小的可是茶不思饭不想啊。”
    
        一个装束富贵的胖子连奔带跑准确说是连滚带爬冲杀过来，脸上还挂着货真价实的鼻涕眼泪，无赖得很。
    
        姜泥一脸不输面对徐凤年的厌恶。而贴身保护世子的袁左宗则撇过头，不屑一顾，眼中充满浓重的不齿。
    
        这位臃肿如猪的胖子既然能够穿过重重森严守护，来到徐凤年身前，身份当然不俗，事实上他与北凉军第一猛人“左熊”一样，都是大柱国的义子，姓褚名禄山，是三犬中的鹰犬。
    
        徐凤年那只共患难了三年的“三百六十羽虫最神骏者”雪白矛隼就是这个胖子给调教出来的，比养媳妇养儿子还用心。
    
        此人在北凉军口碑一直极差，为人口蜜腹剑，好色如命，世子徐凤年头回逛青楼就是他领的路，总说兄弟如手足女人如衣裳，前些年每隔几天就怂恿着徐凤年把他的美妾给睡了，还真是剑走偏锋的忠心耿耿苍天可鉴。
    
        “茶不思饭不想？褚胖子，怎么看上去可是胖了几十斤啊？”徐凤年冷笑道，勒住死胖子的脖子。
    
        被掐着脖子的胖子涨红着脸委屈叫嚷道：“殿下，瘦了，都瘦了一圈了！殿下若不信，小的马上去称，重了一斤就切下一斤肉，重十斤切十斤！”
    
        徐凤年松开脖子，拍打着褚禄山的肥颤颤脸颊，笑道：“果然好兄弟。”
    
        如今窃据千牛龙武将军从三品高位的褚胖子被人肆意拍打脸颊，从三品，只要不是那些流于表面头衔的散官，放在任何州郡，都是数一数二的大官了，何况是手持三千精兵虎符的千牛龙武将军，可这胖子非但不觉得耻辱，反而一脸荣幸至极的表情。
    
        凑过硕大如猪头的脑袋，嘿嘿道：“殿下，我新纳了一房美妾，细皮嫩肉得紧，一捏都能捏出水来，还没敢享用，就是专门为殿下留着的，殿下是否抽空大驾光临，先喝点酒，听点小曲儿，然后？”
    
        徐凤年点头道：“好说好说。”
    
        两人相视一笑，要多歼诈有多歼诈，古语狼狈为歼，大体就是说这对祸害了。','   
        就在褚胖子嘘寒问暖世子殿下这三年境况的温馨时刻，北凉王缓缓走来，王朝内上柱国有数位，大柱国却仅此一位，仅次于那仅在国难时才不会空悬的天策上将。
    
        徐骁一生戎马，年轻时领军还会身先士卒，以至于先皇曾格外颁布圣旨命他无需亲自陷阵，后来征战西楚时左腿中了流矢一箭，落下了微瘸的后遗症。
    
        徐骁不介意那些清流名士嘲笑他徐蛮子，可如果谁敢腹诽一句徐瘸子，那绝对是不死不休的境地，曾与他一同讨伐西楚的武安侯有一名心腹爱将，年轻气盛，就付出了代价，被徐骁随便找了个借口斩首示众，头颅与一排西楚名将的脑袋一同悬挂在西楚皇城城头。
    
        武安侯敢怒却不敢言，甚至事后都没向皇帝陛下抗议半句。两鬓微白的徐骁身材并不高大，相貌更不起眼，中年微瘸，现在更是轻微驼背，似乎背负着三十万冤鬼亡灵的重担。
    
        褚胖子是个眼观四面耳听八方的心肝活泛人，立即收敛了神色，匍匐跪拜在地上，同样是义子，袁左宗就要有骨气脊梁的多，只是按照寻常礼仪躬身。
    
        北凉王徐骁轻轻挥手，让褚禄山自己去端凳子坐下，自己试图与儿子一同坐在木榻上，结果被一脸怒容的徐凤年一脚踹在屁股上，只得尴尬地挑了根板凳坐在一旁。
    
        褚胖子一头冷汗，如坐针毡，都不敢抹。
    
        袁左宗会心一笑。徐凤年吹了一声口哨，拿起一块蜀锦缠在手臂上，将褚胖子熬出来的矛隼召唤下来，拿了一杯盛满葡萄美酒的琉璃杯，故作叹息道：
    
        “小白啊小白，这三年可是苦了你了，酒喝不上，肉吃不上，还差点被人杀了炖肉，我对不住你啊。”
    
        大柱国一脸羞愧，连连叹气。
    
        越长大越具备倾国倾城姿容的女婢姜泥轻轻冷笑一声。心想这雪白矛隼真是跟她一样遇人不淑。
    
        这种罕见飞羽只存在锦州向北一带的冰天雪地，猎户只要捕获一只，可叛国以外的免死罪，当年连西楚权贵都不惜千金求购这昵称“青白鸾”的灵物，但依然可遇不可求。
    
        徐凤年手臂上这只，更了不得，是青白鸾中最上品的“六年凤”，比“三年龙”还要稀罕珍奇，凉地雍州曾有一豪族宗主以黄金千两和三名美妇换求“小白”，却被跋扈的徐凤年当面骂了一声滚，那位在当地要风得风要雨得雨的煊赫权贵无疑碰了一鼻子灰。
    
        徐凤年哼哼道：“徐骁，我问你，儿子被人欺负，做爹的，该如何？”
    
        大柱国陪着笑一脸理所当然道：“那自然是将其抄家灭族，若还不解气，霸其妻妾视作牛马，占其财物顷刻间挥霍一空。”
    
        没有离开听潮亭的姜泥眼神黯然，不掩秋水眸子中的彻骨仇恨。
    
        徐凤年从怀中掏出一张小宣纸，上面写满姓氏和家族以及武林中大小门派，拍着父亲北凉王的肩膀，咬牙道：“爹啊，你不总说君子报仇十年不晚小人报仇不过夜，这些家伙就是我的仇家，你马上都给收拾了。”
    
        徐骁接过纸张，还没看就先忙不迭赞了一声我儿好字，大致瞄了一眼，刚想豪迈说没问题，然后仔细一瞧，一字不漏看完全部，微微苦色道：
    
        “儿子，这仇家也忒多了点，不下百个啊，你瞧这徽州郡的总督，不过是儿子长得脂粉气了点，携美同行游碧螺湖，被你远远瞅见，就要摘掉官帽吗？还有这关中琅琊王氏，只是家奴喝酒时骂了几句北凉蛮子，就要灭族？至于这武林中的轩辕世家，做了什么事，惹恼了我儿，竟要其整个家族发配锦州，并且点名叫轩辕青凤的妞儿充作官记？”
    
        徐凤年望着啄酒的心爱矛隼，唉声叹气道：“小白啊小白，你还好，有我这么个知道心疼你的主子，我就惨了，没爹疼没娘爱的，活着就是遭罪，没劲。”
    
        大柱国连忙笑道：“爹照办爹照办，绝无二话。”
    
        承诺完毕，雷厉风行的徐骁转过头，面对袁左宗和褚禄山可就没什么好脸色了，阴沉着说道：
    
        “左宗，你筹备一下两支虎贲铁骑，随时候命。本王马上去上头求一道圣旨，无非是再来一次马踏江湖。禄山，与沿途州郡与本王关系相近的大人打好招呼，名单上的逆臣贼子，该杀的杀，只不过弄点好听的名头，别太大张旗鼓。毕竟是在别人的地盘上办事，不需要急于办成，给你一年半时间慢慢谋划，这种事你擅长。”
    
        袁左宗躬身道：“领命。”
    
        褚胖子也起身弯腰，眼神暴戾满脸兴奋道：“禄球儿遵命。”
    
        姜泥心中哀叹，又要有无数良民被一个荒诞的缘由遭劫了吗？会有多少妻离子散的可怜人到头来都不清楚灭顶之灾的由来？
    ','        可此时，徐凤年却拿回了纸张，拿出另外一张，名单人数仅是十分之一左右，笑道：“老爹啊，我哪能真让你与和十几个豪族和半个江湖为敌，喏，瞧瞧这张，这些人倒霉就够了，官可都是贪官，民都是乱民，杀起来名正言顺，替天行道，肯定能积德，胜造七百级浮屠啊。”
    
        徐骁重重松了口气，看见儿子又要发火，立即故意板着脸显得郑重其事地接过第二张纸，点头道：“既然如此，就不需要过于兴师动众了，一年之内，爹保证让你眼不见心不烦。吾儿果然孝顺，都知道给爹解忧积德了。”
    
        徐凤年丢了由徐骁亲自剥好的半颗橘子进嘴，含糊道：“那是。”
    
        徐骁给义子褚禄山一个凌厉眼神，后者接过纸张立即退下，胖归胖，挂着两百多斤的肥肉，行走起来却如草上飞一般悄无声息。
    
        徐骁见到脸色逐渐红润的儿子，满怀欣慰，轻声讨好道：“儿子，爹说你不是亲生的，那可是说你长得不像爹，随你娘。”
    
        徐凤年听到这个，只是嗯了一声。
    
        最近十几年一直蜗居凉地休养生息的大柱国知道这个话题不甚讨喜，就转移道：“黄蛮儿不愿意去龙虎山，你帮忙说说，他就听你的。”
    
        徐凤年点头道：“知晓的，你忙你的，别妨碍我钓鱼。”
    
        徐骁呵呵道：“再待会儿，都三年没跟你说说话了。”
    
        徐凤年一瞪眼道：“早知如此，还把我驱逐出家门？！滚！”
    
        一个滚字气势如龙。
    
        可怜可悲北凉王立即两脚抹油，不敢再呆。
    
        不知为何，姜泥每次面对在徐凤年都如同寻常教子不严的富家翁无异的大柱国，都会全身泛寒，只剩下刺骨的冰凉，对这个比徐凤年更值得去恨的男人，根本不敢流露出半点杀意。
    
        起先她以为是自己胆小，但越长大，胆子越大，却越是不敢造次，仿佛这个当年整个人笼罩于黑甲中率先策马冲入王宫宝殿的人屠，是天下最可怕的人。
    
        她后来才得知本朝先皇曾亲口许诺善待西楚王室，甚至要封她父皇为王，可徐骁仍然当着当时依偎在父皇怀中的姜泥的面，一剑刺死了西楚的皇帝，她那个喜欢诗词不喜兵戈的善良父亲，然后丢下一丈白绫给她的母后。
    
        本名姜姒的太平公主姜泥一直看不懂人屠徐骁，对她原先存了求活心思的母后说了一句“不想沦为胯下玩物就自尽吧”的大柱国。
    
        但因果轮回报应不爽，这个心狠手辣的男人却有两个不成材的儿子，一个是傻子，一个是心无大志的纨绔。
    
        傻子天生神力，可即便如此也不是能做北凉三十万铁骑主心骨的人物，那姜泥就要杀了以后将要袭王爵的世子徐凤年，如此一来，徐骁不管生前如何权柄煊赫如何一人之下万人之上，都免不了分崩离析猢狲散的一天，所以姜泥愿意等，愿意苟活。
    
        徐凤年一振臂，驱散手上的青白鸾，丢了那块被利爪挖出窟窿的小幅蜀锦，朝始终恭立一旁的北凉武神袁左宗微笑道：“袁三哥，你歇息去吧。”
    
        从不曾听到这个亲近称呼的袁左宗愣了一下，犹豫了一下，还是躬身离去。
    
        听潮亭，终于清净了。眺望出去，满眼的风景如画。
    
        徐凤年并未去拾起鱼竿，而是斜卧榻上，轻声道：“姜泥，有机会，你应该出去看一看。”
    
        没有深究含义的亡国公主鄙夷笑道：“世子殿下这一趟出游，可是要让一群人遭了无妄之灾，真是好大的手笔，不愧是大柱国的公子。”
    
        徐凤年转头笑道：“若非如此，能替你抹掉守宫砂？”
    
        姜泥嘴角不屑勾起，勾起滔天仇恨，如果能放秤上称上一称，千斤恨万两仇啊。
    
        徐凤年微笑道：“你知不知道，你生气的时候，跟偶尔开心笑起来的时候一模一样，都有两个小酒窝，我最喜欢你这点了，所以你迟些动手杀我，我好多看几眼。”
    
        姜泥面无表情道：“你等着便是，下一次杀你的时候，我会最开心的笑。”
    
        徐凤年坐直身体，从一只雕凤琉璃盆掏出一把饵料，抛向栏外湖中，惹来无数条锦鲤跃出湖面，望着这番灵动景象，背对着姜泥的世子殿下感慨道：“那肯定会是天下最动人的风景了。”',10001,10003);

insert into ds_book values(null,10004,' 人世间。
　　光影浮动。
　　一尘不变，却也未曾停息。
　　人，来也，往也，从虚无回归虚无，何为最珍贵。
　　小和尚的画笔一笔一划，勾勒人世间寥寥繁华。
　　他问师傅：“您画了一辈子，不曾厌烦？”
　　老和尚眯眼，皱纹布满面孔，只是寥寥几笔，一副小桥流水，便栩栩如生。
　　他答：“厌烦？一成不变久了，才会厌烦，而面对人世百态，每个人，每一个地方，每一株草，以至于每一处土地，每一个气味，都有所不同，为何会厌烦。”
　　小和尚想，这人还是这人，这地还是这地，哪怕斗转星移，也不会改变他们的本身，那么不都一样？
　　桥下一老一小和尚，盘坐与地，两张一大一小的案桌，同时看着同一副景，却画出了两幅截然不同的画来，一副清新脱俗，从不同的方位却看到不同的景物，令一副，无论怎么看都一尘不变，甚至感觉有些死板。
　　“画师，一定要谨慎三思而下笔，因为，在冥冥中，你定格了别人的一生，所以画师要为笔下的每一笔负责......”
　　老和尚苦口婆心，小和尚终究还是没听进去，心思随着一只红色的蜻蜓飞了很远很远。
　　十年之后，老和尚圆寂，小和尚成为当时最著名的画师，无数人一掷千金只为求得一画，但是都被拒之门外，因画出名，却未曾一画。
　　越是不画，越是让人觉得高深莫测，外面的留言越演越凶，以至于有人传，和尚一画，画龙可鸣，画凤可舞，画出的美人竟可从画中走出。
　　竹林小屋前，一女子倾国倾城从华贵的丝绸红裙不难看出她高贵的身份，此人正事京城白薇郡主。
　　一和尚一手菩提一手书卷，面对如此倾国倾城的女子仿若不见。
　　白薇道：“和尚，是否可以为我再画一幅画。”
　　和尚一笑道：“郡主开口，贫僧自然照办。”
　　白薇心中一颤，无比苦涩，他竟然叫自己郡主。
　　十年前他们第一次相见，小和尚跟着老和尚，画的入神，她正在桥上。
　　九年前她让当时身为王爷的父亲将小和尚二人招入府中，那一次是他们第一次真正意义上的相识。
　　那时候小和尚在后庭画画，看到他羞涩的道：“郡主。”
　　看着他的模样，她一下就笑了出来:“你真是个呆子，以后叫我薇儿就行。”
　　“啊？”
　　“叫一声嘛。”','　“哦，薇....薇儿。”
　　“这次听话，嘻嘻。”
　　五年后，小和尚已经长成了俊秀的少年，郡主也成了倾国倾城的美人。
　　他说：“郡主，你看，我画的怎么样？”
　　画中的郡主模样栩栩如生，白薇看后很是开心看着白薇动人的面孔小和尚内心翻腾。
　　阴差阳错的他问：“薇儿，你说我们会成为一辈子的朋友吗？”
　　那一刻，小和尚是发自内心的害怕，害怕有一天，他们会天隔两地。
　　七年，老和尚去景阳府为景王爷寿辰作画，回来之后变仿若变了一个人一般。
　　后来小和尚从他人口中得知，景王爷为了自己的私欲竟逼迫老和尚与他人行男女之事。
　　之后没几个月，老和尚圆寂，从此小和尚便将景王府的人视为仇人。
　　前年，白府突然宣布白郡主将于景阳府景公子喜结良缘。
　　在外人看来，两人自幼青梅竹马，现在也是一个郎才，一个女貌，仿若天作之合。
　　得知这个消息，小和尚茫然，怅然不知所措，山若蹦，海若翻，君只是凡人，如何抗，独自醉过多次，醉过便是痴笑，他想，或许这就是天命吧。
　　于是他接受了。
　　“明天是我新婚，我希望你能画一副独一无二的画送给我。”
　　“郡主放心，画一定送到。”
　　第二天，两大贵府间的婚礼，供给设宴万桌，凡事城内百姓均可参加，以至于满城喜庆。
　　白薇坐在房间中，怅然若失，心中空空的。
　　“小姐，穿衣服吧。”
　　“他来了吗？”
　　丫鬟摇了摇头，或许他非常的恨自己吧。
　　盖上了红盖头，便是与小和尚彻底的隔绝了。
　　景月公子早已经迫不及待的迎接新娘，很早就来到了白府，一直在府前等候，一张绝美的脸庞上，掩饰不住的喜悦。
　　在新娘踏出门的那一刻，鞭炮齐鸣，百乐齐奏，热闹非凡。
　　迎亲的车队连绵数里，皇上迎娶皇后的场面也不过如此吧。','　　白薇人群张望，却不见和尚踪影。
　　他，还是没来。
　　只是车队刚行百米，便有一孩童径直走来，走在车队的正前方。
　　“小孩，让开。”
　　前面的人厉声喝道，而景明一伸手，挡下了欲要上前的视为，他很好奇，这小孩要干什么，而更好奇小孩手中的一卷画。
　　小孩这车前礼貌鞠躬。
　　“这是家师赠予白郡主的最后一份礼物。”
　　“打开。”景明吩咐侍卫，听到是和尚送来的礼物的那一刻，白薇也掀开了轿子的门帘。
　　图开，展现出来的是一副绝美的女子画，女子身着红的妖艳的长裙，头戴华冠，犹如九天仙女下凡，凡是看到此画的，皆因这绝世的画工而感到震惊。
　　何人所画？若非天人，何人能画。
　　“你师父呢？”景明问。
　　“家师已经。”说到这里，孩童顿了一下，以一种无比沉重的声音道：“家师已经驾鹤西游。”
　　“什么？这不可能？”白薇惊呼出口，两行清泪瞬间落下。
　　“师父临终前再三强调一定要我把这封信交到白郡主手中。”
　　小孩上前，侍卫欲动，景明道：“随他去吧。”
　　虽然他不知道其中故事，但是他感觉的到，那个和尚对白郡主非同小可，即使如此，人已死，自己又何必难为一个死人。
　　信中道：
　　此生得幸遇贵人，痴笑曾想渡余生。江郎怎配红花女，一图血衣道此生。
　　画中红衣，越发妖艳，而和尚却已不在。
　　这天是她的新婚，这天是他的归终。
　　他最后所想到的是师父说过的：“有些人啊，就像这一处景，你从不同的方向去看，怎么可能会一样？世间没有一眼便能肯定的事，冥冥之中自有变数。”
　　这么简单的道理，怎么以前就是想不明白？
　　前世的光影一一浮现，他坐在河边，第一时间没有去想自己为何人，身处何方，而是对上辈子发出感慨。。
　　脑海中令一部分记忆告诉他，他的灵魂可能与另一个人结合在了一起，此人其实已死，只是自己的灵魂在控制这幅躯体使这幅躯体复活，同时也保留了此人生前所有的记忆。
　　他苦笑，有些人，为了多活一年，费尽心思，可自己想死却不能，多可笑。',10002,10004);

insert into ds_book values(null,10005,' 这一世自己不再是那个无名无姓的小和尚，自己叫做刘德，三清山弟子，曾以冠绝古今的第一天机灵脉入三清山三清道人亲传弟子，后因神脉不能聚元被驱逐为外门弟子。
　　这个世界很奇妙，所有人都以修仙为毕生目标，当修为达到一定境界，可操控世间元气，碎山崩河，这个世界实力为尊，一个人的实力强大到一定程度翻手可灭一国，所以对于这个世界来说，统治权一般握在一些强大的宗门手中。
　　比如三清山，是三清域的一个黑铁势力，虽说只是黑铁，但是统辖地域连绵万里，自己前世所在的王朝与之相比，不过是寥寥一角
　　了解到这些，刘德很是震惊，就比如你突然进入一个外星人生活的地方，看着他们无比先进的高科技一样。
　　“我这是穿越到另一个平行空间了，看来前世彻底跟我已经没有任何关系了。”
　　每每想起白郡主，他心口还是会微微作痛，不过既然上天给了他一次重新开始的机会，那么他也没有理由再次拒绝。
　　更重要的是，这家伙貌似有跟自己一样的经历，最后的选择跟自己一样。
　　这一刻他有了一个大胆的想法，上一世自己放手了，这一世自己是不是应该去拼一下。
　　“刘德，你醒了。”一个身着白色道袍，年级不大的少年走来，怀中抱着一把干柴，此人名为黄浩，刘德为数不多的几个朋友。
　　“你可把我吓坏了，兄弟，女人没了还能再找，小命没了可就真的没了。”
　　“白晴再怎么说也是一个青铜实力长老的孙女，你之前太过耀眼，无数人都看好你，现在不一样了，那些人一个比一个势力，怎么可能让自己孙女嫁给一个....”
　　说到这里黄浩突然停了下来，略显尴尬。
　　刘德倒是无所谓的道：“废物对吧。”
　　黄浩尴尬的一笑道：“刘哥，我可从来没这么看过你。”
　　“我知道。”
　　他从这个人经历中了解到，这个世界极其的崇尚武道，每一个天资卓越的人，无论到哪里都会被笼罩上一层无形的光环，而凡人在这个世界，就是最下等是人。
　　黄浩默而不语，还在为刚刚说错话而感到自责，过了好久他才问道：“你还回宗门吗？”','　　回宗门？刘德没想过再回那个冷酷无情的宗门，自己光彩下时候，无数人围绕自己，而当自己落魄下来，一个个都在背后跟自己过不去。
　　他自己也不甘心，既然是天级灵脉，那么自己一定有过人之处，他不相信，一个资质超人的人会沦为一个废人。
　　“你回去吧，从今往后，我与三清山，再无瓜葛。”
　　黄浩沉默片刻，一脸茫然，他不清楚，是自己一直都不了解刘德，还是他真的变了，自己现在竟完全看不穿他。
　　“好吧，不回也罢，这些你拿着，回家找份好差事，安安稳稳过一辈子吧。”
　　黄浩将三块暗黄色是石头塞进刘德手里，刘德是不能修炼，而自己不一样，自己只是天资愚钝，只要努力依旧可以在武道一途有所成就，所以他不可能抛下自己的前途跟刘德一起离开。
　　这些是宗门派发下来的下级元灵石，黄浩一个月也只有一块，这三块也不知道是他省了多久才省下来的。
　　“这些够你再家乡置办一套房子还有一块地了。”
　　看着黄浩真诚的目光，刘德很是感激，但是要让他就这么放弃所有人都在苦苦追求的武道，他也是有点不甘心，上辈子尚且轰轰烈烈过，此生怎甘平凡。
　　与黄浩告过别，刘德决定先去一趟赤阳宗，那个比三清山更为庞大的势力，他想再见一面白晴。
　　而另一边，三清山对于刘德先离开现实惊讶了一下，随即又归为平淡，毕竟三清山弟子众多，外门弟子只是最不显眼的，看不到希望，最后离开的大有人在，所以不足为奇。
　　刘德在赶路过程中，也曾尝试去汲取元气淬炼身体，可是每当元气进入体内，都会被那些天级灵脉所吸收分解最终消散，每一次修炼结束，他都会感觉到出奇的神清气爽，但是修为却不会有丝毫长进。
　　不过刘德并未气垒，坚定的认为自己是特殊体质，就像师傅曾说过的，每一个事物，从不同的方位去看都是不一样的。
　　一晃眼将近三个月过去了，刘德终于踏进了赤阳城，赤阳宗是周围数十个黑铁势力的统治者，就好比金字塔，赤阳宗是三清山更高的一层。
　　来到这里，刘德也经历了诸多困难，而此刻，他犹如一个疯子一样，头发胡子将整张脸给掩盖了起来，衣衫褴褛。
　　“不能就这样见晴儿，我还是略微修正一下吧。”
　　想到这里，刘德忍痛花了一枚下级元灵石，给自己减了胡子，买了一身干净的衣服。','　　走出布店的时候老板客气的道：“小兄弟走了不远的路了吧。”
　　“嗯”刘德点头。
　　“也真是难为你了，出门在外不容易，这个给你。”
　　刘德在买完衣服之后身上已经没有多余的钱再买鞋子了，本打算破鞋随便补补就行，但是老板仁心，自己早年也是四处奔波为了糊口，甚至长途跋涉的不容易，故此送了刘德一双由金鳞蛇皮制成的鞋子，一双都要一颗下级元灵石。
　　“多谢老板。”看着靴子，虽说不知道什么材质，但是从外表就能看出鞋子的不凡，这让刘德很是感激。
　　出了布店，刘德不耽误一刻，径直向赤阳宗而去。
　　“哎，少爷，我怎么看那个小子有点像刘德？”一旁一座装饰古雅的小楼上，一个贼眉鼠眼的男人看着路上走过的黎明冲着自己的主子道。
　　“哦？”少年衣着不凡，把玩着手中的玉佩，身边几名妙龄女子低着头长在旁边。
　　“就是那个曾经跟晴儿郎才女貌的家伙？”
　　“对，曾经属下听说他曾一度被认为是周边百域第一填充，他与白小姐.....”
　　“第一天才他也配。”
　　“王武，让他知道，他这个第一天才在本公子面前是多么渺小，白晴，注定是我的女人。”少年邪邪一笑，身旁的一名侍卫嗖的一下就从楼上跳了下来，这楼足有五六米，凡人掉下来，不死也残了，而那名侍卫平稳落地，未有丝毫不适。
　　不多久，刘德被一个怪力一脚从身后踹飞出去，练重重的砸在地面，刚扭头要看看是谁，又被一双手按着头猛烈撞击地面。
　　“为什么？”
　　此时刘德已经满脸鲜血，这就是武者与凡人的差距，哪怕只是最低级的武者，也能轻松费掉一个凡人。。
　　那人咧嘴一笑望向那座下楼，楼上少年邪魅一笑，他道：“我家少爷看你不舒服，让我给你点教训，以后不要出现在他的面前知道吗？”
　　看着那少年，刘德眼中直冒火光，艰难的从口中吐出一个名字：“李洛衡！”',10002,10005);

insert into ds_book values(null,10006,'李洛衡，正是白晴即将嫁给的对象，是一个三品世家的公子，三品世家，也不过稍稍强过一些黑铁势力一点，但是李洛衡天资卓越，与十五岁便入了气旋之境，是极其有希望突破气旋境而踏入化象境天才。
　　化象境，对于一个青铜势力来说也是顶尖的存在，一些强大一点的黑铁级势力的宗主，也不过堪堪化象境而已。
　　李洛衡如今十七岁已经是三阶气旋强者，而刘德不过炼体巅峰而已。
　　好在李洛衡没在继续出手，这赤阳城好歹是赤阳宗的地盘，自己无缘无故闹出一条人命来也不好交代。
　　刘德看着他，除了恨，缺无能为力，他的恨意在绝对的实力面前，竟显得如此苍白。
　　傍晚，赤阳宗山门之下，刘德盘坐与地，促使内心平静，他已经尝试过进入赤阳宗，但是无果，硬闯，更是不可能的。
　　“小小凡人，在这个武力纵横的世界竟活的如此卑微。”他深深的感觉到，在这个世界上强大起来的必要。
　　“一周之后，赤阳宗广收门徒，或许这是一个契机。”他了解到，这世界不单单只有修元气这一条路，比如还有阵法大师，铭文大师，三清山毕竟只是一个黑铁势力，对于这些武者的旁系，他们自然是了解极少，而赤阳宗不一样，以铭文阵法为主的修道殿他们也设立的有。
　　在刘德看来，这或许是一次翻身的机会，天级灵脉，如果修身不行，那么修阵法铭文肯定会有得天独厚的优势吧，自古阵法铭文大能身修皆弱。
　　傍晚，星河璀璨，刘德依旧无处所归，在一处简陋的墙边打坐，地上铺开一张宣纸，纸与笔都是非常廉价的，而这丝毫不影响他创作，即便毛笔划过极不流畅，但画质女子仍显得栩栩如生。
　　上辈子穷尽一生学画，此刻却找不到意义何在。
　　而他未发觉，星辰之中，有两道光点因他而滞留。
　　“咦！”一个光点中是一个白发长髯的老者，他轻哼一声停下脚步将目光向下望去。
　　“怎么了老家伙。”另一个光点中是一个温文尔雅的书生模样，一张绝美的脸摄人心魂，如果刘德看到，也会忍不住赞叹。
　　两人都看向地面，不由得一惊：“九阴神脉！”','　九阴神脉啊，两人到吸了一口凉气，在这穷乡僻壤之地竟然能看到一个身怀九阴神脉之人，这就好比在广袤的雨林中看到了一头大熊猫一样惊奇。
　　“此子不凡，待我收了他。”老者笑道。
　　“等一下，老东西，你门徒众多，这个还是让给我吧。”
　　“怎么，你打算跟老身抢不出？”
　　“我是怕你耽误了他以后的发展，毕竟你门徒众多怎么可能全部召开过来。”
　　“你！”老头气的满脸通红，可又无奈，人家说的在理，但是让他放弃一个亿万里挑一的九阴神脉他也不甘心。
　　自古凡九阴神脉者，无不功成名就，为一方主宰。
　　“算了算了，公平些，你我二人哥留一套功法与他，三年后，他在谁的功法一方面成就高，就为谁弟子，如何？”
　　老者想了想道：“成。”
　　任刘德无论如何也想不到，此时天上有两位旷古绝今的强者因自己而产生了一系列的征讨，甚至已经跟自己挂上了不可分割的关系。
　　这时两道光点入流星一般自天而降，不偏不倚正中刘德眉心。
　　一股刺痛，令刘德感到一股无法忍受的痛苦，就好像有人用无数钢针刺进他的脑袋。
　　“啊！”刘德痛苦的在地面翻滚。
　　“对了直接传他法术不加禁制他能受得了？”俊秀男子此话一出两人面面相觑好片刻。
　　“算了自求多福吧。”','功法传承就是一股精纯的能量体，凡人如果直接吸收，有可能爆体而亡，但是如果撑过去了，那么这股力量又会是一次飞升的助力，所以，福祸相间，自看造化。
　　而刘德并未感受到身体上的痛苦，更多的是那些庞大的信息所带来的精神刺痛，但也没有持续多久，而那股能量，则直接被那神秘的天极灵脉直接给化解了。
　　《混沌九绝》《神念录》两大功法陡然在脑海中出现，一本是元气凝聚攻击的法式，而另一本则是增强神念以精神力攻击的功法，两本功法介不受境界影响。
　　这让刘德倍感意外，《混沌九绝》当元气浓郁到一定程度就能释放，一共九重，每一重都要比上一重强上数辈，当然，所消耗的元气也更多，虽说这本武学明确注有无需境界的文字，但是自身修为不达到一定程度如何才能凝聚那般浓厚的元气，即使用一些补充元气的丹药填补，气海容量不够，也无法施展此武学。
　　而《神念录》则不一样，实实在在的另一种修行方式，是引天地元气在脑海中铸造神识，不断磨炼使神识不断强大，然后发出一些列精神上的攻击，一般这种攻击不会对其本身有所伤害，而人的意识一旦被磨灭，与死了也没什么区别，剩下的不过是无意识的驱壳而已。
　　“这《神念录》真是奇妙，《混沌九诀》霸道无比可惜自己无法修行，这是哪位大能在背后帮助自己？”
　　通过自己另一个灵魂所留下的记忆，这种功法绝对属于逆天级，那一本拿出手来都会遭无数人疯抢。
　　这是天都在助我啊。
　　也不在耽误，刘德连忙开始进行《神念录》的修炼，按照入门的方法，自己要先进入空冥状态，用意识去感觉无形的天地元气，沟通它，因他进入意识世界，进行神识塑造。
　　刘德闭目，极力去感知，他笨以为很难，但是他发现，天地间元气的流动他出奇的敏感，并且毫不费力的便将元气给引入了意识世界。
　　下一步就是凝聚神识了，如果神识可以顺利的凝聚成功，那么自己也就是入了《神念录》的门，按照上面对神念的划分也就是一阶神念师，可控百斤巨力，也就是相当于武者气旋一重的实力。
　　神识凝聚的很慢，这是一个姜意识融在一起捣碎再重新塑造的过程，极其缓慢，有一丝丝的失误自己可能就会前功尽弃。
　　一定要成。刘德额头上面淌下都大的汗水，意识时而清晰时而模糊，有一种不分虚实的感觉。
　　随着意识的越来越清晰，他惊奇的发现，即使自己闭上眼睛，如果刻意的自己也能看到外面方圆十几米的地域，而且更加清晰，一些细小的原本不易发现的东西，此刻也格外清晰。
　　“这神识竟然有如此奇效，如果我内视自身会发生何事?”说罢他尝试讲神识进入自身，但就在进入身体的一刹那，他感觉就如同掉入了无底的深渊。。
　　四周漆黑无比，仿佛没有边际，而灵根此刻如同参天大树在前方发出耀眼的白光，而灵根的周围围绕着一大片浑浊的，带着奇异色彩的雾气。
　　刘德可以很清楚的感觉到，这是元气，而且如此之多。',10002,10006);

insert into ds_book values(null,10007,' 我是阮行年。
　　我生于先祖父完成《雪中悍刀行》那年。先祖父阮京华，是蜀中以前小有名望的剑客与诗人。时人评祖父之剑，有“千骑卷平冈”之势。但祖父一生最得意者，非其剑术，而是两篇诗文。第一篇是祖父年轻时为剑仙李淳罡所作，名《三尺》。其中“天不生我李淳罡，剑道万古如长夜。”，时人推崇备至。第二篇是祖父花甲后为北凉王徐凤年所作《雪中悍刀行》。祖父为此用心深重，精思附会，只收集材料就用了十年，自言平生诗文无出其右者。恰逢我于是年降生，祖父便为我取名行年。行年者，作行之年也。一晃，我都这么大了，祖父也已经过世那么久了。
　　我的名字得于《雪中悍刀行》，我对徐凤年本人也是万分敬仰钦佩。现在的北凉道四州就是从前北凉王的封地，大致没有变化。现在的人已经很少提起北凉王了，毕竟几十年过去了，这样一个无关紧要的称号人们早就记不得了。
　　老王徐骁，辽西人，人称“人屠”。十岁杀人，少年从军。崛起于春秋混战，发轫于行伍之间。离阳一统天下，徐骁独下六国。北汉南楚，东越西蜀，兵戈指金池千里，铁蹄踏天下半壁，官拜大将军。等到天下一统，四海平定之后，又加封为北凉王。从此北凉王为天下镇守西北门户，为黎民阻挡北莽南侵。大将军这天下长城，一当就是二十年。
　　新王徐凤年，徐骁长子。少年纨绔，青年发奋。当初北凉王年少时，是西北有名的纨绔。因为不愿迎娶隋珠公主，十六岁上外出游历，一主一仆劣马黄酒三年六千里。待游历结束重返北凉，始学武艺，终成刀术。后以战死王仙芝，成为天下第一人。期间，北莽阴谋勾画，渐萌南侵之意。凉王独以北凉铁骑甲士，一战于葫芦口、再战于流州，最终决战于据北城外，北凉兵士众志成城，中原宗师殒身不顾，终是不教胡马度阴山。
　　方徐骁兴师而南，战驸马于东越，败兵圣于西楚。袁左宗死战妃子坟，褚禄山千骑开蜀道。有赵长陵、李义山、陈芝豹之伦谋划于内；齐当国，燕文鸢之属效死于外。其兵戈所指，此天下莫能与之争。其气势之盛，四海之精英孰能御之？至于徐凤年新败王仙芝，顿为天下武道第一人，举世为敌我无敌，武道之极矣；高居藩王之尊，有四州百万之封地，剑履不趋之殊荣，荣华之极矣；率北凉铁骑三十万，当北莽百万虎狼于国门之外，负天下黎庶之安危，意气之极矣。更何况那时的徐凤年，壮年而已，人之在世之极，无过于此矣。
　　可是他们困顿的时候，也同样无可奈何。徐骁气势再盛，也护不了当时还不是王后的吴素。为离阳立下不世之功勋，死后却得谥“武厉”。徐凤年有阻挡强敌，守护疆土之功。若使北莽攻破北凉，整个中原恐怕就不再是离阳的了，所以说北凉王有匡扶社稷之大功也不为过。可是结局又如何？距离北凉将士浴血奋战不过短短几年，一队天使急急出京，圣旨煌煌而至，说要收回北凉的封爵，说要拿走北凉的兵权，甚至还说要北凉王奉上人头！北凉王奋战得脱，直入皇宫，据传与先帝交谈几句便飞身离去，后逍遥于江湖间。可知人生机缘富贵，颠覆凡几，翻转繁急，不过忽然而已。
　　我家亦是如此。我家在蜀中原本并非大门大户。祖父写作《三尺》之后，名噪一时，登门者、交游者也渐渐的显贵起来，家道随之而升。但是诸大父皆无官身名望，所以家道繁华并无根基。迨祖父病故，诸大父异爨，又生出诸多嫌隙，家道就此中落。家父那时做茶叶生意，勉强维持我们一房还算体面的生活。又过几年，我也已经长大成人，便随家父一起做生意。生活飘忽不定，离乡去里，转徙于江湖间，就经常会想家，想起祖父。我年幼时，祖父常常在家中雪行亭内陪我诵读诗书，教我写字，跟我下棋，给我讲讲剑法，讲讲年轻时的故事。可是雪行亭已经在分家之时，和老宅一起被卖掉了。
　　后来，家父的生意渐渐有了起色，却没有回归故里，而是攒钱在成都置办了新宅子，我们一房便搬了过去。再后来父亲渐渐的干不动了，过去了含饴弄孙的日子。我从那时开始接手生意，直到现在我都有些力不从心了。我们一家的日子越过越好，可我离旧宅子也越来越远了，我再也没回去过。
　　我还是很思念着祖父，思念那个白胡子的老头。
　　正熙二十一年冬','','',10003,10007);
insert into ds_book values(null,10008,'你有过那样的感觉吗？
　　你觉得一口气就压在心口，你好想放声咆哮，用力呐喊。你好累，贼疲惫，什么都不想干，连躺着都觉得累。你觉得有气无力，觉得身不由己，觉得自己弱小而无助。你觉得自己面目可憎，恨不得扇自己几巴掌才解气。哎，从什么时候开始，被日复一日耗光了锐气，被鸡毛蒜皮压的透不过气，变得面目全非了呢？
　　以前跟随先生读书的时候，日子是那么简单却充实。我愿意把那样单调的日子看作充实，因为现在的我真的太空虚了。说它简单，说它单调，是因为那时的我并不需要操心太多的事。考取功名是那十几年我一直在做的，也几乎是唯一要做的大事。那时我做的每一件事都知道是为了什么，为什么要早起，为什么要重复的学习。两次会试不中，我离开了学舍，跟父亲做起了生意，开始要一个人打理生活。我突然变得自由了许多，我可以自己管自己的账目了，我可以有许多空闲的时间，我可以不用在每天对着诗书礼易圣人文章了。可是，我根本没有我想的那么快乐。
　　也不能说一点都没觉得快乐，至少刚开始的一段时间我觉得快乐极了。可是慢慢的，我开始感觉空虚了，越来越空虚了。我开始找不到生活的意义了，开始在做事之前总要问一句为什么了，开始变得堕落起来了。我喜欢上了逛青楼，流连于烟花巷陌，睡过江南好，走过春风十里扬州路；我不知道银子来的有多难，却爱上了千金散去的潇洒豪迈，做起了解金龟换酒、权典青衫的风流；我变得深入骨髓的懒惰，不愿意离开房间，不愿意出门走走，对溪亭日暮、小园香径提不起兴趣；我没看过几本新书，连以前好像刻在骨子里的圣人文章也忘得一干二净，彻头彻尾成了个大俗人。连我都讨厌这样的自己。
　　我曾于某个夜晚辗转反侧，我厌恶这样的自己，我憎恨这样的自己，我咒骂这样的自己，我甚至想杀了这样的自己。可笑呀，从前我只会为学业有损而辗转反侧。我实在对不起曾经努力的自己。
　　我告诉自己，不能再这样下去了，我要开始努力，我要救赎自己、改造自己，至少找回以前的自己。我为此认真地制定了详细的计划，精细地设想每一天的生活，不断地鼓励自己坚持下去。当我这样做了几天之后，我觉得好累。就只是尽力模仿以前的生活，模仿我活过的生活都让现在的我觉得疲惫不堪，觉得心力交瘁。我鄙视这样的自己，却也开始琢磨为什么。渐渐的我也咂摸出些滋味，以前的生活简单到所有精力都花费在一件事上，现在的生活却变得如此琐碎，零零散散的牵扯着我的精力，好像要把我活活的撕裂开。生活，从诗情画意变成了眼前的一地鸡毛。
　　生活，生下来，活下去，听着就好累。很多事，非经历不能体会，正如直到现在我才明白，活着，或者说舒适的活着，是多么艰难的一件事。活着本来就是需要刻意完成的，是要付出劳动和努力的。吃喝，穿衣，走动，这些司空见惯的事都需要我们主动去做，去为此而消耗和挣扎。衣来可以连伸手都不用的，饭来连口都不必张的人，大概只有植物人吧。可如果人活着就只是为了活着，简单的为了生命的延续而已又有什么意义呢？又或者向我现在这样，困了睡觉饿了吃饭，像一只会主动远离盐水的草履虫一样靠着应激性活着，又怎么对得起几十亿年来生物为进化而付出的牺牲，几千年来人类为构建人类社会而付出的努力呢？活着本来就是应该吃苦的，哪有人生下来就应该舒舒服服的呢？你的光鲜亮丽，肆意旷达，还不是因为有人帮你承受了本应由你承担的苦痛和责任吗？但早晚还是要自己来吃苦的。
　　不过，虽然我说的冠冕堂皇，头头是道，但我的详细计划依旧没有持续太久。我做事总是在心血来潮时一口气做起来，之后能坚持多久就坚持多久，于是总爱犯三分钟热度的毛病。人活一口气，我的这口气就有点短了。不过还好，我有一个一直在跟懒惰的身体拧着干的年轻的心，它流淌着热血和激情，所以我心血来潮还是挺频繁的。这也是勉强使我欣慰的地方了，愿这颗心能永远这样年轻下去。
　　正熙二年除夕','','',10003,10008);
insert into ds_book values(null,10009,'宁为百夫长，胜作一书生。
　　今天收到了橙儿的家书，里面提及从小一起玩到大的温家大公子要从军去了。看到这个消息时，我一下子愣住了，以为自己看错了，我从来没想过他会和参军扯上什么联系，但事情就这样发生了，他走的很匆忙，我现在身在异乡，应该是没有办法当面为他饯行了。
　　说来我好久没见过他了，他年长我几岁，小时候一起玩的时候也很照顾我。启蒙读书之后，我们渐渐开始各忙各的。再后来我开始跟父亲经商，四处漂泊见面的次数就更少了。我又不是什么爱给人写信的人，所以慢慢的联络也就少了。
　　但我自认为我是了解他的呀，所以我实在想不通他怎么就突然想起去参军了。，他的学业好我太多，先生对他赞不绝口。就在去年，他的新作《北凉赋》还得到了蜀中名家的交口称赞。他一时风头无二，成了来年会试众望所归的会元争夺者。可就是这样，他还是选择去从军了。不是说从军就是不好，而是明明只要他好好准备一下明年的会试，几乎可以稳稳地赚得功名，高官厚禄可期，前途一片光明。而选择从军，艰辛劳苦暂且不说，之前二十几年的圣人章句再无用处，一切都要从头适应。而且成了士兵是要上战场的，虽然天下承平十几年了，但谁也说不好明天离阳和北莽会不会再次开战。
　　所以他为什么从军？为了饷银？为了名声？还是为了别的什么？温家在老家也是小有名望的名门了，要说他家大公子为了区区的几个饷银跑去参军，那实在是可笑至极了。就像前面提过的，他在蜀中已经声名鹊起，那还需要用这么危险的方法赚取名望呢？那我能想到的就是他或许是为了理想吧，为了文人的家国情怀和书生意气吧。我相信每一个读过“男儿何不带吴钩，收取关山五十州”的翩翩少年，都曾被这句诗感动，为之热血沸腾。哪有没梦到过仗剑行侠的少年呢，哪有没想过经世济民的书生呢。只不过后来见的多了，走不动了，梦也小了。
　　能在正确的时间知道自己想要什么，是一件多么幸福的事呀。“当时只道是寻常”，人总是后知后觉，只有在错过了，在失去了以后才知道自己真正想要什么。有的人为功名奔走一生，到头来才发现一生所求不过妻儿在侧温粥炉火。有的人潇洒肆意快活半生，到头来还不是落得凄凄苦苦孤孤零零。最可怜的是那些从来没有弄明白自己最渴望的是什么的人。他们像在大海上迷失了方向的小舟，越是努力挣扎就越是离岸越远。二十几岁的年纪，温兄知道了自己想要去从军，徐凤年知道了自己想要学武做武道第一人，而我真的还不知道自己想要什么。也许我也是那沧海一舟吧。
　　我最近总在想，眼下的生活是我想要的吗？答案总是模棱两可。是呀，当生活完全不如人意时，很多人都勇于尝试改变。可是更多时候，生活总是差强人意，你对这里很不满意但那里又让你觉得欣慰。对于这样的生活，你是否有勇气选择全部推到，重新来过。我曾经许多次的梦见自己勇敢的这样做，可是梦醒过来，现实中的这个自己还是选择了安慰自己，暂得以偷生。就这样活下去吧，不是也挺好的吗？
　　人的一生是选出来的，我们总是在选择，并为做过的选择承担着结果。我敬佩那些敢于做出看似不合常理的选择的人。因为他们做出这样的选择总要面临旁人的否定与质疑，必须有敢于和别人不一样的勇气；因为很多选择了合理选项的人根本不知道他们想要什么，合理的选项是他们的救命稻草，从抉择的深渊中拯救了他们；也是因为看似合理的选项往往让做选择的人也变得越来越合理，变得越来越普通，了无生趣耳。所以我敬佩他。
　　我好像能看见，在饯行宴上，严胖子恐怕又是满嘴的肥肉却非要和温兄抱抱才肯罢休吧，李家那个腐儒怎么也得憋出一首酸诗吧，不对，怕是三首打底了。还有老孔，恐怕又要板着脸一本正经的坐在那一言不发，其实心里难受的好长时间缓不回来。本来还应该有一个我的，也很伤心难过了几天，也说了几句漂亮的场面话，也希望他一切顺利、得偿所愿。就像很多人做过的那样。
　　千军点将鼓瑟稀，战起，年少何须敛猖狂。
　　阳嘉二十二年八月朔日','','',10003,10009);
insert into ds_book values(null,10010,'  州漠，西北内陆最大的沙漠，干涸之地，荒无人烟，更别提养尊处优的修仙子弟们。
　　
        　　戈壁巨石上盘腿坐着一老一少师徒俩，老者高而枯瘦，脸上沟壑纵横，目中精光得证此人并非凡人；少年则皮肤通透如白玉，沙漠戈壁的烈日丝毫没在他身上留下痕迹，天赋异禀的凝玉体，百毒不侵，刀剑无伤。
        　　
        　　与止步沙皇封号的师傅不同，仙侠一道上，徐道来注定能走更远。
        　　
        　　“师傅师傅，我不想去学刺客的本领，我要用剑，剑是兵器中的君子，气如虹，光明——正大！”
        　　
        　　徐道来幼时，徐家遭受灭顶之灾，徐问临终托孤，将独子徐道来交给仆从，不远万里投奔沙皇黄极，仆人抵达龙门客栈时力竭而亡，得亏天生凝玉体，还是婴儿的徐道来才撑了过来，襁褓中的血书，历历在目。
        　　
        　　玉面将军——徐问，为烽火王朝开疆辟土的大功臣，竟然奸相被扣上弑君的帽子，诛了满门，仅遗一襁褓中的幼子——徐道来，这世道，可笑，可笑。
        　　
        　　黄极带着徐道来躲躲藏藏已经有十六个年头了，凭他沙皇的本事，自保不是问题，难题是如何在追杀中护得这个小子的周全，如今终于到了分别的时刻，他另有大事谋划，也给徐道来安排好了去处。
        　　
        　　黄极动了动失水而发白的嘴唇，“你说说，仙侠之道，是这个仙字重要还是侠字重要？”
        　　
        　　徐道来抖了个机灵，“那当然是仙字重要！仙就代表我们异于凡人，承担着更大的责任！”
        　　
        　　黄极奇怪这小子怎么老是不开窍，经韬伟略的玉面将军咋生出这么个笨蛋，“道理差不多是这个道理，仙侠之意，能力强大异于常人的侠者，而侠之大者为国为民......”
        　　
        　　“师傅师傅，你说这么一大堆乱七八糟的干嘛？和我不想去学刺道有什么关系吗？”，天真稚童总是对大人的说教尤为不耐烦。
        　　
        　　“你错了，有联系，仙侠和剑道刺道是一个意思，习剑道人亦有狡诈恶徒，习刺道之人亦有忠良义士，武器、方术不过是能力罢了，是否为侠还得看你的内心”','　　
        　　老头儿说教了半天，不过就是不想让自己去学剑罢了，看这些年老头儿东躲西藏的样子，估计在外也得不少仇家，自己跟着受苦，不明身世真相的徐道来颇为不满。
        　　
        　　正午，沙漠青烟起，一行坨队停脚在不远处歇息，几个脸上纹着特殊文字的壮汉盘坐在地喝水解渴，烽火国的炮纹。
        　　
        　　炮纹，死刑犯才会刻在脸上，一般都是押在炎狱，几乎不可能逃脱，除非作为死侍奉命于王公大臣，这几人的气息躁动，来者不善。
        　　
        　　巨石上的黄极突然睁眼说话了，“徒儿，该起程了，为师还有为师的路得走”，说罢，将早打包好的行李扔给了保持盘坐的徐道来。
        　　
        　　“诶...师傅，不是说好，入夜时分出发吗，现在这般燥热，我往哪儿走啊”，不知道这小子是真傻假傻，仇家当前，老头儿没管轻重一掌将他击飞了出去。
        　　
        　　“嘿，臭老头儿！别想小爷给你带酒回来了！”，徐道来想要用身法稳住掌劲，拔地而起的一层层黄沙却将他推向更远处。
        　　
        　　良久，徐道来摔了个狗吃屎，面前是破破烂烂的一家客栈，招牌旗子上写着四个大字——《龙门客栈》。
        　　
        　　千里之外的这边，沙皇黄极从巨石上跳了下来，拦住想要追击徐道来的坨队壮汉四人，“那么几位是单挑还是一起上？”
        　　
        　　说时迟那时快，仅仅行者的几个壮汉刚摆出动手的架势，就已被层层卷起的沙尘吞没，骆驼惊慌失措，奔逃而去。
        　　
        　　黄极好几年没有动手了，一招流沙使得依旧出神入化，几秒功夫沙平风静，没有打斗的迹象，几人早已尸骨无存。
        　　
        　　“嗯？不好！”，黄极连连后退，几年没有战斗，终究还是松懈了，脚下沙土松动，一人从流沙中蹿地而出，空中转身，抛出暗器。
        　　','        　　“无相尊者太极仙，八卦帝王五行皇，凡人至强方行者，哪敢与仙争高下？漠北沙皇黄极前辈，请指教了！”，这个壮汉行者属性乃是五行中木，属相克制，自然能挣脱黄极生疏的土属性攻击。
        　　
        　　黄极身前筑起的沙质防御壁缓缓降下，坚韧如钢，“胆量不错，小子，真就甘心为奸相逆党卖命？”
        　　
        　　壮汉摸了摸自己的油光锃亮的光头，“这天下还有人在乎？我也有自己的苦衷罢了”，说罢，壮汉竟然掏出一颗红色爆炎丸服下，一种增强自身但反作用极大的禁药。
        　　
        　　黄极摇了摇头，爆炎丸是当年烽火帝国远征时研发的军用药物，一旦服用，短时间内实力爆发，行者可达皇者级别，皇者亦可达巅峰，让士兵在战场上勇猛无匹，但过后经脉尽毁，没有回头路，“是个汉子，留下你的名字”
        　　
        　　“烽火帝国凉城张申”，从炎狱里放出来，这次自杀性质的任务成功了，他便能回到凉城老母身旁，几年前因抢劫，失手杀人入了狱中，家中八旬老母不可知安好，心中暗暗感叹，人生没有回头路。
        　　
        　　“烽火帝国沙皇黄极”，也是很久未曾报过自己名号了，黄极眼神中有精光，大喝一声，“起！”
        　　
        　　即便木克制土，两人实力相差巨大，即便强行使用爆炎丸提升实力，黄极还拥有着极大的地理优势。
        　　
        　　一层层沙浪拍打而来，张申扦插之术破之不得，毫无办法地任凭身体在沙海中被撞击拍打，竟还是强撑了数个回合，终是奄奄一息，皮开肉绽，四肢可见白骨。
        　　
        　　黄极怅然离去，这个后生行者，虽然不强，意志力倒值得徐道来那小子学习，“唉”
        　　
        　　黄极不会猜到，这几人就是被派来送死的，为了确认黄极和徐道来的位置，带着记录符印的骆驼早已逃之夭夭；
        　　
        　　张申更不会料到，任务完成后放自己回家与老母团聚是一个骗局，像任务字面上的意思，这是一个送死的任务；
        　　
        　　徐道来缓步走入《龙门客栈》，烽火帝国帝都相国府内奸相和国子监蔺夫子下着围棋，皇宫内皇帝酒池肉林。',10004,10010);

insert into ds_book values(null,10011,'徐道来要去凌州的天刺盟，就不得不经过龙门客栈，这是州漠路上唯一可供歇脚和打探消息的地方，鱼龙混杂。
　　
        　　“哟，客观，打尖儿还是住店？”，店小二热情上来招呼，肤白英俊的徐道来，一看就不是州漠的人，估摸着这小子应该是个油水客人。
        　　
        　　徐道来将行李放置于卓上，“甜兔肉、茨木果、猛虎鞭如何？”，这是几道菜名是暗语，茨木果酸涩难以下咽，常人怎会点来品尝？
        　　
        　　店小二皱了皱眉头，“客官还有什么需要吗？”，很长时间未有人来打探天刺盟的位置了，
        　　
        　　“再安排一间房，小住一晚”，徐道来将两枚金子递给店小二，龙门客栈里，办任何一件事都得1碎金，这也就是为什么在荒凉的州漠，龙门客栈也能存续的原因。
        　　
        　　“好咧，客官，稍作歇息，马上上菜”
        　　
        　　徐道来一袭黑衣，静坐喝茶，并未引来多少人注目，他反倒是打量起龙门客栈的众人来。
        　　
        　　龙门客栈在天下九州有多家分店，不仅仅是烽火帝国，沧影帝国，甚至塞外番邦都有其存在，可以说是明面上最大的情报组织，守规矩，守秘密，这里只要1金币，就能得到你想要的任何消息，不知幕后主使究竟是谁。
        　　
        　　州漠这家龙门客栈，占地几亩，破烂狭小，倒是五脏俱全，店小二数个，皆为行者之列，仅有一人大成圆满随时可突破为五行皇者，正是刚刚与徐道来对话的店小二已目泛精光，皇者之兆。
        　　
        　　丰韵妖娆的老板娘在招呼着几个身着烽火卫官服的佩刀男子，“不知几位官爷来州漠办什么差事儿呀”
        　　
        　　烽火卫纪律森严，佩刀三人面无表情，一人冷冰冰开口，“无可奉告”，即便不说，几人目的已很明确了，三人身旁戴着手脚镣铐的女子，就是此行的目的。
        　　
        　　“这位姑娘是？”，老板娘伸手想要触碰被铐起来的姑娘脏兮兮的脸颊，却被烽火卫一手拍开，不懂事的年轻烽火卫拔刀而出，“你找死!臭婆娘！”','       　　
        　　烽火卫余下两人心都提到了嗓子眼儿，《龙门客栈守则》——客栈之内不得动手。
        　　
        　　看似妖娆无害的老板娘拍桌瞬间，风自无处起，一碎刀，年轻烽火卫玄铁佩赤刀瞬间裂为数段；二破镣铐，烽火卫看护的姑娘手脚镣瞬间破开；三上菜，碎刀为刃，将桌上完整烤羊切位数段，三阵风过后，众人惊愕。
        　　
        　　年轻的烽火卫吓得尿了裤子，三人中的百户赶紧起身扇了年轻烽火卫一巴掌，“在下凌州烽火卫百户，岑青，给老板配个不是！”，在龙门客栈你可以污言秽语，但绝对不能动手，任你诸天神佛，达官显贵，在这儿死了，痕迹都找不到，世上最大情报组织真不是虚名。
        　　
        　　“哟，百户大人，好大官威啊，放心，在龙门，不用拷着犯人，住店容易，但没我们允许没人踏得出去这个门儿”，五行皇者之列的老板娘话中有话，囚犯出不去，没允许，烽火卫也别想出去。
        　　
        　　百户岑青额头上冒出密密麻麻的汗珠，拱手低头，“我们当然放心，放心....”
        　　
        　　一旁的徐道来性格跳脱，看戏不怕麻烦大，拍手叫好，“好，好，好，铐一个弱女子就是烽火卫的本事吗？下饭，下饭！”
        　　
        　　不服气的烽火卫余下俩人手握刀，刀在鞘，老板娘则挑了挑眉，“臭小子，别让我们在外边儿碰着你，有你好看的！”
        　　
        　　菜上齐了，徐道来夹起一块儿兔肉，“小爷我随时恭候！”，兔肉中夹杂着纸条，上面是前往凌州天刺盟的地图，以及暗号和接头人。
        　　
        　　“猩红月，飞鸟图，一点白苍，折刀手刀宜长”，猩红月和飞鸟图容易明白，凌洲午夜时分月色因红色雾气而猩红，飞鸟图是暗号来确定地点。
        　　
        　　不解的是，一点白苍是什么意思？折刀手刀宜长应该就是自己的接头人吧？想着，徐道来戳起了一块儿兔肉咀嚼起来，“管他的，船到桥头自然直”
        　　
        　　入夜，一袭黑衣的徐道来，盘坐在床，打坐练功，运行周天，跟了沙皇黄极十六年，他并没有学到土系控沙的多少本事，由于天生家传的凝玉体，他更适合八卦级别的功法，玉生于火，藏于土，养于水，纳天地之气。
        　　','        　　可惜徐家家传的功夫早已随着灭门而失传，不知身世的他，十六岁本该跻身于五行皇之列。但实力却一直压制在行者巅峰，待到出现合适功法一举突破。
        　　
        　　“臭老头儿的控沙决不完全传授给我，怕是饱了徒弟饿死师傅吧？分明沙皇都已经那么厉害了，非说什么我不适合他这套功法，唉”，他分心之际，感到脖子后面一阵酥麻，一双芊芊玉手搂住了他的脖子。
        　　
        　　耳畔传来如兰吐息，自打徐道来一进店，老板娘就看上了这个俏后生，州漠人来人往，皆是些糙汉子，哪儿生得如此俊俏小哥？
        　　
        　　“公子可是要前往凌州天刺盟？”，徐道来吓得一个机灵，从床上滚落下来，“你...你干嘛，我可要叫了啊”
        　　
        　　老板娘毫无顾忌，将徐道来压倒在地，附身紧贴，“你叫啊，我就是州漠龙门客栈的老板，这里我最大，这里我就是天”
        　　
        　　臭老头儿跟自己说过，童子身不能破，一旦破了，修炼功法将更为单一，肾主阴，心主阳，破了身子，肾气外露，阴阳失衡，到达太极仙水平之后，他将只能修炼阴系功法，难以突破。
        　　
        　　“老板娘...你看我这身子也不干净，要不改日吧？”，老板娘婀娜多姿，讲道理不算亏，但徐道来怎能在此破身？
        　　
        　　“臭小子，少跟老娘在这儿花言巧语，瞧得上你，是你的福分”
        　　
        　　看来事到如今，老板娘是非要霸王硬上弓了，徐道来壮了壮胆子，怒喝一声，肉眼可见的全身肌肤玉化，通体泛着白光。
        　　
        　　“凝玉体？怪不得用了迷香还有反搏之力”',10004,10011);
insert into ds_book values(null,10012,'老板娘一改方才霸道面色，拍了拍裙子无奈起身，“既然是那位的后人，今儿奴家就放过你吧”
　　
        　　徐道来错愕，臭老头儿不是说自己是小渔村出生无父无母，天赋异禀被他选中为徒的吗？什么后人？“等等，你知我身世来历？”
        　　
        　　老板娘挑了挑眉毛，想起十六年前，徐家仆人不顾经脉，连续狂奔三日抵达龙门客栈抱着襁褓中的徐道来的场景，是这小子。
        　　
        　　既然沙皇黄极都没有告诉他身世真相，那么自然也轮不到自己来说，“龙门客栈守则，勿妄言”
        　　
        　　徐道来赶忙从行囊中掏出1颗碎金，“不是说一碎金交换一个情报吗？告诉我，这金子就是你的了”
        　　
        　　老板娘一颦一笑，拿过徐道来手中的碎金放入怀中温柔乡，“十六年前，你被一个旅客抱来投奔沙皇黄极，我知道的就这么多了”，说完便转身下了楼，不给徐道来追问的机会。
        　　
        　　徐道来心中万千疑惑，辗转反侧难以入眠之时，听到隔壁传来的吵闹声，正是白日楼下三个烽火卫的声音。
        　　
        　　“大哥，州使让我们来抓这个女人回去意欲何为啊，同行十六人死了十三个兄弟了，真想宰了她”
        　　
        　　“诶，这妮子姿色尚佳，宰了倒不如让哥儿几个先好好爽爽”，赤刀被老板娘折断的青年烽火卫倒真是个好色胆小之徒。
        　　
        　　百户岑青举起酒杯一饮而尽，重重掷在地上，霸气横生，“你个二球，懂啥？这妮子可是上好的极阴炉鼎，出生年月时辰皆为极阴，一路上多少修炼的人和妖都垂涎欲滴，咱虽然死了那么多兄弟，这妮子一旦送达州使府之中，荣华富贵我们能少了？”
        　　
        　　“可是州使要这个女人来干嘛呢，他区区凡人行者，论武力，咱兄弟三人都...”
        　　
        　　岑青一耳光扇到了年轻烽火卫的脸上，“少在说这样的话，尤其是在旁人面前，是要掉脑袋的！”','      　　
        　　“州使自然是用不上，这妮子是作为献礼送给帝都相国，令狐经国大人的，到时候我提了千户，你俩提了百户，女人要多少有多少，紧要关头万万别坏了事儿！”
        　　
        　　听着烽火卫三人的对话，徐道来暗暗寻味，原来如此，早听臭老头儿说过，当今烽火帝国的相国令狐经国为黄狐修炼化人，奸诈恶毒，迷惑君主，扰乱朝纲。
        　　
        　　未曾想修炼手段更是下作，以形补形，以气补气，既然要补极阴之气，莫不然令狐经国已达到太极仙的水平？
        　　
        　　一心立志行侠仗义的徐道来怎能错过这次劫走奸相炉鼎的机会？既不能江湖仗剑还不许他行侠仗义？根据白天客栈里三人和老板娘交手来看，三人水平不过行者，自己行者巅峰还会怕三人不成。
        　　
        　　可惜了龙门客栈的规矩，店内不得动武，否则他此刻就像在墙上踹个窟窿，劫人而去！
        　　
        　　本被满心迷惑搞得无意睡眠的徐道来提起了精神，盘坐在床运行起了控沙决心法第三重，明日便是他成名之时！
        　　
        　　次日清晨，为避人耳目，烽火卫三人悄悄带着满脸污垢的女子早早上路，女子又重新被束缚上脚链和手铐，关节处可见摩擦出的鲜红血迹。
        　　
        　　三人竟不知，隔壁一袭黑衣的徐道来正悄然跟在其身后。
        　　
        　　朝阳，孤烟，大漠，快马，百户岑青他们去往的方向也是凌州城，看来他们口中的州使便是凌州州使——陈锡知。
        　　
        　　徐道来御沙而行，脚下沙尘如浪，坐拥极大的地利优势，行者巅峰的他运用控沙决赶路毫不费劲，正好通往凌州，要去天刺盟的他也省了事儿。
        　　
        　　傍晚时分，就在快要出沙漠的时候，他拦住了烽火卫三人的去路，坐拥地利，不用白不用，即便出了沙漠要打败三人劫走姑娘也不是难事，但何不借助地利一举拿下？
        　　岑青拉住受惊的马儿，拔刀未出鞘，“来着何人？”','      　　徐道来也不遮面，他就是想借劫人之事来扬名，初入江湖的他不可知，人怕出名猪怕壮啊！
        　　“你徐爷爷！识相的放下姑娘，跪地磕头求饶，兴许爷爷我饶你三狗命！”
        　　岑青算是凌州烽火卫的老油条了，混到百户，除了硬功夫过得去，还得识时务，他心里盘算着，这小子在客栈的时候不露声色，看吐息该是行者巅峰，为何能看上这个极阴炉鼎，是哪路来的高手？
        　　“你可知此人是凌州州使陈锡知献给当今相国的寿礼？”
        　　徐道来不耐烦大声喝道，“当然知道，爷爷我今儿就是给奸相奸臣添堵的！”
        　　“好，既然你知道，就别怪我们兄弟三人不客气了！”
        　　岑青和另一人拔刀而出，迎面朝徐道来飞劈而来，另一位折刀的烽火卫则护在污面女子身旁，保持警戒，正好，徐道来并没有掠人逃走的意思，既然选择沙漠作战，就打算正面强攻了。
        　　徐道来纹丝不动，周围沙地暴起，如一个个泉眼涌出，沙砾漫天飞扬，接下岑青两人的攻势。
        　　接着徐道来双臂大开，将双手置于前，紧拍，啪得一声，随着双手合十，满天沙砾合成硕大双手虚影，拍苍蝇般，眼看将岑青二人压于掌中。
        　　“大哥小心！”，折刀的年轻烽火卫看呆了，紧急之下大喊岑青，
        　　“哼，我还当烽火卫有多强，走狗罢了！”，说时迟那时快，俩烽火卫已消失于沙手虚影之中。
        　　
        　　沙尘虚影中传来一声闷哼，“哦，是吗？”，快刀映光，夺人眼目，岑青五行属金，修刀法，锋上添锐，金石可开。
        　　将受伤的烽火卫扔到同伴身边，满身是血的岑青怒了，手中赤刀刀身变得硕大起来，闪着红光，嗡嗡作鸣，似乎刀体会到了主人的怨气，亦变得霸道起来。
        　　“你的刀？”，徐道来不解，玄铁打造的烽火卫赤刀，怎得如此威力，散发出恐怖的锐气。
        　　岑青手持赤刀，刀身上开始浮现大大小小的泡珠，高温令周围空气都扭曲了了，重铸一般，“你认为在沙漠与我作战你坐拥地利优势？你错了，土生金，我同样有着地利的优势”
        　　还没来得及反应，岑青彷佛变了个人似的，身法迅猛，一招横批过来，其势惊人，徐道来用沙壁阻挡，竟被赤刀切豆腐般破开，来不及躲闪，刀身在他脸上刻下一道白痕。
        　　“怎么回事？”',10004,10012);
insert into ds_book values(null,10013,'谱玄年间，八月天，西北大地上有一处密云高原，高原往北以下的平坦之地不知在何年依山而筑起一座城，名为天脊城。

再往北走，就是迷雾丛生的北域。

天脊天脊，天下脊梁，来自北方未知的威胁与恐惧时刻相随，中原那沃野千里之地需要这座城来阻隔。

在中原，与人争，不过生死斗，而在北方风沙腹地，却是恶灵族的领地，也是整片洪流大陆所有诸侯忌惮的禁忌。

是说这南北之间，不仅仅是跨越了生死的不同。

天脊城城民有约五十万人，与中原腹地的大镇规模差不多。

城民原是居无定所的游民，民风彪悍是天生的马上战士。爱喝奶酒，性情刚烈，骨子里有好战的热血。

世代在北域繁衍生息的游民，原本过着骑马塞外牧羊赶牛与世无争的生活，尽享这片大地给予辽阔的遍地青草与绿水白云，直到恶灵族的出现打破了这份孤风的祥宁。

当所有人都有一个共同的敌人或是共同的目标，那么他们就会紧紧相拥互相取暖，近百年前筑起的天脊城才给了这群淳朴的游民继续在这片大陆边缘生存的机会。

近日整片北域暴雨大作，天脊城内各处湿漉不已。

在城内最南边依山的高势处，修有一座名为白灵岛的城主府邸，外人都不知其故，为何要把府邸称为岛。

近观之后才发觉，原来府邸周围一圈是类似于中原地区护城河的设计，三十米宽度的江流把府邸环抱，形同如一座世外岛屿。

虽说是江流，但水深才过膝。

府邸前立起的吊桥直通“江边”，可放下升起，以两把交叉在一起的长枪为底图的“秦”字大旗飘荡在府邸城门正中间。

岛屿四周高墙筑起，城上带甲军士林立，这般外在造型与其说是府邸，更不如说是一座瓮城。

府内有间名为养生院的庭院，虽然不大却五脏俱全。院中一口小湖，湖中有座湖心亭，配以假山断桥为衬托。

小院里里外外种满了各种牡丹、梅花、君子兰、富贵竹各式花品以及元参、天麻等药材，使得满园皆花香药香，不经意间路过此地也能令人心旷神怡。在荒芜的边城，能有这么多的鲜花和药材也实属罕见。

院中一位身材修长的侍女，撑着伞正微微弯腰不停打理一些因为这场暴雨而凋零的落花。

侍女漆黑的长发顺势垂下，还需不时的撩起秀发。看模样约莫着二十岁左右，举手投足间动作十分优雅，远看就像在欣赏一张《雨下仕女图》，近看之下精致的瓜子脸很是清秀，肤色浅白配着如月的双眸，符合许多才子书生梦中佳偶的形象。

“公子，这暴雨来得太凶了，院子里好多没来得及收起来的花都被打伤了，”侍女声音温柔如水，隐约带着一股自责的腔调，责怪自己收拾的时候慢了吧，既而鼓起小嘴儿气给自己看。

“咳咳，花开花落都是命，这就是劫数，不怨人，也不怨天，娇气的就该被淘汰，带点傲气的都完好无损，不影响，青婵没事的，咳咳，”小院的屋内传来一句夹带着咳嗽的声音，声音算不上稚嫩但也并非成年男子，约莫有个十七八岁。

那位被称为青婵的侍女年龄比屋内公子大了两三岁，但公子还是喜欢直呼其名。

听到回应，侍女青婵赶忙小碎步跑进屋中，见脸色苍白的二公子秦萧楚正无力的瘫在窗边听雨。看到这幅景象，侍女青婵虽然脸色不悦，却也不多说，而是拿起床边的貂皮披风套在公子身上。

青婵知道公子自出生起便身怀顽疾，遇到暴雨暴雪这般的天气病状更会加重，生怕受了风寒。

身怀顽疾也造就了公子画地为牢十八年的生活，院中栽植的花药都是为了养护公子的病体而种植的。

这顽疾的出现使得公子常年话语较少，也不知是感叹老天的不公还是性格谦卑，或许是已经没有过多的精力去动怒、去顽皮。不似那长公子秦御刀，从小顽劣。

青婵倒是经常听见城主训斥其带着小魔王秦三岁在城中闯祸，对此，公子每次都是淡然一笑不做任何评论。','
虽然暴雨暴雪带来的湿气入体非常难受，但二公子却还是喜欢赏雨听雪。青婵起初还会强势的要求二公子在床上好好躺着，随着二公子用动容的微笑作为反抗，青婵也就没有抵抗力了，反而会小脸一红，每次这样还转过头去不让二公子看见自己的羞态，后来不论什么也就都依着二公子了。

........

“三岁，待会给你萧楚哥哥再表演几个后空翻，要是还把萧楚哥哥逗高兴了，今晚给你最喜欢的糖饼子吃。”

“呵呵，好，好。”

被称为三岁的小胖墩傻呵呵的回应着，长公子秦御刀撑着伞走在白灵岛的青石板路上，弯腰给三岁擦了擦嘴角流淌出来的口水。

“咚咚咚，二弟，大哥我来看你了。”

敲门声伴随着秦御刀洪亮的声音从小院外传了进来，说曹操曹操到。

屋中的青婵讨厌这位浮夸顽劣的长公子是府内人尽皆知之事，此时虽然一脸不情愿，但还是动身去打开院门。依旧在窗边赏雨的秦萧楚心知肚明，露出浅笑。

秦御刀青袍加身，倘若没有在城中的那些所作所为，还是和二公子极为相似的。同样的脸孔菱角分明英气勃发，宛若翩翩君子，作为同胎双生子的兄弟二人虽谈不上帅气逼人，却实属耐看之人。

秦三岁并非三岁孩童，而是叔父秦百川早年间于北域深处收养的义子，年龄估摸着也有二十五六了，然而身材与才智却始终如同三岁孩童，故而被秦百川取名秦三岁。

由于心智不熟的缘故，秦三岁可说是天不怕地不怕，但还是有那么一怕一喜，最怕义父秦百川，最喜与长公子一道兴风作浪。

说是一道，却是经常被秦御刀用来逗乐，而秦御刀自己每次被逗乐后，傻三岁也会跟着呵呵的傻笑。也时常被秦御刀连带着在城里作威作福，令城民们苦不堪言，对于这二人，城民分别送外号“小魔王”、“傻魔王”。

见到门被半拉开露出青婵那张精致的脸，秦御刀一脸坏笑，眼神轻浮的盯着青婵凹凸有致的身材，打趣道：“哟，青婵姑娘真是越长越水灵了，以后就当我那弟弟的郡王妃好了。”

青婵一阵动怒正要发作顶撞回去，却被后面一句给弄的娇羞的不行，心中怒骂一句“纨绔子弟。”

虽然听不懂长公子的话，但是感觉很好玩，秦三岁咧出牙齿憨笑，伴着擦鼻涕的动作傻乎乎的喊了一句：“青婵姐姐好。”

看了看憨厚的秦三岁，青婵便把门拉开，也不接话转身朝屋内走去，好在没有注意到秦御刀的目光所及处，不然怕是门都不会开。

“生起气了还知道害羞啊，”秦御刀低声讥笑，领着秦三岁径直步入院中，每次进这座小院都得被这位侍女嫌弃一番，也全当是家常便饭了。

“大哥来了，咳咳，坐，青婵，给大哥和三岁端上奶酒，”秦萧楚面露微笑打着招呼，虽然听青婵经常叨叨大哥的种种不好，但是他不介意。

知道弟弟的身体一直不好，大哥秦御刀也时常会过来看望，并会随手送些市井人家或是稀奇古怪的小玩物，或是带来一些在城中听来的脍炙人口的故事来给弟弟解闷。这白灵岛外的世界，有一份来自于青婵读书声中，还有一份便是来自于秦御刀的口中。

青婵嘟着嘴向偏厅走去，很不乐意。

秦御刀知道弟弟对于侍女青婵宠溺惯了，也不去理会青婵的那些小矫情，全当视而不见。

走近靠在窗边的秦萧楚，长公子秦御刀一阵埋怨：“青婵不能管教你，当哥哥的得来管管了，都和你说了无数遍，天气不好，就在床上躺着，三岁，把你二哥给抱到床上去躺着。”

“嘿嘿，好。”傻三岁收到命令，二话不说用袖子擦了擦鼻涕撸起了袖口，朝秦萧楚走了过去。

秦萧楚毫不介意，任由三岁那娇小的身躯奇大的力气将自己抱在床上，自己那迷之微笑也就对青婵管用罢了。

傻三岁身有怪力，下手从不知轻重。秦御刀只有十岁的时候，经常带着三岁在城中作威作福，打架斗殴的事全都交给秦三岁了，经常把人家孩童给打的断胳膊卸腿的，哭声一片，孩童家大人都排队来府邸前喊冤，也惹恼的城主罚其半年不准出府邸，心性随之也收敛了许多。

但此时对于秦萧楚可是小心翼翼的就如同怀抱着婴儿，生怕那劲儿不对就给弄疼了自己这位病二哥。
','“三岁来吃糖，”从偏厅回来的青婵，笑着递上一个食盒给到才放下秦萧楚的三岁手中。

秦三岁接过食盒开心的傻笑“姐姐真好。”

青婵还是怜悯傻三岁的心智，倘若不是跟着长公子一起结对或许会乖巧许多，以前被长公子连累着也不知道吃了秦百川秦将军多少的苦，但也好在他现在是长公子的亲卫，不用去前线杀恶灵有那生死之险。

“青婵姐姐，那我的三奶酒呢？”秦御刀故作轻佻。

“三奶酒在偏厅，还请长公子自己去拿，”青婵还在生刚才被调侃的气，也就懒得去端三奶酒了。

“青婵，对大哥可不得这么无礼，咳咳，去把酒端上，这雨天让大哥御御寒也好、咳咳，”躺在床上的秦萧楚故作严肃，言语吃力。

青婵赌的这一口气还咽不下去，一时之间手足无措，不敢反驳也不愿去做，呆在当场。

看着氛围有些僵，秦御刀笑着打了个圆场：“无妨无妨，青婵姐姐把你给照顾好就行，最近暴雨骤起，九重山都封山了，我便亲自从孔道长那拿来了药，青婵姐姐，每日晨午晚三次，煎好给二公子服用，这个暴雨天就不会太难受了。”说完便从袖口掏出一大包药材给到青婵。

青婵这才泄气般接过药材，只要是对于二公子有利的，她便什么都能放下。随后拿着药包低着头就朝偏厅走去，准备煎药去了。

说起这九重山，秦萧楚思绪飘远，有些挂念那两个小调皮，一个动不动就害羞，一个动不动就偷酒。

“三岁，你萧楚哥哥不太高兴啊，这该怎么办呢？”秦御刀假装思考看着正端着食盒在狼吞虎咽满嘴糖屑的三岁，同时用手在面前比划了几个圈，示意该开始他的表演了。

秦三岁看了看端着的食盒，又转头看了看正在憋笑的秦萧楚，放下了食盒，双手把嘴角的糖屑一粒不留的送进了口中，怕是还有残留，又伸出舌头在嘴角扫了一圈，满足的打了个饱嗝，这才嘿嘿的对着秦萧楚一笑，张起马步，准备连续的后空翻动作。

吃过亏的秦萧楚赶忙制止，知道大哥是想故伎重施“咳咳，大哥，可别让三岁再跳了，上回把这地板都给跳陷下去了”。上次就是因为这位大哥的怂恿，三岁来了一次惊天动地的后翻滚，非但没有逗乐自己和青婵，反而导致青婵在收拾残局的时候不停的埋怨这位顽劣的大哥。

“哈哈哈，大哥就不给你添麻烦了，好生休息，三岁，那咱就不跳了，正好今儿个景楼那卖艺不卖身的花魁有出新曲，大哥带你听曲去，”秦御刀奸计没得逞反倒肆意的笑，也不强求。

“糖饼子~”秦三岁似乎因为没有展现他的震地后空翻担心之前的奖励没有，急的使劲摇着秦御刀的袖口。

“哈哈哈，有，听完曲就有，”秦御刀说完便带着三岁轻快的走了，进院如闯关，出门畅通无阻。

待大哥走远，秦萧楚陷入深思，想到自己这副躯壳一事无成还府门难出，不禁心生些许感怀，听着暴雨声渐小，便想出去走动，“青婵，去亭中读书给我听吧”，说完吃力的爬了起来。

在这金丝雀笼中，最爱做的事儿，大概就是听着青婵读书的声音。

远处的青婵看了看屋外，似乎想说点什么，最后还是没有说出口，顺手将被褥抗在自己肩上，一手打着伞，一手搀扶着二公子向亭中走去。

“二公子，今天想听什么？”院中小湖亭内，清秋细雨微风，伺候秦萧楚在亭中藤椅坐下。

“接着讲《存瑞帝君录》吧，咳咳。”

青婵知道，这是一部关于存瑞年间存瑞帝君一统天下的传记，转身去到一间偏房内寻了这本书。

“是说存瑞帝君成功突破霸道体三次入境后，一举斩杀南越族长，一统南方丛林，以此为第二个转折点......。”

青婵的声音伴随着翻书声，犹如细雨，更似微风，虽不抑扬顿挫，却也听着舒心，秦萧楚很喜欢这种声音，闭目一脸满足的听着，刚才一丝丝的感怀也随之烟消云散。

闭着眼睛的秦萧楚，突然开口:“青婵，以后尽量对大哥好点，如果实在不行，也可以无视他，别气他，他人不坏。”

读书声顿时停了下来，紧接着传来低沉的一声“嗯。”

满园春雨落书声。',10005,10013);
insert into ds_book values(null,10014,'夏季的暴雨总是显得无情而放肆。然而此时天脊城城内花灯散尽，街头燕歌四起，显然一副全城欢庆的景致，与这几乎与世隔绝的边城该有的风格决然不同。

从中原远道而来的商人袁宿与他的商队才进城，这支商队主要从中原带来珠宝玉器，换取这座边城周围盛产的各种兽皮带回中原倒卖从而赚取差价。这边城四周各种珍奇野兽极多，猎人们狩猎的同时还得提防恶灵的来袭，而中原又少有这种巨大的天然狩猎场，所以此地兽皮显得异常珍贵。

由于路远，往来天脊城的商队虽然极少也并非没有，所以袁宿这一队也只是那极少中的一员，没有那么的显眼。

袁宿这支商队的马车除了装满珠宝玉器，还另外单独有一辆是商队镖头的马车。都说富贵险中求，这几千里路各种险境防不胜防，所以担任袁宿的镖头地位比之其他商队的老板还要高出一截。但自己这位曹姓镖头何止是地位要高出一截啊，每次想到这，商队老板袁宿的内心总会阵阵发凉。

商队走在天脊城湿淋淋的主道上，两旁的商铺不似这天气一般的差，酒楼传来阵阵举杯交盏声，裁缝铺也是人满为患争相采购新衣，都似那迎新春一般。

一辆马车车窗板微微被推开，仅露出一双眼睛四处打转。

“袁老板，去看看这是咋的了，该死的天气这么差，这群人怎么还巴不得来场雨下的载歌载舞了，”袁宿单人骑马头戴斗笠冒雨在前，身后镖头的马车内传来粗犷而埋怨的声音。

已过而立之年的袁宿也是无奈，这光头镖头性格不好，脾气差劲，还喜欢喝酒。一喝多，晚上都要自己给他找几位青楼歌妓，这如果违背他的意不去找嘛，他还就耍赖不走了。

这一趟下来可没少受罪，想一想这么多年的走商也是难得遇到这么一位镖头，袁宿正连连叹气摇头，神情委屈的都快流出了泪。

只叹是以前走商的几位镖头都有其他事宜在身，只能临时选择这么一位镖头当活菩萨给供着。

想起这位镖头的大块头，袁宿就止不住胆战心惊。

这位镖头不仅是脾气差劲，来头不小，还是金陵城里一位大人亲自点名交代的，作为一个行商的老板这不能不从。

如果说这位镖头还有可取之处，那就是他的实力比之以前带队的镖头只高不低。一路下来险象环生，这镖头硬是数次化险为夷保住了这几车货物。袁宿经常反思得出一个结论，牛人脾气暴不无道理。

但最为主要的这位镖头的要价居然是其他同等级镖头的三成，对于这些也懒得去想那么多的不合理，权当是这位镖头借机来看边塞的风景了。他袁宿就是一个走商的商人罢了，清楚的明白该不闻不问的时候就该装傻，多少次袁宿都是这么安慰自己撑过来的，而且这返程还得靠这尊活菩萨，忍一忍就好。

袁宿这性子里着实隐藏着老好人的特质，这性格也是其在商道利益的角斗场中先吃亏后得福的重要因素之一。

脱掉蓑衣取下斗笠翻身下马，匆匆步入街边一家装饰奢华名为杏花酒楼的门槛，正要开口询问一番情况，奈何酒楼实在过于火爆，店小二只是留下一句：“客官，住店还是打尖儿啊，住店从侧门进，打尖儿的话怕是要等一会儿了，现在没有多余的座位了，”说完便急匆匆擦肩而过，转眼消失在各桌酒桌之间。

店小二这般态度令袁宿一阵郁闷，“还是换一家店铺去打听”袁宿心想。

正当要迈步离开时，只见左手边的一位客人正招呼着他：“门口那位朋友，来这边坐。”

左顾右看，袁宿也不知是不是喊自己，但一看门口就自己一个人傻不隆冬的站着，不是喊自己还能喊谁？袁宿便寻声望去，恰好有个人一人一桌与自己眼神来了个对视。这酒楼中基本都是散客拼桌人满为患，唯独这人一人一桌，也不曾见小二过来打搅，袁宿心中不禁有些纳闷。

见这位商队老板正往他这边看，那人露出嘴角微笑开口道：“对，就是你，袁老板。”

酒楼喧嚣，那人声音却清晰可闻。袁宿疑惑更深，仔细瞧了瞧这人，这清瘦老头虽然身穿便服，但举手抬足间给人的感觉明显是位武夫。年纪比自己大了有二十来岁，有个六七十岁的模样，但精神头又不像那么年龄大的人，桌子边上放着一顶斗笠，斗笠上还滴着水，似乎也才来不久。

脑海中思考了一番，发现多年经商也不曾认识这么号人物啊，即便心存疑虑，袁宿还是决定坐过去一探究竟。

“袁老板常年往返天脊城，做的买卖可还顺畅？”未等自己缓过神来，这人一句话就已莫名其妙的把自己看穿，袁宿显得有点战战兢兢，很中肯的回答了一句，“还好，还好，都是托了这秦城主的福。”

“嗯，那就好，那就好，”这老年清瘦的男子简单回了一句，百般无聊的喝了杯酒。袁宿可谓是坐如针毡，对面这人有股气场，在这酒楼中显得别具一格。

按照往常，面对这般人物他能不去理会便不去理会，而此时他只想着快点离开这里，只能硬着头皮提起勇气问道“这位先生，这天脊城可是有大喜事发生，怎地这般喜庆？”

“哦，没有喜事这天脊城就不能这般喜庆了？”中年男人自顾自得回答了一句，袁宿已经被吓的巴不得立马逃出去，可是碍于脸面也不好动什么。

中年男子似乎看穿了袁宿的内心，“哈哈哈，袁老板别急，你们这些商人啊，就是过于的谨慎，城主大人这不出征北域百里之外，昨日夜间才归来，斩杀了许多恶灵族人，满城欢庆也是应该的吧？”中年男子玩味似的看着袁宿，袁宿只能表示赞同的点点头。','
实在是这人的气场过于强大，压在心头难受，有种喘不出气的感觉，哪还有空去思考这番话，事后才发觉这确实是个大事。

中年男子潇洒的喝了杯酒说道：“你们这趟从金陵来的吧，去把你们那位姓曹的总镖师喊进来吧，就说是他旧识”

“好、好”，袁宿点头哈腰的回应，难怪这镖头差不多倒贴着脸跟自己来这边城，看来不是看风景，是来会老友来了，这下算是想明白了。

拖着狼狈的身体转身朝酒楼外走去，刚出酒楼就大呼一口气，“这厉害的人啊，一眼就能看出他的厉害，可了不得。”袁宿这般安慰方才十分失态的自己。

还未走近正等候的车队，老远就能听见镖头的马车里传出来的怒吼“袁老板这是去烟花柳巷找歌姬打听去了？怎地还不回来，不赶紧找个地方歇脚安顿，他这买卖还做不做了”。

听着镖头这司空见惯的吼声，袁宿也不管那么多，平稳了情绪便径直走了过去。

“曹镖头，打听到了打听到了，城主前几日出征北域了，昨夜晚间才回来，这不城民都高兴嘛”，袁宿隔着马车强作赔笑的说道。

马车内顿时陷入寂静，短暂之后才传来镖头言简意赅一个“哦”字的回应，袁宿还反而有些不适应。

“对了，前面那座杏花酒楼有位客人说是您的旧识，喊您过去叙叙旧”袁宿传达着那老头的命令。

马车中又是一阵沉默，良久过后镖头问了一句“那人长啥样啊？”

“中老年男子，身材清瘦，似乎是个武夫”，袁宿根据刚才的观察赶忙回应道。

车内又是一阵短暂的沉寂，又传来镖头的声音：“唔，是不是还留着八字胡？”

原宿赶忙回应：“对，对，还留着八字胡”，心想真是老友旧识了。

咔呲一声，马车的木门毫无征兆的被推开，随后一颗硕大的秃头探了出来朝四周看了看。

“真该死，这鬼天气与城内的气氛一融合，还真让人郁闷不起来。”

“我知道了，你们找个地落脚吧，这几日-我就不回去找你们了，想必在城内你们也没有什么危险，这辆马车拴在酒楼门口给我备用。三日后你们启程，我在西城门等你们，“姓曹的镖头说完咣的一声便下了马车，近距离的袁宿感觉地面都颤抖了一番，这镖头身高足足有九尺，配上那颗光亮的脑袋，虽没有违和感，却给人一种不怒自威的感觉。

曹镖头牵着马车朝酒楼走去，回头朝商队那群镖师挥了挥手。看到这般场景袁宿深呼一口气，每次想起曹镖头的大身躯在行烟雨之事时，着实可怜了那群小娇娘，每次完事袁宿都要另外单独给些幸苦费。转头又想起自己这可怜的模样哪里像个老板，更是百感交集的摇了摇头。

对，赶紧找个落脚点好好歇息一番，猛然间想起刚才曹镖头在车内的抱怨，袁宿精神为之一振。

将马车拴住，曹镖头朝酒楼走了去，担心那门檐磕到脑袋，顺势低了低头，这一进门，就把酒楼内本就不太明亮的光线全给遮挡住，所有人纷纷转头看了过来，一双双惊讶、好奇的眼光盯着这个没有头发的庞然大物，也不敢说什么。边塞游民还不知道有种人叫和尚。

“娘，这人长的可真大。”

“大概是吃多了肉，童童，长那么大，就没人敢欺负你了，所以要多吃肉，知道吗。”

孩童认真的点了点头，真是让人苦笑不得。

只有那一人一桌的中年男子依旧毫无动容面不改色。

“客、客官、住、住店还、还是”迎头而来的小二已经恐慌的说不出话，还没说完就被曹镖头挥挥手打断。也懒得理睬众人的眼光，扫视一圈后，目光一聚一眼就看到那与众不同的老年男子。

“哟，果然是秦将军啊”，曹镖头顺势在中年男子对面坐下。被称为秦将军的人稍微抬头看了一眼也不答话，又自顾自得的喝酒。

“小二，上酒，你怎地知道我来了，特意在这等着？”自讨没趣的曹轻侯一边扯着嗓子招呼小二，一面低声问道。
','这秦将军的来路他清楚的很，来时家里的老头可是都介绍过的。是现任城主秦符的父亲秦武在北上筑城途中领养的孤儿，后收养为义子，原名孟百川，被赐姓为秦，正是有地煞将军之称天脊城的第一武将秦百川，是个棘手的人物，所以尽量客气些总归没坏处。

“这方圆二十里的气象，我还是能看得出来的，倒是你，这一身佛门境界的气息也不知收敛点，一进城就被发现，所以我就先赶了过来，怕是城主也已知道了。”秦百川总算开口说话了，看来其对于这金陵来的曹镖头也不陌生，三戒和尚曹轻侯。

“嘿嘿，还是秦将军看得起我曹某人啊还亲自来迎，但那样收敛的话扭扭捏捏和个小娘们有啥区别，况且上边交代了，必须要让你们知道我来了”，曹轻侯咧嘴一笑，配上这庞大的身躯，这憨厚可掬的样子还真能迷惑许多人，活似一尊弥勒佛。

秦百川的道理面对这大胖子说不通，只有沉默以对。

“城主前几日出征北域，昨夜才回来？”曹轻侯转眼正经了起来，俨然不见往日与袁宿在一起时张扬的姿态。

秦百川点了点头以示承认，随后不等曹轻侯反应过来，以一种只有这大和尚才能听见的声音问道:“真要把两位公子带回去？”

曹轻侯刚进门时众人的差异的眼光也只是一刹那的好奇罢了，只是这一胖一瘦同台会时不时的吸引人侧目一番，在这喧嚣的酒楼，也没人在意他们在说什么。

“对，上边交代了，两位公子不回去，我也就不用回去了，我可不想在这天脊城养老，这儿的姑娘可没中原的水灵，据说还带着一股子味道，我可受不了，”曹轻侯打着诨一脸没个正经。

“如果我和城主不同意呢？”秦百川眉头一皱，脸色冷冷。

“咳咳，你们这儿的酒，可真烈，这也是人喝的？如果横竖都回不去，那就看我能打几个了，大不了死在这也成，”一口灌下小二方才送来的酒，曹轻侯被呛得连番咳嗽。

“天脊城的牛羊马三奶酒每三年可都要进贡一次给帝君，这杏花楼的三奶酒，虽比不得那进贡的佳品，却也是上好的档次，喝这酒，就和做事一般，得慢慢来，慢慢品，才能喝出那种独特的味道。”

“再怎么好喝，也比不上中原的女儿红和杜康吧，我可不想天天喝这玩意儿，”曹轻侯还因为三奶酒这独特的味道而面露苦色。

见曹轻侯这番回答，秦百川脸色动怒，如鹰爪般的十指握住酒杯不自禁的一运气，那无辜的酒杯瞬间支离破碎，转而怒目瞪视曹轻侯。

这光头大胖子俨然一副死猪不怕开水烫的德行毫不受威胁。

无可奈何，秦百川只能将怒气强压下去。

两人沉默无言，秦百川有事没事的喝一小口三奶酒在思考着什么，曹轻侯则不停的小声嘀咕，“这玩意也是人喝的？”

秦百川也不顾曹轻侯的抱怨，将那一小坛酒喝完之后先开口说道：“随我去见王爷，有极品三奶酒。”

语毕，便戴起斗笠起身朝外走去。

大和尚心中窃喜，居然不用动手就要见着正主了，脚步赶忙跟上。

早已知道秦百川身份的酒楼小二也不敢追出去要那十几两酒钱呐。

“唉唉唉，秦将军，你倒是慢点，等我牵个马车，要是丢了，那袁老板还不得一阵肉疼死了。”

已经找到落脚点准备休息的袁宿莫名打了个喷嚏。

这一胖一瘦一高一矮，走在暴雨下的天脊城主干道，一个光头落雨嘀嘀嘀，一个斗笠遮雨哒哒哒。',10005,10014);
insert into ds_book values(null,10015,'初次来到天脊城白灵岛前的曹轻侯望着这座如小岛般的府邸，忍不住发出惊叹：“王爷就住这地儿？还真有情趣雅致。”这白灵岛算不上宏伟，也算不上华贵，但是这种布局即使是见多识广的曹轻侯也感觉不多见，犹如常看高山恢宏入云，少见小坡有一份闲情惬意。

大概是觉得说啥也没用，因为他根本就不会听，所以秦百川压根就没搭理身旁这位大和尚。

秦百川身形站定，面向座府邸吹了几声口哨，伴随着“咻咻咻”的几声有节奏的长鸣。短暂过后，吊桥渐渐的放下。

二人一前一后，缓步走上吊桥，渐渐走入府邸内部，曹轻侯这才发现里面别有洞天。

白灵岛从外看戒备森严，俨然一座军事要塞，而里面却是另一番景色。

几条小道通向不同的小院，道路旁尽是参天大树，十步设一卫算不行森严。正对着吊桥方向也是距离其最近的一座小院，是府邸的议事厅。

正准备领着曹轻侯朝前走步入议事厅中，秦百川脚步突然停留，眼睛的余光瞥见不远处的秦御刀与秦三岁，这二人正打算去听曲儿呢。

从秦萧楚小院中走出来的秦御刀自然也是看到秦百川以及曹轻侯，目光被曹轻侯这大块头给深深吸引。

秦三岁则看到了最怕的义父。

“那少年便是长公子秦御刀，矮个的是本将义子，秦三岁，”看着对面怔住的二人，秦百川轻声说道。

“若是我眼神没错，这长公子体内气息很不简单啊，”曹轻侯一脸玩味。

“双生子随其娘亲，都身怀罕见的白灵体，受这体格反噬的是二公子，”秦百川无不可惜的叹气。

对于双生子的白灵体，大和尚曹轻侯在金陵之时就听家主提及所以记得很深，显然是明知故问。

这种体格多出现于北域，更有甚者断言出自恶灵族人，是出生时便有的几大天赋体格之一，世人美其名曰天资傲人。

也有人说是不祥之兆，因为有这体格的婴儿从小便会受到白灵气息的反噬，一生多病寿命短暂活不过一甲子。许多身怀白灵体的孩子，长大后都不愿后辈早逝而选择一生不娶，导致白灵体逐渐变得罕见。

看来作为双生子，虽然躲不过寿命这来自天劫的惩罚但有一定的概率是只有一人受到反噬的痛苦。

“乖乖，那秃顶的大家伙，也不知道和三岁比起来谁的劲儿大些？”秦御刀直勾勾望着莫名出现的曹轻侯，聚精会神在设想着什么阴谋。

“三岁，”轻呼了一声傻三岁，没有回应。

发现这小家伙看到义父秦百川在跟前已经躲在了自己的身后，谨慎的探出半个脑袋看着前方，“看来是真怕百川叔叔啊，”秦御刀心想。

秦百川先声夺人向那偶遇的二人先打了声招呼：“刀儿、岁儿，来见过金陵来的都统曹大人。”

有金陵城城防四军之一铁羽军之称的正都统，三戒和尚曹轻侯。

对于秦百川的这番称呼，曹轻侯暗生不爽，那正都统的身份是自己的痛处。秦百川摆明了是要给自己下马威，也罢，此行也不是来斤斤计较的。

“别怕，咱过去瞧瞧，”听见那边的召唤，秦御刀拍了拍胆怯的三岁，秦三岁这才壮着胆子缓缓迈动。

“晚辈秦御刀，见过曹大人”，长公子秦御刀对于这叔叔也是十分敬重，虽然不知道这大块头是何方神圣，顽劣成性的长公子还是示以弯腰作揖。

躲在秦御刀身后的秦三岁方才眼中只有秦百川，对于这身旁的大和尚基本视而不见，这猛然间抬头一看也觉得有趣，呵呵傻笑一声“没有头发的是秃子。”

换来的却是义父目光凌厉的瞪视，“岁儿不可无礼！”

秦三岁吓的赶忙躲进了长公子的身后，保持着探出半个脑袋的姿态。

秦百川无奈的摇头，“我这义子虽天生怪力，然而才智与三岁小儿几无差别，失了礼数，还望曹兄莫怪，”言语中虽有责怪秦三岁的字眼，然而却表情冷淡言语轻飘，气氛瞬间变得凝重。

见到这番景象秦御刀心中暗喜，猜想该是有好戏上演了。

果不其然，“秃子”这词对于曹轻侯来说可是禁忌，眨眼间脸色变得很是难看，怕是这一路过来也隐忍了不少，这被秦三岁无礼的讥笑，秦百川这圆场打的也是轻浮，显然是想打击自己的气焰。

也不管这秦三岁是真傻还是假傻，曹轻侯已经无法忍受，心有怒火得要爆发一番，三戒和尚曹轻侯可不是寺庙中吃斋念佛的活菩萨。','
曹轻侯忍无可忍破罐子破摔，大喝一声“欺人太甚！”

身体略微后仰随后如脱弦之箭俯冲至秦御刀身后，他不敢对秦御刀动手，目标瞄准了秦三岁，都说打狗还得看主人，今儿个就是要打狗给主人看，给秦百川来个下马威。

“若伤我岁儿，定当让你出不了这天脊城，”曹轻侯的想法秦百川自是知道，并不出手也正好借此机会试探三岁这块璞玉的潜质如何。

“三岁，揍他！”秦御刀几乎同时出声，只是多了些兴奋，随即推了身后的秦三岁一把使其躲过了曹轻侯直冲过来的拳头，自己也顺势散去了一边。一推一散之后中间空出一块地。

秦三岁毫无征兆的被推开后满脸蒙逼，还没回过神来，那秃子又是一拳朝自己飞来。

担心自己的出手被秦百川责怪，傻三岁选择不停的狼狈翻滚，随着秦御刀作威作福的时候他就知道，人家打你你不躲，会疼，除非你打过去。

变化来的过于突然，两旁的守卫面面相觑，秦百川在旁也不敢动手阻拦，只能直直的看着傻魔王被动躲避。

不断的闪避中，秦三岁一身傻气瞬间浑然不见。原本是想一击命中给秦百川点颜色看看的曹轻侯发觉不太对劲儿“嗯？这小娃还挺灵活。”

曹轻侯脸色动怒背上突的生出一只咆哮白虎的幻影，身形加快。

秦三岁看的眼花缭乱，一记乱拳突然击中胸口。

“啊~”的一声，随着秦三岁的惨叫，袖珍般的身体被击飞“咣”的一声落地，动作一气呵成。

曹轻侯知晓轻重，对于孩童他还下不了杀手。

曹轻侯的佛门境界有八禅，八禅具开才是最强实力，这曹轻侯方才只开了半禅白虎，而且下手明显有所收招，对于傻三岁的伤势，秦百川并没有过度的担忧。

秦御刀可看不下去，瞬间气不打一处来。

他那还没有入境的身体已经不受理智的控制，脑袋一热，正待以卵击石去搏一搏。

“曹轻侯，住手！”觉得差不多了，秦百川一面制止秦御刀的冲动，一边朝曹轻侯呵斥。

被击倒在地的秦三岁嘴角流淌着血迹，缓缓睁开眼睛艰难爬了起来，露出从未出现过的眼神。

是被击倒所带来的愤怒，紧接着反客为主毫不畏惧的朝大和尚冲去。

“有点意思，”大和尚心想，也不去进攻而是灵活一闪，方才站的位置被秦三岁砸出一个大坑。再撞，在闪，秦三岁只是很简单的冲击动作，却接连砸出几个大坑。

“好、好！”这大开大合的架势虽然没半点用，但胜在精彩，守卫们情不自禁的拍手叫好，秦百川眼神一瞪，瞬间没了声儿。

从未见过秦三岁这般摸样的秦御刀，眼神中带着些许的不可置信，平常只知这傻小子力气奇大，不曾想大的这般离谱。而秦百川再没有制止双方的原因在于想看看这傻义子的极限会是怎样。

“住手！”一声洪亮的喊话透露出内力深厚，夹带着回声似乎从远处传来。还未等众人反应过来，一位身穿三蛟盘云服的中年男子刹那间出现在秦三岁横冲的路径中间，脸色严肃，看得出心事重重。

秦三岁定睛一看是大伯，慌忙中收招不及惯性前冲，脚步不稳摔了个狗吃屎。在这府邸中敢这么张扬喊话的，也就只有城主秦符。

在秦符身后，随行着的是一位不苟言笑的冷面男子，这冷面不似秦符的严肃，似乎压根就不会喜怒哀乐。其眉中有一道刀痕竖滑穿过左眼，那刀痕虽没伤及眼睛但在细看之下也是骇人。

“参见城主！”

“末将曹轻侯，见过王爷！”

“义弟。”

“爹。”

众人先后反应过来低头行抱拳之礼。

“义父，他，打我。”爬起来的秦三岁不顾披头散发，哭丧着脸朝秦百川走去。
','秦百川蹲下身，也着实心疼了一番狼狈的傻义子，他秦百川能教训秦三岁，可不许别人来教训，但这次不同，也没去追究曹轻侯。

用袖口擦净了秦三岁嘴角的血迹，罕见的露出了父亲该有的仁慈。

“没事没事，以后谁敢先打你，你就打回去，不用害怕。”

“嘿嘿，好。”本以为少不了被义父一顿骂的傻三岁咧着嘴、笑着点了点头。

“刀儿，带三岁去看下伤势如何。”阻止了一场本可避免的争斗，天脊城城主兼北域王双重身份的秦符转身朝着议事厅走去，秦百川与曹轻侯各自的良苦用心，他心知肚明。

“真扫兴，”秦御刀心想，虽然满脸不甘没能替三岁出手，却也没有勇气与父王再说些什么。跟在身后的秦三岁时不时回头冲着那大和尚摆个鬼脸，以示不服。

“三岁，哪里痛？”走过一段距离后秦御刀关切的问道。

“不痛不痛，”秦三岁拍了拍凌乱的衣服，又咧着嘴拿出招牌式的憨笑看向秦御刀。

“那就好，咱们还是听曲去，”秦御刀兴致又起来了。

.......

养生院内，画地为牢十八年的世子秦萧楚正独自在湖心亭中翻阅书籍，曹轻侯与秦三岁闹出的动静颇大，秦萧楚无意去探听什么。倒是青婵忍不住好奇，一个人屁颠蹲在半掩的门口张望着，随后愁眉苦脸走到跟前。

不等青婵交代情况，秦萧楚率先自言自语的说道：“想不到父王都给惊动了。”

“公子，来了一个没有头发的人，把三岁给打了。”

“哦？府中几乎没有外人进出，更别说在府中动武，三岁伤势如何？”

“没有大碍，已经随大公子离开了。”

府中来异客行凶动武，习惯了安稳日子的秦萧楚不禁陷入深思却想不出个所以然来。

只是后来，青婵去问了问站岗的守卫，得知那人是金陵来的曹轻侯，秦萧楚知晓后便让青婵去书中查阅这么一号人物，不多时便有了答案，金陵秦家两位门神之一，三戒和尚曹轻侯。

秦萧楚从不曾听父王谈及过金陵秦家，倒是在府中一位老者口中以及书籍中得知金陵秦家是天脊城秦家的母家，却也不敢去向父王询问，这养生院内，便是天地。

此时结合曹轻侯的出现，一股不安油然而生涌上心头。

.........

秦符支开秦御刀之后率先步入议事厅中，没对二人进行指责。秦百川与曹轻侯对视了一眼，各怀不满却也没有进一步的动作，只是随着秦符及冷面男子进入议事厅。

秦符端坐在厅中三蛟椅上，正斟酌着美酒，想必也就是这天脊城盛产的三奶酒。面朝来路，看着远道而来的曹轻侯，也没想着那以礼待客之道。

曹轻侯知道两人身份悬殊，也不介意被怠慢。

对于曹轻侯的到来，秦符并不觉得奇怪，内心还是感叹一句来的太早了。

回忆起父亲告诉他的很多往事，会想起父亲秦武说他自己被命运所缚，无奈之下独自离开世家，好似那被链住的爪牙，又耗尽毕生心血筑起这座天脊城。边塞筑城伟绩在中原大地上算的上是异姓王中的第一人，却没有换得丝毫嘉奖。

即便当时能在北域这荒芜的大地上称王称霸，也不能填满他那颗饱受孤独的内心。秦武本不属于这里，也不该来这里。

唯一的弥补，便是尽享这北域几十万原本居无定所的游民的感恩戴德，还迎娶了钟爱的女子。

还没好好享受几年的荣华富贵，父亲秦武便惨遭恶灵族的毒手魂断北域深处至今死不见尸，只是在游民口中留下“天主”的美誉，还有那些能够在酒桌上经久不息说不完的精彩战役。

现在，一手造就秦武这一生的幕后主使又浮出水面，似乎还想重蹈覆辙，只是地点换了，这次是在都城金陵，人物也换了，换成了秦武的孙子辈。

面对的也不再是恶灵族，而是人心。庙堂水深，不比单纯的在天脊城可以用武力解决一切创造一切。

就秦符而言，他对于金陵城那姓秦的世家毫无感情可言，也没有任何牵挂。他的母亲，前王妃，是普通人家的游民；他，出生在天脊城，天脊城就是故乡。

想起自己膝下两位身怀白灵体的儿子，又想起同父王一样战死在北域的女儿，还想起自己那成为庙堂术牺牲品的王妃，这三座灵牌在祠堂摆着，即使是一生都在北域杀伐的北域王，此刻脸上也浮现出忧虑的一面。',10005,10015);

insert into ds_book values(null,10016,'盛唐大陆。
　　永乐城这段时间受潮湿天气的影响，烟雨巷里常有薄雾朦胧，少年缩着肩膀，衣衫褴褛，蜷缩在一个长着青苔的冰冷的青砖墙角落里，轻微地颤抖着身体。
　　少年名叫杨浮生，曾经是贵族，只当过不久阔少爷，后来因家道中落，父母双亡，如今才沦落成这般可怜的模样，他每年终日只能以地作床、以天作被，颠沛流离以四海为家。
　　其实说得难听点，杨浮生就是乞丐。
　　少年懒洋洋的平靠在角落里面隐隐不安的思索着，凡是烟雨巷一到早上都会起朦胧的雾，而且差不多在这个时候，对面的那户人家也会开张，只是不知道自己今天还能不能再吃到杨美人施舍的白面馍馍了……
　　没过多久杨家就如以往般开了门，地上有些湿滑，接着有三五名下人小心翼翼地搬着桌子轻放到门前，两名丫鬟略微吃力地拎起大箩筐放到桌子上；箩筐里面堆积满满的白面馍馍，看得少年不禁嘴馋起来。（白面馍馍=白馒头）
　　杨浮生脑海中念念叨的那位杨美人，其实就是杨府的千金小姐，名叫杨玉婵；她虽看似体型微胖，但皮肤白暂，能歌善舞且人也很美；她每年每日，不论晴雨，都会开张救济铺子，来施舍永乐城里那些无家可归的可怜乞丐们，因此她也是永乐城里最出了名的大善人美女。
　　乞丐群们一见到杨玉婵，纷纷笑着张开心的脸，伸手而蜂拥的挤过去；这箩筐里面的每一颗白面馍馍，都是由杨玉婵本人亲手所做的，一个大富人家的小姐，讲道理也没有必要为了乞丐们而做到这般地步吧？因此这只能说明她是一名真切关心底层群体的善人！
　　杨浮生至今为止吃到过的每一颗白面馍馍，大部分都是杨美人所施舍的，但有少部分是临近那条街里的青衣丫头妹妹给的。
　　“让开！都让开！”突然一名衣着铁铠的中年男人，面色微怒，站在烟雨巷的路中央，冲着那群正站着虎咽般蚕食白面馍馍的乞丐们喝道。
　　乞丐们纷纷作出惶恐表情，随即迅速有序的退到后面聚在了一起，微低着头，也不敢抬眼往前去瞧。
　　在铁衣男人身后，紫金木制作的八抬大轿，抬轿人尽都是些穿着华丽丽的锦衣；杨浮生不禁低下头来黯然回忆，自己这身破破烂烂的衣服，也曾经是那种甚至更加高贵华丽的锦衣……
　　轿子车上，一名满面桃花，穿着金色龙纹袍的男人；他左拥右抱在怀里的女人，尽是有些姿色的美女。杨浮生认得他，自己家道中落，和他也是有着藕丝相连的关系。
　　他叫李瑁天，这座永乐城……不！应该说是这整座盛唐大陆，都是姓李的天下！在这里只需要他的一句话，便能决定永乐城每一位百姓的生死！除此以外，李瑁天还是一名通天境级别的强者，几乎是站在了盛唐大陆上最顶峰的位置！
　　杨浮生佯装随心懒散地走到乞丐群后面，随即低头瞄望着那高高在上的帝王般享受的李瑁天，他之所以能够坐到今天这般尊贵的位置，全都是靠踩着无数人头颅爬上去的，其中也包括自己的家族！一想到这里，少年忍不住暗劲捏着手中的白面馍馍，即便捏出几个窟窿洞来，但也难以消除他心中对李瑁天的滔天恨意！','　　那满脸桃花的男人略微神气的昂着头，眼神微微地下移，轻蔑浮夸的瞄了几眼那群乞丐。显然，男人这是种看不起他们的表现。
　　或许是因为察觉到男人眼中尖锐而又冷冽的目光，乞丐群中的杨浮生不由小心翼翼地挪动着身子，随即脸上浮现出暗暗思索的神情来，那家伙？该不会是发现自己了吧……
　　接着见到满面桃花的男人目光悠悠然的转向杨家，而乞丐群中的杨浮生这才暗松了口气，不由庆幸自己暂时没有被他发现。
　　“本皇子近些时日在深宫中听那些奴才说得津津乐道，说这永乐城的杨家，有一位出了名的绝色天香的美人儿？”李瑁天目光淡然浮夸的在杨家门口那群人中迅速扫了几眼，最终目光落到了一名美艳女人的身上。
　　“民女杨玉婵，见过皇子大人。”杨玉婵嘴角微微扬起一道好看的笑容来，脸上流露出一丝欣喜的神情，心想那位衣着金贵的男人必是当今的皇子大人了，而他口中提起的那位永乐城杨家的美人儿说的正是自己呢！
　　“嘶……”李瑁天不禁眼睛一瞪，倒吸了口凉气，身子不由向前倾斜过去，仿佛恨不得跑到她前面近距离贴身观察似的。他心中感叹不已，杨玉婵呀杨玉婵！你长得果真没有让本皇子失望！别说是国色天香了，就连倾国倾城这种词儿都不配拿来形容你！哎呀……要说你呀，那只有是一句诗可以形容确切了，云想衣裳花想容，春风拂槛露华浓！
　　两边的妃子皆是被恼怒的推开，李瑁天眼中闪过一丝不悦，心想自己这身边带出来的都是些什么货色？连一座小城里面的民女都比不上！真不知道自己当初是怎么带她们出来的，白瞎了眼了！
　　心中愠怒后，李瑁天忍不住笑着看向杨玉婵，欣然道：“呵呵~那帮奴才的话果真不假！杨玉婵！你果然是有着天仙般的姿容！本皇子欲将你带回宫中！做本皇子的女人！你可愿意？”
　　“民女谢过皇子大人的厚爱，只是民女无才无德，自知配不上，所以民女希望皇子大人能够收回此意。”杨玉婵神色间流露出一丝不易察觉的担忧，随即委婉的拒绝道，心想这李瑁天为人的名声向来是出了名的霸道，但愿他此番不要过多为难自己呀……
　　“你敢拒绝我！”李瑁天的笑容逐渐消失，脸色僵硬地怒盯着她，随即心中一阵震怒，自己可是从来都没有被任何女人拒绝过！她杨玉婵是个什么东西！一个小城出身的贱女！也配拒绝自己？
　　不一会儿他眼神中的愤怒情绪又渐渐地淡了下去，眼珠子咕噜一转，转念一想，如她那姿容几近仙女般的美人儿，如果自己因怒而杀了她，那么自己以后还能到哪儿再去找到这么一位漂亮的美人儿来？
　　李瑁天有怜香惜玉之心，自然舍不得就这么杀了她，于是神气地跳了下轿子车，面带浮夸笑容，十分霸道的步步逼近着杨玉婵。
　　见他那般举动，杨玉婵有些受惊的退后了几步，而附近群站着的乞丐们，不由拳头悄悄握紧，脸色无奈地暗沉了下去。
　　杨浮生眉头微微一皱，随即自我暗示着，李瑁天是盛唐大陆上最强者之一，不是现在的自己所能对付的！万万不能因一时的冲动而送了性命呀……
　　“杨玉婵！本皇子且再问一次，你到底愿不愿意当本皇子的女人？”李瑁天桃花眼盯着杨玉婵，随即面色淡定浮夸的问道。','　　“皇子大人……民女，民女……民女心系天下苍生，心系黎民百姓……对皇权无念想，不想皇子再这般逼迫，民女心坚如铁，还望皇子大人收回成命……”杨玉婵诚惶诚恐地低下了头去。
　　却不想李瑁天手影突然一闪，迅速地从一旁的侍卫腰间抽出佩剑，向那前方猛挥出一式劈砍！一名不知缘由的乞丐忽然间的就人头落地了……
　　身子血淋淋地倒了下去，众乞丐惊慌失措想要逃跑，赫然间士兵们纷纷的将他们团团围住，不让跑路……
　　“本皇子知道你经常开设义铺来无偿救济那帮蝼蚁！所以刚才的问题本皇子不会说第二遍！如果你坚持不答应，那就是第二颗人头落地！直到你答应为止！”李瑁天神情严峻中带有略微的愤怒道。
　　“你……”杨玉婵柳眉微蹙，心中顿时感到黯然悲伤，万没想到他会在永乐城做出这般灭绝人性之举，仅仅就是为了得到自己？
　　然杨玉婵悲伤之余，李瑁天漠然地将利剑指向乞丐群中一人，语气淡然浮夸道：“你！给本皇子出来！”
　　杨浮生身子顿时一怔，因为他所指之人正是自己！
　　却在这时，杨玉婵舍我为人的站出，用孱弱的玉躯挡在他的利剑面前，随即脸上露出一副苦苦无奈的表情来……
　　“你答应了？”李瑁天微愣问了句。
　　杨玉婵沉默，闷闷无奈的点了点头。
　　而李瑁天的情绪忽然间转严肃为大喜，把利剑浮夸随意的抛向一旁，随即迅速抱起杨玉婵的身子，走到轿子车前，猛丢了上去，脸上浮现出浮夸满意的笑容来：“杨美人儿！从今往后，你就是本皇子的女人！”
　　杨玉婵闷闷不乐地低下了头去，但又害怕李瑁天的怪怒，脸上便硬是挤出一道强颜欢笑来。
　　见到她的笑容，李瑁天这才放心的转身过去，随即望了一眼乞丐群中的杨浮生，迈着浮夸的步伐
　　走到杨浮生的身边，脸上忽然间露出一道病狂的微笑来，出手凌厉迅速，拍得杨浮生手中的白面馍馍抖掉了地上。
　　“本皇子还以为你早已丧身火海之中，真是想不到，原来你还活着？不过也罢！蝼蚁一只，成不了气候！”李瑁天神情严肃，脚踩着地上的白面馍馍，狠狠的蹂蹑，并浮夸不屑地道。
　　杨浮生微低着头，只觉得脑中嗡嗡抖动，但理智告诉他，打不过！打不过！现在还打不过！',10006,10016);
insert into ds_book values(null,10017,'正午时分，永乐城中的潮湿之气，仍然诡异的不减分毫。
　　回想起今早发生的事情，少年现在仍然历历在目，心中早已黯然下了坚定的决心，三十年河东三十年河西，莫欺少年穷！他李瑁天就算再强！却早已达到实力停滞不前的地步，可自己不一样！自己还有一次机会！一个可以超越他的机会！
　　什么蝼蚁注定要被巅峰踩一辈子的这种屁话？杨浮生根本就不屑相信这种无稽之谈！因为，世上无难事，只怕有心人！
　　而杨浮生就是这位有心人！
　　青石砖墙的冷硬感觉，磕得杨浮生后脑勺有些麻木僵硬。少年微微挪动了下身子，换了个舒服点的姿势准备继续慵懒的靠在窗户下的青石砖墙前等待着……
　　此间此时，一阵细微的脚步声，有些欢快，透过青石砖墙被少年感觉到了微微震动。杨浮生知道是谁，面色平常的微微抬起头来，见小窗被一双裹着青衣袖的洁白玉手打开，随即脸上露出一副果然是这样的表情。
　　“浮生哥哥！青儿就知道你在下面啦！”一名活泼可爱的青衣少女，面带着灿烂的微笑，动作欢快轻松的推开了窗户，随即迅速蹦跳伏在窗前，欣然笑着看向下方的杨浮生道。
　　“丫头妹妹，今个儿早上我只吃了半个白面馍馍，然后又坐在这里等了你一个上午……你有吃的没？”杨浮生说着说着，也懒得说饿了，便干脆直接问道，反正丫头是自己人，自己和她之间也没什么话题是谈不开来的。
　　“噗~浮生哥哥，你要是饿了的话就早点敲窗户嘛！才想起来今早我还有几个肉馅的香馍馍没有吃呢！结果都被我爹爹都拿出去喂狗啦！”萧青儿噗嗤笑了一声，随即皮笑肉不笑，狡黠地笑道。
　　杨浮生听得不禁感觉心脏猛的一阵抽疼，略微激动的锤了锤胸口，故作惋惜的表情道：“唉哟！是肉馅的馍馍啊……直接喂狗，这得多浪费哟……”
　　“嘻嘻~骗你的啦！浮生哥哥！”见少年一副肉痛的样子，萧青儿不禁觉得有些好笑，随即又从一旁快速的拿来一个油纸包，里面装着三个久凉的肉馅馍馍，但是闻起来还是挺香喷喷的！
　　“噔噔蹬蹬！浮生哥哥！这是给你哒！”萧青儿微微笑起来露出漂亮的皓齿，两眼弯成月牙状看着杨浮生欣然道。
　　微愣了下，杨浮生恍然明白这是丫头在逗弄自己玩儿呢！他心中有些哭笑不得，但却没好气的从萧青儿手里接过油纸包，偷偷瞄了一眼，微微震惊，三个？杨浮生不禁咽了一口唾液，随即略微好奇疑惑地望向萧青儿：“你不吃？”
　　“不吃不吃！这些都是青儿特地为浮生哥哥准备的！其实，青儿已经吃得宝宝哒。”萧青儿笑盈盈的摇晃两双玉手，表情可爱的说道。
　　“你这丫头……真不愧是我的好丫头妹妹！”杨浮生微微耸了耸肩膀，哭笑不得说道，随即狼吞咬下了一口肉馅馍馍，一种富有感情的味道含在嘴里，心间顿时感到一阵五味杂陈，杨浮生有些感动道：“丫头妹妹，你的浮生哥哥那么没有用，想来人世间，也只有你会对我那么好了……”','　　“嗯呢！青儿愿意对浮生哥哥一辈子的好！”萧青儿可爱的慢摇着小脑袋，眼睛如星星闪烁般雪亮，且弯成月牙状，随即发自内心的欣喜笑道。
　　“是个傻丫头！”确认过眼神，杨浮生没好气的白了一眼。虽然嘴上是这么说，但在心里他还是很在乎萧青儿的。
　　“青儿才不傻呢！青儿……”少女忽然没来由的撅了撅嘴，嗔怒了一句，接着想说些什么，但忽然间神情变得略微落寞起来，且及时把刚才那些想说的话又收回了心里去。
　　正狼吞虎咽的消灭着肉馅馍馍，杨浮生见到她脸上隐隐的愁容，心中不由一愣，丫头今天是怎么回事？自己从前可是很少见她的脸上会出现这种不开心的表情呢！难道是出什么事情了？
　　“丫头妹妹，你是不是碰到什么烦恼了？”杨浮生微微皱眉，香馍馍也没心情吃了，便是目光如炬的望向萧青儿关心问道。
　　“其实，也没有什么大不了的事情啦……”萧青儿心中微微叹气，浮生哥哥……有些话自己是真的不知道该怎么与你说了……
　　以杨浮生多年来对萧青儿的了解，一眼便能看得出她心里面藏着事儿！只不过便是这丫头似乎有意不想告诉自己，杨浮生却也想追究知底。
　　却不想，那青衣少女的眸子中灵光乍见忽然话题一转，竟是直接扯到了一条鱼的身上。
　　“嘎！浮生哥哥！青儿倒是记起来，最近永乐城中已经买不到碧灵鱼了，市场上的鱼都经手去过了青女楼，可青女楼的鱼却又被永乐城主给霸道蛮横的抢了去……除了城主府，青儿在永乐城里便再也没有见过碧灵鱼的样子了……好想吃……想吃……”少女噶然想起，表面上说得天真可爱，可心中却是略微一阵失望的自我嘲讽着，萧青儿呀萧青儿，你也太不争气了吧……终究还是没有勇气和浮生哥哥提起那件事么……
　　“碧灵鱼……”杨浮生不禁微愣，心中怀疑思索，这种鱼在市面上的价格也不低，至少也不是自己这种平民百姓可以吃得起的！但丫头说城中已经买不到这种鱼了，其因最后却落在永乐城主的身上！可是自己也不好潜入进去偷窃吧？城主府戒备森严，去那里碰碰运气实在不是一件明智的事情！
　　但是转念沉思，那碧灵鱼也并非空穴而来，首先它源自一条叫做碧灵江的湖里，没有其次！自己不能去城主府碰运气，难道还不能去碧灵江边碰运气？
　　“丫头妹妹！想吃碧灵鱼吗？”杨浮生直接问道。
　　“想……但……”萧青儿欲言又止，心里不由略微懊悔，好好的自己干嘛提起那什么碧灵鱼呀！可是那件事……自己现在真的是没有勇气当着浮生哥哥的面说出口……
　　“想就好！没有但是！就等着你的浮生哥哥摸条鱼回来，让你这只可爱的小馋猫儿好好的解解馋！”杨浮生留下这话，便于青砖巷子上径直大咧咧的离开这里。
　　望着杨浮生那看似孤独却又欢欣的离去背影，萧青儿小嘴微微一阵抽搐，最终还是没能忍住，眼中洒落几行泪花，委屈的哭了起来……','　　到第二天，少女轻揉着红肿的眼睛，早早就推开了窗，一个人安静的伏在窗前，似是在等待着谁……
　　直到正午，几滴雨花细细洒洒的落下，在到陆地面铺满青砖的烟雨巷中，雨滴从朦胧烟雾里蒙蒙的下着；少女不禁脸上发愣，有些失望地靠在窗前，心想自己的浮生哥哥怎么还没有来呀？这都已经是正午了，平常在这个时间，浮生哥哥是不会无由缺席的……
　　思索昨日发生的事情，少女不禁身子微微一愣，精致的脸蛋上逐渐浮现出一道略微忧愁的哀容来；萧青儿有些闷闷不乐，心想浮生哥哥该不会是因为那句话，还真去碧灵江摸鱼了吧？明明是某人傻！还说自己傻……自己其实并不是想吃碧灵鱼……自己当时只是想说……青儿可能……
　　然少女神游片刻之余，一道苍劲有力的男人声音从门口传来：“青儿，该上路了。”
　　“是的，爹爹！”萧青儿猛地从恍惚中惊醒，美目略微失落落的打转着，小嘴中对着空空无人的烟雨巷呢喃了句：“天青色等烟雨，青儿在等着你。浮生哥哥，青儿可能等不了你了……”
　　“再等等，爹爹……青儿马上就来！”少女慌忙的拿起纸笔来，留了封信夹在窗隙里，但愿自己的浮生哥哥能够发现它吧……
　　萧青儿临走前，家里的人纷纷出来迎送，阵仗挺大，但她的目光却始终停留在那个窗下，眉儿微蹙，神情有些依依不舍地望着烟雨间那朦胧而又不可触及的人，心中不由甚是非常想念，不知此刻，自己的浮生哥哥在哪里呀……',10006,10017);
insert into ds_book values(null,10018,'一片碧蓝碧蓝的湖面上，烟雨朦朦胧胧，碧灵江虽名为江，实则是一片碧蓝色的大湖；少年光着脚，盘着腿坐在滑溜溜的碧蓝色岩石上，披着一身轻微湿漉漉的蓑衣，瘦弱的身影丝纹不动，手里持着一根枯黄色的自制简易鱼竿，背影像极了一名入定的垂钓老僧……
　　少年微低着头，胸前轻微地起伏着，一呼一吸之间恒有规律，原来他还沉浸在昨夜悠闲无暇的睡梦当中。
　　“阿嚏！”忽然觉得鼻子间有些酸痒难耐，少年耐忍不住的破音打了个喷嚏惊醒。他的意识清醒了许些，随即不由全身打了个哆嗦，心生寒意，不禁又倒吸了口凉气，嘴角边上不知有意无意的挂起了一道呢喃自语的稚嫩声音，“嘶……原以为那永乐城里的青砖石墙就已经够冷了，不想这碧灵江的冷才是更胜一筹！只是啊……老子特娘的在这儿苦苦蹲了一个晚上！今早居然连一条鱼影儿而都没见到！”
　　对着碧灵江一顿粗口破骂后，少年的心中越想越觉得来气，猛然迅速地站起身来，脸上稚嫩的神情中浮现出一抹愠怒之色，举起枯黄色简易鱼竿欲砸向地面，却不曾想到他脚底下的碧蓝色岩石光滑溜秋的，稍一不留神，踉跄后仰地直接屁股着地栽倒了下去，模样狼狈至极……
　　“唉哟！”杨浮生感觉自己的屁股好像搁撞在了一块冰冷坚硬的石头上，疼得他不由苦叫了一声。少年不曾想到自己的时运会是这般的不济，心中无奈的暗暗叹气，心想这虎落平阳被犬欺也便罢了，今朝连一块破石头也来欺负自己！而且，自己跟这块石头也没有什么道理可讲，也便只能自认倒霉了……
　　有些心疼的轻揉着后大腿边上的伤口，杨浮生不禁怀疑地看了眼自己制作的黄色简易鱼竿，不由微微皱眉，心想这鱼竿也没有坏掉吧？曾不久以前自己也来过这里垂钓，而且还收获过不少体型中等的碧灵鱼呢！可是如今为何自己却连一条鱼的影儿都看不到呢？
　　在盛唐大陆上，碧灵鱼是一种十分罕见的鱼类，与寻常鲫鱼的大小相差无几，只是其体表的鳞片幽深碧绿，鱼眼中没丝毫的呆气，不像是寻常的死鱼眼，而是充满珠光灵气；像这般神奇的一种鱼，比一般的鱼类更富有营养价值，而这种鱼多是以成群结队的形式出现，并且也便只能在碧灵江里碰运气才有机会看见了。
　　杨浮生紧皱着眉，脸上的神色看起来十分不悦，心中不禁一阵懊恼，心想这碧灵江的鱼到底是怎么回事儿？自己在这里耐着严寒苦苦地蹲了一夜，讲道理，没可能一条鱼都见不着吧？难道还是说……这碧灵江的水实在是太冷了，于是就把那群碧灵鱼统统都给冻死了吧？这怎么可能！哪有鱼类会被冷水给冻死的道理！
　　少年不由抓耳挠腮起来，迅急地卸下了身上因湿漉漉而变得略微沉重的蓑衣，随即看了眼地上的简易鱼竿，心想这支鱼竿既然没什么问题，但还是钓不到鱼，那么看来自己也只能亲自下水去一探个究竟了，看看在这条碧灵江里面到底有没有碧灵鱼！
　　杨浮生已经不止一次怀疑碧灵鱼是不是被碧灵江的冷水给冻死，随着扑通一声！跳进了湖里……一种冰凉刺骨的感觉，从少年的身体和脑海中的触觉神经刺激的涌来。杨浮生不禁在湖里打了一个冷颤，不由心想这碧灵江的水如冰雪天地般的寒冷刺骨，若真是把鱼给冻死了，倒也不是没这种可能……
　　虽然这是第一次下水摸鱼，但杨浮生的水性像是天生一般的好，耐了几时刻的寒冷，不禁觉得也不是那么的冷了，眼见湖中一片碧蓝浑浊，连半只鱼的影儿都没有见着，本想就这样空着手草草的上岸，但他倔如牛般的不死心！想试试游到碧灵江的中区域去看看，随即心中执念很深地想着，说好要给丫头妹妹带一条碧灵鱼回去的，自己岂能对可爱的丫头妹妹出尔反尔？若丫头妹妹没有见着碧灵鱼，万一到时候惹得她露出一副想哭的表情，那么自己岂不是就成了千古罪人吗？不行！自己一定得摸到至少一条碧灵鱼才能回去见她，可不能叫她伤了心！','　　碧灵江的中区域，一只冰冷的庞然大物静止于湖面；在湖中的杨浮生，隐隐间听到一些各种各样的声音。
　　有平淡无欲的语气：“渔帮主，咱们昨夜撒出去的渔网已经得到了很丰厚的收获，我觉得大家也没有必要再检查什么漏网之鱼了吧？毕竟那些碧灵鱼，数量已经足够我们和那个人交差了。”
　　有盛气凌人的语气：“渔哥！你别听张不得在那儿胡扯！要我说，这湖里的每一条碧灵鱼，都是属于我四鲸帮的东西！如果不早点捞干净，若是以后叫贼人捡了便宜趁机摸走，哪怕只是一条！那都是我四鲸帮的损失！”
　　有淡淡阴沉的语气：“渔帮主，不论是张不得还是吕长成的话，属下都觉得颇有道理。虽然碧灵鱼珍稀罕见，我们也的确不该对其赶尽杀绝；但在我们的渔网之间有着足够大的缝隙，大鱼自然逃脱不得，小鱼却可漏网逃生。因此属下更加认为吕长成的话更有道理些！属于我们四鲸帮的东西，可不能叫别人窥觑了去！”
　　……
　　杨浮生听得清清楚楚，脸色略微沉重，心中恍然明白，怪不得自己蹲了一夜都见不到一条碧灵鱼！原来……早就被这四鲸帮的人给尽数揽入渔网中了！这四鲸帮可没有什么好名声啊，烧杀抢掠，无恶不作，是名副其实的江上大王……可自己要想从他们的手里抢到碧灵鱼，那跟潜入城主府行窃没有任何区别，都是送死！（江上大王=海贼）
　　此时，一道老成的声音响起：“撒网！”
　　忽然察觉周围湖中的水流变得急剧紊乱起来，杨浮生隐隐感觉不妙，本打算迅速离开这儿，哪曾想到一张巨大的渔网硬是直接将他从湖里面捞了出来！
　　渔网高高挂起。','　　杨浮生看见在一艘高高大大的船上，海船的甲板上站满了一排排的人，各个看起来凶神恶煞，手中更是持有兵器。
　　他不由微微一汗，心想这帮人正在惊疑的打量着自己，本是想看看能不能捞出一些漏网的碧灵鱼，谁知竟把自己当成碧灵鱼给捞了出来……
　　杨浮生心中顿时欲哭无泪……',10006,10018);

insert into ds_book values(null,10019,'在大漠尽头处有座骆阳城，城里有常年来往的骆驼商队和好像永远都不会落下的太阳，所以取了这么一个名字。

    在骆阳城东有所大宅子，宅子虽大，但里面却只有几间破烂旧瓦房。虽然这宅子破，但路过这宅子的骆阳城人都得跪下磕头，恭恭敬敬的对宅子说上一句曲王爷千岁。

    不为别的，就因为这大门牌匾上的四个大字‘镇西王府’。

    提起镇西王曲正阁的名字，天下可是无人不知无人不晓。西方夏柱国的狼崽子听了这个名字都吓得尿裤子，一人一骑就敢闯进夏柱国皇宫砍夏皇脖子的，不管是在央国朝廷上还是在江湖里，这都是头一份！

    今天的镇西王府开着大门，庭院里摆上了一张戏台。戏台上，一个穿着羊皮袄的红鼻子老头，疯疯癫癫的拉着一把二胡。

    台上唱戏的是个大花脸，远处看，他亮的晃眼。近了才看出来，这人穿的可不是戏服，而是一身铮亮的金刚锁子甲！

    他嘴里唱的是已故的秦老将军做的诗《将军行》。

    这时，从门口跑进来一个穿着素色衣裳的中年女子。虽然这女子上了年纪但也算得上是风韵犹存。

    看着女子来了，红鼻子老头二胡也不拉了，他咧开嘴一笑露出一嘴大黄牙道：“大妹子回来啦！”

    妇人白了他一眼对花脸急道：“王爷，我去私塾找了，子牙先生说小王爷今天根本没去私塾！”

    大花脸蹲下盯着妇人喊道：“快去平春楼寻他！”

    今早，一个骑着骆驼的美少年从骆阳城的私塾里出来，他趴在骆驼身上，一副无精打采的模样。

    “曲经年来了，关门关门！”

    李家武馆的一群人手忙脚乱的把门挡上，美少年瞥了一眼，没理，径直离去。

    武馆里的老师傅和几个身材健硕的后生都长舒了口气。没等几人开心一会儿，从外面就飞来一脚，把门踹出了一个大洞，老师傅和几个后生也被掀翻到一旁。

    “要不是你们几个喊我，我都忘了今天还要和你们切磋切磋。”

    老师傅看着曲经年这张坏笑着的脸，简直要吐出一口老血。

    他求饶道：“小王爷，你可饶了我这把老骨头吧！你想打架就去帝都的论武宫！”

    曲经年挠挠头道：“帝都的论武宫？”
','    几个后生也附和道：”对对，去论武宫里打一架。”

    “帝都，论武宫……”

    曲经年喃喃自语着走了出去。

    一个后生说道：“师傅，我看这小王爷今天有点反常啊。”

    老师傅捋了一把胡子笑道：“毕竟还是个孩子，要不是王爷把他扔军营里长大，生性有些乖戾，要不然他跟你们一样，都是好后生！”几个后生连连点头。

    老师傅心里乐开了花，他想，只要这曲经年不再找他打架就是天下最好的事了。

    一个七八岁的小姑娘跑了进来，他娇声道：“爷爷，咱家后院柴房里着火了。”

    老师傅喷出一口老血大骂道：“曲经年，你个天杀的小泼贼！”

    趴在骆驼上的曲经年撇撇嘴嘟囔着：“背后说人最讨厌了，对吧？大年。”他座下的骆驼哼哧了一下，表示同意。

    曲经年骑着骆驼慢悠悠的到了平春楼。

    “曲经年来啦！”

    站在外面的望风的龟公喊了一句，还没等老鸨关门，一群姑娘和几个嫖客就蜂拥而出。

    姑娘们喜笑相映，簇拥着曲经年进了平春楼，那几个嫖客像是老鼠见了猫一样四散而逃。

    老鸨跟在后面骂骂咧咧着：“一群忘恩负义的小贱人！”

    楼里，曲经年枕在平春楼里最美的桃花姑娘腿上，剩下的几个姑娘为他斟酒，夹菜，剥水果。

    桃花掩面轻笑道：“小王爷今天来这么早，莫不是又逃课了。”

    曲经年摸了摸怀里鼓鼓囊囊的地方说道：“昨天好不容易从铁公鸡手里抠出几百两银子，当然要来这平春楼里快活快活。”

    桃花姑娘用手指轻轻点了点曲经年的头说道：“你这小鬼，要怎的快活？”

    “当然是要这么快活！”
','    曲经年翻身起来，搂着桃花的脖子，在她脸上轻轻点了下。桃花姑娘的脸刷一下的红了起来。虽然桃花在这风尘场里混迹了快十年，但毕竟只是个只唱曲儿的清倌人。被曲经年这般美少年调戏一下，也不禁羞了。

    桃花点点曲经年的脑门道：“像曲弟弟这般的美少年，将来还不知道要祸害多少怀春的少女。”

    正当曲经年正在平春楼上喝的开心时，一个长的黝黑的大胖子，颤颤巍巍的上了平春楼。

    这个像是块黑秤砣的胖子叫王山，是骆阳城主王阳青的独子。他与曲经年是城里私塾的同学，外号铁胖子。

    他刚看到曲经年就上气不接下气的说道：“曲哥儿，你家秦大娘来私塾寻你了，还不快走！”

    要说小王爷曲经年，天不怕地不怕，唯独怕的就是这秦三娘。

    但曲经年却怕在姑娘们面前丢了面子身子又一到，躺在桃花腿上道：“任他来寻我。铁胖子，你家老子看的严没来过这平春楼吧。姑娘们，来，伺候着，这可是城主家的大公子！”

    曲经年说完，几个姑娘迎了上去，拉扯起王山。

    看着王山泛红的黝黑脸庞，曲经年觉得好笑。

    王山挣扎开，道：“曲哥儿，信我捎到了，我就先走了！”

    王山跌跌撞撞的下了楼，没走一会儿王山又跑了上来。

    “秦大娘来啦！”

    曲经年赶紧翻身起来，“铁胖子，帮我挡着！”

    说完，曲经年推开窗户，从平春楼二楼跳了下去。

    说曲经年怕秦三娘是有理由的，曲经年自幼丧母，所以曲正阁对曲经年溺爱的很，从不舍得动他半根汗毛。

    而这秦三娘虽只是曲经年的奶妈，但曲正阁却对她是尊重的很。当曲经年犯错，秦三娘拿鞭子教训时，曲正阁也是睁一只眼闭一只眼。

    曲正阁翻身上了骆驼，向着私塾奔去。秦三娘再厉害，也向来是不敢在私塾里打人的。

    曲经年回头，秦三娘正在后面追他。她手里还拿着一根三尺来长的蛇皮软鞭。

    “小王爷，停下抽你两鞭子就好。”

    “两鞭子我屁股就开花了！”',10007,10019);
	insert into ds_book values(null,10020,' 曲经年骑着骆驼行到了骆阳城城主府所在的街上，这条街相比其它街道热闹的多。

    一辆四人抬的青衣轿子从路口慢悠悠的转进来，曲经年的骆驼骑的极快。就要与那轿子撞上之时，一个消瘦的身影从天而降，他挥挥手，曲经年的骆驼就止住了步。

    那人黑衣白发，衣和发都飘飘逸逸，不扎不束。衬着浮在半空的身子，真有些许世外仙人的意境。

    那人落下来，他细长的双眼一直打量着曲经年。这时，从轿子里钻出来一个身着锦衣华服的黑胖子，他就是骆阳城主王阳青，正五品官。

    “诶呦，小王爷，你可吓死我了！”王阳青拍了拍胸口道。

    这时，秦三娘也赶了过来。

    那人看着曲经年问道：“你就是曲经年？”

    还没等曲经年说话，那王阳青就抢着回答道：“是是是，这就是曲小王爷。”

    秦三娘把曲经年护在身后道：“王大人，这位是？”

    王阳青赶紧回道：“这位是打帝都曹家来的。”

    秦三娘看了他一眼道：“老曹家什么时候多了这么一号人物。”

    那人不说话，只是向前一跨，秦三娘还没反应过来，那人就到了她的身后。

    “我有要事禀告镇西王，还请带路。”

    那人不光长的冷冰冰的，连说话的语气也是寒的很。

    曲经年上了骆驼对那人说道：“去镇西王府没问题，但到了王府，可要在门口磕三个响头才能进去，这是规矩。”

    曲经年转头对秦三娘说道：“秦大娘，回去告诉老头子，镇西王府来客了。”

    秦三娘点了点头，等秦三娘走了会儿。曲经年才带着那人向着镇西王府走去。

    等到了镇西王府，那人竟然真的跪了下来。

    “我太叔丹凤最讲究的就是这规矩。”

    说完他连磕了三个响头，曲经年这下倒是对他有些刮目相看。

    此时，曲正阁正端坐在王府大厅里。从外面看镇西王府破破烂烂，但进了屋子才知道，这装饰叫一个奢华。

    大厅里的横梁是从南方十六国里运来的整根的上好紫檀木，紫檀木刷着厚重的金漆，几颗碗大的夜明珠子镶在梁上。','
    地下铺着鹅绒毯，墙上挂满了名贵字画。

    卸了妆的曲正阁换上一件蟒袍坐在从夏柱国皇宫里取来的夏皇龙椅之上。

    太叔丹凤进了屋子，看着坐在龙椅上的曲正阁。

    只见他身躯凛凛，相貌堂堂，方口阔鼻，一双虎目不怒自威，两道浓眉如铁血弯刀，太叔丹凤不禁暗叹了句，好个汉子！

    进了屋子，曲经年大咧咧的坐下，那太叔丹凤行礼道：“在下……”

    曲正阁打断了他道：“我记得你，曹家的幕僚，太叔丹凤。”

    太叔丹凤想到，在三年前曲正阁去帝都的时候，他倒是远远看过他一眼，没想到他竟然记得自己。

    “老狐狸又有什么歪点子，让你来这骆阳城。”

    “是为婚约而来”

    太叔丹凤说完，曲经年悠悠开口道：“喂，镇西王爷，你啥时候给我找了个后妈，我咋不知道。”

    曲正阁一拍桌子，怒目圆睁道：“小混蛋，这他娘是给你找的媳妇。”

    “怪我没说清楚，是为小王爷的婚约而来。曹公的意思是，明年小王爷和曹小姐都满十七了。按央国规矩来说，藩王与朝廷重臣的婚礼是要在帝都举办的。所以……”

    太叔丹凤还没说完，曲正阁就像撒泼似的嚷道：“不干不干，老子养着么大的儿子，反要去给那老狐狸做上门女婿，不干！”

    曲经年听的是一头雾水，他可是一点也不知道他还有一桩婚约这件事。

    太叔丹凤像是有什么难言之隐，他对曲正阁使了个眼色。

    曲经年看到了他的小动作，切了一声，起身离开了大厅。

    曲经年来到院里，红鼻子老头手中的一把二胡拉的正欢。

    突然老头喝到：“朗朗乾坤，我劝你要走好路！”

    二胡声骤然变得急促，空气中游动的音波化为道道无形利刃，似于空气中的某物在进行拼斗。

    一曲破阵子，空中那物显了形，那东西掉到地上，竟是个白衣人。

    “小王爷，去看看是个啥子东西吗！”
','    “得嘞，老三爷！”

    曲经年跑到那人跟前，揭下他脸上的面罩。

    曲经年看了一眼回头喊到：“老三爷，是个细皮嫩肉的小哥。”

    老三爷咧嘴一笑，露出一口大黄牙道：“拉到军营里，喂狗去嘛！”

    “好，喂狗！”

    那人杏眼怒视着曲经年，啐出一口唾沫。

    “小狗贼！”

    曲经年嘻嘻笑道：“老三爷，他说我是小狗贼！”

    老三爷乐的拍起手，“你就是小狗贼，小狗贼！”

    曲经年看着那人，对着他脸吐口唾沫。

    “老子就是小狗贼，今天小爷就吃了你！”

    他转过头去不再看曲经年，曲经年拨弄了一下他帽子下露出来的玉坠儿一样的耳垂说道：“来镇西王府的刺客我见多了，但像你这么标致的姑娘还是第一个。”

    曲经年拿下那人的帽子，青丝宛如瀑布一样散落。

    曲经年站起身说道：“老三爷，把她关到后院地牢里。”

    也不知道曲正阁和太叔丹凤在屋里说了些什么，曲正阁一出来他的态度就转了个弯。

    等吃过午饭，曲正阁让老三爷去通知大漠三十六城的城主，小王爷曲经年要出关了！

    此时，曲正阁书房里。

    曲经年翘着二郎腿坐在书房的太师椅上。

    “诶呦，小祖宗你就去一趟帝都，听说曹家姑娘可是个天仙胚子。”

    看现在曲正阁这低三下四的样，可一点都不像是传说中的铁血镇西王。

    “我说镇西王爷，你怎么也得先跟我说说我这档子婚约吧。”曲经年把玩着一对儿玉珠子说道。

    曲正阁关上门，不知在里面给曲经年嘀咕了半天什么。等曲经年出来后他的神情有些落寞。',10007,10020);
	insert into ds_book values(null,10021,'夜晚降临，骆阳城主王阳青早早的就在镇西王府临着的几条街上布置上了大红灯笼。

    小王爷曲经年要去帝都成亲这事已经传遍了骆阳城。

    镇西王府今夜的来客是络绎不绝，有钱的送厚礼，没钱的送薄礼。不管是谁，都想来这王府里沾沾小王爷的喜气。

    “平雁城主送来一对儿东海的赤血珊瑚！”

    “明泉城主送来上好的羔羊皮一百张！”

    ……

    “他娘的，我怎么感觉我被老混蛋卖了！”

    房顶上，曲经年抢过老三爷手中的酒葫芦灌了一口老酒。

    老三爷把酒葫芦夺回来骂道：“你爷俩，一个比一个混蛋！”

    这时，秦三娘领着一帮半大的少年进了王府，这是曲经年私塾里的那帮同学。

    这些人大都是些穷苦人家的孩子，他们围坐在特意为他们设的一张桌子周围。

    铁胖子一眼就看到了坐在房上的曲经年，曲经年对他摆了摆手示意一会儿下去。

    门口的小厮叫道：“平春楼的桃花姑娘送来玉吊坠一个！”

    “桃花姐！”

    曲经年眼睛一亮，翻身下了房顶。

    老三爷嘟囔道：“他娘的小色胚！”

    “这边坐！”

    曲经年拉扯着桃花来到了坐着私塾同学的这一桌。

    “曲哥儿，我叫你下来你不下来，桃花姑娘来了，你跳的倒是比谁都快！”

    铁胖子说完这话，同桌的同学都笑

    了起来。

    曲经年撇撇嘴道：“我家桃花姐，能跟你这个一身糙肉的铁胖子一样吗！”

    桃花捂嘴轻笑道：“今夜就不在曲弟弟这儿喝了，妈妈还等我回去唱曲儿呢。”

    曲经年拉住了桃花的手道：“这全骆阳的人差不多都在这镇西王府聚着，你回去唱曲儿给谁听。”

    桃花抽出了手道：“今个儿平春楼里倒是来了个稀奇的人，指名道姓要我唱曲儿，我不回去还不行了。”

    桃花笑笑，站起来行了个礼，就要走。','
    曲经年没留，轻轻道了声：“再会。”

    桃花聘聘婷婷的走了出去，曲经年喝下两杯烈酒。

    铁胖子建议道：“曲哥儿，这儿无聊的很，要不我们去私塾里看先生练剑。”

    曲经年虽没心情但看铁胖子兴致高昂，还是点了点头。

    路上，铁胖子跑的欢实，曲经年小声骂了句，“他娘的，老子要走了，你就乐成了狗尾巴花。”

    曲经年两手背在脖子后，仰头看着天空。

    他要走了，估计会偷着哭的也就秦三娘吧。

    镇西王府里，曲正阁一张阔脸通红，他看上去醉意醺醺，但没人会相信他真的会醉。

    太叔丹凤一个人躲在角落里喝酒，他不喜欢麻烦，所以他也不喜欢与人交流。

    秦三娘张罗完酒菜一人跑回屋里，抚摸着一双曲经年穿过的虎头鞋，留下眼泪。

    老三爷仍坐在房上，用羊皮袄一遍一遍的擦拭着琴杆。

    今晚，子牙先生坐在私塾院里的椅子上喝着小酒，赏着月亮。他苍白的胡须落在胸口处，一双眼睛无精打采。

    忽然他猛地睁开眼睛，月光映入眼中，流光溢彩。他朝旁边的竹子弹了一下，一根三尺长的细竹掉了下来。

    他接住竹子，眨眼间他的身体就轻飘飘的落在院里的一座假山之上。

    他左手持着酒杯，右手持竹，脚尖点地。

    一头散乱的白发无风自飞舞，手中的竹已经不见踪影，原来他的出手速度极快，不消眨眼的功夫，手中的竹子就刺出一百零八下。

    像是惊鸿一瞥，使出这绝世剑术的老头此刻又卧在了椅子里，一双眼睛仍无精打采。

    忽然划过一阵微风，旁边竹子的竹叶片片落下，整整一百零八片，不多不少。竹叶落到地上，组成曲经年三个字。

    趴在墙上的曲经年和铁胖子看的是惊掉了下巴。

    子牙先生对着墙上喊到：“这算是做先生的给你送上的一份贺礼。”

    此时镇西王府里，客人们喝的正酣，曲正阁借上厕所之名来到了后院的地牢里。

    地牢那女子被老三爷封住了几处大穴，身体不能动弹。她看到曲正阁下来

    ，两眼死死的盯着曲正阁，她的牙齿咬的咯咯作响，像是要将曲正阁生吞活剥。

    曲正阁看着她，她虽然有些狼狈，但看上去仍然还是个美人。

    这女子相貌娇美，肤色白腻，别说这大漠里的三十六城，就连在江南一带也是少见的美女。
','   曲正阁眼睛直勾勾的盯着她，过了半晌曲正阁说道：“能做出这般精致日行衣的大概也只有烟花楼了。想杀我曲正阁的人数不胜数，但烟花楼里来人，你还是头一个。”

    “像你这种狗贼！天下人人得而诛之！”

    听到这声音曲正阁一愣，过了会儿，他声音有些微颤的说道：“你是，雪姑？”

    “没想到吧，曲正阁。你当年屠了秦家满门，却还留下我这么一个活口！”女子厉声喝道，她的声音有几分得意有几分猖狂，更有几分悲怆。

    地牢很冷，曲正阁搓了搓手捏碎了地牢的大锁，他淡淡的说道：“就这二把刀的功夫还想来找我复仇？回去再练几年吧。”

    女子显然有些不可置信的说道：“你，你要放我走？”

    “走吧。”

    曲正阁解开了女子身上的大穴，女子看了看曲正阁，他还是像多年前一样让人摸不清深浅。

    不过那时，他是曲伯伯。现在，他是曲恶贼.

    女子转身离开，出了地牢，消失在喧嚣的人群中。

    老三爷拉响二胡，道一声：“我劝你，行正途！”

    月上中天子时夜，镇西王府里的人渐渐散去。

    曲经年走在骆阳城的街道上，子牙先生的那套剑招固然精妙，但曲经年却是半分都没有领悟。

    行至平春楼，今天客少，平春楼已经熄了灯。

    桃花姑娘要弹曲儿给谁听，曲经年不知道，但那肯定是个翩翩君子。

    曲经年从怀里掏出桃花姑娘送的玉坠，那是个雕琢的并不精致的弥勒佛，但却笑的开心。

    曲经年把吊坠戴在脖子上，又朝平春楼上看了几眼，走了。

    路上行人看见曲经年，行个礼，叫声小王爷，曲经年也笑着点点头。

    曲经年是个怎样的人，他虽是镇西王的儿子，但却不纨绔，只是多了些机灵，多了些戾气。

    自打他记事起，他好像就没喜欢过这座叫骆阳的小城，也没喜欢过自己权侵朝野的老爹。

    但等到真的要离开这儿了，他才发现，这座大漠古城原来那么可爱，自己的老爹也不是那么差。

    突然，曲经年感觉背后一凉，他转过头，漆黑的夜里有猛兽出没。

    这时，打他前面走来一人，黑衣白发，正是太叔丹凤。

    太叔丹凤一出现，曲经年背后的寒意就散了。

    太叔丹凤走过来，微微颔腰，算是行了个礼。

    他道：“小王爷，夜深了，该回了。”',10007,10021);

insert into ds_book values(null,10022,'基尔戈福海岸，一年中的冬季如约而至，由于靠近西青海的原因，温暖的洋流让基尔戈福即便是在冬季平均气温也高达10摄氏度，温暖温润的气候养育着成千上万种不同的生物，他们在这里生存、繁衍。','','',10008,10022);
insert into ds_book values(null,10023,'烁银山脉位于瓦罗兰大陆的正南方，环境有缘典雅，其中一座山因为盛产灵犀石而被称作灵犀山，灵犀石是衔金虫结的茧，是制作珍贵琉璃的原材料
        ','','',10008,10023);
insert into ds_book values(null,10024,' 一月三号这一天下了场小雪，天色灰蒙蒙的，崎岖的小路上没有多少行人，一辆简陋的驴车吱呀吱呀在小路上缓慢前行，一只小黑猫趴在驴背上幽怨地看着坐在车里女人怀里的婴儿，那个温暖的地方应该属于自己才对。
','','',10008,10024);

insert into ds_book values(null,10025,'2022年12月20日早上八点半，华国炎黄大学工业管理学院第四十七号男生宿舍楼静寂无声。

    炎黄大学作为世界知名大学，座落于华国的国际大都市魔都市的北部郊区。该大学的管理甚为严格，此时绝大多数学生已经离开了宿舍，坐进了教室。

    四十七号宿舍楼于是极为安静。

    宿舍楼4014房间里悄无声息，房间里摆放着三架高低床，此外有一个大型储物柜。两张电脑桌上随意地摆放着几部手提，墙上张贴着几张美女的海报。

    门口的垃圾桶几乎被方便食品袋堆满，散发着一股异味。每张床下边都有几双臭袜子，加剧了房间里的空气污染。

    这是标准的大学生单身狗们的房间！

    冬日暖阳透过玻璃窗，照射在窗边一个正在沉睡的俊秀男生的脸上。

    这个男生名为林辰，是工业管理学院大四的学生。

    沉睡中的林辰脸色扭曲，似乎正在做噩梦，感觉极为痛苦！

    “啊！”

    一声大叫，林辰猛然坐起，用凌厉的眼神扫视着周围的环境。

    “我这是在哪里？难道这里就是死后的世界？可是怎么这么熟悉？”

    平和的环境并没有带给林辰危险的感觉，他收敛了眼神中的凌厉和审视，随即就是一脸的懵逼。

    “这里......这里好像是我大学时候的寝室？”

    “这一切是真的还是假的？难道末世十年的经历只是我刚做的一场梦？可是有什么样的梦是这样逼真？”

    林辰的脑海里缓缓涌出末世十年的记忆！

    在他的记忆里，末日从2022年12月22日正式开始，他在末日里存活了悲剧的十年。

    末日开始的时候，他迈不过自己心里的坎，不敢与丧尸和变异兽搏杀，结果错过了进化的黄金时刻。

    在天云基地里，他与妹妹林雅重逢。

    林雅在这个城市另外一所大学上学。林雅继承了父母的优秀基因，和林辰一样俊美，当时正在上大二。

    末日发生之后，林雅所在学校的学生自救组织的头目意图qj她。刚强的林雅在剧烈的反抗中觉醒了木系异能，当场杀死了那个头目，随后成为她们学校的领头羊之一。

    兄妹重逢之后，在林雅的保护之下，林辰更是没有多少战斗机会，从而没有在战斗中激发异

    能。
','    林雅拼命为林辰弄到了一枚异能晶核，让林辰也激发了木系异能。

    女性异能者本就稀少，林雅又极为美丽，所以追求的人数不胜数，但是她却遵照了林辰的意思，导致了林雅后来的悲剧。

    林雅死后，林辰痛不欲生，开始与丧尸和变异兽玩命，异能增长很快。他付出极大代价，终于给林雅报了仇。

    几年之后，林辰杀回峰西省的家乡，得知父亲本来觉醒了异能，却在末日两年的时候因为与其他幸存者争斗而死去。而母亲作为一个普通人，在父亲死后不久就被丧尸杀死。

    林辰由此崩溃。

    他觉得，要是他早点带着妹妹杀回家乡，林雅不会出事，父母都不会死！

    生无可恋的林辰从此浑浑噩噩地活着，每天如同行尸走肉，只为活着而活着，对一切都失去了兴趣。

    他参加了一个佣兵团，接了一个护送任务到达帝都基地，以后就在帝都基地混生活。

    末世十年的时候，他参与了一次大型遗迹的探索，暗中藏下了一个别致的种子样的物品。

    回到营地的当晚，他当着自己女人的面把玩着那颗奇特黑色种子的时候，一截刀尖从左胸口透出。

    是他的兄弟从背后给了他致命的一刀！

    他的鲜血从口中喷出，染红了那颗种子！

    他感觉到自己的生命在流逝，感觉到那颗种子在吸收他的鲜血！

    他偏头看见他的兄弟绕过他，搂住他女人的腰，伸手要拿那颗种子！

    他看见他的女人妩媚地依靠着他的兄弟！

    生命的最后关头，他心里奇迹般地平静，心里想的竟然是‘终于要解脱了啊。只是，他们是什么时候好上的？’！

    那时候，他的心里竟然没有恨。

    也许是因为他自从妹妹和父母死后就没有把兄弟和女人看得那么重要吧？也许是因为他的内心深处早就不留恋世间的一切了吧？

    只是，他一直没有自己杀死自己的理由！他的命是雅雅的命换来的！

    他最后的念头是‘雅雅，爸妈，我终于要来见你们了。’

    他的脸色终于开始扭曲，产生了最最后一个念头：老天，我这一生真的是被你摆在了茶几上......如果有来世.....如果一切重新开始......爸妈......雅雅......

    ......

    4014宿舍里，林辰坐在床上。
','    不知不觉之间，他的脸上已经满是泪水。

    抹了一把脸，稳稳心神，林辰开始严肃地思考一个问题。这个问题就是‘我究竟是做了一个梦还是像玄幻小说所写的那样重生了？’

    要说是重生吧，那毕竟是太不可思议了一点！

    但是要说是做梦吧，末世十年的痛苦绝望经历好像是历历在目，逼真无比！

    念头稍微一转动，脑海里涌出了末世里自己的战斗经验和修炼过的心法和功法，详细得每一个点滴都能记忆起来！

    做梦总不可能凭白得到战斗经验和功法内容吧？

    林辰有了初步的判断：我可能是真的重生了！

    压抑着心里即将冒出的狂喜，林辰手忙脚乱地翻出了自己的手机，准备看看手机上的时间。

    ‘2022年12月20日，上午9点’

    “末日是2022年12月22日0点开始，我好像还记得就是今天上午将近九点的时候，岛国的首都发生了9.4级的超强地震，死伤无数，让华国的愤青们偷着乐了一阵。后来人们说那就是末日的前兆。”

    “如果末日注定要发生，那么此时的即时新闻上已经有了岛国大地震的消息推送出来！”

    林辰一把掀开被子，跳下床来，随手按下一部手提的开机键。

    在等待手提开机的时间里，林辰毛毛躁躁地穿好了衣服鞋袜。

    开机完毕，林辰的右手哆哆嗦嗦地捏住鼠标，满怀期待地点开即时新闻。

    ‘今日八点五十八分，岛国首都发生9.4级大地震’

    血红的消息跃然于首页头条新闻上！

    “哈...哈...哈...”

    林辰仰头大笑三声，如同鬼哭狼嚎。随即又是双拳紧握，泪流满面，喃喃自语：“要来了，要来了，末日真的要来了！”

    “我真的重生了！”

    “老天爷、如来佛祖、观世音菩萨、玉皇大帝，不管是谁都好，因为什么都好，感谢你让我有了再来一次的机会！”

    “爸，妈，雅雅，这一世，我发誓再也不会失去你们！”

    这一刻，冰冷的血液开始沸腾！

    这一刻，死寂的心灵彻底复苏！',10009,10025);
	insert into ds_book values(null,10026,'4014宿舍里，林辰确认了自己确实有了再来一世的机会，脑海里嗡嗡一片，心里一时混乱无比，各种情绪涌上心头。

    惯性的冷漠让林辰很快恢复了冷静，他开始思索自己重生的原因。

    本来他对一切事情都很漠视，但是既然现在所有的悲剧都还没有发生，为了让未来的路走得更加顺畅，对于异状还是需要思索清楚。

    而且他直觉觉得，他的重生一定不是一件简单的事！想清楚这个问题对他以后的路绝对很有好处！

    记忆回到前世死亡之前的所有情景，林辰的注意力集中在了那颗奇特种子吸收自己吐出的心头血之上。

    他隐约觉得，他的重生就是那颗奇特种子造成的。

    那是一颗什么种子？为什么有逆转时空的巨大能耐，让他回到了末日之前？它来自哪里？它的主人是谁？

    ‘嗡’

    林辰恍惚了一下，突然出现在一个奇异的环境里。

    眼前是一片青青草原，远方是一片森林，森林背后是魏巍高山。左转，也是草原，草原尽头似乎是一片雾霭。右转，远处似乎是一片平静的大海。向后转，后面的远处也是大海。大海的尽头仍然是雾霭。

    一条小河从左边的雾霭中流出，把草原分成两半。

    河水静静地穿过草原，缓缓注入右边的海洋。

    身前几米的地方有一个两米见方的小水潭，深约两三米，清澈见底。

    水潭中央有一个拳头大的泉眼，汩汩冒水。神奇的是水潭的水面并不因此而上涨，也不知什么原因。

    天空中挂着一个太阳般大的火球，散发出温暖的光芒，照耀着这个奇异的世界。

    “这是什么地方？难道我又穿越了？”

    看着奇特的环境，林辰满脸的懵逼，心里着急得很：老天，你是在玩我呢。我刚刚回到过去，还没解救爸妈和雅雅，你怎么就把我弄到这里来了？

    突然，脑袋一阵胀痛，大量信息进入林辰的脑海。

    林辰花了一点时间梳理了脑袋里突然冒出的信息，终于搞明白了前因后果。

    原来林辰的重生真的是那颗奇特种子的功效。

    奇特种子真正的名字是‘混沌种子’，也称‘宇宙种子’。

    无尽的虚无混沌中，存在着无数宇宙。

    这些宇宙有的是智慧生灵自己修炼而成的，称为‘生灵宇宙’。更多的是混沌自身在大道法则的影响之下产生的，称为‘混沌宇宙’。

    像林辰所在的宇宙就是‘混沌宇宙’之一。

    ‘混沌宇宙’的前身就是‘混沌种子’。‘混沌种子’由大道法则孕育而成，在虚无混沌中经过漫长的演化，最终会演化成‘混沌宇宙’。

    演化失败的种子会回归原始的种子形态，等待认主智慧生灵，与智慧生灵共同演化宇宙。

    所以说演化失败的混沌种子是会修炼的智慧生灵最大的机缘。

    这颗种子就是一颗演化失败的混沌种子，落入地球所在的宇宙已经亿万年。只可惜认识它的生灵没遇上它，得到它的生灵又不了解它的价值和使用方式。

    之所以如此，是因为它的认主方式很是特别，需要智慧生灵的心头血和灵魂。
','    前世林辰死亡的时候，恰巧喷出了心头血，灵

    魂又注意到了种子的吸血过程。随后当林辰生命消逝，灵魂离体的时候，顺其自然地进入了种子里面，完成了混沌种子的认主过程。

    种子认主之后，感受到林辰强烈的怨念和遗憾，就消耗了自己积累的混沌本源之力，逆转了地球所在宇宙的时空，把林原送回了末日之前。

    由于种子的混沌本源之力有限，所以只能逆转这个宇宙的时间到地球末日发生的前两天，后果就是它的等级从‘宇宙种子’沦落到‘世界种子’。

    至此，种子已经付出了一切，只能期待着林辰以后能够修炼到这个宇宙的巅峰，让它有机会回复本来。

    现在种子的状态是与林辰灵魂绑定，存在于林辰的灵魂之中。

    可以说种子就是这个小世界，这个小世界就是种子。

    作为小世界的主人，林辰可以随意进出和使用。

    在这个小世界里，林辰就是神，可以凭借念头操控一切。他还可以将外界无生命的物体随意摄入，前提条件是他的身体能够掌控或者精神力能够完全包裹住。

    摄入生物则需要对方不反抗，或者需摄入生物的精神力以及生命场域强度不超过林辰的一半。

    那口水潭是‘世界源泉’，具有强大功效。现阶段它的主要功效就是可以把所有类型的能量转化成易于吸收的纯粹能量反馈给宿主。

    现在这个小世界看起来很大，其实总面积只有100平方公里左右，草原的面积大约是三十平方公里，边界处的雾霭是空间屏障。

    再则，这个小世界的时间比林辰所处的主世界的时间快十倍，也就是说这里过去十天外界才过去一天。林辰可以可以通过付出所收集的能量或者消耗小世界能量的方式来使局部范围的时间加快或者减慢。只是以消耗小世界的能量为代价来调节时间会使小世界的空间缩小。

    林辰在小世界里的修炼与此同理，不投入能量而在里面修炼也会使空间缩小。

    以后世界的演化扩展取决于林辰从外界摄取的能量多少和林辰自身的修炼等级提升。

    林辰梳理完这些信息之后，有种恍然大悟的感觉。

    他就说嘛，重生哪有这么容易的！

    他的重生相当于消耗了一个宇宙的本源，逆转了整个宇宙的时空！逆转了宇宙所有生灵的时间！

    这个过程中，别的生灵没有未来记忆，他作为种子的主人，才有了未来的记忆！

    当然，从现在起，那些前世记忆只能作为一种可能性进行参考。这个宇宙的进程，从现在起，就要走上不一样的道路。

    所以林辰可以拍着胸口保证，他的重生是有理由的，是有科学根据的！

    弄明白一切之后，林辰产生了一切尽在掌握的狂喜。

    他知道，他的未来已经不仅限于地球了！

    他会带着他在乎的亲人朋友，攀上无穷尽的高峰！

    林辰的心性毕竟经过了惨痛经历的磨砺，他很快就强迫自己冷静下来。

    万丈高楼平地起。他的当务之急是带着亲人朋友渡过末日之劫。

    他开始相信，无论这场劫难背后隐藏着什么，他都会揭开谜底，并且给予造成这场劫难的始作俑者深刻的教训！

    尽管外界的劫难迫在眉睫，但是既然这里面的时间比外界快十倍，林辰就不急着出去，而是打算在这里面把以后

    的发展路径想清楚，并对这个世界做一些实验性的动作。
','    只见林辰目视前方，意念一动，前方的土壤开始变动，很快就出现了一座占地两百平米左右造型别致的两层别墅小楼。

    ‘世界源泉’位于别墅前方。

    林辰走到储物间，将储物间改造成了虚拟空间。虚拟空间的作用是物品摄入之后可以无限压缩，从而节约空间。这是一种奇特的空间转换，把这个小世界的高空范围虚拟到这个储物间里面。

    也就是说，这个储物间的装载体积只要不超过小世界的总体积，就可以无限储物。

    这只是种子传递给林辰的小技巧。

    林辰又设置了种植区和生产区。这主要是针对即将来临的末世。

    在末世里，几乎所有土地都被病毒污染，正常作物难以生长，农业生产和工业生产几乎停滞。那时候这些种植区和生产区将会发挥巨大的作用。

    他还围出了很多片栅栏区，准备养殖家畜。

    完毕之后，林辰感觉精神一振疲累。

    看来这些操作消耗的是自己的精神力。不过这都是值得的。

    随后林辰花了一个小时回忆前世十年的经历，并制定出了针对性的行动计划。

    最后林辰开始修炼。

    在主世界里，要到明天凌晨宇宙元能才开始复苏，修炼功法才会有效果。而在这个小世界里，林辰一进来就感觉到元能很是充沛。

    尽管此时修炼消耗的是小世界的血液，但是并不妨碍林辰消耗上那么一点点来试试效果吧？

    前世里，林辰得到的最好的修炼心法是‘九转练气诀’，论品级只能算是中品。而这却是他出生入死，在末世八年的时候才在一个中型遗迹里面得到的。

    精神力转动，心法开始运行，充沛的元能进入林辰的身体。

    心法运行一圈之后，林辰猛然感到全身一震，似乎摆脱了沉重的枷锁，身体无比轻快，力气似乎大增。

    与此同时，他莫名地感到与周围的空间无比契合。

    下一刻他进入了内视状态！

    在内视状态下，他‘看’到丹田里出现了一个灰色的微小气旋，脑海里出现了丝丝白雾。

    “这...这...这灰色气旋好像是空间元素具现！脑海白雾好像是精神力具现！这是怎么回事？难道重生一次之后，我具有了空间系异能和精神力异能，我成为了‘天醒者’？”

    在前世里，凡是在法则神光出现之前获得异能的叫做‘天醒者’，在法则神光之中获得异能的叫做‘先天进化者’，之后获得异能的叫做‘后天进化者’。

    前世的大概统计，天醒者的比例大约是亿分之一，先天进化者是万分之一，后天进化者是千分之一。

    当然这是总体比例，在有的群体里比例可以提高两三倍。比如大学生和军队群体，要么是是智力高超精神力过人，要么是体魄健壮精力过人，这些群体里大约每两三百人里就能产生一个后天进化者。

    至于身体强化变异者，那个比例就比较高了。

    这些觉醒比例数值代表了修炼潜力和修炼速度。

    林辰前世不过是后天进化者。

    现在他成了天醒者！

    这是种子的馈赠还是重生人士的福利？
',10009,10026);
insert into ds_book values(null,10027,'在种子世界里，林辰对自己具有了空间异能和精神力异能惊疑不定。

    片刻之后，林辰决定回到主世界验证。

    宿舍里人影一闪，林辰出现在现实世界。

    林辰立即感到了不同。

    此时，他对周围的环境感应十分敏锐，即使闭上眼睛，也感觉到身边两三米的东西历历在目。

    稍稍集中精神，他甚至能感觉到宿舍门外面的情况。

    集中感应一点，连距离宿舍七八米远处的楼道口的情况也好像能‘看到’。

    与此同时，林辰觉得自己对身周的空间和距离能精确感应。

    他所在的窗口和宿舍门大约有五米多。林辰估算了一下距离，强烈地觉得自己能一步跨过去。

    当‘跨过去’的念头才一产生，林辰只觉得眼前一花，他已经站在了门口，甚至鼻子差点碰上了门。

    “这...这是瞬间移动！”

    林辰的心欢喜得快要爆炸，又想到：“既然能跨越空间，不知道能不能穿越房门？”

    下一刻，林辰的身体一动，出现在了走道上，而宿舍门还是紧紧关闭着。

    “我的天，真的能无视障碍！”

    这时，林辰的身体感觉到十分疲累。

    略微内视丹田，发现灰色气旋淡薄了不少。

    “看来这种能力还很薄弱，不能多用。”

    “不管怎么说，不论什么原因，我已经具有了空间异能和精神力异能，我已经是天醒者了。这两种能力的运用方式有待深入挖掘。不过现在还有一项需要验证。”

    掏出钥匙打开房门，进入房间又关上门。

    林辰拿过自己的茶杯，意念一动，把‘世界源泉’里面的水引出小半杯，凝视着茶杯说道：“让我看看这物质化的能量到底有多大的作用。”

    说着举杯一饮而尽。

    ‘轰’！

    随着源泉之水下肚，林辰的肚子里仿佛燃起了熊熊烈火，剧烈的热流涌向全身各处。
','    “啊...好痛...！”

    在林辰的感觉当中，自己似乎已经起火燃烧，全身各处传来撕裂般的疼痛。

    危急之时，种子传来信息：主人，快进入我的世界！

    林辰想都不想，立即进入种子世界。

    “主人，快运行功法炼化能量！”种子继续说道。

    林辰咬牙盘坐，运行九转练气决。

    身体里的能量汹涌澎湃，练气决运转之时炼化的能量只是九牛一毛，他的身体在受到持续的摧残，眼看就要全面崩溃！

    鲜血从各个毛孔涌出，不断宣泄着能量。

    “镇！”种子传出波动，镇压了林辰的身体，强行将能量锁在了林辰的身体里。

    结果就是林辰的身体内部经脉血肉不停被撕裂，然后又不断地被能量重塑，林辰一直处在无法形容的痛苦之中，似乎灵魂都要崩溃了。

    在即将承受不住，快要放弃的时候，雅雅的面容和父母的面容清晰地出现在眼前。

    “啊......我不能放弃，我不会放弃。这一世，我绝不会让你们离开我！”

    凭空增长的勇气让林辰一直坚持着，坚持着......

    他的身体强度在不断增加，他的能量积累在不断上涨，他的意志在不停壮大......

    似乎过了千年万年，林辰终于又清晰地感应到了身体的存在，感应到了身体里能量的流动，感应到了自己坚韧的意志......

    当全身的能量炼化完毕，种子撤去了对林辰身体的镇压。

    林辰疲惫地睁开眼睛，自我内视了一下，发觉**强度起码增强了十倍，相当于二级变异者的程度，两项异能都正式进阶，达到了一级中阶。

    看着身上散发着恶臭的黑色血壳，林辰淡淡地说道：“种子，时间过去了多久？”

    “主人，小世界时间过去了十五个小时，外部时间过去了一个半小时。”

    “嗯，还不算久，还来得及。”

    “主人，你真是太了不起了。这次的磨砺，让你有很大进步。只是，下次不可如此鲁莽了。你把源泉之水倒出去就喝了，我阻止都来不及。要是你的灵魂崩溃了，

    我都无法救你。下次可不能这样了。”

    “嗯，不会有下次了。”林辰心有余悸地说道。
','    他事先也没想到源泉之水的能量如此浓厚。

    这次是险死还生，下次可能就没这好运气了。

    种子肉痛的声音传来“主人，你这次消耗的能量，让空间的面积缩小了起码半平方公里，你可要抓紧时间给我补上啊。”

    林辰心里一惊“这水潭那么大，怎么消耗小半杯的能量就缩小那么多？”

    “主人，水潭里能量的绝大部分是维持世界框架本源的存在，极少数才是空间扩展的支撑啊。”

    “好吧，我知道了，我会抓紧给你补充的。”

    “谢谢主人！”单纯的种子真好哄，一张空头支票就打发了。

    林辰回到主世界，先是拖着疲惫的身体洗了一个澡，把身上洗髓产生的污垢去掉，然后掏出宿舍里的零食大吃了一顿，泡面也吃掉四桶，才回复了力气。

    看了看时间，已经是上午十一点了。

    林辰快速地思考着问题：

    “距离末日来临还有三十七个小时，如果现在就买我和雅雅飞回峰西古都的机票，等到说服雅雅，再赶到机场，铁定是晚上才会起飞。古都距离老家山区还有那么远的山路，而且明天就会异象频发，到时候很大可能会交通中断或者堵塞。”

    “带上雅雅回家的话，百分之九十五的可能会被堵在回家的路上！”

    “根据前世记忆，家乡山村本来没有多少人，爸妈是末世第二年才出问题。只要我在半年之内赶回家，爸妈出问题的几率不到百分之三。”

    “家乡资源贫乏，人口不足，难有出头之日！”

    “那么就遵照前世的记忆，好好地在这个城市发展，从这个世界级的大都市起步，开始我这一世的传奇吧！”

    “按我现在的能力，末日一两个月内，只要我不自己找死去冲击大型尸潮，是不会存在安全问题的。”

    “现在这身能力来得实在有点侥幸，下次遇到事情一定要想好再做。要是刚才没有坚持住，那么我就是史上最搞笑的重生人士，居然被重生的馅饼噎死！”',10009,10027);

insert into ds_book values(null,10028,' “高三，高三。”

    姜南喃喃自语，眼中满是震撼。

    熟悉的教室，熟悉的同学，熟悉的老师，看着四周这一切，他难以置信。

    他竟然重生了，回到了高三时！

    前世，地球剧变，古兽遍地，凶禽横空，一些隐秘家族和隐世宗门走出，更有星空中域外生灵涌入，和平的地球转眼消失的无影无踪，战乱和杀戮遍布，地球开始进入修行崇武时代。他在新的时代中挣扎前行，冲出了地球，以己身之力便可遨游星空，在某一天被九大界主追杀惨死，却不想，黑暗一晃，他重生到了少年时。

    高三的学业很繁重，老师喋喋不休的讲着各种。

    下课铃声很快响起，熟悉而又陌生的老师硬是拖了三分钟才宣布下课离开。

    姜南怔怔出神，眼中的震撼缓缓散了去，渐渐接受了自己重生了的这件事。

    教室最前方挂着一方矩形的电子表，2022年12月21日，看着这方电子表，他眼中生出丝丝缕缕的波澜。曾经的记忆还存在，天地突变之时，就在明天！

    “姜南，哥几个待会去唱K，你那给挪点钱过来，不多，两三百就行。”

    三个人走来，为首的一人染着黄毛，一米七五左右，脖子上带有小片纹身。

    姜南曾经与这人没有什么交集，不过印象却也是有的，刘浩明，学校里出了名的混子，据说和校外一些道上的人关系不错，没有学生敢惹，连老师都很头疼。

    对方身后跟着的两人，郑刚和李建，经常和刘浩明混在一起，俨然就是两个跟班。

    扫了对方一眼，姜南没有搭理，对方所谓的挪点钱，其实和抢劫没什么区别。

    他起身，朝外面走去。

    对于重生这等事，他已经彻底接受，天地突变就在明日，他得做一些准备。

    “你聋了？老子和你说话，没听见？”

    刘浩明一把抓向姜南的头发。

    教室里有不少人，自然是一开始就看到了刘浩明向姜南要钱，却是没有一人出声，许多人都被刘浩明给欺压过，对于刘浩明都有些害怕，根本就不敢招惹。

    姜南简单侧身，反手挡开刘浩明抓向自己头发的手，直接一脚踹向对方胸口。

    砰的一声，刘浩明硬生生挨了一脚，蹬蹬瞪的后退两米多远。

    “明哥！”

    郑刚和李建当即跑到刘浩明身旁。
','    刘浩明一把推开郑刚和李建，从兜里掏出一把一分米左右的短刀，脸色狰狞的朝着姜南走去：“杂种，敢踢老子！”

    姜南顿时目光一寒，主动上前，左手探出，以一个特殊的角度压下，一晃间扣住刘浩明持刀的手，另一只手以闪电般的速度夺过短刀，直接压在刘浩明脖子上，顷刻有鲜红的血水沿着刀刃溢出。

    前世，他踏上修行路后，达到了可凭己身之力遨游星空，实力极强，如今重生，尽管当前只是普通凡人，没有半分修为，但一些简单的武法却是了然于胸，战斗经验也不曾散去，纵然对付资深的特种兵也是轻而易举，更何况是这刘浩明。

    “信不信我杀了你！”

    他冰寒的看着刘浩明。

    他是孤儿，被一个老人从孤儿院接走养大，从未见过自己的母亲，但尽管如此，在他心中，母亲依旧是神圣不可侵犯的，刘浩明以杂种辱骂他，便是连带着他未曾见过面的母亲也一起给辱骂，而且很恶毒，他心中当即便生出了一股杀念。

    “姜南，你好大的胆！”

    郑刚和李建见着这一幕，当即便是朝着姜南冲去，准备帮刘浩明对付姜南。

    “滚！”

    姜南冷冷的扫向两人。

    郑刚和李建顿时间不由自主的止住脚步，迎着姜南的目光，一时间只觉得自己的脖子似乎被掐住了一般，没来由的升起一股寒意，像是忽然被泼了一盆凉水。

    刘浩明更是不由得瑟瑟发抖，锋利的短刀压在脖子上，他的脖子被割裂了一些，血水溢出，疼痛感也随着清晰的传来，一时间，之前的狰狞凶狠顿时变为了浓浓的恐惧，裤裆渐渐变得湿了，有液体落在教室地面上。

    姜南露出恶心之色，一脚将对方踹开，手中短刀随着掷出，贴着刘浩明的脸颊呼啸而过，在对方脸颊上留下一条浅浅的血痕，嗤的一声插在更后方的墙面上。

    教室里，一众人近乎呆滞，在他们的记忆中，姜南平时沉默寡言，平平无奇，可如今却竟然做出了“空手夺白刃”这等事，而后更是将刀丢出插入了墙体内！

    刚走出教室的校花冷若晴正好看到这一幕，目光微有波动，姜南刚才的一系列动作绝非普通人能做到，她从某个特殊家族走出，在这所学校上学仅只是简单的日常历练，对于班上的同学都很了解，印象中，姜南似乎并没有这样的能力。

    姜南偏头，扫了眼目光正落在自己身上的冷若晴，从教室另一个方向离开。

    数十呼吸后，他取出手机，一边往校外走，一边拨通一个号码，对面很快便传来声音，略微有些粗犷：“喂，南子，啥事？我这边月考，马上就要开始了。”

    “不用考了，没意义了，现在离校回家，将伯父伯母也叫回，地球明日会生出大变，你和伯父伯母待在家里，不要走动去其它地方，我很快过去找你们。”

    对面的人叫潘雷，和他一样是孤儿，曾经待在同一所孤儿院，关系极好，以前他个子小，在孤儿院被其它的孤儿欺负，总是潘雷护着他。后来，虽然他们被不同的人收养，甚至收养潘雷的夫妻搬离了这座城市，两人间隔的很远，但却依旧没有断了联系，没有手机时用书信来往，长大有了手机后，就以电话短信联系。

    手机另一端一时间寂静了，过了半响后才又有声音传来：“那个，南子，你……撞头了？还是发烧脑子烧迷糊了？现在，这还是大白天啊，你这说的是个啥？”

    “雷子，我没有和你开玩笑，我很清醒！”姜南的语气很郑重：“相信我！”

    他很认真，直到手机另一端的潘雷彻底相信他所说的话，并且确认潘雷已经照他所说的行动起来后才是挂断电话，步伐没有任何改变，继续朝着校外而去。

    收养他的老人早已经去世，在这座城市有着一套简单的两居室，并且给他留下了一笔不俗的财产，所以，这些年他有能力自主生活念书，平日间都是走读。
','    很快，他回到家中，简单做了些准备，将前世所掌控的修行古经中最强的一宗编辑成信息传给潘雷，让潘雷记熟后删除，照着修炼，而后驾驶半年前购置的登山摩托，来到市外一座青山内的一方小凹谷处。

    前世，地球突变，天地灵气复苏，某些地方会以极速生出一些特殊的灵果，这些灵果非常不凡，拥有各种惊人的奇效，或是在修行之初可让人快速进阶，或是食之后可蜕变生出天使般的羽翼，或是可使人喷火驾风，个个都是价值连城。

    记忆中，天地突变的最初时，这方凹谷内便是会有那种极为特殊的灵果生出。

    时间一分一秒的流逝，他随意的坐在凹谷旁，仰头看着天空上流动的白云。

    白云流过，时不时的变化模样。

    他坐在这里，看白云流动，一道模糊身影渐渐自脑中浮出，整个人当即一颤。

    “倾舞。”

    他声音微哽。

    前世，地球突变，他在新的时代里挣扎前行，偶然结识了一个女子，叶倾舞。

    她的美丽无人能及，她的实力强大无双，她清冷不善言谈，却丝毫也不高傲，他因她而走上修行路，后来，她却因保护他而被毁灭的天地黑洞卷入，消香玉陨。

    那些年里，他爱慕着她，却始终不敢道出心声，因为，她太美了，也太强了，在她面前，他没来由的会觉得自卑，直到她因为保护他而被毁灭的天地黑洞卷入时，他也没有能够向她道明自己的心意，甚至于，他连她的来历，也半点不知。

    她的死，是他前世永恒的伤痛。

    “现在，还活着！还活着！”

    他咬牙，身体不由得微微发抖，有曾经难以磨灭的伤痛，更有难言的激动。

    如今重生，他十七岁，在这个时间点上，他相信，她一定还活着！绝对活着！

    他还能再次见到她！

    重生一世，再次相见，他不会再自卑和怯懦，一定会大胆表明自己的心意！

    重生一世，他的起点远超常人，要不竭余力的变强，强到超越一切，强到无惧所有，强到有绝对的实力保护她，纵使诸天神魔，也休想将她从自己身边夺走！

    时间不停的流逝，天空渐渐变得黑暗，夜幕降临。

    随后，黑夜很快散去，次日到来，一晃便是正午。

    轰隆！

    突然，地球生出颤动，似惊人的大地震将要爆发。',10010,10028);
	insert into ds_book values(null,10029,'“开始了！”

    小凹谷处，姜南站起身来，眸子中有精芒一闪而没。

    地球突变，于这一刻开始，天地灵气开始恢复，沉眠的万道开始慢慢苏醒！

    轰隆！

    地球的震动随着渐渐变得剧烈了些，不过却并非毁灭性的那等震动，没有山体和大地开裂，与此同时，无垠疆土生辉，天空绽放光芒，十方大地有灵风卷起。

    整个地球，于一瞬间陷入沸腾。

    “这是，怎……怎么回事？！”

    “大地和天空，在……冒光！”

    偌大的地球，各个角落，所有人全部大惊失色。

    与此同时，各地空气监管局的科研人员动容发颤，短短的一瞬间而已，地球的空气质量好了万倍有余，且，有一种他们难以理解的具备能量的气体在涌现。

    同一时间，各国宇航局内，一个个宇航精英看着眼前的航天大屏幕，集体怔住，个个都是满目的震骇，星空中，地球竟在发光，以肉眼可见的速度在变大。

    轰隆！

    地球的震动随着持续，地面如同橡皮一般在被拉伸，各个区域皆有异光生出。

    姜南站在小凹谷旁，仰头看着交织各色光芒的天空，片刻后收回目光，落在眼前的小凹谷内，定定的看着中心处。

    小凹谷内，石块不少，片刻后，正中心处，地表忽而龟裂，有光华溢起，一株异草冒出，以肉眼可见的速度增长到一米高左右，于顶端处结出一颗果实来。

    果实大概拳头般大小，红彤彤的，表面有晶莹光华缭绕，散发着一股浓香。

    姜南眼中又是有精芒划过，一跃踏入小凹谷内，将拳头大的果实摘到手中，瞬间便感觉出这枚果实内蕴浓郁灵能，是可在修行之初使人快速进阶的那种异果。

    持着这枚异果，他在原地盘膝坐下，没有半分犹豫，直接将之咬碎吞入腹中，而后微闭上双眼，呼吸随着有节奏的变化，运起一宗修行法门炼化这灵果修行。

    修行，从低到高，依次为淬体境、炼气境、御气境、宿海境、腾空境、神变境、元魂境、傲星境和化仙境，每一个大境界又分有初期、中期、后期和巅峰这四个小层次。要踏上修行路，修行法门是必不可少的，是踏上修行路的叩门砖。

    前一世，他踏上修行路，达到了可凭己身遨游星空的层次，掌控的修行法门自是不少，此时所运转的，便是所掌控的修行法门中最为强大的一部修行古法。

    随着运转起这宗修行古法，落入他腹中的灵果果肉内的浓郁灵能，顿时便是被调动起来，开始于他体内有节奏的跳跃流动，涌入他浑身的每一寸血肉之中。

    也是这时，忽而间，他体内有一团金色光华显化，使他顿时脸色猛变。

    “这是？！”
','    修行一途，唯有达到御气境才可内视己身，可如今，他才刚开始修行便看到了体内的境况，五脏六腑皆可看清。而这，并非此时最让他震惊的事，最让他震惊的是，他看清了体内那团金华内的东西，那是一张金纸，浑然天成，古朴沧桑。

    “无名天书！”

    他忍不住微颤。

    前世，心爱的女子为了保护他而死，他近乎陷入绝望，偶然听闻无名天书具有惊世之能，或可令死者复生，于是疯狂的追寻，最终真的将之寻出取到手中，不过，他才刚将之取到，便是被人发现追杀，最后惨死在追杀他的九大界主手中。

    他没有想到，随着他重生，无名天书竟然随着出现在了这一世的他的体内。

    “我能死而重生，难道……就是与这无名天书有关？！如今，在修行之初便可内视己身，也是因为它的关系？！”

    他心头震撼。

    嗡！

    无名天书一片空白，光洁如玉，于他体内缭绕淡淡的金华，似包揽了天地万道，可轻易割裂一切，其上渐渐有字体显出，每个字都散发着无比浩瀚的气息。

    看着这些字，简单的一扫而过，姜南不由得又是一颤，这分明是一宗修行法门，且无比玄奥，比他所掌控的最强修行古法还要强大无数倍。

    甚至于，他觉得，这比起他已知中的那些域外顶级修行圣地的修行宝典，都要有过之而无不及！

    这使得他又惊又喜，无名天书，竟自载有强大的修行古经，超乎他的想象！

    看着无名天书上显化的这宗修行古经，他心中惊喜，微微深吸一口气，而后当下舍弃之前所运转起的那宗修行古法，改而以天书上显化出的这宗法门修行。

    “就叫你天心诀！”

    这宗修行法门没有名字，他为它取名天心诀，以之运转，重新调动起体内的灵果果肉内的浓郁灵能，朝着他浑身的每一寸血肉之内涌动而去，丝丝缕缕没入。

    修行第一境界，淬体，打磨血肉淬炼筋骨，只要有修行法门，纵然没有天地灵气亦可修炼，只是进步速度会极为缓慢。此刻，运转天心诀，配合蕴含浓郁灵气的异果修炼和渐渐恢复的天地灵气，他血肉筋骨的变强速度，便是非常的快。

    而后，渐渐的，姜南心头再次震动。

    淬体境的修炼只是打磨血肉淬炼筋骨，使肉壳变强，仅此而已，可如今，随着他以天心诀修行，体内的无名天书生辉，他发现，他不仅是肉壳在慢慢变强，甚至于，连同体质都在慢慢的被改变，像是一块废石在朝着一块璞玉缓慢转化。

    这使得他心脏不由得猛跳，而后又一次为之惊喜。

    显然，这是天心诀配合无名天书所生的特有神效！

    随着修行天心诀，配合无名天书，他的体质似乎会不断蜕变，有朝一日或许能够比肩传说中的那些神体和圣体，甚至于可以更强！

    他再次做深呼吸，按捺下心中的激动，继续以天心诀炼化灵果中的灵气修炼。

    时间流逝，一晃眼，一天一夜过去。
','    新的一天，小凹谷内，姜南睁开双眼，停下修炼。

    “淬体初期！”

    他自语，眸中有淡淡金华随着波动。',10010,10029);
	insert into ds_book values(null,10030,'淬体境作为修行路第一步，是修行路上最简单的一个修炼层次，不过，纵然如此，要从普通人之躯达到淬体初期，却也得耗费极大的精力，会耗费极多时间，如今，仅只一天一夜的时间便是从普通人之躯达到淬体初期，这让姜南很满意。

    毕竟，前一世时，在地球天地灵气和天地万道完全复苏的情况下，他也是耗费了足足一年时间才达到淬体初期，这一世的修炼相比起前世，实在快太多了。

    且，他大致感应了下，发现同样的修为境界，这一世淬体初期的他相比上一世，力量上要强了非常多，上一世达到淬体初期，他的最大力量大致在七百斤，而这一世竟大约有三千斤的力量！

    三千斤的力量，这真的很吓人，一般的淬体中期修士都很难达到这个程度！

    如今，他才刚刚达到淬体初期，便是有三千斤的力量，这要是传出去被其它的修行者得知，绝对会引起一场大轰动，许多同境界的修士近乎会为之头皮发麻。

    不过，他心里却也很清楚，之所以这一世的修炼能有这么快这么强，完全是因为有蕴含浓郁灵能的异果、体内的无名天书以及其上的天心诀这三者的关系。

    在小凹谷内稍微顿了顿，他起身走出凹谷，脱掉身上的羽绒服等仍在一边，只留一件简单衬衣，驾驶停靠在小凹谷外的登山摩托远去。

    修为达到淬体初期，更有天心诀护体，十二月的冬季严寒已经难以影响他。

    “落崖山！”

    他自语，眸子中划过一抹淡淡精芒。

    这里的异果已然寻到，以之修炼达到了淬体初期，这时候，他准备去落崖山。

    根据前世的记忆，天地突变开始的五日后，落崖山内会生出一片奇异矮树，将结出一批极珍贵的异果，其中最惊人的是雷果和炎果，服食炼化后，分别可获得驭雷和驭火的能力。

    这等能力在修行路更后面，实际上是被称作为神通，在修行之初获得这样的神通能力，好处是毋庸置疑的，战力将会远超同境界其它修士！

    修行古经，他之前已经传给潘雷，如今，因为时间关系，他打算先行去落崖山夺取到雷果和炎果，而后再去找潘雷。

    轰隆！

    地球的震动没有停下，依旧在持续，天地灵气以一个更惊人的速度在涌出。

    驾驶登山摩托朝落崖山而去，沿途，姜南看到了一个又一个满目震撼的人，对此并不在意，这些人所震撼的地球突变，他早已经经历过了，对此毫无惊意。

    一晃眼，两天时间过去，他驾驶登山摩托已经行出极远，不远处的一处空旷平地上，忽而间有一丝丝青色的光芒涌出，地表抖动了几下，一株异草拔地而起。

    修为达到淬体初期，姜南如今目力惊人，自是看到了这一幕，当即目光微动，直接驾驶登山摩托朝着那里而去。

    那株突生的异草，显然会结出特殊的异果来。
','    很快，他来到异草近前，突生的异草青芒流转，转眼凝聚出一枚青色灵果。

    这枚灵果和他之前炼化的那枚异果类似，都是内蕴浓郁的天地灵气，可在修行之初相助普通人快速进阶，虽然只有鸡蛋般大小，比他之前所炼化的那枚灵果差了一些，不过价值上却也依旧是很惊人。

    “之后给雷子，能让雷子短时间内达到淬体初期。”

    雷子是他对潘雷的日常称呼，如今，天地灵气在慢慢恢复，天地万道在渐渐苏醒，这个时代已经变了，未来将是修行者的世界，潘雷是他的挚友，情同手足，他自然得帮着潘雷更好更快的行走修行路，一起成长变强。

    从异草上摘下青色灵果，他朝停在一边的登山摩托走去。

    咻！

    突然，破空的声音响起，一把匕首划破长空而来，速度极快，泛着森森寒光。

    姜南有所感应，侧身闪避，匕首从他耳畔呼啸而过，将远处的一株大树贯穿。

    “嗯？！”

    带着一丝惊疑的声音响起，不远处走来两个中年，一个留着光头，一个身着蓝衣，目光落在姜南身上，眼中皆带着异色。

    “能避开你掷出的匕首，不像是一般人。”光头中年双眼微微眯起，对蓝衣中年道：“速战速决，斩掉，取到灵果离开。”

    蓝衣中年点头，目光变得有些冷冽，一步加速，跨向姜南，左手抓向姜南手中的青色灵果，右手施龙爪扣向姜南的脖子。

    姜南目光淡漠，直到对方压到近前时才侧身闪避开去，而后一拳轰向对方，足有三千斤的拳力，稳稳落在对方的胸口处。

    “啊！”

    蓝衣中年惨叫，整个人横飞，砰的一声落在地上，口中不断的朝外涌血，挣扎了两下，直接一偏头没了动静，当场横死。

    光头中年脸色惊变，蓝衣中年和他一样，处在淬体初期，快要达到淬体中期了，如今却竟然被一个青年一拳就给击杀了。

    姜南扫向光头中年，缓步朝着对方走去。

    蓝衣中年妄图杀他夺他灵果，他没有留情，直接轰杀，这光头中年和蓝衣中年同行，目的一样，他自然也不会放过对方。

    这一世，他有天心诀护体，有无名天书增强体质，如今处在淬体初期，力量却比一般的淬体中期修士还要强，再加上有前世丰厚的战斗经验，要击杀同境界的修士，真的很简单，与吃饭饮水毫无区别。

    “你……你别乱来！”光头中年露出惧意，与自己实力相当的蓝衣中年被姜南一拳击杀，他自知不敌姜南，迎着姜南走来，忍不住后退，一边后退，一边颤抖着掏出手机，对准姜南拍摄，道：“我是北山氏族的人，已经将你的影像传回族中，你……你若杀了我，绝不会有好下场！族内的强者们绝对不会放过你！”
','    姜南表情不变，重生一世，北山氏族的虚实他自然清楚，明面上是一个超大型商业集团，实质却是一个隐秘修行家族，族内核心成员都是修行者。

    听闻光头中年提起北山氏族，他没有丝毫的忌惮，脚下生风，一晃眼踏到光头中年近前，一腿扫向对方头颅。

    “砰！”

    他的速度极快，一击命中对方的太阳穴。

    光头中年惨叫，手机脱手落出，如同蓝衣中年般横飞，撞在不远处的一株大树上，口中血水狂涌，转眼间便是断了气息。

    姜南表情淡漠，看都不曾看对方一眼，回到登山摩托处，驾驶摩托扬长而去。',10010,10030);

	insert into ds_book values(null,10031,'盛极而衰，否极泰来，万物生灭，轮转不息，此为世间事物发展之至理。然而又有俗语有云，世间之事皆无常性。

    远古时期世间百族林立，万类竞自由，一派繁荣景象。而在此时，莫名的劫难忽然降临世间。天崩地裂、洪水海啸，煌煌天威仿若灭世。每逢乱世必有强者降世，面对袭来的劫难，世间最强的生灵们全部挺身而出。

    劫难过后，世间已是满目疮痍。对抗劫难的生灵们消失不见，盎然的灵气百不存一。众生百族受到劫难波及，躲得躲灭的灭。整个世界万马齐喑，灵气浓度跌落数个层次。修行传承体系受此牵连，从此一蹶不振。传承体系出现断层，修行变得艰难异常。

    经此一役，大陆崩裂破碎，分裂成了大小不等的七个部分。各个部分相距遥远隔海相望，往来只能依靠航船联系。面积最大的陆地，后世命名为中洲大陆，中洲北方的大陆即为北沧大陆，南方是南斗星洲，西方为西天净土与风元大陆、东方是圣土、世外桃源。

    此一劫难，后世命名为灭世灾劫。经过数千年的休养生息，世间生机在缓慢的恢复。而关于灭世灾劫的详细记载，则是随着大多数族群的退场而遗失，世间只存只言片证明灭世灾劫来到过。

    中洲大陆幅员辽阔，大陆习武之风兴盛，各国之间的战争也是时有发生。经历长时间的战乱，最终形成了大国有五，小国无数的势态。秦国、齐国、楚国、燕国、赵国，五个国家瓜分了大陆上最好的山河。五大国之间夹杂着若干小国，也正是因为如此，才使得五大国之间相安无事。中洲大陆的安宁，处于随时崩溃的态势之中。

    秦国位于中洲大陆的中央腹地，占据肥美良田无数，高山峻岭千重。可谓是坐拥风水无数，夺得地利无双。大陆的安宁使得秦国国力蒸蒸日上，百姓生活亦是其乐融融。天时、地利、人和秦国皆是占据，国力隐有超越四国之势，这引起了其他四国的担忧。

    众多小国夹在大国之间，本就是每日自危。秦国的逐日强大，更是让他们日益恐慌。于是众多国家暗中联手，而秦国却被排出在外。一场针对秦国的阴谋，在悄然的酝酿发酵。

    秦国边缘的小山村，村落三面环山，一面临水。山中常日漂浮白云，小山村故名曰白云村。白云村西有望月坪，东靠渭水金沙滩，山青水美犹如仙境。村民取山中之竹筑屋，饮东面渭水之河，燃林中枯槁之木，食田里自产之食，一派自然祥和，美不可言。

    一个充满生机的早晨，郎朗的读书声从白云村的深处的学堂传来。

    “天地玄黄，宇宙洪荒，日月盈昃，辰宿列张......”

    学堂中多个十一二岁的少年，正随着节奏摇头晃脑的背诵文章。夫子手拿戒尺满脸严肃，他边走着边看向自己的学生。少年们的视线透过微眯的双眼，追随着夫子的脚步不断的转移着。

    啪的一声，夫子手中的戒尺高高落下。伴随着少年的哎呦一声痛呼，郎朗的读书声戛然而止。少年手臂费力的捂向自己的后背，脸上露出吃痛的表情。

    “嘿！打你个只张嘴不出声！让你学点东西都偷懒！”

    似乎觉得不解气，夫子说着又要举起戒尺。

    “夫子，我错了，别打了，下回不敢了！”

    唐晓天吓得不得了，急忙抓住夫子的手向他求饶。

    “孺子不可教也！”

    夫子叹了口气，对着唐晓天摇了摇头。

    “哈哈哈，瞧他那衰样！”

    看着唐晓天的样子，周围的少年们终于压抑不住的笑出了声。

    夫子猛地转身，目光严厉瞪向自己的学生。迎着夫子的目光，几个偷笑的少年急忙忍住笑声，端正坐好装作一副认真的模样。

    环视一众学生，夫子无奈的叹了口气。学堂中的少年们，是白云村中公认的可造之材。夫子肩负着教导栋梁的责任，内心既有压力又有自豪。看着自己的学生每日进步，夫子心中欣慰自豪。看着自己的学生贪玩任性，夫子又是恨其不争。在这里教书育人，心中可谓是百味交集。但没办法啊，谁让他是村子中的唯一读书人呢。

    今年的夏季炎热的出奇，明明已经到了雨季，但老天似是铁了心一般，一滴甘霖也未降下。地上仿佛要燃烧起来一般，人们像是快煮熟的虾子一般，一个个热的难以忍耐。

    “这日子没法过了，还去个什么学堂，不如去金沙滩戏水算了！”

    唐晓天热的烦躁不堪，忍不住对着几人开口建议。

    “这主意不错，大家一起怎么样！”','
    王小安也是心烦的不得了，听到唐晓天的建议立即附议。

    “这不好吧，夫子见不到我们，到时候会怪罪的。”

    想到严厉的夫子，陈洛雪不禁小声的出言阻止。

    “陈家小妹，你一个丫头跟我们瞎跑什么，还是回学堂读书算了！”

    王小安嘻嘻笑着，语气之中带着几分取笑之意。

    “是啊小妹，你还是回去为好，我们去金沙滩玩耍一会儿就回来了。”

    陈洛雪被王小安取笑，今日的陈墨恒却是没有罕见没有为自己妹妹出头，而是委婉的安慰着她。

    “嗯？”

    陈洛雪有些讶然，唐晓天和王小安贪玩也就罢了，怎么今天连沉稳冷静的哥哥也是这样呢。这家伙，今天有些反常啊。

    陈洛雪有些犹豫，又将目光转向了平日里三个最有主见的家伙。

    “你们也要一起去？”

    石不转低着头，仿佛没有听见陈洛雪的话，那意思不言而喻。西门峰微微点头，显然也是没有提出反对意见。

    “小林哥，你什么意见？”

    陈洛雪看向最后没有表态的许成林，六人之中除了自己的哥哥陈墨恒，这家伙与她的关系最是要好。

    “同去怎么样？”

    “那就同去！”

    没来由的，陈洛雪觉得大家今天有点反常，连同自己也是有些反常。平日几人再怎么调皮，也断是不会翘课的。而今天，七人却莫名其妙的放了夫子的鸽子。

    “走喽！”

    王小安一步跨出率先向着金沙滩跑去，犹如冲锋陷阵的先锋一般。其他几人也是哄笑着，追逐着王小安而去。

    “喂！你们等一下，等等我，跑什么跑。”

    追赶不上几人的脚步，陈洛雪不由急的直跺脚。
','    七个人少年自打懂事便在一起，他们共同进退早已惯了，少了她一个那怎么可以。

    金沙滩上陈洛雪脱掉了靴子坐在了水边，光洁的双脚不停地拍打着水花，拍水之声伴随着不时的银铃般的笑声。六个少年光着上身，在水中相互打闹着。玩闹了一阵，西门峰察觉到有些异样。他手搭凉棚，抬头看向空中。

    “天色怎么突然变暗了？”

    “好像是啊。”

    唐晓天停止了嬉闹，面带惊异的抬头望天。

    “你们看！这水中好多的气泡，怎么像是烧开了一样？不好，大家赶紧上岸！”

    王小安发现了水中的异常，惊叫着向着岸边跑去，同时不忘叫着众人一起上岸。众人火急火燎的上了岸，并没有忘记将一脸迷惑的陈洛雪一起拉上。

    观察了半天，几人发现河水只是不停的冒着气泡，并没有什么变化。许成林走上前去，在众人的连声小心和惊恐之中，小心的将手探到水面。

    “水还是凉的，并没有变化。”

    说着，许成林又是将手完全探到水中。

    看着许成林的大胆动作，几人心生好奇的走向河边。

    “诶！快看天上！”

    石不转不经意的抬头，恰好看到了奇异的一幕。只见空中出现许多青白色的带状光芒，光带似水流般流动美丽至极。

    “这是什么？真漂亮！”

    陈洛雪仰着头，看到了空中奇异的一幕。

    “小林子，认不认识这东西？”

    陈墨恒收回视线，看向一旁的许成林。

    “我记得这种情景好像在书中见到过，只是一时想不起来了。”

    许成林皱着眉，他见到这奇异的一幕，再联系到先前的所见所闻，心中没来由的有种不好的预感。

    七人之中最数许成林知识最为广博，大家闻言齐齐的看向许成林，等待着他的回答。

    “天生异色，地水翻涌。”

    “是了，正是如今的情形。”

    听到这几个字，陈墨恒立即点头。

    “地龙翻身，灾祸降临！”

    许成林的脸色发白，其他几人的脸色也很不好看。

    “别玩了，我们赶紧回村子！”

    西门峰年纪稍张，此时显出了兄长的风范。意识到了情况可能不对，立即招呼着兄弟姐妹们跟上。

    几人还没有跑出多远，大地突然间晃动了起来。几个少年面对突如其来的晃动，根本毫无抵抗之力，纷纷被晃倒在地成了一片滚地葫芦。

    大地晃动的越来越剧烈，并不时伴随着崩裂声。阳光逐渐被遮蔽，夜幕悄然之间降临，天空中出现了九颗特别明亮的星辰。九颗星辰缓缓移动，逐渐排列成一条直线。九颗星辰有规律的闪动着，周围的夜幕仿佛被驱散一般逐渐变淡。

    星辰继续移动着，以中间最明亮的星辰为中心，八颗星辰围绕闪烁。正当星辰最明亮的时刻，一颗燃烧的陨石从天际一闪而过，向着白云村不远的山坡冲去之处。

    陨石撞击地面没有多大的声响，更像是整体融合进了大地。一圈无形的波动无端产生传向远方，大地晃动的更厉害了。清醒的人们被这波动一扫，纷纷吐血晕倒。七个少年因为离得较远，并没有受到多大伤害，只是晕了过去而已。

    九星连珠出现的那一刻，世界似乎也在发生着某些未知的改变。九星连珠的出现，令那些隐匿在各个大陆的修行宗门震惊不已。世间之事久不变动，一朝云动天下皆惊。这变动将给平静的世界带来怎样的影响，又将引出一段怎样的故事，一切的一切都还只是开始......',10011,10031);
insert into ds_book values(null,10032,'九星连珠持续的时间不长，夜幕便悄然散开。星辰一颗接一颗的隐去，大地逐渐恢复了平静。一刹那间，世界仿佛沉寂了下来。崩裂声没有了，大地的晃动也没有了，就连昔日的虫鸣鸟叫，也似是没有出现过一般。

    王小安醒了过来，他拼命地揉着自己的头。他感觉自己的头仿佛要炸开一般，耳中全是尖细的嗡鸣声。过了好一会儿，王小安才恢复了过来。他转头四顾，寻找自己的同伴。

    “醒醒，你们都醒醒！”

    王小安带着哭腔，挨个的去摇动几个同伴。

    几个少年在王小安的呼唤之下，逐渐地醒了过来。他们如同王小安一样，都是拼命地揉着头，好半天才恢复过来意识。

    “刚刚怎么了？”

    几个少年有气无力的看向了许成林，期待着他能给他们答案。

    “我也不知道，应该是所谓的地龙翻身吧。”

    许成林晃着脑袋，声音有些有气无力。

    “地龙翻身，灾祸降临......”

    西门峰双眼呆滞，看着四周的景象。

    听到西门峰的低语，几个少年不禁仔细看向四周。落入七人眼中的，是一片疮痍的大地。地面上横七竖八的，布满了手掌宽的裂缝。不远处的树木拔地而起，东倒西歪到处都是。就在几人视线的远方，浓烈的黑烟直通云霄。

    “那是村子的方向！峰哥，那是村子的方向！”

    陈墨恒的声音嘶哑，从中不难听出他的焦急。几个少年皆是一惊，浑身有些发凉。

    “快，回去，我们赶紧回去！”

    顾不上身上的擦伤，七个少年一窝蜂的向着村子的方向跑去。

    宁静和谐的白云村，哪里经历过如此的摧残。地龙翻身过后，昔日的景象不复存在。墙倒房屋摧，草木砖石毁。生者长嘶嚎，去者空流涕。牛羊且为悲，尚且见者乎。毁于一旦的村子，神情悲伤呆滞的村民们，这就是现在的白云村。

    七个少年到达了村子，映入他们眼帘的，就是破败的村子以及受伤的村民。这一刻，他们都呆住了。眼前的场景，是他们从来没有想象过的。然而他们不知道的是，这一切还只是开始。

    地龙翻身波及范围甚广，整个中洲大陆都受到了波及，只不过受到的创伤有大有小。地龙翻身的发生，不仅给大陆带来了灾难。还悄无声息的，改变着大陆上各国家的格局。一场大陆诸国之间的战争，在地龙翻身不久之后，突兀的展开了。战争瞬间蔓延，大陆重新陷入了一片混乱之中，任何一个角落都没有能够独善其身。

    花开两头，单表一枝。九星连珠现身的一刻，中洲大陆发生了地龙翻身，其他几个大陆也是发生了类似的变化。这所有的一切，似乎都不是偶然发生的。东方圣土的某处，奇迹般的避开了所有的大陆变动。这里青山横立，白水飞泻，奇珍草木夹杂其中，鸟鸣兽吼相互应和，一派绮丽盛景。

    一名身穿紫袍鹤发童颜的道装老者，此时望着天空中消失的九星连珠，右手在不断地掐动着。

    “时机已到，自灭世灾劫之后灵气溃散，修行传承几乎灭绝。早有前辈预言，后世会有今日之事。修行传承将在此次变动之后，逐步再现辉煌。如今灾难已现，修行传承要如何再现辉煌？”

    老道长摇了摇头，有些疑惑的叹了口气。

    正在仰头望天兀自在想着什么，老道长慈祥的长眉突然抖了一下。他从思考中退了出来，伸出的右手也是停止了掐动。袍袖在空中一拂，虚空中荡起一圈圈肉眼可见的波纹。空中如同裂帛般出现一道缝隙，一块碧绿色的小巧玉简从中飘了出来。

    见到这小巧玉简，老道长脸上先是一惊，随即欢喜起来。他双手飞快的捏了几个法诀，右手冲着玉简轻轻点去。玉简微微发出白色光芒，其上一道强盛光芒射向虚空，形成一片圆形光镜。光镜剧烈的晃动了几下，最终平稳了下来。光镜中映出了一排排整洁竹舍，在竹舍门前，坐着一位须发皆白夫子打扮的老者。

    夫子打扮的老者微微一笑，对着老道长一拱手。

    “道兄，这厢有礼！”','
    “老书呆？怎么是你？原来如此，原来如此啊！”

    老道长先是一愣，随即哈哈一笑。老者也是笑着点着头，似乎有着什么事情二人心照不宣。

    “故弄玄虚，竟然动用这珍贵的的传影玉简，实在是杀鸡用牛刀。”

    老道长大笑起来，仿佛从没遇到如此开心的事情一般。

    “灭世灾劫引发天地大变，灵气随着逐渐消失。如今九星连珠出现，天地再次有了变动。灵气现在逐渐变得浓郁，道兄如今已经清晰感应到了吧。前辈们预言修行传承会再现辉煌，大致就是指这个契机了。”

    老者抚须淡笑，一副智珠在握的样子。

    “灵气浓郁灵脉衍生，这就是修行复兴的前提。我们接下来要做的，就是择日重开山门广招门徒了！”

    老道长抚须一笑，说出了他的打算。

    “修行讲的是缘法，我看择日不如撞日。”

    老者的语气平静，但话语中的急迫心情却是溢于言表。

    “哈哈，此言有理！”

    老道长闻言一愣，随即笑了起来。

    正在这时，老道长面前光镜突然波动了一下。光镜一分为二，变成了两面。新出现的光镜中，映出一处鸟语花香的山谷。一位彩衣仙子，脚踏祥云飘在空中。一副秀美和谐的画面，但彩衣仙子一开口，便破坏了画面的柔美。

    “两个老家伙！多年不见还是这样喜欢唠叨。让你们两个先见一面，没想到你们却是絮叨了起来。”

    老者面露苦笑，无奈的摇了摇头。

    “多年不见，仙子风采依旧啊。”

    彩衣仙子没有回话，只是轻轻撇过头。只见她一闪身，光镜再次分裂出三个。

    “诸位道友，许久不见了。”

    老道长轻轻点头，对着光镜中的三人行了一个道礼。

    三个光镜中，一名剑眉鹰目的中年人，一名白衣仙子，一名垂老僧人。几人见了老道长行礼，也是各自还礼。

    “如今之际万事俱备，正是我们派出门下弟子入世的时候。一为寻找适合修行之人，一为救苦世间，一为历练弟子，诸位道友不知有何意见？”
','    白衣仙子没有多余的话，直接开门见山。

    “合该如此！”

    中年人话语简洁，似是不愿开口多言。

    “善哉，老衲也有此意！”

    垂老僧人也是干净利落，丝毫没有多做叙旧的打算。

    看着几人的想法出奇的一致，老道长也是心中了然。

    “哈哈哈！既然大家的意思都一样，那就让修行传承在我们手中，再次辉煌起来！”

    老道长一语说出，身上猛地迸发出一股惊心动魄的气势。光镜中的另外五人情况相似，身上的气势也是冲天而起。山门重开并不是简单的事，但派出弟子搜寻合适门徒却是不难的。六人又是商谈了一阵，随即各自收了传影玉简，纷纷开始安排弟子入世。

    天地变动之后，各个修行门派都是开始排出弟子四处收徒。至于横跨大陆寻找门徒的，也只有那些各大陆的大门派可以做到。秦国的东方边境，一场战争还在继续着，每时每刻都有着生命凋亡。远远望去，一片喧嚣的上空血光冲天，不时地还有着金铁交接的声音。一位身穿藏青色道袍头戴高冠，手持一柄拂尘的年轻道士，从距离战场约十里之处缓缓走来。

    望见前方的战场，年轻道士深深地叹了口气。轻甩拂尘，道士口诵道号。

    “无量天尊，天地不仁以万物为刍狗，相争相杀，何苦何苦。”

    道士迈步走向战场，每走一步身体似是虚幻一下，待到身体重新真实，道士已是走过半里。接近战场之时，道士停下了脚步，冲着战场高诵道号。

    “无量天尊！”

    道号一字一顿的念出，整个战场之上似是响起了雷鸣之声。冲天的血光也似被狂风卷过一般，被冲散的一干二净。

    战场的军士被声音震得东倒西歪，待他们清醒过来后急忙摸爬滚打的分成了两方人马。双方人一脸芥蒂的望向对方，然后一起望向了不远处的年轻道士。道士一脸平静，默默的念诵着法咒，似是没有看见双方的反应。双方停战片刻，突然又是默契一般叫喊着冲向了对方。

    年轻道士双眼微闭，微微摇了摇头，口中念诵的法咒略有加快。

    “天地自然，秽气分散，洞中玄虚，晃朗太元......”

    高深的道家法咒回荡在战场上空，冲散了战场上的血煞之气，同时也将正待交战的双方定在原地。

    “八方威神，使我自然。灵宝符命，普告九天......”

    随着咒文的回荡，战场上军士脸上的表情变化，最初的凶狠变得祥和，人心逐渐安定下来。道士见此场景，诵念的咒文慢了下来，逐渐停了下来。战场双方仿佛受到什么感染，收起各自的兵器，疲惫的抬起各自人的尸体，转身走向各自的国土。一路上丢下的兵器盔甲不计其数，但不见双方有人捡起。

    “好一个道家神咒，度化苍生，功德无量！”

    远处一位身着白衣的俊朗青年人缓缓走来，他每踏出一步，都是跨过十余丈的距离。俊朗青年人的话音刚落，他正好来到年轻道士身前。

    “无量天尊，道友过誉了！”

    年轻道士看了来人一眼，对着来人施以道礼。白衣年轻人不敢托大，连忙也是还了一礼。

    “道友可是玄真道修士？是否也是奉师门之命前来世间？”

    看着道士的衣着打扮，白衣年轻人貌不避讳的问出了自己的疑问。

    “正是如此，贫道奉掌门之命，前来世间，扶危救世，觅寻合适门徒。”

    年轻道士没有任何隐瞒，直接报出了目的。在出行之前，六大门派已经提前通过气。对方的存在，自己早已知晓。

    “果然如此，我万法仙宗也有此令。既然如此，不如结伴而行”

    白衣人微微一笑，向着年轻道士发出了邀请。

    “也好，也好。有道友同行，相信此行会另有一番精彩！”

    年轻道士微笑点头，二人身上灵光一闪瞬时不见。

    天地变动修行现世，带给世间的究竟是福还是祸。无人说，无人断，自有另一番景象留待后人评论。',10011,10032);
	insert into ds_book values(null,10033,'中洲大陆战乱横行，但多了修行者们横插一手，状况顿时发生了变化。大陆上的战争莫名奇妙的停止了，停战的原因众说纷纭。但有一个说法是比较令人信服的，那就是仙人临世阻止了战争。这种玄而又玄的说法之所以令人信服，是因为有人目睹了当时情况。

    某片战场两方人马正在交战，一层诡异的白雾突然弥漫战场。身处白雾笼罩的双方逐一昏倒在地，待他们醒来之时已是身在各自家乡。这样昏倒在战场醒来时已归乡的人有很多，于是难免会有人没有完全沉睡。朦胧之间，他们看见了毕生难忘的一幕。白雾之中有仙人出没，施展莫大法力将人凭空转移。

    相似的说法越来越多，各地也开始流传出不一样的说法。随着各异的说法不断涌现，各地也传出了仙人出没的传说。仙人出现阻止战乱的说法，得到越拉越多人的认可。修行者的入世成为了人们眼中的救世，而他们入世的真正目的却是无人得知。

    鲁国临沂某山村，有名王阳者，年方十六，其父早亡，家贫如洗，偏有母亲病重卧床不起。王阳极孝，其母生病，王阳衣不解带，日夜照顾，汤药必先尝。其母病重欲食鲜鱼，但天寒冰冻，加之家贫，王阳无法购买。深夜，王阳冒着凛冽的寒风，脱衣卧于河床上，企图用体温将坚冰融化，求鱼河中。凛冽的寒风呼啸，冰上的王阳被冻的瑟瑟发抖。王阳的意识仿佛明灭的灯火，随时就要消失。突然间，一道闪耀着蓝绿黄三色的光芒射到了王阳的身上。王阳被这光芒一照，意识渐渐地回复。一个年轻的白衣人，出现在王阳的眼中。白衣人腰悬宝剑，手中托着一颗明珠。那三色光芒，正是从那明珠上射出来的。

    白衣人看向王阳，满意的点了点头。

    “身怀三灵根，你与修行之道有缘，不知可愿随我回归宗门。”

    王阳喉咙鼓动了几下，张了张口方才艰难的发出声音。

    “多谢仙长相救，长生谁不愿求。但苦于家中有母卧病，王阳需在家中赡养，恐无法随仙长求道。”

    白衣人一阵沉默，随即摇头叹息。

    “一切皆是缘法。孝行可嘉！可惜，可惜了。”

    一番话罢，白衣人对着王阳屈指一弹。

    王阳感觉自己身体漂浮而起，轻轻地落到河岸之上。原来卧冰之处，咔的一声裂出一个冰洞。冰水之中两条尺许大的鲤鱼，跃出水面跳到了王阳面前。王阳面上一喜，急忙抓住岸上的鲤鱼。待抓住鲤鱼，这才想起了白衣人。此时再抬头，哪里还有白衣人的影子。王阳欢喜的将鱼拿回家，为其母烹食。其母食后，疾病褪去。王阳一家感念仙人赐鱼医病之恩，遂立长生牌位供奉，仙人的事迹传诵千里。

    正值时局大乱，大陆南部江州有水匪为患，官府无力制止。某日一手持长枪英武男子，路过此地恰逢水匪为祸乡里。英武男子手执长枪独身冲入匪巢，以一人之力独战三百水匪。不到盏茶时间，击毙水匪一百余人，其余皆被男子俘获。男子在此地盘桓良久，手持宝珠似是在寻找什么。直到某日，宝珠显出蓝绿两色。男子循着光芒找到一瘦弱孤儿，这才满意的带着孤儿离开了此地。离去之时天降大雨，但男子与孤儿身上滴水不沾。二人在大雨中破空消失，江州此地一时传颂仙人卫道之事。

    大陆西方桐乡，某繁华街道，有恶霸强抢民女。街上行人愤怒不已，但摄于恶霸人多势众，无人敢上前解救。一彩衣女子从天而降，手持宝珠拦在众恶霸面前。宝珠散发出黄色与绿色相间的光芒，光芒直指恶霸手中女子。彩衣女子收起宝珠，未待众恶霸反应，伸手在空中煽动几下。众恶霸一个个痛呼飞起，摔在身后的街道。彩衣女子拉着女子轻声说了些什么，接着便见她脚下绽开莲花，托着二女凭空飞起，未几不知所踪。街上行人见此神迹，有高呼者，有虔诚跪拜者，仙人事迹一时不胫而走。

    秦国边境不远处渭水河，仍是如往日一般湍急流淌。金沙滩金光不减，望月坪一如往日鸟语花香，但白云村已经不复往昔。昔日的村子虽然是房屋稀少，但村中生机盎然，如仙隐之地。如今重建的白云村，屋舍更是少的可怜，往日的生机淡去，郎朗的读书声不再。在距离村子不远处，有着一座座不高的小土包，赫然就是往昔村民的坟墓。坟墓上未干透的湿土，似乎在告诉着人们他们还没有远去，还在思念着家乡。

    这一天，六道光束划破虚空降临到白云村外。几道色彩不一的光束相互挨近，在白云村的上空盘桓几圈，最终在白云村前停下。光束降落光芒消失，六个身影渐渐地显露出来。五彩光芒之中，显露出的是一名俊朗的白衣青年人。绿色光芒之中，走出来的是一位彩衣仙子。蓝色光芒之中，是一位手执长枪的英武年轻人。紫色光芒中的是一位年轻道士，金色光芒中的是一位青年书生，最后黄色光芒中的是一位年轻僧人。六人相见互相打量着对方，但随即目光便被各自手中的宝珠吸引。宝珠上呈现出金、绿、蓝、紫、黄、五彩，六种绚烂的光芒。

    众人互相望了望，最后白衣青年人首先站了出来。','
    “诸位道友，万法仙宗明桓有礼！”

    “幻灵教，清心见过众位道友！”

    彩衣仙子展颜一笑，还了一礼。

    英气年轻人上前一步，对着周围一抱拳。

    “天龙门，林战！”

    年轻道士轻甩拂尘，口中道号唱出。

    “无量天尊，玄真道道真，见过众道友。”

    青年书生微微一笑，向着众人揖礼。

    “在下玄灵，出自九华书院，众位道友有礼。”

    年轻僧人对着几人一笑，轻念佛号。

    “阿弥陀佛，千佛寺无念，众位施主安好。”

    几人相互见礼完毕，得知皆是出自名门，不由得互相高看了几分。

    一番交谈之后，最后还是由明桓引入正题。

    “若是没有猜错，诸位都是受到手中的引灵珠的指引而来。”

    几人没有说话，算是默认了明桓的话。

    “既是如此，有些事情我们还是说开的好，免得到时伤了和气。根据灵珠显示，村子中有灵根的人应该不止一个，不知里面的人我们应该如何分配。”

    幻灵教彩衣仙子清心开门见山，直接问出他们最关心的问题。

    彩衣仙子这一问，瞬间又使众人陷入沉默之中。从大陆边缘到中央这一路走来，寻找到有灵根且适宜修行的人真是不多。灵根在平凡人之中本就是万中无一，再加上修行体系在世间几近绝迹，有灵根之人，也因岁月蹉跎错过了最佳修炼时间。种种原因，导致适宜修行之人难以寻到。好不容易有所希望，诸人当然不愿放弃。此时此刻，众人都难以开口。事关各自门派未来的发展，谁也不敢轻易决定。','
    “诸位道友，其实我们不必如此。根据引灵珠指使，有灵根之人在这村中应该至少二人。”

    年轻道士摇了摇头，无奈对着众人开口。

    众人点头，默认了道真的话。

    “如果有灵根的人是二人，其中一人是五彩的混合光束，预示着此人是混元灵根。我想不用我说，这人必是由万法仙宗的道友带走。剩余之人应该就是五行杂灵根，我们几人估计没人愿意收留。如果多于二人，我们就各取所需，遇到选择有冲突，我们再想其他的方式抉择，切莫因为些许小事，伤了互相之间的和气。”

    听着道真的解释，几人纷纷觉得有理，无论如何还是先找到人再说其他。

    迈步入村，六人根据引灵珠的光芒，向着村中的学堂走去。一路上白云村村民，见到六人的行径无不感觉奇怪，但想到最近的传说又都释然了。这些也许就是传说中的仙人吧，虽然和传说中的不太一样，但他们手中那散发光芒的宝珠，却是和传说中的如出一辙。

    六人走到学堂前，这时他们各自手中的引灵珠都是一阵颤动，射出六道光芒。这六道光芒，一道紫色，一道绿色，一道黄色，一道蓝色，一道五彩混合色，最后一道是金黄交织的两色光芒。

    “真是令人意外。有灵根者万中无一，没想到这小小的山村中一次出现六人。黄色的土灵根，紫色的雷灵根，绿色的木灵根，蓝色的水灵根，五彩的混元灵根，剩下的金黄交织的则是金土双灵根。若是这样，就应该没有多大冲突了。希望这些都是可造之才，不要出现什么偏差的好。”

    清心仙子惊讶的表情毫不掩饰，其余几人也是相差无几。一路上他们有过太多希望，也又过了太多的失望。

    六道光芒从学堂外飞进，落在几个人的身上久久不散。教书的夫子一惊，望着六个学生身上的光芒，随后似是想到了什么，脸上现出些许高兴、些许无奈、些许不舍。仙人的事迹一传十十传百，就连这小山村中也是有所耳闻。夫子见到这番情景，自是知道是发生了什么。

    六名修行者走进学堂，一眼便看到了六个少年身上的光芒。看着这六个少年，修行者门心中激动不已。

    “难得一见的修行根苗，一个不多，一个不少。”

    青年书生缓了缓激动的心情，微笑着点了点头。

    众人没有回应，显然此时都是处在激动中没有听见书生的话。学堂此时一片寂静，夫子保持了沉默，学堂的少年们皆是不明所以。见此情形书生无奈摇头，只好继续开口。

    “尔等身上有光芒者，皆是与修行之道有缘之人。不知尔等可愿随我们回归宗门，学仙法求长生！”

    一句修行一句缘，皆是此行敲门砖。长生未知可有期，却道可愿随他去。',10011,10033);

	insert into ds_book values(null,10034,'“此地有佳山佳水，佳风佳月，更兼有佳人佳事，添千秋佳语；

    世间多痴男痴女，痴心痴梦，况复多痴情痴意，是几辈痴人。”

    艳美的对联，还悬挂在富乐院门口；可是写这幅对联的朱元璋，已辞世快一年了。英明神武的太祖，也有风流倜傥的一面，观之，真真觉得物是人非，直教人生出几多感念。

    临窗的位置，窗外便是秦淮河，一向是最贵的。茶案边坐着个十六七岁后生，外头穿的是灰布衣，但能消费这个位置的，定是富贵纨绔。

    窗外，红花掠绿水，垂柳弄姿，更兼河上画船游曳，一派撩人春色。后生望着窗外，一脸沉静，似在潜心思虑什么，又如在酝酿诗句……可是他那皮肤呈铜色，身躯又生得高大，反正不像风雅士子。

    作态与外貌不相称，便怪怪的。

    他在这里坐了好一会儿，不饮茶，也不急躁。这时微风里送来一阵花香味儿，余光里闪过一抹青绿，后生随即回头一看，见一个小娘子绕过屏风，过来了。

    小娘子胸脯饱满，腰却扭得好看，自有一番婀娜娇弱姿态；个子不高，却是削肩挺背，边幅修饰得精致。况且明眸朱唇，姿色算是相当不错的。

    “让洪公子久等，奴家赔礼则个。”小娘子双手捧在腹前，屈膝鞠躬。

    被称作洪公子的后生摆手道：“无妨，杜姑娘请起。”

    这时一个梳二环发型的丫鬟端茶过屏风，杜姑娘转身，一手去端起茶杯，一手轻轻托住盏底，走上前来，道：“茶怕是凉了，奴家为洪公子换一盏。”

    “好，好。”

    杜姑娘动作雅致地小心做事时，又轻声道：“洪公子的那位好友，今天没过来。”

    洪公子点头道：“哦，我知道了。”

    他把上身转了个方向，饶有兴致地看了一眼杜姑娘，道：“杜姑娘善琵琶，今日也唱一首琵琶小曲儿罢。”

    杜姑娘沉默稍许，才道：“奴家不想扫公子雅兴，可是奴家手指受了点伤，恐怕……”

    洪公子听罢，伸手便抓起她的柔薏，只见那白生生的五指上都有淤痕，指尖全肿了！他的脸色一变，“谁对你用刑？”

    杜姑娘摇摇头，面有凄色，“都是奴家自己不小心。”

    洪公子暗透怒气，“什么事不小心，会弄成这样？”

    杜姑娘欲言又止，终于低声道，“别人是礼部教坊司的官，管咱们的哩，只怪奴家自己。”

    洪公子冷笑道：“叫什么名字？”

    杜姑娘又摇头叹气道：“罢了。”

    就在这时，外头一阵汹汹的叫嚷，又有妇人陪着小心的低声劝说，顿时搅了这秦淮美景、春暖意境。其间一句叫嚷分外大声：“杜千蕊何在？”
','   不多会儿便有人闯到这边来了。气势最甚的，是个挂牛角腰带、穿绿袍的官儿，身后还跟着年老色衰的鸨儿、龟|公、跟班等人。

    官儿指着洪公子道：“闲杂人等回避！”

    洪公子这时端起茶盏，一副不慌不忙的样子，仿佛什么都没听见。

    “哟！”官儿冷笑一声，两步跳将上来，“本官看你是敬酒不吃吃罚酒！”

    洪公子十分稳得住，屁|股动也没动一下，人依旧坐在那里，正眼没瞧官儿一下。

    那官儿竟也没敢动手，绕着洪公子转了几步，伸长脖子从头到脚打量一番，又拿手指在八字胡上一扯，抱拳向半空道，“京师有贵人，设宴待宾客，本官要在各处挑选优伶助兴。”

    他说罢便看了一眼躲在墙角的杜千蕊，“你现在弹一曲，叫本官听个才艺。”

    杜千蕊哀求道：“许大人，奴家手指受伤，您是知道的。”

    “弹！”官儿声色俱厉地呵斥一声。

    气氛陡然又紧了几分，大伙儿都屏住呼吸，正待这事儿如何下去。洪公子的声音道：“杜姑娘的手，是你害的？”

    好几双眼睛立刻瞅了过来，洪公子的声音不大，口气也不激烈，不过他刚才一直没说话，突然开口了便引得人们侧目。

    “是又怎样？”官儿轻蔑地冷笑了一声，又道，“你知不知道老子什么来……”

    说时迟那时快，突然洪公子便抓起摆设在桌案上的毛笔，在案板上一戳，笔管“啪”断为两截、断面尖锐，接着，人也跳将起来，拽住官儿的右手按在案上，将笔管猛地插|下去！

    动作非常迅猛，那官儿嘴里的“头”字还没来得及出口，便转为“啊”地一声惨叫。

    众人大骇，片刻后便有妇人尖叫声起，比杀猪还响，声音竟压过了许大人的惨叫声！龟|公、鸨儿等人连连后退。

    官儿的手被放开得脱，左手紧抓着发抖的右手，脸色纸白，惊吓惧怕之下，旋又恼怒异常。后面两个穿着皂衣的跟班总算回过神儿来，面面相觑，便冲上来了。

    俩跟班一胖一瘦，胖的一门心思便直冲，瘦的只是作势上来、却佯作找家伙逡巡不前，错过了头阵。

    胖跟班一个人扑上来，双手一起向洪公子抓出，重心已是前倾。洪公子见状面露讥笑之色，趁其下盘不稳，轻轻踢出一脚，身体同时一侧。那胖子立刻以嘴啃泥的姿势扑向桌面，洪公子顺势又在他背上一掌。“轰！”胖子把桌案也压塌了，身体重重扑到地上，痛呼惨叫。

    场面一片狼藉，洪公子站在那里，却似轻描淡写。瘦子已经找到了一条腰圆凳在手里，见如此阵仗，亦是畏畏缩缩，半上不上。

    “砰！”洪公子侧踢一脚，瘦子深色胸襟上立刻印上一个鞋印，单薄的身体几乎飞了起来！整个人径直撞到屏风上面，裱在中间的稠面被撕开一个大窟窿，刺绣的鸳鸯戏水图上，两只水鸭子生生被分开了。

    “娘耶！”瘦子痛呼了一声。

    这时胖跟班连滚带爬，贴着地板逃开了，哪里还敢上来？那绿袍官儿许大人，此时站到了十几步开外，一面骂一面盯着洪公子，一副随时准备调头要跑的姿势。

    “瞧你那怂样！”洪公子指着绿袍官儿回骂，刚作势要追两步，那许大人马上转头就跑。
','    “给老子等着！等着！”许大人不忘回头大声喊了一声。

    一番折腾，楼上已是乱得一团，鸨儿站在那里直跺脚，一面抹眼泪，一面急得甩手帕。再看那墙边没吭声的杜姑娘时，一介弱女子没什么怯意，脸上反倒带着隐隐的快意，显然对那许大人怨恨不浅。

    洪公子摸出一颗白银，扔在书案上，“损坏的东西，我赔。”

    “可不是钱的事儿！”鸨儿神色焦急，“洪公子有大麻烦啦！老身也不知如何脱干系……”

    “哦？”洪公子看着她。

    鸨儿道：“许大人虽只是个教坊司大使，官是当得不大，可他这样的人能当上官，走的是太常寺卿黄大人的路子！黄大人的夫人，不是姓许？公子年轻，真是什么都不会琢磨。”

    “黄子澄？”洪公子道。

    鸨儿道：“只消是略懂官场的人，谁不知黄大人正是御前红人，一二般人谁惹得起？”她继续跺脚，“这可如何是好……”

    不料洪公子嘴里只吐出两个字：“呵呵。”

    鸨儿一惊一乍，忽然又压低声音道：“老身奉劝洪公子，别瞎耽搁了，赶紧走！”

    洪公子却完全没有马上走的意思，转头看杜千蕊道：“此前那狗官便欺凌杜姑娘，今日受了气，我一走，恐怕得把气撒杜姑娘身上。你跟我走。”

    杜千蕊神色复杂，道：“奴家有教坊司名籍，哪能这么就走？”她顿了一下，又道，“妈妈（鸨儿）说得对，眼下，洪公子先离开是非之地，方为上策。奴家瞧公子这般年纪，出手阔绰，也非怕事之人，定有些家势，回去找父母长辈，或许有法。若再耽误，等姓许的有时间安排，公子失之时机，情急之下如何应付？”

    “怕个甚，跟我走便是！”洪公子不由分手，拉住杜千蕊就走。

    杜千蕊挣扎几番，皱眉道，“洪公子，别管奴家，你自个走罢！走！”

    鸨儿也忙用身体拦住去路，急道：“洪公子带走她有甚么用，回去告诉令尊领了个伎女来家？您先顾着自己是正事。”

    洪公子盯住鸨儿：“你敢拦我？”

    他推开鸨儿，夺路便走。鸨儿也没强留，在身后对杜千蕊喊道：“不行就早点回来！”

    二人出得富乐院，坐在路边茶摊上的一个人便立刻站起身来，默默着跟着他们。杜千蕊回头看了一眼，但见那人看起来已到中年，长得魁梧，脸有棱角，嘴上的胡须像沾的一般整齐。

    这时洪公子的声音道：“闹市之中，我不便抓着你，现在放开你的手，你跟着我。杜姑娘且安心，这点事我有法子。如何？”

    杜千蕊再度回头看了一眼富乐院，虽面有疑惑，却也点了头。洪公子便放开了她的手。

    默默走过长街，杜千蕊忽然忍不住轻声道：“洪……红，红者朱也。公子难道……”',10012,10034);
	insert into ds_book values(null,10035,'三人上得一辆毡篷驴车，在前边赶驴车的，便是那跟着洪公子的魁梧汉子。

    刚上得车来，赶车汉子便开口道：“洪公子，有人盯着咱们哩。”

    “不必理他。”洪公子道。

    一问一答罢后，便沉默下来。空气中仿若只剩车轱辘“叽咕叽咕”的木头摩|擦声。

    不知过了多久，杜千蕊轻声问道：“奴家优伶贱籍之人，洪公子何苦为我出头，惹些烦恼？”

    洪公子干笑道：“我若坐视不管，让杜姑娘伤了手指，以后还怎么听你弹琵琶？”

    杜千蕊愕然，转而脸上微微泛出一丝红晕。

    洪公子又顺着话问道：“那教坊司的官，怎么与杜姑娘过意不去，竟用如此阴狠毒刑？”

    杜千蕊犹豫片刻，说道：“奴家进富乐院，便是拜他所赐。

    当年我家那边税赋尤重，青黄不支时，父兄找当地大户许家，借了些钱。不料他们趁机占我家良田，压低价格强行买卖。

    家兄找他理论，竟被打死！当地知县素与之交好，竟罗列假证，判家兄私通江洋匪盗、罪有应得，又将男丁流放，女子送教坊司！”

    洪公子听得，脸上笑容全无，不动声色提醒她道：“话不能乱说，所言当真？”

    杜千蕊道：“本来不愿再提，骗公子作甚？奴家几经辗转，不久前才进富乐院，不想又遇到了那姓许的做教坊司大使。

    教坊司官员要来坐班收钱，闲来无事便对姑娘们动手动脚。奴家在教坊司学艺，被安置到富乐院时日不长，本来就不是娼，不管接客；况且那许大使害我家破人亡，奴家自然不允。他恼羞成怒，便找多般借口，叫奴家好受……”

    正在这时，驴车忽然急停！

    赶车人道：“公子，路堵了。”

    洪公子看了一眼杜千蕊：“在车上坐着别动。”

    他与赶车汉子跳下车来，便见前面至少几十号人，手持棍棒迎面而来。洪公子回头看时，巷子深处，后面也隐隐有人。

    此地正在一条长巷之中，两边是砖墙土墙，一堵巷口，便是无路可去！

    “嘎吱！”一道对着巷子的门被急急忙忙地关上了。汹汹人群中，那许大使的声音喊道：“抓住那竖子，往死里打！替他亲爹，教他谦逊做人！”

    洪公子听罢，更是怒火中烧！

    当是时，已无道理可讲、更无废话对骂，一群汉子手持棍棒，立刻汹涌而上，争先恐后奔跑起来。

    这边赶车汉子立刻跳到前面，以身体挡在洪公子面前。不料洪公子不退反进，怒吼一声，猛地冲了上去！他赤手空拳，但冲刺速度非常之快，迅猛气势叫前面的暴|徒也有些惊骇。
','    “砰！”洪公子借着速度，身体侧倾，肩膀撞到了一个汉子胸口，那汉子立刻大叫一声，连退带飞撞到几个人怀里。

    众人有的还没反应过来，有的已经挥起棍棒，瞅着来势想下手……毕竟双拳难敌众手，只要冲进了人堆，饶是个猛汉，大伙儿也总觉得能从侧面、后面打倒他！

    不料洪公子撞人之后根本不停，眨眼工夫，连跑带跳，竟然硬从人群间直穿而过！其间乱哄哄的人群里，传来几声痛叫。

    刹那时，洪公子脚下如有簧片，人已弹跳起来，一拳从空中直击许大使面门！

    那许大使坐镇中军，并没亲自上前，前面有几十号人挡着，电花火石间、哪里料得自己会有危险？一时还没想着跑，弹指之间只愣在那里，唯有双眼瞪得溜圆，脸色也瞬时如同死灰。

    “草、你、娘！”地动山摇的一声巨吼，伴着劲风拳头一起呼啸而去！

    “砰”地一声，许大使的身体直接移位，地上的旧石板青苔上划出两道脚印，整个人撞到砖墙墙边上，方止。那围墙后面正有一只白母鸡受了惊吓，忽然便“蝈蝈”散着翅膀，惊飞而起，鸡毛飘到空中。

    许大使一声哼哼也没有，身体软软地贴着墙边滑下去，后面的砖墙棱角留下一道血痕。

    整条巷子突然之间安静了几分，仿佛雷鸣之后的寂寥。

    只剩墙内的母鸡不服，犹自“咯咯咯、蝈”地叫骂。许大使七窍流血，慢慢流淌出来，一片白鸡毛从空中飘下来，被他脸上殷红的血粘住，仿佛贴在面门上的纸钱。

    洪公子收住拳脚，转过身来，怒气腾腾地直视众人，又盯着最前面那个人、瞪了一眼，虎目中如同有一道光射过去！

    好几个人竟然马上向后退，被盯的那个人的双腿抖了起来，手里的木棍不自觉“啪”地落到石板上。不知是谁先跑的，继而一大群人四散飞奔，作鸟兽散。

    “洪公子，出人命了？”驴车里的杜千蕊探出头来，看着坐在墙边一动不动的许大使。她的脸色发白，目光又十分复杂，忧惧的表情，让面部也有点扭曲。

    洪公子见人已经死掉，也愣在了那里，伸手看自己的拳头面有诧异。

    赶车的魁梧汉子脸色变得十分难看，道：“奴婢劝诫不及、保护不周，罪该万死……”

    洪公子道：“王贵，你别怕。”

    三人丢下许大使，复乘驴车长扬而去。

    他们沿秦淮河西岸南下，至皇城以南，但未过秦淮河，在一座院落前停下。宅邸并不算大，门外却有一队甲兵守卫！

    看门的人识得洪公子，忙打开角门，躬身让于门旁。进得大门，里面是一排倒罩房，洪公子并不再往里走，就近走进一间倒罩房内，在一张竹榻上坐下来。

    王贵和杜千蕊都站在旁边，见洪公子的手指摩挲着下巴一言不发，他们都不敢吭声。毕竟出了人命，事情似乎并不会那么简单了。

    良久，洪公子开口道：“看样子，这事儿还不能如此了结。”

    “是，那是。”王贵忙附和道。

    就在这时，院门外一阵吵闹哭喊声引起了他们的注意。王贵脱口道：“真快，怕是苦主找上门啦！”
','    洪公子也站起身来踱几步，随口道，“那许大使带了一帮人，打架不行，总能尾随充作耳目。”

    王贵抱拳道：“奴婢去门边瞧瞧，回来禀报。”

    院门口，看门的门子正将角门开了一个缝，悄悄往外探视。王贵也赶紧凑过去看。

    只见门外已经堵了一群人，一具用白布盖着的尸体放在门前！两个妇人跪伏在尸体旁，正在奥啕大哭！旁边又有孩童，被吓得也仰头直哭，场面十分凄惨混乱。

    那尸体不用说，当然是被洪公子一拳打死的许大使！周围那群人，多半就是许大使的家眷和奴仆了。

    而这场面对路人显然十分稀奇好看，路过的行人纷纷驻足围观，人群便越聚越多。

    ……闹了许久，便见街头有一队甲兵开路，后面一个红袍官员骑着马，带着属下、衙役等一干人，向这边过来了。

    红袍官旁边还跟着个老妇，一边拿手绢抹着眼泪，一边哽咽道：“周大人，您可一定要为咱们家做主啊！”

    官员大义凛然，正色道：“此等恶劣之事，发生在天子脚下，本官决不轻饶！老夫人放心，人命关天，本官定会为你做主，严惩凶犯，不负黄大人嘱咐。”

    老妇听罢点头道：“原来信儿带到了的。”

    官员似乎没有听见刚才那句话，只顾愤愤道：“简直是胆大包天，居然在光天化日之下，打死朝廷命官。无法无天，无法无天！”

    这时有个布衣随从禀报道：“禀堂尊，到地方了，就是这里！”

    “好！”官员将马鞭丢到随从手里，待人稳住马头，他便从马背上翻身下来，昂首挺胸，双手整了整乌纱帽，“哼”地冷着脸，向那门口望去。

    “咦？”官员一眼便看到了在门口已经站成一排的甲兵，一副严阵以待的模样。关键是，那些甲兵手里的兵器，对着外面的！

    红袍官儿问左右道：“门口的兵，谁派的？”

    有穿青袍的随从抱拳道：“回堂尊，咱们衙门之前没派过人。”

    “叫人去问！”红袍官儿走到门前，下令道。

    就在这时，宅邸的大门开了！一个年轻壮汉走了出来，红袍官儿抬头细看了一番。一会儿便有随从俯首过来，低声说了一句什么。

    红袍官儿的脸顿时变得十分难看！脸色红一阵、白一阵后，走上前，竟然抱拳弯腰，道：“下官拜见高阳郡王……”

    “你们啥事？”年轻汉子问道。

    “没事……没事……”红袍官儿答，又抱拳道，“下官叨扰了，告辞！”

    身边的老妇顿时愣在那里，微风吹得她的头发有点凌乱，失态拽住官儿，“周大人，怎么突然变了？”

    红袍官儿不答，先离开门口，转头怒视随从道，“怎么办的差事，出了这等纰漏！”

    老妇急忙跟了上来，官儿低声道：“夫人见谅，皇帝家里的人，怎轮得上本官来管？”

    原来犯人命的年轻人，竟是燕王朱棣的次子、高阳郡王朱高煦！刚到的官儿似乎马上意识到，他趟了一坑淤泥，不立刻先抽身再说，更待何时？',10012,10035);
insert into ds_book values(null,10036,'刘刚不久前穿越到明朝，发现自己变成了朱棣的次子朱高煦，一开始他是拒绝相信的。不过最后也只能相信，毕竟随着时间推移，没有别的解释。

    前世他不过是个小民，一向为人低调、谨小慎微。

    他爹拿出一辈子积蓄为他买了套房子，不料那楼盘竟然烂尾，更玄幻的是一房多售，房子被开发商接连卖过三次！老爹气急攻心病故。

    之后他机缘巧合沾上赌博……后来就玩完了，发现自己变成了朱高煦。

    前世的巨大打击，给他留下了心结，所以在许大使的事儿上，难免情绪太冲动了。

    ……外面上演的苦情戏尚未结束，哭声和喧闹隔墙仍闻。','
    府里也不消停，正在喋喋不休的大胖子，是朱高煦的大哥、燕王的世子朱高炽。

    “大舅前几天才说你成天游手好闲、惹是生非，那天你不在屋里，倒是为兄来挨骂。二弟可知道，俺替你说了多少好话啊！好，现在又闹出这一出……”世子唉声叹气，一副无可奈何的模样。

    世子口中的大舅，便是开国大将徐达的长子徐辉祖，也就是三兄弟的亲妈的大哥。

    因为世子实在太胖，不是一般的胖，足弓的问题也很大，所以现在是坐着的，他的身体没动弹，嘴却是一直在动。旁边还站着个十五六岁有点文弱的少年，是三弟朱高燧。

    三个兄弟是一个爹妈所生，长得却各不相同，特别是身材。

    世子继续苦口婆心地说道：“京师不比北平，二弟一定得收敛啊！俺们进京为悼念皇祖爷爷，二弟这般行事，岂不授人话柄……”

    高燧却劝道：“大哥也不能太责怪二哥，刚才二哥所言，那教坊司许大使本来就该死。”高燧越说越愤慨，“打死便打死了，正好替咱们朱家的百姓除了个祸害！便是弟弟在场，也会如二哥一般干，难不成圣上会为了个小官，就拿自家兄弟动手？”

    世子瞪了高燧一眼，又看了两眼门窗，沉声道：“几个皇叔已被削藩，眼下风声多紧！俺们兄弟三人身在京师，尔等还不明白处境么？二弟倒好，为了个贱籍歌|妓，便将朝廷命官打死！你心里想些啥，啊？”

    闯祸的朱高煦半天没吭声，光是在听兄弟说。他低头神情怪异地打量自己的拳头，似乎难以置信，总算开口道：“大哥息怒，当时我确实只想教训他一顿，赤手空拳，也没想把人打死，哪晓得那许大使如此不经打……”

    高燧笑道：“二哥自个的力气斤两，怎会不知？能拿脑袋硬吃二哥一拳的人，怕是不多！”

    朱高煦又低声道：“事儿不出是出了……咱们就这么留在南京，似乎成了人质，而处境到了何等地步，这回不趁早瞧清楚了？”

    世子愣了一下，“如何瞧？”

    朱高煦不答。

    世子若有所思，接着又摇头：“为兄知道你啥意思，可你干的事，哪有如此轻巧，小心行得万年船呐。”

    朱高煦侧目听外面隐隐传来的喧闹，道，“大哥凡事求稳，那我出去一趟，再做件小事。”

    “你又要作甚？”世子皱眉瞪他，“稍安勿躁！事到如今，乱动不如不动。”

    朱高煦道：“大哥安心，死者本身就有问题，内情捅出去得越多、水越浑。若那黄子澄想借题发挥，题却变得更复杂了。”

    世子沉吟片刻，沉吟道：“似乎有点道理。”

    高燧拍着胸脯道：“二哥，我和你去！”
','    高燧长得有点单薄，依旧不乏年少冲动的劲儿。不过在记忆里，高燧儿时好像并不是这样的。

    朱高煦道：“三弟去了也帮不上忙，好意哥哥心领了。”

    ……门外的人越来越多，全是围观众，先来的不愿走，后来的又加入围观行列。皇城脚下这么闹事，显然十分不像话，可附近的官铺、衙门谁也不管。于是越来越多的人把十分宽敞的大路堵得水泄不通，闹哄哄一片。

    门口的甲兵只顾守卫府邸，只要不冲大门，他们完全没动弹的意思。

    更有大胆者，不满足只看一具死尸和哭丧，挤上来探头问当事人：“怎么出人命的？”

    跪在死尸前的妇人哽咽道：“就是这家的人，将官人活活打死，哇……”

    “惨啊，惨！”问话的人摇头叹息，一副深表遗憾同情的样子，不过私下应该稀奇欢喜多一点，毕竟看戏还要钱。那人表态之后，又好心出主意道：“怎么不报官？”

    妇人哭道：“报了没用，据说是北平来的王爷……”

    “哦！”那人一脸恍然大悟的模样。

    正道这时，角门开处，朱高煦的脚还没跨出门，声音已大声传出来，“打人的是王爷，苦主又岂是等闲？”

    居然还有隐情？这热闹越来越精彩了。众人的目光齐刷刷循着声音投过来，迫不及待地等着下文，更有人起哄道：“快说说，让大伙儿给评理！”“为甚说苦主亦非等闲？”反正围观者不嫌事多。

    尸体旁的老妇悲怒交加，指着门里骂道：“众目睽睽之下，你们将人活活打死，群情激奋！人命关天，不给个交待能罢了？”

    朱高煦走出门来，站在台阶上向众人抱拳道：“这位苦主许大使死了，尔等在此要公道。当年他在家乡吞并良田，害得百姓家破人亡，那些苦主又向谁要公道？”

    老妇道：“老身之子尸骨未寒，你休得血口喷人！”

    就在这时，有一辆马车靠在了街边，朱高煦站在台阶上、对着街面，很容易就看见了，马车前后有好些随从跟着，还有骑马的随从，看起来坐车的是个有身份的人。

    没一会儿那边有个人走过来，在老妇身边附耳说了什么。老妇转身看向那马车，便丢下朱高煦，向那边过去了。

    朱高煦见状，大声道：“许大使贪赃枉法，靠的是哪位达官显贵，是不是要我当众与大伙儿理论？”

    围观众一阵起哄，门前愈发吵闹。

    老妇被叫走后，再也没回来。然后又来了几个人，催促着那些人把尸体抬走。堵门口半天的那些人真的不闹了！

    朱高煦也不再言语，目光注意着刚来的那辆马车，车上的人始终没有露面。

    苦主的家眷陆续散去，只剩下围观的一些人久久未走，或意犹未尽，或正在听议论的人谈着隐情。朱高煦也只好返身回府，叫人关上角门。

    此前应天府的官员来过，依旧没能制止抬尸闹事的人；眼下这个人不露面就把烂摊子收了，到底是谁？朱高煦猜测是黄子澄，似乎只有黄子澄，才在许家人跟前有那么大的面子。

    这个黄子澄今天虽叫人偃旗息鼓，但朱高煦觉得，他不会轻易就这么算了的。',10012,10036);

	insert into ds_book values(null,10037,'仲夏夜。

    骤风呼啸，狂雷交错。

    天气预报明明是晴好的天气，却突然毫无征兆的变脸。

    平时热闹的夜市，早已不见人影。

    纷纷躲进屋内避雷。

    怀安市昌业区的一幢高档小区。

    十一楼，1102室里客厅里，一个四五岁扎着甜美公主辫，五官如瓷娃娃般的小女孩，盯着窗外闪烁的狂雷，水灵的大眼睛里没有丝毫害怕之色。

    “阿姨说，打雷的时候是神仙在打架。”

    “神仙神仙你快出来吧，帮团团找爸爸妈妈好吗？”

    小女孩闭着眼睛着，双掌合十，有模有样地许着愿。

    就在这时。

    一道与众不同的紫色的雷光，把夜幕撕成了两半。

    雷光映射之下，夜空中一个人影凭空出现，急速下坠。

    轰隆！

    人影坠落在怀安西郊的荒山上，坚硬的山顶在巨大的冲击下，顿时炸裂，周围的树木被狂暴的冲击波撕的粉碎。

    碎石飞溅，好在是深夜，又有雷声掩盖，没有任何人注意到这个异象。

    “人间界的地球！”

    “我于浩然终于回来了。”

    一个人影从碎石堆里摇摇晃晃站了起来，浑身褴褛不堪，脸色苍白如纸。

    声音虚弱到极点，行动之间仿佛耗尽了全身的力气。

    “撕裂多次元壁实在是太难了。”

    “以我堂堂神界至尊的实力，神格被彻底打碎。”

    “若非我的神体与天地同铸，又有神器法袍护持，坚不可摧，只怕想活下来都难。”

    于浩然坐在乱石堆上，神念一扫，面露唏嘘之色。

    神格破碎，神力荡然无存，身上穿的神袍，已经变成了废布，近乎无敌的神体，被空间乱流扯的千疮百孔。

    不过终究还是回来了。

    “整整三百年了，三百年前，我乃是华夏怀安市李家人人唾弃的废婿。”

    “却机缘巧合跌入崖下，踏入神界，如开金手指一般，短短三百年便横行神界，登临绝顶。”
','    于浩然坐在山巅，扫视远处的灯光，心头无比怅然。

    叶落归根。

    哪怕在神界称为至尊，于浩然的心里，也在每一天想着回到地球。

    这个执念，永不堕灭。

    终于，他举全神界之力，破开次元壁。

    不过他回来的目的，并非为了找李家算账，而是为了两个人。

    “三百年过去了，你和孩子恐怕早已化为尘土。”

    “纵使你轮回百世，纵使我再修三百年，等我神力恢复，也要把你们扯出六道轮回，同享天地之寿！”

    于浩然缓缓闭眼，重新睁开时，哪怕体内没有任何的神力，可身上的伤势已经彻底恢复。

    神尊之体，何等恐怖，纵使没有神力支撑，也具有变态到极点的自愈能力。

    于浩然纵下山巅，速度快到极点。

    很快，他便进入空荡荡的城区，走到记忆中家所在小区门口。

    眼前的景像，让于浩然神情微愣。

    三百年过去，怀安的变化，竟然如此之小，几乎跟自己穿越到神界之前，一模一样。

    甚至小区附近的街口那家牛肉汤店的招牌，都还模样依旧。

    不对。

    三百年的岁月，能在任何事物上面留下痕迹，难道神界与人界的时间流速不同？

    于浩然眼中精光爆闪，想到了什么。

    连忙朝家冲去。

    坐上了电梯，看着液晶显示屏上的时间，2019年6月28日，于浩然彻底震惊了。

    他清楚记得，自己是在2016年5月3号带着老婆和仅有一岁的女儿旅游时，为了拍照堕入深崖进入三十三重天中的神界，开启了修神之路。

    三百年间，于浩然历尽千劫，终于修成太上神体，震伏整个神界。

    成就太上神尊之位。

    然而再回到人间界的地球时，竟然只过去了短短三年。

    难道说三十三重天，每一重的时间流速都不一样？

    神界位于三十三重天之顶，而人间却是三十三重天之末，时间竟然相差了百倍。

    于浩然微一动念，立刻明白其中关窍。

    但他此刻已经无心去猜测这么多，才过了三年，她们肯定还活在世上。
','    于浩然现在只有一个念头，就是见到她们。

    此执念，让他在神界苦修三百年。

    也是此执念，让他不顾魂飞魄散，强行打通次元壁回到地球。

    本以为只有再苦修三百年，等神力恢复到一定程度，才能逆天而行复活妻女。

    刹那之间，于浩然再也等不及。

    冲出电梯，化做流光从楼梯冲上十一楼的家。

    门前，于浩然深深吸了口气，按下了门铃。

    “哪位？”屋内传来一个女声。

    “是宁姐的声音！”于浩然心里猛然激动起来。

    宁姐是妻子的远房表姐，怀孕时请她来做保姆，既然宁姐还在这，那就说明于浩然不惜一切代价回到地球找的两个挚爱，依然还在这里。

    “宁姐开门，是我于浩然……”于浩然忍不住放声喊道。

    咔嚓！

    防盗门打开，一个三十多岁的妇女，面带难以置信的震惊，站在门口。

    “浩然……

    你……你没死？

    你终于回来了！这三年你都去哪了？”

    看清于浩然的样子，宁姐终于反应过来，看着于浩然褴褛的行头，激动间还带着一丝埋怨。

    “一言难尽。”

    于浩然面带苦色：“李玟和团团她们娘俩呢？”

    “大小姐……她，她看不到你尸体，认为你还活着，已经去找你两年了。”宁姐一愣，吞吞吐吐说道。

    就在这时，客厅里急促的脚步声传来。

    一个四五岁大的，洋娃娃般可爱的小女孩，抱着一只布偶熊，光着脚走到了门口。

    看着衣着乞丐一样的于浩然，满脸童真的问道：“叔叔，你是饿了吗？我让阿姨给你拿吃的好不好？”

    “团团，这是爸爸…爸爸回来了！”宁姐转身把团团抱起，送到于浩然面前。

    “爸爸？”团团的眼里，满是迷茫。

    闻声，于浩然的脑袋轰然炸开。

    整个人彻底呆住了。

    这是自己心心念念的宝贝女儿，竟然都已经会走路说话了。

    一时间，三百年没流过一滴泪的于浩然，眼眶不由自主地红了。',10013,10037);
	insert into ds_book values(null,10038,' 看着面前这个呆萌到极点，脸上甚至还露出一丝害怕的小萝莉。

    于浩然一阵手足无措，伸手想要去接团团。

    “哇！”

    就在这时，小萝莉毫无征兆地放声大哭起来，头往宁姐怀里直钻。

    “团团乖，不哭不哭。”宁姐轻拍团团的背心，安抚着。

    “这孩子以前天天翻着你们照片，念叨着爸爸妈妈去哪了，怎么真见到了还害怕了呢？”

    闻言，于浩然心里如刀绞般刺疼。

    他走时，团团才那么点大，刚刚断奶，只会咿咿呀呀，甚至连记忆都没有成形。

    他这个爸爸，在她的生命中整整缺席了三年。

    又怎么可能轻易接受自己呢。

    纵然自己在神界三百年思念，又如何比得上团团这三年的无助和孤寂。

    团团终究还是没喊出“爸爸”这两个字来，宁姐只好把她抱到卧室，哄着睡觉。

    于浩然独自打量着这个阔别“三百年”的屋子。

    什么都没变。

    走到卫生间的梳妆镜前，看到自己的样子，吓了一跳。

    难怪把团团吓哭了，简直就是个几十天都没洗澡的乞丐。

    打开衣柜，里面整整齐齐摆放着自己的衣服，拿了一套洗了个澡，这才变了个人样。

    刚从卫生间出来，大门咔嚓一声响了。

    “团团，我回来喽……”

    一个身材窈窕，面容精致挎着背包的长发美女走进屋子，脸上带着一丝疲惫之色，却也难掩整个清新靓丽的气质。

    “李蓉？”

    于浩然抬头，这美女四目对视着，微微一愣。

    这美女并非他日思夜想的老婆李玟，虽然长的很像，但眉间却没有那颗美人痣，而且看上去很年轻，最多只有二十岁。

    是小姨子李蓉。

    三年前，李蓉还在上高三，是个傻乎乎的小胖妞，经常缠着李玟跟自己。

    是整个李家唯一看得起他，并且愿意叫他姐夫的人。

    没想到三年过去，竟然发生了这么大的变化。

    “于浩然！”这时，李蓉从牙缝里，冷冷迸出了三个字。
','    在神界三百年，于浩然

    的样子，只有些许改变。

    看到他出现，李蓉心里先是震惊，然后愤怒：“你果然没死！”

    呯！

    说着李蓉直接把挎着的小包，朝于浩然重重砸去。

    见被于浩然用手挡下，又脱下高跟鞋狠狠砸了过去。

    “于浩然你个混账王八蛋，不是掉下山崖了吗？为什么还活着！”

    “我姐为了找你，已经失踪了两年。”

    “你还我姐姐！”

    见高跟鞋没砸中于浩然，李蓉像只野猫般扑到他身边，脸色通红拳打脚踢起来。

    于浩然愣住了。

    他没想到以前整天粘着自己的小丫头，见到自己怎么会如此激动。

    他微微闪躲着，恰好能躲掉李蓉的拳头。

    不是怕被打伤，而是因为自己的神体，虽然神格破碎，法力不存，但却比钢铁还要坚硬。

    他怕李蓉伤了自己的手。

    听到李蓉愤怒的声音，宁姐赶紧从房里出来劝道：“二小姐，别打了……”

    “娘娘……”就在这时，一个俏生生的声音传来。

    “你别打爸爸好不好？”

    “团团很想爸爸，你把他打走了，团团就再见看不到了。”

    李蓉闻声动作一滞，侧过身子看着被惊醒的小萝莉，披头散发地站在卧室门口，眼中还泛着莹莹泪光，怯生生看着自己。

    赶紧冲过去把团团抱在怀里：“娘娘不打了，团团别怕……”

    说完狠狠瞪了于浩然一眼，把团团重新抱进卧室。

    于浩然根本无瑕顾及李蓉的情绪，他此时的脑海里，充斥着刚才团团的声音。

    她终于叫爸爸了。

    而且还护着爸爸，不让她小姨打自己。

    好女儿，好宝贝，不愧是自己的团团。

    “唉……”

    宁姐见于浩然呆坐在沙发上，不禁叹了口气：“大小姐走这两年，团团就把二小姐当娘。”
','    “学会的第一句话，就是娘娘。”

    “二小姐一边上大学，一边创业，还要照顾团团，也是够辛苦的。”

    宁姐露出心疼的表情。

    “李玟去哪了？”于浩然这才有机会询问

    。

    “我也不知道啊，你一会问问二小姐吧。”宁姐无奈摇头。

    于浩然陷入了沉默。

    自己三年前坠崖，误打误撞进入三十三重天的次元裂缝，到达神界。

    李玟上哪找自己去？

    就算是找尸体，两年找不到也应该回来了。

    这事情不对劲，看来只能等李蓉解答了。

    于浩然坐在客厅等着，三百年来从未如此焦急过。

    终于，等到将近凌晨十二点，李蓉才把团团哄睡，从卧室走出来。

    “李蓉，你姐究竟去哪了？”于浩然迫不及待问道。

    李蓉表情冷淡，沉默了几秒：“到我房间来。”

    说完走进主卧旁的另一间卧室。

    于浩然连忙跟上。

    李蓉把门关上以后，双眼几欲喷火，充斥着血丝，压低声音吼道：“于浩然，我真希望你就死在悬崖下面。”

    “三年前你被人当成废婿，一无是处，我姐为了跟你在一起，不惜跟家族翻脸。”

    “可你倒好，死不见尸活不见人。”

    “我姐孤身一人带着团团，受尽冷眼。”

    “两年前，吴家大少爷吴少华看上了我姐，两家拿团团向我姐逼婚，如果不答应，家族就会把团团带走，让她们母子分开。”

    “我姐坚持认为你没死，也是为了团团，才把她托付给我。”

    “找到在山里遇到的一位老尼姑，跟她修行去了，为了保护团团，她没告诉任何人行踪，包括我。”

    “那个时候，我姐孤立无助，而你，我姐眼中的挚爱，整个李家唾弃的废婿，于浩然又在什么地方！”

    李蓉死死盯着于浩然，声音充满着恨意。

    如果不是他，万众瞩目的姐姐怎么会落到如此凄惨下场。

    于浩然闻言眼中冷光爆闪，脸色寒如玄冰。

    李家和吴家，竟敢拿团团逼婚自己老婆，如果不从便让她们母子永世不得见面。

    这森冷的眼神，看的李蓉猛地一惊，曾几何时，这个唯唯诺诺的老好人姐夫，身上怎么会有一种让她感到害怕的气息。

    “吴少华么？”于浩然闭眼，这一瞬间，心头杀意凛然。
',10013,10038);
insert into ds_book values(null,10039,'对吴少华此人，于浩然有所了解。

    自己当年跟李玟同在怀大上学时，李玟便有许多追求者。

    其中吴少华的攻势最为猛烈。

    不过此人，却是整个怀安有名的花花公子，身边女人无数，喜欢李玟不过是占有欲作祟而已，越是得不到的越是觉得珍贵。

    李玟看透了他的真面目，选择了老实木讷的自己，为了结婚不惜跟家族翻脸。

    那时候的他，一穷二白，一场只有他们两个人的婚礼，寒酸至极。

    甚至让李家都沦落成怀安市的笑话。

    所以李家的人，除了李蓉这个小姨子以外，没有一个看得起他。

    至于废婿这个称号，便是吴少华冠为了嘲讽他而起。

    吴少华所在的吴家，是怀安一流大家族，实力甚至比李家还强。

    结婚之后，吴少华并没消停过，经常骚扰李玟，隔三差五等在李玟公司门口，但都被李玟呵退。

    好在不久后李玟便有了身孕，辞去工作在家，让他没了继续骚扰的机会。

    没想到自己失踪以后，吴少华又贼心不死，甚至发动两大家族的力量，逼迫李玟改嫁。

    “吴少华，你找死！”

    “当初你对李玟死缠烂打，我可以不在意。”

    “我失踪之后，若是你真心关怀她们母女，我也可以原谅你。”

    “但你千不该万不该 ，用手段逼迫。”

    于浩然睁开双眼，杀意如虹。

    “我堂堂神界至尊于浩然的妻女，岂是尔等凡人能够威胁欺凌！”

    这瞬间，吴少华连同整个吴家，在于浩然心里已经判处了死刑。

    “等我找回李玟，便跟你吴家一一清算！”

    于浩然压下心头杀意，抬头看向李蓉：“带我去找那个尼姑，我要把你姐接回来。”

    李蓉被于浩然身上的气势所震，满腔怒火化为无形。

    摇了摇头，苦笑道：“上哪去找啊？你以为我没找过吗？”

    “那尼姑带走我姐的时候，曾来过怀安一趟，跟我姐一起见了爷爷。”

    “从那以后，爷爷再决口不提逼婚的事，把团团交由我照顾。”

    “我曾听爷爷偶然间说起过，那位尼姑不是凡人，是一个传说中门派的高人，遇见我姐和收她为徒，都在她的算计之中，为了找到衣钵传人，根本就不是偶然。”','
    李蓉说起尼姑时，表情充满着敬畏。

    她亲眼所见，一向强势的爷爷，在尼姑面前，畏如鹌鹑。

    “传说中的门派？”于浩然轻轻点头。

    那位尼姑能震慑李家，显然是一位隐世高人。

    看来三十三重天与地球之间的联系，并非只是偶然。

    自己能进入神界，并且回归地球，说不定其他三十一重天，也有着高人在地球。

    既然连李蓉都找不到李玟，说明她被带到了某个隐秘之地。

    想要用正常手段找回老婆显然不太现实。

    “可惜我为了从神界回来，神格破碎，法力尽失，不然只需祭出神目，整个地球尽入我眼，想找回李玟轻而易举。”

    “现在只剩下神体犹在，实力万不存一，对付普通人绰绰有余，但碰到修行之人却束手无策。”

    “就算找到李玟，恐怕也没办法把她轻易带回来。”

    “从今夜开始，便重拾修为……不需要神帝境界，就算是普通的神仙境，也足以傲视整个地球。”

    于浩然心中微叹，做出决定。

    必须尽快重塑根基，修炼一道，毫无取巧的可能，必须一步一个脚印。

    “李玟，我知道这三年你受尽苦楚，我于浩然曾被你不计一切的照拂，从今天开始，我要将你失去尽数补偿回来。”

    “虽然你离开是为了躲避吴少华逼婚，但也是因为我不在。”

    “纵使寻遍千山，我也要把你找回来。”

    于浩然神念浩荡，立下誓言，起身走出李蓉房间。

    “于浩然。”

    李蓉连忙出声：“这三年你到底去了什么地方？为什么一点音讯都没有，现在又突然出现，你难道不该解释一下吗？”

    “有很多事，不到那个层面永远无法理解，多说无益。”于浩然淡淡答道。

    “你……”气的李蓉恨不得再给他两拳。

    不过想到他身上那种慑人心魄的气势，这念头便又退了回去。

    “谢谢你这两年照顾团团，这个情我于浩然永世不忘。”于浩然说完，走进了主卧。

    “谁要你记着啊，我可是团团的小姨，她喊我娘娘！”李蓉咬牙切齿，粉拳紧握，却又无可奈何。

    ……
','   深夜。

    于浩然盘坐在床上，仿佛还能嗅到房间里李玟身上那独特的体香。

    随着这余香，心境迅速沉静下来，尝试修炼。

    想要找回李玟，必须要有强大的实力。

    于浩然此刻神格破碎，神力尽数流失，根本无法再修炼三十三重天的神通。

    不过神界三百年，于浩然得到的并不仅仅只是修神之道，还有与之相对的修魔之法。

    他现在身体很强，远超普通人，甚至比以前接触过的李家保镖还要强的多。

    修魔道，是最合适也是最能快速达到目的方法。

    神和魔对于浩然来说，只在一念之间，并非绝对的坏事。

    为了寻回妻子，守护女儿，他甘愿从神尊化为魔帝。

    并无不可。

    一篇《噬天魔决》在于浩然心头绽开，这是他从当年亲手杀掉的魔帝神念中取得。

    修炼一道，一法通万法通。

    以于浩然曾经神尊境界，看任何功法都直透本质，去污存菁。

    照着法决，胸膛高低起伏，以一种极其玄奥的方式呼吸着。

    周围的空气，渐渐被他的呼吸带动，化做无数个微小的漩涡，吸进他的身体各大穴窍。

    “嗯？这种气息……似乎不是魔气。”很快，于浩然便感觉自己的丹田处，凝结出一个气团，但跟他以前面对过的魔气却不一样。

    没有魔气那种锐利精纯，很散但却正大光明。

    “难道神界的法决，来到人间界就会变异？这种气息，好像以前在地球接触过练武之人的灵气！”于浩然的眼界何等开阔，微一动念便反应过来。

    三十三界除了神魔两界互通以外，人间界与其他界只有机缘才能连接。

    天地灵气都不一样，功法的效果自然会变的不同。

    虽然武者劲气的品质和等级，远不及魔气和神力，但这是人间界的规则，只有按此修炼下去。

    等找到办法恢复神格，才能再想办法，恢复神力。',10013,10039);

	insert into ds_book values(null,10040,' 这宅子里的确有东西。

    这是并没多少年的从业经验告诉他的。硬要说，是驱魔师的直觉。

    几个人站在门前，大太阳晒着院子，罗经还在包袱里放着，小徒弟也活跃地在院子里摸摸看看，就这么些情况，按理说是瞧不出什么的。

    但一进屋子，就有一股凉意扑面而来。连小药童也感觉到了，她刚踏进门就打了个哆嗦。

    就这股寒劲儿，业内俗称阴气。

    “有问题吗？”

    他扭头问身边背着小药箱的徒弟，她点点头。

    “是有什么，但还看不见。”

    “啊，凛道长好。”

    “见过道长。”

    屋里来往的下人给他们打着招呼，凛道长点头回礼。有人认识他，有人没见过，但那身道袍，看得出是凛霄观的弟子。

    管事介绍说，那个慈眉善目的老妇人是亓婆婆，虽不是亓家的人，却是随着夫人跟来的奶娘，时间长了大家都这么叫她。而那个端着茶上楼的，是新来的丫鬟小荷。

    不过他们都没太多时间寒暄，毕竟谁手上都有活干。凛道长的活，就是接了这个单子。原本这时候，他和徒弟已经在远郊最近的驿站歇着了。可早上刚背着包袱到了车夫跟前，他们就被亓家大院的管事给拦下来了。说是知道他们要出城，求着凛道长临行之前“办点事”。

    驱魔这种问题，办成了有钱拿，还落得降魔震厄的好名声，好处是少不了；道行不够，办砸了，也没人能说你什么。但凛道长是个好人——传统意义上的。只要有人有求于他，他都是开不了拒绝的口。

    亓家的事，本是轮不到凛霄观凑热闹的。可是求了不少江湖术士，都拿它没法子。结果事情没解决，问题倒是传开了。现在，大街小巷都知道，亓家闹鬼。
','    凛霄观就在黛峦城西南方向的山脉上，及云而建，仙气凛然。常人上下山并不那么方便。凛道长不是观里闻名的驱魔师，论年龄论资历都要往后稍稍。可下山的弟子少之又少，加之先前他确实曾治过北面谁家府上的水鬼，一传十十传百，传的出神入化。添点油，加点醋，说是道长如何凭一己之力击退北江妖魔。明事理的人是大多数，听到说书的人吹的天花乱坠，也就一笑了之。

    黛峦城西南都是山，西边的山险，南边要缓些，这两座山翻过去，又是另两座城池。从对面高高的地势望过去，一片黛色的山脉参差栉比，黛峦城也因此得名。北面是一道江，发源地却是更西边的远山，渡江而去是一片稀疏的林地，再往北分布着星星点点的村落。东边是宽敞的陆地，交通便利，只消一天出头就能到邻近的小城。

    按计划，现在他们已经在这条路上了。

    但凡能让人口口相传的，多少是有点真本事的人。亓管事马不停蹄，趁着初晨的薄雾急忙把半只脚踏出城的凛道长拉了回来。

    何况出价不菲。

    真不是贪财，人总要过的现实点。这点钱确实不太够，若是有条件住高档的客栈，干什么带着徒弟睡大街喝西北风？

    “山海山海”药童拉着他的衣角，“要是应付不来，我们明天就撤呗？”

    这小药童的头发短短的，肩膀也不到，只是发帘儿长点，刚刚过眉。这十余年，她没开口叫过他师父。这也罢了，毕竟那时候自己也未过总角之年，被一个口齿不清的丫头片子喊师父还有点不好意思。而这些年他也发现了，她喊谁都是直呼其名，他也没必要强求着改口。反正，他知道她心里有自己这个师父。

    “应该没什么大问题，你要是看到什么，马上告诉我。”

    “行罢。”

    小药童应付的不太情愿。她早就想出城看看了，要老早知道亓管事是来添麻烦的，那时候就该直接拍拍马屁股走人。

    亓家闹鬼的事，街上传了几个月。具体说来，是夜半时候，家里的纸门上能看见一个女人的影子。懂行的人说，是有“影女”的妖怪在亓家出没。可光是影子也就罢了，家里的东西也频频失窃，隔几天又出现在别的地方，有时候再瞧见它，已经被搞坏了。而且，夜深的时候，说是能听到传来婴孩啼哭的声音。但亓家没有孩子——不知为何，他们自己的孩子有早早夭折了。因为这些乱七八糟的事儿，亓夫人已经重病许久，卧在病榻上半年有余。

    凛山海刚听管事说了这事，开始也觉得是影女。这种妖怪是含着哀怨而死的怨灵，在晚上看到屋里有影子，拉开却不见人时，通常是它在作祟。一般附在家里的纸门或窗上，怨气不重是没有移动家里用具的能力的。婴儿这事儿倒是说不准，如果这影女是因孩子的事，搞不好怨气确实更大。

    可亓家别说有什么冤案，死人的事儿都不曾有过。这件事儿的疑点简直多的吓人。

    现在申时刚过，看不出个一二三来。他们决定逢魔时再来造访。
','    室内的逢魔时是子时，那时的阴气最重。在等待期间，他们在邻近的茶馆候着。亓老爷本来叫人给他们准备了客房，但凛山海推辞了。他说自己阳气太重，容易打草惊蛇。

    喝着热茶，他从窗口眺望亓家大院。那是他们祖上传下来的，隔两年就翻修一次，时至今日也显得十分气派。他打听过了，亓家的声望不差，还经常接济穷人，招待路过的僧侣，按理说是不会得罪什么人的。

    “阿鸾，别吃了，给路上留点儿。再吃盘缠给你吃没了。”

    “没事儿，你可厉害了。今天把亓家的事儿一解决，银子要多少有多少。”

    “现在你又觉得我行了？别吃了，给我留点！”

    后悔了，不该提前把路上的干粮要了的。山海看着脸塞得像松鼠一样的阿鸾，有点想给她从嘴里抠出来。

    世上他凛山海拦不住的，除了妖魔厉鬼，还有阿鸾这张嘴。

    最后一口她还给噎住了，他把凉了的茶扣到她面前。把点心咽下去以后，他轰阿鸾快去睡觉，免得半夜起不来了。她拗不过师父，赌气似的把鞋往地上一蹬，背对着山海缩成一团。

    他看着来气，索性不看了，把视线挪到窗外，继续远远地盯着亓家气派的宅子。他提前问过管事，府上有没有什么上了年头的东西。懂的人都知道，一些老物件容易生出灵来，有的地方管这种妖怪叫做付丧神，善恶不定。有传言说物件放置一百年就会诞生付丧神，也有说将一个东西使用九十九次才行。这些来源都是有可能的，毕竟环境原因也占很大成分。

    亓管事一拍大腿，说那玩意儿可多啦，这院子都是前朝传下来的，更别提传家珍宝，数不胜数，随便一个盘子就是……

    山海连忙让他打住，听着就头大。

    但这类付丧神，通常是无害的，即使有爱作弄人类的，却也不会去伤人。亓夫人的病是随着怪事出现后慢慢加重的，他晚上去瞧了才能确定是心病还是另有原因。但他觉得不是，若付丧神真是有害的，早就有动静了，怎么偏偏这时候才出来作祟？

    “没意思，一个能陪我玩的小孩儿都没有。”阿鸾对着墙嘀嘀咕咕。

    小孩儿？

    凛山海想起来了，先前在楼下的时候就听见有人议论，说亓家无后，定是给人诅咒了。先前一个远亲过继了一个十岁出头的儿子给他们，夫妇俩喜欢的不得了。可是没满七天，那小孩儿就离家出走，不知去向了。可能是回本家了，真若是这样，等书信寄来还要几天时间。

    他准备下楼找掌柜的打听一下。正巧有小儿在门口哭闹，一个妇人唬他说，再闹，就把他丢在这儿让恶鬼捉了去。这儿离亓家近，里面的妖怪专吃小孩。

    山海拦住了一个倒茶的小二，问这说法是怎么回事。

    “嗨，您不知道，亓家闹鬼是传开的呀。说是有妖怪专门吃小孩，夜半三更，野狗都冲着院儿里猛叫呢。”

    影女当真是吃人的妖怪？凛山海拿不准了。',10014,10040);
	insert into ds_book values(null,10041,'再访亓家大院，已是第二日子时。尽管山海交代让大家低调行事，仍有一大帮下人在角落里候着。管家说老爷派了几个身强力壮的家丁以防不测，其余的，都是来看热闹的，亓管事轰了半天才遣散了他们。

    阿鸾在正房给夫人把脉，亓管事愣愣地跟在凛道长后面。他看不懂山海手中的罗经，只是捧着蜡烛满屋子转悠。两人的影子投在墙上，被拉得很长。

    屋里很安静，罗经一直没什么反应。空气冷冰冰的，时而有寒气掠过皮肤，像细碎的刀子划过去，冰得生疼。都快要入夏的时节，不应当这样冷得人手脚发麻。可门窗闭的好好的，山海笃定屋里有不该有的东西。

    “每天晚上都能见到吗？”

    “我见过一两次……倒座房的下人们倒是说自己经常见到，也不知是真的假的，他们若是闯了祸，或是想偷懒，没少拿影子说事儿……”

    “老爷和夫人见过吗？”

    “老爷开始不信，自己在后院亲眼瞧见一次，吓坏了。夫人常年卧床，常说些梦话，谁也说不清是真是假。”

    “什么梦话？”

    山海刚问出口，阿鸾背着药箱噔噔噔地从从走廊尽头跑过来。她扯着他的衣角，示意他低下头。山海弯腰侧耳，听着小徒弟抬着袖子小声地说了些什么。

    就在这个时候，有些许杂音打破了沉寂的夜。

    像是……小孩儿玩的琉璃珠，在木地板上蹦来蹦去。这声音出现的时候，三个人都闭上了口。山海望着手中的罗经，指针微微颤动着，却没有明晰地指出什么。

    声音持续了好一会，亓管事本想说话，山海竖起指示意他噤声。他左手持罗经，右手取出八荒镜左右调着角度，在走廊内徘徊着寻找声源。但声音只持续了一会，就消失不见了。

    “您刚想说些什么？”

    “哎，有家丁巡夜的时候，经常从这儿听到些动静……说是像小孩在玩珠子。我今天啊，也是头一回听见……”

    他的声音越来越小，好像有点儿慌，但在那个面无惧色的丫头面前，他又不好意思摆明了说自己怕。再怎么说，凛道长的徒弟，还是见过些世面的。她走哪儿都这样，如一滩死水板着个脸，显得面冷，山海也不知道是好事还是坏事。

    这里是东厢房的位置，按理住着亓家长子。可老爷夫人膝下无子，这儿便理应空着，只是前些日子住了那个已经走了的少爷。山海以为阿鸾是不怕的，但他瞅见她攥紧了腰间的桃木剑柄。

    方才，她告诉他，亓夫人屋里有不自然的味道。她取了些香炉里的粉末，断言香灰里准有麝香。

    就着烛光，他见阿鸾的嘴角还有一抹灰——这结论铁定又是她塞嘴里尝出来的。这丫头真是的，什么玩意都敢往嘴里送，麝香，那可是……

    ……可是避子药啊。

    凛山海感到后背一阵阴风，让人头皮发麻。

    不是鬼怪作祟，而是直从心底窜出的寒意。

    麝香。

    亓家无子。
','    午夜婴孩的啼哭。

    傻子都知道这是个什么联系。

    快到丑时了，山海请亓管事先把他们带到客房歇息一下。管事说有什么问题直接招呼，他马上过来。凛山海连连点头，麻溜把他打发走。合上门前，山海还探头探脑看看左右。确定没有人后，他小心地闭上门，又打开窗户四下扫视，再紧紧关上，生怕留有一丝缝隙。

    “干嘛呀，真怕恶鬼进来，贴几张符就好了。”

    山海忙拉着阿鸾坐下来，冲着食指发出狠狠地嘘声。

    “鬼不可怕，人才可怕。鬼都是给人害死的。”

    “……山海你是说？”

    完了，阿鸾就是那个傻子。

    “算了，我跟你说不清楚……”

    “不是呀，我当然懂了，当我在药房里都是白学的？只是我想不明白……”

    “想不明白什么？”

    “这和影女有什么关系？”

    八竿子打不着的关系。

    凛山海又开始头疼了。他觉得自己不是来驱魔，是来破案的。

    亓家大院，定是有奸人陷害夫人。可会是谁呢？给屋里焚麝香——说不定饭里也有……让亓家无后，财产也轮不到下人的手里。除非是受人指使，而这枚棋子背后，一定是既得利益者在操纵全局。

    他忽然想起白天听说的、过继了儿子的远亲。会是他们所为吗？害死那些婴孩，再把儿子送来，的确能捞到不少好处。但这样一来，麻烦就大了。

    “明天我要去一趟官府。”

    “因为逃跑的亓少爷的事儿吗？”

    “是呀。感觉道理上……说不清楚。”

    他不确定管事是否可以信任，只是找来了亓管事，请他明天备一匹马，自己很快会回来。

    “好咧。”管事欣然应许。

    “对了，亓府上可曾养狗？”

    “……以前是养过一只大黑狗，就叫大黑。可是夜里头啊，老叫。前些天开始学会乱刨坑了，给庭院闹的坑坑洼洼的，没辙。三天前才给送走。”
','   “毛色纯吗？”

    “道长，你该不会想宰了取血……？”

    “……您多虑了。送到哪儿了？能接回来吗？”

    “呃，不杀就好说。也不远，明天就牵回来给您看看。”

    “成。劳烦您了。”

    “多大点事儿呀。还有什么事吗？”

    “有吃的吗？”

    阿鸾从山海背后探出头。

    “不要给别人添麻烦。”

    “啊，有呀，阿鸾姑娘。你回屋歇着，我让小荷给你把后厨的糕点送一些过来。”

    “谢谢亓叔。”

    结果，等小荷来的时候，这丫头已经睡的透透的了。山海让她把点心放下，趁早回去休息。小荷行了礼，就告退了。他兀自一人思索一阵，也准备吹了烛台就早点休息。

    蜡烛刚一吹灭，一个女人的影子跃然于纸门之上。

    凛道长本能地一哆嗦。

    他摸黑抓起徒弟的桃木剑，小心翼翼地倚着墙，向门前靠去。他小心翼翼地用剑鞘碰触到纸上，影子没有什么动静。猛然拉开门，却发现丫鬟小荷倚着墙在打瞌睡，灯还在旁边放着。小荷也被这动静惊醒，匍在地上连连道歉。

    还好，被吓到的时候没有失态，不然就太丢人了。

    原来是因为小荷有事相求，却不敢开口，就一直在门口候着。屋里熄灯的时候，她的影子自然就被投射在纸门上了。

    他把小荷请进屋，慢慢听她讲。

    她是随着远亲的少爷一同来到亓府的丫鬟。那远亲是个商人，并不特别阔绰，但日子也算过得不错。只是近两年生意出了点问题，再也挤不出多余的财力，连下人几乎都遣散了。过继的亓少爷是家里的第七子，迫于无奈，将他送了过来。

    七子亓子，老爷觉得谐音有缘，图吉利，欢天喜地应下了这回事。

    “少爷是好孩子，和我从小玩到大的。他知道家里苦，自愿出来。而且亓府上下都待他不错，他不会因为恋家，连招呼都不打就从这儿逃跑的……小荷是怕他……能不能、能不能请凛道长不要报官？少爷是好人，少爷家里，也是好人……”

    丫鬟说着说着，语调哭哭啼啼。山海望了望睡得死死的阿鸾，无奈地拍着她的肩，答应她明天不去了，她的啜泣才小声了些。费了好大的劲，山海才把她打发回去。

    小荷所言，却让事情变得更加扑朔迷离。

    若少爷的本家是近两年才没落的，应当不会在更早的时候，就惦记上亓家的财产。这丫鬟与阿鸾差不多大，听她的话是真情流露，看不出胡编乱造的意思。

    那么杀死那些婴孩的，怕是另有其人。

    会是谁呢？能是谁呢？

    夜深人静，院里的虫鸣声顺着窗户细小的缝隙流入室内。过不一会，耳畔传来阵阵轻微的犬吠，听起来很遥远。

    琢磨着这些蹊跷的事，凛道长的眼睑渐渐变得沉重起来。
',10014,10041);
insert into ds_book values(null,10042,' “山海，你梦里叫人给打了吗？”

    阿鸾瞅着凛道长的眼圈，半天憋出这么一句话来。

    “少说两句罢，就知道你狗嘴里吐不出象牙。”刚嚷嚷完，凛山海觉得浑身的骨头都在隐隐作痛，可能昨晚受了凉。但看阿鸾活蹦乱跳的，应该是没什么问题。也不晓得是谁八字过弱，他心里直犯嘀咕。

    一晚上没瞧见影女，倒是扯出其他的问题。这事儿若是没解决，自己是拍拍屁股走人了，要污了凛霄观的名声，怕是以后没脸回来见门主。

    “点心漱了口再吃！一夜没罩上，也不知道落了多少灰，亏你吃得下去。”

    瞧着阿鸾眼疾手快地塞了几个点心，他这样呵斥着。

    “没问题没问题，外面那层剥掉，里面还是干干净净儿的。”

    “……先去漱口。”

    阿鸾又不情不愿地跑出去了，小碎步把地板踩得作响。山海忽然想到了什么，思索起方才阿鸾的话来。

    里面还是干净的。

    外面那层。

    ……也许影女之事，不是真正的妖怪本身，而是外面投进来的影子？

    不是没有这个可能。

    室外的逢魔时，是酉时与寅时，即黄昏与黎明两个时段。一个下午除了下人们在宅院里劳作往来，山海也是忙得不可开交。这会儿已经没有那么晒了，山海坐在外廊上，一张一张地写着道符。阿鸾的药箱放在一旁，正磨着墨。

    这会，一位和善的老妇人端着两杯茶水走上前来。山海抬起头，认出是管事介绍过的亓婆婆。他略微打量了一下，阿婆年近花甲，花白的头发被细心地拢起来。虽说是家里的下人，穿的布料却还挺讲究的，项上带着一枚有裂纹的玉佩，指上有两枚银色发黑的戒指。

    瞧见凛道长在看这些，她露出了暖洋洋的笑：

    “这都是夫人曾送给我的。她常戴的玉佩，有天不小心给磕裂了，又不舍得扔。夫人说若我不嫌弃，就赏给我。夫人是把我放在了眼里呀，我高兴还来不及。打那以后，她有什么用旧的首饰，都塞到我手里头。”

    说这话的时候，亓婆婆脸上的褶儿挤在眼角，眉眼笑的弯弯的。阿鸾默不作声，盯着她露出来的手腕看。她瞧见了，把袖子向外拉了拉。

    “对了道长，您这是在写些什么呀？”

    “显形符。一会儿要烧了化在水里，晚些时候就要用到。”

    “屋里当真……那，我还能求您件事儿吗？”

    “太客气了，您开口便是。”

    “想托您写两张平安符，我想贴在夫人的房里，求个心安……”
','   “这好说。”

    凛道长让徒弟再磨些朱砂，阿鸾半晌没动。她抬起头，确认什么似的问道：

    “两张？”

    “啊，我还有个小孙子……”

    亓婆婆自知求人理亏，有些不好意思地赔着笑。

    阿鸾从箱里取出朱砂，凛道长欠过身，从小抽屉取出包针线，将自己的中指扎破，让鲜血滴进小碟里。山海很快画好两张平安符，亓婆婆欢喜极了，在阿鸾动身去烧符化水的时候，亓婆婆主动将活拦在自己身上，拿着一叠符离开了。

    “只是平安符罢了，为什么要为他们折自己的阳寿？”

    阿鸾困惑不解，她是指山海刺破手指这件事。但她师父只是笑着摇摇头，似乎自有定数。阿鸾觉得无聊了，撂下箱子转身便走。

    “你要去哪儿？”

    “找小荷玩去。”

    临走前听她不满地嘀咕，折的又不是我的寿，不管你。

    “别忘了去后厨要些盐——”他大声喊。

    阿鸾嚷嚷着，知道了知道了。

    山海吹了吹茶，向庭院的方向望去。正值春末夏初的时刻，院儿里繁花似锦，姹紫嫣红， 却不见一只蜂蝶在花丛间出没。于是这样的景色就变得十分刻板，像是一幅干巴巴的花草画，少了些许灵动的生机。

    这时候，亓管事迎面走过来，山海放下茶杯，两人简单行了礼。

    大黑清早就牵回来了，但凛山海一眼就看出它毛色不纯，尾巴根儿里夹着几根黄毛。他说它看不到东西，借不了。管事本想送回去，可一个男孩听到狗叫就兴奋地跑过来，抱着大黑闹做一团。山海一问才知道，这是亓婆婆的孙子，叫桥生。他们最初都是在亓夫人的娘家干活，桥生妈生了他就难产走了。没过几年，桥生爹修房瓦的时候栽下来，竟是摔死了。

    于是就剩下小桥生和奶奶，亓夫人可怜他们，征得老爷同意后把他们都接了过来。

    桥生从小最喜欢和大黑玩，它被送走之后哭了一整天。这两天还生着气，饭都不好好吃，可急坏了亓婆婆。管事这才想着，今天先把它留下来和他玩一阵子。

    “后院又给它抛得满地是坑，老爷知道了可又要数落我，哈哈哈哈。”

    “添麻烦了。”

    “哪里的事。”亓管事并不在意。

    马上要到晚膳的时候，小荷带着阿鸾在屋里头转着。早晨管事见她们两个聊的很是欢快，特意给小荷准了一天的假，小姑娘可高兴坏了。这会，她们走到了东厢房的位置。小荷远远就瞧见了桥生和大黑在打闹，她的步伐变得慢吞吞的。

    “怎么了？”阿鸾问她。
','    “我有点……怕狗。我和少爷来的时候，这狗就认生，可凶了。”

    “这样子。”

    嘴上这么应着，阿鸾并没有加快脚步。她记得，这是昨夜听到珠子声的地方。她跳下台阶，仔细翻找起来。小荷胆战心惊地抓着门，催促她快点回来。

    在外廊的木板下方，她果真捡到了两颗珠子。

    但不是琉璃的——她嗅了嗅，像是小叶紫檀。

    “桥生的房间在哪儿呢？”

    “和亓婆婆住在一起，在倒座房呢。我和另几个丫鬟在一个大些的房间，小阿鸾要去看看吗？走嘛，我们不要再看大黑了……”

    “那就看看罢。”

    晚上，老爷多花了些心思宴请凛道长。老爷方才步入中年，头上的头发却花白了不少，简直和亓婆婆有的一比。看得出，他为夫人和这些琐事很是劳心。饭桌上，他还有些抱歉地对山海说着招待不周的话，等事情解决，定有重谢。

    山海本是没底的，直到阿鸾悄悄往他手中塞了什么东西，又低声说了些什么，他心里便有数了。

    “重谢倒是不必，但今夜寅时，虽不一定解决鬼影之事，但多少能给老爷一个交代。”

    今夜寅时，凛道长要作法了！

    门外偷听的下人们讲这话传开了，众人议论纷纷。有人面露喜色，有人心存疑虑。

    还有的人，双眉紧蹙。

    夜已经深了，人们却聚成一团，任凭亓管事怎么轰也赶不走。他们都凑在门后，看着凛道长和他的小徒弟在屋里忙前忙后。每隔一段距离，凛道长就摆了一碟细盐。几个家丁挑着灯跟在他们后头。这阵仗是大家从没见过的，不过目前为止没什么更稀奇的事，无非是人看人罢了。

    万事俱备后，凛道长一边走着，口中念念有词。他的声音很轻很轻，噤若寒蝉的人们只能听到些“天道有常”“断阴阳”之类的字眼，谁也不敢议论。阿鸾的手里捧着个大木盆，她一面跟在师父的后方，一面用瓢往地上洒水。这盆水想必就是下午化了显形符的灵水。

    开始人们只觉得安静，道长竖起两指，攥着罗经的另一手暂且背在身后。他的喃喃声在这篇寂静的夜色中格外明显。但很快，一些细小的声音慢慢地从四面八方涌现出来。刚出现这些违和的音量时，人们只觉得奇怪，却说不出什么。不一会，有人惊呼，这声音他听过。接着，越来越多的人开始附和这样的说法。

    到最后，不论是在场的谁，都能清晰地听出这是何等熟悉的声音。

    乃是婴孩的啼哭。',10014,10042);

	insert into ds_book values(null,10043,'我是谁，我从哪里来，要到哪里去，短短几个字，却是对整个人类的终极拷问。

        我们是神？还是人？是宇宙之中唯一的生命？亦或者....

        2100年，世界处在和平阶段，人类过着安定祥和的生活。目前面临最大的问题已经不是战乱和饥荒，而是日益恶化的生存环境，但在许多贪婪商人的蛊惑之下，人类依旧过着我行我素的生活。

        宝拉公司，是一家在世界各国都设立分公司的超大型制药公司。

        作为世界上实力最为雄厚的公司，站在地球守卫者的角度上，无偿捐献大量资金用以保卫地球环境，试图挽救人类于水火之中。近些年来，竟奇迹般的将自然环境恢复的七七八八。这一举动获得世界各国的鼎力支持，并将宝拉公司的地位推向了世界之巅。

        但这一切似乎只是宝拉公司表面的伪装.........

        2060年，地球东半球无人区，拉马冰川

        彻骨的寒风常年吹刮在这片荒无人烟的冰川上，室外温度达到了零下六十度。就是在这样一片土地上，一座合金制造的超大梯型建筑坐落于此。建筑表皮，还画着一个“b”形的图案。

        此时的基地上方悬浮着一架大型的武装直升机，地勤人员手里拿着红色的指挥棒指挥直升机降落，基地上方的合金铁闸门缓缓打开，武装直升机顺利的进入基地之中。

        飞机上，下来一位年龄三十岁上下的男人。面相俊朗，身穿黑色西装，扎着红色蝴蝶领带，头戴黑色贵族礼帽，拄着一根金丝楠木制作的龙头拐杖。

        在他身后是清一色的雇佣兵，身穿黑色战斗服，头戴战术头盔，手中拿着造型怪异的突击步枪，神情严肃的站在男人身后。

        男人对面，恭候着一名黄皮肤的男助理，此人长相颇为斯文，戴着一副金丝眼镜，恭敬地站在直升机面前迎接，见到来人之后直接弓下身子。

        “左老板”

        “辛苦你了，杰森”

        两人进行了非常简单的对话。

        随即，杰森引领一帮人走进了一架大型的升降梯，按下负七层按钮，精钢制作的大门缓缓关闭，升降梯徐徐下落。

        在此期间，杰森开始对左老板做着汇报。

        “老板，根据我们目前的研究进度，想在三年之内研发出我们需要的东西可能不太现实，目前的进度不是很乐观。”

        左老板听到这个结果，面色没有任何改变，依旧十分平静

        “加派人手，不惜一切代价，两年之内必须制作完成，时间已经不多了。”

        “是，左老板。”

        就在这时，一阵电话铃声在升降梯内响起，杰森顺手拿起安装在升降梯内部的有线电话。

        “喂，找谁？好，知道了。老板，接线员说有一个小男孩打电话找左江，说他叫左丘，您要不要接？”

        “丘儿？”左江略微有些惊讶，还是接过了杰森手里的电话

        “喂，丘儿，这么晚了怎么还不睡？”

        电话那头传来一个奶声奶气的男孩子声音；“爸爸，我好饿啊，给我做饭饭吃嘛？”

        左江难得的露出一丝笑容，但是面色颇显无奈。','
        “丘儿乖，爸爸今天回不去了，让阿姨给你做些什么吃吧。”

        “哦，好吧。”

        小男孩左丘有些失望，但最后还是妥协了。

        “丘儿，爸爸现在很忙，先不和你说了，等爸爸回去给你买个礼物。”

        “爸爸，我想要一艘宇宙飞船！”

        小男孩听说父亲要送自己礼物，直接说出了自己最想要的。左江笑了笑没有说什么，将电话递给了杰森。

        -------------------

        2090年

        “诸葛，根据老局长带回来的情报进行分析，宝拉公司正在制作一种名叫“纳克”的神经毒气，这东西会使人类发狂失去本性，并且会控制人类的一切行为，继而死亡。如果散播开来很可能会波及整个国家乃至全世界！”

        办公室内，一名面相普通，身穿黑色西装，大概三十岁的男人一脸焦急的对着一个正在办公室里来回踱步，浑身上下带有浓烈烟草气息，紧皱着眉头，年龄同样三十岁上下的男人说。

        “他妈的宝拉公司！这个左丘到底要干什么？灭绝人类吗？！”

        这名叫诸葛的男人紧握拳头，一拳砸在了红木制作的办公桌上。这一下力量太大，直接震掉了桌子上的白瓷水杯，“咔嚓”一声脆响，杯子掉在地上摔个粉碎，里面的茶水四溅，还冒着滚滚热气。

        “诸葛，现在咱们该怎么办？要不要通知上面，全力缉拿左丘？”

        “不行，宝拉公司的势力太过庞大，即使在咱们的核心层里也有可能存在他们内部的人员，我们必须要谨慎！”

        “那你说怎么办？老组长已经牺牲了！你就不想给老组长报仇吗？”

        “我想！我特么当然想！但是我们不能冲动，必须要制定一个计划！”

        “计划计划，这么多天过去了，你的计划在哪呢？不是我就纳了闷儿了，老组长的两个女儿到现在还下落不明呢，你怎么还能坐的住？！”

        “肖平！你有火别他妈冲着老子撒，有本事就给我把老组长的女儿找出来，没本事就他妈给我老实的眯着，听我的，现在老子是组长！”

        两个男人激烈的争吵一番之后，办公室内陷入了一阵沉默。良久之后，这个叫做诸葛的男人弯下腰，捡起地上摔得四分五裂的水杯扔进垃圾桶里，一边收拾一边无奈的叹了口气。

        “唉，肖平，我们现在不能直接跑到左丘面前缉拿他，到那时他会动用一切的关系网脱身，即使把他抓回来，也治不了他的罪，我知道你心里难受，但是我比你还难受！现在组织让我坐上组长这个位置就是把我架在火上烤，你能明白吗？这个情报是老组长用一家人的生命换来的，我们必须要对得起老组长，对得起老组长带回来的情报！”

        肖平一言不发，直勾勾的看着地面上没来得及清理的茶叶残渣。名叫诸葛的男人收拾完这一切后，来到肖平的面前，目光坚定的说：“肖平，从现在开始，不惜一切代价调查清楚左丘的一切行动路线和计划，不管到最后怎么样，我一定会给老组长一个交代。”肖平浑身颤抖一下，目光直视面前的男人

        “我会尽全力的，希望你是对的....”

        ------------------

        2091年    我国西南部无人区

        一辆黑色防弹装甲车行驶在一条狭长的山谷里，道路皆是黄沙覆盖，一般的越野车行驶在这种路面上绝对会陷入其中无法动弹。

        装甲车内共有三个人，司机开着车，副驾驶是一名面色冷峻，年龄在二十五岁左右的年轻人，面部自左眼到嘴唇出有一条长长的伤疤，穿着一身黑色作战服。后排则是一个身穿白色西装，一脸倨傲之色，年纪大概在三十五岁左右的男人，手里拿着一只高脚杯，不断地摇晃着红酒，翘着二郎腿，眼睛微眯，一副悠哉的模样靠在椅背上休息。

        突然，从道路前方窜出来一只羚羊，司机一脚刹车，但是没能刹住“嘭”的一声撞在了羚羊的身上，只见这只羚羊直接被撞飞，在空中划了一条完美的抛物线，然后重重的摔在地上，浑身抽搐，各个器官不断地向外喷涌鲜血，眼看着是活不成了。

        “哎呀呀，这红酒可是非常名贵的，真是罪过啊...”

        在后排休息的白色西装男没有防备，高脚杯里的红酒撒了一身，男人没有愤怒，而是略带戏谑的对着司机说着。

        “比你的命还贵上几倍！阿冷！”

        突然，白色西装男由那副懒洋洋的表情迅速转化为森寒狰狞，咬牙切齿的对那名叫阿冷的男人说。
','       不到一秒种，坐在副驾驶名叫阿冷的男人快速掏出手枪，对准司机的太阳穴扣动了扳机，“嘭”的一声，司机直接被阿冷击毙。

        阿冷像是没事人一样下了车，来到驾驶室将司机的尸体拖下车，自己坐上了驾驶室。这一切不到一分钟，但是白色西装男却好像没事人一样。好似对这种场景见惯不惯了。

        “阿冷啊，你觉得今天的计划成功率是多少？”

        白色西装男一边换着身上的衣服一边漫不经心的问向阿冷。

        “大概90%，现在他们迫切需要我们的技术，况且这次是免费赠予，他们没道理不要。”

        阿冷同样没有任何情绪波动的回答着问题。

        继续行驶了十分钟，前方空地上停了一架黑色观光直升机，直升机的下方站着三名身穿黑色西装，戴着深色墨镜的外国人。装甲车缓缓地停到直升机旁边，这名叫阿冷的男人率先下了车，与对面的外国人进行初步交谈。

        “组长，发现左丘，位置在峡谷出口处，黑色装甲车里，白色西装。”

        “好，继续监视，没有我的命令，谁都不许擅自行动！”

        “是！”

        只见在山谷的半山腰处，一名手拿红外望远镜的前线侦查人员正快速的通过对讲机向诸葛白进行汇报，在他的头顶上方有着一架微型的无人侦察机，实时将画面传输给诸葛白，在他身后，一行十几名身穿战斗服的反恐小组人员正聚精会神的架设着狙击枪，目标正是黑色装甲车后排的白色西装男。

        此时的诸葛白和肖平正坐在距此地几公里外的临时基地里监视着山谷里的一切。

        “诸葛，一年了，咱们今天终于逮住这个机会了，干掉左丘，也算是给老组长报仇了。”诸葛白眉头紧皱盯着无人机传来的画面一言不发，肖平继续说：“唉，这次回去等着挨处分吧，擅自行动，搞不好要被判刑啊....”

        “免费送给我？你小子跟我开玩笑呢？”

        站在阿冷面前的是一名膀大腰圆的光头，手里还拿着一根雪茄，烟雾缭绕间说出这么句话，阿冷面色没有丝毫改变

        “哦？要不要再送你一颗免费的子弹？”

        说着，从腰间快速抽出一把手枪，死死地抵在面前壮汉的脑门上，壮汉身后，两名严阵以待的保镖见此情形也是飞快的掏出手枪，对准了阿冷的脑袋，场面一时僵持起来。

        就在这时，装甲车的后门打开了，左丘大摇大摆的从车上下来，手里依旧拿着红酒杯，看见这剑拔弩张的情形，丝毫没有紧张，反而大笑着说：“约瑟夫，别来无恙啊！”说着话呢，走到阿冷的身边，将阿冷的手枪压下。接着对这个叫做约瑟夫的大汉说：“咱们也算是老交情了，这次的东西不同以往，是神经毒气，免费送给你们可以，但是我需要一份使用武器之后的报告”

        约瑟夫低头沉思了一下，最终点头同意了。露出一口大黄牙，裂开大嘴笑着说：“没问题，谢谢你了左老弟。”看着约瑟夫伸出来的这只粗糙并且满是污垢的手，左丘的眉头微微皱了皱，并没有与之握手，转而对着阿冷使出一个眼色，阿冷会意，直接去装甲车上取货。

        “目标出现！目标出现！全体狙击手听我指挥”

        诸葛白对着对讲机指挥着

        “三，两，幺，射击！”

        “嘭嘭嘭!!”一时间，枪声大作，十几颗大口径的子弹齐齐的穿透了左丘的身体，在左丘身上留下一个又一个碗口大小的窟窿，还有一枪直接打在左丘的喉咙处，将左丘的头颅和身体完全分离开来。还没等左丘反应过来，身体就被打的四分五裂，倒在满是黄沙覆盖的荒漠之中，满眼的难以置信。

        正在拿货的阿冷听到枪声之后快速丢出两颗烟雾弹，在烟雾的掩护下，驾驶装甲车迅速离开了这里。

        “what    the    fuck！”

        约瑟夫那一众人早就被吓傻了，跌跌撞撞的跑向观光直升机上快速离开了这个地方。

        “目标被击中！重复！目标被击中！确认死亡.....”',10015,10043);
		insert into ds_book values(null,10044,'眼下是2103年冬，即将迎来一年一度的春节

        “先生，我们的航班即将到达目的地，请收起您的小桌板，系好安全带，感谢您的配合。”

        我睁开惺忪的睡眼，抬起头，侧头望去，站在我身边的是一位穿着职业套装的空姐，她的眼神略显疲惫，跨越半个星球的飞行，就算是专业的空值人员也有些吃不消。我拿起小桌板上盛放着可乐的纸杯一饮而尽，将纸杯递给空姐，冲着空姐微微一笑，然后快速的收起小桌板，现在这飞机上不同的人种很多，我可不想成为众矢之的。

        看着机舱玻璃外面的风景，此时我心情无比复杂，似乎总有一团阴云笼罩在我的头顶上空。

        十八小时前宝拉公司分部

        “酒鬼，那我就先去休息了，那瓶试剂你可盯紧了，温度不要太高，始终保持在35摄氏度，知道吗？”

        我指着实验台上圆柱形，装有淡蓝色试剂的玻璃器皿，对着一名金发碧眼的家伙嘱咐着。这个酒鬼的名字叫比利，只见比利此时咧着嘴一笑，露出一口吸烟过多导致的焦黄的牙齿，面色通红，手里还拿着一瓶芝华士，时不时的来上两口，一副醉醺醺的模样。

        在之前他值班的时候就已经发生过一次因为醉酒而导致的实验室小型火灾，好在报警系统非常灵敏，进行了机械化的灭火，不然后果不堪设想。

        即使这样，也还是让咱们损失了一部分的研究报告，损失的那部分恰好是我负责的那几份报告。所以很不幸，我只能独自加班好几天补上那几份报告，而今天就是我最后一天留在这里加班写报告的日子。

        巧了，今天又是比利这个酒鬼值班，我实在是不明白公司高层到底是怎么想的，怎么会让这样的家伙来实验室值班？真的是被他吓怕了，为了保险起见，我只好将报告随身携带，谁知道这家伙又会闹出什么麻烦。

        整理好报告之后，我站起身推开实验室的大门，走出了实验室。现在是凌晨一点钟，我又累又困，只想赶紧回到宿舍里面好好地睡一觉，这几天加班写报告实在是太折磨人了。

        实验室与宿舍之间只隔了一个小花园，距离很近，站在我宿舍的窗户前刚好能够看到我们实验室的楼层。

        来到国外才发现，除了人种的长相之外，其他的与国内好像也并没有什么不同，也可能是我根本就没有时间出去四处转转没有机会体验当地的风土人情吧。一切都和在国内生活一样，科研，吃饭，睡觉，三点一线。

        我现在带领研发的生物工程项目是一个叫做“多物种基因混合技术”的项目，这个项目如果能够研发成功，将会带来无可估量的价值，一些当代绝症，例如癌症，先天性心脏病等因基因缺陷所导致的疾病将会得到彻底的治疗，甚至人类的寿命都会有大幅度的增长！

        但是我总感觉这个项目有违天理，就像是潘多拉的魔盒，一旦打开，就会造成不可避免的伤害。

        想着这些，我叹了口气，已经来到了宿舍的门前。打开门锁，回手关上房门，洗漱一番之后躺在床上倒头就睡。

        大概是凌晨三点钟，一声惊天的爆炸声将我从睡梦中惊醒，宿舍窗户上的玻璃尽数被震碎，我一下子从床上跳起来，不小心踩在了碎玻璃上，锋利的碎玻璃扎进了我的脚掌但是我却没有过多的在意，因为隔着碎掉的窗户我看见，实验室爆炸了！

        “你妹的！”

        我大骂一声，穿上鞋就想出去看看到底是怎么回事，这可是团队历经半年的时间，克服重重艰难险阻才提取出来的半管试剂，现在就这么毁了，我真的想一拳揍到这个酒鬼的脸上！一定是这家伙喝多睡着了，试剂温度过高导致的爆炸，他妈的！。

        透过被震得粉碎的玻璃，我看见公司的一楼一阵骚乱。身穿西装的，披着白大褂的，还有一些安保人员全都挤在一楼的大厅门口，每个人的脸上都透露着惶恐与不安的神色，。在爆炸的火光中，我能清楚的看见滚滚的墨绿色烟雾随风飘荡着，这些雾气很诡异，并没有随风消散，而是在逐渐的向着一楼大厅附近飘落。
','       不知怎么的，我突然感到一阵说不上来的心悸。我想对着站在一楼大门外的人们发出警告，让他们不要站在那里，可是已经晚了，这些墨绿色的雾气已经飘散在人群之中，所有接触过这些墨绿色雾气的人无一例外，一个个浑身抽搐的倒在地上，从七窍中不停地向外翻涌着大量的鲜血！

        整个过程仅仅持续十几秒钟，大厅内外的人一个也没能逃过，全部倒在地上，生死不知！

        我的喉结上下耸动着，冷汗不停地向外流，呆呆地站在窗前一动也不能动，不是我不想动，而是我的身体现在根本就不听我的使唤！

        也不知道过了多久，天空中突然传来气流爆破的声音。几束大型探照灯射出惨白亮光直直的照向公司大门前的地面上。

        我抬头看去，三架黑色的阿帕奇武装直升机飞在距离地面百米的高空上，机身上印着白色烤漆绘制的“b”型图案，这是宝拉公司内部的直升机。

        直升机上的武装人员见到地面上的情景，悬浮片刻之后便降下绳索，从武装直升机里快速空降下来几十名身穿黑色雇佣兵服，头戴防毒面具的战斗人员。这些人快速的查看地面的伤亡情况，接着向上级汇报。

        我的视线再次看向躺在地面上生死不知的公司人员，却看见了令我目瞪口呆的一幕！

        他们已经不能再称之为“人”了，有的人开始浑身长满黑色的毛发，面部开始向大猩猩的样子发展，有的人皮肤慢慢的变得反光，并且开始生长的婴儿拳头大小的鳞片，甚至还有一些人，嘴部突变成了类似于飞禽类的喙状，林林总总的发现了十几种不同的物种。这些人可能就是因为吸入了这些气体才变成这副模样的。

        这些雇佣兵们经过一番侦查之后，发现没什么危险，再次向上级进行汇报。

        不出五分钟，一排排的警车消防车和救护车赶了过来，救援人员到达现场之后穿好防辐射服和防毒面具，开始进行紧急救援。一个个死掉的“人类”被抬了出来，当他们看见各种奇奇怪怪的人类之后，一时间有些不知所措，甚至有的人看见这些基因突变的人类当场就吐了出来。

        我僵硬的回到床上坐下，这才想起来，刚才不小心碎玻璃扎到脚掌了。

        打开宿舍的灯开始处理自己的伤口。我现在大脑一片混乱，还是有些无法接受刚才发生的事情，可是还没等我缓过神，宿舍的门就被敲响了，声音显得有些急促。我赶紧穿上拖鞋，来到房间门口打开了房门。

        只见一个一头金黄色短发的年轻人站在了我的面前，身穿一身深蓝色西装，戴着一副金丝眼镜，胸口处还别着一块手帕。在他身后，还有两名身穿黑色雇佣兵服，头戴黑色战术头盔，面部被黑色的面罩遮住，手里拿着一把ar血统的xm16突击步枪的雇佣兵。

        我隐隐的感觉到了一股杀气，不禁有些双腿发软，但是还是强忍住了内心的恐惧

        “请问有什么事情吗？”

        这名一身西装的年轻人用手轻轻的推了一下眼镜，说着一口流利的中文

        “你好，齐先生，我叫杰森，是来回收宝拉公司所有的财物的，在您身上有着‘多物种基因混合技术’的一段报告，现在请您交到我的手上。”

        我微微一愣，没想到他们居然是来回收我的研究报告的。

        虽然说很舍不得，但是却没有道理不上交，毕竟我只是个打工的，这些东西还真就是属于公司的财物。

        “稍等，我这就去拿。”
','       杰森点了点头，也不进来，就在门口等待着我。

        来到宿舍的床前，从枕头底下抽出了我写的研究报告，再次来到门前将报告交到了杰森的手上。

        杰森很满意的笑着对我说：“感谢您的配合，对了，齐先生，公司已经为您预订了回国的机票，您搭乘明天晚上，准确来说是今天晚上九点的飞机，感谢您这段时间的辛苦研究。”

        说完，冲我微微一笑，然后转身就离开了。我则是带着满肚子的疑问关上了宿舍的房门，失魂落魄的坐在床上，双眼呆滞的看着宿舍里面这一地的碎玻璃...这一切预示着，这个科研项目已经被迫中止了。

        我叫齐墨，是一名生物工程的研究员，与其他的脑力工作者不同，有着一双近视眼却从来不戴眼镜，一头利落的短发，面相自我感觉还算是个帅哥，虽缺乏锻炼但身材还算比较匀称。这次是被本国的宝拉公司总部指派到美国公司分部，带领研发一项持续三年的科研实验，这一工作就是一年半，如果不是项目研究时发生意外，估计还要分公司再呆上一年半。走的时候是酷署，回来时已是深冬，长时间的异地生活让我对自己的家乡无比想念。

        我望向窗外，天气并不是我想象中的那样阳光明媚，即使我闻不到窗外的空气，也能感受到属于自己家乡的味道。

        现在临近年关，机舱内的led显示屏告知我现在室外的温度是零下十六度，我穿的西装革履的，也没带羽绒服，我知道，家乡的冬天一定会教我做人的，只能希望对我不要太残忍。

        伴随着巨大的轰鸣声和强烈的震动，以及那令人最不耐烦的低速滑行，我终于抵达了目的地。拿上我的公文包，气宇轩昂的走向机舱门。

        “这小伙出门没看天气预报吗?小美呀，你可不能学他啊，到老了作一身病！”

        旁边一位大妈，冷不丁的说了这么一句，然后表情夸张的对着身前的一名小女孩说。小女孩十二三岁，看起来像是大妈的孙女。

        我撇了撇嘴，没说什么，我大妈还是我大妈啊！

        舱门打开，迈出第一步的时候，我就后悔了！周围是一片冰天雪地，凛冽的北风夹杂着地上的碎雪打的我脸生疼，现在我完全没有之前那激动无比的心情了，只想快速冲上出租车，回到家里。

        我抱着双臂，弓着腰，迈着小碎步，快速的冲向行李转盘取出行李，坐上了一辆出租车。当开门上出租车的那一刻我感觉自己重生了。

        哆哆嗦嗦的摸出一支烟点燃，跟司机说了地址，司机摁下计价器，我们就准备朝家里奔去。

        我随意的瞥向窗外，猛然间看见停车场上演着令人震惊的一幕。

        一只三花的边牧像发疯了一样死死咬着一个中年男人的小腿，无论周围人怎样击打都丝毫没有松口的意思，隔着老远，我隐约都能看见边牧那双通红的眼睛！

        “这是狂犬病发作了吗？”

        我嘴里嘟囔着，大脑也在飞速思考。
',10015,10044);
insert into ds_book values(null,10045,'“小伙子刚回国啊？”

        司机是一个四十多岁的中年人，一只手扶着方向盘，另一只手夹着个烟卷儿，看似随意的向我问到。

        我正在思考狂犬病的事情，没多想就点点头

        “现在这样的事可多了，自己家的狗突然间看见活物就咬，可能是最近狂犬病毒进化了？反正现在新闻只是报道了，也没说是因为个啥。”

        司机自顾自的说着。

        听了司机的话，我低下头，若有所思，隐隐的能感觉到事情好像没有那么简单，毕竟在十几个小时以前，我亲眼目睹了世界上大部分人永远都无法理解的一幕。

        看着那只咬人的疯狗，我有些出神，不由得想到了自己家里那条杜宾。“将军”

        将军是一条纯种的雄性黑色杜宾，现在差不多三岁了，很听话也很聪明，只是有些贪吃，喜欢卖萌。

        回过神来，看看那个被咬的中年人，小腿上鲜血淋漓的，肌肉外翻，甚至都能看见森森白骨。那只边牧在众人的击打下也终于是奄奄一息，浑身的毛发已经残破不堪，身上大大小小数十个伤口，简直不忍直视。

        司机师傅脸色也是很难看，喉结上下耸动着，能看得出来他强忍着开出了停车场。

        出了停车场，通过后视镜我依然能看到那只边牧通红的眼睛死死地盯着中年人那鲜血淋漓的小腿还有几名闻讯赶到的机场安保人员。

        车子一路飞驰，我感到有些压抑，也不知道是怎么了，总有一种不好的预感，昨天夜里在宿舍看到的那一幕幕还在不断的刺激着我的神经，导致我一夜都没怎么合眼。于是我靠着椅背眯起了眼睛休息，手机铃声却突然响了起来。拿起手机一看，是老妈打来的，接通电话之后，入耳是老妈那慈爱又带略责备的声音

        “臭小子，下飞机了也不跟妈说一声，是不是忘了你还有个妈啊！”

        我摸了摸鼻子，有些无奈：“妈，这天气实在是太冷了，一下子给我冻得脑子短路了，没想起来嘛。”我半开玩笑半认真地说。

        “回来吧，告诉司机别开太快，路滑，妈给你做了一桌子好吃的。”

        挂掉电话，看着窗外的树上被风吹落的雪花，我的内心微微有些兴奋。这种家的感觉，是我在其他行政区永远都体会不到的。

        车子在高速公路上疾驰着，开了大概半小时才缓缓停下，终于到了父母的家，河畔花园。

        下了车还没来得及感慨，又是一股北风吹得我鼻涕一把泪一把。我赶紧拎着行李箱向家里飞奔。看着周围人都是羽绒服保暖裤加厚棉鞋，我越发感觉自己是个神经病。

        来到自家楼层，我敲响爸妈家的房门。开门的是父亲，让我有些意外。原本高涨的情绪也微微有些冷却，再加上室外的温度实在是太低了，我一句话没多说直接钻进屋里。

        老妈看到我回来了，显得非常的高兴，原本在厨房忙活着，见到我进屋了，直接放下手里的活，沾有油渍的手掌在围裙上抹了两下，又是责备又是疼爱的，又是给我倒热水，又是给我开空调。

        “傻儿子，你咋就穿这点儿啊？这不都冻坏了吗？”

        我只是笑了笑没说话。见我已经暖和了过来，老妈又跑去厨房开始忙活上了，我则是拿起桌上的热水开始打量起屋内环境。

        鱼缸里的金龙还是那么威武霸气，厕所的门上还粘着我抓来的娃娃米奇，一切都跟一年半之前一模一样，唯一改变的是老爸鬓角的白头发又多了几根，老妈的眼角又多了几条皱纹，还有“将军”好像瘦了一些。

        将军这家伙很奇怪，趴在地上一动不动，看见我回来也只是抬了抬眼皮，我的心里微微有些失落，这将军怎么好像不认识我了？

        房间里的暖气给的很足，气温接近三十度，北方人习惯冬天从室外走进屋子中之后，直接脱掉身上多余的衣服，我也不例外。
','        双手捧着热水杯暖暖手之后，我顺势就脱掉了身上的西装外套，只穿着里面的一件白色的衬衫。我平时的穿着打扮很普通，因为我要经常出入实验室，不可能会穿一些比较新潮，或者说比较扎眼的衣服，那样不方便进行试验。

        这次穿的西装也是我当时大学毕业的时候去宝拉公司面试穿的，因为公司负责人和我说，我这次出国参与科研实验是代表了我国总公司的颜面，所以必须要衣着得体，所以这才把这套陈年西装给穿在了身上。

        趁着老妈炒菜的这段时间，老爸悄无声息的坐在了我身边，随手打开了电视，接着从茶几上拿起一盒芙蓉王，抽出来两只，一只递到我面前，另一只则挂在了自己的嘴上。

        我犹豫了一下，最后还是拿起打火机点燃香烟，在这个七十平米的小屋子内，渐渐升腾起大量的烟雾，惹得正在炒菜的老妈一阵的牢骚。

        我和老爹相互对视一眼，不由得同时会心的苦笑着，乖乖的掐灭剩下的半根烟。

        从小到大，老妈都是一个很强势的人，在家庭里的地位很高，根本就不像是七十年代走过来的女人，更像是现在新时代的女青年。老妈这一辈子也没做什么工作，标准的家庭妇女，家里的洗洗涮涮，接送我上下学，全都是由我老妈一个人完成的，这一晃就是几十年，我由衷的感谢她。

        老爸则是一个地地道道的农民，没有什么文化。在我上大学之前，咱们一家三口都是住在奉天农村老家的平房里，后来赶上了拆迁，我们家分得一套房子和几百万的补偿款，这才脱离了这个小村庄，继而生活在城市里。老爸也忙活一辈子了，现在提前步入了老年人的生活，平时早上去公园遛遛弯儿，顺便帮老妈把菜买了，在家里喝喝茶，看看电视，日子过得还算是悠闲。

        不过有一点，我和老爸对于我的工作方面意见不是很统一，甚至反对我从事这门工作，为此，我临出国出差之前还与老爸大吵一架，最后闹得不欢而散。

        “爸，你这衣服还挺好看的，我妈给你挑的啊？”

        我主动说话了，父子哪有隔夜仇，而且我还是那个当儿子的。伸手指了指挂在房间门口处衣架上的羽绒服，阿迪达斯凡哥同款。

        “那可不，你妈给我挑的，这败家娘们儿，这破羽绒服三千多，三千多我都能买几十只鹅自己做个羽绒服了！”

        老爸一边砸吧嘴一边絮叨。显然因为我的主动开口，他也变得不再那么拘谨。

        “个糟老头子！说啥呢！啊？！”

        我明显能从老爸的脸上看到肉疼的感觉，他刚才实在是太激动了，声音很大，不巧被正在炒菜的老妈给听见了，老妈一下子就火了，扔下炒菜的铁勺，直奔老爸面前，老爸一惊，不由得向沙发后面靠了靠。

        “好了好了，妈，赶紧炒菜吧，要不都糊了，爸，你说啥呢，妈不也是怕你冻着吗？价钱在那摆着呢，质量肯定没问题，你就别心疼了。”

        我赶紧打圆场，因为我深知，这俩人一旦干起来那可不是三言两语能够解决的，甚至十天半个月都谁也不搭理谁，我可不想夹在他俩中间。

        老妈听到我说话，脸色渐渐缓和下来，不过双眼依旧死盯着老爸。

        “今天儿子回来了，我不跟你计较，要不然咱俩没完！”说完，跑到厨房继续炒菜去了。

        “个败家娘们儿！要不是儿子回来了，我肯定好好跟你说道说道！”

        看见老妈走了，老爸嘟嘟囔囔小声嘀咕着。然后又看了看我。

        “儿子，国外干活累不累啊？”

        我是哭笑不得，这老爸的态度转变的也太快了，我刚想说话，却看见电视上正在播放着一条国际快讯

        “2100年，十二月二十六日凌晨三点二十六分，位于美国的宝拉公司分公司，实验大楼第十六层实验室内发生巨大的爆炸。具体原因正在调差中，据了解，爆炸发生时实验楼内部没有人在工作，目前尚无人员伤亡，...”

        画面上的位置就是我所参与研发的实验大楼，整个宝拉公司分部已经被黄色的警戒线围绕起来，消防队员及一会人员全都在做着各自的工作，十六楼的实验室已经是一片狼藉，各种试验器具毁于一旦，公司一楼的地面上只有一些爆炸产生的碎屑，其他的一概没有。

        我不由得脸色一沉，这根本就是掩藏了事实真相，真实情况没有被报道出来，但是宝拉公司到底在掩盖着些什么呢？是害怕普通群众看到那些基因突变的人类产生恐慌？还是说另有别的目的？一时间，我陷入了沉思。

        “兔崽子！这不是你去出差那个地方吗？这是咋回事啊？”

        老爸同样看到了电视里播报的那条新闻，神情非常紧张的问向我。我一时间没回过神来，老爸伸手拍了拍我肩膀，我这才反应过来。

        我想了想之后，还是决定不要让他们担心好了，毕竟我现在也没什么危险，何必再让父母为我担惊受怕呢？何况老爸本身就不愿意我做这项工作。

        “啊，没事，就是当时有个酒鬼值班，但是他喝多了，实验室里面的东西温度过高爆炸了，没事儿，电视上不是说了吗，没有人员伤亡。”

        “我早就说不让你干这活，不让你干这活，你说你这工作也太危险了吧？这整不好下回还得爆炸！这回你听我的，赶紧换个工作！”

        “爸！你这是说啥呢？怎么的就非得换工作啊？我愿意干啥就干啥呗，这玩意你也管啊？

        “你个瘪犊子....”

        “糟老头子！，过来端菜！”
','       眼看着我和老爸就要针锋相对，老妈那边的饭很适时的做好了。

        老爸悻悻的看了老妈一眼，又狠狠地瞪了我一眼，极其不情愿的站起身端菜去了。我则是长长呼出几口气，对老爸这个什么事都要管的脾气也真是够够的。

        一道道菜被老爸老妈端上餐桌，红烧肉，肉末茄子，香辣虾，猪肉炖酸菜，都是我爱吃的。不过我却没有丝毫的胃口，老爸对我的工作有偏见就算了，就连我自己的公司现在都出了很大的问题，这如何让我吃得下饭呢？不过碍于老妈的热情，我还是硬生生往肚子里塞了两碗大米饭。

        “兔崽子，爸前两天托你王阿姨给你找了份工作，相当稳定了...”

        “行了行了，吃饭就别说这事儿了，吃完了再说。”

        老爸在饭桌上还想继续刚才的话题，但是被老妈直接打断，也算是救了我一命。

        期间，我给“将军”好几次他最喜欢吃的鸡肉，它却连头都没抬，我有些疑惑，按理来说，杜宾这种狗即使是给生肉都会狼吞虎咽，更不要说烹饪过的鸡腿了，我转头望向老妈，目光中带着询问。

        老妈明白我是什么意思，一边给我夹菜一边跟我解释。

        “这两天将军都这样，可能是前天晚上喂肉给喂多了，吃伤着了吧？”

        听到老妈的解释，我的眉头微微皱了起来。

        “看看它这两天能不能好转，如果不行的话，还真得去看兽医，不能耽误了...”

        吃完晚饭，回到沙发上点燃一支烟，目光有些担心的望着将军，心里想着，它可别出什么事。

        不大一会儿，老妈端着切好的水果，放到沙发前的茶几上，我是真的吃不下了，但是看着老妈热切的眼神，我只好往嘴里又塞了两块苹果，咱们一家人接着闲聊。

        说是闲聊，但是比相亲都难，老爸又开始他那套说辞，搞得我心情焦躁无比。

        “儿子，爸这回和你好好说，你必须得听我的，你现在这工作太危险了，你王阿姨给你找这个多好啊，朝九晚五，节假日正常休息，五险一金样样齐全...”

        “爸！别劝我换工作了行不行啊？我喜欢我现在的工作，做别的我根本就做不下去！”

        “你个瘪犊子玩意！你跟谁吵吵呢？！”

        “行了行了，你俩别吵了，都消消气，儿子，听话，老头子，你给我坐下！”

        “爸妈，时间不早了，我也得回家收拾收拾屋子，将军我先带回去，也能随时照顾照顾它。”

        我站起身，不想在这里继续待下去，来到将军身边给它拴上绳子，二话不说的就想离开这里。

        “儿子，你穿这么点儿多冷啊？把这个穿上。”

        老妈见我去意已决，直接来到门口拿起给老爸买的那件羽绒服，我停顿一下还是选择穿上它。生气归生气，可是外面的气温不会惯我毛病。

        老爸吹胡子瞪眼睛想要阻止我，不过碍于老妈在身边，愣是没敢说一个字。',10015,10045);

		insert into ds_book values(null,10046,'我出生的那个时候，也不知道父母是不是玄幻小说什么的看多了，居然给我取了个华三清的名字，因为这个名字，从小到大没少被人调侃，说我是一汽的孩子，因为一“汽”化三清。

    就连老师点我名字的时候也会忍不住想笑，我能怎么办，我也很绝望啊，本以为自己会平平淡淡的过这一辈子，可是万万没想到，因为一次旅行，改变了我的一生。

    在我考大学的时候，想报口腔专业，可是家里不让，非让我学律师专业，他们对我动之以情晓之以理，甚至要冻结我的信用卡。

    最后在他们威逼利诱、软磨硬泡之下，我还是坚持报了鹤城医学院的口腔医学专业，因为热爱口腔医学，所以我现在只能带着几百块钱去上大学。

    报道的时候我被分到了二楼的一个六人寝室，对面是一个卫生间，我按照钥匙上的门牌号找到了我的寝室――226，总的来说这个寝室风水还不错，推开门就能看见对面的厕所。

    大学的寝室也不大，也就十几个平米，墙上画着各种乱七八糟的东西，我估计是上一个住寝室的人干的，里面摆着三张上下铺的床，外加一个不知道用了多久曾经是白色的桌子。

    一推开门，我就看见一个身材魁梧的男孩正在清理墙上的涂鸦，应该就是我的室友了，男孩的脸长长的，带着一丝坚毅，也有一些年代感，好吧，说白了就是长的有点着急。

    大叔――哦是男孩身旁的地上放着一个破布袋子，也不知道里面装着什么宝贝，男孩看见我进来，只是冲着我点了点头，却是一句话也没说，看着很是高冷，就又转身继续清理墙上的东西。

    我按着床号找到了自己的床位，靠门下铺的那个床位就是我的，在我床位边的墙上却很奇怪，没有任何的涂鸦在身边，墙面比屋子里其他地方要白，估计应该是之前贴过壁纸一类的东西吧。

    我把行李放好，然后就打算去帮那个男孩清理墙上的涂鸦，男孩看了看我，没有说什么，我们用了一下午的时间，才将墙上的涂鸦清理干净，顺便又把整个寝室收拾了一遍，整个过程他都一声不吭。
','    直到收拾完了寝室，男孩才开口说:“我是严兴，你就是华三清吧。”我微微一愣:“你怎么知道的？”严兴伸手向我大腿上摸去，我条件反射的向后退了一步:“你要干嘛啊？我可是正经人！”

    他见状眉头一皱，却往前又探了一步，从我的口袋里摸出了一张车票，我以为是车票露出来我的名字被他看见了，“兄弟，你的床位上有你名字的。”谁知道这货说了这么一句话，我一脸郁闷:“那你拿我车票干嘛？”

    严兴没有回答我，反倒开始问我:“你是从翋城来的？”脸色却不知道为什么，开始变得有些不正常，“对啊，今天早上刚到的，怎么了？”我一脸疑惑的问道。

    严兴看了看我，缓缓的点上一支烟，又递给我一支软中华，我从来不吸烟，又不好拒绝他，就把烟拿着把玩，他吐了一口烟圈，又叹了口气，然后给我讲述了一个离奇的故事。

    那是两年前的一个夏天，严兴的叔叔严守业带着他开车出去玩，谁知道车子开到翋城的时候出了点问题，熄火了，严守业叫了拖车，车子被拖去修理了。

    叔侄两人就打算在翋城先住上一晚，等第二天车子修好了再出发，可就是这一晚，发生了让严兴到现在想想还忍不住发抖的事情。

    他们两个人找了家宾馆，把背包什么的都放进去，本来他们两个人就是出来玩的，就打算在翋城逛逛，翋城不算太大，但是也不小，那天正好是我们这特有的节日云霄节，他们从宾馆出来的时候，正好赶上了翋城特有的堂会开始。

    堂会也叫祭云神，祭云是我们这里的传统，传说最早是祖先为了祈求风调雨顺祭祀云神，以保未来一年庄稼能有好的收成。

    所谓的祭云神，不像祭祀别的一样，摆点供品磕几个头意思意思就完了，传说中云神食万物之灵气，所以祭云神要祭气，可是气这个东西不像猪羊一样有形，可以摆放。

    于是他们就想出来一种特殊的方法将气保存起来，具体的方法现在就不得而知了，毕竟也只是传说而已。

    祭云神也随着时间的流逝慢慢的演变成了如今的堂会，那些唱戏的沿街演奏云神有关的戏曲，路边随处可见卖小吃的小贩，热热闹闹的。

    严守业二人第一次逛堂会，都觉得新奇，不知不觉忘记了时间，也不知道自己在哪里，总觉得到处都是叫卖声和戏曲声，等到他们想回宾馆的时候发现根本没法打到车。

    到处都是人，哪还有出租车开的空隙，宾馆一时半会是回不去了，估计等堂会散了就有出租车了，两人商量了一下，决定先逛着，想等堂会散了再说。

    我听了严兴的话不由得摇头，堂会一般是从下午两点左右开始，到第二天早上三点点左右才会结束，他们俩不知道啊，还以为没多久堂会就会结束。

    两个人越走越远，不知过了多久，严兴突然发现街上的人越来越少，到最后居然一个人都没有了，自己和叔叔居然走到了一座山脚下，我听到这里，不由得有了疑问，翋城什么时候有的山？

    “严兴，我在翋城怎么也有快二十年了，没听说过有山啊！”看着我惊讶的表情，严兴冷哼了一声，没理我，又继续说道。
','    “虽然那时候是晚上，但是那座山的山顶却隐隐发光，我和叔叔都以为是山上的景点呢，就沿着小路向山里走去，直到走到了山脚下都没见到一个人影。只看见一个方形的山洞，大着胆子和我叔叔走了进去，刚一进山洞，墙上的火把突然自己点燃了，吓了我俩一跳，气氛一下子紧张了起来。”

    我听他说的这么邪乎，心里多少有点好奇，火把是怎么自己点燃的呢？“后来所有的火把又都自己熄灭了，我离洞口近，转身就想往外边跑，谁知那洞口像有一层玻璃一样，根本跑不出去，黑暗中恍惚听见了几声凄厉的哀嚎，紧接着就是叔叔说了一句快走，然后我就失去了知觉。”

    严兴说到这里，低下了头，紧紧的咬着嘴唇，泪水也在眼眶中打转，我隐隐约约感觉后来应该是发生了什么不好的事情，就没有催促他，过了好一会，他才开口道:“等我再次睁开眼睛的时候，就已经躺在了医院里面，叔叔躺在旁边的床上，被纱布包的和木乃伊一样，医生说他醒过来的希望很渺茫。”

    “而我在那一天晚上，身上也仿佛被无数片刀子划过一样，被发现的时候浑身是血，要不是有几个酒鬼喝多了跑到这里发现了我们，可能你现在就见不到我了。”我听到这不禁一愣，问了一句：“那你们后来怎么样了？”',10016,10046);
insert into ds_book values(null,10047,' 严兴没有答话，而是一把扯开了自己的衣服，一看见衣服里面的皮肤，我就觉得头皮一阵发麻，我的天！原本应该好好的皮肤上赫然出现了一道道刀疤，像恶心的蛆虫一样趴在上面。

    严兴又吸了一大口烟，才开口说：“后来我才知道，那里根本没有什么山，而是一块无主的荒地，那一晚就像是梦一般，我们差点给人在梦里杀了，就算死也不知道怎么死的！”严兴咬牙切齿的说道。

    不知道为什么，听完了严兴的讲述，我突然想起了那个魏徵梦中斩泾河龙王的传说，传说贞观时期，泾河龙王化作一秀士与术士袁守城打赌。

    为了赢得此赌，在接受玉帝圣旨之后，故意把下雨的时机和雨点数改变了，结果却被发现。后来龙王得袁守城指点，行刑者是魏徵，便去求李世民的帮助。

    李世民答应龙王保他一命，便召魏徵进宫陪伴，想稳住魏徵，岂料魏徵打瞌睡，在梦中还是挥剑斩了龙王。

    不过两者又有不同，严兴叔侄是在自己的梦中被伤，而泾河龙王是清醒的时候被人斩杀的。

    还有，严兴说的这些事情太离奇了，又有几分真几分假呢？亦或是都是假的，都是他幻想出来的，没经历过的事，我向来是不信的。

    听严兴讲完了故事，我看了一眼手机，已经5点多了，就拍了拍他的肩膀:“兄弟，别想了，都过去了，走，咱俩去吃点东西吧。”严兴没有接话。

    过了一会，突然一脸严肃的问我:“翋城真的没有山吗？”我愣了一下，这个问题我之前就和他说过啊。

    “没有啊，我从小到大都没听过翋城有山啊，你那时候绝对是在做梦，走吧，别想太多了。”严兴叹了口气说走吧，锁了门，我们俩就往外边走。
','    学校虽然不怎么样，但是附近的小饭馆却不少，我们俩找了一个叫金太阳烧烤的地方，点了烤串和啤酒。

    第一天认识，打算好好喝一顿，毕竟喝酒最容易拉进两个人的感情，几瓶啤酒下肚，我们俩就开始无话不谈了。

    这货和我一样，学习不怎么好，自从出了他叔叔那档事，更是对学习不上心了，不过他始终想弄明白那天晚上到底发生了什么。

    而我们现在的这个医学院，就是离翋城最近的大学，所以他就考到了这里，就连来这里他的分都不够，还是家里找人花钱才来的。

    第二天早上醒来，我发现自己躺在床上，昨晚应该是严兴送我回来的，喝了太多酒头现在特别疼，寝室里不知什么时候多了几个人在聊天。

    我仔细打量了他们一下，一共三个人，坐在凳子上的是一个穿着黑衬衫戴着大墨镜的光头，眼睛因为戴墨镜看不见，鼻子略高挺，嘴倒是不小，扯着嗓子在那和别人吹牛，逗得大家都哈哈大笑。

    光头引起我注意的是他抬手的时候从袖口露出来的纹身，纹身是一个很小的像巠字的纹身，现在的人纹身很正常，比如纹条龙啊，纹女票名字什么的。

    可是第一次见到纹个生僻字上去的，而且好像和正常的纹身还不太一样，似乎是伤疤一样，就是那种直接拿刀刻出来这个字，然后伤口好了形成的疤。

    其余的两个人长的都差不多，像是从一个模子里刻出来的一样，尖尖的鼻子扁扁的嘴，一双眼睛滴溜溜的直转，看的出来两个人都十分精明，应该是兄弟。

    我坐了起来开口笑着说道:“你们聊什么这么热闹。”光头冲我一笑:“嘿嘿，我给他们讲我当年在号子里碰见的邪乎事儿呢。”

    号子？这货难不成是犯过事，要不怎么能进号子呢，我笑着说道：“可惜了，我刚才睡着了没听到。”“也没什么，就是那年进来几个盗墓贼。”

    光头顿了顿继续说道：“你猜怎么进来的，是他们自己报的警，说有个浑身是血的穿红肚兜的小孩子围在他们身边，一直瞪着大眼珠子看着他们，警察一询问，开始这几个人死活不提盗墓的事。”

    “后来可能被那个小孩子折磨疯了吧，说出了盗墓的事，才被关起来的，关了没几天就死狱里了。”“怎么死的？”我好奇的问。

    “不知道，谁也不知道怎么死的，就是身上莫名其妙多了好多的刀口，致命伤是脖子上的一处刀伤，在那个时候，监狱里还没安监控呢，谁也不知道怎么回事，真他娘的邪乎。”光头啐了一口唾沫，似乎是想去去邪气。

    我看了看严兴，和他一样陷入了沉思，这个故事怎么和严兴的故事那么像，全身莫名其妙出现的刀口，和至今躺在医院昏迷不醒的严守业。
','    我又问了光头一句:“你那个监狱是哪的？”“就是汤驿啊，小地方，你可能没听说过都，我家就是那里的，怎么了？”光头摸着光头奇怪的说道。

    “确实没听过，没事，我就是问问。”我讪讪的说，“那个墓在哪？”严兴想了想突然对着光头问道。

    “这就不清楚了，据说是在我们那的一座山上，可是吧，我们那里根本就没有山，你说有意思吧，要不是他们都最后离奇的死了，我他娘的都怀疑他们是神经病！”光头啐了口唾沫说道。

    我发现严兴的表情突然难看了起来，没有山，却又都看见了山，我突然在想，会不会那几个盗墓贼被人催眠了，一直都没从梦里走出来？

    所以才会看见所谓的小孩，可是身上的刀口又怎么解释，我向来不相信鬼魂一说，不过如果他俩说的故事都是真的又该怎么解释呢。

    “好了好了，咱们就不说这些了。”一旁的两兄弟中的一个开口说道，“是啊是啊，怪吓人的！我们不如互相介绍一下吧。”另一个道。

    “好，那就从我开始吧，我叫严兴是从小地方过来的，平时研究研究风水相术什么的，图个乐呵就是！”严兴笑吟吟的说。

    两兄弟接下来也做了介绍，他们俩哥哥叫王广文，弟弟叫王广武，家里是温州做生意的，两兄弟平时也都靠瞳色来区分，蓝瞳的是哥哥，紫瞳的是弟弟。

    王氏兄弟介绍完之后，光头随后也大大咧咧的说道：“我是乔四，我这个人平时就喜欢交朋友，兄弟们以后要是遇到什么事都可以过来找我。”

    我拍了一把光头的肩膀，笑呵呵的说：“好说好说，一会等咱们聊完出去喝一顿，哈哈！我是华三清，喜欢看心理学有关的书，有机会一起交流！”

    我们几个又聊了一会，眼看到了中午，光头提议不如一起出去吃点什么，我虽然头还有点疼，不过还是觉得第一次见面，不好拒绝，就和他们一块出去吃饭了。我们五个人从中午一直喝到了晚上10点。

    光头原来是他们那监狱典狱长的儿子，所以才知道那么多监狱的事，酒这个东西最能拉近感情，一天喝下来我们几乎无话不谈。

    严兴红着眼睛说要去光头那的监狱看看，光头大着舌头一口答应了:“没问题，等有时间，我带哥几个一起去看看。”“好兄弟，来，干！”严兴大大咧咧的又敬了光头一杯，又喝了好一会，我们才互相搀扶回了宿舍。',10016,10047);
insert into ds_book values(null,10048,' 离正式开学还有一段时间，我们几个商量了一下，一致决定与其在学校待着，不如利用这几天的时间去光头的老家汤驿玩玩。

    打定了主意买好了火车票，我们就带了一些吃的就踏上了火车，到汤翊的路程只有四个小时，车里面根本没有几个人，我们在火车上打了一路牌，火车很快就到站了。

    一下火车，我们就看见汤驿站只有几个矮旧的小黄房，这里果然如光头所说是个小站，我们几个一出火车站，就看见门口有一堆给旅店出租车拉客的人。

    “住店吗？给你们便宜点。”一个五十多岁的大妈对我们说，光头见状连忙摆了摆手，带着我们穿过人群走了出来，谁知道这些小旅店安不安全呢，谁敢随便去那些地方住啊。

    我们跟着光头，五个人一辆车坐不下，没办法，我们只能打了两辆出租车，先去光头家的监狱看看去，很快我们就来到了汤驿唯一的一个监狱――虹桥监狱。

    在监狱门口是两个持枪的哨兵，光头冲他们打了个招呼，走上前去一人递了一支烟，然后又和他们聊了几句，很顺利的就把我们带进了监狱。

    监狱里分了好几个区，一进宫的在一区，二进宫的又在一起，重刑犯在一个区，死刑犯又在另一个区，光头的老爸还是有两把刷子的，整个监狱被他管的井井有条，监狱里有一个人让我不由得多看了几眼。

    那是一个眉清目秀的青年，站在一个角落里面，靠着墙休息着，显然已经熟睡，而其他人都是躺在地上的破垫子上睡觉。
','    我的祖上据说世代都是渡仙人，所谓渡仙人就是看守云神墓的人，同时还要负责每年的云祭等与云神有关的大小事务。

    在古代比较出色的渡仙人还可以用秘法让已死之人飞升成仙，这就是渡仙人名号的由来，不过渡仙人的本领传到我这里早就所剩无几了。

    虽然我的本领没有祖上那些大能厉害，但是我却可以看到许多常人看不到的东西，比如那个青年身上飘忽不定的煞气，这种煞气极为浓烈，却又不会伤害这个青年半毫，也正是因为这个原因我才会注意起这个看起来毫不起眼的青年来。

    “四哥，我想问一句，那边那个人是怎么进来的？”我好奇的问了光头一句，光头又转身问站一旁的狱警小五。

    “他啊，因为把人打进了医院，所以被抓进来先关着，等双方调解呢。”小五对我说道。

    “这种一般等调解结果出来了之后，或是赔点钱放出来，或是再关上一段时间，具体的就要看被打的人怎么说了。”光头补充道。

    严兴瞧了瞧那个青年，突然咦了一声，又掐着手指算了半天，这才叹了口气：“这个人现在煞气缠身，一般人按照这个情况下去，不出半日就会有性命之忧，不过我却算不出他以后的吉凶，真的是奇了怪了！”

    “他身上的煞气并非鬼怪之类附体，你当然看不出来，依我看他应该最近是接触了与血煞有关之物。”我给他解释了一句，“难道说被他打进医院的那个人已经死了？”严兴一拍脑门说道。

    “进医院的那个人就是被他打了几拳，不至于被打死啊！”一旁的狱警说道，他可是对这个被打的人了解最多的了。

    “命犯冲将，不对，他身边一定有和他有关的人命！”严兴突然坚定的说，除了我所有人都像看傻子一样的看着他笑，还真没听说过看相能看出命案来。
','    我看严兴的相术对眼前的这个青年似乎不怎么管用，便忍不住指点了他一句：“老严，你这按照男子相术来给她算，肯定是大相径庭啊！”

    “三清你这是什么意思？他一个大男人我还能按女的去看相不成？”严兴一脸不解的问道，光头他们听不懂我们俩的对话，急得直跺脚：“你们俩说什么呢，我们怎么开始听不懂了呢？”

    我转过头看了一眼那个狱警：“这个人进去之前不验身吗？”狱警听了我的话愣了一下，没有答话，转而在光头的耳边小声说了几句话。

    光头乔四听完脸色不由得变了变，突然开始打量起我来，看了半晌，他才缓缓的开口道：“不如我们去别的地方转转吧。”我们跟着他来到了一间没人的房子。

    关上了门，乔四这才把狱警刚才说的话告诉了我们：“小五刚刚和我说了，那个犯人其实是上面的人安排进来的，上面特意嘱咐不要验身，而且他有什么要求都要极力配合，估计是有什么任务吧，毕竟这里关押了很多重刑犯。”

    严兴虽然有些事情之前没有看透，不过听了光头的话，再加上我之前说过的话，他的脑袋里突然闪过了一个念头，那就是那个青年是女扮男装，所以看的相才会相差甚远。

    “是我看走眼了，三清，你这让我真的是心服口服啊，果然按照女相来看这个人，就只是有一小劫，十日之内必解。”严兴十分激动的说。“我看她的命格当属上元之命，这种命格最能逢凶化吉，极为少见。”

    严兴有些不可思议的说：“你还会看命格？我所学的相书上也只是提到过一些有关命格的记载，不过相命与相面的难度相差太多，有的人穷其一生也难以学会相命之道。”

    “命者，诡也，最为多变，所谓一花一世界，可能一片树叶就能改变一个人的命数。而且自古至今，传说中的算命大家无不遭到天谴，正所谓天机不可泄露。”严兴声音颤抖的说了一大堆。

    我点了点头，严兴说的这些在相术上确实在理，泄露天机肯定没有好果子吃，这也是历代相术大师难逃的命运，其实算命算得准的人虽然凤毛麟角，但是如果纵观历史长河来看，也是不少的。

    只是算命越准的人，越不愿意轻易说破，诸葛亮一生神机妙算，最后还是无法七星灯延续自己的性命，所有命数大家都知道一个道理，就是算得越多，以后的报应可能就越严重。

    命数其实说是定数，有时候其实也非定数，要不然怎么会有逆天改命一说，据我得到的传承所知，其实逆天改命也是命运的必然，命运其实把逆天改命也算在了命数之中，可能听起来有些难理解，简单来说，就是逆天改命也是一种命数，只不过较普通的命数要复杂的多。

    能算出别人一般的命运其实只能算小相术，能算出别人多变之后命数的人才是大能，命格体现了一个人一生大的方向。

    上元命格一直以来都是特别罕见的，能够逢凶化吉，守正辟邪，拥有这种命格的人要么大正，要么就是大邪，所谓正者愈正，邪者愈邪。

    “我也只懂一点皮毛，命格类别众多，我也只能认得其中一二，倒是你这相术是从何而来我倒是很好奇。”严兴听我这么说，点了点头：“你问我的相术啊，那我就给你讲一讲我为什么会这么痴迷相术一学吧。”',10016,10048);

insert into ds_book values(null,10049,'林岚高中一栋教学楼楼顶，躺着一个穿着蓝白相间校服的少年。少年为了遮阳，将一本《吕氏春秋》的盗版书摊开铺在脸上，他呼吸着纸上劣质油墨的味道，耳畔不时传来朗朗读书声。/p

    “无聊！无趣！”/p

    空无一人的天台上传来少年的抱怨，他不再假寐，而是将脸上的盗版书丢到一边，然后望着万里无云、碧空如洗的天幕发呆。/p

    “这么无趣的日子什么时候才是个头啊”/p

    “嗒嗒嗒”/p

    细小的脚步声逐渐变响，接着一片阴影盖在了少年的脸上。/p

    “什么东西？！”/p

    少年立即翻滚数圈，远离了阴影才敢抬头。/p

    他面前站着一个衣衫褴露，鬓发与髯须都已花白了的老头。/p

    那老头面带微笑，从身后取出三样东西道：“夏日沙滩秀、店长推荐系列大合集、最新动漫光碟，是你掉的吗？”/p

    少年视线扫过三样宝贝的封面，会心一笑，站直身体拍去衣服上的灰尘，大大方方道：“老先生，这拾金不昧的精神真是令小子佩服。”/p

    那老头听后嘿嘿一笑，将三样宝贝抛了过来。/p

    少年手脚并用，稳妥接住，正打算藏入衣服中，却瞥见宝贝外的封面松动，露出了它们的真面目！/p

    “五年高考三年模拟真题集、衡水题库大合集、黄冈教学光碟”/p

    “老头子，人与人之间的信任呢？！”少年将宝贝丢在一旁，准备越过老头子返回教室。/p
','    老头子却突然说道：“你不是很无聊吗？我知道一个很有意思的地方，可以带你去。”/p

    少年听完这话拔腿就跑，一个古怪流浪汉流窜到学校，还要带你去有意思的地方，有点脑子的人都知道这是圈套。只是现在人贩子的业务范围已经拓展到买卖高中生了吗？/p

    真是与时俱进/p

    “你跑不掉的，这是命中注定，必然会发生的事。”/p

    老头声若洪钟，与他年迈的外形完全不符。/p

    少年边跑边回道：“我是学习马克思主义，列宁思想，根正苗红的社会主义接班人，你那套神棍论我是不会信的！”/p

    “咚！”/p

    少年离通道只有一步之遥时，他的额头狠狠地撞在了一堵看不见，但摸得着的空气墙上。/p

    “人贩子的科技，恐怖如斯！”/p

    少年手臂像是汽车雨刷，在空气墙上来回摆动，试图寻找能通往楼道的缺口。/p

    老头不容置喙的声音传来：“别白费劲了，三分钟之后，我送你离开”。/p

    少年认命般地转过身，向神秘老头问道：“你要送我去哪？”/p

    “周御书院。”/p

    “书院？！”/p

    少年寒毛倒立，想起了雷电法王杨教授创立的那种专治青少年疑难杂症的集中营。/p

    “噗通！”/p

    少年吓得两腿一软，跪在地上，他虽然觉得日常生活无聊，但也接受不了充电宝那样时不时挨电的生活。/p

    一老一少沉默了两分钟后，老的说：“你不必害怕，我不会害你的。”/p

    小的带着哭腔回道：“有坏人会说自己是坏人吗？”/p

    老头子笑了笑，走到围栏边，往学校dog男女横行的操场望去，问道：“临走之前，不再看看，留个念想？”/p

    少年装出潇洒的模样道：“我上完厕所，从不回头，更不可能怀念。”/p

    老头子边笑边摇头，感叹自己年少轻狂。/p

    /p

    一分钟后，大概是老头子的技能cd冷却好了，他脚踏七步，步步生莲。那些莲花的花瓣迅速绽放，又迅速枯萎，只留下七支颜色各异的莲蓬。/p

    老头子微抬头，45°仰望天空，两手好似患了帕金森一般地捏着法诀，嘴上还念念有词，但少年听不清楚，只瞧见那七色莲蓬化作光团冲向天幕，留下的光华形成了一道彩虹。/p
','    少年张着嘴，教科书版的目瞪口呆，心道：“这特效没有两三百万怕是做不出来的吧？”/p

    “走！”/p

    形容枯槁的老头子轻而易举地提起少年，并一脚蹬上彩虹。/p

    彩虹一震，随即开始倒卷，将一老一少拉向天幕。/p

    少年死死攥住老头的破旧衣裳，他第一次上天，难免有些紧张，向老头子问道：“你买保险了吗？”。/p

    老头子不咸不淡地回道：“不会摔死你的。”/p

    “我们到底要去哪？还有你是谁？”少年试图提问来分散自己的注意力，毕竟那半透明的彩虹下可是万万丈深渊。/p

    “不能说的秘密。”/p

    “”/p

    二人不知飞行了多久，却好像丝毫没有接近天幕，而彩虹上一老一少皆不语，耳畔边只余下罡风猎猎声。/p

    一阵很长的沉默后，老头主动搭话道：“你为什么不反抗？”/p

    少年白眼一翻回道：“您老都有这腾云驾雾的本事，捏死我不比喝水难。我反抗，有用吗？”/p

    “那你为什么对我腾云驾雾的本事一点也不惊讶？”/p

    “惊讶？为什么？有很多东西是科学解释不了的，但这并不意味着它不存在。就算你说你是未来人我也信，毕竟人类科技发展下去，时光机应该也是迟早要出现的。”/p

    这时老头子突然转过身，一双深邃的黑瞳直勾勾的盯着少年，问道：“如果我现在给你选择的机会，一是选择我立刻送你回去，当做什么事都没发生过，二就是随我入书院，并完成我给你的要求，你选哪个？”/p

    少年思索一番后，反问道：“说话算话？”/p

    老头子回道：“我从不强迫自己。”/p

    少年大着胆子瞧了瞧彩虹下指甲盖大小的建筑，坚定道：“反正这里没有牵挂我和我牵挂的人，离开就离开！”/p

    “是吗？”老头子深深望了一眼低头的少年，眼神里悲悯交织，情绪莫名。/p',10017,10049);
	insert into ds_book values(null,10050,' “啵”/p

    像是水球刺破的声音，少年能感觉到四面八方传来的阻力，而随着这股阻力的出现，老头子施法的动作变大，开始手足舞蹈起来。/p

    “天地与我并生，万物与我合一。”老头子朗声喊道，其音在天地间回荡。/p

    “开！”天幕上传来一音，/p

    “开！”地府亦应和。/p

    得天地许可后，老头子停下动作，不知从哪取来一套灰白直?递给少年，并说道：“从今日起，汝名——庄休”/p

    少年面色古怪道：“我本来就叫庄休啊。”/p

    老头子道：“咳咳，反正从今天起，你就是这片世界的一份子了。”/p

    庄休又给了老头子一顿白眼，正要开口说话时，脑袋上传来一阵搔痒。他抬起手，却浑身僵住，惊恐得望着垂挂在指尖的黑发。/p

    这些黑发，不是别人的，而是庄休自己脑袋上的。/p

    “这是！！！”/p

    老头子解释道：“大惊小怪！在春秋，人们认为身体发肤，受之父母，不可轻易损毁，你要是顶个寸头，人家书院仪容仪表这一关，你就过不去！”/p

    “”/p

    黑发生长得很快，息的时间便已长发及腰。庄休好奇得将五指插入如墨如瀑的发丝中，从发根捋至发梢，途中顺畅无比，没有分叉、打结的现象。/p

    “这丝滑程度，都不用duang、duang得加特技，就可以去拍洗发水广告了。”/p

    老头子突然提醒道：“换上衣服，一瓶冰红茶的时间，我们就要着陆了！”/p

    “嗯！”/p

    庄休点点头回应，虽然他不知道一瓶冰红茶是什么古怪的时间计量单位，但看彩虹下渐渐变大的建筑，就知道快要落地了。他直接披上灰白直?，正琢磨着如何系腰带时，老头子又将一条素色四角裤丢在他的胸前：“你身上的全部脱下，海绵宝宝小裤裤也不准留！”/p

    庄休先是一惊，随即脸不红心不跳地换好衣裳。/p

    彩虹飞驰片刻后，老头子喊道：“到了！”/p

    庄休往脚下望去，只见黑压压一片的报名新生，这些新生年纪与自己相仿，男女头上都盘着发髻，脸上还带着几抹紧张，只是他们各自交谈，好似看不见头顶的彩虹。/p

    庄休问道：“他们看不见我们？”/p

    老头子回道：“不是随随便便什么人都能瞧见我们的。”/p

    老头子四下搜寻一番后，找到一个靠近校门的位置悬空停下，朝庄休说道：“先与你说说这片世界，免得露出马脚。它与你以前学过的历史书上的春秋时期有些类似，却又大不相同。这里没有国家，只有学校。分别为：/p

    周之御书院；/p
','    秦之招贤馆；/p

    齐之稷下学宫；/p

    燕之太学府；/p

    楚之翰林舍；/p

    魏之星辰学殿；/p

    赵之百草百~万#^^小!说；/p

    韩之昭阳学堂。/p

    这八所学校是春秋校盟的常任理事，此外还有许多小学校，就不一一列举了。”/p

    “春秋！”/p

    庄休听完老头子的介绍后眼里爆出前所未有的精芒，要知道华夏历史上最为人津津乐道的就是这段时期。它是原创文化的巅峰年代，许多耳熟能详的成语都出自这个时期。如：纸上谈兵、买椟还珠、卧薪尝胆、亡羊补牢等等，实在数不甚数！/p

    最最重要的是，春秋时期独有的百家争鸣。各家文化、思想互相摩擦出的火花照耀了后世几千年，影响巨大又深远！/p

    “儒家圣人，孔子、孟子；道家老子、庄子；法家韩非、商鞅；墨家墨翟，这些人都在吗？！”庄休兴奋，再没有什么能比与这些先贤共处一世而令人开心的事了。/p

    老头子面色古怪道：“你说的，这些人都有，诸子百家一家不落，只是时间轴与史书上完全不同。比如史书上，孟子是孔子作古百年之后才出生的，但在这里，他们二人却已经作为儒家辅导班的代言人、创始人生活好些年头了。”/p

    “等等！”/p

    庄休听到了很奇怪的字眼，他又重复了一遍：“辅导班？”/p

    老头子笑着点点头道：“对，就是辅导班，春秋国家变成了春秋学院，而你认知的诸子百家也入乡随俗，开起了辅导班。比较有名的就是儒家精英辅导班、道家天师辅导班、墨家工程师辅导班，法家律师辅导班蓝翔等等。”/p

    庄休皱眉，槽点和疑点齐头并进，想了许久才沉吟“那传说中的七国争霸怎么办？学生互殴，打群架？这样这太儿戏了？”/p

    老头子回道：“动手动脚的是野蛮人，这里争霸靠的是考试，但这个问题对你来说还太早了，等你入学一段时间后，自然而然就知道了。”/p

    老头子继续介绍道：“这片春秋，颇为玄幻，飞天遁地少数人才能做到，但飞檐走壁，你愿意的话，花些功夫就能练成。”/p

    庄休闻言眉头上扬，喜出望外，光是能与圣贤同世，他已经心满意足了，现在竟然还能像玄幻小说一般修炼，这是打开冰红茶，发现瓶盖上刻着再来一箱时才能有的喜悦啊！/p

    庄休眼睛一扫暮气，他望着老头子道：“春秋修的是啥？法力、魂力、斗气、念力？”/p

    老头子干咳一声，神秘说道：“你有没有听说过一句话，叫做——知识就是力量。”/p

    “”/p

    庄休眼中的光芒渐渐暗了下来，有些失望道：“是不是像考状元一样？官场沉浮？”/p

    老头子摇着头回道：“你先通过周御书院的招生考核，如果连这都过不了，我只能送你回原来的世界。”/p

    庄休沉吟一阵后继续问道：“那如果我过了，是不是就不用回去那个无聊的世界，还能在这个世界见到名扬上下五千年的诸位圣贤大能了？”/p

    老头子听后，似笑非笑道：“不知天高地厚的小子，那些圣贤是时间长河中顶尖的存在，是你想见就能见到的？也不掂掂自己的斤两。”/p

    庄休被嘲讽，却没有气馁，这神秘老头子没有完全回绝，就说明还是有办法见到那些圣贤的，于是他问道：“怎样才可以见到他们？”/p

    老头子一副为难的样子道：“你还不知道这里的修为境界如何划分，我就举个你听得懂的比方吧。你进入周御书院最顶尖的甲等班级，并成为班级第一，你才有可能见到儒家三、四把手；在八校联考夺得第一，你就能见到孔、孟这样的圣贤了；等你考入大学，有点贡献后，才有希望接触到那些隐世圣贤。”/p

    老头子拍了拍庄休的肩膀道：“任重而道远啊，现在你小子还敢夸下海口，想见这，见那的？”/p
','    庄休傲气道：“说了半天，就是次次考试都得第一呗，我从小学一年级到现在就不知道，考第二是什么样的滋味！”/p

    老头子无奈摇头，大手一挥，召来一阵狂风，将彩虹下的报名新生吹得七倒八歪。/p

    趁着这番混乱，老头子一把推下庄休，让他混入了人群，并用只有庄休一人能听到的声音道：“八荒统一日，你我再见时。”/p

    庄休倒在地上，手伸向彩虹，有一句话他不得不问出：“为什么你给我的感觉那么熟悉？”/p

    老头子没有回答，只是叹了口气，然后，/p

    彩虹、老头子、狂风三样东西渐渐消散，好似从未出现过/p',10017,10050);
	insert into ds_book values(null,10051,'惠施将挂在头上的裤褂取下，又整了整被风吹乱的衣冠，然后装出忧郁诗人般的沧桑，道：“今天的风儿好是喧嚣。”/p

    惠施偷瞄四周，发现没人注意自己的窘境后，一个闪身回到队伍中，却发现脚边多了一个灰白麻衣的学生，他看起来很是一般，但本着仁义精神，他还是伸出援手。/p

    “谢谢！”/p

    庄休拉住惠施伸出来的手，微微用力，结果人还没起来，反倒将惠施拉倒，扑在庄休的怀中。/p

    “噢噢噢噢~”/p

    二人暧昧的姿势引得旁人窃窃私语，要知道在春秋，以前的魏王魏校长魏圉与男秘书龙阳君可是有好几腿的关系呢。所以大家对这种男同之风，倒也不是一无所知，只是在校园内，这么明目张胆的，也是极罕见。/p

    新生中不少人取出一个古怪镜头样子的东西，对着二人，似乎在拍照，又似乎在摄影。/p

    庄休面如酱色道：“躺够了吗？”/p

    惠施慌忙起身，只是这次再不敢伸出援手来助庄休了。/p

    “贤弟”/p

    惠施想说些什么，却被羞恼的庄休打断：“别贤了，轮到你报名了！”/p

    惠施赶忙小跑到周御书院的招生老师面前填下资料，然后领了一块号码牌，掩面逃离。/p

    “下一个。”招生老师朝庄休喊道。/p

    庄休却顿了一顿，他有些担心认不来春秋的古字，可等他坐下后，这份担忧立即烟消云散。/p

    因为报名表上的文字，是他再熟悉不过的简体字。/p

    【姓名】：庄休/p

    【年龄】：16/p

    【性别】：男/p

    【爱好】：无/p

    【辅导班】：/p

    填到这里，庄休一愣，依照老头的说法，诸子百家成了辅导班，若是乱填，岂不是给自己固定了阵营？/p

    想到这，他本着有问题不懂立即问老师的理念，向招生老师问道：“辅导班一定要填吗？”/p

    招生老师望了一眼庄休的衣裳道：“如实填写即可，没上过辅导班就填无。”/p
惠施将挂在头上的裤褂取下，又整了整被风吹乱的衣冠，然后装出忧郁诗人般的沧桑，道：“今天的风儿好是喧嚣。”/p

    惠施偷瞄四周，发现没人注意自己的窘境后，一个闪身回到队伍中，却发现脚边多了一个灰白麻衣的学生，他看起来很是一般，但本着仁义精神，他还是伸出援手。/p

    “谢谢！”/p

    庄休拉住惠施伸出来的手，微微用力，结果人还没起来，反倒将惠施拉倒，扑在庄休的怀中。/p

    “噢噢噢噢~”/p

    二人暧昧的姿势引得旁人窃窃私语，要知道在春秋，以前的魏王魏校长魏圉与男秘书龙阳君可是有好几腿的关系呢。所以大家对这种男同之风，倒也不是一无所知，只是在校园内，这么明目张胆的，也是极罕见。/p

    新生中不少人取出一个古怪镜头样子的东西，对着二人，似乎在拍照，又似乎在摄影。/p

    庄休面如酱色道：“躺够了吗？”/p

    惠施慌忙起身，只是这次再不敢伸出援手来助庄休了。/p

    “贤弟”/p

    惠施想说些什么，却被羞恼的庄休打断：“别贤了，轮到你报名了！”/p

    惠施赶忙小跑到周御书院的招生老师面前填下资料，然后领了一块号码牌，掩面逃离。/p

    “下一个。”招生老师朝庄休喊道。/p

    庄休却顿了一顿，他有些担心认不来春秋的古字，可等他坐下后，这份担忧立即烟消云散。/p

    因为报名表上的文字，是他再熟悉不过的简体字。/p

    【姓名】：庄休/p

    【年龄】：16/p

    【性别】：男/p

    【爱好】：无/p

    【辅导班】：/p

    填到这里，庄休一愣，依照老头的说法，诸子百家成了辅导班，若是乱填，岂不是给自己固定了阵营？/p

    想到这，他本着有问题不懂立即问老师的理念，向招生老师问道：“辅导班一定要填吗？”/p

    招生老师望了一眼庄休的衣裳道：“如实填写即可，没上过辅导班就填无。”/p
','    庄休谢过，继续提笔直至将报名表空格填满，然后领着39号号码牌，按照招生老师的吩咐前往指定的考场。/p

    /p

    去考场的路上庄休没有闲着，他开始四处打量起这所周御书院。/p

    周御书院内的建筑大多木制，高些的有层，矮一些的就是简陋的茅草屋，模样算不上好看。不过周围柳树成荫，绿湖白鹅，田园气息浓厚，与陶渊明描绘的采菊东篱下，悠然见南山的风情有些类似。/p

    “咚！”/p

    一声闷响，沉心风景的庄休与面前一人撞了个满怀。/p

    “对不起，我走走神了”/p

    那被撞的女子缓缓转过身，瞧见她的面容后，庄休立刻变得结巴。/p

    一身红裙，只有简单的花褶，裙摆随风摇曳露出一双绣花小鞋。柳腰盈盈，不堪一握，一只纤细白皙的手正在背上来回揉着。/p

    美人无话，一脸娇嗔得望着庄休。/p

    “咕咚！”咽口水的声音。/p

    庄休脑海里浮现《诗经》中那句描写美人的经典句子，并情不自禁念出，/p

    “手如柔荑，肤如凝脂，领如蝤蛴，齿如瓠犀，螓首蛾眉，巧笑倩兮，美目盼兮。”/p

    那美人听后，嫣然一笑，又瞧了瞧庄休手中的号码牌道：“公子也是报考周御书院的书生？”/p

    庄休如遭电击，上下一哆嗦，被美人这一声公子喊得浑身酥麻，飘飘欲仙，支吾着回道：“嗯嗯对的！”/p

    “期望能与公子同班。”美人一笑倾国倾城，她施着儒家学子礼告辞。/p

    庄休呆呆地点头，望着远去的红影怅然若失，直到肩膀被路人一撞，这才清醒过来，感叹道：“中招了，没想到世间竟真的有魅惑之术！”/p

    庄休承认那女子姿色过人，但不至于瞧一眼便这般失魂落魄，再联想到老头子腾云驾彩虹的本事，不难推出，那女子也会使些古怪手段。/p

    “这样的世界，确实有趣了许多！”/p

    庄休扭扭有些发僵的脖子，依着指示牌来到了考场。/p

    考场外也是人头攒动，黑压压的一片，不过比起报名点，倒是少了许多人。/p

    庄休找到一块告示牌，上面写着考试的流程：/p

    “学生先去参加五类（德智体美劳）考试，平均成绩不低于30者，可在飞鸽上注册周御书院的学籍。满分80，甲班：80-76,、乙班：75-70、丙班：69-60、丁班：59-50、戊班：49-40、凡班：39-30。”/p
','    看完后告示后，庄休久久不语，因为槽点有点多。/p

    “春秋学院也搞德智体美劳这样的素质教育？还有这个飞鸽是什么鸽，是用来传书的吗？”/p

    带着这些疑惑，庄休找了一支人少些的队伍，开始排队。/p

    只是没想到，一些孽缘一旦开启了，便没有尽头。/p

    “嗨，贤弟好巧哦！”惠施在庄休的身后打着招呼。/p

    庄休脸色一黯，道：“你不是早过来了吗？”/p

    惠施嘿嘿一笑道：“我给庄稼施肥去了。”/p

    “”/p

    庄休转过身，并不想搭理惠施，奈何惠施就像聒噪的夏蝉，一个人也能自嗨。/p

    “今天天气不错，适合遛狗可惜我没有狗，要不贤弟你陪我出去走走？”/p

    庄休眉头一皱，这bb怪话里有话？指桑骂槐？/p

    “贤弟我以前养过一头香香猪，只是它后来变胖了，被我爹娘宰了”/p

    “贤弟我曾经喜欢过一个女孩，那个女孩也变胖了”/p

    庄休抓住机会，试图终结话题：“那女孩也被宰了？”/p

    惠施很认真地摇摇头道：“不，那女孩胖的像香香，勾起了我的伤心事，于是我就不喜欢她了。”/p

    庄休眉头大皱，惠施的每句话越琢磨越是觉得他在骂人，若是无心，那到还好，若是有意，那这人的城府得有多深。/p

    庄休深深地望了一眼惠施，本想试探一番，却被队伍前的考官一起喊去参加考试。/p

    考官叮嘱道：“注意考场纪律，这是五类第一场德之考试。”/p

    考官说完后打开栅栏，像是赶鸭子一般，将一群人赶入考场。/p

    庄休进入考场后，打量四周，考场是一个四方沙场，里面没有一张桌椅和其他杂物，只是在沙场上用白色粉末画了两幅巨图。一幅是大圆圈，另一幅则是大叉叉。/p

    “这圈圈不够圆，这叉叉不够叉。”惠施又开始絮絮叨叨。/p

    庄休不受干扰，等了一会后，一个声音从远方传来：“准备考试！”/p

    “只闻其声未见其人！莫非是上古奇功夫——千里传音？！”/p

    庄休心中澎湃，以为这是神秘的功夫，可下一段话的出现便暴露了真相。/p

    栅栏一圈的喇叭开始工作，所谓的千里传音竟然只是喇叭/p

    喇叭？/p

    春秋时期哪来的喇叭？/p

    庄休眉毛一扬，又无力放下，飞天遁地都出现了，再出现个小小喇叭怎么了。/p',10017,10051);
	insert into ds_book values(null,10052,' “眼睛！”
　　“警告！警告！左右眼虹膜异色，不属于同一人种。”
　　“闭嘴！恰斯帕。快点给他装上。”
　　仿佛在常年黑夜里刹那点亮了明灯，一阵刺目；
　　好像在长期飞行中突然发现了大陆，一时眩晕；
　　似乎在漫漫宇宙间偶然遇见了恒星，一场灼烧；
　　在极光的照射下忍受着适应了这种难受，竟有一股莫名其妙的液体分泌出，顺着眼角流入了耳廓。是新生第一次，但是熟悉温暖。
　　“心脏，恰斯帕。”
　　突然从身体内部传来一声轰鸣，好似感受到母亲通过脐带传输来的律动，是新生第一次，依旧熟悉温暖。
　　接着又是一声，然后是一声声有规律的渐渐适应的“雷鸣”，同时这种熟悉温暖也传遍了全身。
　　不知从哪里来，不知往哪里去，我刚刚开始的人生像泄了气的气球一样四处乱窜，然后快速的干瘪离去。这是我从手术室出来的第七天，确切的来说是实验室。听说上帝用七天创造了这个世界，那么我用七天了解并感受这个世界已经足够了。创世之前，一片混沌，地球在黑暗、沉寂无声的太空飘浮，没有陆地，只有满满的海水。上帝耶和华用六天时间创造了世界。第一天创造了白天和黑夜、第二天创造空气和天；第三天创造了地、海，山川平原，花、草、树木；第四天创造了天上要布满星辰，用来划分季节和年，夜晚是休息的时间，就让宁静的月亮给那些穿越沙漠的漂泊者指明方向，帮他们找到栖身之处；第五天上帝创造了鱼、鸟等各种动物；第六天上帝创造了人；第七天上帝休息了。我用前六日感受上帝的创造，第七日我想同上帝一起休息。
　　我问恰斯帕什么是休息，恰斯帕说休息是指在一定时间内相对地减少活动，使人从生理上和心理上得到松弛，消除或减轻疲劳，恢复精力的过程......他说了一大堆，我明白他的意思，大概就是类似人类睡觉吧。我又问他上帝休息了是不是上帝睡了？恰斯帕支支吾吾半天，我没明白他的意思。然后我又问上帝休息完了是不是会醒？上帝什么时候醒？上帝是不是已经醒了？上帝醒了去哪了？有没有人见过上帝......我感觉恰斯帕好像哭着跑了，但实际上恰斯帕根本不会哭。他在回答我，我在时眼角流出的液体是眼泪的时候告诉我，博士没有给他装泪腺。博士说眼泪是无用的，是软弱，怯懦的表现，所以博士没有给他装这么个功能。他为此嘲笑我，并自豪。可此时我感觉这个没有哭的跑去找博士的恰斯帕比哭了还难堪。同时我觉得恰斯帕给我的休息的解释不是我想要的。
　　恰斯帕神气的跟我说：“上帝死了”，但是当再问时他也不能再说上来什么的时候，我估计他只是将博士也许是敷衍的答案传达给了我。他一个劲在我耳边说“上帝死了，上帝死了”的时候，我开始思考什么是死亡。。
　　这次我没有问恰斯帕，我知道这又是一个他难以回答的问题，而且不仅仅是他一个人难以回答的问题。
　　在各种方法都不得而知的情况下，我决定亲自体验感知死亡。当我知道实践出真知时，我排除了世上所有对死亡的定义。他们都没有死过，怎么能知道死亡到底是怎么一回事呢？而死过的人又无法复活将死亡告诉其他人，或者记录记载下来。所以我决定亲自走一趟这神秘且无归程的旅途。至于能否见到上帝，我已经不在乎了。','','',10018,10052);
insert into ds_book values(null,10053,' 恰斯帕从博士那拿了一本名为《完全自杀手册》的古书给我做参考，他说这书大致和我来自一个时代，现代已经很少有纸质书了。对比各种自杀方式后，我决定采用致死程度高，痛苦程度和麻烦程度最低的方式——跳楼。虽然尸体形象差，容易产生交通拥堵现象。但是没有疼痛，没有不安，节省时间，成功率高，很难被抢救等优点正是我想要的。骤然跳下毫无痛苦，显然这是最高级的自杀方式。注意事项上表示坠楼高度至少要在六层以上，要观察楼下设施，避免掉在沙滩上，而失败。但现在已经很难找到那么低矮的楼了。这本书毕竟是二百多年前的东西了，书中内容与现实多少有些差距。我来到三百层楼的楼顶，发现根本看不清楼下的情况。不过我觉得这么高掉哪都会死吧。
　　恰斯帕就站在我身后，他不是来见证这一历史性时刻的，他不过是博士的走狗！博士派他来记录我的一切，在他们眼里我不过是一个实验品，还是最不值钱的实验品。二百多年前的冰冻人有十几亿，而我还是博士利用残缺的各个身体部位拼接而成的残次品。我没有为他们制造了我而对他们心怀感激，也没有因为他们把我作为实验品而对他们心存怨恨。我几乎没有见过博士，他一直做着各种各样的实验。我有一些为恰斯帕感到难过，他和我一样只是博士的试验品，总是不能让博士满意，为此博士要克隆自己替换掉恰斯帕。博士会在克隆实验成功后换掉一直被他训斥的恰斯帕这个消息是我无意中得知的，我也没有把它说出去，我从来不是一个多事的人。
　　“再见，恰斯帕。”
　　和我预想的一样，恰斯帕并没有来阻止我，微笑依然在他脸上，只是简单的向我点了点头。
　　......
　　我完全没有意料到坠楼这个过程比我预想的要长的多。
　　坠落时上帝忘了计时，让我在空中停留了一生。
　　我在二百八十层看见了一位母亲逗乐了襁褓中的婴儿，而我却想不起我的母亲。
　　我在二百三十层看见了一位父亲在教育着自己的儿子，而我却记不清我的父亲。
　　我在一百六十层看见了一名孩童独自一人玩电子游戏，而我却忆不了我的童年。
　　我在一百四十层看见了两个伙伴彼此分享者美食佳肴，而我却遗失了我的朋友。
　　当我在九十九层看见了一对情侣激情相拥热情相吻时，泪水再也无法抑制的从眼眶中涌出。
　　就在那一刹那我才仿佛新生一般，我有了生的希望，有了目标，有了动力，我意识到我不是没有这一切，我只是失去了记忆。我的重生不是为了感受痛苦，而是为了创造一个崭新的美好未来。
　　可是上帝却在此时按动了计时器，他还是想让我去陪他。我被大地打的支离破碎，四分五裂。我的棕黑色的左眼看着我淡蓝色的右眼滚出了十里开外，我的淡蓝色右眼看着我棕黑色左眼滚出了十里开外。我的左耳听见了我的左臂粉碎性骨折的声音，我的右臂感受到从我的右耳里喷涌而出的血液和脑浆混合物。我的心脏雷鸣般的律动渐弱了，但是我感受到了，玻璃碎片般的心被一双温暖的手包裹着带走了。我任凭这双手带走了我的心，不是因为我什么都做不到，而是我的心自己选择的跟着这双手走了。我很高兴我的心能找到一个好的归宿。。
　　令人高兴的是我的尸体并没有引起很大的骚动以及人员围观，路人们仿佛对此并不感兴趣，他们有的只是匆匆看上一眼，有的甚至不屑一顾，因此也没有造成交通拥堵。而且恰斯帕赶在相关人员到来之前回收了我绝大多数尸体部件，我的心除外。
　　博士花了十个小时拼好了没有心的我，之后我粗略的计算了一下，我在空中待了仅仅只有十秒。我的十秒钟换了博士的十个小时，是赔了还是赚了呢？','','',10018,10053);

insert into ds_book values(null,10054,'博士拼好后的我应该是第三个我了，而且是比第二个残次的我更加残次的我。我暂时忘了和上帝喝茶的约定，也不再想和死神共舞，也希望他们不要在这个时候来找我。博士给我换了一个机械的心，并告诉我这是他手术期间花了十分钟做的，所以没有质量保证。恰斯帕粗心的把我的左眼和右眼安反了，不过博士不在意，我也不在意。博士可能习惯了恰斯帕的粗心，可能不在意这个无关痛痒的粗心，而我是因为很快恰斯帕就要被换掉而为他难过。
　　我想去找寻我的记忆，但博士说最好尽快找回我的心。我不得不从那双温暖的手里夺回我的心，为此我为我的心难过了一会。
　　这个的我关于我第一生的所有记忆都在一个梦里。而且经常反复的做着这个梦——
　　在无尽漆黑的漆黑中，不知是我还是众人点起了火把。无声地，不知是众人跟着我，还是我跟着众人向前走。前方是黑暗，泥泞，还有崎岖。众人跟着我顺着盘旋的路往上走。我跟着众人沿着蜿蜒的路往前走。在这蜿蜒盘旋的路的尽头，是立在山尖上的一座孤坟。我回首向后望去，火光蔓延到路尽头。我俯首向下望去，火光延展到山尽头。但这路的尽头，山的尽头都是死一般沉寂。火光静静，孤坟寂寂。是我把众人带向了这死路，还是众人把我引向了这孤坟。没有犹豫，没有愤慨，没有悲伤，毫无任何感情的我走进了这孤的坟……
　　我的记忆在梦醒来时被打断就再也接不上了。
　　二百多年前啊！仅仅是二百多年，同人类历史比起来，同地球纪元比起来，同太阳系银河系比起来，同无尽的宇宙比起来，何其渺小，何其微不足道啊！但就是这短短的二百余年，就好像光一般快，快到没有留下一点痕迹；这短短的二百余年，就好像太阳一般炽热，热到消融了一切蛛丝马迹。这二百年空白的历史留给人们一个残缺的地球和数十亿和我一样残缺的冰冻人。
　　地球的记忆断在二百多年前，我的记忆断在第一世。和宇宙一般无尽的困惑的我翻遍了博士的资料库图书室实验室……最后只翻到了一本破烂的日记本。这最后一篇日记的日期是所有我能找到的离现在最近的日子。我看不懂却让我不寒而栗的最后几篇日记这样写到:
　　5月9日
　　这一日终于来了，报应。
　　掘了十八年墓，今天终于要将自己埋了
　　我不反抗，只静静等待。
　　这漆黑的墓，一口绝美的棺材。
　　5月10日
　　睁开不曾闭上的眼，仿佛打开未曾合上的棺木。
　　墓里的凄冷的黑暗，令我打了个寒颤。
　　我是明白的，我终究逃不出这墓。
　　于是我等待，等待黑暗将我吞噬。
　　等待死神降临，用灵魂的锁链，将我带
　　去远方。
　　5月11日
　　惊醒，又睡去……
　　睡去，又惊醒……
　　我明白这是死神的把戏
　　从棺木里把我取出，又将我放回
　　又取出，再放回
　　我是明白的，我终究逃不出这墓。
　　这掘了十八年，坚固而完美的墓。
　　5月12日
　　我静静地躺着，因为。
　　我是明白的，我终究逃不出这墓。
　　现在，他来了……','','',10018,10054);

insert into ds_book values(null,10055,'冰雪世界，寒风呼啸。


    白雪皑皑的天地，一望无际，苏炎独自一人旅行，背着厚重旅行包。


    他已经长途跋涉十余公里，直到夜色降临才有了些倦意，苏炎的体质很不错，和他常年习武强身有关，只是稍作休息后，就赶到目的地。


    “我又来了，三年了，这一次我一定要登临绝颠！”


    苏炎的眸子黑亮有神，望着地平线的尽头，那是一座雪山矗立，直插天穹，壮丽磅礴。


    看着连绵起伏的雪山，苏炎发现‘珠穆朗玛峰’比往年更为宏伟了，他内心突然有一种难以抑制的冲动，想要立刻攀登雪山！


    这是源自内心的情绪冲动，他每次来到珠穆朗玛峰，如同踏上了一条回归的路！


    苏炎快大学毕业，这几年攀登珠穆朗玛峰足足十来次，无一例外以失败告终，甚至第一次因为准备不足差点丢了性命，多亏一位好心的老藏民将他救下。


    苏炎深吸口气，他去了附近一个小村落。


    零下二十几度的气温，很少有村民出来走动。


    苏炎找到老藏民住所，就推门走了进去。


    屋子里面只有些简单家具，年迈的老藏民看到苏炎，开怀大笑，连忙拿出丰盛食物热情款待他。


    饭后，苏炎饮了杯热茶，浑身暖洋洋的，吐了口寒气，看着老藏民笑道：“这里都快成为我第二个家了。”


    苏炎每年都会在这里住上一段时间，后来老藏民的孙女后来成了他的学妹，这算是缘分吧。


    “最新报道，珠穆朗玛峰的海拔突破一万二千米，经过研究......”


    老旧电视机突然播放的新闻，让苏炎陷入沉思中，对于新闻详细报道不置可否，尽管这三年来科学狂人日夜不眠研究珠穆朗玛峰增高的秘密，可依然没有任何结果。


    三年来，珠穆朗玛峰的海拔从八千多米，增长到一万二千米，震惊全世界！


    最新的科技手段只能探测雪山还在长高，具体原因尚不知晓，


    有人猜测珠穆朗玛峰有生命！


    “我感觉它有生命....”


    苏炎不禁喃喃自语，而且珠穆朗玛峰变异时间，和他当年登山时间可是极其吻合！


    “真是幼稚，即便珠穆朗玛峰真的和你的身世有关，可你总不能真是石头里面蹦出来的孙猴子吧？”


    门外陡然传来一阵清冷声音，一位身段婀娜多姿的女子推门走了进来，满头乌黑秀发垂落腰际，她的眼睛很大，肌肤雪白细嫩，瓜子脸，浑身散发着一种独特的冷艳气质，引人瞩目。


    “依思。”苏炎回神望向尹依思，这是老藏民的孙女，他苦笑一声：“我就说说而已。”


    “我怕被人笑掉大牙。”尹依思毫不客气的回应，这位可是学校有名的冰山美人，可能因为老藏民的缘故，她和苏炎的关系很亲密，惹得同学们非常嫉妒。


    尹依思的眼眸也隐晦的瞥了一眼苏炎干净的面孔，对这位相貌不算太出色，家境也一般的苏炎，有一种莫名的亲切感，要不然她也不会选择和苏炎同一所大学。


    在一旁的老藏民笑眯眯的看着他们，随即叹息道：“小炎，你也不用太执着，你父母留给你的遗物虽然和雪山有关，可是要登上雪山巅峰太困难了。”


    闻言，苏炎低头沉默，内心尽是苦涩，拳头微微紧握。


    他是个孤儿，从小跟着养父母长大，二十来年了，苏炎一直想弄清楚自己的身世，找到父母，问一问他们为何这般狠心抛弃他。


    可唯一的线索，指向的是珠穆朗玛峰。


    “不管怎么样，我都想上去看看。”


    苏炎修长的手掌摸了摸脖子上戴了二十来年的水晶吊坠，水晶吊坠中可以清晰看到缩小版珠穆朗玛峰，他的名字也在吊坠上刻着，这很可能是父母留给他唯一的遗物！


    这也是苏炎，为何三年来坚持不懈攀登雪山的缘故！


    房屋里面非常安静，老藏民无奈，不知道该怎么安慰苏炎。


    “我会帮你！”


    就在这时，清冷的声音打破了沉寂，让苏炎的内心涌出暖意，面孔上也洋溢着一缕笑容，他抬头看着起身走向自己房间的女子，她总是这样不把情绪暴漏在别人眼中，也包括他.....


    虽然尹依思是个女孩，可是她从小在冰雪世界长大，对于珠穆朗玛峰可以说非常熟悉。


    老藏民想说什么最终没有开口，他觉得孙女长大了，不会干涉她的决定。


    第二天，天还未亮。','

    一位身材高大的男子来到这个小村落，略显狼狈，不过他的相貌端是儒雅，给人一种如沐春风的感觉。


    祖燕刚进门就苦笑道：“苏炎，尹依思，我来了，这里可真够难找的。”


    苏炎和祖燕同班同学，他在学院属于风云人物，家境也殷实，比较喜爱爬山运动。


    祖燕和苏炎多次组队攀登过不少名山大川，两人关系很不错。


    祖燕的到来，也带来了不少高科技装备，苏炎感觉这一次会非常顺利，这一次登山计划也是祖燕策划的，为此他们做了大量功课。


    因为事先有过约定，苏炎他们未曾多留，吃了早饭就启程了。


    “这个人怎么有些眼熟.....”


    老藏民目送他们离去，他一直皱着眉，从第一眼看到祖燕开始，老藏民就觉得他有些眼熟。


    “对了！”


    老藏民猛的起身，将一个老旧的木箱子从里屋拿出来，里面有一张老旧的照片和一个发黄的笔记本。


    照片上的人像固然有些模糊，可整体面貌和祖燕太相似了！


    老藏民感到难以置信，祖燕难道是这个人的后代？


    至于笔记本记载的内容让老藏民难忘，这是他爷爷留下的，曾经有一个神秘的探险队在他爷爷家里借宿整整五年，期间足足攀登雪山上百次，他们好像在找什么？


    有一天探险队的队长，也就是照片中的人喝醉了，说雪山下面藏着一个很大的地下空间，蕴含无穷能量，是地球的核心！


    “不知道是好是坏。”老藏民走到门口，凝视着地平线尽头连绵起伏的雪山，心中莫名的有一丝不安。


    现在的珠穆朗玛峰，可是旅游胜地。


    此刻，大批游客在畅谈欢笑中，正在赶赴目的地。


    清晨的太阳光也挥洒下来，照耀在雪山上，它变得雄伟壮观，仿若真的有生命，吐露着霞光，金辉灿烂，一时间雄壮的如同巨型金字塔！


    游客们惊叹不已，感觉来对了。


    “真是一个神奇的雪山。”祖燕笑道：“不知道什么时候才能挖出雪山秘密，不过我感觉我们会有一场不一样的旅途。”


    “不一样....”


    苏炎望着雪山，目光坚定道：“我们开始吧，希望两天时间可以上去。”


    尹依思冷艳动人，美眸看了看苏炎，一丝坚定从眼底闪过，她想帮助苏炎！


    时间慢慢流逝，当红日西坠.....


    一天时间过去，苏炎他们的踪迹早就消失的无影无踪。


    快夜幕降临的时候，最后一批逗留的游客神态惊恐。


    珠穆朗玛峰诡异的变了，山上原本的皑皑白雪，如同染了一层鲜红血液，狰狞而又凄美，反射的光芒让星空都变成淡红色！


    有人揉着眼睛，感觉看花眼了。


    “这….这是怎么了？”


    有些游客结结巴巴的不知道说些什么....


    山脚下的藏民们激动莫名，对着雪山叩首，虔诚叩拜，高呼女神，‘珠穆’藏语中，是女神意思。


    “你们快看，不可思议！”


    “传说是真的，再一次出现了。”


    世界第一奇迹，被华夏高层时刻监控，卫星传到各大神秘机构的图像，引起了巨大轰动，根据一些无法考证的文献记载，这种情况曾经在抗战年代发生过！


    巍峨浩瀚的雪山，此刻如同鲜血浇筑而成的，这是震撼性的画面，让人窒息！


    豁然间，雪山竟是自主轰鸣，它的生命似乎在觉醒，仿若神魔在嘶吼，涌现出可怕的力量，震散十方云朵，险些引起大地震！


    “你们快看，天哪，快看！”


    有人失控咆哮，看到峰顶喷薄出一道又一道血色光芒，冲向天穹，渲染的漫天星辰竟是赤红如血！
','
    而悬在太空的卫星，在这种能量冲击之下自主湮灭！


    这突如其来的诡异变化，让游客们瞳孔放大，全部呆泄，如若石化。


    “日他仙人板板的，快跑，跑啊！”


    一个中年男子率先反应过来，他的双腿都不听使唤，连滚带爬的逃命。


    一石激起千层浪！


    游客四散逃命，也有些胆大的迅速拍摄照片。


    但是没人看到雪山巅峰，站着三个模糊的影子，宏伟的雪山将他们衬托的万分可怖，像极了神话传说中的神魔！


    苏炎他们比游客更慌乱，因为站在这里的就是他们，刚才攀登雪山的时候，被一种诡异的力量拉扯上来！


    尹依思早已瘫软在苏炎怀里，她脸色煞白，瑟瑟发抖，毕竟是个女孩子，唯独苏炎强健有力的身躯才能让她有一丝安全依靠。


    “这是怎么了.....”


    苏炎体内的血液都在沸腾，都要燃烧起来，脑海中隐隐有神秘的物质要苏醒，让他头痛欲裂。


    “啊！”


    苏炎痛苦大叫，脑海中有力量爆发，差点让他晕厥过去，这似乎一个钥匙炸裂，打开了天地间潜藏的东西，刚出现就吸引苏炎的目光。


    “棺材！”


    苏炎毛骨悚然，他看到雪山上空，缓缓的显化出一个血红色的巨型棺材，古朴苍凉，厚重如天！


    血色棺材的棺体摹刻很多金色文字，每一个文字都古朴暗淡，似乎在岁月的侵蚀下它们将要消失。


    苏炎清楚的认出一些，钟鼎文，古中国的钟鼎文！


    他的双脚不听使唤的往棺材走去，苏炎似乎失去了灵魂，血脉中有一种力量支撑着他前进…..


    “苏炎，苏炎你快回来.....”


    尹依思惊惧地望着苏炎，此时苏炎竟然如履平地般地，行走在空间中，甚至向着血色棺材走去。


    血棺充满了神奇魔力，吸引着苏炎一步步走过去，甚至不由自主的伸出手掌，触碰在棺材盖上，猛力一推！


    “神龙！”


    苏炎不由呆泄，他看到一条神龙从棺材中腾跃而出，通体金黄，如同黄金浇筑而成，充满了厚重金属力感。


    它很小，只有胳膊这般粗大，额头有两个赤红的犄角，丝丝金色神霞缓缓从它身上飘落，一刹间照亮了血色天穹！


    真龙腾空，傲视苍穹。


    这是古华夏神话中的五爪金龙，炎黄图腾象征之物，它的肉身散发的气息令四野起伏，如同惊雷落地！


    雪山脚下逃窜的人全部瘫痪在地上，这是一种无法抗拒的力量，让他们人体欲裂，内心尽是恐惧，不敢抬首观望！


    龙行九天，舞动天风，冰雪世界都要翻转，漫天星斗在簌簌摇颤，仿若所有的一切要跟着真龙腾跃而起！


    “轰隆！”


    真龙昂首吞吸，天摇地动，整个银河系都在轰鸣，无尽星斗转动，排列，似乎在重新布道。


    甚至随着真龙呼吸，似乎整个宇宙都跟着颤动。


    一时间，日沉月坠，景象滔天。


    忽然之间真龙从天穹上俯冲而下，血色棺材体摹刻的金色钟鼎文脱离棺体，被它一吞而下！


    “怎么会消失！”


    祖燕正沉寂在神秘文字中，无法自拔，他还没有全部看完，现在全部消失了。


    苏炎则是用惊骇欲绝的眼睛盯着真龙，真龙回归，遁入血色棺材中。


    本能反应他看向血棺内部，第一眼看到混沌不见底的深渊，深渊中却透着一缕缕气息，让苏炎浑身血液在沸腾，似乎都要逆流，心脏“扑通扑通”的巨颤。


    “不可能.....”


    第二眼，混沌深渊散去，取而代之的画面，让苏炎头皮发麻，如坠冰窟。
',10019,10055);
insert into ds_book values(null,10056,'地球，新纪元，第九基地。


    “不可能！”


    失控的声音，陡然间在安静的课堂炸响，仿佛要撕裂人的耳膜。


    这声音来的太突然了，讲台上正在演讲的贾德老师，也被这声音吓的一哆嗦。


    其他学生也吓呆了，倒吸凉气，有不祥预感，他们纷纷低头，谁不知道贾德老师的性情，打扰他上课？嫌命长啊，更别说胆大包天的发出这种声音。


    “不可能，不可能....”


    可是失控的声音，还一句接着一句接连在课堂出现。


    贾德的那张脸，铁青的都要变成猪肝色，脑袋上的黑色发丝根根炸立，差点冒出黑烟，无法容忍有人打扰他讲课，更何况这是有史以来最严重的一次！


    此刻，教室最后一排，突然站起一个学生，他呼吸急促，脸色苍白，眼中尽是惊惧！


    他推开了雪山龙棺，看到了传说中的真龙，可是和真龙葬在一起的人，竟然和他长得一模一样！


    苏炎忘不了那张毫无血色的脸，就像在他眼前漂浮着！。


    苏炎的心脏“扑通”颤抖，他喘着粗气，随即他的脑门突然间嗡嗡作响，一重又一重剧痛袭来！


    头很痛，苏炎的额头都出现冷汗。


    这是很多陌生记忆接连涌来，让苏炎头痛欲裂，四周陌生的环境更让他发慌。


    这是什么个情况？这是什么地方？


    “混账东西！”


    贾德愤怒低吼，可是苏炎什么都听不进去，完全不搭理他，贾德气急之下，一巴掌打爆讲台，怒气冲冲离去。


    这恐怖的破坏力，让学生们倒吸凉气：“坏了，这个苏炎作死啊，贾德老师好不容易给我们讲解武学课，现在被他气走了，还有一个月就是大考了，我们该怎么办？”


    九成的学生在那绝望哀嚎。


    “疯了，真是疯了！”


    学生们骂骂咧咧的离开教室，没人会搭理苏炎，整个冰雪学院谁不知道苏炎的大名，他是觉醒了，可是这两年疯疯癫癫的，时常说胡话，这一次竟然在课堂上公然咆哮。


    “怎么回事，我在哪里？难道这是一个梦？”


    苏炎呼吸沉重，强迫自己冷静下来，他无力的坐在椅子上，脑海中多出来的记忆，让他差点精神错乱。


    他努力消化这些记忆，体内都直冒凉气，他再一次被吓住了。


    新纪元，一百年！


    “这是什么鬼地方，还是地球吗？”


    苏炎慌乱地摸了摸脖子上挂着的吊坠，他松了口气，还在！


    “这不是穿越，我还是我，可我现在又是谁？”


    他努力消化记忆，连神话演变都看到过，还有什么离奇事件比雪山经历还要严重？


    当他消化完这些记忆，苏炎起了一身鸡皮疙瘩，一百年了，时间过去了整整一百年！


    “一百年，一百年，我现在岂不是一百多岁了？”


    苏炎头皮发麻，他慌忙的看了看自己的手，紧致细腻，没有丝毫老化的痕迹，手掌又哆嗦地拿起旁边桌子上的镜子，看到镜子里面的人，苏炎张大嘴巴，都能吞下一个鹅蛋。

','    镜子里的人太熟悉了，清秀的面孔，黑亮的眼睛，乌黑的发丝，此刻瞳孔中写满了不可思议，因为这是他十七八岁的面孔。


    苏炎的双手颤抖摸着面孔，窒息的要命，他竟然返老还童，年轻了五六岁！


    “怎么会这样？当年到底发生了什么事情？”


    “一百年前，全球末日！”


    记忆重组，苏炎惊骇，一百年前全球末日。


    按照时间的推算，和他攀登珠穆朗玛峰的时间比较，全球末日发生在打开雪山龙棺的第二天。


    人类世界的末日，谁能遗忘？早就被编入历史课程。


    一百年前，地球就像是打开枷锁的牢笼，宇宙蕴含的无形力量袭击整个地球，数不清的普通人因为承受不住宇宙力量的压迫而惨死，这是一个大灭绝时代，全球人口总数急剧降低，死亡过半。


    经过第一天的宇宙末日，有一批人幸存下来，他们的身体产生变异，变得异常强大，这些人被称为觉醒者！


    后来经过研究，发现地球出现了一种神秘的能量，人可以吸收这种能量强大**，经过这种能量强化的**坚硬程度堪比钢铁。


    “人体变异，觉醒者！”


    苏炎倒吸凉气，眼珠子瞪大滚圆，颤声道：“这....这不就是神魔文明嘛，人强大到可以排山倒海，这简直难以置信，天哪，地球竟然变成这样了！”


    可是这仅仅只是开始，人类变异，野兽变异的却更强！


    所有的城市遭遇野兽袭击，各种武器很难对野兽造成致命伤害，即便是杀伤力巨大的武器，也很难对野兽造成毁灭性的打击。


    至关重要的是，野兽成长的太快了，短短一个月的时间，子弹已经无法穿透野兽的毛皮！


    甚至，变异的同时它们也诞生了很高的智慧，对人类发动一次又一次群体性攻击！


    暗无天日的一年，每天都有数不清的人类被野兽杀害，大半城市被野兽霸占！


    一直到一年之后，人类觉醒强者联合在一起，建立华夏联盟，建造了钢铁基地，抵挡各方野兽，让人类传承的勉强延续下来！


    人类和野兽的征战，持续了整整五十年都没有停下来，在那个时代中，人类太艰苦了，时常有无尽兽潮攻击基地，大批的强者为此牺牲了生命。


    每个战争年代都有热血忠贞之辈抛头颅，洒热血！


    他们在华夏联盟生死存亡关头杀出一条又一条血路，为保存人类火种付出英勇牺牲！


    五十年了，人类已经拥有了很强的实力，建筑起来十大钢铁基地，但也只能勉强生存，无法消灭野兽势力。


    末日爆发的第六十年，格局发生了逆转，祖燕犹如天神下凡，力挽狂澜，他血洗一个又一个野兽城市，举世皆颤！


    他的强大令野兽大军窒息，曾经威震八方的各路兽王，接连被他屠掉。


    祖燕的出现，震惊全人类，他被尊称为最强战神！


    战神的实力让野兽不敢贸然进攻人类城市，人类获得了安宁，这四十年没有爆发太大的战乱。


    经过四十年的发展，人类建立了华夏城，那里是人类精英汇聚之地，唯独觉醒者才有资格进入华夏城。


    现在全球仅存两大联盟，一个是华夏联盟，一个是西方联盟，两大联盟很少往来，因为被海洋隔着，海洋中蛰伏无穷无尽的野兽。


    可是全球最强者，公认的是祖燕战神，一个可怕到让西方联盟都窒息的强者！


    “祖燕！”


    两个字，仿若重于万钧，苏炎惊骇欲绝，不由得回想起，当年珠穆朗玛峰之行的策划者，祖燕！


    “难道是同名？”


    苏炎心慌，太离奇了，关键是他百年的记忆都没有了，甚至他还返老还童？
','
    他的记忆从三年前开始，三年前被冰雪学院的神秘院长带到这里！之后一直浑浑噩噩的，因为记忆没有觉醒，直到今天！


    “宇宙末日！”


    苏炎的面孔突然苍白下来，拳头紧握，浑身都在发抖。


    他还有养父母，似乎是上天和他开的一个玩笑，苏炎一直想看一看亲生父母留给他的遗物指引地，可笑的是，在他养父母最需要他的时候，苏炎没能在他们身边！


    “爸妈，妹妹...”


    苏炎心如刀绞，眼睛泛红，他还有一个妹妹，在他攀登珠穆朗玛峰的那年，他妹妹苏冰霜才刚上大学，至于苏炎每年去珠穆朗玛峰这件事，只告诉了他妹妹，他怕养父母担心，并没有告知他们去向。


    可是百年了，沧海桑田，他们现在都怎么样了。


    “一百年，一百年，怎么会这样.....”


    苏炎的手掌抓着头发，浑身颤抖，一百年了！


    固然人类社会现在寿命平均一百五十年，可是一百年前他的养父母都快六十岁了。


    苏炎不敢想，宇宙末日，全球死亡过半，他们一家人都会成为幸运儿吗？！


    “珠穆朗玛峰到底发生了什么事情，这个时代是神魔文明时代吗？”


    苏炎有些惶恐，突然出现在这个时代，根本无法适应。


    他努力平静，发现有件事不对劲。


    当年珠穆朗玛峰的动静那么大，为何没有一点历史记载？


    “战神祖燕！”


    豁然间，苏炎扭过头，目光穿透窗户，落在学院大门。


    大门矗立着一个神圣庄严的石像，通体金黄，在太阳光的照样下，熠熠生辉，如同天神下凡！


    “祖燕！”


    苏炎腾的一下子站起来，他那颗冷静的心泛起惊涛骇浪，石像清晰的可以看出，战神的轮廓，英雄的面貌，就是昔日苏炎的同学，珠穆朗玛峰的策划者祖燕。


    他和百年前的模样一模一样，只不过眸子中多了睥睨天下的绝世风采！


    苏炎倒吸凉气，祖燕现在竟然是战神，当年他们一起攀登珠穆朗玛峰，百年的记忆苏炎全无，而祖燕成为了战神。


    注视着祖燕的石像，苏炎有一种冲动立刻找到祖燕，弄清楚这一切的原因。


    可是他刚抬起脚，就缓缓坐下来，脊背生寒。


    一切都太离奇了，当年珠穆朗玛峰到底发生了什么？


    “谁能告诉我发生了什么，还有依思，你又在哪里？”


    苏炎苦涩一笑：“我到底经历了什么？谁能告诉我.....”


    他思索脑海中的记忆，从三年前开始，是神秘的院长将他带到这里的，院长是谁他不知道，之前的记忆全无。


    “雪山龙棺，一切从我推开雪山龙棺开始。”


    想到龙棺中的和他一模一样的人，苏炎神情痛苦，他的整个手臂突然火辣辣的，像是架在火上烧。


    苏炎不顾形象脱掉上衣，倒是他的手臂充满很强的力量。


    “这是！”


    苏炎的眸子遽然紧缩，从镜子中看到他的肩头上，盘卧一头欲要腾空而起的小真龙！
',10019,10056);
insert into ds_book values(null,10057,'“怎么不见了。”


    苏炎眸子微缩，他刚才分明看到胳膊上有一头真龙，可是现在消失不见了。


    从雪山龙棺打开开始，苏炎看到了这一条龙，他能有现在离奇的经历，说不定和这一条龙有重大关联。


    苏炎逐渐冷静下来，思付这几年的经历，百年前苏炎就天生体魄强大，三五个人都不是他的对手，力量十分惊人，这个新的时代，可以说神魔文明时代，苏炎的肉身也很强大。


    他就是板上钉钉的觉醒者，什么是觉醒？顾名思义，打破原有的生命极限，开启人体潜能，人体通过吸收天地能量，会不断的变强，拥有超人般的力量！


    苏炎可以感觉到他身体中爆炸般的力量，如同一座即将喷发的火山。


    “不对…..”


    苏炎思付，以前他肩头出现一个淡淡的纹身，可是在数月前，纹身才能看出大体的轮廓。


    “这一条龙，难道在我胳膊里面？”苏炎膛目结舌，他知道麒麟臂，可是现在自己拥有真龙臂？


    这一切让苏炎一头雾水，自身肯定有些问题没有搞清楚。


    随即，苏炎想起下落不明的父母，他的妹妹，心情瞬间沉到谷底。


    “不论如何我都要弄清楚这一切，先找到冰雪学院的院长，或许可以解开一些谜团，毕竟是院长带我到学院修行的。”


    苏炎静下心沉思，可是以自己目前的实力，真的可以查清楚当年发生的事情？


    太多的谜团，让苏炎的头都要炸裂。


    “苏炎，你现在要开始变强！”


    苏炎的拳头猛的紧握，他感觉到生存在一个弱肉强食的世界，直觉告诉他地球的异变和雪山有重大关联！


    “你小子走路也不看着点！”


    苏炎没有注意撞到一个人，像是撞在一头人熊身上，一个趔趄让他差点摔倒。


    对面穿着白色练功服的高大少年怒视苏炎，隐隐可以感觉他体内爆发的力量，都要生撕一条野兽。


    “不好意思。”


    苏炎道了歉，急匆匆离去。


    “这小子，欠揍是不是？”目空一切的高大少年瞬间怒了，他不知道自己是谁吗？道个歉就完事了？


    “高华，这个人可是学院大名鼎鼎的苏炎。”高大少年身边的一个妙龄少女讥笑，引起四周人的侧目，苏炎可是一个大名人。


    “原来是他。”高华吐了口吐沫星子，骂咧咧道：“真是晦气，刚才差点被他撞倒，他算什么东西，道个歉就完事了？”


    整个冰雪学院的三万多学员，都知道苏炎的大名，三年前他可是学院的风云人物，被学院重点培养，赐予核心成员称号，甚至还是第一个！


    要知道整个冰雪学院，也仅仅有三百多位核心成员，可是这些年苏炎的实力一直在原地踏步，老师逐渐对他失望。


    毕竟苏炎是核心成员的倒数第一，想不出名都难！


    “咯咯，他可是和你一样的核心成员。”妙龄女子掩嘴娇笑。


    “和我一样？”高华的脸都变了，满脸的耻辱，这简直在羞辱他！


    高华的表情让四周人不意外，他未来肯定是社会精英，有享不尽的荣华富贵。


    至于苏炎虽然也是觉醒者，可是两者根本没法比较，。


    一个未来的上流社会，一个最底层的社会蛀虫，想一想都令人叹息，他们何尝不是和苏炎一样的命运，大考就是决定他们命运的一天，已经近在眼前。


    “原来我苏炎现在是个废人？”


    一路上被人指指点点的，甚至刚才高华的话苏炎听到一些，内心非常不爽，百年前他在学院也算得上风云人物，更是运动健将，现在竟然被同学看扁？一向不服输的他心中顿时干劲十足！


    比拼拳头，苏炎可从不怕谁！


    对于自身的修炼问题苏炎清楚，他体内的能量总是莫名其妙的消失，只要解决这个问题，变强不是一个难题，他敏锐的感觉和胳膊上的龙图腾有关！


    “这些建筑物可真够坚硬的，都是钢铁铸成的。”


    一路上，苏炎巡视着冰雪学院，整个学院有十个足球场那么大，透着钢铁森冷气机，这种建筑物野兽也不能轻易摧毁。


    可即使是这样，第九基地时常遭遇兽潮袭击，整个华夏联盟，唯独华夏城是最安全的地方，十大基地围绕着华夏城建立，可是唯独觉醒才有资格进入华夏城！


    每个基地都有数千万居民。


    显而易见，觉醒就是步入高层社会的门槛，一旦失败未来前途灰暗一片。


    来到了学生宿舍，苏炎找到自己的住所，推开门，一个不足十平方米的小房子，可是这已经是学院最好的宿舍，单人宿舍唯独核心成员才能居住！


    “苏炎同志，条件很艰苦呀。”


    苏炎无奈一笑，宿舍里面只有一些简单的家具，他脱掉鞋子盘坐在床上，眼底闪出期待，神魔文明，以前向往这个时代的人太多了！


    “全球异变，天地间存在神秘能量，人吸收可以强大肉身，突破生命极限。”


    “这能量被命名为天地精元，修行第一步觉醒，觉醒成功人体发生变异，开启潜能，吸收天地精元不断强大。”
','
    “一般觉醒成功，拥有十马之力！”


    “老天！”


    苏炎看着修炼手册，眼睛大睁，倒吸凉气，十马之力？现在人将一马之力称之为一百斤，那么十马之力就是一千斤！


    这是什么概念？一拳头打上去有一千斤的力量。


    这岂不是人形怪物？


    苏炎仔细观看手册，这说的只是普通的觉醒高手，觉醒巅峰的强者，修炼手册记载，足足有百马之力！


    苏炎被吓住了，一拳打出一万斤的力量？


    “我现在在觉醒者，属于最弱的。”


    苏炎苦笑一声，垫底的觉醒者，顶多比普通人强一些，可是一旦觉醒可以不断吸收天地精元变强，苏炎则是个例外。


    “屏气凝神，气运周身，感悟天地，吸收能量.....”


    苏炎仔细观看修炼过程，他很快开始尝试，闭上眸子，浑身放松，黑暗中，苏炎的听觉都提升不少。


    隐隐的，苏炎发现天地间存在一种神秘的能量，他的内心巨震，不可思议！


    以前的他，最起码坐上半个时辰才能感应到天地精元。


    可是现在才一会就感觉到了，他感觉自己的精神很强，很充足，难道是因为记忆觉醒的缘故？


    苏炎连忙摒除杂念，感应到这种力量，他开始呼吸，用口鼻进行吞吐！


    “嗡！”


    隐隐的，天地精元被他的呼吸引动，一缕缕暖洋洋的能量，开始顺着他的口鼻钻入体内。


    清晰的，苏炎可以察觉到，在这种能量入体的瞬间，他的体内像是燃起来了一团火，他肌肉开始兴奋的颤抖。


    身体在吸收这种能量，开始变强！


    苏炎如同饿了无数年，贪婪的吸收天地精元，气游全身，强大体魄！


    天地间存在的神秘元气，吸收可以强大肉身，这是对人体就是大补品，只要源源不断吸收，肉身就可以持续变强。


    这就是潜能，觉醒者的潜能。


    苏炎可以感觉到他的潜能，就是一个无底洞，对天地精元来之不拒，统统吸收，统统炼化！


    “哈哈哈，好一个神魔时代！”


    苏炎兴奋，眼中尽是期待，谁不想成为强者，谁不想翱翔九天，谁不想登临宇宙，和星空试比高！


    “别激动，稳住，稳住！”


    苏炎的嘴角挂着笑容，喷吐天地精元，炼气化精。


    时间飞逝，夜幕降临，星辉垂落。


    夜间学院安静，可是有一个宿舍，散发着柔和光芒。


    一个盘坐在床上的影子，熠熠生辉，宝相庄严，如同一个神祇，浑身精气滚滚。


    苏炎吸收能量的动静很惊人，甚至人体隐隐要打开封印，复苏极其强大的力量。


    可就在这个时刻，苏炎胳膊上暗淡的龙纹，闪电般炽盛起来，洒落金色神霞，仿若一头龙图腾，在觉醒，活灵活现的，它越是灿烂，苏炎体内炼化的精气就越弱！


    “你大爷！”

','    苏炎爆了粗口，他辛辛苦苦修炼的力量，被掠夺的一干二净。


    龙图腾璀璨起来，洒落神霞，光彩夺目。


    甚至这一次它闹出的动静异常惊人，似乎吸收了足够多的力量，龙图腾变得极其可怖，震荡着远古洪荒气息，开天辟地的可怕神能。


    “昂！”


    苏炎仿若看到太古真龙之吼，吼碎漫天大星，龙躯贯穿九天十地，俯视苍穹。


    “嗡！”


    苏炎的双耳轰鸣一声，灵魂刺痛的他险些晕厥过去，这吼声太真实了，足以开天辟地。


    震撼灵魂的吼声不仅洪亮，还伴随着一股庞大的记忆袭来！


    这是什么？密密麻麻的文字，在苏炎的灵魂排列，一时间金辉滔天，每一个字体都如同黄金浇筑而成的，足有上万个金色文字，烙印到苏炎的灵魂中。


    “钟鼎文，是他，血色棺材上的钟鼎文，可是钟鼎文最后被真龙被吞走了，我手臂上的龙图腾绝对和真龙有重大关联！”


    苏炎清秀的面孔密布震惊之色，当年他研读过一些，可以确认是同样文字。


    “难道我以前修炼的能量消失，都是龙图腾吸收的，现在龙图腾足够强了，才传给我经文？”


    “肯定是这样！”


    苏炎的心情激动，他有现在的遭遇，绝对和雪山龙棺有关联，摹刻在血色棺材的古老经文，现在神奇的出现在他的脑海中，这和龙图腾也有重大关联。


    “初始经！”


    当看到前方的三个字体，苏炎的心神沉浸到里面，研读经文，花费了整整一夜才整理出前篇。


    他的内心有惊色，这是一篇引导人修炼的功法！


    苏炎有些迷糊了，因为在地球新纪元的历史上，觉醒修行，似乎没有功法？


    觉醒手册写的很清楚，不断吸收天地精元，强盛肉身，可是现在苏炎得到一篇功法，他本能的感觉这功法非常的恐怖。


    “这上面说，修行的第一个境界是初始境！”


    “新纪元称之为觉醒，难道是因为修行体系没有完善？”


    苏炎有些兴奋，现在的地球，对神魔文明一窍不通，人类还都在摸索中，虽然已经百年了，可是人类安定下来才三四十年。


    现在所有的修行经验，都是摸索出来的。


    可是想到这里苏炎摇头，华夏联盟应该拥有更高一级的修炼方法，这个方法不会广泛流传下来，或许加入高等学院才有资格了解，不管怎么样苏炎感觉这经文非常的强大。


    现在他只能看懂一部分，后面的功法无法理解，仅仅开篇介绍的就非常惊人，将人体称之为一方宇宙，开辟亿万肉身潜能仙藏，人的潜能是无限的，可以通过不断变强挖掘人体潜能。


    “雪山龙棺的事情，决不能暴漏出去！”


    “神魔文明地球以前出现过，初始经就是最好的证明！”


    苏炎脸色凝重，不管是因为祖燕，还是因为初始经，在这一切没有弄清楚之前，关于雪山龙棺的事情，决不能告诉第二个人。


    “看看这经文有多强！”


    苏炎根据经文的描述，观想苍穹，观想星空，观想诸天大星！


    体如宇宙，苏炎观想整个宇宙，他尝试了很多次，以他强大的精神力，每一次观想都非常的疲倦。


    苏炎不断尝试，整整一天过去，他成功了！


    “轰隆！”


    他的双耳轰鸣，如同打开了新世界大门，从这一刻开始，苏炎体内气血沸腾，仿若点燃的火炉！


    苏炎的观想图变了，火炉矗立宇宙中，喷吐天地精华，这一刻苏炎的肉身像是撕开了枷锁，所有的毛孔都张开了，喷吐的时刻，滚滚天地精元被苏炎纳入体内！


    他骇然，没有功法只能以口鼻吞吐，现在他却是浑身毛孔都张开了，自身如同火炉，喷吐天地精华，夺天地造化！


    这让他震撼了，这只不过是开始，等待他的肉身强大起来，以身为炉，化作星空神炉，喷吐星空精华，星辰神力！


    到时候肉身有多可怕？难道还能比星辰更加恐怖不成！


    “这龙图腾又来掠夺了。”


    苏炎脸黑了，龙图腾在复苏，吸收炼化的能量。


    随即他愕然，发现龙图腾只是吸收了大部分能量，剩余的小部分没有掠夺！


    虽然只剩下一小部分，也比他先前修炼速度快上好几倍了。


    “这个土匪，还知道给我留一些！”


    苏炎无语，眼下也弄不清楚龙图腾是什么，只能先修炼，而且他对龙图腾没有太大的怨念，这东西绝对不能用常理来推算，暂且供奉起来，看看到底是什么来头。


    时间一天接着一天过去，苏炎不眠不休修炼，当中去找了院长几次，但是很可惜，院长已经三年没有回来了，苏炎不由得猜测院长的失踪和自己是不是有些关系？


    自身的谜团，让苏炎内心充满变强**，他想要弄清楚这一切。


    这样不明不白的活着，让苏炎很难静下心！


    转眼间七天了，距离大考的时间可不多了，整个冰雪学院几乎所有人都在拼命修行，认真听讲。


    苏炎所在的六班，气氛非常的压抑，每一个学生都大气不敢喘，生怕触怒贾德老师。


    贾德老师脸色阴沉，缺课，在大考临近之前竟然有人逃课！


    竟然有人敢逃他贾德老师的课？难道这个学生不知道外面有多少人趴在窗户下面偷听他讲课！


    他教学二十年，从没有学生缺席过，这是贾德引以为傲的成绩，也是他的逆鳞！


    “又是这个废物，难道不知道我贾德是学院最好的武师吗？他竟然胆敢逃课！”


    全班人都快恨死苏炎，任谁都能感觉到贾德老师杀人的目光，他们都清楚贾德的性情，敢逃课？等着被收拾吧！。


    “你们给我记住，很快就大考了，知道嘛？这一次大考的监考老师，可是华夏学院的强者！”


    全班瞬间轰动，华夏学院，建立整整九十年，是华夏联盟第一个学院，也是最强的学院，在末日时代走出来数不清的英雄。


    谁不想加入华夏学院？可是每年可以进入华夏学院的学生，绝不会超过五百个！


    至于冰雪学院，自从院长消失后，再也没人加入过华夏学院！',10019,10057);

	insert into ds_book values (null,10058,'“奉天承运皇帝，敕曰：朕自入主东宫以来，虽勤勉不怠，巨细躬亲，然诸事繁杂，力所不及，幸得沈卿左右扶持，竭心辅佐。今朕登金銮，特命沈青枝为一品丞相兼内阁大学士，统领内阁，总揽百官。”

    芩国的规矩，凡新上任的一品官员都要围着京城走上一圈，让天下人都知道有这么个人坐上了这么个位子，俗称“走马花”，因着也有些豪门大族想跟风攀亲，结友送女，故又戏称为“黄金饵”。

    这一日，大街小巷，人山人海，几乎到了万人空巷的地步。各家茶阁酒楼全都坐满了面带纱巾的闺阁小姐和锦衣华服的公子少爷。

    说来大家也不是为别的，就是来看看这个十五岁就位极人臣的少年丞相，这一年突然冒出来的可畏后生——沈青枝。

    “啪嗒！”一根竹筷被狠狠掰成两段。

    陈夷小心翼翼地在碗旁重新摆上一支筷子，然后迅速瞄了一眼自家少爷的脸色，默默退了回去。

    “去岁本少坐上那丞相之位时，可还没有如今这般光景呢！”咬牙切齿地说完这番话，顾元城又掰断了一支筷子。

    陈夷觉得自家少爷实在有些自虐的毛病，明明心里嫉妒得发疯，却还要两只眼睛一眨不眨地盯着正骑着高头大马，从楼下走过的沈少爷。

    “咱们祁国没这规矩，官员都不游行的。”眼见顾元城像是要跳下去找沈少爷大打一架，陈夷忍不住安慰道“少爷想想您刚科考及第那会儿，那时候也是这么热闹的，多少千金小姐争着抢着要一睹少爷您的真容啊?何必因今日之盛景而大动肝火?”

    楼下少年被簇拥着走远，顾元城恨恨回身，拿起酒盏就喝了一口。

    “本少爷犯得着为她大动肝火么？”阴阳怪气地丢下这一句，顾元城直接摔门而出。

    陈夷无奈摇头，细想沈少爷与自家少爷之间的恩恩怨怨，只觉得有些啼笑皆非。

    说来沈少爷也是无辜，不过是在元德寺随手扔了个桃核，偏偏撞上了趁夫人上香空隙，偷溜出来的少爷，那砸得叫一个响亮，估计少爷这辈子都不会遇见第二个敢拿东西砸他的人。

    其实他也明白，若是寻常人，哪还有少爷跳脚的份呢？早被心黑手辣的少爷处理掉了。就像这次，少爷处心积虑了那么久，岑渊太子还是靠着沈少爷，硬生生坐上了芩国帝君这个位子。

    少爷哪是气沈少爷如今的排场呢?

    本是到嘴的肥肉，如今却是轻易吃不得了。

    那主仆二人心里在想些什么，我是懒得理会的。我只管坐在系着大红花的汗血宝马上，满意地享受众人的艳羡和惊呼。

    说来这当官就是好啊，当大官更是苏爽得不得了！

    “主子，这里人这么多，我们还是小心为妙的好。”眼见我有些飘飘然，王捷忍不住出声提醒。

    我摆手，一脸不在乎的样子。

    “今天是多么好的一个下手的机会?换作我，我也不会放过的。”

    闻言，王捷握紧了手中的剑，眉头跟着皱了起来。

    “主子今日若是不出来，会省很多麻烦。”

    我笑了笑，道“今日无论如何他都会动手的，与其在府里，不如在大街上。”

    目光一凝，王捷问“是为了挫一挫主子的锐气么?”

    “不。”我笑“是为了让我永远消失。”

    愣了下，王捷随即了然“主子想趁机反将一军?”

    扬手反握，我抓住酒楼上一位姑娘扔下来的玉簪，抬手就将它插在了发髻里。

    仰头向她弯唇一笑，那姑娘惊呼一声，掩着脸躲到了窗子后。

    “来了。”我道。

    王捷还没听清楚我讲的话，人群之中忽然传来一阵骚动，十几个穿着女子衣物的蒙面人一下将护在宝马周围的官兵砍了个四仰八叉。

    王捷拔剑挡在我身前。
','    “他们不是真正的敌人。”我稳住受了惊吓的马，对王捷道。

    王捷立即反应过来，几个起落，将摔在地上的官兵全部毙命。

    还不够。

    我掀衣下马，拉着王捷躲在了宝马下。

    “唰唰唰！”几十支毒箭从两旁的酒楼射出，好几个蒙面人被射中，当场口吐白沫，一命呜呼。我们身前的汗血宝马同时身中十几箭，惨叫嘶鸣一声，倒地身亡。

    “跟我走！”

    我闪身混进人群，随手就把自己的外衣脱下，扔在地上。王捷有样学样，也把自己的外衣脱下扔掉。

    今天的人很多，多到只要混进去就不怕一时半会儿能被找到。

    杀手如是，我们亦如是。

    脱掉醒目的外衣，我也该找顾元城那厮好好算算这些年的账了！

    七拐八拐，我和王捷渐渐甩脱了身后的杀手，来到了京城最有名的落音桥旁。

    桥上站着一个少年，锦衣着身，环佩相鸣，白玉发冠在阳光下熠熠生辉，皎若明月。

    这个季节，正好是落音花落的时候，扑簌簌的花瓣随着清风漫天漫地地飞舞，远远望去，就像是下了一场雪，雪落在河水上，落在少年身上，也落在我们的眼睛里。

    “你逃不掉了。”我看着他说。

    他挑起眉，笑道“你果然猜到了。”

    我怎么可能猜不到呢？之所以亲身游行，为的就是将他一网打尽，不是么?

    这么些年的明争暗斗，我自信还是有点了解他的。

    “哼，按照你的性格，即使知道危险，你也会亲自来看一看多年宿敌被杀的场面。这偌大京城，唯有这落音桥既是观景最佳之地，又是很好的藏身之所，前有出路，后有退途，不是么？”我冷笑，心里却是激动得很。

    终于，终于！这根眼中钉，肉中刺就要被我狠狠拔除，这叫我如何不快活?如何不兴奋呢！

    数百名潜藏在落音林里的禁卫军在我的示意下，冲出落音林，将他团团围住。

    “咻”一根抹着剧毒的银针就在这时飞速地向我射来，众人皆注意着顾元城等人，根本就没有谁发现，也没人来得及上前护卫。

    一直提着神的我拔下发髻里的玉簪就是一挡，玉簪顷刻崩碎，我也逃过一劫。

    我面色不变地看着顾元城身旁多出的一人，嘴角扬了扬。

    “没想到酒楼倾慕你的姑娘，竟然也是你的眼线。”顾元城一直没变的脸色终于沉了沉，极不甘心地看着我。

    是，没错。我一早就派人在这儿监视，对于某些本该出现却没出现的人，我自然要多多在意几分的。

    “今天，就算你插翅也难逃！”我冷下声音“来人，把他给我抓起来，送进宫去好好做个客。”

    “是。”禁卫军副首领杨杰听令，带着人就向顾元城逼近。

    “我记得将军此时应该在皇宫巡视才是啊？”我眼睛盯着眼前的抓捕，头也没回地对着正悄悄拿了把匕首向我靠近的禁卫军统领石曲说道“怎么，将军是觉得巡视皇宫这个差事太过无聊，想玩点儿刺激的么？”

    王捷的剑早在石曲靠近我时，就悄无声息地架在了他的脖子上。

    石曲一慌，吓得手里的匕首都掉在了地上。

    “沈……沈青枝，你放肆！别以为…为仗着从龙之功，仗着皇……皇上的喜爱，就…就可以随便威胁朝廷命官！”

    石曲两只眼睛睁得铜铃那么大，拼命咽下了一口口水。就算浑身抖如糠筛，他还是努力想拿出禁卫军首领的气势来，让我有所忌惮。

    “本将不过是怕丞…丞相遇到危险，特来助丞相一臂之力而已，纵犯疏职之过，也…也轮不到丞相来处置！皇上才掌生杀大权，你…你想越俎代庖么！”

    石曲越说越有底气，似乎说服了自己，觉得自己就是前来帮忙的，根本没有任何过错。

    我把手伸进袖子里掏了掏，末了掏出一块通体漆黑的令牌。

    “生杀大权，皇上是没给我，可这先斩后奏的权利，皇上却是一点儿没吝啬我的哦。”我晃了晃手里的令牌，算是让他死个明白“王捷，动手。”

    王捷二话没说，手起刀落就将石曲的首级砍下，石曲连求饶都没来得及说出口就成了孤魂野鬼。

    见我们这边的事情处理完了，一直没开口的顾元城终于开口了。
','    长剑挑了横刺过来的铁枪，他勾了勾唇“听闻沈相有一个胞弟?看来好像还没有满十岁的样子，贪吃极了。”

    目光一顿，我握紧手中的令牌，不发一言。

    “一根糖葫芦而已，沈相府里不是买不起啊，他怎么就那样乖乖跑到陷阱里呢？”弯腰躲过刺来的利器，顾元城继续道“啧啧，真是没出息。哪像沈相呀，前些年连府里的小厮都使唤不动，如今就算是堂堂禁卫军也要随沈相调遣了。”

    想激怒我?便随他的意好了。

    我手无寸铁，佯装怒火中烧地冲进了打斗圈，嘴里叫嚷道“顾元城，你这个卑鄙小人！”

    纵是杨杰再怎么有心想护着我，结局还是可想而知。

    陈夷的剑架在我的脖子上，顾元城躲在我身后，众禁卫军停下动作，不敢轻举妄动。

    “撤军。”顾元城对杨杰下令。

    “你！”

    “撤军。”我随之开口。

    杨杰虽不服现状，但也不敢违背我的命令，只得下令撤军。

    “他们已经连影子都没有了，该放开我了吧?”我冷着脸说道。

    陈夷抱歉地放开我，王捷立即护在了我身前。

    “他在东边李大爷的猪棚里。”顾元城扔下这句，就带着陈夷离开了。

    我沉了沉眸光，握紧拳头。

    就算我和顾元城都恨不得对方立刻死在自己眼前，现在终究不是最好的时机。

    今日我真正的目的是抓获叛党，顾元城不过是来看看他的弃子处理干净没。

    深呼一口气，我对王捷道“收了石曲的首级。”

    王捷领命。',10020,10058);
	insert into ds_book values(null,10059,'这世界上有两种朝臣，一个是忠臣，一个是奸臣，我不是忠臣，但我可以拍着胸脯对天发誓，我也算不上什么奸臣。

    贪污纳贿，包庇媚上，弄术专权，欺凌百姓……这些我是一个没做，当然，什么两袖清风，直言谏上，我也一个没做。

    我一直信奉一个道理，太过忠心的臣子只会触怒天子，早早的去见如来菩提；而太过奸佞的臣子，就算不嫌弃别人的唾沫，也很难睡上几个好觉，天天神志不清，怎么能为虎作伥，当个好佞臣?

    所以，做官就该像我这个样子，该推脱责任，就推脱责任，该说上两句好听的话，就说上两句好听的话，遇到大事，就算全世界都拦着你，跟你说危险，困难，你也要硬着头皮上，反正就算失败，指不定还能捞个为国为民的好名声，至于那些个鸡毛蒜皮的小事，挑挑拣拣，觉得不麻烦就顺手解决了，如果麻烦，养着手底下的人，咱也不能让他们干吃饭，难道不是么？

    “微臣惭愧，不能将顾元城等祁国乱党全部抓捕献上。”我一脸歉疚地垂手站在芩国帝君的书案下阶。

    书案上的君王眼皮都没抬一下，淡淡在新翻开的折子上批了个赤红的“阅”字。

    我觉得有点尴尬，于是补充道“此次抓捕虽是禁军副统领的过失，但臣身为一国丞相，理应为他承担点责任。陛下若是要怪罪统领，臣愿意替他向陛下求一个情，从轻发落。”

    “哼！”岑帝一听，气得摔了手里的毛笔，他狠狠瞪着我，似乎要把我吃了才解气“沈卿倒是一如既往的巧舌如簧啊?”

    “陛下谬赞了，臣本就是谏官出身，陛下再赞臣一句能言善道，岂不是让群臣觉得臣是一个只会自吹自夸，胸无点墨的媚上之徒?”我赶紧低头，忠心耿耿地进言“微臣虽是初任丞相之职，但一朝为群臣之首，便就是群臣的表率，一言一行都要受到群臣的非议，将来史官提笔记下的只会是微臣巧言惑帝，哪会写这些不过是陛下对微臣的溢美之词?还请陛下莫再让微臣为难了，这千古骂名，微臣是万万不会背的。”

    “……”岑帝坐在位子上干瞪着我，愣是一句话也说不出。

    知道该给皇帝一个台阶下，我换了个话题，道“石曲将军的首级已置殿门外，陛下可要亲自过目?”

    岑帝大概是觉得，就算他身为一国之君，面对眼前这个小子，他还是不要和他打嘴仗的好，便顺着话摇了摇头。

    “随你处置吧。”

    我俯首遵旨。

    “至于罪状，就定为刺杀朝廷重臣，图谋不轨，判诛其三族，后人服役，终身不可仕。”

    我默默思考了一下，然后奏请道“陛下初登大位，根基不稳，若不能震慑朝臣，恩威并施，恐会后患无穷。”

    岑帝也想了一下，遂道“爱卿言之有理。那便改定通敌叛国之罪吧，念石曲早年侍奉先皇，多有战功，其后若有襁褓，豁免流放。”

    “此事交由大理寺查办，爱卿从旁监察即可。”

    我低头“是。”

    “行了，退下罢。看到你，朕就头疼。”岑帝摆手。

    虽然皇上这么说，但我坚信他是刀子嘴豆腐心，于是我非但没走，反上前一步。

    “还有一件事需陛下决断。”我恭敬道。

    岑帝抬手揉了揉太阳穴，无奈问“还有什么事?”

    “石曲将军一死，禁卫军统领空缺，若不及早重新任命，军中或会异变。”

    岑帝闻言，点头道“传旨，禁卫军副统领杨杰，擒获逆党，肃清叛乱，即提为禁卫军统领。”

    角落里的传旨太监立马匆匆跑了出去。

    岑帝用眼神示意了我一下，我立刻自觉地退出殿外。

    刚转过折廊，就见岑曦百无聊赖地趴在烟雨亭的栏杆上，似乎很是不耐烦地在等着谁。

    我上前行礼“太子殿下。”

    岑曦上下打量了我一眼，嫌弃地“咦”了声。

    “沈青枝，你这身行头比你当谏官时更难看了！怎么，莫非我堂堂芩国竟找不出一个会裁剪衣服的人了么?”

    我拉了拉衣襟前领，觉得没什么地方难看的。

    “殿下的品味肯定是与我等凡俗不同的。”我决定拍一下他的马屁。

    岑曦神色不变，很是坦然地点了点头“不然我怎么会是你的主子呢？”

    这句话我就不爱听了。

    我一撩衣袍，准备走人。
','    “哎！”岑曦一转身，挡在我身前“沈青枝，你怎么总不把我放在眼里?”

    我抬头看了他一眼，遂将目光移至别处。

    拱手一礼，我道“殿下说笑了，虽说皇上在微臣心里是不可替代的，但殿下贵为一国太子，微臣怎敢不将殿下放在眼里?”

    眉头皱了一下，岑曦似乎有些不高兴。

    “沈青枝，你我兄弟非要如此生分么?”

    兄弟?

    好啊，兄弟！

    我一拳挥上了他的脸。

    岑曦痛呼一声，踉跄退后几步，捂住了脸。

    我很想挥第二拳，但考虑到再偷袭是不可能的了，干脆给对方一个面子，就算一拳扯平了他所做的过失。

    “我就算是半仙儿，也算不到你那个弟弟会因为一串糖葫芦跟人家跑了啊。”岑曦觉得委屈。

    其实我也明白这事怪不了岑曦，但我就是很想发泄一下心里的憋屈。

    差一点，就差那么一点，顾元城那个混蛋就能从我眼前永永远远的消失了。

    可惜啊！

    太可惜了！

    “杨杰是个不错的将领。”我找了凉亭一处坐下，“你的眼光不错。”

    岑曦边揉脸，边也寻了一处坐下。

    “他虽好，却不是禁卫军统领的最好选择。”

    我给自个儿倒了一杯茶，想了想，又给他倒了一杯。

    “怎么，你是想把他安插到边疆大军里去?”

    岑曦拿起茶盏喝了一口茶水，不言不语地对我勾唇一笑。

    这个家伙生得倒是俊俏啊，没把皇上别的学上，这副风流皮囊却是一点不落地刻了下来。

    不过，能入得了他的法眼，想来我应该也生得挺不错。

    暗自肯定了下，我站起身。

    “闲嗑到此结束。天色将晚，我也该回府了。”

    “若我是你，我是宁愿住到朝廷发放的官邸里，也不会成天想着回去的。”岑曦道。

    我垂了下眼帘，随意笑了笑。

    “多说无益，殿下管好自己才是。”

    言罢，我招呼也懒得打一个，直接顺着来时路出宫去了。

    岑曦无奈一笑，随手将对面之人喝的茶盏扔在了地上，然后装模作样地拿出一本《论语》看了起来。

    “赵忻，处理了。”

    一抹黑影悄无声息地将地上的碎片清理得一干二净。
','    刚刚转过折廊的宫女们，抬眼望去，就见自家太子殿下一脸刻苦认真的看书模样。

    小亭未烟雨，公子美如玉。

    每个宫女心里都忍不住冒出了这样一句话：有君如此，夫复何求?

    对于这一点，我只想呵呵，权作鄙视。

    宫门口的王捷看见我，立刻迎了上来。

    “主子，那石曲的首级该如何处置?”

    我登上马车，随手放下车帘。

    “如果不想死的话，就随便找个乱葬岗丢了吧。”

    王捷会意，知道这是皇上的有意试探，遂没说什么，依着主子的意思去寻乱葬岗了。

    马夫赶车，马车悠悠晃晃朝京城数一数二的侯门贵族——魏应侯府驶去。

    “相爷一日奔波劳累，回府后可要先梳洗一番，再去见夫人?”马夫问。

    我拿起一卷书册慢慢看着，闻言只道“先去瞧瞧二少爷。”

    马夫应了一声，一路就再无他话了。

    说来也头疼啊，这魏应侯府的二少爷被人绑了一回，不知道要闹成怎样的惊天动地呢。

    马车到了魏应候府侧门时，王捷已先一步候在了门口。

    我下车，王捷紧随身后。

    府门家丁见我，立马向里通传“相爷回来了，相爷回来了！”

    有家丁上来迎我“恭喜相爷，贺喜相爷！老祖宗在祠堂里头等着相爷您呢。”

    我不耐烦听这个，直接问道“夫人呢?”

    家丁没想到我会问这个，有些语塞，支支吾吾道“夫人?夫…夫人今个儿身体不太好，留在养心轩休息了。”

    正巧此时，我的书童从府里跑了来迎接我，我对着家丁“哼”了声，领着书童和王捷进了府。

    “相爷放心，夫人的身体并没有什么大碍。”孙沪知道我最不放心什么，上来就直言告诉了我。

    “嗯。”我点头。

    见我没去祠堂，而是往二少爷的院子走去，大概猜到了我的心思，孙沪又道“二少爷从午时被救回府后，一直在哭闹，现在还没消停呢。”

    我继续点头，神态既不显紧张，也不显烦躁，只沉默地往惠德苑的方向走。

    孙沪见我如此，虽早已习惯，却还是有些没办法接受。

    试问当今之世，像自家少爷这样的旷世之才有几个?他就一直没想通，为什么身为少爷亲祖母，亲父亲的老祖宗和侯爷都事事偏袒另个……草包少爷呢?

    更让他想不通的，还是自家少爷这一脸的淡定和无所谓。',10020,10059);
	insert into ds_book values(null,10060,'滚，滚，都给我滚！你们这些废物，你们这些狗奴才，连个绑架本少爷的贼人都抓不住，小心我叫娘把你们全部贱卖出去！都给我滚啊！”一阵噼里啪啦的摔凳砸椅，这还没进惠德苑呢，里面刺耳的声音就让我有点望而却步。

    “相爷不进去么?”见我停了下来，孙沪疑惑地问。

    王捷也不明白地看着我。

    “你们瞧这落地的花，是不是很好看?”我指了指刚巧从树上掉下的一朵花，说道。

    王捷瞄了一眼我的神色，默不作声地往后退了退。

    孙沪失了先机，暗地里瞪了下王捷，脸上却对着我笑道“这六瓣天葵确实好看，相爷瞧中的这个就更是花中极品了。”

    这是六瓣天葵么？

    我眨了下眼。

    “那花旁的兰草倒是比这花更显韵味。”我又向旁指了指。

    孙沪跟着赞叹道“都说相爷的眼光最是好，这石栏上放的那么多贡品兰草，偏偏这株极品天逸荷被相爷一眼相中了。”

    “……”

    我忽然懂得了一个真理，这个世界上最会吹的人，果然不是我。

    “相爷……还有什么想赞叹一番的么？”我没立刻撘上话，这让一直以来在我的欺压下狠下功夫练口才的孙沪觉得有点儿不习惯。

    当然，最主要的还是有点不太过瘾。

    “嗯……我觉着吧，小沪……”

    我正打算跟孙沪讲和，想让他好歹给我留点面子，花园另一处的青石路上就浩浩荡荡来了一群人。

    我往那处瞧了瞧，嗯，侯府老夫人，侯府大老爷，侯府二夫人，侯府三小姐，侯府的管家仆从都到齐了。

    呵，一场好戏要开始了。

    “祖母，父亲，二夫人。”挨个儿叫完后，我往路旁退了退，奉行谦恭孝道的原则让他们先走。

    沈景之皱了下眉头，对我的态度很不满。

    “她是你的二娘。”

    我很是恭敬地对他行了个礼，然后道“我只由一个娘把我生了下来。”

    沈景之被一噎，脸色瞬间暗沉了几分。

    “侯爷，别与孩子多做计较了，她还小，没到懂事的年龄呢。”二夫人靠近沈景之，柔声劝道“咱们还是先去看看麟儿吧，他今天可受了不小的惊吓。”

    听了二夫人的话，沈景之的脸色更差了。

    “十五岁还算小么？放在旁人家，现在都已经娶妻生子了！”

    二夫人金玲像是自己知道说错话一样，手里拿着手帕，整个身子下意识往后缩了缩。

    她赔笑道“侯爷说的是，泱哥儿如今可是一人之下万人之上的相爷了，哪还会是个小孩子呢。”

    不提这个还好，一提这个，沈景之更觉心里仿佛堵了一根刺，憋屈得紧。

    想他年轻的时候，也曾有过一腔热血，也想过不靠家族庇荫，金榜题名，功成名就，然而现实的残酷一次次将他的满腹斗志消磨了个精光。

    更觉窝囊的是，他接手的这个侯府每况愈下，若不是老祖宗撑着，若不是他这个大儿子得了从龙之功，他们府中哪还有如今这般光景?

    我暗自瞧着自个儿亲爹的神色，只觉太过可笑。

    “大哥，如今大哥得封高位，小妹还要烦请大哥以后多多照拂小妹呢。”三小姐沈梅欣接到自家娘亲的眼神，瞅准时机往我这边一靠，双手用劲地抓住了我的手臂，她那眉眼间全是一副楚楚动人的神情，再加上她颇俱几分颜色的姿容，这么乍看上去，倒真让人觉得心都要化了似的。

    如果不是她抓我手臂抓得那么疼，我也愿意把心化了给她看啊。

    我赶紧向孙沪使眼色，孙沪看我强忍痛楚的样子，于心不忍，上前一步拱手。

    “自古男女七岁不同席，相爷虽是三小姐的兄长，可到底男女有别，三小姐还是放开相爷吧，大庭广众之下，有失庄重。”
','   沈梅欣一听，只觉一个小小的书童也敢扫了她的面子，气得脸色都白了。她绣帕一掩脸，似乎自觉行为失当，忙往沈景之身后躲了躲，边躲边哽咽。

    “是，是，奴家知道了，奴家不该对大哥那么亲近的……呜呜……”

    一个不足九岁的娃娃都有如此演技，孙沪只觉得这若大侯府果然是满门奇葩。

    “你放肆！一个小书童也敢指责你的主子？”沈景之见闺女受了委屈，心中怒火更盛，他一手护住沈梅欣，一手指着孙沪骂道“没上没下的狗奴才，谁给你的胆子！来人，把他给我拖下去好好教训教训！”

    沈景之气急败坏地发号施令，那些仆从却唯唯诺诺地都不敢动，这一幕更让沈景之觉得怒不可遏。

    “人呢?人都死光了吗！”他怒吼。

    冷眼看着沈景之在那脸红脖子粗，我淡淡拂了下自己略微折叠的袖子。

    这种戏码我已经看得厌烦了，但想着下面要做的事，心下忍了忍。

    我上前一步，将孙沪挡在我身后。恭敬地行了一礼，我道“父亲，孙沪是皇上赐给儿子的书童，不属府内管制，父亲无权对他做出任何干涉。”说到这儿，我觉着作了这么久壁上观的老祖宗，怎么也不该把她忘了才是，于是我又对老祖宗行了一礼道“祖母，二弟还在屋内哭闹不止，我等还是以他为重，先去看看他才是。”

    老祖宗的眼睛看着我，眼里满是祖辈对孙辈的欣慰和慈爱。

    她点头赞同道“景之，她是你的儿子，就算再有不是，你也要好好教导，岂能这般大呼小叫，让下人们看笑话?”

    沈景之虽是一府侯爷，然无论大小事情他都会依着亲娘做主，现在亲娘发了话，他也不敢再说什么，忍住脾气应道“是儿子没出息了，累得娘教训。”顿了顿，又道“麟儿体弱，又受了惊吓，我们还是快去瞧瞧他吧。”

    老祖宗满意点头，她由着沈景之扶着她，走进了惠德苑。众人见此，也都跟着呼啦啦涌进了惠德苑。

    “戏子都到齐了，相爷怎么看起来似乎并不着急去拉那开场的帷幕?”孙沪很是奇怪地问还留在原地不动弹的我。

    王捷对孙沪摇了摇头，孙沪瞬间明白了王捷的意思，略有尴尬地撇开视线。

    多么善良的属下，这是以为我会心灵受伤啊。

    我很感动，于是我对他俩摆了摆手“你们回兰伊轩吧。”

    王捷和孙沪同时一愣，谁都没想到我会让他们先回去。

    “主子。”

    王捷上前一步，就要开口寻问缘由。我摇头，阻了他的话。

    两人见此，知晓我不会再多说什么，犹豫了下，便行礼离开。

    独自赏了会儿院外美景，算算时间差不多了，我提步走进惠德苑。

    “爹，娘，我一定要抓住那个敢绑架本少爷的人，我一定要把他碎尸万段！”沈麟抱住金玲，声嘶力竭。

    金玲心疼地拍了拍小儿的背，满口答应“好，好，娘一定抓住那个贼人给我儿出气。敢绑架侯府少爷，真是吃了雄心豹子胆了！”

    沈麟紧紧拽住金玲的衣襟，浑身气得抖动 “他们竟敢把本少扔到肮脏的猪棚里！他们竟敢把本少扔到肮脏的猪棚里！他们……”

    “麟儿乖，咱不生气了啊，老祖宗替你出头，老祖宗定把坏人抓回来狠狠收拾收拾。”老祖宗看在眼里，疼在心里，听得自个儿孙儿那般委屈，忍不住也开口安慰起来。

    “老祖宗……”沈麟正要再哭诉一番，余光却见我跨门而入，刚刚稍许安定下来的情绪又变得激动起来，若不是想起往日在我身上吃的亏，怕是要冲上来动手了。

    “就是她，就是她这个害人精，就是她这个害人精！绑架我的人说了，是因为和她有仇才要绑我的！”

    心里叹息一声，我有点无奈。

    顾元城那个王八蛋果然还是留了一招祸患想要隔应我。

    “麟儿说的是真的么？”沈景之又惊又怒地瞪着我。
','    我避而不答，只道“二弟年岁尚小，正是该用功读书的年纪。儿子听闻白旭书院的规矩最好，守备也很严密，不如让二弟去那儿读书吧，既安全，又能增长些学识。”

    我话刚说完，沈景之还没来得及说什么，金玲已经跳了起来，她尖着嗓子冲我吼道“沈青枝，你想干什么！我儿乖顺听话，读书也是最用功的。那白旭书院是什么地方，千里之外的深山里！你想我儿到那里受苦吗？你就这么看不惯我们母子，想要撵我们出去吗？我告诉你，沈青枝，你休想！”

    她怀里的沈麟听了，害怕地直接躲到了老祖宗的背后。

    拉住老祖宗的衣服，沈麟刚刚飞扬跋扈地样子全没了，他大哭着乞求老祖宗“老祖宗，我不要去书院，我不要去书院，老祖宗……”

    “沈青枝，你在外行为不端，树敌招祸，今日又当着长辈的面，欺负你自己的亲弟弟！你是翅膀硬了吧，孝道伦理全都不要了?”沈景之心里也是一紧，这个小儿子是他最为疼爱的，哪会舍得他去深山里吃苦?

    我没理会他们一家人的叫嚣，两只眼睛一直看着沉默不语的老祖宗。

    老祖宗也知道我在等她的答案，然而沉默许久，她还是给出了一个我意料之中，却还是觉可笑的答案。

    老祖宗跺了跺手里握着的镶玉白兰黄花梨木拐杖“够了，都停下，不要再吵了！泱哥儿的提议也不错，那白旭书院确为百里挑一的好地方，出了不少的进士。”

    “娘……”金玲紧张地看着老祖宗，眼睛里已经有泪水在打转了“麟儿是我的命啊……”

    老祖宗抬手，示意她稍安勿躁。

    “但是麟哥儿尚不满十岁，此去未免路途谣远，难以吃消，待麟哥儿再大些，到时再去，我们这些长辈也能少担心点儿。”

    “说的是，娘说的是。”金玲赶忙应和。

    “至于麟儿被绑架一事，泱哥儿，既然祸是你闯的，这绑匪也就由你来抓吧。祖母相信，泱哥儿定是不会让祖母失望的。”老祖宗道。

    我该怎么回答?当然是义不容辞地接受这个重大托付喽。

    “祖母放心，孙儿会给您，也给二弟一个满意的答复的。”

    老祖宗满意点头，然后她把躲在他身后的沈麟抱进怀里安慰“麟哥儿莫要再闹了，你大哥既然说要给你出气，必定不会食言的。让丫头们准备些滋养的汤，再备好沐浴之物，你就好好喝点儿汤，再到床上舒舒服服地睡一觉，明个儿大哥就能把坏人抓来了。”

    沈麟哪会这样就乖乖听话，刚要不服，就见我对他意味深长地笑了下，想到要送他去白旭书院的话，立马窝进老祖宗怀里一声不吭。

    “祖母，您先前让孙儿前去祠堂是为何?”我见已经没什么事了，想到府门家丁的话，便问出了口。

    老祖宗轻拍了拍沈麟的头，转头示意金玲把孩子抱过去。

    金玲不敢怠慢，立刻上前将沈麟抱进怀里。

    “今个儿是你上任丞相一职的第一天，我就想着怎么也要到祠堂里烧柱香，让咱们先祖都知道，咱们沈家出了你这么个光宗耀祖的后辈儿。”老祖宗道“虽然现在天色晚了些，但此事不可拖延。本来你娘也该一起，但她偏巧赶上身子不好，现在就你和景之两个随我这个老太婆去祠堂罢。”

    我很是敬畏地朝祠堂方向拜了拜，然后对老祖宗道“祖母折煞孙儿了。”

    老祖宗对我笑了笑，一只手抬起。

    我知道，这是要父亲扶着她，便朝旁退后一步。

    沈景之也明白老祖宗的意思，上前扶住她。

    “走吧。”老祖宗开口，临行前还不忘回身嘱咐了金玲句“好好照顾着我的宝贝孙子。”

    我在一旁看着他们之间的互动，嘴角扯了扯。

    说不寒心是不可能的，然而我也只能认命。

    便是所谓的烧香祭祖，慰有子孙如我，能扶着侯府一品夫人进祠堂的，也终只有父亲和二弟两人而已。

    谁让我是个女儿身呢？

    一辈子见不得光的女儿身。

    老祖宗和沈景之走出屋门，我一言不发地跟了上去。',10020,10060);

	insert into ds_book values(null,10061,' 寒风刺骨，天还没亮，月亮散发的光竟显得有些温暖。
        “苗芮！快点，再不走你一个人在这看家！”于秋很不耐烦地在门口吼着。
','','',10021,10061);
	insert into ds_book values(null,10062,'学掩盖了世界的荒芜，却怎样都掩饰不住自己的苍白冰冷。
        她探出头，看见窗外的雪花飘落，又是一场轮回的结束，一切又回到原点，开始......
','','',10021,10062);
	insert into ds_book values(null,10063,'“真没想到，这雨说下就下啊！”苗芮自说自话。
        “对了，我是中文系的，今天真的太感谢你了，我一直在找前面的公交站台......”
','','',10021,10063);

insert into ds_book values(null,10064,'黑暗笼罩在了这处荒凉的小镇之中，肆意的寒风将空气吹拂地更加凌乱。

    远处忽然传来了诵经声。

    一位身穿暗黄色长袍的行者，背着行囊在路上缓慢地走着。月光照在了他的身上，将那身影显得更加漫长。

    身后似乎有着什么东西，行者无奈地努了一下嘴。

    一个圆鼓鼓的小脑袋探了出来，环顾了一下四周。却又被远处的一声猫叫，吓得缩回在了僧人的长袍后面。

    “云水，出家人应该是要无畏无惧的。你如此小的胆子，这样以后要怎么来继承我的衣钵呢？”僧人异常无奈地说道。

    那个小脑袋又探了出来，似乎终于是鼓起了莫大的勇气。他张口便就开始讲说：“可是，可是这里这么的阴森恐怖，会不会是又出现了魔气呀？”

    小脑袋的话语说完以后，似乎是又想起了什么恐怖的事情。他便就又再次地将脑袋，给缩回进了行者的长袍后面。

    行者只能无奈地，摸起了小脑袋那光秃秃的头，他安慰着小和尚说道：“放心吧，师父可以对你保证，这里根本就没有魔气。”

    听到了行者的话语，小和尚才终于是拿回了胆量。他开始像个大人一般地干咳了两声，终于是又像起了一位男子汉。

    可是行者接下来的话语，却让他快要恨死了自己的这位师父。

    行者说道：“这里根本就没有魔气。因为这里所出现了的，是鬼气。”

    行者的话音刚落，不远处便就传来了一阵狠戾地嘶叫声。

    “念《地藏经》。”

    行者只对小和尚说出了这样的几个字，便就转眼间地消失在了原地。

    但小和尚似乎对这种事情很有经验，他规规矩矩地盘膝坐在了地上，双手合十便就将经文给念诵了出来。

    无上甚深微妙法

    百千万劫难遭遇
','   我今见闻得受持

    愿解如来真实义

    南无本师释迦牟尼佛

    南无本师释迦牟尼佛

    南无本师释迦牟尼佛

    南无大愿地藏王菩萨

    南无大愿地藏王菩萨

    南无大愿地藏王菩萨

    ……

    小和尚就那样慢慢地念诵着，身上便就开始散发出了一轮光圈，那轮光圈荡漾着涟漪，慢慢地竟然是向四周蔓延了开来。

    远处的天空荡起了一丝异动，伴随着一阵好似龙吟的声音，行者和一位黑影又出现在了小和尚的身侧。

    此刻的行者身上阴气缠绕，却都被他用那强横的内力给逼除在外。但对面的黑影也同样不好过，它半跪在了地上，鲜血不断地从嘴角涌出。

    行者慢悠悠的开口：“我先前还在奇怪，此地阴气如此浓郁，鬼物却怎会如此稀松平常的。原来是因为这里，有着牧魂人的存在。”

    好似受了很严重的伤，黑影强撑着虚弱的声音，也同样是阴恻恻地开了口：“倘若今日有着大智贤僧在此，再加上你这位守护武僧深不可测的实力，我恐怕还真得是要命丧于此。但是现在就只凭你，带着这样的一个小家伙，我虽然是战胜不了你，可你觉得你能够拦得住我吗？”

    黑影又继续阴恻恻地说道：“看来佛门果真是没有人了呢，一个守护武僧竟然是在试图着，带领出来一位大智贤僧，如此的可笑。”

    行者没有反驳，似乎对方所讲说出来的话语，都是如今佛门现实的情况。行者只能慢慢地看着那道黑影，最终所消失在了原地，良久以后他才缓缓地抬起头，又再一次地看向了远方。

    “倘若你还在，佛门又怎会是如此地衰败。”

    地藏经还在继续地念诵着，小和尚好似根本就注意不到外界，先前所发生出来的一切事物。许久以后伴随着一句“阿弥陀佛”的落下，小和尚这才开始缓缓地睁开了眼睛。

    “师父，地藏经我已经是念诵完了。”小和尚认真的表情向着行者说道。

    似乎有些光亮融入到了小和尚的体内，他兴高采烈地看着那些，好似是萤火虫一般的场景，手舞足蹈。

    良久以后他才回过了头来，他问起了行者：“师父，这些很漂亮的东西，它们都是一些什么啊？”

    行者露出了一丝笑容，耐心地对着他讲解：“这些东西都叫做功德，只有着心地最为善良的人，他们才所能够拥有的东西。”

    小和尚又问道：“那我就是这个世界之上，最为善良的人吗？”

    行者摸了一下他的头，对他说是的，他就是这个世界上最为善良的人。

    小和尚欢喜地便就跑开了。
','    最为善良的人，或许也就真的，只有了这个还未入世的孩子吧。

    行者又看向了那个小孩子。他似乎是在自言自语地说着：“同样是拥有着百年难遇的慧根。可是云水啊，你何日才能够如他那般地优秀呢？”

    行者背起了行囊，又唤来了那个叫做云水的小和尚。

    行者说道：起身吧，我们还有着很长的路程要走。
',10022,10064);
insert into ds_book values(null,10065,'钟声响彻了云霄。

    那位叫做云水的小和尚，提起了一桶水，便就浇在了院里的一棵梅树旁边。

    “住持说，要我别那么欢喜，也别那么生气。可要是这样，做人还有着什么意思呢？”

    “佛说四大皆空，佛说无欲无求，佛说我眼睛里面所看到的一切，全部都是虚妄。可你开花的样子真的很美，难道这也是虚妄吗？”

    叫做云水的小和尚，仿佛是在自言自语地说着。又或许，他觉得眼前的这棵梅树，应该是能够听懂自己的话语。

    寺院里的主持，刚好就从云水的旁边走过，他笑着对云水说让他放空心神，不要再胡思乱想。

    可是云水又将问题拋向给了主持。他问主持，难道这一切真的都只是虚妄吗？

    梅树被风吹动着摇摆了一下，似乎是想要回应着云水，自己并不是虚妄。可主持却只是用手，他摘下了一朵梅花，便就笑着离开了云水的视线。

    佛祖拈花，迦叶悟道。

    可是叫做云水小和尚，却只是摸了摸头。

    “师父说，众生皆平等，万物皆有灵。如果你也有灵的话，那么能不能也现身出来，与我相见呢？那个样子的话，我们便就可以一起前去玩耍，一起前去听从着师父讲经。”

    “可是师父说，你是植物，想要修出来灵性，这是一件异常艰难的事情。”

    “如果你是我的朋友，那该会有多么的好呢。”
','    这位叫做云水的小和尚，又对着梅树在不断地讲说着。似乎这处寺院里面的生活，真的是太过于无趣了，只能够让他所有的思绪，都来对着梅树不断地讲说。

    “云水啊，在此地已经停留了多日，我们也该是要离开了。”行者的声音，忽然传入到了云水的耳朵里。

    于是云水便就放下了木桶，他欢喜地跑向了行者。辞别了主持以后，行者又带起云水踏上了行程。

    如此地访山拜水，直至为他寻觅到一位良师吧，行者如此想到。

    斜阳似乎染上了一层雾蒙蒙的衰落，不一会儿雨水，便也就浇灌在了这片苍凉的土地。

    远方，一处陡峭的山崖之上，一群猴子们此时，正在围绕着一块大石头。它们叽叽喳喳地，似乎是在诉说着，人类们根本就听不懂的话语。

    可是忽然之间，天空便就开始电闪雷鸣，一道雷电从上而下地，直劈在了这块石头之上。众猴们就又开始叽叽喳喳地，随后一哄而散。

    石头忽然间地炸裂了，从里面蹦出来了一个，似是猴子又似是人的生物。

    “嘿嘿。嘿嘿。”他桀骜的眼神看着天空，眼睛里面时不时地，便就流露出了一股狠辣。

    又是一道雷电劈了下来，可是他不闪也不避，再次就用身体抗下了这道雷电。

    “贼老天，你所谓的天劫，这也不过如此嘛。再来，再来。”这猴子一般的生物直指着天空，放荡不羁地叫嚣着上天。

    天空之中的云朵慢慢汇聚，似乎上天果真是听到了他的声音，所以想要酝酿出一股，能够毁灭掉一切的力量。
','    那密布的乌云之中，又开始形成了一道漩涡。仿佛下一刻，就要将这里的一切，都全部地就此而毁灭。

    而远处，迷途山。

    一道身体异常强悍的身影，正在看着那云朵汇集之处的漩涡。良久以后，他又似是在喃喃自语地说着：“如此天劫，看来妖族又将要出现大能了。我得要去看看，至少也得要在他还未成长以前，与他交上朋友。”

    “老牛，你在看些什么呢？哦，是那个漩涡吗？又是哪个不自量力的小家伙，在试图挑战起了老天吗？”一位雍容华贵的妇人，缓缓地从房间里面走出，就对着那道身影慵懒地说道。

    “照顾好红孩儿，我要出去一段时间。”这道身影只留下了这样的一段话语，亦是转瞬之间，便就不见了踪迹。

    “挑战老天，呵？竟然还会有妖族，能够和我老牛一样有种。”',10022,10065);
insert into ds_book values(null,10066,'“嘿嘿，贼老天，你还在等着什么呢？你怕了吗？你有种就再往下来劈啊。”那似是猴子又似是人的生物，又继续地叫嚣着上天。仿佛此刻，连这方天地都已经是惧怕了他一般。

        而也就在他如此肆意张狂的时候，旁边忽然就又忽然间地，出现了一个异常浑厚的声音。那声音有些豪迈，但所讲说出来的话语，却让这位正在叫嚣着上天的生物，有了一些想要杀掉他的冲动。
    
        “呵！都已经是达到了如此程度的天劫。小家伙，这上天现在对你，已经有了多么大的怒气啊？”
    
        “是谁，你又是谁？你也想要和俺来打上一架吗？”这生物四处望去，终于是在一处樵石的边上，他就看到了一个身影。
    
        那个身影的体型异常魁梧，但那英俊潇洒的脸上，却有着一道疤痕。
    
        “打架？呵！小家伙，等你活得过这次的天劫再说吧。”
    
        那道身影的话音刚落，天空之中那巨大的漩涡里面，便就降下了一道如同巨柱般的雷电。
    
        “九天神雷。呵！小家伙，你还真是被他们所看得起呐。”那道身影又再一次地张口。说完之后，他便就祭出了一件物品。
    
        那是一件武器，武器的前面，有着三道弯曲的短刃，后面则是一根血红色的长柄。
    
        “红缨枪，这可是我费尽心思才找寻来的，打算送给我儿子的生日礼物呢。但既然上面的那些老家伙们，此时弄出了如此大的手笔，那么就让我老牛来看看，这传说之中的九天神雷，究竟是有着何等的厉害之处。”
    
        说完以后，这道身影也便就冲进了，那一片璀璨的巨柱之中。
    
        ……
    
        远处，迷途山。
    
        “师父，我好渴啊，我都已经好多天没有喝水了呢。”一个小和尚十分颓废地，便就对着身边的一位行者说道。
    
        可是这位行者，却只在看着远处的天空之中，那忽然就出现了的一道漩涡。他漫不经心地，便就对着这位小和尚回答：“我辈曾有苦行的高僧，是可以一年都不吃任何东西的。你这才几天不喝水而已，便就已经是受不了吗？”
    ','        行者依旧是在看着，远处的那道漩涡。九天神雷，究竟是何人在那边渡劫呢？
    
        小和尚也似乎是注意到了，自己师父此时的目光，但他顺着行者的目光看去，却只是看到了远处的乌云密布。
    
        “师父，那边是要下雨了吗？下雨了我们是不是，就能够有水喝了呢？”
    
        小和尚天真的问道。
    
        行者被他的话语给逗笑了，便就摸着他的头，神情无奈地开始回答：“此地名为迷途山，方圆百里都是一种荒无人烟。所以我们不会有水的，只能是从这里慢慢地走出去。”
    
        “可是师父，你刚才说这里是荒无人烟的，可那里又是什么地方呢？”小和尚指着不远的一处洞府。
    
        行者也顺着他的目光看去，那里果然是有着一处洞府，一位小孩子此时就在那处洞府的外面，他正在肆意地玩耍着。
    
        还没等行者说话，小和尚便就自顾自地跑了过去。
    
        “你好，我叫做云水。”他睁大了眼睛，就对着洞府外面的小孩子说道，“我可以和你一起玩吗？”
    
        玩？咳，你不是说口渴吗？行者又无奈地努了一下嘴。
    
        而也就是在这个时候，从洞府里面又走出来了，一位雍容华贵的妇人，她看到了云水以后，便也就眉开眼笑了起来。然后她又对那个玩耍的小孩子说道：“那你就陪着他一起出去玩吧，但是不要跑的太远了。”
    
        这是两个，从来都没有过同龄朋友的小孩子，所以他们很快地便就熟络了起来。行者看着他们两个人的玩耍，不自觉地也就跟随着笑了起来。
    
        这孩子，终于是像个普通孩子了。
    ','       “贫僧自东土而来，带着小徒云游至此，本想要上来讨一碗水喝，但是奈何小徒顽劣，所以多有打扰。”行者双手合十，半弯下腰来对着妇人说道。
    
        妇人也挽了一下发鬓，同样是双手合十地，便就对着行者回礼：“小女子名为铁扇，与丈夫牛魔在此地居住，今日有幸见到高僧，也是小女子莫大的荣幸。”
    
        说完她便就从里屋舀出了一碗水，双手递给了行者。但行者却只是喝了半口，便就又将水给放在了一边。
    
        他唤来了云水，让云水全部都喝了下去。
    
        行者又带起云水，对着铁扇回了一礼，他这才让云水，又与那个孩子一起出去玩耍了。
    
        “夫人可知道那个地方，正在渡劫的是何人呢？”行者指了一下远处的天空，就又开始问询起了妇人。
    
        但是妇人却皱起了眉头。她犹豫了一下，便就对着行者开始讲说道：“如此大的天劫，这必然又会是一位强大的魔修，因为也就只有魔修，才会遭受到天界如此大的针对。但具体的事情我也不太清楚，总之我夫君已经前去查看了。”
    
        而听完了妇人的话语，行者也同样地皱起了眉头。九霄神雷，这可是属于神界的东西。这个渡劫的人，究竟是有着多大的潜力，才会让天界如此地针对呢？
    
        行者又转头看向了云水，脸上的表情愈加复杂。',10022,10066);

		insert into ds_book values(null,10067,'“大哥，抓住我。”
　　天空突发异变，吐火罗将军台上，正值大将军风逆让得道高僧保佑全军将士平安返回时，施法台上风逆头顶猛然一道轰隆响声传开，紧接着一道约莫三米长宽的银光大口浮现。而在银光大口底下一人动弹不得时，旁边一位银光铠甲的男子顿时大喊道。
　　“轮回…”
　　施法台上，当那得道高僧看到这道银白色大口时，大呼一声，竟一屁股坐在地上，不过这个带着草帽的佛僧回神倒也不慢，快速从袈裟里面掏出两颗不起眼的石头，然后猛抛向风逆和狂流两位将军。
　　“两位将军，此乃回天石。倘若坠入轮回，寻得石座，说出你们想要回来的地方和时间，便可重归此地。”
　　话刚说完，在施法台上，早就动弹不了的风逆和狂流两位将军已经在挣扎之后消失不见。
　　惊变过程，电光火石……
　　当然，傻眼的可不止那个得道高僧，甚至在施法台下成千上万的将士和士兵。
　　活活的两个大活人，转眼间…没了？
　　……
　　“嘶…”
　　不知迷糊多久，脑子还晕晕乎乎的风逆刚睁开眼睛时，就这么望着浩瀚的星空默不作声。
　　听到凄冷寒夜中孤狼的嚎声，艰难蠕动着身子靠在一处巨石之下，风逆目光呆滞的望着远处银白色的沙漠恍惚许久。
　　“这是哪儿啊？”
　　拍着发晕的额头沉寂许久，风逆疲惫的目光望向四周，可是在皎洁月光下，这里那还有半点影子？
　　“狂流呢？”','　　瞬时，豆大的汗水就从风逆额边流下。
　　那道银光吞口出现的时候，他还和二弟在一起，怎么现在到这个鸟不拉屎的地方就剩下他一个人了？
　　而且这究竟是怎么回事儿？
　　……
　　闭上眼睛，回想之前发生的一切，风逆不由得面部抽搐。
　　作为大唐帝国在内威震朝野，在外震慑边疆的大将军。远在西边的大食国边疆扰乱，他和二弟狂流出征吐火罗，顺便带回了大食国至宝夜光圣杯。
　　班师回朝途中，他们遇见了吐火罗久负盛名的得道高僧。作为将军风逆和狂流自是希望得道高僧保佑他们顺利返回。可现在倒好，天空中一道口子出现，自己就这么消失在吐火罗了？
　　而且再次醒来，就到了这么个鬼地方？
　　当然，让他无奈又有些欣慰的是在头顶上银光吞口出现时，自己不远处的二弟狂流箭步出现。这倒好，吸力来临两个人都这么都没了。
　　“应该没事，本将现在还活着二弟肯定也死不了。”
　　这或许是风逆最大的慰藉了，毕竟来到这么个鬼都不来的地方也算有个熟人。
　　这样想着，风逆倒是自我安慰的闭上眼睛。
　　“夜光圣杯，回天石。”
　　闭眼同时突然想到这两个东西，风逆顺着怀中一探，发现此二物还在当即唏嘘一口气。
　　夜光圣杯还好，这个所谓的回天石可是至重之物，自己能不能从轮回中回去可就全看它了。
　　可是手握这个表面上坑坑洼洼，并且充斥着奇怪纹路的石头，风逆实在是头疼，最后那个得道高僧的话他是听清楚了。
　　“轮回？这是什么鬼意思？”
　　他小时候和二弟狂流并没有读过私塾，这个得道高僧所说的轮回可算是把他难住了。
　　“算了，还是找个人问一下。”
　　闭着眼，风逆痛苦哀嚎一声。现在来看，自己明显是被那道口子带到了荒无人烟的沙漠，这里怎么会有人家？
　　……
　　“老人家，这是什么地方啊？”
　　两天后，当风逆拼尽所有力气离开沙漠，最后一头躇在沙漠边缘的灰色栅栏时，幸亏遇见了路人，看到这个风逆，才将他给安置下来。
　　一日后醒来，这是风逆的第一句话。
　　“小伙子，估计是在剧组走迷路了吧，不过像你这么敬业的古装演员，老头子我倒是第一次见。”
　　风逆缓缓坐起时看到在自己身边的一幕幕，风逆简直不敢相信自己的眼睛。
　　尤其是这个老汉、
　　这说的是什么话？穿的是什么衣服？这吃的……当然，吃的还是可以理解的。还有那一面透明板上放的是个什么东西？里面竟然穿着和自己差不多的衣服，可是这说的话自己根本就听不懂啊！
　　这都是些啥玩意儿？
　　“小伙子，你应该是南方人吧，听你这口音，可不像我们这边的。”
　　老汉还是在说一些稀奇古怪的话。
　　“管不了了。”','　　从三天前开始到现在，这恐怕是他这辈子见过的最意想不到的事情。现在的他胸口发堵，他迫切的需要知道一切事情。
　　“摄魂。”
　　嘴里诡异念叨，当这个约莫六十岁的老汉转过头的时候，风逆的视线瞬间和老汉的目光对视在一起。
　　一时间，那个老汉和风逆皆是纹丝不动。
　　……
　　“老头子，你这是咋了？”
　　旁边，看到老汉在原地动弹不得，这老头老伴顿时喊道。这一喊，老汉一个机灵而风逆亦是浑身颤抖，吓得老汉和老伴连话都没敢说。
　　好不容易平静下来，这不，风逆又一头扎到在床。
　　……
　　“二零一零年、还是中国、二十一世纪。”
　　醒醒沉沉两个来回，饶是风逆的实力都有些不支。可两天后醒来，风逆不得不接受一个让他骨头都开始冰冷的现实。
　　现在并不是开元十二年，而是公元二零一零年。尼玛，公元二零一零年，自己跑到后世了？而且还是隔了一千二百多年之后的后世。
　　那道银光吞口想要作死自己也不是这么个作死法吧，这都可以？
　　“老姨，老伯呢？”
　　醒来后，现在这里的一切他倒是能接受些许，看到在家里面打扫卫生的老妇，风逆微笑说道。
　　“咦？你会说我们这边的话？”
　　老妇看到风逆醒来，而且说着自己能听懂的话也是高兴，虽说现在风逆的样子吓人了点。
　　可不是吓人嘛！
　　从大唐帝国过来的大将军，浑身的彪悍之气，加上一米八五的大个儿，本身就是一尊极具视觉冲击力的机器。
　　而且那是唐朝啊，过肩长发披散，加上因为在沙漠几日的煎熬，本来是唐朝美男子兼护国大将军的风逆，现在可是要多狼狈有多狼狈，要多吓人有多吓人。
　　“哦、他去上班了，在大学里面当历史教授，还得一会儿才能回来。”
　　“原来是个历史教授啊？”
　　嘴里念叨一下，风逆算是明白了，自己摄魂的那个老汉这样来说也算是个有些学识的人了，怪不得自己那天摄魂之后庞大的信息量又让他晕死过去。
　　硬是往脑子里塞那么多东西，能不晕过去吗？
　　好歹现在敲门砖是拿到了，可能不能在这个未知的世界活下来，对风逆来说还真的是个未知数……',10023,10067);
insert into ds_book values(null,10068,'风逆并没有在这个老教授家多呆，甚至连老教授没回来就直接离开了。
　　不过风逆也是个霸气的主，临走时愣是给这个老教授的老伴丢下了一块金条。
　　开什么玩笑，那可是金条，甚至在风逆临走时，那个老妇拿着金条还是颤颤巍巍的。
　　估计以为风逆是从哪里盗墓得来的。
　　……
　　“先下南方吧、”
　　从老教授家里出来，风逆已经穿上在二十一世纪的人眼里还算正常的衣服，一身唐朝金戈战甲着身不笑死个人才怪。
　　当然，按照那老教授的知识来说，他也逐渐明白为什么在这个时代的人说的所谓的普通话他听不懂了。
　　这种话本来就是后来南北大融合时北方民族和南方民族进行民族融合后出现的一种话，这个老教授明知道现在电视上说的那些古装话是后世强加上去的却也看得津津有味。
　　就凭这一点，他还真有些佩服那个老头。
　　可即便话能听懂，这里的生活他还无法适应。
　　在前世虽是金戈铁马，但毕竟是在少数情况下，仅是自己和二弟狂流手下的四大将军便足以震慑绝大部分变乱，所以他正式出战的机会可并不多。
　　且在杭州，他和二弟有一处相当庞大的府邸，说不定现在那个地方还在。
　　当然，一千二百多年过去了，鬼知道那个地方成什么样子。
　　“唉！先剪个头发吧！”
　　漫无目的的走在街上，随手将吃完泡面的垃圾筒扔在地上。在拍了肚子后，风逆忍不住点点头。
　　虽说这个世界他是初来乍到，但风逆觉得后世的泡面还是很尽入人意的，最起码比起他们出征的军粮要强的多。
　　……
　　“我去，哥们你这头发得是有好几年没剪了吧，怎么比一般的女生头发还长？”
　　“废话，要是你生活在大唐，自己也会留这么长的头发。”
　　翻了翻白眼，风逆实在不明白这个世界的人怎么都大惊小怪的，看起来比起他还没品。最起码他还没有在看到后世女子大夏天穿的那么短时大惊小怪的上去摸两把好吧。怎么这些人看见个男人头发长就愣住了？
　　好赖进来这里，风逆还是微笑点头。在这种地方他实在是不知道怎么说话。尽管现在他还能和这个家伙正常的交流。
　　……
　　理过长发，作为唐朝护国大将军的风逆又恢复了往日的威风。
　　尽管这个往日距离现在实在是远了些。
　　剑眉虎目，高挺的鼻梁下面拥有着性感薄呡的嘴唇，一双散发着犀利的眼神盯着四周，似乎周围的温度都下降些许，至于旁边那个理发店的小学徒都忍不住一个激灵。
　　风逆的眼神，委实有些可怕。
　　将钱付过，风逆的目光一直盯在那个从他进门就没话只知道看着电脑的老板。
　　“老板，你这个仪器是不是可以找到很多有用的情报啊？”
　　大步流星走在老板面前，听到风逆这样说道，正在喝水的老板差点没一口水喷在电脑上。抬头一看风逆的模样和年龄，莫名咂嘴。
　　风逆看起来也就是个大学生的模样，而且看起来穿的也很正式的，怎么会问出这么没有水平的话？
　　“呃！是啊。”
　　要不是风逆是他们店里的顾客，这个老板也懒得理会看起来穿的还算顺眼，可是却什么都不懂的土包子。
　　还情报？以为是古代那些家伙出兵打仗吗？
　　“好极了，你给我搜集点情报。帮我看一下唐朝的大将军风逆和狂流是怎么回事儿？”
　　一开口，风逆就说出自己最关心的话题。
　　“风逆狂流？这都一千多年的事情了，你关心这个干嘛？”
　　现在他正在打游戏，这个电脑界面他实在不想退出。
　　不过风逆是何许人也，能够震慑整个大唐帝国，虽说莫名其妙来到这个陌生的世界，但这个家伙脸上一闪而逝的不情愿他还是看清楚了。
　　“老板，好歹我也是你们店里的顾客，这点小事难道还办不成？”
　　口气微微严肃，风逆大将军的脾气是说上来就上来，这个店老板虽说是个壮实的胖子，可是他瞬间能让家伙有一千种死法。
　　在大唐哪还会有人忤逆他？','　　“呃…好吧！”
　　再怎么不愿意，听风逆已经说到这里了，又能怎么样？
　　……
　　“就这么莫名其妙的消失了？”
　　盯着电脑屏幕的信息，风逆额头早就聚起一大块儿疙瘩。这也太……当然，这里面最重要的信息还是底下的一句话。
　　‘传闻大将军风逆和二将军狂流消失后，所攻大食国得之至宝夜光圣杯同时消失不见，一时大唐朝野边防震惊。’
　　“都他奶奶的放什么屁？老子二人消失了李隆基小儿还在想他的夜光圣杯，回去了老子第二天就把他的皇位给摘了。”
　　气呼呼的说道，不过屏幕滚动的时候，看到底下附着的夜光圣杯照片，风逆忍不住吸口冷气。不要说后世的小家伙还真有这么一手，这个东西可不就是在自己背后背着的的夜光圣杯吗？
　　……
　　“怎么？看起来小兄弟好像知道这个东西啊？”
　　“认识，怎么不认识，现在就在我背后的包里呢。”
　　翻翻白眼，风逆讪笑道：“开什么玩笑，这种东西消失的都消失一千多年了，我怎么会知道？”
　　“那兄弟应该对古物算是有些研究吧？”
　　顿时笑眯眯，看到风逆盯着夜光圣杯的样子，这个理发店的老板期待的说道。
　　“这不废话吗？论辈分，我是你爷爷的爷爷的爷爷……都不知道多少个爷爷过去了？怎么会不知道点古物？”
　　凌厉的目光望着店老板，风逆无语想到。可转瞬间，风逆的心里又有些古怪。
　　从刚才他看到这个电脑内容的篇幅来看，夜光圣杯明显占据绝大部分，说明夜光圣杯的价值比起他这个大唐帝国的大将军可要重太多了。
　　难道从大食国掳回来的这个玩意儿真的有这么大的能耐？
　　当然，他能想到这么多，自然是包括刚才看到的那句话。
　　‘后世对于夜光圣杯的探寻一直从未停止，其中大多寻于新疆天山及以西地域。’
　　“从未停止过，难道夜光圣杯存清凉之水柔化月光的事情是真的？要不然怎么会有这么大的诱惑力？”
　　心里莫名想到，关于夜光圣杯的传说，风逆倒也是知道一些。
　　大食国当地人传言夜光圣杯能化清凉之水为月光，照耀世人脸庞时，可以延年益寿，甚至存在一定几率长生不老。
　　但是在风逆看来这纯粹扯淡。狗屁的延年益寿，那个大食国的大将军还不是被自己一剑戳的死翘翘了？
　　这也能延年益寿？那大食国的人还有活到现在的不成？','　　“嗯，倒还算有些了解，但是店家，本将…呃…在下能不能问一句，现在的世人是不是很注重前人留下来的东西？”
　　“你说的是古物？”
　　“嗯、就是古物？就比如说这个东西。”
　　指了指电脑屏幕上的夜光圣杯，风逆一笑。
　　“当然，现在只要能拍卖到五代文物，一些有钱人花多少钱都愿意。可如果是这个东西，说句不好听的，是绝对不会有人拍卖的。”
　　摇摇头，理发店老板讪笑。
　　“为什么？”
　　“开什么玩笑，那可是夜光圣杯啊。要真的发现了，不管传闻是不是真的，就算是千年前大食国第一宝物的名头拿出来，谁不当宝贝一样供着？”',10023,10068);
insert into ds_book values(null,10069,'“的确是唬人的名头！”
　　听见理发店老板这么一说，风逆也是好笑。今天他倒要找个寻身之所看看那玩意儿究竟有没有这么可怕的能耐。
　　可当风逆这么想着的时候，理发店的老板不知什么时候抱出一个看起来有些年头的瓶子。
　　瓶子颜色泛青色，上面勾勒着青细的线条，很入风逆眼睛。这个东西看起来比起他们大唐的一些同等类型的器具要精美很多。
　　“等一下，你现在给我看的东西是不是在唐朝或者是唐朝以前的？”
　　一句话问的理发店老板一脸发抖，难不成风逆也是扮猪吃虎的货色，这可是正宗的青花瓷好吗？
　　“呃…如果是正货的话，它应该是元朝的。”
　　抚摸着手中青花瓷，这个胖子老板一脸恶寒的爱惜着怀中宝贝，风逆顿时摇头。
　　“抱歉了，目前我的学术研究只是到了唐朝的文物，至于唐朝之后的文物，还真没怎么接触过。”
　　说罢，再次盯了一眼电脑，风逆略有些不对劲的从理发店走出来，全然没有听见背后理发店老板满嘴的嘟囔。
　　“扮猪吃虎的货色，懂个屁古物。”
　　……
　　到了这个世界，本来当务之急是找二弟狂流的，但现在风逆却有了别的想法。
　　尤其是想到刚才电脑里所说的后世对夜光圣杯的狂热寻找，风逆就觉得这件事情不简单。
　　他怎么就莫名其妙到了这么个世界？而且还是自己拿着后人狂热的夜光圣杯过来的。难道那个得道高僧所说的轮回也看上这个夜光圣杯不成？
　　当然不是、
　　可若是后世一些大能耐的家伙动用特殊手段将他们带过来呢？夜光圣杯本就是个迷，可若是真的出现了，一切不就好解释多了？
　　但这个想法有让风逆一阵恶寒，后世的人真的能将他捣鼓过来？
　　……','　　现在风逆也管不了那么多了，狂流肯定是找不上了。还是将自己这些事情尽快解决了再说。
　　晚上绝对要试验一下夜光圣杯。
　　……
　　田野上，叮咚泉水流淌，四下眺望一眼，风逆慢慢将背包里的夜光圣杯拿出来。当金灿灿的圣杯出现时，风逆还是有些激动。
　　夜光圣杯要是从杯子形体来说，比起这个世界寻常的高脚杯还要小上一些。而且圣杯的造型颇为奇特，通体黄金所铸的金杯外壁，不知道雕刻着什么稀奇古怪的兽样图案。在这个看起来狰狞的野兽张开的口中，镶嵌着一颗霜白色的宝珠。圣杯内壁，隐约雕刻着什么纹路。
　　这不管是里面的纹路还是外面雕刻的兽样，他是一个都认不得。
　　“大食国这个玩意儿制作的还是有那么点技术含量的。”
　　掂了掂圣杯，风逆一笑，也不害怕一个失手这千百年来世人一直寻找的夜光圣杯就砸在这儿了。
　　“清凉之水？堂堂的夜光圣杯难道就装这个品质的水？”
　　对于这个，风逆持很大的怀疑态度，但步伐还是朝不远处的小溪走去，现在就是他见证奇迹的时候了。
　　……
　　一件让风逆瞠目结舌的事情就这么发生了。
　　轻蹲在小溪边，将泉水灌到圣杯后，圣杯外壁还好。可是内壁，泉水竟然在不到一秒时间变成了岩浆色，好似里面装的并不是水，而是岩浆般。
　　紧接着，圣杯中的液体就散发出浓郁的白雾。虽然无味，但是谨慎的风逆还是把圣杯放止一旁慢慢离开。等到雾气散发后才开始挪动脚步。
　　“应该就是夜光圣杯了吧！”
　　看到圣杯竟能够发生这等变化，风逆还真是说不出的惊喜。
　　虽说杯中的清水都让蒸发完了，可世间怎么会有普通的杯子产生这等变化？
　　当然，现在风逆虽说不知夜光圣杯究竟为什么没有将杯中之水化为月光，估计晚上没有月光的缘故吧！
　　这样想着，风逆的嘴角一抖。
　　“出来吧，这个毛手毛脚的家伙，那么大声音，难道你们以为本将…我听不见？”
　　将夜光圣杯装在背包里放在一旁后，风逆饶有兴趣的盯着从背后远处走来的三个家伙。
　　“洛阳铲，护阳符？啧啧”
　　细眼一扫这三个家伙身上的东西，风逆不由好笑。虽说没有月光，但是那护阳符的光亮也太明显了吧。只是这大晚上的，还能遇见这些人？
　　当然，大晚上的，除了遇见这些摸金校尉外，还能遇见什么？
　　“哥们儿，附近的好东西应该都在你这里吧，我们辛辛苦苦了好长时间，在下面可没看到一点好宝贝啊！”
　　走过来的三人一看都是獐头鼠目之辈，其中一个瓮声瓮气的对着风逆说道。
　　“呃……我可不是干你们这个行当的。”
　　“不要装了，刚才你装进包里的东西我们都看见了，绝对是个价值不菲的东西。当然，估计你包里还有其他宝贝玩意儿吧！”
　　“三个小东西，还赖上本将不成。”
　　听到这三个家伙这么说，风逆又好气又好笑。可紧接一想，风逆的脸色紧接着就阴寒下来。
　　“你们说，你们看见我手里的那个杯子吗？”
　　“应该是夜光圣杯吧！当然，我估计是假的。真的本就是个传说而已。”
　　不怕盗墓的干苦力，就怕盗墓的懂知识。这个家伙看到风逆脸上的阴寒后，并没有一丝胆怯，反倒饶有笑意的猜测着。
　　“你们连这个都懂？”','　　现在风逆都有些佩服这三个家伙。但一想到这三个家伙摸金校尉的身份风逆倒也能接受。成天在地底下钻着，怎么会不知道一点古物？
　　“这样吧，今天晚上我们三个就不多要了，毕竟都是同行。但见者有份，而且这片的宝贝都被你拿光了，只要将那个赝品杯子分给我们就好，不知道小兄弟……”
　　“你们的意思是给了你们夜光圣杯，你们就会放了我？”
　　被这三个家伙逗的一乐，风逆噗嗤就笑出口。三个摸金校尉而已，难道真不知道自己是怎么死的吗？
　　当然，今天晚上这三个家伙这么一说，风逆貌似也没打算让他们活着走出这里。
　　“喏，本来我想说是的，可刚下小兄弟的笑容让我觉得很不自然，所以还是……”
　　说着说着，那中间的家伙竟然从怀中口袋掏出一把黝黑森冷的手枪。
　　竟然是手枪。
　　“嗯，现在也了解你们这个世界的东西，那个东西叫手枪，而且子弹威力大，速度快对不对？”
　　不得不说，风逆的天真可是把这三个家伙打败了。
　　难道手枪在风逆眼中真的没有一点威胁？还是这个看起来穿的还算正常的家伙就是个缺货，什么都不懂？
　　不过都不打紧了，就算是为了个赝品的夜光圣杯，这个家伙都得死。
　　可就在对面三人瞠目结舌时，风逆出动了。脚尖一扭，风逆的身影迅速模糊。
　　开玩笑，那可是枪，就算自己身经百战但后世这些先进的武器他也扛不住。
　　不出动难道等死？
　　不得不说，风逆的速度很快，非常的快，快到那三个家伙只在好笑间便看不到风逆的影子了。
　　“开枪。”
　　一时大惊，一阵噼里啪啦的枪声响起，可风逆受到枪击发出的闷哼声却始终没有出现。
　　“你们活不了的。”
　　陡然间阴冷声音落下，不给这三个家伙考虑的时间，这一次闷哼声倒是响起了。只是风逆不知何时已站在这三个家伙身后。
　　三人身体软绵绵瘫倒在地，风逆的脸上没有丝毫同情，将这几个家伙兜里的现金拿走后。黑夜下的身影就这样消失了。
　　一切平静……',10023,10069);

insert into ds_book values(null,10070,'“你们就等着瞧吧，不出二十分钟，那个女人肯定出现！”

    “诶呦贺少，这么有底气啊，小心你未婚妻生气哦……哈哈哈……”

    某酒吧VIP包厢内，一个富家公子模样的男人翘着二郎腿，得意的脸上沾着几分嫌弃：“什么未婚妻，她不过是顾家的一个养女，能来伺候我那是她的造化！”

    此话一出，周围哄笑声更大，这种旖旎气氛下的男人自然便开始不知天高地厚，下流话也往外冒：

    “贺少你就知足吧，这个顾粤虽然身份不行，但架不住人美啊！”

    “就是就是！那小腰扭的……嗯？哈哈哈……”

    包厢门外，顾粤面无表情的靠着墙站着，听着里面这群人无耻的对话以及放荡的笑声，胸口压了许久的情绪像是忽然找到了出口，迫不及待汹涌而出。

    她深吸一口气，猛地推开门进去，包厢内众人听到动静一愣，纷纷转头看过来，安静两秒之后，贺子成忽然得意开口：“看，我说二十分钟之内一定到吧！”

    他这么一喊，周围人也从视觉上的惊艳中反应了过来，立马捧场的哈哈笑着。

    顾粤嘲弄的勾了勾唇，忽然起身朝包厢中间的贺子成走了过去，她穿着一条黑色长裙，微卷的长发随意的披在头上，手中拎着简单的小包，在包厢闪烁的灯光下，几乎勾住了在场所有男人的视线，原本看热闹的表情也变成了贪婪。

    只见她在贺子成面前站定，抬手从额头向后拢了下头发，红唇微启：“你叫我过来，就是看你现在这幅蠢样子？”

    贺子成闻言脸色一变，左右看了一眼立马站起身：“你敢说我蠢？也不看看自己是个什么东西，惹怒了我，小心我撤了给你爸的全部投资！”

    顾粤之所以答应和这个贺子成订婚，原因就是顾父想要贺家的投资，起初贺子成还藏着尾巴，各种献殷勤，但在几次对顾粤动手动脚都被拒绝、甚至最后一次想用强还被顾粤甩了耳光之后，就彻底露出本来面目，各种无耻。

    听着他这话说了无数遍的威胁，顾粤嗤笑一声：“撤吧，那么大的一笔钱给顾家做投资多可惜，省下来还能去医院给你看看脑子。”

    “噗——”

    有人听出顾粤话中的讥讽，忍不住笑出声。

    贺子成脸上更加挂不住，咒骂了一句抬手便朝顾粤脸上挥过去。

    顾粤没想到贺子成能不要脸到对女人动手的程度，一时间没反应过来要躲，眼看那巴掌要甩在自己脸上，不禁认命的闭上了眼睛。

    想象中的疼痛没有如约而来，顾粤慢慢睁开眼睛，才发现身后竟然伸出一条手臂挡住了贺子成的动作，她还没反应过来怎么回事，就听到一个低沉的声音：

    “贺少，差不多就得了。”

    贺子成满脸的怒意再看清楚说话的人后顿时散去，取之而来的是再刻意不过的讨好：“周、周总，您、您怎么在这？”

    被叫做“周总”的男人表情淡漠，缓缓放下贺子成的手并没有回答他的话，他转过身，正好对上顾粤的视线，语气比刚刚更低几分：

    “还看什么，跟我出来。”

    周斯城说完这话，根本不管其他人的反应，转身便朝包厢门外走去。

    顾粤一愣，显然没明白这位突然从天而降帮自己解围的“周总”是什么意思，但还是下意识的跟了出去。

    贺子成站在她身后，见状立马追上来，一把拉住她的手腕，语气激动：“你认识周斯城？你和他能说的上话么，能不能……”
','   “凭什么？”

    顾粤皱眉看着他的动作，嫌恶甩开，没有回答他的问题却反问道。

    贺子成一听她这话顿时又黑了脸：“什么凭什么，我是你未婚夫，我的事就是你的事——”

    “现在不是了。”

    顾粤开口打断他的话，语气平淡的像是在讨论晚饭吃什么。

    “你说什么？”

    贺子成以为自己耳朵出了问题，略显夸张的问道。

    顾粤抬起头，对上他的视线： “我今天来是要通知你，我们的订婚宴取消了，以后不要再厚着脸皮说和我有关系了。”

    她已经忍够了这个不学无术又色欲熏心的纨绔子弟了，这个念头早就在她脑海中，但真正做出决定却是刚刚在门口听到那些恶心的对话之后。

    贺子成满脸不可置信：“哈哈……我看你是疯了，你敢和我取消婚约，你爸要是知道……”

    “那你就去告诉他吧，免得还要我通知一遍。”

    顾粤说完这话，洒脱的朝包厢外走去，完全不给贺子成任何反应的机会，等他反应过来，顾粤早已没了身影。

    出了包厢，顾粤便侧目找着刚刚包厢中那个帮自己解围的男人，走廊光线暗，她有些看不清楚，正愣神时，身后再次响起刚刚的那个声音：“在找我？”

    顾粤转过头，看见男人略显慵懒的靠在墙上，依旧没什么表情，但那双桃花眼却黑白分明。
','   “周斯城？”

    “怎么着？”

    周斯城挑眉看她，对她这句试探一样的问话觉得意外，不动声色的反问。

    顾粤想了想，再开口：“我是顾常昊的妹妹。”

    顾常昊是顾家的长子，顾粤名义上的哥哥。

    “知道。”

    就是因为认出她是谁，所以他刚刚才回进了包厢、少有的多管闲事一次，毕竟他和顾常昊也算是同学，包括顾粤也见过一次。

    顾粤闻言点了点头，已然了解现在的情况，她向前一步，嘴角勾起笑意：“既然知道，那我能麻烦你件事么？”

    周斯城有些意外，他还是第一次遇到敢张口就麻烦他的女人，表情不变：“什么事？”

    “和我订婚。”

    顾粤语气平常，却说出了一句相当不平常的话，在这个光线不太充足的走廊中，显得格外诡异。

    周斯城沉吟了几秒钟，轻笑着抬起头：“我如果没记错，刚才里面差点打了你耳光的那个，不是你未婚夫么？”

    “刚刚是，但是现在不是了。”顾粤耸了耸肩，如实回答。

    “为什么？”

    “你也看到他都要打我了，我怎么还能继续和他订婚。”

    顾粤嘴角仍旧挂着笑，手里把玩着随身的包包，盯着周斯城看了一会儿，忽然向前一步贴到他的面前，吐气如兰：

    “而且，我现在有更好的未婚夫人选了。”',10024,10070);
	insert into ds_book values(null,10071,'周斯城身边有很多女人，优雅的放荡的，傻白甜的心机深的，几乎每一个都明里暗里的勾引过他，但这样光明正大撩拨他的，面前的女人是第一个。

    他轻笑，微微低下头，温热的呼吸几乎喷洒在顾粤的脸上：“可是对我来说，你并不是最好的人选。”

    他这话不是欲绝欢迎，顾家在A市算不上什么豪门世家，更何况顾粤只是个养女，这些年如果不是顾家老太太护着，她还不知道被顾父当成棋子送到哪去。

    “是不是最好的，也要试过了才知道。”

    顾粤丝毫不因为他的话不悦，反而表情淡定的开始分析：“我虽然不是顾家的亲生女儿，但如果和你订了婚，顾家一定会对我比亲生女儿还亲。”

    顾父一向喜欢巴结各路豪门贵族，就连贺家这种暴发户的企业他都毕恭毕敬，更何况是全城翘楚的周家。

    周斯城这才意识到这个女人是在认真的说服自己，不禁更觉有趣：“可是顾家对我来说，也不是个好的选择。”

    周家门槛高，但也不乏有条件相当的名门千金跃跃欲试，商业联姻虽然没什么意思，但确实拓展商业版图很有效的一个办法。

    顾粤没想到他会这么直白的开口，微微向后退了半步，再次开口：“周总自然有很多名门千金可以选择，可是联姻也是要相互制约的，你不能只看到好处，却闭上眼睛不看坏处啊。”

    “哦？那你倒是说说如果我娶了你，会有什么好处？”

    周斯城曾经和顾家人吃过一顿饭，那天是顾父的生日，顾常昊带了全家人吃饭，周斯城刚巧也在那个会所，于是躲不过顾父的盛情，硬是被拉进去吃了一顿饭。

    那是她唯一一次见过顾粤，但从始至终都没见她说话，安静的像是一个外人，倒是她那个打扮时尚的妹妹，娇滴滴的一直往他身上靠。

    顾粤像是早就准备好了这个答案等着周斯城发问，听到问题后轻笑了一下：“我的好处就是可以完全配合周总的需要，扮演好周太太的角色，满足你的各种要求，重点是，我对你没有任何要求。”

    她最后一句话加重了语气，说完之后又再次向前垫贴近周斯城耳边：“予取予求。”

    周斯城忽然站直身体，抬手揽住她的腰肢直接将人推到身后的墙壁上，单手撑在她的身侧，微咪着眼睛：“乖，直白点告诉我，你是不是看上我了？”

    若是平时面对其他女人，周斯城自然没这个耐心在这里拉扯，但此刻，他也说不清为什么，就是很想听到她直白的答案。

    “是。”

    顾粤没有一丝扭捏，她微微仰头盯着周斯城的瞳孔：“我看上你很久了，你要不要从了我？”

    “呵——”

    周斯城轻笑出声，但那笑容里却没有半分嘲弄，反而满是愉悦：“我倒是第一次听到这么别致的告白。”

    顾粤双手攀上他的脖子，语气比刚刚多了几分撒娇的意味：“那你要不要答应？”

    周斯城看着面前的红唇，低下头不受控制的啄了一下，勾唇：“我考虑一下。”

    顾粤当晚回家已经将近八点，以往这个时候顾家都没什么人，但今天却是难得的竟然还有人在。

    顾父顾母面无表情的坐在沙发上，旁边是正在涂脚趾甲的真正的顾家千金，顾嫣然。

    一见顾粤进门，顾嫣然便阴阳怪气的开口：“呦，闯了那么大的祸竟然还有胆子回来啊。”

    刚刚贺子成已经打来电话告知了顾粤要取消婚约的事情，当然具体为什么他没有详细说，只是重点强调了顾粤态度有多嚣张。
','    顾粤表情淡然，低头走过去开口：“爸，妈。”

    “别叫我爸！我没你这么不知好歹的女儿！”

    顾丛山蓦然开口，声音中满是怒意。

    一旁的孙娴见状也跟着开口，语气严肃：“顾粤，你这次真的是太胡闹了，贺家是多少人想巴结都攀不上的，你竟然敢擅自取消婚约，是打算把你爸的脸都丢光么？”

    顾粤不做声，她早就猜到回家之后会经历这些，奶奶这几天在医院做身体检查，她也确实没选到好时机。

    顾丛山见顾粤不说话更是生气，声调比刚刚更高：“顾家白养了你这么多年，你就是这么回报顾家的，你知不知道因为你我损失了多少钱？”

    听着顾父的怒吼，顾粤心里轻笑，他说的损失，无非是没拿到的贺家后面的投资，可这对于顾父来说，似乎已经完全是他的钱了一样。

    她抬起头，抿唇从包里拿出手机，滑动了几下屏幕，里面很快传出一阵吵闹声，但仍然能听到一个清晰的男声：“……我跟你们说，我根本没想给顾家投资，我又不傻……怎么会看不出顾家老头子就是想卖女儿给我……哈哈哈……”

    顾丛山听到声音一愣，脸色瞬间一变：“这、这是怎么回事？”

    “爸，这是贺子成给我打电话时忘了挂断，我无意中录下来的话。”

    她之所以会去酒吧找贺子成，也是因为这个电话，毕竟就算是翻脸，也要找到合适的时机，但会碰到周斯城，并发生后续的那些事，倒是她没想到的。

    孙娴和一旁顾嫣然听到录音也是一愣，顾丛山胸口更是剧烈的起伏：“好啊这个小兔崽子，竟然瞧不起我们顾家，我还没把他放在眼里呢！顾粤，明天晚上和你妈出去，我马上就给你安排一门比贺家还显赫的亲事！”

    顾粤皱眉，没想到顾丛山竟然已经迫不及待到这种地步：“爸，我——”

    “你什么你啊，姐姐，你可是顾家的女儿，顾家的女儿怎么可能没人要呢，我相信我很快就会有个新姐夫的。”

    顾嫣然开口打断顾粤要说的话，站起身表情得意看着顾粤，满脸的幸灾乐祸。

    顾粤抿唇：“既然顾家的女儿这么金贵，那不如明天就让妹妹代我去吧。”
','   “你说什么？”

    顾嫣然脸色一变，语气顿时尖锐起来：“你竟然让我去见那群垃圾，你以为我和你一样么，我是顾家名正言顺的大小姐，你不过——”

    “嫣然！”

    她的话还没说完，公寓门外忽然传来一个声音，顾粤没回头，但也听出来是谁。

    顾常昊抬手将外套递给走过去的佣人，皱眉看向顾嫣然：“既然知道自己是顾家的大小姐，说话就更要注意分寸，什么该说什么不该说要知道！”

    “大哥……”

    顾嫣然不服气，还要开口顾父却不耐烦的摆了摆手：“行了行了，都回去休息吧，顾粤好好准备一下，明天下班后你妈去接你。”

    被点名的顾粤没什么表情，点头：“是。”',10024,10071);
	insert into ds_book values(null,10072,'顾粤的房间在二楼的最里面，算是所有卧室中位置、朝向最不好的一间，她从五岁时被带回到顾家就一直住在这里。

    最初她还很开心，以为终于有了属于自己的家了，可没想到这里却是一个巨大的牢笼。

    “叩叩——”

    门口传来敲门声，顾粤以为是家里的阿姨，于是穿着刚换好的睡衣直接走过去开门，但没想到门口站着的竟然是顾常昊。

    顾粤敛起表情，语气平静：“你有事儿？”

    顾常昊神色有些不自然，但还是开了口：“小粤，我是想来问问你明天晚上出去吃饭——”

    “吃饭的事情是妈安排的，去哪儿吃，和谁吃，我都不清楚，你如果感兴趣的话可以去问问妈。”

    顾粤打断他的话，像是在解释，但不耐烦的成分也很明显。

    顾常昊抿唇，顿了半晌才开口：“如果你不愿意，我可以去和妈说，取消明天的晚餐。”

    “那后天呢？”

    顾粤微微够了勾唇，单手抓着门把手：“爸妈的目的你很清楚，我躲得过初一也躲不过十五，何必多次一举呢。”
','    在顾家，顾常昊算是除了奶奶以外唯一一个肯和顾粤说几句实话的人，但这几句话实话并不足以改变她的现状，甚至很多时候还会让她更加被动。

    顾常昊明白她话里的意思，顿了一下才又开口：“小粤，爸爸妈妈对你做的事情……我很抱歉。”

    他的语气诚恳，甚至带着几分愧疚，但顾粤听到后，却笑了出来。

    她双手环胸靠在门上：“有什么对不起的，顾家养我这么大，为的不就是这个么。”

    顾常昊蓦然抬起头，听出顾粤语气中的抗拒和嘲弄，一时间心口像是被什么东西抓了一下：“小粤，你要知道我从始至终都是希望你能幸福的。”

    “是么？”

    顾粤挑了挑眉：“那就谢谢大哥了。”

    顾常昊还要再说什么，却被顾粤抢先了：“我要睡觉了，大哥也早点休息吧。”

    话音落下，顾粤看也没再朝门外看一眼，直接关上了房门，嘴角的弧度在转过身的一瞬间彻底消失。

    曾经她也认为顾常昊能站在她的身边，把她从那个深渊中拉出去，可后来她才发现自己太过异想天开了，他是顾家的人，又怎么会违背顾丛山的遗愿。

    *

    次日下班，顾粤才刚从公司出来，便看到孙娴的车子停在马路对面，她知道自己躲不过这一劫，于是深吸一口气走了过去：“妈。”

    “快上车，人家李总已经在等着我们了。”

    孙娴急急的开口，不时的看着时间，上车之后才发现顾粤的穿着很平常，于是皱眉：“不时告诉了你今天晚上有聚餐，怎么还穿成这个样子。”

    “我——”

    “算了算了，没时间换了，穿什么也无所谓。”孙娴打断顾粤的话，烦躁的开口。

    顾粤见状也没有再多说，车子一路前行，眼看要到了餐厅，孙娴突然盯着她的嘴唇说道：“你的嘴唇怎么这么干，快喝点水润一下，然后再涂点口红。”

    顾粤以为她是担心自己这样人家不满意，索性也没说什么，结果孙娴递过来的水喝了两口，又拿出小镜补了个妆，便下车跟在我孙娴后面朝餐厅走去。

    眼看到了餐厅门口，孙娴忽然停下，有些反常的对顾粤笑道：“我呀，我把要给李总带的礼物忘在车子上，小粤，你先跟着经理进去包厢打招呼，我马上过来。”

    “可是——”
','    顾粤想说她根本不认识哪个是李总，怎么打招呼，但话没说完孙娴便已经匆匆离开，餐厅经理就在这时推开门：

    “顾小姐，里面请。”

    顾粤隐隐感觉到哪里不对劲，但看着面前的经理也只好跟上去，但心里却多了几分防备。

    “这边走，顾小姐。”

    经理满脸赔笑，在前面引着顾粤朝餐厅最里面走去，边走边解释：“顾太太定的包厢在四楼，是我们这最顶级的包厢。”

    顾粤本想附和他几声，却突然感觉眼前一阵眩晕，她下意识抓了一把经理，后者立马扶住她：“顾小姐你怎么了？”

    “头有点晕。”

    顾粤愈发觉得不对劲，但这会儿已经被经理带进了电梯，她撑在电梯扶手上，却觉得浑身没有半点力气，而旁边的经理也不像刚刚那样殷勤，反而向后退了两步，拿出手机快速滑动，像是在通知谁一样。

    通知？

    顾粤脑子里蹦出这个词的同时瞬间反应过来这是怎么回事，电光石火间忽然想起了刚刚进餐厅之前孙娴给她的那杯水，那水有问题，孙娴下了药！

    想到这顾粤狠狠攥紧双手，忍着眩晕看向经理：“你们……想怎么样？”

    经理“嘿嘿”笑了一声，转身看她：“想怎么样顾小姐心里怎么会不清楚，我劝你就别挣扎了，攀上李总以后可就是享不尽的荣华富贵了。”

    他说完这话，电梯也跟着停下，顾粤看准时间起身便朝外面跑去，但才走出几步就被经理抓住，他嘴里不干不净的咒骂着，拖着顾粤便拉进了对面的包厢：“李总，人带来了——”

    包厢中坐着几个挺着将军肚、满脸淫笑的男子，都已经喝的醉醺醺，听到动静立马看过来，眼神中都跟着散发出色眯眯的光芒，经理见状立马扔下顾粤退出了包厢。

    顾粤浑身颤抖的看着众人，心里升起无边的绝望，咬牙开口：“滚、滚开——你们不要过来——”

    “诶呦，小美人，你可是让我想的紧啊……”

    被叫李总的秃头男摇摇晃晃的走过来，抬手便来抓顾粤：“要不是你那个养父太贪，非让我再加一百万，我可就早就把你搞到手了！”

    他这话音一落，周围其他几个男人立马跟着起哄：“李总，有这种好事可、可不要忘了我们哥几个啊……”

    “那是当然——啊——”

    李总脸色涨红，满身酒气便朝顾粤压了过来，眼看就要亲到她的脸，顾粤忽然抬腿，用尽全身力气狠狠朝李总双腿间踹过去，直接命中。

    他顿时惨叫出声，顾粤趁机起身便朝外跑，但是奈何身上没有任何力气，才走两步便重重的摔在地上，爬不起来。

    “你个臭婊子竟然敢打李总！”',10024,10072);

	insert into ds_book values(null,10073,'楔子：
        杜幸不知道在阿守心里自己算什么，可对于杜幸来说，阿守这个男人毁了她的一生，让她的生活发生了天翻地覆的变化。
','','',10025,10073);
	insert into ds_book values(null,10074,' 她猛的睁开眼睛，看到了灰蒙蒙的房顶，还是木头的那种，腿还是那么痛，杜幸强忍着挪下床，她穿好鞋子，透过窗户看到外面的院子里一个人都没有，几只老母鸡在慢悠悠的晃游，冷冷清清的。
','','',10025,10074);
insert into ds_book values(null,10075,'杜幸害怕极了，整个人都在哆嗦，她不敢想象这种只会发生在电视剧中的事情真的发生在了自己身上。
','','',10025,10075);

insert into ds_book values(null,10076,'春尽夏至。

    这个季节，江南地区的昼夜温差变的很大。白天还穿裤衩热成狗；晚上却得缩在被窝里冻成寒号鸟。

    江南大学城。

    下午两点十三分，这个点正是学生们上课的时间。宋书航却独自呆在宿舍，电脑桌被拉到床边，方便他用各种姿势观看电影。

    宋书航并没有逃课的爱好――昨晚上半夜天气闷热，睡梦中的他使出一招‘双龙出海’蹬飞了被子。下半夜，气温剧降。浑身上下只有一条小裤衩的宋书航顿时苦逼了，睡梦中的他双手在床上苦苦摸索，寻寻觅觅，却摸不到被子。最后只有缩成皮皮虾状，在午夜寒风的淫威下瑟瑟发抖。

    朝阳升起时，宋书航已成为季节性感冒大军的一员。

    室友已经替他请假了今天的课。

    然后，他吃了感冒药，一觉睡到现在。

    高烧褪去，身体还是有些发虚，这样的状态根本无法去上课。所以，他只能独自一人呆在宿舍无聊的看电影。

    屏幕上，电影的播放进度条缓缓推进。但电影的内容，宋书航却一点都没看进去。

    “药效还没过去吗，好困。”他打了个哈欠，感觉眼皮子有些沉重。

    ‘滴滴滴～’这时，电脑右下角的聊天软件跳动。

    这是有人将他加为好友、或是加入群组的提示。

    “谁加我？”宋书航喃喃道，他伸手在电脑触屏的右下角轻轻一点，提示消息弹出。

    ［黄山真君（＊＊＊＊＊＊）请求添加你为好友。］附加消息：无。

    黄山真君？谁啊，这种奇怪的昵称？

    “是班级里的同学吗？”宋书航暗道，脑海中不由想起了班级中那几个明明已经上大学却还处于青春幻想期的家伙。如果是他们的话，的确会起这种奇怪的昵称。

    想到这里，他点了‘同意’。

    紧接着，又有一条系统消息弹出。

    ［黄山真君邀请你加入群‘九洲一号群’，是否同意？］

    宋书航继续按了同意。

    ‘书山压力大’同意加入‘九洲一号群’。

    ［您已同意加入群组，和群友们打个招呼吧！］还附送有个系统笑脸。

    这年头聊天工具做的越来越人性化。

    一连串的提示弹出后，宋书航谈定的关掉了提示和群聊天窗口――他现在睡意上涌，哪有精力管自己加了什么群？

    反正，他的群设置一直是‘不提示消息只显示数目’，群里聊天不会弹出打扰到他，只会在群组后显示聊天数目。

    等他清醒些后，可以去翻翻聊天记录，便能知道自己加入的是什么群了，还有群里成员的聊天记录也不会丢失。

    眼睛越来越沉重……

    电影进度条依旧顽强的前进，宋书航的意识却越加模糊。

    ＊＊＊＊＊＊＊＊＊＊

    九洲一号群中，见到有新人加入后，群里有潜水成员冒头。

    北河散人：“黄山真君加了位新道友进来吗？已经有一年多没加新人了吧？”

    又有ＩＤ为‘苏氏阿七’迅速回复：“有新道友？道友是华夏哪个区的？在哪个洞府修行？道号呢？修为几品了？”

    这一连串问题，总感觉有什么地方不对劲？

    几乎同时，ＩＤ为狂刀三浪的弹出消息：“新道友性别？是仙子否？是的话报三围、亮个照呗！”

    看到苏氏阿七和狂刀三浪的消息，群里有好几人嘴角抽搐。

    “三浪兄，你果然是属金鱼的吗？”北河散人叹道：“你可别又作死，万一黄山真君又加了位大前辈进来怎么办？”

    三浪这家伙什么都好，有情有义、乐于助人，所以人缘不错――就是平时喜欢口花花，作的一手好死。

    偏偏这家伙幸运值又低的让人发指，每次不禁意间作死时，得罪的总是大前辈。这些闲着蛋疼的大前辈正愁没乐子，自然很开心的折腾起狂刀三浪这个送上门的乐子。

    “跪求不要提‘大前辈’几字，本座心里有阴影。”狂刀三浪发了一排‘泪流满面’的表情。

    四年前他这张破嘴得罪了一位漂亮的‘大前辈’，被折腾惨了……那大前辈一连折腾了他整整一年零四个月。您没听错，是整整一年零四个月啊！想起那段非人的峥嵘岁月，他的眼眶都湿润了。

    三浪才这话才刚说完，群里就接二连三的弹出坏笑表情――毫不掩饰、直白的幸灾乐祸。

    群里显示在线状态的有八人，其中有六人齐齐弹出刷了一排的笑脸。
','    “你们这群幸灾乐祸的家伙，本座记住你们每一个人了，不要让本座遇上你们，否则一定要让你们尝尝本座七十二路快刀的历害！”狂刀三浪恨恨道。他对自己的快刀很有自信，刚才坏笑的六个家伙，单挑的话没有一个是他的对手。

    狂刀三浪才刚说完。

    群里马上又弹上了一个坏笑表情，是苏氏阿七的。

    接着苏氏阿七很兴奋道：“什么时候单挑？”

    显然，苏氏阿七并没有幸灾乐祸的意思――他就是想找人干一架。

    “……”狂刀三浪顿时萎了。

    因为他打不过阿七！

    他修为精深，已达到５品灵皇后期境界，离６品灵君也只有两步之距，但是他打不过阿七。

    他一手七十二路刀法又快又狠，还有快如闪电的身法，但是打不过阿七。

    他号称狂刀，狂起来时连自己都怕，但就是打不过阿七！

    群里的人看到三浪萎了后，又是一串肆无忌惮的笑脸。

    “……”这次，狂刀三浪只能郁闷的发一串冒号。

    群里人闹腾了半天，却没看到新人出声，有些疑惑。

    “新道友不出声？”北河散人出声问道。

    可惜，因为感冒药的药效，宋书航已经再次进入半睡状态。

    这时，苏氏阿七又很开心的发了条消息：“我看了下，新道友叫‘书山压力大’。有听过叫这道号的高手吗？这道号听起来有些像是儒门的行者？真让人期待啊！这些年，儒门的行者隐居的很深，找都找不到。我已经有近百年没打过了他们了！回想起来，儒门的行者比佛门还要打的爽，不仅嘴皮子历害，拳头也够硬。而且打到兴致时还会豪迈吟诗助兴，倍爽！最喜欢打他们了。”

    “阿七，我说，你对新道友的期待永远只有好不好打，以及打的爽不爽吗？”狂刀三浪发了个泪流满面的表情道。这简直是恶霸行为好不好？！

    “呃。”苏氏阿七有些不好意思。

    北河散人坏笑道：“会不会又是个不会用聊天工具的‘大前辈’？”

    他这么一说，众人都感觉这场面很有即视感呢？
','    对啊，差不多四年前似乎也有一位闭关了百多年后出关的前辈，同样好不容易上了聊天软件，被黄山真君加入了群。却因为不会打字，没有发言。

    然后，一位叫狂刀三浪的家伙很开心的在这位前辈面前口花花，又要这位前辈报三围，又要她发照片，又要语音聊天啥的。

    然后……没过几天，狂刀三浪就亲眼看到了这位前辈。那是位很漂亮的前辈，如同夜空中的明月一样耀眼美丽。

    再接着，这位美丽的前辈折腾了狂刀三浪整整一年零四个月，才心满意足的离开。

    狂刀三浪顿时跪了。

    “黄山？”这时，一个叫‘药师’的ID发言。

    莫名其妙的简短消息，没头没尾。

    好在群里的人早习惯了药师简短的聊天习惯――他是在问群主黄山真君人在哪？

    发言简短并不是药师性格高贵冷傲，而因为他打字用的是二指禅加手写，速度贼慢。字数多的时候还容易错，删删写写痛苦无比。所以药师习惯发言能短则短。久而久之，就变成了如今这种惜字如金的交流方式。

    “他加了人后就马上下线了，听说他家那只宝贝大妖犬又负气离家出走了，黄山真君又去追了。应付那宝贝大妖犬可不容易，现在真君肯定忙的很，能上线加人都是难得抽空。”北河散人回道。

    “……”药师。

    “那只能等新道友学会用聊天工具后再聊了。”苏氏阿七感叹道。他们都先入为主，认为新加入的也是同道中人。

    见新道友没有反应，在线的几位见没乐子，也都纷纷潜水了。

    ＊＊＊＊＊＊＊＊＊＊

    大约一个小时后，宋书航稍稍清醒过来。

    “记得刚才有人加我群了吧，好像叫九洲一号群来着？”他低声喃喃，随手点开右下角的聊天工具，拉出九洲一号群的聊天窗口。

    到底是个什么群？

    很快，一个小时前的聊天记录出现在他面前。

    宋书航大概游览了一遍。

    道友？洞府？修为几品？

    还有前辈？真君？本座？追捕大妖犬？

    各种仙侠小说里的专用词汇。

    群里人员的聊天说话方式也很有趣――半古不古，半白不白的。给人的感觉就是现代人试图用古语交流，偏偏又因为古文的功底不及格，导致交流方式很别扭。

    “哧～～”宋书航笑出声来。

    看样子这是个仙侠爱好者建的群？

    哦不，这绝对不是普通的仙侠爱好者群！

    群里每个人都给自己起了个道号，住的地方要称洞府，群主走失的宠物犬都要形容成家里大妖犬离家出走。还有人自称上百年没打过儒门行者啥的，也就是说那人自称已经活了好几百岁了？

    光是看着这些聊天记录就有种好羞耻之感。

    “这种痴迷程度，已经达到了中二病的程度吧，而且是很有华夏特色的仙侠中二。”宋书航暗暗点头。

    看样子，这是个仙侠中二病患者的集中营！

    这便是他对‘九洲一号群’和群里成员的第一印象。

    不过为什么会加他入群？

    他看了下群主黄山真君的资料，并不是自己的同学，自己也肯定不认识他。

    是误加吗？',10026,10076);
insert into ds_book values(null,10077,'都说人不中二枉少年。

    每个人或多或少都经历过那个时期，只是有些人表现出来，有些人则藏在心底。也就是明骚和暗骚的区别。

    宋书航有些少年老成，那个时期来的快，去的更快。

    所以到了初中二年级时，周围男孩还陷在武侠梦、超人梦、仙人梦，整天挥舞着降龙十八掌、超人变身时。书航却早已经对这些不抱任何希望。

    这世界的物理法则是如此的精确，一个人类想要一跃三层楼那么高；双掌一拍打出金龙；内裤外穿就能飞翔都是不可能的事情！

    不过他还是很喜欢仙侠小说、超人电影之类的，或许是他内心深处还是很期望有一天超人啊、外星人啊、仙人啊之类的能出现在他面前吧？

    明明知道不可能，但却莫名其妙的期待着，这便是人类特有的天赋吧？

    宋书航笑着关掉群聊天窗口，不过，他没有退出这群。

    他感觉九洲一号群里的人很有意思，群里那些让人光看到就感觉很羞涩的聊天记录，从旁观者的角度去看的话，意外的很有趣——所以在群主踢人之前，他准备先潜水，看看各种有趣的聊天记录，打发他无聊时的时间。

    电脑屏幕上，电影还在继续，这好像是一部恐怖片。各种惊悚的剧情层不出断，这部电影是天才恐怖片导演的巅峰之作，据说很多大叔级人物都被吓哭过，有很多人表示被吓的不敢去独自去厕所。

    可惜，宋书航依旧没感觉到任何可怕之处，重新拉回进度条看了一会儿后，他又打起哈欠，慢慢的从坐姿变为躺姿，眼皮亦越发沉重起来……

    如果那位天才导演知道自己的电影只有这点效果的话，会哭的吧？

    迷糊间，宋书航做了个美梦。

    是个极爽的美梦，美滴很。有仙人，有超人，有各种仙境。

    长生逍遥，移山倒海，仗剑人间，这是古往今来多少人的梦想？只是随着年龄增长，现实破碎梦想，人们只能将梦藏于心底，不再多想。

    梦终究是梦……

    ＊＊＊＊＊＊＊＊＊＊

    次日，5月21日，星期二，凌晨１点。

    聊天群中，群主黄山真君终于上线。

    他一上来，北河散人便冒头问道：“真君，昨天你加的那叫‘书山压力大’的是谁？在哪修行的？”

    “昨天加的人？你们没和她交流吗？那是本尊一位老友在这个时代生的女儿，好像资质不错，年纪轻轻已经是三品后天巅峰，马上就要步入四品先天了，很了不得呢。”黄山真君哈哈一笑，回道。

    这个时代才出生，那年龄估计不到四十？这个年龄就已经是三品后天巅峰，的确是个天才。北河散人暗暗点头，不过对方取的道号还是很怪啊，‘书山压力大’怎么看都感觉不象是道号。

    北河散人还在想着呢，黄山真君却突然道：“咦？本尊老友女儿的道号不叫‘书山压力大’啊。话说，这书山压力大是毛玩意？”

    “……”黄山真君囧了。

    不是什么毛玩意，是真君您昨天加的未知人类吧。

    他试探着问道：“真君，您不会是加错人了吧？”

    “待本尊看看。”
','    片刻后。

    黄山真君在群里发了一串的冷汗表情：“还真加错了。号码只差中间一位数，本尊将８输成９了。没想到本尊竟然会犯下这种大错。”

    北河散人呵呵笑道：“我就说呢，就算再怎么融入现代社会，也不会有人将自己的道号定为‘书山压力大’啊。”

    黄山真君继续发了一串冷汗表情。

    然后他急忙操作，重新将自己好友女儿拉入群中。

    群消息提示：‘灵蝶岛羽柔子’已加入九洲一号群。

    这名字才符合九洲一号群的画风，一股浓郁的仙侠气息扑面而来。那个书山压力大的名称，绝对是混入的奇怪东西。

    新人一加入，狂刀三浪便马上冒头：“哟，新道友是仙子呐，亮个照，报三围呗！漂亮的话约不约？”

    狂刀三浪早潜水了很久——他虽然是属金鱼的，但记忆力终究比三秒要长点。昨天已经被人提醒过，所以为了避免得辈大前辈，今天他小心翼翼潜水观察情况。

    听黄山真君说新加入的仙子是好友之女，而且修为是三品后天，狂刀三浪便放心了。不是‘前辈’级的人物，他可以尽情的调戏一下，过过口瘾。

    这群里新人很少，他憋的可狠了呢。

    三浪一开口，黄山真君顿时脸都黑了。

    “……”灵蝶岛羽柔子输入一串冒号，然后幽幽的又发了一句：“由于时间不早，所以老夫女儿已经按时打坐练功了。她的号码暂时是老夫在挂机，等着黄山道友加群。咳……早就听说九洲群中三浪道友风流倜傥，能说会道，百闻不如一见。三浪道友，老夫欣赏你，改天请你喝酒。”

    狂刀三浪顿时好生尴尬，调戏妹子却遇上了妹子老爹，这天底下没有比这更羞耻的事了。他好想找个地洞钻进去。

    好在这位前辈似乎性格随和，轻轻一句话就带过此事。

    接着，这位前辈和群里在线的众人打了声招呼，请大家将来多多照顾自己女儿。然后，便潜水挂机去了。

    看到前辈离去，狂刀三浪松了口气，乐呵道：“还好，看样子这位前辈不是开不起玩笑的人。说不定到时候有机会，可以和羽柔子姑娘本人聊聊。”

    “……”黄山真君。

    “……”北河散人。

    药师难得又冒了个头。他是惜字如金的男人，一般很少冒头说话，这次却难得打了四个字：“自求多福。”

    “？”三浪疑惑。

    但惜字如金的药师显然不会再多解释。

    “看新人道号前缀。”北河散人解释道，不作死就不会死，这道理为什么三浪兄永远都不会懂？

    “前缀？灵蝶岛？”狂刀三浪似乎还没反应过来。

    “是的，灵蝶岛！再加上是位前辈，你就没想到谁吗？”北河散人提示。

    半晌后，狂刀三浪恍然大悟，在群中刷了一串‘跪了’的表情：“是那个针针计较灵蝶尊者？”

    灵蝶尊者是一位强大的前辈，他什么都好，正直侠义……就是喜欢和人计较各种鸡毛蒜皮小事，在斤斤计较的道路上已经登峰造极。别人是斤斤计较，他已经是针针计较！

    北河散人气的嘴角都抽了：“我可没这么提醒你啊！”

    黄山真君叹了口气，他实在看不下去了：“三浪，我那老友只是挂机，但还没下线。”

    也就是说……聊天记录可能会被看到。

    不，是一定会被看到的！

    黄山真君实在不能看着三浪继续作死，怎么说也是自己群里的后辈。

    “我擦，完蛋鸟。”狂刀三浪仿佛看到了不久后的未来，灵蝶仙尊登门拜访，然后对他各种虐的场面。他的眼眶又湿润了，这次似乎惹上了一个更麻烦的大前辈了？

    三浪顿时惨叫：“真君，请帮我求情啊！”

    黄山真君给了个冷漠的背影表情。

    群里人不再理会三浪败犬般的叫声，淡定的转移话题。

    北河散人问群主道：“真君，那个‘书山压力大’要怎么解决？”

    苏氏阿七道：“要踢掉吗？毕竟只是普通人，不太好参加我们之间的聊天。”

    “咳，既然被本尊误加了，那也算是一种缘份吧。让本尊算上一卦，看看怎么处理。”黄山真君回复道——主要是他突然将对方加入了群，现在说踢就踢，他岂不是很没面子？

    所以至少也算上一卦做做样子，当个借口，再将人踢掉。

    这样一来显示自己高大上的逼格。

    二来，他前不久突然对卦算学很感兴趣，学了个把月，正手痒的很。无论干什么事之前，都喜欢算上一卦。

    说罢他以身边一本《唐诗宋词》起卦，伸手翻动，运转算卦秘术。冥冥中的力量将一句诗词抽出，形成卦像。

    这次起卦顺利极了，黄山真君自学习卦术来，第一次起卦这么有感觉过！

    他一脸欣喜的看着卦像结果。
','    然后……

    黄山真君面沉如水。

    黄山真君脸色变臭。

    且看那卦像：在天愿作比翼鸟，在地愿为连理枝。

    印象中这诗词是唐朝一个叫白居易诗人写的，很经典，后来经常被人引用来形容爱情？

    顿时，黄山真君感觉自己整个人都不好了。

    比翼鸟你妹，连理枝你妹啊！还愿为连理枝，本尊还不如自挂东南枝去啊！

    难不成他堂堂黄山真君要去和那性别为男的‘书山压力大’演绎一段你死我活、惊天动地的爱情？这不由让他想起了华夏战国时的龙阳君——顿时感觉如吞了蟑螂，倍恶心。

    “这肯定是本尊卦术修为不够，毕竟才学了一个月……所以本尊应该再算一卦！是的，肯定是这样！”黄山真君再次运转卦术秘法，冥冥中的力量再次翻动《唐诗宋词》。

    又有一句诗词被抽出。

    这次卦术秘法运转超级顺畅，黄山真君自我感觉良好，绝对中了！

    他看向卦像。

    然后……

    真君脸色都白了。

    卦像：“两情若是久长时，又岂在朝朝暮暮!”

    暮你大爷！

    “本尊真不信邪了！”黄山真君再次起卦。

    这次感觉更棒，黄山真君感觉自己的卦像修为在这一刻登峰造极！

    这次必中！

    他低头看卦像：“蓦然回首，那人却在，灯火阑珊处。”

    “……”

    “深呼吸，深呼吸。”黄山真君淡定合上唐诗宋诗，四十五度角忧郁的望向天空——真是好惆怅的感觉啊！

    接着，真君淡定的将手中精装版唐诗宋词撕碎，一边撕一边用力点头：“本尊果然没有卦术方面的天赋，天生不是做卦师的料。所以，本尊算出来的卦像肯定都是错误的！”

    他将撕碎的唐诗宋词扔到一边，心里更是暗暗发誓绝不再手贱算卦！

    精装诗词的碎片被扔到一边，真君在群中输入道：“那书山压力大……先留着吧。本尊刚才算了一卦，发现他和本尊有缘，会加他入群不是偶然，而是必然！之后会怎样就看他自己的造化吧。”

    真君用各种卦术方面的词汇搪塞，至于卦像的结果，打死他也绝对不会透露半字！

    妈蛋，就算有缘，那肯定也是孽缘！

    “那便留着吧，反正估计不久后他自己也会退群吧。话说真君卦像结果是什么？”北河散人听说过真君在学卦术，所以很好奇这位前辈算出了什么。

    “……”黄山真君：“那啥，你们继续聊，我有急事先下了。”

    话罢，他迅速下线，留下一脸茫然的北河散人。

    ————————————————',10026,10077);
	insert into ds_book values(null,10078,'太阳高升，时值正午。

    室友知道宋书航感冒没好，让他好好休息，已经又为他补请了一天病假。

    “病情怎么感觉越来越严重了？是不是因为最近缺少锻炼，身体素质变差了？”宋书航道。

    在他身边有一份皮蛋粥，这是室友中午替他带来的。

    “好人呐！”宋书航毫不犹豫的给室友们发了张好人卡。

    睡了不知多久，他早饿的前胸贴后背，几下扒完了皮蛋粥，又打开电脑。

    习惯性打开聊天软件后，便看到了‘九洲一号群’后代聊天数目的红点。

    宋书航好奇的伸手打开九洲一号群，想看看里面的仙侠资深中二群友们一夜都聊了什么。

    凌晨时的聊天记录浮现在他眼前。

    北河散人关于‘新人’的提问、狂刀三浪的作死，有趣的灵蝶岛前辈。还有自称算了一卦，算出和自己有缘的黄山真君。

    看着聊天记录，几人的形象在书航的脑海中丰满起来。

    “原来是加错人了啊，我就说呢，我都不认识这黄山真君。”

    从聊天记录来看，这群还不是谁都能进的样子？入群都还要有人推荐。

    还有，群里这群资深仙侠迷们的年龄似乎都不小，甚至连女儿都有了。

    而且听口气似乎女儿都不小了？那算起来说不定都四五十岁人了，这么大了还中二，他们的女儿还真辛苦。

    刷着群里的聊天记录，宋书航保持着潜水状态，绝对不发言。

    看群员们犯二是很有意思的事情，但如果自己也掺进去的话那算啥？自己又不犯二。

    所以他的打算就是潜水看聊天记录，纯当每日笑话。

    等到哪一天，他感觉这群没意思了，就会退出九洲一号群。

    他自己一直是这么认为的。

    ＊＊＊＊＊＊＊＊＊＊

    不知不觉，十天时间过去……

    ６月１日，周六，儿童节。

    书航的室友都是半住宿半走读的，也就是周一至周五都住宿，周末会回家。所以一到周末，宿舍就只剩他一人孤零零的。

    宋书航的感冒早恢复，就是还有点鼻塞和咳嗽。这咳嗽是寒咳，恢复起来比较麻烦。保养不好的话会咳上个把月。

    周六休息，书航一觉睡到八点才起床，又去食堂吃了点清淡的。

    无事可作便回到宿舍。

    打开电脑后，他习惯性的到九洲一号群看聊天记录，这已经成了他每天打发时间的好方法。
','    不知不觉，加入这个群已经十多天。

    潜水中的十多天时，看到群里人大部分都在聊着到哪个秘境闯荡，收获多少。又或者哪里出现恶鬼妖魔，要么降伏，要么斩杀。

    讲的都跟真的似的。宋书航想，自己要是将这些内容复制下来，再修饰一下都能发到网上当仙侠小说赚稿费了。

    十天时间内，宋书航也认识了群里好几个人物。

    比如很少冒头的群主黄山真君。

    还有从他加群后就没出现过的两位管理员大罗教雨月真君、七修尊者。

    经常在线的‘情报通’北河散人、作的一手好死的狂刀三浪、张口闭口就是打架的苏氏阿七，惜字如金的药师。

    还有一直潜水，就算冒头也只发表情和标点符号的云游僧通玄。据说这位高僧在修闭口禅，不仅不能说话，连打字都不行，最多就发个表情。

    最后，就是在这稍稍有点中二病群里，发言却很正常的灵蝶岛羽柔子。她的号码和宋书航的只差一个数字。托她的福，书航才有机会进入这个九洲一号群呢。

    这些情报都是热情的‘北河散人’向‘灵蝶岛羽柔子’介绍其他群成员得到的。

    ……

    ……

    今天打开九洲一号群，第一眼便看到药师的发言。

    难得，惜字如金的药师开金口：“改良了个基础丹方。”

    这可是加标点有９个字的一句话，宋书航加群到现在都没看药师发过这么长的消息。所以，他很好奇的看了下去。

    药师的消息是凌晨时发的。

    “简化版淬体液丹方：人参三两、枸杞子四两三钱；朝露玄草一两；阳起石三两、女儿香一两三钱……鲜霸王枝一两、九阳赤炎竹切片四两……”

    一连串四十五种药材，其中有比较眼熟的人参、枸杞之类，也有比较生僻的阳起石之流，还有一些根本没听过的什么朝露玄草、鲜霸王枝、九阳赤炎竹之类。

    “按配方比例逐次投入药炉，闷烧约五分钟；投入新药材，继续闷烧约五分钟。注意火候！如此循环，直至药液成糊。成品淬体液色泽为黑，透明，味冲。”

    通俗易懂！

    四十多个药名书航认得不多，他好奇的在网上查了一下。

    丹方中，有三十种是普通的中医药材，都是补气血之类的。

    还有十五种如朝露玄草、霸王枝啊、赤炎竹啊则根本没听过，不会是这位‘药师’和群里的人妄想出来的东西吧？

    “这些家伙病太深了，连药方都搞出来了，不会真有人按药方去做，然后吃下那药糊吧？”宋书航心中暗道。

    他有些担心，因为饭可以乱吃，药却不能乱喝啊！

    乱吃药会死人的吧？要不要劝一下这些中二的群友？怎么说自己都在边上看了十多天呢。

    要是群里有人乱吃药死掉的话，他有点于心不忍。

    他继续下接聊天记录，果然，已经有人按丹方炼药去了！
','   竟然是群里显的最正常的灵蝶岛羽柔子这姑娘，时间在凌晨两点左右。

    灵蝶岛羽柔子：“和老版淬体液比起来少了很多已经稀有的药材，炼药过程也简化了太多。药师前辈，火候要掌握到什么程度？我刚试了一下结果中途就失败了。还有药效的话和过去的比起来差距多少？”

    “效２：１。”药师道。

    药效只有以前的一半，毕竟减少了很多珍贵的药材。但是以这么普通大众化的药材就能配出淬体液，怎么说都赚了。

    “火候和具体闷烧时间自己摸索，解释不了。”药师再次难得的发了句长话，也只有在关于炼丹药的问题上，他才能咬牙多打几个字：“还有，如果妳的‘控火诀’不好，推荐使用控火法宝。”

    “谢谢前辈，我再去试试。”灵蝶岛羽柔子发了个笑脸，便潜水去了。

    灵蝶岛羽柔子最后发言是凌晨两点十三分，如果她后面就去炼丹了的话，算算时间她应该已经炼了好几炉丹药了？

    会死人的吧？本来就是一群中二病很萌萌达了，再吃错药的话，岂不是会变的超级萌萌哒？原本说不定还能再抢救一下，现在吃了药后就根本没救了好不好！

    他终于良心过不去，忍不住在聊天框中输入：“药不能乱吃啊！”

    正当他准备敲回车，输入自己在群里的第一句话时……聊天窗口震动了一下。

    群聊天画面中弹出了个大笑脸。

    却是从宋书航入群来就没冒头过的管理员七修尊者：“配方很不错，我刚同时试了七炉，很轻松就全成功了，成功率是极高。我服用了一些，药效差不多有老款淬体液的二分之一效果还多一点。但配方成本却比老版的降低了十倍。虽然只是最低阶的淬体液，但如今天地灵气日渐稀薄，珍贵药材越加稀少的我们来说，真是个好东西。药师，继续努力。若是能改善三品以上的丹方，那就真是功德无量了。”

    “补充：最重要的是，炼制方法难度大大降低，甚至可以交给练药学徒炼制。”

    七修尊者乃是群里有名的大前辈，实力比黄山真君还要强上一线。而且他在炼丹方面也有极深的造诣，在这个群里可以说是炼丹方面的权威，他的赞扬自然让药师这个后辈倍受鼓舞。

    “谢前辈，我努力！”药师激动的打出了六字以上的一句话，而且速度还很快。

    宋书航嘴角都开始抽搐起来：竟然已经有人炼制服用那‘淬体液’了？
',10026,10078);

insert into ds_book values(null,10079,'幽静的山林鸟语花香，山中溪边清凉的气温也令人倍感舒适。

    一群人在这里忙碌，嬉闹着搭帐篷建营地。

    这是一个由公司同事私下组织的野营活动，当然，全都是年轻人，因为要背着帐篷等装备登山远足，年长一些的人体力不够。

    原本大家是希望公司组织一次野营的，但公司每年都是组团旅游，有导游开大巴的那种，所以今年，很多同事干脆不跟随公司一起，反而是让几个有户外经验的同事领头自己组织，所以也有了这次登山野营。

    计缘入职这家软件公司才两年，头发都还乌黑满顶，自然是属于年轻人范畴的，所以这回搭完帐篷正和另一个同事联机玩手游呢。

    “哎哎哎计缘计缘，給大快给大啊！！！！哎！！我死了！”

    “给你大什么用？套上了两秒就倒，还不如给我自己还能逃掉，现在好了，下路送双杀…”

    “我的我的…下把你玩射手，我辅助你！”

    “别别别…我找路人辅助吧…”

    别看这里貌似处于山中，可远处的山顶还能看到基站，两人端着手机玩得起劲，网速没有多少延迟。

    中国自然还有信号极差甚至没有的地方，但大部分人早已习惯了到哪都有信号，这就是基建设备完善带来的底气，让人们不知不觉就忘了信号这回事。

    他们搭建帐篷的位置是在一处地势相对平坦的山丘，边上还有一条清澈的小溪，是野外露营的绝佳地点。
','    来的一共十几个人，一大票人现在都在外头拍照，还有几个在调整自己的帐篷，貌似闲下来的就王刚、计缘和李军。

    王刚准备用石块搭建烧烤用的土灶，望了望营地，也就计缘和李军有功夫了。

    “计缘，大军，别玩游戏了，去找点柴火来，一会马上就要生火了，不然中午就吃冷罐头吧！”

    稍远的位置，有同事朝着两个坐在帐篷口的人喊了一声。

    “知道了！！！”“好的！”

    李军和计缘都回了一声，然后相互看了看，反正已经被队友喷成狗了，也就直接退了游戏。

    两人站起来，朝着边上的林地走去，进入更茂密的树荫范围。

    山林中不缺柴火，落枝到处都是，李军拖着一根大树枝到处走，时不时还甩来甩去，嘴上还“喝喝哈嘿”的嚷嚷，在计缘眼中像个傻子。

    为了防止被传染，也怕被李军的“疯魔”棍法扫到误伤，计缘赶忙离这家伙远点。

    和现代大多数年轻人一样，计缘爷爷辈兄弟姐妹一堆，父辈里计缘老爹是独子，但也有几个计缘的姑姑，到了计缘这一辈则成了独生子女。

    或许是儿孙少了更宝贝，老计家一些“金花、银花、国兴、翠芬”等简单粗暴的命名模式，到了孙子这辈突然诗意了起来，爷爷还请教曾经当了几十年风水先生的姑丈公一起思考，最后取单名一个“缘”字，全家甚是满意。

    “啊！山里的空气就是好啊！！旅游就该来山清水秀的地方！”

    计缘感叹了一句，也不急着捡柴火，而是先在林间逛逛，回程的时候带过来才更省力。

    逛大概才一分多钟，计缘突然发现了前面居然有好几颗粗壮无比大树，视觉上看比周围的树木大了不知道多少轮。

    “大军，大军快来看啊，这有几颗超级粗的树！！！大军！！”

    计缘朝着另一边喊了一声，发现那货还在刷棍，也就暂时没再理会他，打算自己先走过去瞧瞧，一会带大家来看看。

    到了近处，计缘对这些树有了更直观的感受。

    仅是最外面的这颗，就有许许多多的外露根部，在地上盘根错节，有些估摸着都有计缘大腿粗。

    ‘哇塞…这还有这么老的树？’

    牛头山算不上多有名的旅游胜地，但来山中郊游烧烤之类的人也是不少的，这么粗的大树照理说也应该有人贴网上的吧？

    不过计缘也就是随便这么一想，然后转到了被外面的大树挡住视线的另一侧。

    “咦！！”

    疑惑的声音从口中发出。

    那一面除了能看到另外几颗同样粗壮无比的古树，居然在几棵树的中间看到了一副棋盘，确切的说，是一节上头摆着棋盘的树桩。

    计缘下意识的往前走几步，到了棋盘所在的树桩边上。

    左右看了看，并没有什么提示游客注意的警告牌，当然也没有下棋的人。

    棋盘之上黑子白子纵横交错，黑子如阵，白子如龙，是典型的华夏围棋，还是一副对弈一半的棋局。

    这就让计缘有些好奇了，是不是牛头山这座小山有意做景区开发？

    可是棋盘和周围已经满是落叶和枯枝，间歇散落着鸟粪和烂果，不管是真的对弈还是摆盘装饰，显然都已是很久以前的事了。

    然后视线又扫到棋局后面的一个特别的东西，一颗老树旁有一块锈迹斑斑的物件，因为过度锈蚀已经明显鼓胀变形。

    计缘走近几步仔细瞧了瞧，想了想，感觉像是个锈得夸张的斧头。

    ‘等等！难不成还是传说中的烂柯棋局！？’

    这想法也是把计缘自己给逗笑了，这摆设还真像那么回事，同时也提起了计缘的兴致。

    他重新回到了棋局边仔细端倪，看着满盘的黑白子，原本不是很懂围棋的计缘突然觉得，白子这条大龙越看越别扭，明明可以很连贯，偏偏少了一处贯通，还有种被看似混乱的黑子围杀的威胁感。

    关键是不知为何，那种白龙缺角的感觉看得计缘强迫症都起来了，眼角瞥了几次棋盘边的两个木制棋盒，然后，他鬼使神差般伸手拿了一颗白子。

    这棋子入手十分有分量感，感觉像是拿了一枚铁子，但触感好似陶瓷，计缘掂量了一下，做贼心虚的又左右看了看，伸手将白子落在了棋盘最中心，也就是围棋术语中的“天元”。

    “可以！！这下感觉舒坦多了！”

    计缘拍拍手，从裤袋里掏出了手机，打算拍几张照录点视屏什么的，然后再叫大家来看看。

    只是手机解锁键按了好几下，都没跳出解锁提示。

    “卧槽！！什么情况？真没电了！？”

    手机居然真的是没有电了，并且计缘长安开机键，手机也是震动一下开机又自动关机，再按一下连开机都不跳出来了。

    刚刚玩完手机也至少还有百分之八十的电，这会却在不知不觉间自动关机了。

    计缘转头望望外面，也没有瞧见之前耍棍的大军。

    ‘算了，去拿充电宝吧！’

    带着这个念头，计缘朝着营地的方向走去，没走几步他就发觉天色居然有些昏暗了。

    而走了几分钟之后，计缘就懵了，他看到了那条涓涓流淌的小溪，看到了那块平坦的山丘，只是，营地呢？

    别说公司里的人一个不在，就是帐篷也全没了，这他娘的什么情况？

    这又不是愚人节，而且搭帐篷建营地这么辛苦，傻子才马上拆了搞恶作剧。
','    计缘四处张望一下，看到稍远处的溪边有两个穿着某种制服的人坐在那休息，也就快步走近一点询问一声。

    “哥们请问一下，你们看到前边露营的人去哪了吗？我们刚搭好营地没多久的！”

    两人身子明显抖了一下，被突然出现的声音吓了一跳。

    然后转头诧异的看着计缘，他们刚刚虽然在休息，可也留意着四周的，这人就好像突然出现的一样。

    听到计缘的问题其中一人下意识就开口回答。

    “露营？刚刚？牛头山这两天可没谁露营，都忙着找失踪者呢。”

    “啊？”

    计缘这回答让计缘更懵了。

    “有人在山里失踪了？”

    公司组团来之前可是查过的，这里都没什么事啊，连天气也都很好。

    “是啊，失踪大半个月了，一个叫计缘的年轻人，和公司同事出来露营的。对了你和谁一起来山里的，同伴呢？不知道搜救失踪者这事？”

    搜救队员说话间仔细打量着眼前的人，觉得这人外贸特征有些熟悉，而边上的计缘听到这句话则直接呆住了。

    ‘失踪？我自己？大半个月？’

    计缘的第一反应是感觉荒谬，第二反应则是感到哪里不对劲。

    在惊愕的计缘还没来得及再说点什么，一整强烈的晕眩感传来。

    眼前一黑，计缘就像瞬间失去了所有体力，强烈的虚弱感和晕眩感伴袭来，随着一阵腿软，身子就倒了下去。

    并且在这过程中，计缘身体以肉眼可见的速度瘦下来，嘴唇也好似迅速风化般变得干裂无比。

    “先生？先生你怎么了？小心！！”

    “扶住他扶住他！！”

    “不好！！！快叫增援！！！”

    计缘此生最后听到的声音，是两个搜救队员好似天外传来的惊呼声。
',10027,10079);
insert into ds_book values(null,10080,'牛头山的搜救工作在持续了三周之后结束了，结局是令人痛惜的，二十四岁的大好青年计缘最终没能抢救回来，主要死因是身体缺水，也就是被渴死的。

    据两个发现计缘的搜救队员说，当时天有点昏暗看不清，但刚发现计缘的时候他还能开口说话，晕倒后尽快送医，但在送往医院的路上就已经断气了，没能抢救回来。

    这事对于牛头山的和计缘所在的公司都产生了不小的影响，但受到打击最大的还是计缘的父母亲人。

    只是这一切计缘看不到了。

    。。。

    浑身酸痛无比……身体无法动弹……

    这是计缘意识苏醒之后的最初感受。

    脑子浑浑噩噩的，思维也不太敏锐，仅有的思绪也被浑身上下好似针刺一般的疼痛感所充斥。

    身不能动，口不能言，目不能视，甚至连对外界的感觉都十分模糊，只是感受到越来越强烈的痛苦。

    也不知道过去了多久，那种折磨人的痛觉终于逐渐退去。

    这场煎熬过去，计缘整个人就像一滩烂泥一样瘫软在地上喘息，在轻松了一小会之后，计缘就感觉到有些不对劲了。

    身下的触感坚硬冰凉又比较平整，绝对不是躺在床上，反倒是像躺在地板上，周围的气温有些低，时不时还有轻微的冷风吹过，冻得计缘直哆嗦。

    但也只能身体自发的哆嗦一下了，计缘发现自己现在还是动不了，除了能喘气之外连眼睛都睁不开，这种感觉有些像传说中的“鬼压床”，但又有所不同，至少没能感受到身体受到什么特别的压迫。

    在恢复思维的顺畅和身体的触感之后，计缘就一直处于一种恐慌的状态。

    自己很显然并不在家里或者医院，周围没有任何人声，若说声音的话，只是能听到一些虫鸣和偶尔的鸟叫，鼻子能闻到一股淡淡的霉味。

    这让计缘不由怀疑自己是不是躺在什么野外的马路上，或者什么更糟糕的地方。
','    甚至有可能自己被什么人绑架了，还打了药扔在某个荒宅仓库。

    在忐忑不安中不知过去多久，没有人来没有车往，有的只是一成不变的安静。

    慢慢的，计缘就发现，自己的听觉似乎变得很敏锐，那些高低不一的虫鸣和鸟叫变得异常清晰。

    有时候，如果计缘那会刚好没有被杂念和心中的忐忑影响，听到虫鸣鸟叫时能较为准确的感觉出它们在什么位置，甚至还隐约知道两者间距离多远。

    不过这种听力出众的感觉虽然很神奇，可计缘心里是越来越慌也越来越烦躁的。

    计缘不知道究竟过去了多久，但总觉得已经过去了很久很久的时间，这期间一直没有任何人出现在身边，哪怕真的是绑匪过来也好啊！

    加上身体不能动眼睛也睁不开，这种感觉比被关在小黑屋更可怕，为了不让自己被逼疯，计缘只能不断思考问题，在心里回忆和思索究竟发生了什么。

    跳过自己昏迷的时间，最后的记忆停留小溪边遇上的两个人那，那会自己晕过去的时候还能听到两人的惊呼。

    两人说是在寻找失踪者，已经大半个月了，那么从他们穿着制服看，可能两人是搜救队员，可为什么自己没在医院而在这里？

    是中间发生了什么，还是这两个搜救队员本身有什么不对劲？

    这些问题计缘只能思索和猜测，转而把思绪再放到别的地方。

    而在这之前最不容忽视也是最最关键的，自然是那个诡异的棋局，没有那个棋局这一切都不会发生。

    如果以前的计缘是无神论者，那么现在的计缘显然已经改变了观点。

    不论是出来之后公司营地的消失，还是两个搜救队员的话，以及当时身体在短时间内产生的变化，都是计缘亲历的事实，前两者或许还有作假的可能，可身体的变化却是实实在在的。

    也就是说，当时的自己在外人眼中，确实已经失踪了大半个月，而自己本人的感受则仅仅过去了几分钟甚至更短的时间而已。

    这不由让计缘想起小时候听爷爷讲过的一个故事：

    （传说在古时候有个樵夫，一日上山砍柴偶遇两个老叟在山中下棋。

    于是樵夫就把薪柴和斧子放在树边，站在一旁打算看一会两老叟的对弈，一老叟还笑着掰了半个桃子给他用来解渴充饥。

    看了半天之后，有老叟突然转过头对樵夫说道：“你该回家了。”

    樵夫这才惊觉天色已晚，于是伸手去拿柴担和斧子，却猛然发现干柴早已不见，柴斧更是连斧柄都烂掉了，空余一个锈蚀不堪的斧头。

    有些惊异莫名的樵夫赶紧沿着熟悉而又陌生的山路回家，村落的样子变化颇多，村内熟悉的面孔更是难见一张。

    细细问过，樵夫才知自己竟然在山中待了六十年，家人皆以为自己当年命丧兽口，家中的父母长辈也早已过世……）

    这个故事是小时候计缘最喜欢的故事之一，故事中的老叟流传中是两个仙人，并且在故事发源地还有一座有名的烂柯山。
','  计缘和同事们去野营的自然不是烂柯山而是牛头山，可计缘看到的古树、棋局和锈斧无一不对照了烂柯棋局的传说。

    照此说来，也就不难解释为什么计缘觉得仅仅过去了一小会，外面却已经时过境迁的去了大半个月。

    而且计缘的运气比樵夫好也比樵夫差，好的是他没多久就出来了，外面才过去不到一月，人生还没有太大影响，差的是没有仙人给他吃什么灵丹妙药，所以等于是不吃不喝过了大半月，没直接死透了算老天爷保佑。

    此刻这么想着的计缘，还不知道原来的自己其实早就死了。

    但即便如此，联想完这一切也并没有用去多长时间，计缘很快又被寂寞、惶恐和烦躁感笼罩了，哪怕强迫自己多思考多想一些问题，但那种压抑感依然越来越严重。

    没人说话，没脚步声，没人来……

    时间是那么漫长，没有人，还是没有人……

    越来越焦虑的情况下，计缘现在已经失去了时间概念，不知道过了一小时还是一天，已经不是靠强迫就能让自己冷静下来的了。

    难怪有些西方国家的监狱，关小黑屋会是对囚犯的严重惩罚了，这是对人严重的精神摧残。

    现在计缘的状态不是担忧谁绑架了自己，完全已经变为盼望劫匪快点来，哪怕听到他们的咒骂或者来踢自己一脚也好。

    还是没有人，还是没人来！！！

    ‘快来个人吧！！！快来个人吧！！谁都行啊！！！’

    计缘无数次在心里吼着，他最怕的是根本没有什么劫匪，自己就这么孤独的瘫在一个荒郊野外，除了野兽蛇虫外没有任何人会来……',10027,10080);
	insert into ds_book values(null,10081,'计缘尝试过睡觉，越是想睡偏偏越睡不着，时间是如此的漫长，向来乐观的计缘被孤寂感折磨得绝望。

    “轰隆隆……”

    一阵声势浩大的惊雷突然响起，将计缘吓了一跳。

    这种状态下听雷声，带给了计缘前所未有的感受，仿佛置身天上，感受到了雷霆的舞动。

    这种玄奇的感觉如同闪电透进心扉，将计缘心中的恐惧、焦虑、压抑和混乱感扫去，让他的心宁静下来。

    “哗啦啦啦……”

    没过多久，雨点密集而下。

    计缘眼皮抖动着，耳中听到了一粒粒雨点落下，听清了雨点击打在地面、岩石、花草之上。

    时间像是在这一刻减缓了流速。

    “啪嗒…”“啪嗒…”“啪嗒…”……

    一滴滴雨水撞碎在树叶和地面等处，将声音传递出去。

    雨滴的碎裂在计缘的心间的黑暗中带起涟漪，每一阵涟漪带勾勒出一处声源信息，千万涟漪形成了画卷，树叶、树冠、地面、山石、房屋、瓦砾、花草和雨中逃窜的动物，万物的线条伴随着雨声在脑海中幻化而出……

    没有色彩却立体生动，仿佛计缘正随着每一滴雨触摸大地上的一切。

    雨落听万物，画卷自心开！

    这是一种难以形容的玄妙体验，计缘忘记了一切烦躁，甚至忘记了呼吸，静静的体会着，越是离得近的事物越清晰，离得远了则逐渐朦胧。

    ‘原来自己真的还在山中，原来自己躺在山间的古旧破屋中，是破庙吗…大雨来得很突然啊，好多小动物在仓皇逃窜……好美啊！’

    虽然依旧不能动弹不能睁眼，但计缘的嘴角隐约带着一丝笑意。

    心中的烦躁得到疏解，而且这种不同寻常的听力，也让计缘不由怀疑是不是自己在那棋局上得到什么好处了。

    一小会之后，计缘心头一振，他终于听到了最期待的声音。

    。。。

    山雨中，一群背着盖篷大箩筐人正在快步前进，这种大箩筐有些像古代读书人游学赶考时的书箱，上面带着一块罩布，但体积明显要大得多。

    计缘听不清他们的全貌，只能听出雨滴落下的范围，所以在心中感受到的是人的身体四肢、箩筐和罩子，脸部反而朦胧。

    让计缘有些疑惑的不只是这种大箩筐，这些人有的披着蓑衣一样的雨具，有的则没有，总之完全不像是任何现代雨衣。
','    “快点快点，大家跟上，前面就是山神庙了！！！”

    “小心脚下，雨天山路可滑得很呐！！”

    “后面的跟上，到山神庙避避雨生个火，快点快点！！！”

    ……

    人群中不断有人提醒大家小心，也不断有人催促大家加快速度，也有人会停下来看看后面的人是否都跟上了。

    拐过几颗大树绕过一块直立的山石，领头的男子终于看到了近在咫尺的山神庙。

    “大家伙加把劲，山神庙到了，看看有没有人掉队！！”

    “全在呢！！”

    “赶紧进庙，这山雨太凉了！！”

    一群人说话间加快了脚步，前前后后的冲入了山神庙。

    “呼！！！这雨来的真邪乎，差点没把我淋死！”

    领头的男子是个留着短须汉子，同大家一样身上也滴滴答答落着水滴，他先将沉重的箩筐放下，然后脱下淅淅沥沥的蓑衣。

    活动了一下筋骨看看身后，一个个数过去，总共12个人一个没少。

    “大家把货物放到那边，刘全和李贵把我们的柴碳拿出来，我们生个火暖暖！”

    “好嘞！”

    “那边干燥一点，走走，放那边！”

    “我的衣服得烤烤干了，哎没来得及穿蓑衣。”

    一群人或者搬动箩筐，或者取柴生火，还有人将一块干燥的地面用携带的拂字简单清扫。

    他们是一群行脚商，翻山越岭是家常便饭，遇上恶劣的天气也是事常有的事，所以总会在箩筐内准备干柴木炭等东西，以应对现在这种情况。

    领队的汉子叫张士林，父辈原本是渴望他能苦读圣贤书，将来考取功名踏入士林，为张家光耀门楣，他天生不是读书的料，加上后来家道中落，为了赚取钱财做起了辛苦的行脚商。

    作为领队责任深重，需要顾及全队人的安危，自然也会有一些优待，比如现在大家都在忙，张士林倒是可以揉揉肩膀放松一下，这一点谁都没怨言，张士林的作用大家有目共睹，是个合格的好领队。

    山神庙不大，也就几丈长宽，三面墙还算稳固，除了外头进门处的檐口有所破损外内部倒是没有漏雨，只是两扇大门早已倒塌且不翼而飞，让冷风不时就能吹进来。

    山神庙里面更是破败不堪，到处都是蜘蛛网和野兽粪便，香案上香炉烛台翻倒，贡品更是不可能有的，就连山神老爷的泥像也已经残破到头颅都不见了。
','   “哎，亏了这山神庙还在，哪年要是山神庙倒了，在这牛奎山中就又少个落脚的地方了！”

    计缘将这些人的脚步声和对话全都听在耳中。

    原来自己在山中的山神庙里，牛奎山？应该是口误的牛头山或者方言？

    这么看来这些人可能是驴友，背着敞篷之类的工具，至少绝对不会是绑匪。

    但声音明明很近了，庙也不大，自己可能是在庙的哪个角落，不然他们不可能看不到自己。

    “啊，士林哥，这边有个人！！”

    听到近处的惊呼声，计缘在心头狠狠松一口气，终于发现我了，接下来应该是报警求援然后送自己去医院了，自己这小命应该保住了。

    张士林闻声赶紧绕过山神像，果然看到了后面躺着一个人，行脚商也三三两两聚拢过来。

    山神像后面的这个人双目紧闭一动不动，蓬头垢面衣衫褴褛，不知是死是活。

    最先发现这个乞丐的年轻人走近一步蹲下身来，探了探鼻息摸了摸额头。

    “士林哥，这乞丐还有气，但额头好烫，怎么办？”

    什么怎么办，你脑子秀逗了啊？报警啊！！！

    要不是现在开不了口，计缘真恨不得吼一声，他还没注意到这些人在叫他乞丐。

    张士林皱着眉头，随后叹了口气。

    “荒山野岭的，看样子这乞丐也是熬不了多久了，一会给他口热水看他能不能喝得下吧，哎，这该死的世道！！”

    “哎……”

    “走吧走吧，生火…”

    行脚商们摇着头叹着气，纷纷走开。

    等等！！等等啊！！你们干嘛？你们走开干嘛？报警啊喂！！

    不是吧？不是吧！！！

    这些人的反应和计缘想得完全不一样，令他既懵又慌……',10027,10081);

    insert into ds_book values(null,10082,'大火冲天，噼哩啪啦地映红了半边天，热浪一阵高过一阵地竞相扑来，身边全是奔相告走的人：“走水了！走水了！”

    郁棠两腿发软，若不是丫鬟双桃扶着她，她恐怕就跌坐在了地上。

    “大小姐，大小姐！”双桃被眼前的情景吓得说话都不利索了，“怎么会这样？不是说裴家的护院半夜都会起来和衙门的人一起巡查他们家的铺子，裴家三老爷说今年的夏天特别热情，天干物燥，怕走火，前几天还特意让人在长兴街两旁设了三十八个大水缸，每天都让各家铺子的掌柜把缸里挑满了水，长兴街怎么会走火？那，那我们家的铺子怎么办？”

    是啊！

    她们家的铺子怎么办？

    郁棠两眼湿润，眼前的影像有些模糊起来。

    她居然重生了！

    而且还重生在了她们家铺子被烧的那天傍晚。

    她家庭和美，手足亲厚，顺风顺水地长到了及笄。在此之前，生活中的不如意最多也就是父母不让她爬树下河，拘着她学习女红不让出门而已，记忆因此而显得平顺又温馨，反而印象不深刻。只有这个夏天，一场突如其来的大火烧毁了长兴街所有铺子。她家和大伯父家的漆器铺子也未能幸免于难。不仅是铺子里的材料被烧了，铺子后院的库房和作坊也被烧的干干净净，马上就要交付的货没了，祖宗留下来的那些珍贵模板也没了，郁家因此一蹶不振，从此开始落魄。

    不远处有人要冲进铺子里救火，却被突然坍塌的大梁埋在了火里。

    “当家的！当家的！”女人跑过去要救人，却手脚无措的不知道如何是好，被人拦住。

    也有男子跌坐在地上，拍着腿嚎啕大哭：“这可让我们怎么活啊？”

    郁棠和双桃则被闻讯陆陆续续赶过来的人撞了肩膀，双桃回过神来。

    她忙一把将郁棠拉到了旁边，急切地道：“大小姐，太太还病着，老爷又不在家，您这一句话也不交待的就跑了出来……”

    郁堂也回过神来。

    对于此时的双桃来说，她不过是荡千秋没有站稳，从空中跌落下来，昏迷半天；可对她来说，她已经经历了家道中落，父母双亡，未婚夫早逝，孀居守节被大伯兄觊觎，好不容易逃脱夫家，却在庇护她的庵堂里被人杀死。

    这场大火固然重要，更重要的，却是她母亲的病情。

    她父亲郁文和母亲陈氏鹣鲽情深，就算她母亲生她的时候伤了身子骨再无所出，他父亲也对母亲和她爱若珍宝，从未曾有过罅隙，只是她母亲自她出生之后缠绵病榻，十天之内有七天在用药。他父亲前几天从友人那里得知御医杨斗星告老还乡，特意赶往苏州城为母亲求医问药。

    前世，他父亲无功而返，母亲因为她跌落秋千受了惊吓，病情加重，卧床不起。父亲下决心带着母亲去隐居在普陀山的另一位御医王柏处治病，却在回来的路上遇风浪翻了船，死于非命。

    “走，快点回家去！”郁棠顿时心急如焚，拉着双桃就往家里跑。

    “等一等，等一等！”双桃一面气喘吁吁地跟着她跑，一边面道，“您这是要去哪里？家在那边！”

    郁棠停下脚步，沉默片刻。

    她已经有十年没有回那个位于青竹巷的家了，都不记得从长兴街到青竹巷有一条这样的小路了。
','    或许是因为长兴街走了水，平日里这条僻静无人的小巷也有人走动，只是大家都行色匆匆，抬头看她一眼就面色沉重地和她擦肩而过。

    郁家后堂的院子静悄悄的，几丛挺拔的湘妃竹枝叶婆娑地在月色中静立，长兴街的喧哗和纷乱仿佛是另一个世界的事。

    母亲的咳嗽清晰可闻，隐约间带着些许的嘶声裂肺：“阿棠怎么样了？醒了没有？“

    回答母亲的是贴身服侍的陈婆子：“一早就醒了，说是要吃糖炒栗子才能好。您说，这个时节，我到哪里去给她找糖炒栗子？骗了我一碗桂花糖水喝了，又吃了三块桃酥，这才歇下。”

    郁棠的眼泪一下涌了出来。

    前世，她没心没肺的，母亲常年病着，她也没觉得这是个事，反而借着自己从秋千上落下来骗吃骗喝的，把平日里母亲不让她做的事都做了个遍。等到父亲带着母亲去求药，临出门前她还吵着要父亲给她带两包茯苓粉回来，不然她就不背书了。

    “姆妈！”郁棠站在母亲的门前情难自禁地喊了一声。

    门“吱呀”一声就打开了。

    陈婆子探出头来，一面朝着她使眼色，一面道：“大小姐又要吃什么？这个时候了，灶堂的火都熄了，最多给您冲碗炒米垫垫肚子，再多的，可没有了。”

    郁堂愣住。

    她早已不是那个被父亲捧在手心里，无忧无虑，什么也不知道的小姑娘了。

    陈婆子神色有异，她脑子飞快地转着。

    难道前世的这个时候，母亲的病情就已经不大好了？

    郁棠脸色一沉，望着陈婆子的目光就不由带着几分凝重，她朝着陈婆子做了个跟我来的手势，说话的声音却带着几分小姑娘的娇纵：“我姆妈的病好些了没有？我不是饿了，我是想跟我姆妈说几句话。”

    这样的郁棠让陈婆子非常的陌生，很很意外。她却来不及多想，朝着郁棠点头，说出来的话却是拦她：“太太刚用了药，已经漱洗歇下了，大小姐有什么事明天再过来吧！”

    郁棠伸长了脖子往厢房望。

    刚刚还在和陈婆子说话的母亲却一声没吭。

    显然是不想见她。

    郁棠的心沉甸甸的，她尽量地模仿着自己十五时说话的语气：“那好！我先回去睡了。你可记得告诉我姆妈我来过了。”

    “记得！记得！”陈婆子笑着，若有所指地道，“这风凉露重的，我送大小姐回屋吧！”

    这个季节，哪有什么风和露？不过是找机会私底下和她说两句话罢了。

    郁棠应着，和陈婆子去了旁边自己的厢房。

    因为走得急，被子还凌乱地丢在床上，软鞋横七竖八的，一只在床前，一只在屋子中央。陈婆子低声喝斥着双桃：“你是怎么服侍的大小姐？屋子里乱糟糟的，这要是让太太看见，又要教训你了。”
','    双桃红着脸，转身去收拾房间。

    郁棠拉着陈婆子说话：“姆妈到底怎样了？你别拿话唬弄我。我知道常来我们家给姆妈看病的是济民堂的刘三帖，我到时去济民堂找他去。”

    陈婆子诧异地看了郁棠一眼。

    郁棠是被家里人宠着长大的，虽说没有养歪，但也不是个强势的姑娘，这样咄咄逼人，还是第一次。

    陈婆子不免有些犹豫。

    郁棠自己知道自己的事，说好听点是没有心机，说不好听点就是没有脑子。家里出了什么事，她自然不是依靠，大家也不会对她说。

    她索性对陈婆子道：“你看我的样子，蓬头垢面的，我刚才跑出去了，长兴街走水，我们家的铺子也被烧了。”

    就着如豆的灯光，陈婆子这才发现郁棠衣饰不整，她骇然道：“您说什么？长兴大街走水了？”

    郁棠点头：“铺子里的货都没了，田里要过了中秋节才有收益，还要给姆妈看病，家里没银子了。”

    这话倒不是她唬弄陈婆子的。

    前世就是这样。

    郁家小有薄资，倒不至于两间铺子被烧就落没了。可这次走水，库房里别人订的一批货也被烧了，郁家赔了一大笔银子，父亲之前从朋友手里买的一幅前朝李唐的《松湖钓隐图》也到了要给银子时候，母亲不愿意父亲失望，就做主卖了家里的三十亩上等良田，等到父亲带母亲去普陀山时，又背着母亲卖了家里的二十亩良田……之后父母去世，为了体面的治丧，她又卖了剩下来的五十亩良田。

    祖父分给父亲的产业都没了，伯父那边也遇到事，没办法帮衬她。

    她这才会同意李家的婚事。

    念头闪过，郁棠的神色又沉重了几分。

    她冷着脸道：“姆妈要是有什么事，阿爹回来定不会饶你！”

    陈婆子哭笑不得。

    她是陈氏的陪房，又是陈氏的乳母，陈氏不好，她比谁都着急，比谁都心疼，大小姐居然威胁她。

    可看到这样的大小姐，她又莫名觉得欣慰。

    她想了想，告诉郁棠：“天气太热，太太苦夏，什么也吃不进去，既担心您的伤势，又担心老爷在外面奔波，吃不好睡不着的，人眼看着瘦了一圈，不敢让您知道。”

    郁棠又愧疚又自责。

    前世的她，总是让父母担心，从来没有成为父母贴心的小棉袄，更不要说是依仗了。

    想到这里，郁棠情不自禁地双手合十，朝着西方念了声“阿弥陀佛”。

    前世，她不是虔诚的信教徒，菩萨却垂怜她，让她重新回到了现在，重新回到了父母还在的时候，她定会好好珍惜现在的时光，不让前世的恨事重演，不让这个家支离破碎，亲族离散。

    郁棠泪如雨落。',10028,10082);
    insert into ds_book values(null,10083,'发生了一件这么匪夷所思的事，郁棠以为自己会失眠，谁知道她脑袋挨着枕头，呼吸间萦绕着熟悉的佛手香时，她居然连梦也没有，一觉睡到了天明。

    可她不是自然醒的。

    而是被双桃叫醒的：“大小姐，大太太过来了！”

    郁棠每次起床的时候都有些混混沌沌的。

    她靠坐在床头，睁着一双黑白分明、水气氤氲的大眼睛，半天才回过神来，打了一个哈欠道：“大伯母？大伯母什么时候过来的？”

    说着话，郁棠却一个激灵，完全清醒过来。

    前世，长兴街走水的第二天天还没有亮，她大伯母就过来。说是天气炎热，睡不着，日子难熬，带了针线过来做，实际上却找了借口把母亲和她拘在了家里一整天，直到傍晚，她大伯父和大堂兄忙完铺子的事，给远在苏州城里的父亲送了信去，大伯母这才离开回去。

    就算是这样，大伯母走的时候还特意吩咐家里的仆从，不许向她和母亲透露铺子里的半点消息，留下了大伯母随身服侍的王婆子在家里告诉她做雪花酥。

    她母亲很是欣慰她能有兴趣学点厨艺，就搬了凳子在厨房里陪着，就这雪花酥，把她们母女俩一起拘到了父亲回来。

    父亲回来，对铺子里的事也是轻描淡写的，要不是那幅《松湖钓隐图》，别人家来要银子，母亲还不知道家里没钱了。而她却是等到父母都去世了，才知道家里只余那五十亩良田了。

    长兴街走水的事，她是直到嫁入李家，被李端觊觎，才觉得这是她人生中的一个重要的转折。

    郁棠急急忙忙起身：“大伯母由谁陪着？我姆妈知道大伯母过来了吗？”

    双桃一面服侍着她梳洗，一面道：“天还没有亮就过来了，说是天气太热睡不着，也不让我们吵醒您和太太，由陈婆子陪着在庭院里纳凉。”

    郁棠点头。

    还是和前世一样。

    只是，这一世她不会把这些都丢给家里的长辈了。

    郁棠匆匆去了庭院。

    大伯母穿着件靓蓝色的夏布襦裙，正坐在香樟树下的竹椅上，陈婆子和王婆子一左一右，一个陪着说话，一个帮着打扇。大伯母的神色却恹恹的，黑眼圈非常的明显，一看就是没有睡好。

    她前世心得多大，才会一点都没有觉察到大伯母的异样。

    “大伯母！”郁棠上前给大伯母王氏行礼，眼眶却忍不住涌出泪花来。

    前世，大伯父和大堂兄都因为她的牵连死于非命，大伯母没了依靠，回了娘家守寡，在娘家的侄儿、侄媳妇手里讨生活。大伯母不仅没有责怪她，在她最艰难的时候，还托了在庵堂出家做主持的表姐收留了她。

    “你这孩子，哭什么哭？”王氏看着郁棠叹气，亲自上前把她扶了起来，示意王婆子给郁棠端张椅子过来，然后温声道，“我已经听说了，你昨天去过长兴街了。难得你这样懂事。多的话我也不说了。铺子里的事，无论如何也得瞒着你姆妈。你姆妈身体不好，听到这消息准急。你阿爹又不在家，若是你姆妈急出个三长两短来，你让你阿爹怎么办好？”

    郁棠连连点头，扶着王氏重新坐下，又敬了杯菊花茶给王氏，在王氏身边坐下，道：“大伯母放心，我晓得厉害的。”
','    王氏颔首，觉得今天的郁棠和往日大不一样，不禁打量起郁棠来。

    十五、六岁的小姑娘，怎么打扮都漂亮，何况郁棠是青竹巷里出了名的标致。只是她平日里被娇宠着，看上去一团孩子气，今日却身姿站得笔直，眉眼间透着几分坚韧，澄净的目光清亮有神，整个人像拔了节的竹子般舒展开来，看上去清爽利落，让人看着更是喜欢了。

    王氏暗中赞许，道：“听说你昨天下午撞着头了，好些了没有？”

    郁棠连声道：“我没事！事发突然，当时吓了一跳，很快就好了。”

    王氏却不信，道：“刚刚陈婆子说，你昏迷了两个时辰，醒来之后又说了些胡话，没等双桃去禀告你姆妈，你拉着双桃就去了长兴街看热闹，拦都拦不住。要不是陈婆子稳得住，帮你东扯西拉地瞒住了你姆妈，你姆妈只怕要跑到街上去找你。”

    郁棠心虚，认错道：“是我做得不对。我以后再也不这样了。”

    王氏见她雪白一张小脸皱巴巴的，怪可怜的，顿时觉得不忍，笑道：“好了，我也没有责怪你的意思。只是你姆妈和阿爹只有你一个，含在嘴里怕化了，捧在手里怕摔了，不免多思多虑，你要多多体谅你姆妈和阿爹才是。别人能做的事，你未必就能做。”

    “我知道了！”郁棠乖乖受教。

    或者是心里还牵挂着丈夫和儿子，王氏低声和她说起昨天的大火来：“你大伯父和你大堂兄忙了半夜，带了信回来，说不仅是我们家的铺子，就是裴家的铺子，也都烧得只剩下些残垣断壁了。偏生裴家又出了大事，连个主持大局的人都没有，汤知府如今焦头烂额的，都不知道怎么给朝廷写折子了。”

    裴家是临安城里的大户人家。

    真正的大户。

    不管谁在临安城做知府，正式上任之前都要先去拜访裴家。

    在她死之前，裴家都是临安城最显赫的家族。

    临安城最繁华的长兴街，除了像郁家这样经营了数代人的七、八间铺子，其余的全都是裴家的，城外的山林、良田、茶庄、桑园也有一大半是裴家的。很多人都靠着裴家过日子。

    前世，他们郁家的那一百亩良田，也是卖给了裴家。

    裴家足足富了好几代人。

    从前朝到现在陆陆续续出了二十几个两榜进士，七、八个一品大员。

    到了这一代，裴家的三位老爷都是两榜进士出身。等再过几年，裴家又有两位少爷中了进士。

    裴家的老太爷，好像就是这个时候病逝的。

    郁棠不由道：“可真是不巧了。他们家的老太爷怎么说去就去了！”

    谁知道王氏一愣，反问道：“裴家老太爷吗？谁告诉你裴家老太爷去了？是裴家的大老爷，那个在京城做工部侍郎的大老爷，说是前些日子在京城暴病身亡了。消息才传到临安。裴老太爷一下子病倒了，裴家的几位少爷昨天晚上连夜赶往钱塘接灵，管事们都忙着给大老爷治丧，谁也没空管长兴街的事。”

    郁棠愕然，却也没有多想。

    不管是前世还是今生，裴家都离她太远，裴家的事，她也不过是道听途说，作不得数。
','    王氏感慨道：“长兴街的火，是一下子烧起来的。你大伯父说，这火烧得蹊跷——谁家走水都是从一个地方烧起来，然后蔓延到别的地方。你大伯父怀疑有人纵火，还想去官府里说说。可惜，裴家出事了，汤知府肯定没有心情去管这件事……”

    郁棠听了，心跳得厉害。

    前世，李家就是在他们家出事之后来提的亲。当时她不太愿意，觉得自己还在孝期，议论这件事不太妥当。可大伯父和大伯母觉得，等过了孝期，她都十八了，到时候肯定嫁不了好人家，就和她商量着先和李家定亲，等满了孝再议婚期。

    她不免有些犹豫。李家却派了人来私下里和她说，若是她同意先订亲，李家愿意借五千两银子给大伯父，不要利钱，让大伯父家东山再起。

    长兴街失火，他们家的铺子被烧了，她伯父家的铺子也被烧了。李家来提这件事的时候，裴家正在重修长兴街。地基是现成的，修建铺子的钱却得各家出各家的，若是有人没钱重新修建铺子，可以作价卖给裴家。

    大部分的人都把地基卖给了裴家。

    她大伯父不愿意卖地基。

    那是郁家留下来的老祖业。

    不仅不愿意卖，甚至还想把她父亲留下来的两间门面也建起来。

    可她祖父死的时候，她大伯父因为顾念着她父亲不会经营庶务，四间铺子平分了，两百亩地，一百亩良田分给了她父亲，另五十亩中等地、五十亩山林分给了他。

    四间铺子造价需要四千两银子，就是把她大伯父的田全卖了也只是杯水车薪，连建铺子的柱子都买不齐。

    她听了李家的话，觉得自己这桩婚事好歹能让大伯父一家摆脱困境，没有知会大伯父一声就答应了和李家二少爷李竣的亲事。

    事后，大伯父觉得对不起她，打听到卖粮去九边换盐引能赚大钱，拿了李家的五千两银子去湖广。

    虽然那次大伯父和大堂兄九死一生赚了大钱，可也埋下了后患——大伯父和大堂兄为了给她赚嫁妆，几次进出九边，先是把父亲留给她的那两间铺子重新建了起来，后来又把她家卖出去的良田花了大力气买回来……可大伯父也因此把主要的精力放在了粮食和盐引生意上，不仅和大堂兄在以什么为生的事上发生了争执，还在一次去九边的路上遇到了劫匪，尸骨无存。

    前世的她，养在深闺不谙世事，就算知道长兴街的大火，知道这火烧得蹊跷也不会有什么想法。可此时的郁棠，曾经落入过李家的泥沼里，不知道见识过多少龌龊的手段，就这么听了一耳朵，就知道裴家这侵吞商铺的手段和当年李家圈地时的手段如出一辙。

    只要有机会，就会欺小凌弱。

    一样的心狠手辣，一样的卑劣恶毒！',10028,10083);
    insert into ds_book values(null,10084,'这些往事想起来只会让人心情低落。

    郁棠此生再也不愿意沾染李家，就更谈不上和裴家打交道了。

    她趁这个机会给大伯母吹耳边风：“连裴家的铺子都烧了，我们家的就更保不住了。好在地基还在，有了机会，总能东山再起。至于说铺子里的货，若是赔银子，肯定双倍。若是能找到买货客商和人家好好商量商量，说不定人家愿意宽限些时日，我们再重新给那客商做一批货，或者是能少赔些银子。长兴街走水，是谁也没想到，谁也不愿意的事啊！”

    “话是这么说。可延迟交货恐怕不行。”王氏闻言苦笑，道，“你是个小孩子，平时家里也没人跟你说。这些年来，闽南那边的人出海赚了大钱，杭州城里的人就心动了，有本钱有本事的，就一家出一条船，带了丝绸、茶叶、瓷器之类的组成船队出海做生意。没那么多钱的，就拿了茶叶、丝绸等货入股出海。向我们家订漆器的，就是要出海做生意的。船队已经定下了出海的日子，若是他到期拿不出参股的货物，这生意就黄了。他可不得向我们要双倍的赔偿。”

    前世的郁棠的确不知道这件事，但这世的郁棠是知道的。

    李家在临安城算是新贵。

    他们家从前也有钱，但上面还有个裴家，他们家就有些不够看了。据说往上数三代，李家年年大年初一的时候都要去给裴家拜年的。直到李家的老太爷，也就是李端、李竣家的祖父考中了举人，他们的父亲又中了进士，还和裴家的二老爷是同年，这才慢慢地站直了腰杆。年年的大年初一去给裴家拜年的时候，李家的人能坐在裴家的大堂里喝杯茶了。

    也因为如此，李家虽然显贵了，却没有办法利用手中的权力扩大自家的产业——临安城的山山水水也好，街道商铺也好，多是裴家的，流落在外的原来就少，谁家会没事卖祖业？就算是卖祖业，大家也都习惯性卖给裴家。

    李家难道还敢和裴家争不成。

    可想要在官场上走得远，就不能贪，就得打点上司。这两样都要银子。李家想要更多的银子，就只能把眼光放在外面。

    一来二去，李家就做起了出海的生意。

    当然，出海是有风险的，遇到了海上风暴，往往会血本无归。杭州城里很多人家就是因此而破产。李家的运气却不错，十次有九次投的船队都会平安归来，她端着李竣的牌位嫁过去之后，李家开始暴富。李峻的母亲夸她有旺夫命，李端也因此对她更加纠缠了。

    可笑李竣坠马身亡的时候，李峻的母亲却指着她的鼻子骂她是“狐狸精”，说她红颜祸水……

    往事提起来全是心酸。

    郁棠忙把这些过往都压在心底，继续和大伯母说铺子里的事：“那能不能找那客商商量着由我们家出面，帮他保质保量地买一批货？”

    王氏听了看着郁棠的眼睛一亮，道：“你倒和我想一块儿去了。”

    她如同找到了知己般开始吐槽丈夫：“你大伯父不答应。说郁家百年老字号，不要说临安了，就是整个杭州城里也没谁家的手艺比得过郁家。用次货冒充好货，这种事他干不出来。

    “你大堂兄就说了，江西那边有几家百年老字号的漆货，东西也不比我们家差，若是你大伯父担心让那客商吃亏，亲自去那边一趟，盯着别人家出货就是了。你大伯父又觉得江西那边的货比我们家卖得便宜，这件事要是被别人知道了，郁家百年声誉就会毁于一旦，那些商户为了蝇头小利，宁愿舍近求远也会去江西订货，到时候我们家没了名声不说，还会白白给江西那边的漆货铺子找了买家。”

    郁棠是知道大伯父做生意有些执拗的，不然他上辈子也不会因此在生意上和大堂兄有了分歧，可她没有想到大伯父会这么执拗。

    她道：“那您不妨让大伯父去杭州城走一趟。我听说那些海上生意最喜欢的是茶叶、瓷器和丝绸，漆器、锡器都要得少。有人知道江西那边的铺子手艺不比我们家差，价钱也比我们家低，可过去一趟风险不小，货出了什么问题也不好退换，就算是让给他们又何妨？”

    王氏直点头，心里的算盘却打得噼啪响。

    这话儿子也曾经说过，可丈夫太固执，听不进去。但若是这话由二叔来说，肯定又不一样了。

    王氏就心心念念地盼着郁棠的父亲郁文早点回来。
','    郁棠从十年后回来，年纪阅历在那里，遇事原本就比十五岁的小姑娘淡定从容，何况该发生的事都已经发生了，着急上火也没有用，她的心态就更好了。

    她如大伯母所愿，在家里呆了一天，之后又跟着王婆子学做雪花酥。

    和前世不一样的是，前世她花了两天的功夫才学会做这个点心，这辈子因有上辈子的经验，上手很快不说，还多做两锅雪花酥让陈婆子送给了街坊邻居——前世，她家出事，街坊邻居多有帮衬，她一直记着，心存感激。

    等到她父亲郁文回家，已经是四天后了。

    郁棠刚帮母亲洗了头发，坐在庭院里帮母亲通头。

    陈婆子一面给陈氏打着扇，一面夸奖郁棠：“您看大小姐，多懂事，多孝顺啊！您以后就等着享大小姐和姑爷的福好了！”

    陈氏呵呵地笑。

    清瘦苍白的面孔流露出些许愧疚。

    郁棠的婚事不顺，是因为他们家想招婿。

    前世的郁棠对自己的婚事没有什么想法，一切都由父母做主。可经历了前世的那些事她才知道，若是能招赘，守在父母身边，就是她莫大的幸运和福气了。

    看到母亲这样的内疚，她撒娇般靠在了母亲的肩头，道：“我要找个漂亮的，不要像隔壁阿姐似的，嫁个矮锉子！”

    这是郁棠第一次在母亲面前表现出自己对婚姻的想法。

    陈氏不由大喜，小心地问她：“那，那你愿意招婿？”

    “愿意啊！”郁棠主动积极地参与道，“招婿在家里，我就能一辈子陪着姆妈和阿爹了，家里的事都是我说了算。我为什么不愿意招婿啊？”

    陈氏见她说得真情实意，立刻高兴起来，把郁棠拉到她的面前，语重心长地对她道：“你放心，姆妈和阿爹一定帮你好好看着，不会让我们家阿棠吃亏的，不会委屈了我们家阿棠的。”

    郁棠重重地点头。

    陈婆子看着气氛好，跟着凑趣：“太太可别忘了，要挑个漂亮的。我们家大小姐喜欢漂亮的。”

    反正不指望丈夫有多大的出息，当然是要挑个顺眼的。

    郁棠再次点头：“姆妈要记得！还要长得高，听话。”

    陈氏看她一副无知无畏的模样，笑出声来。

    一身文士襴衣的郁文就是在这笑声中走了进来：“母女俩在说什么呢？这么高兴！也说给我听听呗！”

    “相公！”陈氏的眼睛都亮了。

    郁文的目光也是直直地落在了陈氏的身上。
','    “几天不见，你怎么又清减了。”他关切又有些心疼地问陈氏，“是不是阿棠在家里又闹腾了？还是这些日子太热，你又吃不下东西？要不我让人去街上买些冰回来，让陈婆子给你煮点绿豆水？”

    “不用，不用！”陈氏笑眯眯地道，上上下下地打量着郁文，生怕他出门受了磨难似的，“济民堂的刘大夫不是说了，我这病，受不得凉。你怎么还怂恿着我吃冰。”

    郁文嘿嘿地笑，道：“我这不是觉得能让你松快一刻是一刻吗？”

    这就是她父亲的性格。

    人很好，真诚、乐观、大方、善良、幽默……什么事都大大咧咧，透着几分不以为意，随遇而安。小的时候一心只用功读书，长大了，就依靠自家的哥哥帮着打点庶务，好不容易考中了秀才，觉得读书太辛苦，就不读了。

    不遇到事还好，遇到事，只怕是有些经不住。

    郁棠在心里叹气，上前给父亲行礼。

    郁文这才注意到自家的闺女，有些心虚地道：“阿棠，这些日子阿爹不在家，你有没有顽皮？有没有听你姆妈的话？”

    郁棠经历两世，都很喜欢父亲待母亲好。

    她嗔道：“您答应我的茯苓粉呢？我还等着做茯苓膏呢！”

    郁文听说家里的铺子被烧了，差点急疯了，哪里还记得茯苓粉？

    他语塞。

    郁棠在心里又叹了一口气。

    父亲为了不让母亲担心，哪次出门回家不是光鲜靓丽的？所以她们都没有注意到父亲的心焦。

    这些年，铺子里的收益全给了她母亲吃药，父亲知道长兴街走水，心里不知道怎么煎熬，忘记了给她的礼物也是情理之中的事。

    前世的她，和阿爹大吵了一架，后来阿爹陪她去山外山吃了顿好的，她这才罢休。今生的她，只想怎样为父母脱困。

    “阿爹说话不算数。”郁棠插科打诨，推着父亲往书房去，“我要阿爹藏的那枚青田玉籽料。”

    郁文割肉似的心疼，一边被女儿推搡着走，一边和女儿讨价还价：“我把那方荷叶滴水的砚台给你好不好？或者是上次你说好的那盒狼毫的毛笔？”

    “哼！”郁棠不满地道，“我才不会上当呢！就要那枚青田玉，我要雕个印章，像阿爹那样，挂在腰间。”

    郁文道：“男子才把印章挂在腰间，你是女孩子，挂三事。我给你打副金三事①好不好？”

    家里都快没银子给姆妈买药了，她阿爹还准备给她打副金三事。

    郁棠冷哼。

    陈氏笑得直不起腰来。

    父女俩推推搡搡进了书房。',10028,10084);
    insert into ds_book values(null,10085,'骆笙盯着翠帐缀下的镂花银香球出神，那双往日里顾盼神飞的眸子此刻显得有些呆滞，也因此，耳畔小丫鬟的叽叽喳喳声愈发大起来。

        　　“姑娘，不就是一个苏公子嘛，您瞧着顺眼抢来就是了，为了他上吊不值当的啊，嘤嘤嘤——”
        
        　　骆笙动了动眼珠，看向趴在床头哭泣的小丫鬟。
        
        　　这丫鬟叫红豆，又能说又能哭，这般魔音贯耳已有三日，足以让她大致了解了当前处境。
        
        　　她是权势滔天的骆大都督之女，因惹了祸被送到外祖家，在这里瞧中一名男子，遭婉拒后愤而投缳。
        
        　　这莫不是个傻子吧？
        
        　　“别哭了。”骆笙开口，声音沙哑，喉咙火辣辣地疼。
        
        　　哭音戛然而止，红豆惊喜抬头：“姑娘，您总算肯说话了——”
        
        　　没等红豆再说，湘竹帘猛地被掀起，旋风般冲进来一名少女，身后响起外头丫鬟的惊呼声：“大姑娘，表姑娘正歇着——”
        
        　　冲到骆笙面前的少女毫不客气指着她骂：“骆笙，你还要不要一点脸面了？为了得到苏二公子一哭二闹三上吊，现在祖母让我娘去苏家谈亲事了，你可算得偿所愿了是不是？”
        
        　　骆笙转眸看向怒容满面的少女。
        
        　　十四五岁的年纪，双颊因愤怒染上两抹殷红，朝霞般生机勃勃。
        
        　　红豆直接跳了起来，愤怒比少女还甚：“大胆，你竟敢这样和我们姑娘说话！”
        
        　　少女啐了一口，眼中满是鄙夷：“骆笙，别人怕你我可不怕，有本事就让那些人把盛家上下全都抓起来好了。”
        
        　　盛家丫鬟听了这话脸色骇得发白：“大姑娘，您还是先回去吧，表姑娘还没大好——”
        
        　　惹急了这位表姑娘，说不准真会命那些锦麟卫把盛家上下都抓起来的。
        
        　　锦麟卫呀，无情又冷血，对自己亲族都能下手，外祖家算什么。
        
        　　门口响起少年清朗的声音：“大表姐，你怎么在我姐姐房中？”
        
        　　少女看向门口，语气不自觉缓和下来：“表弟没听说我娘去了苏家吗？”
        
        　　少年走进来，深深看了面色平静的骆笙一眼，才对少女道：“听说了，不过这是长辈做的决定，大表姐来找我姐姐也没用的，还是回去吧。”
        
        　　少女面露惊讶。
        
        　　表弟居然会向着骆笙？
        
        　　骆辰与骆笙虽然是亲姐弟，可是七年前就来到她们盛家养身体，这些年下来阖府上下早把表弟当成一家人了。
        
        　　前些日子骆笙刚来时，她冷眼瞧着表弟对这位亲姐姐不冷不热，如今怎么——','        
        　　不论如何，少女还是给了表弟这个面子，怒瞪骆笙一眼道：“使下三滥手段抢来的亲事，我等着看你与苏二公子举案齐眉！”
        
        　　说罢，少女一挑帘子走了。
        
        　　湘竹帘轻轻摇摆，留下姐弟二人四目相对。
        
        　　十二三岁的少年唇红齿白，生了一副好相貌，只是瘦削的身材与偏白的肤色令他看着有些孱弱。
        
        　　刚刚还为骆笙说话的少年神色陡然变得冰冷，丝毫不掩饰眼底的厌烦与恼怒，咬牙道：“骆笙，你见了有点姿色的男子就要贴上去？能不能有一点羞耻心！”
        
        　　一旁红豆忍不住替自家姑娘抱不平：“苏二公子不是只有一点姿色呢。”
        
        　　她们姑娘是眼光这么低的人吗，只有一点姿色才不会稀罕咧。
        
        　　骆辰未看红豆一眼，依然紧紧盯着骆笙。
        
        　　骆笙终于开了口：“你刚刚在维护我。”
        
        　　她因伤了喉咙声音有些哑，语气却不是疑问，而是笃定。
        
        　　骆辰一怔，那双好看的眸子闪过一丝惊讶，而后就是恼羞成怒：“你不必自作多情，刚刚维护你是因为你到底与我一母同胞，别人指着你鼻子骂难道我脸上就有光彩？现在大舅母去苏家谈你的亲事，只望你以后能装装样子，莫要再丢人现眼！”
        
        　　被亲弟弟一通责骂的骆笙扬了扬眉梢，问道：“你的意思是这门亲事能成？”
        
        　　骆辰再次一怔，脸瞬间气得通红。
        
        　　他骂了这么多，她什么都没听进去，只惦着与苏曜的亲事能不能成。
        
        　　他怎么有这样的姐姐——
        
        　　骆辰紧紧攥拳，愤怒又无力。
        
        　　“这门亲事能成？”骆笙仿佛没看到弟弟的气愤，平静再问。
        
        　　骆辰闭眼，深呼吸，压下拂袖而去的冲动冷笑道：“你使出一哭二闹三上吊的手段逼迫外祖母，外祖母敢不依着你？”
        
        　　盛家与苏家是世交，再加上他们父亲位高权重，大舅母亲自去苏家谈这门亲事，苏家十有八九会答应的。
        
        　　一直倚着床头的骆笙突然直起身，红豆忙扶住她手臂：“姑娘，您要干嘛呀？”
        
        　　骆笙脚已落地，稳了稳有些无力的身子，淡淡道：“去苏家，你带路。”
        
        　　红豆没有多问一个字，立刻脆生生应了一声，扶着骆笙往外走去。
        
        　　骆辰呆立了片刻，急忙去追。
        ','        　　福宁堂院中栽植的橘树尚未开花，屋里传来盛老太太的叹气声：“只望这丫头亲事定了后能安分些，我也能睡几日安稳觉。”
        
        　　一旁妇人是盛家二太太，骆笙姐弟的二舅母，此刻闻言在心中冷笑：有这位表姑娘在，盛家能安稳才怪了。
        
        　　骆大都督遣人把这位表姑娘送来时捎带的信上就提了，请老太太帮骆笙寻觅一门好亲事。
        
        　　想着这事，二太太就恨不得捶大腿：这是要把骆笙嫁在金沙县，从此赖定他们盛家了！
        
        　　盛老太太吩咐前来报信的丫鬟：“叫大姑娘来一趟。”
        
        　　不多时去骆笙那里叫骂的少女走进来，盈盈施礼：“见过祖母，二婶。”
        
        　　盛老太太招少女上前来，叮嘱道：“佳玉，以后不许去找你表姐闹，她在咱们家是客。”
        
        　　老太太想着外孙女，暗暗叹息：那丫头啊，只要不惹祸她就谢天谢地了。
        
        　　盛佳玉颇不服气，正要开口就见一名丫鬟匆匆进来，急声道：“老太太，表姑娘去苏家了！”
        
        　　盛老太太陡然变了脸色，不由与二太太对视。
        
        　　盛佳玉眼中怒焰滔滔，提着裙摆往外跑：“祖母，我去瞧瞧！”
        
        　　盛老太太沉默良久，轻拍着茶几喃喃道：“真是孽障啊。”
        
        　　她温柔懂礼却早逝的女儿怎么就生出这么一个混世魔王呢？',10029,10085);
        insert into ds_book values(null,10086,'与盛府一街之隔的苏家，此时气氛十分紧绷。

        　　屋中是盛家大太太与苏家主母在商议亲事，院子里则站了几个小辈，一个个面带怒色。
        
        　　“二哥，你怎么不进去对娘说呢，万一娘真答应了怎么办？”一名穿绿衫的少女神色焦急，拽着一名少年衣袖。
        
        　　少年约莫十六七岁模样，正是苏家二公子苏曜，在整个金沙县乃至金陵府都是出了名的美男子，有潘安、宋玉之貌。
        
        　　苏曜扶着院中那株花开满树的玉兰，眸光平静望向屋门口。
        
        　　另一名穿石榴裙的少女呸了一声，嗔道：“姐姐不要乱说，就骆笙那种人，娘怎么可能答应呢？”
        
        　　苏大姑娘横了妹妹一眼，声音放低：“别忘了骆笙的身份！”
        
        　　苏二姑娘一滞，忿忿跺脚：“那又如何，咱们苏家也不是平头百姓，难道二哥的亲事还要被人逼迫？”
        
        　　苏家在金沙是望族，耕读传家，百年来出了不少朝廷命官，当地等闲无人敢惹。
        
        　　可是骆笙的父亲是大都督，执掌锦麟卫，又哪里在乎这个呢？
        
        　　苏大姑娘这般想着，有些恼妹妹的天真。
        
        　　这时苏曜开了口：“二位妹妹莫吵了，婚姻大事讲究父母之命媒妁之言，娘会替我打算的。”
        
        　　他声音温和，神色平静，令两名少女越发急了。
        
        　　“娘万一点头呢？”苏大姑娘咬唇问。
        
        　　苏曜目光再次投向屋门口，眸色沉沉：“那便听娘的。”
        
        　　“二哥！”两名少女齐齐喊了一声。
        
        　　急促的脚步声传来，三人望过去，是站在大门处的幼弟跑了过来。
        
        　　苏小弟不过八九岁年纪，因奔跑双颊泛红，大声道：“不好了，骆笙来了！”
        
        　　仿佛来的不是一名少女，而是洪水猛兽。
        
        　　苏曜抚了抚苏小弟的头，温声道：“不要直呼她名字，叫骆姑娘，或者骆姐姐。”
        
        　　骆笙走过来时，正好听到这道疏疏淡淡的声音。
        
        　　温和，却没有多少暖意。
        
        　　苏二姑娘箭步冲上去，挡在苏曜面前，喝道：“你来干什么？”
        
        　　骆笙看着她，像是看到一名义士拦在美貌女子前，呵斥欲要强抢民女的登徒子。
        ','       　　美貌女子——骆笙目光落在苏曜身上。
        
        　　少年穿了一件月白色的长衫，肤色如玉，长发如鸦，清清瘦瘦比身后满树的玉兰花还要夺目。
        
        　　苏曜刚要皱眉，便发现骆笙的视线已经从他身上移开。
        
        　　骆笙盯着屋门口道：“听说我大舅母在与苏太太商议我的亲事，我就来了。”
        
        　　苏二姑娘气得手发抖，指着骆笙骂道：“你怎么说得出这种话！以死相逼盛府来提亲还不够，居然亲自来了，这世上……这世上怎么有你这样寡廉鲜耻之人！”
        
        　　小姑娘眼眶里已经有泪珠打转。
        
        　　她是真的要气疯了，可是偏偏长辈们叮嘱过不能招惹骆笙，说会给苏家惹祸。
        
        　　苏大姑娘握住妹妹的手，看起来稍稍冷静些：“骆姑娘，眼下长辈们在议事，你还是先回去等消息吧。”
        
        　　苏府不欢迎你，你站在这里就是污了苏家的地方。
        
        　　这话苏大姑娘没说出口，却不知在心中盘旋了多少次。
        
        　　“跟我回去！”骆辰追了过来，含怒拽住骆笙手腕。
        
        　　骆笙没有动。
        
        　　在苏家兄妹的注视下，骆辰面上阵阵发热，咬了牙低声道：“你非要留在这里丢人现眼？”
        
        　　骆笙拍了拍骆辰的头，平静道：“我进去说过话就走。”
        
        　　十三岁的少年还没到拔高的时候，比身量高挑的骆笙还矮了一寸，骆笙做出这样的动作竟莫名有几分和谐。
        
        　　所有人都忘了反应，包括被摸头的骆辰。
        
        　　直到骆笙的背影消失在屋门口，反应过来的骆辰气得脸色发白。
        
        　　她，她怎么敢摸他的头！
        
        　　并没跟进去的小丫鬟红豆笑嘻嘻替骆笙解释：“我们姑娘喜欢公子呢。”
        
        　　要是丑八怪她们姑娘才不会看一眼，就算亲弟弟也一样。
        
        　　骆辰的脸色由白转红，冷冷吐出一个字：“滚！”
        
        　　他需要骆笙喜欢？这样一个姐姐，倘若能让他少丢一点人就该感恩了。
        
        　　“咳咳——”因为情绪过于激荡，骆辰咳嗽起来。
        ','       　　骆辰体弱，这才在年幼时就被送到了气候宜人的金沙长住，这是与盛家熟识的人都知道的。
        
        　　苏家兄妹见状关切询问起来。
        
        　　这时盛佳玉赶到，环顾左右问道：“骆笙呢？”
        
        　　苏大姑娘淡淡道：“进去了。”
        
        　　苏二姑娘与盛佳玉关系不错，说话毫不遮掩：“佳玉姐，你们怎么没人拦着她，就让她这么跑到我家来。呵，这是唯恐我娘不同意，亲自上阵谈亲事呢。”
        
        　　一番话臊得盛佳玉满面通红，骆辰更是恨不得找个地缝钻进去。
        
        　　“我带她回去！”骆辰大步向屋门口走去。
        
        　　东屋里，盛大太太与苏太太同样因骆笙的进来错愕不已。
        
        　　“表姑娘怎么来了？”盛大太太柔声问着，心中却是翻江倒海的厌恶。
        
        　　她活了一把岁数就没见过这样的女孩子！
        
        　　盛家与苏家交好，两家来往颇多，她在这间屋子里做客的次数已经数不清，可没有一次如眼下这般如坐针毡，颜面扫地。
        
        　　要是有人给她儿子说骆笙这样的姑娘，她恨不得抄起花瓶把那人砸出去。
        
        　　偏偏她现在就是做这种恶心事的人。
        
        　　可是有什么法子呢，骆笙为了苏家二公子连上吊的事都做得出来，不管是真是假，万一有个三长两短，盛家如何向骆大都督交待？
        
        　　到那时别说盛家，就是苏家恐怕都逃不了破家灭门之祸。
        
        　　也是知道这样的后果，苏太太明明万般不愿却几乎要点头答应了。
        
        　　这个时候骆笙来干什么？
        
        　　骆笙屈膝向盛大太太与苏太太施了一礼，道：“大舅母，我来叫您回府。”
        
        　　盛大太太被骆笙从没有过的懂礼数震住了，不由问道：“表姑娘知不知道我来干什么？”
        
        　　骆笙唇角微微弯：“我知道大舅母是来与苏家太太商议我与苏二公子的亲事，不过这门亲事还是作罢吧。”
        
        　　“为什么？”太过震惊之下，盛大太太与苏太太齐声问。
        
        　　而门口处也传来盛佳玉等人的惊诧声。
        
        　　骆笙笑笑：“因为强扭的瓜不甜啊。大舅母，咱们回去吧。”
        
        　　直到骆笙等人离去，苏二姑娘还一副见了鬼的表情，不可思议道：“她也知道强扭的瓜不甜？”',10029,10086);
        insert into ds_book values(null,10087,'苏二姑娘表情呆滞，拧了苏小弟一把：“该不是做梦吧？”

        　　苏小弟嗷一声惨叫：“疼——”
        
        　　苏二姑娘大大松了口气：“疼就好，真的不是做梦。二哥，你逃过一劫！”
        
        　　苏太太这时回过神来，看着丰神俊朗的儿子泪如雨下，却是欢喜的泪。
        
        　　儿子真的是逃过一劫，若不是为了苏家老小，她怎么会忍着恶心听盛大太太说那些话！
        
        　　苏曜走上前来，轻拍苏太太手臂：“是儿子不好，累您烦心了。”
        
        　　他目光投向门口处，想着骆笙与往日迥异的表现，生出几分疑惑。
        
        　　骆笙会放过他？
        
        　　苏大姑娘则指挥着丫鬟洒扫屋里屋外，声音透着轻快：“都动作利落点，把晦气扫出去！”
        
        　　那些丫鬟就发出清脆的笑：“大姑娘放心，婢子们定会好好打扫。”
        
        　　从苏府离开的盛家一行人心情就沉重多了。
        
        　　盛佳玉凑近骆笙，咬牙问：“骆笙，你又耍什么花样？”
        
        　　盛大太太睇了女儿一眼，语带警告：“佳玉，还有没有规矩，叫表姐。”
        
        　　“娘——”盛佳玉不服气跺了跺脚。
        
        　　她比骆笙小了几个月，叫一声“表姐”是应当，可骆笙哪有半点表姐的样子，她才叫不出口呢。
        
        　　盛大太太何尝不理解女儿的心情，假意斥责过后悬着心问骆笙：“表姑娘怎么突然又不愿意了？”
        
        　　若是牺牲苏家二公子一人，让盛、苏两家乃至整个金沙县都安生下来，其实也行。
        
        　　骆笙微微皱眉：“大舅母是希望我与苏二公子的亲事能成？”
        
        　　这话险些把盛佳玉吓死，猛拽盛大太太衣袖。
        
        　　盛大太太不敢再问，不由加快了脚步。
        
        　　盛、苏两家相距不远，一行人很快回到盛府，直奔福宁堂见盛老太太。
        
        　　盛老太太一颗心正七上八下，一见骆笙回来忙问缘由。
        
        　　骆笙福了福，淡淡道：“许是外祖母误会了，我从没有过与苏二公子定亲的念头。笙儿身体有些不适，先回房了。”
        
        　　骆笙一走，盛老太太就憋不住了，忧心忡忡问骆辰：“辰儿，你姐姐是不是又瞧上别人了？”
        ','        　　骆辰脸色黑如锅底，艰难辩解道：“姐姐不是这么快见异思迁的人……”
        
        　　他这次要好好盯着，骆笙再敢胡来，他就打死她！
        
        　　盛佳玉一脸严肃拍了拍骆辰肩头：“表弟，你一定不了解你姐姐。”
        
        　　盛老太太叹口气，示意二人退下，留下两个儿媳商议对策。
        
        　　“既然骆大都督把笙儿的亲事托付给我这当外祖母的，依我看笙儿的亲事越快定下越好。”
        
        　　再这样下去，盛家就把金沙县的人得罪光了。
        
        　　大太太与二太太纷纷附和：“老太太所言极是。”
        
        　　盛老太太抬手揉了揉太阳穴，一脸惋惜：“偏偏那丫头又不愿意与苏家的亲事了，你们说还有哪家合适？”
        
        　　大太太干笑：“表姑娘眼光高，一时半会儿恐怕难寻到合适的。”
        
        　　“是呀，放眼金沙能配得上表姑娘的少年郎可不多。”二太太跟着道。
        
        　　她听说有几家已经把生得俊俏的儿子送出去读书游历了，就是为了逃离表姑娘的魔爪。
        
        　　这可真是丢死人！
        
        　　盛老太太视线扫过两个儿媳，把心中打算说出来：“笙儿有三个表哥一个表弟，皆年龄相当，不如在他们中选一个吧。”
        
        　　盛家多年来一直与人为善，是厚道人家，与其让那丫头祸害别人，不如留在自家吧。她好歹是那丫头的外祖母，有她看着总归出不了大乱子。
        
        　　盛老太太这话好似一道惊雷险些把两个儿媳劈焦了。
        
        　　大太太猛地站了起来，扶着额摇摇欲坠：“儿媳心悸的毛病又犯了，想回房吃一枚保心丸……”
        
        　　二太太赶忙扶住大太太：“儿媳送大嫂回房。”
        
        　　眨眼间两个儿媳跑得一个不剩，只留下老太太一个人生闷气。
        
        　　就没一个识大体愿意牺牲一下的？她真是看走眼了！
        
        　　骆笙才进房门，红豆就凑过来笑嘻嘻问：“姑娘，您是不是又瞧上别家公子了？您说是哪个，婢子给您抢回来。”
        
        　　骆笙替自己斟了一杯茶，浅啜两口，盯着茶盏中沉沉浮浮的绿芽出神。
        
        　　红豆从没见过自家姑娘这般安静的模样，一时觉得有些陌生，小心翼翼问道：“姑娘，您怎么了？”
        
        　　骆笙抬眸看着红豆。','        
        　　尽管小丫鬟嘴里吐出的话那般无稽，可脸上的担忧是真切的。
        
        　　骆笙握着茶盏的指尖微微用力，把从醒来后就一直盘旋在心头的话问了出来：“红豆，你知道镇南王府么？”
        
        　　她不是什么骆大都督的爱女骆笙，而是镇南王府的清阳郡主啊！
        
        　　她死了，又醒来，魂魄困在别人的躯体里，偏偏对此人的情况一无所知，只得用尽全身力气控制住临死前那些滔天的恨与痛，不动声色了解眼下处境。
        
        　　“镇南王府？”红豆认真想了想，神色茫然，“没听说过啊。”
        
        　　骆笙心一沉，攥着茶盏的指节隐隐泛白。
        
        　　她的父王是大周唯一的异姓王，尽管金沙县不属于镇南王管辖之地，可大周又有几人不知晓？
        
        　　骆笙缓了缓心神，再问：“那么平南王府呢？”
        
        　　不知道镇南王府，平南王府恐怕也是不知道的。
        
        　　没想到红豆愣过后笑起来：“姑娘您是在考校婢子么，谁不知晓平南王府啊，平南王世子七年前过继到皇上名下当了太子，整个平南王府的人都搬到京城去了，您还与太子见过咧……”
        
        　　骆笙脸上血色褪得干干净净，红豆后面的话再也听不进去一个字。
        
        　　她压抑住如雷的心跳，颤声问道：“现在是哪一年？”
        
        　　“永安十七年啊。”红豆不假思索回道。
        
        　　咣铛一声，骆笙手中茶盏跌落，摔得粉碎。
        
        　　永安十七年——她死去，再醒来，竟然过去十二年么？
        
        　　这十二年间到底发生了什么，为何红豆所言如此荒谬离奇？
        
        　　红豆骇了一跳，忙蹲下收拾满地碎瓷：“姑娘，您当心扎了脚——咦，这是什么？”
        
        　　小丫鬟从幔帐与屏风的间隙抽出一条白绫，盯了片刻似是想起来什么，忙把手中白绫一抛：“呸，呸，真是晦气！”',10029,10087);

        insert into ds_book values(null,10088,'“记录高塔……”

    这里是介于存在与不存在之间，是并不具备现实地点意义上的地方，是名为记录高塔的建筑物，是真实历史这一组织的总部，也是其存放所有记录下来的历史文献的地点。

    李铭小心翼翼的走在导师身后，几乎是踩着导师的脚步向前迈动，走了片刻，导师回头说道：“你不必那么小心翼翼，作为真实历史记录员，那怕只是记录员新生代，你应该也具备着行走于时间与空间之间的特殊资质，而这里的特殊性会将这种资质提高到足以影响概率的程度上，所以你根本不必担心会出什么事。”

    李铭弱弱回以一笑，同时看向了周围，周围就是一片虚空，不，连虚空都算不上，是纯粹的“无”，远处的高塔直耸入不可视的莫名之地，而除了高塔以外，这里什么都没有，他也不是走在路上，而是和导师一起行走在“无”中，作为前几天还是一个极普通的太清大学大一新生来说，走在这里实在是挑战着他的神经。

    无论是以他的知识储备来看，还是以他所能够获知的超前知识想象来解释，这里的“无”都会吞噬掉一切非圣人的存在，他光是走路都已经用尽了全部勇气了，压根不敢，也不可能肆意妄为什么。

    导师看着李铭的模样叹了口气，他转头看向了高塔道：“按道理来说，你必须成为资深记录员之后，才可以进入记录高塔查看历史真文，不过你的情况有些特殊……所以你可以现在就开始查看，但是仅限于洪荒历的历史真文，切记了，这些历史真文本身就有着特殊性，若是你太过贪心，可能就走不出这高塔了。”

    李铭点头，同时又问道：“导师，历史真文一共分为几部啊？”

    “用部为单位来称呼不太准确。”导师说道：“历史的真文其实是分为无穷多的内容章节，从每一个智慧族群的诞生到终结，到一切智慧生命的互动影响，到多元宇宙本身的变动，历史的真文无始无终……不过那是历史真文，而我们只是生命，所以我们强行将其以时间划分开来，一共分为了混沌历，鸿蒙历，洪荒历，人类历，功德历，梦想历，光芒历，以及最后的升华历，当然了，这个最后，只是我们的观察只能够观察到哪里罢了。”

    李铭心里暗暗思量，光是这些话语就让他受用无穷，若是从历史真文的时间节点来看，他应该是出生在人类历时代，出生在洪荒政府中，一个极为普通的人，成绩极为普通，家世极为普通，能力极为普通，以普通的幸运考上了太清大学普通的院校，成为了一个普通的大学生。

    就在李铭暗暗思量什么时，导师行走的速度依然未变，带着李铭慢慢靠近了记录高塔，而这高塔进口处，除了一座大门以外，居然连一个守卫都没有，而来到这里后，导师就停下脚步对李铭道：“接下来的路就需要你自己去走了，切记，你只可看洪荒历部分，别的部分千万别看，否则那怕你有时空资质，可以成为记录员，但是你目前还只是最最最初级的记录员，一个不好，你可能会就此失落。”

    李铭点头应是，他就看到导师转身向着无中而去，他立刻就喊道：“导师，您难道不和我一起进去吗？”

    导师回头默默看着李铭，片刻后他摇头道：“这是你的道路……切记。”说完，头也不回的离开了。
','    李铭就站在高塔大门前迟疑许久，这才慢慢向着高塔内走去，而刚一走入大门，恍惚间一个失神，当他回过神来时，发现自己已经站在了一片连绵不绝的图书柜走廊之中，走廊两旁全是十多米高的图书收藏柜，而这个走廊除了他以外，居然连一个人影都没有。

    空旷幽静的环境，让李铭猛的打了个寒颤，他左右看了许久，叹了口气，这才随意从一个图书柜上取了一本书下来，而拿下这本书的同时，他发现自己已经坐在了一张舒适的座椅上，在他前方有着一张桌子，桌子上还有一盏明亮的油灯。

    “……要不要这么复古啊，纸张书页，加上原木桌椅，还有油灯……这是要我挑灯夜读吗？”李铭自嘲一笑，他就看向了这厚厚的图书封面，上面写着十三贤者四个字。

    李铭所读的大学专业，虽然不是历史系的学生，但是洪荒政府的咨询如此发达，他也大体上知晓历史内容，而且洪荒政府的行政思维已经是彻底堂皇大道，无论是政府的黑历史，还是各个圣人们的黑历史，只要出现过的就会全部摆放出来，好坏任凭你说，所以类似李铭这样的洪荒普通人也知道许多以前的隐秘。

    不过李铭也知道，这些隐秘是可以让他们知道的隐秘，真正的隐秘估计不可能放出来让大众知晓，甚至可能高层知晓的人都不多，其中越是后面时代的隐秘越多越详细，而涉及到人类历开创早期的历史就要笼统了许多，特别是涉及到最顶级的那些存在们的历史事件，譬如人类三皇，人皇伏羲，地皇后土，娲皇女娲三位的历史就很少很少，同样的，三清道尊，西方上帝，又或者佛家二圣等等的信息也是极少极少。

    而再之前的信息，人类历之前的洪荒万族时代的信息，那就真是少得可怜了，放出来的历史记录中，也只说了盘古开天地，鸿钧合天道这些内容，旁的信息都是一些野史，譬如说那时候的人类弱小无比，根本无法修炼，也无任何特殊能力，就和任何一个无魔位面的人类一样，不，甚至比那些无魔位面的人类更弱，至少无魔位面的人类只要机缘巧合，还是可以开启一阶基因锁的，而在人类历之前的人类，是没有所谓基因锁一说……

    李铭也不知道那些野史所说是真是假，若是真的，那人之祖盘古凭什么成就了内宇宙，就此开天辟地？人之宗鸿钧又凭什么将天道盖亚化为封神榜，从而造出了主神空间？但若是假的……那洪荒万族又是凭什么欺压人类亿亿万万年？难道说亿亿万万年间，人类就没有英豪开启基因锁第五阶，成就圣人以反击吗？

    而现在……李铭知道他终于可以知晓这一切了，洪荒历……他翻开了这本书页。

    “自洪荒成形，万族兴盛，有人族演化在了洪荒大陆上，人族弱小，天生不具备任何体内能量循环系统，无法吸收储存任何游离态能量，不具备任何特殊异能，精神脆弱，灵魂脆弱，肉体脆弱，是比最为低级的哥布林，地精，狗头人等等都还要弱小得多的垃圾智慧种族，甚至史莱姆都比人类要强。”

    “关于人类的悲惨遭遇，以及洪荒万族对人类的各种利用，在另一本我所记录的真实历史中有所体现，这里且不谈，在这种悲惨遭遇下，整个洪荒中无数亿万的人类生活在水深火热之中，他们是比奴隶还要不如的存在，是比野生动物还要可悲的存在，那怕最为低级的洪荒万族都可以随意处置他们，是食物，是器材，是实验品，是材料……”

    “但是人类毕竟是智慧生物，在数以亿万计的数量之下，人类中也有英豪诞生，只是他们大多悲惨而死，只有极少极少的英豪得到了特殊际遇，他们有了见识，懂得了这个世界的真相，人类天生带着原罪，这个原罪就是弱小，他们想要改变人类的悲惨遭遇，而最大的希望就是人类中诞生出一圣人，对了，那个时候的圣人还不叫做圣人，是人类历才开始将这个阶位叫做圣人，那个时候的圣人叫做圣位，只要人类中诞生出了一个圣位来，那么人类就可以以洪荒万族之一的身份加入其中，成为最为弱小的洪荒万族之一，为此，无数的人类英豪为之奋斗终生，但是可悲也可叹，人类太弱小了，蝼蚁尚且有一线不为零的机会杀死巨龙，那单细胞生物可能吗？”

    “人类英豪们想尽了一切办法，从巨人计划到机械计划，从机械计划到灵魂计划，从灵魂计划到变异计划，从变异计划到最为卑微的奴隶认主计划……全部都失败了，而一代代的英豪们就此惨死，到最后，活下来的，凝聚了以往所有英豪精华的十三个人，他们在那时有了新的计划，因为……”
','    “他们中的一人遇到了一个人类，那个人类没有名字，或者说他们认为他没有名字……”

    “极偶然中的必然吗？为了人类的可能性而诞生出来的几乎为零，但是绝对不为零的几率吗？”

    “那时，十三名人类仅存的精华，十三个人类贤者们，开始了他们最后的计划。其名为……”

    “永夜！”',10030,10088);
    insert into ds_book values(null,10089,'吴明晃了晃脑袋，想要将那眩晕感给平静下来，隔了许久后他才从草地上站了起来，同时说道：“就是这个位面吗？这里有什么特殊的吗？”

    脑海中，之前那平板的声响并没有出现，吴明也并不觉得奇怪，毕竟这可能疑似主神的东西啊，可不是那些什么系统流的妖艳货色，压根不会卖萌什么的，也绝不可能具现出萌妹子什么的，就是只发布任务，然后要么完成要么抹杀的高冷类型，说实话，吴明早就有了心理准备，毕竟他看过太多的无限流小说了。

    吴明并不是真实的他，或者说，他并不是原本的那个吴明，他穿越了。

    吴明原本是一个名为地球的行星上，二十一世纪的Z国二十七岁宅系青年，在某天清晨醒来时，他就发现自己穿越了，穿越到了一个天圆地方的广阔无边大陆世界中，成为了这个世界一名高考生……悲惨的大型灾难片，高考往事中的一员……

    没错，这个世界非常不科学的有着天圆地方的世界观，巨大无比的大陆据说无边无际，虽然每天依然是二十四小时，同时有着春夏秋冬等等季节因素……

    这个世界同时还有着超凡性质存在，才穿越过来的吴明亲眼看到一个老大妈跳着跳着广场舞，就直接跳起数百米的高度，他同时还亲眼看到一个上班族驾驶飞行载具，停下时，单手托起数吨重的飞行载具奔入停机坪……

    这是一个科技比吴明穿越前的二十一世纪地球还要先进得多，但同时又具备着魔法，修真，诡术，念力等等超凡力量的世界，这个世界名为洪荒大陆，而统治这个世界的则是洪荒天庭政府。

    穿越过来的数个月时间里，吴明大体上弄懂了一些事情，洪荒世界的科技异常发达，同时也是资讯大爆发的时代，通过网络他查找到了许多东西，比如穿越这玩意，在洪荒世界的网络上一直都有记载。

    通常而言，都是从高魔世界向低魔世界穿越，就如同能级转移一样，总是从高能级向低能级进行转移平衡，而洪荒世界早就知道位面的存在，在洪荒世界的科技观中，整个宇宙并不是单一存在的，也并非只有简单的星系型宇宙存在，而是无穷无量多的位面组成了一个大型位面集合体，也就是多元宇宙的存在。

    吴明穿越前的地球，就是一个星系型大型位面，而且是无魔或者超低魔标准的位面，按照洪荒世界的科技记录中，位面按照能级来分配，一共分为无魔，低魔，中魔，高魔，以及唯一一个超魔的位面，而洪荒世界的所处位面就是这个唯一的超魔位面。

    在洪荒世界的科技理论中，绝对不可能有任何外来的存在夺舍穿越到洪荒世界中，这就相当于将两杯一百度的水倒在一起，变成一半两百度，一半结冰零度一样不可能，但是吴明偏偏就是从无魔世界穿越到了这个超魔世界中，他想，唯一的可能性就是他戴着的这块石头手表了。

    这是一块纯粹以石头雕刻而成的手表，是吴明在一次偶然中以几十块钱购买的纪念品，当时他的朋友还调侃他，说他买了一块现代人穿越回古代时，在那个年代制造出来的模仿品，当时还不觉得什么，但是现在吴明仔细想起来，他似乎不知不觉就下意识的将手表戴在了手上，然后不知不觉的无视了这块石头手表，不管它看起来到底有多LOW，他居然都从没取下过它。

    而他穿越到洪荒世界是标准的魂穿，也就是只有意识，记忆与灵魂穿越到了这具肉体中，按道理来说，地球位面的一切都不可能带过来，但是当他回过神来时，发现自己手上依然戴着这块石头手表，那一刻，他知道这东西绝对不平凡，很可能是导致他穿越的根源。

    他一开始还不停的尝试解开这块石头手表之迷，比如滴血啊，滴血啊，滴血啊……什么的，还以为这东西就是他的金手指，但是谁知道几个月里这块石头手表什么动静都没有，直到他按部就班的参加了这具肉体的高考测试之一时，一个经典的声音响在了他耳边。

    “三十秒内进入光柱，转移目标锁定，失落XXXXX开始传送……”

    这个声音威严而低沉，毫无任何的感情波动，平铺直叙的说出了这段话，而恰好的是，吴明的这场高考测试的其中一项，就是进入到洪荒大陆附属位面中进行野外生物调查，而那进入方向正好就是一根光柱。

    “……无限流？梦魇流？死亡电影流？还是别的什么？”

    吴明边跟随在考生洪流中，边不停的思索着。

    在未曾穿越前，他可是一个宅系青年，虽然有工作，但是工作的目的正是为了不工作啊，最喜欢的自然是游戏，动画，漫画，小说之流，而其中关于刚刚他提到的那些小说，他可是看过不知道多少，一时间他甚至开始怀疑现实，怀疑自己是不是已经被高等文明杀之取脑，他已经变成了缸中之脑了。
','    但越是情况危急，他反倒越是冷静，步伐丝毫不乱，表情丝毫不显，只是沉稳的向着光柱走去，而在走到光柱前时，距离刚刚那个声音提醒的时间约莫还有三四秒左右，而他故意慢了一拍，甚至还打算弯腰系一下鞋带，他想要试试熬过这三十秒到底会发生什么事情，若真是有人恶作剧，那么三十秒一过就该显出了原型。

    却不想，他只是打算弯腰一下拖延过这几秒，还没弯腰，一种大恐怖就袭向了他心头，让他想也不想就立刻进入到了光柱之中，一点迟疑都没有。

    “会死的，一定会死，若是拖延过这三十秒，一定会死！”

    莫名的感觉，还有刚刚那大恐怖，让吴明确信了这一点，那是一种超越了他想象以外的力量，让他一丁点的反抗力都没有，只能够闭目等死。

    穿越到这个洪荒大陆数个月时间，吴明可不是每天宅着玩的，初到贵地的新奇，虽然因为自身穿越原因而谨小慎微，但是通过网络的查询，对自身力量的确认与锻炼，以及在家周边城镇的各种闲逛，让他已经确认了好些事情。

    这个世界是科技与超凡并举之世，科技已经发展到了人造虚拟世界，反物质能量堆，人造网络神格等等的程度，而超凡就更加夸张了，只是科技是普之于大众，而超凡则是伟力归于自身，所以这方面的管控就要严格了许多，到目前为止，吴明只查到了力量进阶的分层，以及力量体系的最终。

    洪荒大陆的力量虽然成千上百，但是归根结底一共分为了两大类，一类是以人类特有的基因锁为根本，融合别的几乎一切力量，无论是血脉，念力，灵体等等力量所成，分为五阶，每开启一阶基因锁，力量都会呈几何倍数增长，而最高就是五阶基因锁，成就五阶基因锁的人有一个名号，名为圣人，是超凡体系的顶点。

    另一个大类则是修真，这个修真可不是吴明所看过小说里的那样玄之又玄的东西，这个修真的定义也不是借假修真，而是修得真实，这就是吴明这具穿越后的肉体要参加高考的原因了，洪荒天庭政府王道大气，只要你有才能，任何力量体系都任由你选，从小学开始就开始教导科技知识，而修真和科技知识本就互通，一旦参加高考完毕，并且考过了，就可以进入各大学府进修，其中最有名的三大学府就是太清学府，玉清学府，上清学府。

    修真需要修得功法，但是这个功法最大的作用是提高记忆力，逻辑力，思考力，计算力等等，然后统合科技知识以完美自身，也细分为了数个大阶，筑基，金丹，元婴都有，而最高位阶与圣人等比，号为仙人。

    吴明自身是一阶基因锁，还没有融合任何血脉，但是习得有上清战拳以及临近筑基的真元力，好吧，还没有筑基，所以称不得真元力，但是真力却可称呼。

    他在这几个月里评价过自身的战力，若是回到地球时代，他可以击杀持有普通枪械武器五百人，持有军用枪械武器五十到一百人，当然了，依然无法正面对抗重枪械与特种部队，对于远程狙击也几乎没有抵抗力。

    但是这份战力已经是非常非常夸张了，可以说直接就是一个简化版超人模板，可以跳起十五米高度，百米速度在六秒左右，最大出拳速度接近音速，有真力护体，小型民用枪械无法破身，反应速度比普通人快接近两倍，若是地球现代社会，他这样的战力只要小心谨慎，完全可以颠覆一些非洲小国。

    但是现在，在那恐怖威慑之下，他觉得自己仿佛是蝼蚁。

    吴明无法，走入到了光柱之中，而一进入就立刻感觉到肉体不受任何控制，思绪更是朦胧混沌一片，整个人陷入到了半梦半醒之间，再也感知不到周边的一切……

    “为何选他？他有何特殊？能得您垂青？”

    “……不是我选的他，而是他自己的选择，自鸿钧合道，第二钧出，再到封神计划展开，主神空间构造成功，中间发生了什么事，吾等都失去了这段记忆，再到回过神来时，最初主神空间已经失落，你奉命寻找千百万年，找到时却已经在这人手上，而且与他气机相连，命格相交，已经无法夺取，是不是？”

    “……是。”

    “当然，杀了他自然就夺取了，但是他有最初主神空间，本质上的命格已经达到高级圣人层次，甚至更高，一旦有人想杀他，那一位必然会直接亲临洪荒大陆，弹劾那位的准备都还没完成，一旦降临就万事皆休，分则为圣，合则封神，这句话其中一部分的原由就是指这个，所以你才通过许多引线，又是暗示，又是幕后黑手，就为了这冥冥气运不牵连到吾等，终于将他安排到了这场高考测试里，本以为十拿九稳，但是谁知道最初主神空间居然在这个时候启动，现在，他估计已经去到了主神空间里了，再想找到他就是妄想了。”

    “主上，能得您信任，我必拼尽全力寻找到他，此最初主神空间有着特异，能让您蜕变进阶，距离那位也只一步之遥了，请放心交给我吧！！”

    “这点我自是放心，否则当初也不会挑选上你，所以你……不好，他不见了！”
','    突然间，这个一直雍容华贵的声音有了惊奇与焦急。

    “主上，莫非最初主神空间如此神异？那怕之前已经将他的命格命运都留下了印记，但是这空间连您都可以完全屏蔽？”

    “……不，他的命格命运消失了，时间长河中也没有，冥河中也没有，命运长河中也没有……”

    “他……不见了。”',10030,10089);
    insert into ds_book values(null,10090,'吴明睁开了双眼，就见得天空阳光灿烂，高空上似乎有飞鸟飞过，还有微风从远处吹来，一时间让他懒洋洋的一动不想动。

    “就是这个位面吗？这里有什么特殊的吗？”

    吴明躺在草地上问着，但是数秒后他就反应了过来，直接从地面立身而起，然后入目处所看到的一切让他张大了嘴巴，甚至口水流下来都不自觉。

    眼前这一切简直就太太太太太不可思议了！！

    他看到了什么？一座高山。

    好吧，光从字面上来说，一座高山有什么不可思议的啊，比起高山，显然鬼怪啊，异形啊，甚至一座飞船都更要让人惊奇得多。

    但是一个东西一旦物量级超过某个限度时，那就足以让所有人惊奇到爆了。

    他看到一座巨大无量的高山，虽然距离他极为遥远，但是光从肉眼所看所比，这座高山简直比一颗星辰更加巨大，而且是巨大得多。

    “莫非……是不周山！？”吴明脑海里猛的闪过这个想法。

    也不怪他如此去想，这座高山实在是太过巨大，高耸入云巅之上，不知深入了多少万里，那怕相隔极为遥远，但是入目处进行比较，其大也堪比星辰，肉眼无法看到其全貌，而能够如此巨大的巨山，无论怎么去想都只有神话传说中的不周山了。

    但是当吴明的视野继续扩大，并且向周围移去时，所看到的就让他更加不可思议了。

    因为他看到类似如此巨大的高山至少有四五座以上，这些高山组成了一片山脉，至于那山脉之中是否还有高山……这简直是一定的，只是视野被挡住了，无法全部看清楚而已。
','    吴明看向了周边的一切，周边的一切还是显得正常大小，树还是树，草还是草，花还是花，他并不是自己缩小了，周围一切都是正常，唯一不正常的就是地理环境的大，大大大，无比的巨大，大到不可思议的境界。

    莫名的，吴明想起了他穿越几个月里，查找到的洪荒大陆的信息，据说，洪荒大陆天圆地方，其陆地之大不可计数，以一个大陆的大小可以堪比其余位面一个宇宙的大小，所以在洪荒大陆中，一片山脉的大小就相当于数十颗星辰的集合，一座高山就相当于一颗星辰。

    当时吴明还觉得这些资料自夸得太过夸张了，就相当于地球上某个地域的人对自己家乡的吹捧一样，毕竟他生活在城市中，穿越几个月谨小慎微，也从未离开过城市，所以自然没有亲眼看到那些所谓的星辰大小的高山，虽然也搜索图片视频什么的，但是那时候的他只顾着搜索超凡力量了，对这一切都不甚在意。

    莫非，他就在洪荒大陆的某一处山脉旁？这手表之前不是让他进入光柱完成任务吗？为什么又将他弄回到了洪荒大陆？

    吴明心中百思不得其解，不过既然身处洪荒大陆，他心中也没有那么慌张了，只是伸手向胸口摸了去，然后他摸到胸膛时，这才用诡异的目光打量着自己。

    他赤身裸体了，真正的赤身裸体，连底裤都被扒了下来，浑身上下一条布带都没有。

    “什，什么鬼！？”吴明叫了起来，但是周围连个鬼都没有，自然是没人理他。

    “好吧，这个手表派发任务，居然连衣服都会全剥了，莫非是间谍系统不成！？”

    吴明自言自语的说着话，同时脑海中念头集中，念出了一些数字与文字，这些是他的个人网络账号，然后他静待数秒，眼前依然一片漆黑，什么东西都没有出现，念头也并没有进入到洪荒网络之中。

    直到这时，吴明终于知道了不对劲，非常非常不对劲。

    洪荒天庭政府已经统治洪荒大陆不知道多少万年，人类文明繁荣至极，那怕是洪荒大陆其广无比，人类也至少开发了洪荒大陆三成以上的土地，那怕是巨大如星辰样的高山也被人类推平炼化，更有数十枚人造神格计算数据，虚拟网络遍布整个洪荒，所有人类只要念头就可以上网，再不存在任何死角，但是现在他居然无法连上网……

    “莫非这里不是洪荒大陆？”吴明更是觉得莫名其妙了。

    虽说也有大量位面是天圆地方的格局，但是吴明这些日子以来所读到的资料显示，越是天圆地方的位面，其大小其实越是狭小。

    这其中涉及到非常多的专业术语，但是大体意思就是说，一个位面的发展途径不同，导致了位面演化的不同，若是形成星辰宇宙的格局，那么这个位面就是以发展量多而为主，大量的星辰，空间近乎无限巨大，更有恒星，行星，星河等等，通常该位面的风格是埋头发展型，要沟通别的位面极为困难。

    若是一个位面以多子位面构成，譬如人间界，地狱界，冥界，外子位面，能量子位面等等构成，那么该位面通常风格是交流型，各种文明间的碰撞所产生的文化火花，以此来提升位面之格。

    若是一个位面是以天圆地方的形式构成，那么该位面通常能级极高，最差都是中魔位面，普遍是以高魔位面而存在，在位面中的文明个体都会自我强化，甚至可能出现临近圣人仙人的存在，这是伟力归于自身的位面。

    这里就是天圆地方的世界，按照那些资料上所说，因为集中了一个位面，相当于一个宇宙的质与量，所以才能级才会如此之高，才会出现中魔乃至高魔的位面，但同样因为能级极高，所以这样的位面不会太大，不会出现类似洪荒世界那样一座山就有一颗星辰大小的情况，更不会出现天圆地方的大陆巨大如宇宙，人口无穷无尽，原因很简单，资粮问题，除了整个多元宇宙唯一的超魔位面洪荒大陆，再不可能另一个如这样的位面了。

    所以这里应该就是洪荒大陆。
','    “真是奇了怪了……”吴明摸了摸脑袋，一时间也想不明白原由，当下就运转体内的真力，打算顺着远离山脉的方向而去，接着他啪的一声跌落在地，整个脸结实的撞在了地面上。

    吴明再次莫名其妙的爬了起来，他揉着脸上的痛处，不停的摸着自己的肉体，不停的感应着体内的真力能量，隔了许久许久后，他才用一种丢失了五百亿的语气说道：“没了，都没了，什么都没了，真力，基因锁，妈的，连基因锁都没了，我一定是在做梦吧！？”

    吴明穿越后的几个月，不知道看了多少资料资讯，其中关于基因锁是他所看资料的重点，这不同于修真以及别的任何超凡力，这是普遍存在于整个多元人类体内的一种力量，可谓是人类的血脉之力。

    那怕在地球世界中，吴明也曾经听说过基因锁的事例，当然了，地球世界并不叫做基因锁，那里是无魔世界，一切都用科学来解释，科学无法解释的东西就被冠名为伪科学或者迷信，而基因锁在地球世界被称为人体潜能，比如当自己的亲生孩子被压在小轿车轮胎下时，曾经有祖母将整个轿车都举了起来，再比如在面对生死一刻时，有些人往往可以爆发出惊人的力量或者速度，这些其实都是基因锁的表现，虽然只是一阶基因锁。

    而现在，吴明清楚的感知到自己已经开启的一阶基因锁彻底消失不见，就如同他现在是一个普通人类那样，脆弱，无力，一无是处……

    吴明呆坐当场许久许久，直到天色都开始微微发红时，他才回过神来。

    不管如何，人总不能够被尿憋死不是？他至少还活着，还有一个疑似金手指的石头手表在，脑袋里至少还有一大堆的知识资料，那怕没了基因锁，他曾经开启过，未来一定还可以再次开启，那怕没有了真力，他也知道功法，这里又是洪荒世界的超魔位面，未来再度练上来也是不难。

    现在的关键在于，他该如何去到城市里，如何离开这荒郊野外……洪荒大陆啊，听说一些人类没开发的地方还保留有大量野生态环境，老虎熊狼什么的都是多见，甚至还可能有魔兽，有各种超凡力量的野兽，甚至据说还有残存的妖魔鬼怪，这就要命了啊……

    吴明虽然以前是个宅，但是他宅着的时候接受的资讯可不少，也看过不少野外求生的栏目视频，此时放眼四周环境，他心里已经有了一些打算，好歹对付上一夜，等到明天开始就向山脉外行去，最好是找到水源处，顺着水源向下，总能够找到人烟。

    “第一步……钻木取火。”',10030,10090);

    insert into ds_book values(null,10091,'铛！铛！铛！

　　敲着钟，谈陌木着脸，他觉得自己一定是没睡醒。要不然的话，怎么会一睁开眼就发现自己变成了一个正在敲钟的小沙弥？

　　不过，戒尺的触感有点太真实了。

　　“哎呦！”叫了一声，谈陌扭过头去，就见一拉长了脸的光头正瞪着自己，手中明晃晃的一把戒尺一甩一甩，明摆着这是刚才偷袭他的罪魁祸首。

　　根据自己脑海里的记忆，这一个仿佛长了马脸的光头，是莲花寺内院的戒律师兄，白骨子。

　　谈陌这下没办法自欺欺人了。

　　他就是穿越了。

　　还是那种莫名其妙，啥事也没做，睡个觉就穿越了。

　　事实证明，晚上不宜睡觉。

　　宜通宵。

　　不然容易穿越。

　　脑袋里胡思乱想着，谈陌恭恭敬敬的行了一礼。人在屋檐下，不得不低头。那把戒尺打人老疼了。

　　“敲个钟都三心二意！”白骨子甩着戒尺，真恨不得往那颗锃亮小光头上再来一下。

　　谈陌闭口不言，他怕自己忍不住怼两句。

　　“敲完钟，别忘记把水给挑了。”白骨子吩咐一声，就转身走了。他是寺内的戒律僧，刚好走到这罢了，不是专程来盯着谈陌的，查看过了这里，还要走几个地方。

　　莲花寺不大，但也不小。

　　以他的脚力走上一圈，都得小半个时辰。

　　“是。”谈陌老老实实的大声答应着，然后打起精神撞起钟来。

　　当一天和尚，撞一天钟。

　　铛铛！铛铛！铛铛！

　　有节奏的敲完了钟，谈陌就往外院的伙房跑去，挑水主要就是供应早伙房。因为天色尚早，谈陌进去的时候，伙房里只有一位正在淘米的内院师兄。

　　外院的伙房，主要是为了给外院的弟子准备一日三餐，不过因为外院弟子都只是一些小沙弥，怕一不小心弄个火灾出来，所以做饭的事情现在是由内院伙房来负责。

　　“镜虚空师兄早。”谈陌按照记忆里的称呼叫道。
','　　镜虚空是个青年，体型略矮，不过不胖，整个人很壮实，四肢肌肉块垒分明，穿着僧衣都直接凸显出来。一个大筐中装了至少四十斤的米，被他扔在在一口缸里，仅用一只手便反复晃动，不时轻易提起。

　　看起来举重若轻的样子。

　　“是你啊，能下床了吗？这就好。”镜虚空冲着谈陌随意的点了点头。

　　“是的，今日便是我撞的钟。”谈陌双手合十，回答道。镜虚空说的事情，在他记忆里面有，在他穿越之前，他这身体的原主人和另一个小沙弥闹了口角，然后就打了起来，本不是大事，然而倒霉催的跌了一跤，刚好摔下了后山坡，一路滚到了坡下。

　　万幸虽然需要躺一两天，但骨头没断。

　　不然谈陌穿过来第一件事，就是想办法在医疗条件落后的情况下，如何避免病情恶化，免得自己凉透。

　　镜虚空听着谈陌的话，也不回应，自顾自的淘着米。

　　谈陌不以为意，他脑袋里的那些记忆，有关于和这个叫镜虚空的内院弟子的相处画面，很多时候都是这一副样子。

　　这和尚比较沉默寡言，不太爱说话。

　　谈陌走进伙房，拿了水桶，沿着下山的石台阶，去山下的井里取水。

　　这个时候天色尚早，山上放眼望去是一片灰青色，像是披着一层纱。谈陌一步一步踩着石台阶，听着附近高低林子里不时突兀出现的鸟叫声，他左右看看，然后忍不住摇了摇头，嘀咕一声：“真奇怪。”

　　他不是在说这附近环境奇怪，而是在说这莲花寺的僧人法号，很奇怪。

　　寺内弟子，法号都不以某个字为开头，如戒色戒嗔之类，而是三个字，乍一听，还有点像是道家的道号，只不过不太正派。

　　白骨子、镜虚空，怎么听着都像是邪魔外道。

　　而且，不光是这法号奇怪，莲花寺的规矩在谈陌看来也相当奇怪。

　　这莲花寺分，内院和外院。

　　其中这外院的弟子，无一例外都是小沙弥。

　　这些小沙弥都没有法号，仍旧叫着俗家的名字，除了每日例行的早晚课，一应杂物外，半年内还可以有两天下山回家见爹娘。这一个规矩，让山下很多因为家里孩子多而养不起的人家，都纷纷将孩子送到了莲花寺。

　　管吃管喝管住，每过半年，还能见到两次面，为什么不送进寺？

　　莲花寺也不挑剔，完全是来者不拒。

　　只要是有名有姓，有亲人在山下，不管是穷是富，只要不是无父无母的孤儿或者乞儿，莲花寺都接纳。

　　内院弟子只有几个，可外院的小沙弥，却已经有百来号人了。

　　谈陌也不想明白莲花寺这么招收弟子干什么，没啥利益可图，每天的吃喝拉撒，也都是一笔不大不小的开支。
','　　莲花寺的山脚下，是罗湾镇。

　　逢年过节，罗湾镇的人少不了来山上上香，添点香油钱。

　　被谈陌穿越的那个小沙弥，就是罗湾镇上的人，家里除了小沙弥外，还有一个哥哥，两个妹妹和三个弟弟。算上小沙弥，正好七个葫芦娃。

　　不过小沙弥家里倒不是因为养不起小沙弥，才把小沙弥送上了莲花寺。

　　小沙弥的父亲早年是个布店小伙计，穷的一条裤子穿一年，后来认识一个带着大量珠宝的洋人，还和那个洋人成了朋友。在那个洋人离开前，小沙弥的父亲得到洋人的资助，开了一家织布厂，凭着多年打拼和小心经营，生意不算兴隆，但也是发家致富了，能养活老婆孩子，手底下靠小沙弥父亲吃饭的人，也有十来号。

　　小沙弥的父亲会把小沙弥送到莲花寺，是因为罗湾镇的镇长崇佛，一次在镇长花大价钱请来一位高僧讲经的时候，善于经营人脉关系的小沙弥父亲，居然和那位高僧成了朋友。

　　后来，小沙弥的父亲不知跟那位高僧说了什么，当时那位高僧的脸色很难看，似乎是犹豫了一晚上，然后第二天临走的时候，才告诉小沙弥的父亲，让他想办法，让他的一个孩子拜入莲花寺门下。

　　就这么的，小沙弥被送上莲花寺。

　　小沙弥的性子比较木讷，自己老爹说啥就是啥，乖乖待在莲花寺内，当时才五岁，不哭不闹，一待就是三年。

　　莲花寺附近的山势不太适合凿井，所以水井挖在了山脚下。

　　谈陌挑着两个水桶下来，到了井边，正要打水，就看到几个人骑着马由远及近快速到了跟前，这几人纷纷一拽缰绳，然后从马背上跳了下来。

　　几个人清一色的，都是青红二色官服，中间是一个鲜艳的捕字，脚踏黑皮靴。

　　这几人正要往山上走，其中一人猛地瞧见了谈陌，仔细看了两眼后，就喂了一声，然后问道：“小和尚，我问你，你父亲可是叫谭少河？”

　　被谈陌穿越的小沙弥，姓谭，他父亲正是叫谭少河。

　　于是谈陌点了点头。

　　那人就看了眼其他人，说道：“好了，正主找到了，走吧，你先跟我们上来。哦，对了，谭少爷你可知道你家里有什么仇家？”

　　谈陌摇了摇头，一个七八岁的小孩子能知道什么，他就算是得了记忆也知道的不多，况且这位“谭少爷”在莲花寺一待就是三年，半年回家一趟也只是宅在家里念经敲木鱼。

　　这人就拍了拍谈陌的肩膀，叹了口气，然后说道：“谭少爷，节哀顺便，其实当个和尚长伴……长伴……那个词怎么说来着？哦，是长伴青灯古佛，这也挺好的。”

　　谈陌：“……”

　　怎么听这语气，貌似他还没见到自己这身体的家人，他全家就都已经凉透了的样子？

　　谈陌一脸呆滞，他很想拉住这个人问清楚，不过看着这几个人身上那一个“捕”字，还是闭住了嘴，安静的跟在他们后头，装出一副老实巴交的木讷样子。

　　自古衙门朝南开，有理没钱莫要进。虽然穿越了，但谈陌觉得还是这个理儿。他怕因为自己开口，而莫名其妙惹上麻烦。

　　这很匪夷所思。

　　但谈陌觉得很有这可能，因为他现在的身份，是“谭少爷”。一个八岁不到的小沙弥，可偏偏在他的名下，有着一家经营还算可以的织布厂……

　　这是多么动人的一块肥肉啊！

　　害人之心不可有，但防人之心不可无！',10031,10091);
insert into ds_book values(null,10092,'踩着石台阶往回走，不多时就到了伙房附近，镜虚空似乎已经淘好米了，正在等水熬粥，左等右等，这挑水的人回来了，不过桶里没水，这让镜虚空的眉头不由一皱，然后就把目光放在了那几名捕快身上。

　　没挑回水来，无疑是跟这几名捕快有关。

　　这时一名捕快上前两步，客客气气的在镜虚空耳旁说了两句。

　　镜虚空挑了挑眉，下意识的看了谈陌一眼，见到谈陌一副面无表情的样子后，眼神微动，然后双手合十，“请随贫僧来。”

　　说完，就转身先走了。

　　几名捕快连忙跟上。

　　谈陌落在最后面。

　　镜虚空领着这几名衙门的捕快拾级而上，跨过大门，走了一段绕山而建的走廊后，在一僧院前停下。

　　这里是内院。

　　和莲花寺的外院不只有一墙之隔。

　　“稍待。”镜虚空说了一声，就推开门走了进去，然后把门给关上。

　　谈陌这时候看了一眼几名捕快，发现他们都是神情肃然的等着，脸上没有一丝不耐之色，这让谈陌不由若有所思。

　　毕竟由小见大，而这帮捕快都信佛的可能性不高……

　　没一会儿，镜虚空就走了出来，他双手合十，对这几名捕快说道：“几位请进。”

　　说完了，他看了一眼谈陌，吩咐道：“你别乱走，就在这等着，等会儿有话要问你。”

　　“是。”谈陌大声答应道。

　　几名捕快和镜虚空就进去。

　　没让谈陌多等，不到三分钟，白骨子从内院走了出来，他在谈陌面前站定，然后仔细打量了谈陌一会儿：“你来了三年了，你家里出了这种事，我也挺为你难过的。”

　　谈陌看着白骨子，一声不吭。

　　因为他不知道该怎么回答。

　　这时白骨子继续说道：“这是你父亲早年造的孽，贪图他人财物，起了杀人越货的心思，因此倒也发了笔横财，自此讨了个漂亮老婆，过上了好日子。但你父亲不曾想到，那一批珠宝也是来路不明。隔了近十年，最终还是被青眼找到了，结果害死了自己，还连累了妻儿老小。”

　　“你是你父亲最后的血脉了。”白骨子说到这，微微摇头。

　　谈陌闻言一惊，他一下子就想到他这具身体的父亲谭少河，早年的发家来历。谈陌的眼睛不由微微瞪大，很吃惊的看着白骨子。
','　　听白骨子这意思，分明是谭少河当年根本就不是和那个带着大量珠宝的洋人成了朋友，或者有可能是成了朋友，但随后就对这位洋人朋友从背后捅了刀子，得到了他人生中的第一桶金。

　　不过，这青眼是什么东西？

　　还是某个人的外号？

　　只不过谈陌听着白骨子的话语，总觉得这青眼不太像是一个人外号，很有可能是某些不太好的形容。

　　因为有着小沙弥留下来的记忆，谈陌对这个世界并不算是睁眼瞎。

　　多多少少知道一点。

　　谈陌知道自己眼下所处的地方，名叫清廷。

　　清廷这个王朝眼下已经走到了末期，各地反王不断，不时有谁又占地称王的消息传来。群雄割据，一片混乱，完全是一个地方一个规矩。可能在这个地方，银子可以用，但到了另一个地方，这银子就不能充当货币了。

　　若只是如此，那么谈陌是回到过去的平行时空，而不是穿越了！

　　在此方世界，也曾发生过洋人入侵，只不过那些洋人入侵者刚登陆就丢盔弃甲，四散而逃。后来据一些残兵透露，说他们当时遇到了鬼，转眼间他们的人都死了一大半，还不知道是怎么死的。

　　但到底遇到了什么样的鬼，那些幸存下来的残兵却始终不肯说出来。

　　这种事一开始谈陌因为初来乍到，他也不知道该如何看待，更不知道到底是真是假。不过眼下他听着白骨子提到的青眼，却是忍不住将两者联系到了一起！

　　被谭少河杀人越货的洋人，就是当年的残兵之一。

　　而青眼，就是那些残兵当年遇到的鬼！

　　白骨子这会儿看着谈陌，脸色微变后，不由倒吸了口气。因为他看到谈陌只是露出惊讶的表情，眼中没有一丝哀色，更没有哭泣，仿佛死的不是他全家，只是哪个陌生人。

　　然后，白骨子大声道了一声好。

　　谈陌不由困惑得看着他。

　　“镜虚空刚说你可能养出了白骨心，我还不信，没想到是真的。”白骨子看出了谈陌眼中的困惑，这样说道，算是解释。然后他又催促一声：“你跟我进来吧，我知道你有很多问题想问。不过，住持在里面等着你，有什么问题等会儿再问。”

　　谈陌一怔，然后脸色一变。

　　他这才意识到自己的反应，实在是太过平静了。不过这也是人之常情，毕竟他只是一个鹊巢鸠占的外来者，和谭少河一家人素未谋面，这哪来的感情可言？

　　这是他大意了！

　　谈陌一时间冷汗直冒，不过万幸这莲花寺还真不是什么正规寺庙，他这番举动居然还被夸赞，认为是养出了白骨心。尽管不知道什么是白骨心，但谈陌觉得这对自己应该不是什么坏事。不然的话，白骨子绝不是这样一番神情。

　　“是，白骨子师兄。”于是，谈陌点了点头，这样说道。
','　　白骨子领着谈陌进去。

　　谈陌是第一次进去这莲花寺的内院，被他占了身体的谭家小沙弥，在这莲花寺待了三年，却是从没踏入过内院。

　　以前也有过顽皮的小沙弥想进内院看看，但无一例外被抓了现形，然后被赶下了山。

　　杀一儆百，这帮小沙弥自然不敢再犯。

　　内院的建筑，倒没有什么金碧辉煌感，只不过很有禅意。谈陌一走进来，就听到了若有若无的诵经声，一声一声，很有佛门氛围，让人犹如当头棒喝，一下子精神一振。

　　很快，谈陌就见到了莲花寺的住持。

　　一个体型消瘦的中年僧人，身披大红袈裟，眉心有一朵莲花印记。比较神异的是，他的眉毛是金色的，并且很长。

　　除了住持外，还有镜虚空、空门鬼、钟神秀、戒菩提四位内院弟子。

　　那几名捕快也在，一个个神色恭敬的面对着莲花寺住持。

　　“住持。”白骨心双手合十。

　　谈陌赶紧跟着叫了一声，然后说道：“住持，方才白骨子师兄说我父母兄弟全糟了不幸，弟子痛苦万分，想从长伴青灯古佛，愿将谭家织布厂赠予寺内，求住持成全。”

　　住持一愣，然后他轻笑一声，扭过头看着几名捕快道：“这可不是贫僧教的，不过谭家少爷能有此智慧，也实属应当。既然如此，就按谭家少爷的话去办吧！”

　　“是，莲花大师。”这几名捕快连忙说道，多余的话一个字都不说，无比老实，随后就告辞，镜虚空便带着他们出去。

　　等这些捕快一走，住持才看着谈陌，用无比认真的语气说道：“用钱财买命，无论如何，你都是划得来。在这鹰愁涧，只有贫僧才能挡得住青眼，劝她此事到此为止。”

　　说完，住持看向了内院弟子空门鬼，说道：“师弟，你去将谭家留下来的家业清点一下，全部换成黄金，遇到了青眼，就将黄金全给她。”

　　“是，住持师兄。”空门鬼是一个面相阴柔的僧人，面净无须，他双手合十，就匆匆走了出去。

　　谈陌听得不由一愣，他以为这莲花寺会看上谭家的家业，但没想到住持说的拿钱才买命，是将谭家的家业换成黄金后，给那个叫青眼的。

　　“住持，这青眼，是为何物？”谈陌忍不住问道。

　　“青眼，是个忌讳。贫僧现在只能告诉你，她不是人。”住持莲花大师说着顿了一顿，然后才继续说道：“因为贫僧打不过她。”

　　谈陌不由看了看这位莲花大师，只见他神态无比认真。',10031,10092);
insert into ds_book values(null,10093,'“贫僧没有说笑，若不然，那些夜郎自大的洋人当初也不会差点因此全军覆没。要不是有个和尚刚好路过，不忍之下多管闲事，将青眼阻了一阻，也不会有残兵逃到这鹰愁涧来，可能也就没有你父亲会和青眼牵扯上了。”莲花大师微微闭目，缓缓摇了摇头。

　　“那位大师是谁？”谈陌忍不住问道。

　　“敢挡在青眼面前，自然是死了，无需去记住一个死人的名字。”莲花大师一脸的漠然，很随意的说道。

　　“是。”谈陌答应道。

　　“如果你没有什么还想知道的，那么我们就言归正传吧。”莲花大师随即说道。

　　“弟子暂时没有了。”谈陌见莲花大师有正事要说，尽管这会儿还有一肚子疑惑，但还是这样回答。

　　莲花大师点了点头，目光炯炯的看着谈陌问道：“我莲花寺分内外院，内院弟子算上贫僧，也才六人。你可愿做这第七人？”

　　“弟子愿意。”

　　“那好，贫僧便代师收徒，收你为我师大摩僧门下第七徒。”莲花大师说道，“你养出了白骨心，贫僧才这般看重你。你先去准备一下，两日后举办收徒仪式，同时也是你祭祀白骨莲花的时候。成不成也看那时候了。”

　　说完，莲花大师吩咐道：“白骨子，你带着七师弟去熟悉一下。”

　　白骨子正要答应，镜虚空却率先走了出来，行了一礼，双手合十说道：“住持师兄，七师弟往日负责给伙房挑水，而我是在伙房做饭的，往日里和七师弟最为熟悉，便由我去吧。”

　　莲花大师不以为意，点了点头，“你去吧，把事情关照的仔细一点，白骨心可不好培养。”

　　“是。”

　　谈陌听得不由心中一紧，这怎么听着这莲花寺的收徒仪式，有些鬼里鬼气的感觉啊？而且那句成不成也看那时候了，给他一种如果他要是祭祀失败，自身会死的感觉，心底里不由凉飕飕的。

　　这时候见到镜虚空往外面走，他便赶紧跟了上去，然后他就听到镜虚空边走边说道：“你认为这个世界，是怎么样的？”

　　“啊？”谈陌一愣，下意识的“啊”了一声。

　　镜虚空摇摇头，似乎是意识到自己不该问一个八岁小孩子这般深奥的问题，于是就简洁明了的说道：“你看到的世界，和我们所看到的世界，是不一样的。因为，这个世界上，是有鬼怪的。比如说这鬼，一般人是看不到的，只有快死的人，才能看到鬼。”

　　谈陌点了点头，那么那青眼无疑是鬼怪了，他便看着镜虚空，等待着镜虚空的下文。

　　镜虚空接着说道：“有一些特殊的人，天生就能看到鬼，甚至还能对付鬼怪，不过这都是血脉传承的。而你，无疑没有这个血脉。不光是你，我也没有。但是……”

　　他说着便是双手合十，念了一声南无阿弥陀佛，一瞬间，似乎是产生了错觉，谈陌居然看到了一尊佛像出现在自己面前，只不过这佛像整体很模糊，一晃神的功夫，这尊佛像便消失不见了。

　　再看过去，谈陌就看到镜虚空满头大汗，气喘吁吁的说道：“我们莲花寺有独特的手段，让普通人具备对付鬼怪的能力，这种手段，我们称之为修行。不过想要修行，必须要有灵根，而这种灵根，也是血脉传承的。”

　　镜虚空说的有点乱，但谈陌还是理清楚了。

　　这个世界上的人，分为两种，天生能看到鬼，并且有能力对付鬼的。这一种姑且称之为天赋，而这第二种无疑是普通人了。
','　　另外在这普通人当中，又分出两种，一种是有灵根，天生能修行的。

　　第二种，就像谈陌这样的。

　　具体点形容的话，有点扎心，就简单举个例子。

　　“祭祀白骨莲花，便是制造灵根的手段？”谈陌问道。

　　镜虚空点点头，对谈陌的领会程度很满意。

　　“正是，让灵根无中生有，从流淌凡人血液的身体中诞生出来，堪称是逆天而行，因此这灵根想要诞生出来，过程很折磨人，虽然不致命，但失败了，人就完全成了废人，若是没人照顾早晚饿死。”镜虚空说着伸手拍了拍谈陌的肩膀，安慰道：“不过，你养出了白骨心，等我教你白骨观和如是心咒后，你诞生灵根的成功率就很大了。”

　　谈陌这下明白莲花寺为什么招收那么多小沙弥了，还真不是白养着的。难怪招收的小沙弥必须是有亲人健在的了，不能是无父无母一类。

　　“哦，对了，师兄手里有丹药，也可以增加成功几率。不过，我不建议你吃。”这话是镜虚空犹豫了一下后说出来的。

　　“丹药？”谈陌一愣。

　　“不是你想的那种灵丹妙药，是用铅汞调制出来的，吃了会死人的。”镜虚空可能是想着自己说都说了，于是把关于丹药的事情也给说了。

　　谈陌这才知道，在这个世界，丹药有很多，但几乎超过九成九都是假丹、毒丹。吃了后，就算不毙命，也得拉个半死。

　　“那有真正的灵丹妙药吗？”谈陌忍不住问。

　　“有，那种丹药炼起来动不动就是几十年的时间，完全得不偿失，所以没人会炼。”镜虚空摇了摇头。

　　“那为什么还有那么假丹？”谈陌诧异。

　　“总有人想走捷径，想不劳而获。”镜虚空苦笑道，“哪怕智如我们住持师兄，也忍不住想尝试一下，并且还固执地认为他练对了，没有练成毒丹！但是……连他自己都不敢吃。”

　　“多谢镜虚空师兄。”谈陌诚恳的道谢，因为对于镜虚空这番话他也不知道该吐槽些什么好，只能这样说。

　　“我先传你白骨观和如是心咒。”镜虚空点点头说道。

　　谈陌一脸恳切，不过内心忐忑不安。

　　因为他这个白骨心，其实是假冒的……

　　不过在等镜虚空传他白骨观和如是心咒后，谈陌却立马松了口气。

　　白骨观和如是心咒并不长，只有简短的百十来字，不过看起来都玄奥无比。白骨观要心存白骨念，然后做到不为美色所动，看到美人如同看到了白骨。而如是心咒则是一篇经文，念起经文的时候，要在脑海中观想出佛陀来，然后达到如是我闻的禅境。

　　但在谈陌仔细看了三遍后却发现，无论是白骨观还如是心咒，都是在调节自身的心理变化。

　　谈陌不擅长心理学，不过他在穿越前，曾在某个擅长心理学以及精神治疗的地方住了有一阵子，近朱者赤，现在也算是堪堪入门。
','　　因此，很快的，谈陌就修成了如是心咒。没什么神异反应，也就他在念经的时候，脑海里会出现很模糊的一团金光，似乎金光里头有个人影。

　　至于白骨观，不是谈陌放弃了，而是在他修成了如是心咒，达到这所谓的如是我闻的禅境后，突然发现自己眼皮子底下多出了一样奇怪的东西。

　　具体是什么东西，谈陌也没办法形容，就是一个很复杂的图案，还有点像是小孩子的随手涂鸦。

　　不过在他将目光无意间注视如是心咒的手抄本上，那个图案闪了一下，然后他脑海中就出现了一段信息。

　　如是心咒，结合白骨莲花的成功率+35%。

　　谈陌愣了一下，目光若有所思，然后想了想，就看向了白骨观的手抄本。

　　视野中的图案随之闪了一下，脑海中的信息跟着出现变化。

　　白骨观，结合白骨莲花的成功率+35%。

　　然后，谈陌将两本手抄本放在一起，信息再次出现变化。

　　如是心咒+白骨观，结合白骨莲花的成功率+70%。

　　谈陌眉头一挑，一下子面露喜色。尽管不知道他视野当中这个图案怎么来的，但无疑是个好东西。',10031,10093);

insert into ds_book values(null,10094,'‘开头还算有趣，但后续空洞的游戏内容，千篇一律的地下城魔物我很不明白作者究竟是想要讲述一个什么样的故事。’

        ‘复古的像素的画风非常讨人喜欢，游戏的前半程挺好玩的，但枯燥的战斗系统，跟混乱的数值设计，以及层出不穷的BUG，让人根本没有耐心玩下去。’
    
        《魔物地下城》游戏星空评分：3.0
    
        玩家评论（41）
    
        ‘无聊的剧情，无聊的战斗设计，不过在这个时代竟然还有人做复古像素风，也不知道是怎么想的。’
    
        ‘像素风格的画面，倒是让人感觉有点意思，不过游戏也忒无聊了，白浪费了45的大洋。’
    
        ‘我要做一款伟大的游戏。’曾经刚刚入行的杨晨发出这样的豪言状语。
    
        然而事实的真相摆放在面前的时候，还是太过于残酷了。
    
        “唉……”
    
        深夜十二点尚海的出租屋内，杨晨看着电脑屏幕上那刺眼，用红色标出的3.0评分，发出一声叹息。
    
        这已经是不止第一次看这篇评测了，实际上3.0的评分，恐怕都还有发行公司前期口碑公关的功劳。
    
        定价为45元的游戏，仅仅只卖出了不到5000份，扣除掉渠道抽成以及后续玩家退款的份额，真正到他手上的利润仅仅只有5万左右。
    
        而整个游戏的成本，他投入了30万。
    
        是的，他是这款游戏的制作者。
    
        毕业于尚海政法学院的杨晨，从事的专业是汉语言文学，一个他自己都不知道当初为什么会选择的专业。
    
        最后成功毕业的他，就如同绝大多数的人一样，走上了一条跟自己专业无关的道路，一条他由衷喜欢的路。
    
        他选择了游戏制作这一行路，从最初入行剧情策划，到后面自学相关的程序、美术，再到离职创业，他花了差不多3年的时间，不算长，但也不算短的一个时间。
    
        拿出自己3年来的积蓄，招兵买马，为了节省成本没办法租商务写字楼，只能够选择小区内的毛坯房作为办公地点。
    
        对市场调研，面对当下各种的流行元素，最后杨晨选择了复古的像素风，毕竟作为独立游戏者而言需要有一款能够吸引人眼球的东西，复古就是杨晨想要打造出来的噱头了。
    
        确定好所有的工作后，一年后他带着所开发的一款冒险类的像素游戏《魔物地下城》杀入市场，原本他以为能跟小说里写的一样一鸣惊人，然后成为国内游戏界的一匹黑马，最后打造出一个游戏娱乐帝国。
    
        但现实给了他一棒槌。
    ','        游戏开发远远没有他想的那么容易，团队的磨合，项目的开发，包括开发过程中遇到的困难，还有资金的窘境。
    
        甚至到了游戏开发最后的时候，整个团队里面就只剩下了扬晨自己一个人了，其余的员工都因为觉得项目没有潜力选择辞职。
    
        最后的一个月包括游戏的优化，BUG测试修补，全部都是杨晨自己负责进行的。
    
        而现在，显然那些选择辞职的员工，他们的选择是对的，这是一款失败的游戏。
    
        长达一年多的游戏开发，对于独立游戏者而言挺正常的，但是在如今流水线的操作下，一年前热门的元素到现在也没有什么吸引力了。
    
        而且因为人员以及经费的问题，到了后期所有的活都是他自己干，这导致包括数值甚至是优化等等方面，都出现了不小的问题。
    
        而这些不小的问题混杂在了一起，对于玩家而言就是糟糕的游戏体验。
    
        “唉……”关掉网页，杨晨轻轻叹了口气。
    
        就在叹息声落下的时候，一件外套披在了自己的身后。
    
        “还在想失败的事情啊？”一道俏皮的声音在自己的耳旁响起，带着温热的气息一张俏脸凑到自己的旁边，王亚梁双手抱住杨晨的胳膊。
    
        “嗯……吵醒你了么？”杨晨愣了一下，看着凑到自己旁边的王亚梁，带着些歉意说道。
    
        这是他的女朋友，比自己小两岁，从高中的时候他们两个就在一起了，偷偷摸摸的地下恋情，平时见个面都跟以前的地下党会面一样。
    
        那时候他上高三王亚梁上高一，然后因为距离想考的大学，分数线还差几分，他选择了复读，那一年他高三王亚梁高二。
    
        在之后他就来到了尚海，只有在周末的时候，才有机会用手机聊天，聊着他在尚海遇到的有趣事情，聊她在高三遇到的烦恼事情，但这看起来比较脆弱的恋情，并没有如同大多数人想的一样凋零，因为在第二年的时候王亚梁也来到了尚海，来到了同样的一所学校。
    
        “被窝很冷诶，不能抱着你我冷的睡不着。”王亚梁笑嘻嘻的撩着杨晨。
    
        “对对对，昨天晚上某人，抢被子差点一脚把我踹下去了。”杨晨翻了个白眼，然后伸手将王亚梁抱在自己怀里。
    
        “我妈晚上跟我打电话了，她知道你的事了。”将头靠在杨晨的怀里面，王亚梁模仿着语气：“我妈她说了：小梁啊，实在不行就别在尚海了，回县里也挺好，你跟小杨说一声，你爸在局里也有点关系，到时候让他看看书，等来年公开招聘的时候，考上个面试分，面试的时候差不多就能内定了，你也老大不小了，过年都25了。”
    
        “我妈这意思催婚了诶。”王亚梁仰起头，眼里带着笑意。
    
        “你的意思呢？”杨晨抱紧怀里的人。
    
        “我无所谓啊，反正你这辈子想都别想跑了。”伸出手在杨晨的脸上掐了掐，王亚梁带着笑意说道。
    ','        “当然不跑，好不容易找到一个傻妞，要是跑了不是得打一辈子光棍了？”杨晨笑着，腾出右手抓着鼠标将电脑关上。
    
        “那你说呢？要不年底我们就回家？”王亚梁将头靠在杨晨的胸上，轻声说着。
    
        听见王亚梁的话，杨晨愣了一下，看着旁边的电脑，想到这几年的经历。
    
        也许，自己真的不适合做游戏吧。
    
        过了两秒钟，杨晨点了点头：“好，年底的时候，我们回去吧。”
    
        听见杨晨的话，王亚梁脸上露出笑容，抬起头对着杨晨的脸掐了掐。
    
        两人在床上闹了一会，然就关灯盖上被子躺了下来，很快闭着眼睛的杨晨就听见旁边传来轻微的鼾声，然后过了几分钟，又或者十几分钟，一丝困意袭来他也慢慢睡了过去。
    
        不过跟以往不同的是这一次的杨晨做了一个梦，一个很真实的梦。',10032,10094);
        insert into ds_book values(null,10095,'梦里面，他梦到了一个新的人生，同样的地球、同样的国家，同样的历史，只不过有些地方又不一样了。

    附身在了一个游戏宅的身上，无数奇妙有趣的游戏，让他沉迷其中，不知道在那个世界过了多久，可能是十年，也可能是更久，那个游戏宅猝死了，而他也从梦里醒来了。

    “呼……”闭着眼的杨晨，打了个机灵，猛地一下坐了起来。

    “阿晨……你干什么啊？”睡梦中的王亚梁被杨晨的动作惊醒，半迷糊的眯了眯眼睛。

    “做了一个噩梦，你继续睡吧，我出去跑两圈，然后给你带点早餐。”看了一眼时间已经早晨六点了，杨晨小心翼翼的从被窝里面爬出来，然后将背脚塞严实。

    “呜……”听见杨晨的话，还睡得有点迷糊的王亚梁发出一声意义不明的呜声，翻了个身子继续睡觉。

    穿好衣服，蹑手蹑脚的走出房间，然后轻轻带上房门，杨晨做到沙发旁边点上了一根烟。

    “那真的是梦么？为什么感觉那么真实？”吸了一口烟，轻轻吐出眼圈，想着梦境中的一切，杨晨突然发现那些内容就仿佛是扎根在自己的脑袋里面一样。

    是梦么？

    可为什么这么的真实？

    “那是另外的一个世界？我在做梦的时候，去了另外的一个世界？”杨晨心里出现了一个荒谬，但是却又无法反驳的解释。

    完善的游戏体系，梦里面的那个游戏宅所玩过的游戏，杨晨记得清清楚楚，那些都是成品的游戏。

    跟现在市场上的游戏完全是不同的，只不过那个世界的游戏开发水平似乎非常的落后，不像是现在一样游戏开发几乎可以当成流水线上的产品，只要有足够的钱甚至两个月就能够开发出一款跟记忆中那些所谓3A大作一样的游戏。

    如果是一个外行人看见那些游戏，或许只是会哈哈一笑，但是杨晨却很清楚，那些游戏巧妙的设计，都是真实存在的。

    甚至有一些游戏，让杨晨感觉到震撼，感到惊艳，游戏真的能够做到那样么？

    “这算什么？网文小说中写的一样，给我开了一个金手指么？”想起在国内某个小说网站上，曾经无聊时看过的一两篇小说中的情节，杨晨有点古怪的想道。

    一根香烟抽完，杨晨将烟头掐灭，看了一眼身后紧闭的房门，然后小心翼翼的将香烟头用餐巾纸包裹起来，然后扔进厨房的垃圾桶里面，顺带着将香烟盒藏到了沙发垫的缝隙里。

    刷牙、洗脸，将毛巾挂好后，原本打算下楼买早饭的杨晨停下脚步，想了想转身回到客厅里面，拿起放在茶几上的笔记本电脑。
','    开机，然后新建一个文档，轻轻的敲击着键盘。

    ‘地牢射击，随机性、探索元素，不可控因素……’

    大概花了半个小时左右，杨晨写上了差不多满满两页的内容。

    这是他在梦中见到的一款游戏，一款让他感觉到十分惊艳的游戏，更重要的是这款游戏，或许他能够很容易的做出来。

    在梦中的世界，虽然游戏业也很发达，但不得不说开发水平有一点落后，而且甚至有一些国家还并不怎么支持游戏产业，好多游戏如果没有通过那个国家的审核，甚至只能翻墙来游玩，有一些国家甚至还出现过游戏机禁令，跟将游戏妖魔化的情况。

    而在现实，则是有明确的游戏分级制度，只要不是反人类、反社会那种游戏，通过审核基本上没有什么问题，同时官方也很支持游戏这一产业，不仅是税收甚至是技术上面，都有很大的支持力度，甚至还有专门负责游戏这一块的政府部门，跟官方运营的游戏平台。

    而且不像是梦中那个世界，开发团队甚至还要自己开发游戏引擎，现实中政府官方甚至推出了专门免费开放使用的游戏引擎，从适合独立游戏制作的小引擎，到适合大规模制作的游戏引擎，只要游戏企业满足条件，都能够申请的到，根本不需要花费大量的金钱进行自我开发。

    当然如果游戏厂商觉得这些引擎不适合自己，同样也能够自己投入资金开发引擎。

    一般的梦境而言，通常醒来后对于梦境中的记忆，都会失去大半只有一个模糊的影响，即便是现实真实发生过的事情，繁多的记忆跟时间跨度较大的记忆，人们也会经常将一部分遗失在大脑的某一处。

    但关于杨晨发现关于在梦境中的记忆，如今却清清楚楚的记忆在自己的脑海里面，就仿佛是摆放在自己面前的图书馆一样，所有的记忆都已经分类安置好了。

    将关于游戏的初稿放在文件夹里面，然后加了一个密码锁，杨晨拿起旁边的棉袄套在身上下楼去买早饭。

    下楼，骑上电动车十分钟后，杨晨带着三个烧麦跟一杯豆浆回来。

    “真的要回去么？”坐完电梯，回到家里后，杨晨心里面生出了一个念头。

    虽然昨天晚上已经答应王亚梁了，但那个如真实经历过一个世界的梦境，让杨晨又产生了一些想法。

    如果是自己个人的能力，或许现在的自己真没有那个本事吧。

    但自己拥有一个没有人知道的宝藏啊！

    不去试试的话，自己真的很不甘心啊！

    但该从哪里来钱呢？

    拉投资，会有人投资么？

    一个没有一点名气，首部作品就失败的新人？

    “咦，烧麦么？西行路张家的烧麦么？”就在杨晨做着思想斗争的时候，客厅里面穿着一套大熊猫睡衣的王亚梁见到杨晨进来，嗅了嗅鼻子眼睛一亮有些兴奋的说道。

    “你的鼻子有这么灵么？”看着蹦蹦跳跳来到面前的王亚梁，回过神来暂时不去想这些事，杨晨笑了笑将烧麦放到桌子上。

    坐在旁边看着一口烧麦，一口豆浆的王亚梁，咬了咬嘴唇杨晨有些犹豫道：“我跟你说些事情……”

    “嗯？”听见杨晨的话，王亚梁放下手里面的烧麦，脸上带着点疑惑看着杨晨。

    “我……我还想在试一试。”深吸了口气，杨晨看着王亚梁说道。
','    说完后，杨晨的头微微低了低，视线从王亚梁的脸上移开。

    嘴里面嚼着烧麦，客厅里面十分的安静，只听见嘴巴咀嚼的声音。

    沉默了一会，王亚梁将嘴里的烧麦咽了下去，抿了抿嘴唇：“明明昨天说好的了。”

    杨晨张了张嘴，想说话，但是一句话都没有说出来。

    能说什么呢？

    自己昨天做了一个梦，跟网络小说里面写的一样，有了金手指？

    两个人沉默大概半分钟左右，王亚梁将手中的豆浆也放了下来，突然站了起来然后转头走进了卧室，砰地一声将门关上。

    叹了口气，杨晨靠在沙发上面，从旁边的缝隙拿出香烟，点上了一根。

    嘴里面吐出烟圈，杨晨看着地上的瓷砖，苦笑了一声。',10032,10095);
    insert into ds_book values(null,10096,' “最后信你一次，卡里还有40多万，你以前的工资跟《魔物地下城》那些钱，以及我自己所有积蓄都在里面了，本来是打算当以后我们新房首付的，这次你要是赔了，那我们房子首付可就没了。”

    推开房门出来的王亚梁走到杨晨的面前，摇了摇嘴唇从口袋里面掏出一张工行的储蓄卡。

    看着塞到自己手中的银行卡，杨晨嘴巴张了张半天没说出一句话。

    “先说好这钱可不是我白给你的，是我做的投资，新的公司我要当大老板；你要是创业失败了，你就把自己赔给我好了。”王亚梁扑到杨晨的身上，两只手捏着对方的脸，嘿嘿的笑着。

    抓着手中的卡明明很轻，但扬晨却感觉很沉，很沉。

    半响后杨晨看着跟树袋熊一样趴在自己身上的女人，突然笑了笑：“好的，王总！”

    我的上辈子，一定是个好人吧！

    “所以，接下来……老杨同志，能跟你的王总谈一谈，你买烟的钱是从哪来的了么？”

    杨晨：!!!∑(ﾟДﾟノ)ノ

    ………………

    “在尚海有点吃不消，暂时回老家吧。”

    他们只有40多万的启动资金，杨晨不是小白，这一行摸爬滚打了几年，再加上担任过两次的游戏主策划，杨晨知道一款游戏的开发需要什么。

    40多万，如果继续在尚海的话，光是生活成本就要消耗很大一部分的资金了。

    再加上办公场所，跟人员工资等必要的资金，又是很大一部分的支出。

    而且有着脑袋里面的梦境记忆，杨晨已经决定好第一款游戏究竟要做什么了。

    “听你的，反正你去哪，我就去哪。”毫无淑女形象的伸着懒腰，靠在沙发上往后面仰了仰，王亚梁睁大眼睛看着杨晨一脸认真的说道。

    “不过做游戏的话，只有我们两个困难很大诶。”想到什么，王亚梁又有点苦恼的说道。
','    大学时候王亚梁学的并不是跟游戏方面有关的东西，而是思想政治教育的专业，大学毕业后在杨晨的开后门下进入到公司，担任行政方面的工作。

    玩游戏她倒是挺在行的，但如果说做游戏的话，即便自己的男朋友是游戏制作人，但她也是九窍通了八窍。

    “问题并不是很大，这一次我打算将大部分内容都交给外包，主要的数值，关卡设计，跟美术风格都由我来进行，程序方面的话交给合同工。”杨晨给王亚梁解释着说道，虽然他知道这个丫头多半是不明白这些东西到底是什么。

    一般的独立游戏开发，基本上只有两三个人，而这两三个人包括程序、数值、关卡设计、创意、文案，音乐，美术，等等都要涉及。

    所以一般独立游戏的开发周期会比大型游戏的开发周期还要长。

    比如全部走外包的话，一款游戏制作周期为1个月，需要30万RMB。

    而仅有三个人的小团队自己来，制作周期为1年，但成本却只要10万RMB。

    那么很多独立游戏团队，都会选择后一种方案，之前的杨晨就是采用的这一种方法，同样这种方法虽然节省了成本，可较长的制作周期会发生很多不可控的事情。

    比如你要开发的游戏，已经有同类型的上线了，比如你开发的是RPG游戏，而这一段时间RPG游戏的风潮已经过去了，这些都是非常不利的不稳定因素。

    所以杨晨这一次是决定走第一种方案，因为他需要快速的成功，同时记忆中的那些游戏，让杨晨有一些底气成功。

    即便不是同样的世界，但成功的游戏就是成功的游戏，不可能说一个啥都不懂的人让他重生一次在不学习，不充电的情况下，他就能成世界首富。

    借助一些东西，成为富翁不是很难，但真要成为首富，这显然是不可能的。

    “嗯……嗯。”

    杨晨看着装作自己听懂，露出一脸恍然模样点头的王亚梁不由得失笑。

    三天后，从尚海到江市。

    一间两室一厅简装修的房子，每个月租金900元，以及一间60平小三房的纯毛坯房700元一个月的租金，水电费自理。

    三台高配的电脑，以及相应的办公桌，办公椅跟饮水机，40多万的资金已经花掉一万多了。

    主要是在房租预付上面，至于电脑的话，还是开发《魔物地下城》的时候使用的。

    “这可是我的小金库，千万不能失败了啊！”王亚梁脸蛋通红，气喘吁吁的将行李安置好，转身就躺在床上，看着旁边正在安装路由器的杨晨说道。

    听见王亚梁的这话，装好路由器的杨晨不由得笑了一声：“现在后悔也晚了吧？”

    “哼，后悔什么，40万买你一辈子，我赚大了。”王亚梁嘴角微微翘了翘，轻哼了一声，然后又有一点担忧的问道：“接下来我们该怎么办？去人才市场对外招聘么？”

    对于这些她是一点点的经验都没有，将钱全部给杨晨，然后从尚海到老家，纯粹就是相信杨晨而已，但是现在冷静下来她又觉得有点太那个了，就好像是脑袋一热然后就拍板决定创业了一样。

    甚至虽然已经回到老家了，但她都没有敢跟她的爹妈说。
','   “去人才市场没什么用，本身就没有什么真的人才，而且有能力的也不会选择加入我们。”杨晨摇了摇头说道。

    虽然很想组建一个团队班子，但杨晨也不得不承认一点，那就是现在他真的没有什么能力去成立。

    用钱砸？不现实，因为现在他最缺的就是钱了。

    忽悠？更不现实了，他是有案底的；如果《魔物地下城》成功了，那倒是好忽悠，但关键是失败了啊。

    “找工作室代工，包括UI、美术、程序这些全部外包出去，主要的设计、数值、还有关卡，文案这些由我自己来。”杨晨差不多已经想好了。

    还剩40多万的资金，这样做完全足够了。

    如果是以前他当然不敢这样说，但有了梦中的记忆，游戏的一切都清楚的记在脑子里面，数值还有关卡设计，进行反推虽然有点复杂但并不困难。

    同样UI、美术、文案这些自己进行复制，然后根据实际情况更改一些就行了。',10032,10096);

    insert into ds_book values(null,10097,'北宋，天禧三年，春，微冷。

    官道上。

    年仅十六岁的寇季，身穿着浆洗的发白的长衫，瘦弱的面孔略显苍白，他坐在牛车上，努力的把身子缩进高高的货物里，借着货物遮挡寒风。

    赶车的汉子从身上扒拉下一件羊皮袄，扔到了他身上。

    寇季没有嫌弃羊皮袄上那浓浓的腥臭味，捧着羊皮袄连连道谢，“多谢张成哥哥……”

    “无需客套！”

    面冷心热的张成，脸上冷冰冰的回了一句。

    一阵寒风吹过，寇季快速的用羊皮袄裹住了自己，重新躲进了货物堆里。

    “啊噗~”

    “吸~”

    喷嚏声和吸溜鼻涕的声音在寇季耳畔响起。

    寇季皱了皱眉头，努力假装听不见，但是他那一颗柔软的心，促使着他坐起身，将身上的羊皮袄甩了出去。

    “披着吧！”

    羊皮袄砸在了跟在牛车边上，一个年仅十四岁左右，衣衫单薄，冻得鼻青脸肿，留着长鼻涕的少年身上。

    少年擦了擦鼻涕，抱着羊皮袄，迎面给了寇季一个热情的笑脸。

    “少爷，我不冷……”

    少年名叫二宝，没有姓，从小被买到了寇家，一直跟着寇季，形影不离，是寇季的书童兼长随。

    寇季闻言，双手缩进袖口里，瞪了他一眼，喝斥道：“你是少爷我是少爷，我说你冷，你就得冷。”

    二宝了解自家少爷的脾气，听到自家少爷发火，他吓的缩了缩脖子，赶忙裹上了羊皮袄。

    他也不知道道谢，只是一个劲的冲着寇季傻笑。

    寇季又瞪了他一眼，骂骂咧咧的重新窝进了货物堆里。

    张成似乎一直关注着他们主仆二人，当他看到寇季将羊皮袄甩给了二宝以后，脸上露出了难得的笑意。

    他笑容难看的开口道：“你小子不坏，以后肯定能在汴京城里混出头，就是喜欢吹牛的毛病得改改……”

    听到这话，寇季有些不乐意了，他坐起身，义正言辞的道：“我祖父真是寇准！”

    二宝在一旁跟着点头道：“我们家老太爷就是寇准！”

    主仆二人这话一出，旁边跟着牛车队伍的人都笑了。

    “你祖父要是寇准，我娘那就是当今皇后！”
','    有人跟着起哄了一句。

    张成好言相劝道：“小子，亲戚可不能乱认。知道他们为啥笑你吗？那是笑你没见识。咱大宋朝，谁不知道，寇公并无子嗣。

    你要招摇撞骗，也不该冒用寇公子嗣的名头。

    在汴京城外，大家也只当是个笑话听。

    可是进了汴京城，你再借着寇公名头招摇撞骗，那可是要挨打的。”

    寇季无奈的瘫坐在牛车上，耸了耸肩，笑道：“被你们发现了……”

    此话一出，又引来了一阵哄笑。

    这样的场面，在这一路上，已经发生了数次了。

    众人结伴长途跋涉的时候，总有好事者喜欢打听一下别人出行的目的，以及家世。

    寇季如实的说出自己的家世以后，就被人当成了小骗子。

    寇季没有去强辩。

    他心里清楚，他没有说谎。

    他也是在穿越之后，在华州乡里过了一段时间苦日子，才弄清楚自己身份家世。

    诚如大家所言，寇准确实一生无子。

    但是年迈以后，就动了收一个从子的念头。

    而寇季那个在外游学的便宜父亲寇礼，因为父母双亡，加上书读的不错，就被寇准相中，认了从子。

    寇季也跟着水涨船高，一晃就变成了寇准的从孙。

    前些日，寇季还在华州乡里的渭水边上摸鱼，寇礼派人从汴京城捎来一封信给他，告知了他这件事，并且还告诉他，祖父寇准复相了，让他速速到汴京城里来享福。

    寇季几乎想都没想，拉着二宝，背上行囊就往汴京跑。

    前世当了半辈子的穷鬼，现在好不容易有个机会当官三代、纨绔子弟，他一点儿也不想错过。

    当然了，以他的新贵身份，不可能只带着一个书童就上路的。

    出华州的时候，族里为了巴结他，给他配了十二个忠心耿耿的豪仆跟着。

    然而出了华州不到五里，就碰上了三次劫道的。

    十二个忠心耿耿的豪仆，死光了。

    若不是逃命的时候，碰上了这支前往汴京城的百人大队，估计他跟二宝两个，也会成为山间草寇的刀下亡魂。

    正是因为失去了豪仆的跟随，他说的话，才没人信。

    重新躺回了牛车里，寇季懒得再跟这些人多费口舌，他半眯着眼，继续在脑海里幻想到了汴京城以后，走马架鹰的纨绔生活。

    牛车颠簸着前行。
','    约莫过了一个时辰后，路过一个茶棚，众人用铜板换了几碗茶水，蹲在茶棚门口，混着干饼啃了起来。

    寇季主仆身无分文，只能跟着心善的张成，蹭了一碗茶水，两张干饼。

    简单的填了填肚子，众人继续上路。

    又过了一个时辰。

    微弱的喧闹声从远处传来。

    坐在牛车上闭着眼假寐的寇季觉得牛车停了，猛然睁开眼，就看到了远处，一座雄城出现在他眼前。

    高大耸立的十几丈高的城墙上，旌旗林立，城墙里青烟袅袅，一顶顶尖角的藻顶，拱卫着那金碧辉煌的皇宫。

    城池巍峨，雄壮不凡。

    “少爷，少爷，到汴京了！到汴京了！”

    二宝扯着羊皮袄，在一旁激动的叫着。

    其余赶路的人，也一脸激动的纷纷驻足观看着这一座雄城。

    “此番入汴京，必定求一个富贵！”

    有人紧了紧身上的包袱，坚定的说了一句。

    一下子引起了其他人的共鸣。

    他们纷纷点头响应。

    恍惚间，寇季仿佛看到了后世，千万人奔往北京求富贵的场面。

    这大概就是首都的魅力。

    寇季缓缓站起身，挺直了腰板，仰望着汴京城，幽幽道：“此番入汴京，享富贵！”

    此话一出，又引来了一阵哄笑。

    张成侧过头，白了他一眼。

    “啪！”

    张成甩了甩手里的皮鞭，拉扯的老黄牛又迈出了它沉重的步伐。

    寇季一个没站稳，栽倒在了货物堆里。

    越临近汴京城，众人的脚步就变得越轻快。

    他们似乎迫不及待的想要进入到汴京城里，想要尽快的目睹汴京城的风采，想要一享汴京城的富贵。

    渐渐的，城近了……',10033,10097);
    insert into ds_book values(null,10098,'众人到达新郑门的时候，门口早已聚满了人。

    守门的小吏、军卒们，严格的盘查着众人的官凭路引、包袱、货物。

    验明正身，确认携带的货物们没有违禁品以后，才会放人入门。

    相比而言，新郑门旁边的西水门上往来的船只盘查，就没这么严谨。

    从城外，到城内。

    寇季主仆二人，就像是进了大观园的刘姥姥，眼睛就没停过，不停的打量，四处乱瞧。

    他们这一群结伴上路的人，在入城以后，互相拱了拱手，许下了富贵以后在樊楼等地相聚的豪言。

    然后就地分道扬镳。

    或向东、或向南，沿着大道一路豪迈前行，最终消失在了茫茫人海。

    张成一边整理着被军卒们翻乱的货物，一边侧头问寇季，“寇季兄弟，你往哪儿去？”

    寇季收回了四处打量的目光，拱手笑道：“去马行街寇府！”

    张成哭笑不得的摇摇头。

    抬手一拍，十个铜钱塞进了寇季手里。

    不等寇季发声，他就一跃跳坐在了牛车车辕上，甩了甩皮鞭，离开了此地。

    “家里娘子严厉，哥哥也不能给你太多钱财。真要在汴京城里混不下去，就到西瓦子市的秦川布行找哥哥。切记，行骗不是长久之计……”

    张成的声音，被周遭小商小贩们的呼唤声所掩盖，连带他的牛车也被茫茫人群所埋没。

    寇季望着张成离去的地方，攥紧了手里的十个铜钱，低声自语，“西瓦子市，秦川布行，我记住了……”

    十个铜钱被寇季快速的揣进了怀里，然后他用威胁的目光向四周那些充满了觊觎目光的人瞪了瞪。

    在那些人反瞪回来的时候，寇季已经拉着二宝消失在了人海里。

    汴京城很大，足足有两百万人居住在其中。

    马行街很远，距离新郑门足有半个时辰的路程。

    寇季拉着二宝，一路上问了十几次路，走错了六个巷道，最终才弄清楚了去马行街的道路。

    沿途，寇季也欣赏着汴京城的风景。

    街道上行人摩肩接踵，街道两旁店铺林立。

    脚店、酒肆、布行、酒楼、青楼、教坊等等，比比皆是。

    小商小贩们挑着担子穿行在人群中，卖馄饨的，售炊饼的，只要招呼一声，他们就会挑着担子在你身边停下。

    卖糖葫芦的小贩，裹着前襟，手里撵着一串糖葫芦不停的吆喝，还不时的在年幼的孩童眼前晃荡。

    亮晶晶、红彤彤的糖葫芦，一下子就把二宝吸引住了。

    二宝不走了，站在小贩面前，盯着糖葫芦一个劲的流口水。

    小贩见生意上门，吆喝的更起劲了，他还不时的拿着糖葫芦在嘴里舔一舔，发出吧嗒吧嗒嘬嘴的声音。

    二宝恨不得扑上去从他手里抢过来。

    寇季喊了他两声，也没有喊动他。

    似这等书童仆人，放在别人家府邸里，估计会被乱棍打死。

    寇季想发脾气，他一发脾气二宝肯定怕。

    但最终他还是忍住了。
','    对于这个时代的人而言，二宝已经算是一个可以成家立业的男子汉了，可是放在后世，二宝还只是个孩子。

    “啪~”

    寇季从怀里掏出了三个铜钱，甩给了那个讨厌的小贩。

    二宝如愿以偿的得到了一串亮晶晶、红彤彤的糖葫芦。

    他一边舔着糖葫芦，一边感激的看着寇季。

    在这一刻，他觉得自家少爷是全世界最好的人。

    寇季瞪了他一眼，继续赶路。

    过了内城的郑门，一路赶到了州桥。

    桥上车马如龙，桥下小舟穿梭不停。

    有文人大袖飘飘，站在船头上提着酒壶吟诗作赋；有富商大贾，贪恋船娘子做的乳白鱼汤，端着碗不停的吸溜。

    一艘大船沿河而下。

    路过州桥的时候，船老大扯着捆绑着船帆的绳索，大声吆喝。

    船夫们卷起袖子，赤着脚，拼命的拉动着船帆上的绳索。

    一丈高的船帆被放到，船上的客人们纷纷低头避让。

    大船一跃游过了州桥，在船老大的吆喝声中，船帆再次被拉起。

    场面看着十分壮观。

    寇季不能免俗的站在州桥边上，目睹了这一场壮观的场面。

    二宝对此就瞥了一眼，然后一门心思的继续扑到了糖葫芦身上。

    糖葫芦上的糖浆，已经被他舔的干干净净。

    圆滚滚的山楂咬进嘴里，酸的他直打颤。

    寇季继续带着二宝赶路。

    过了州桥，再往东就是大相国寺，过了大相国寺，就是马行街。

    沿着马行街一路往北，在大相国寺背后，是景灵宫。

    景灵宫在马行街西面，街东面，就是寇府。

    寇季幻想中，以寇准的地位，他所在的地方应该门庭若市。

    可现实明显有跟他幻想的不同。

    除了两个巨大的石狮子镇守在门前外，只有一个门子坐在门房里打瞌睡。
','    除此之外，再无一人。

    寇季整了整衣冠，拍了拍身上的尘土，缓缓挺起了胸膛。

    转头看向二宝的时候，差点没被气死。

    一串糖葫芦被吃的就剩下了一个，他似乎有些舍不得吃了，就拿在手里，一个劲的舔。

    寇季粗暴的从二宝手里抢过了糖葫芦，在他紧张的目光中，撸下了那一颗山楂。

    二宝急了，“少爷，我舔过了……”

    话还没说完，就见寇季蛮横的将山楂塞进了他嘴里，堵住了他的嘴。

    “入了汴京，我们就是相府里的人，别给你家少爷我丢人，不然以后你别想再吃半根糖葫芦！”

    寇季恶狠狠的威胁。

    二宝吓的缩了缩脖子，怯怯的答应了一声后，乖巧的跟在了寇季身后。

    寇季再次整了整衣冠，缓步上前，踏上了寇府那足有三尺高的台阶。

    台阶有三层，以青石铺成，十分平整。

    “哪里来的要饭的，一边去，这里是你们能来的地方吗？”

    门房里打瞌睡的门子，不知道什么时候已经醒了过来，他趴在门房口，一脸威胁的看着寇季主仆。

    寇季一听这话，板着脸道：“我姓寇，华州来的！”

    “姓寇？华州来的？”

    门子瞪大了眼睛，重复了一句。

    然后在寇季倨傲的神色中哄堂大笑。

    “这一旬，姓寇的，华州来的，小爷我碰见了七八个。”

    笑过之后，门子脸色一冷。

    “赶紧滚，跑到寇府门前招摇撞骗，简直是讨打！”',10033,10098);
    insert into ds_book values(null,10099,'面对门子的威胁，寇季毫无惧色。

    他从怀里掏出了官凭引信，还有寇礼寄给他的信，顺手扔在了门子脸上。

    在门子愤怒的眼神中，他冷冷的道：“看清楚了再回话，你若是想以奴欺主，我不介意教一教你规矩。”

    门子听到这话，也是一愣。

    眼前的少年，明显比之前那些前来行骗的更具气势。

    他迅速的从地上拾起了官凭引信，仔细翻阅以后，脸色连变。

    “啪啪~”

    看完了官凭引信，门子二话不说，抬手就给了自己两个大嘴巴子。

    然后哭丧着脸，哀声道：“小人有眼不识泰山，不知道小少爷当面，实在是罪该万死。”

    说完这话，他就准备往地上趴。

    寇季皱了皱眉头，冷声道：“不必了！”

    门子脸色更苦，他用哀求的声音说道：“小少爷，不是小人无礼，实在是每日到府上招摇撞骗的人不知凡几，小人也是被那些骗子们欺怕了。”

    “行了，我不怪你，带我入府拜见祖父和父亲。”

    “您请！您请！”

    门子听到了寇季不怪罪，当即陪着笑脸引领寇季入府。

    入府正门处，有一座巨大的影壁，遮挡了后面的风景。

    影壁上题有一篇草书写的雄文。

    可惜寇季一个字也不认识。

    绕过了影壁，就看到了占地足有一亩方圆的正堂前院。

    前院皆以青石铺地，正中摆放着一张巨大的水槽，里面养着几朵莲花，偶尔有鲤鱼冒出水面吐着泡泡。

    院子两旁摆放着各种盆景，松柏皆青，其余的只是冒着初春的绿芽儿。

    门子过了影壁，就高声喊着。

    “小少爷到了！”

    “小少爷到了！”

    “……”

    一个妇人，一个老者，听到了呼声以后迎了出来。

    老者穿着一身长衫，头戴一定黑色的四方帽；妇人一身绿色罗裙，头上插着的金钗，显示出她的身份不一般。

    老者到了寇季面前，上下打量了一眼后，狐疑道：“您是……”

    门子识趣的递上了官凭引信。

    老者看过以后，皱了皱眉头，将官凭引信递给了妇人。

    待到妇人看过以后，二人齐齐向寇季施礼。

    “寇忠见过小少爷……”

    “小妇人苏慧娘，见过小少爷……”

    寇季不知这二人身份，所以只是点点头，淡然道：“不必多礼。”

    门子在一旁热情的介绍道：“小少爷，寇管家是府上的总管，苏管家是内院的管事。”

    寇季闻言并没有过多的表示。

    寇忠、苏慧娘二人，也没有继续说话的打算。
','    寇季从这二人身上，感受到了一股淡淡的疏离的感。

    他们二人，能成为寇府的管家，必然跟随祖父寇准多年，从他们二人身上感受得的态度，多多少少能够猜测出寇准见到他以后的态度。

    看来他这个小少爷的身份，在寇府并不怎么被看重。

    同样的，他那个便宜父亲，在寇府上只怕也得不到什么重视。

    “还不下去？！”

    寇忠冷哼了一声。

    门子点头哈腰的退出了前院。

    寇季皱了皱眉，开口道：“头前带路，我要去拜见祖父。”

    寇忠拱了拱手，淡淡的道：“老爷跟姑爷在正堂里叙话，您要拜见老爷，只怕要等到晚上。不如让慧娘给您安排一间客房，先休息下？”

    寇季眉头皱的更紧。

    依照常理，寇准认了寇礼做从子，寇礼又有他这个儿子，那么寇礼就会成为府上的老爷，寇准会升级为老太爷。

    可寇忠的称呼，让他听出了一些别样的味道。

    寇礼似乎并没有得到寇准的认可……

    如果没得到寇准的认可，寇准为何要认他当从子？

    难道在他赶来汴京的这一段时间内，发生了一些让寇准对寇礼改观的事情？

    寇季心念急转。

    寇礼没有得到寇府的认可，只怕以后会成为一个空有名头的寇准从子。

    他这个从孙，自然也会成为一个空有名头的从孙。

    他来汴京为了什么？

    为的就是享富。

    如果成了一个空有名头的从孙，那还怎么享富？

    拜见不拜见寇准，对寇季而言，无所谓。

    可古人重孝道。

    他这个小辈入府，没先拜过祖父，就先住下了，会被认为有失孝道。

    从而让寇准对他们父子更加失望？

    一念至此。

    寇季生硬的对寇忠道：“你要阻我向祖父行孝？”

    寇忠一愣，连道不敢。

    赔礼过后，他依旧淡淡的道：“老爷跟姑爷有要事要商量，事关朝政，确实不便被打扰。”

    寇季将手里的包袱交给了二宝，看向寇忠道：“祖父在哪儿，你只管带我过去。祖父不便被打扰，我可以等！”
','    见寇季态度强硬，寇忠也不好再做阻拦。

    他对着苏慧娘使了使眼色。

    苏慧娘脸上立马浮现出了一丝笑意，她对二宝招招手，“小少爷要去拜见老爷，你就跟我去厢房，先安顿下吧。”

    二宝果断摇头，憨憨的道：“我要跟着少爷。”

    苏慧娘愣了愣，看向了寇忠。

    寇忠目光落在寇季身上，仔细打量了寇季一眼，躬身前行。

    “跟我来吧！”

    寇忠领着寇季，走了几步，到了正堂门前。

    正堂门敞开着，隐隐可以看到里面摆设的书画，以及袅袅薰烟，但是却不见人影。

    “您就在这儿站着吧。等老爷跟姑爷谈完了正事，自然会招您进去。”

    寇忠躬身说了一句，给苏慧娘使了一个眼色，二人离开了此地。

    寇季领着二宝，就站在了正堂门口。

    寇忠离开了前院，让苏慧娘打开了廊道边上的一个小门户。

    他钻进去，出现在了中院里。

    中院院落，远比前院更奢华。

    假山、凉亭、湖水、游鱼、树木花草，应有尽有。

    在凉亭内。

    一老一中，盘膝坐在厚厚的毯子上，正在烹茶闲谈。

    年老的，六旬左右，须发皆白，瘦瘦弱弱的，穿着一身蜀锦长衫，屈指敲打着膝盖。

    中年约有四十岁上下，发间也有白发，他倒是富态，盘坐在毯子上，肚子上隐隐勒出一个椭圆的小肚子。

    他正持着小碾子，将面前的豆蔻、盐块、香料、茶团，碾成粉末。

    寇忠到了凉亭旁以后，并没有进入凉亭，而是站在凉亭外，恭恭敬敬的施礼。

    “老爷、姑爷，小少爷到了，在正厅门口等候……”

    “小少爷？”

    寇准、王曙皆是一愣。

    王曙停下了手，狐疑道：“远儿来了？他这个时辰不是应该在太学内读书吗？”',10033,10099);

    insert into ds_book values(null,10100,'“神话传说和各种超凡记录都是假的？你又知道了？”

    “没见过幽灵就等于没有幽灵？你还没见过人头大的蜘蛛和抹香鲸呢，难道它们就不存在了？”

    “你觉得魔法很不合理？你觉得？你是谁？你配吗？你好牛逼嗷~”

    “不谈了，乌烟瘴气，一群杠精。”

    修长有力，骨节分明的手指在屏幕上急速闪动，力道柔和，气势十足，在打下最后一个字母，点击发送后，流畅的5G网络将其传输而出，与此同时，正显示着某个论坛APP的手机屏幕也被关上。

    黑色的屏幕上倒映出一位身穿青色衬衫的黑发少年脸庞，清秀阳光，整洁清爽，绝对算得上是干净系美少年。

    能看见，整洁的碎发上有一片落叶。

    每日一水，在论坛上舌战群儒后，苏昼感觉自己神清气爽，精神十足。摘掉头上的落叶后，就连那因久坐客车，山路颠簸而感到发酸的腰也舒爽了起来，整个人容光焕发。

    “唉，果然水贴解压很重要。”他擦擦手机屏幕，从路边的树桩上起身，然后像猫一样伸个懒腰：“舒服了舒服了！”

    克钦山区辽阔的原始森林隔绝正掸边境，仿佛一柄利剑将两国一分为二，一面是正国滇州大地，一面是掸国山地森林。

    山区原始森林边缘，旅游村镇唯一的旅馆外，简陋的停车场中已经塞满从各地驶来的汽车，三辆中文旅游大巴是如此醒目，占据停车场的一角。

    苏昼此时站在路旁的树荫处，呼吸着清新空气，等待着旅行团的其他人吃完饭，然后出发前往山区内的观察景点。

    2014年，7月23日，星期三，暑假，掸国克钦山区。

    17岁的高二学生苏昼，正在此处度过自己高三高考前最后一段闲暇时光。

    他将前往最近极其火热的知名景点‘克钦蛇谷’，亲眼看看最近正在网上传的极其火热的‘双头异蛇群落’究竟是怎么回事。
','    “掸国西北传唱的古代神话中，有七首蛇神的存在，蛇谷是昔日蛇神祭祀之地。”

    “在这里出现双头蛇，绝对不是偶然——背后绝对有什么神秘。”

    自言自语的苏昼转动手中手机，令其旋转在右手指尖。长方形手机的重量并不均衡，转动时很难维持自身与指尖的动态平衡，总是想从指尖飞走。

    但是少年只是晃晃手指，就能将平衡重建，令其继续旋转。一边旋转手机，他一边看了眼左腕上的手表：“中午一点十五，算上集合和路程，估计下午三点就能到。”

    “真是迫不及待啊。”

    再次介绍一下：苏昼，17岁，是学生。

    异闻怪谈爱好者，运动好手，究极行动派，坚信各种神话传说与超凡传闻并非是虚言之人。

    以及，准超能力者！

    因高二期末全省统一考试成绩尚佳且有进步，被父母奖励，可以在高三之前最后放纵一次，而他选择的，就是出国，来到掸国原始丛林，亲眼去看看那些传说有‘蛇神’血脉的双头怪蛇。

    至于是哄人的噱头，还是真的有超凡要素，苏昼自有办法分辨真假。

    毕竟，作为超能者，他真的能看见‘不一般’的东西。

    十年前，苏昼还在小学的时候，因为一打六把六人全部打哭，还是小孩的苏昼被不知道该怎么办的老师留校，请家长过来协商。

    而就在等待家长前来领人的黄昏时段，正于走廊罚站，百般聊赖的苏昼隐约看见，于学校走廊尽头处，似乎有一个个白乎乎的影子飘荡。

    那时的他无知无惧，便睁大眼仔细观察——那白色的影子居然是一个正开心蹦蹦跳跳的小女孩，女孩的脸有一半很模糊，只有眼睛处有幽蓝色的光点，而她察觉到苏昼似乎能看见自己后，便迅速消散，化作雾气，躲开苏昼惊讶的注视。

    虽然并无人相信，还被人说是调皮捣蛋，尽知道撒谎……但是苏昼的确看见了，他也懒得和那些大人争辩撒谎不撒谎的问题，眼见为实。
','    自此之后，苏昼就一直能看见一些奇怪的影子，亦或是听见别人听不见，令人头晕目眩的‘灵音’。

    正因为如此，他开始喜欢上各种异闻，兴致勃勃的寻找各国神话传说，民间怪谈。

    自然，这些异象并不是每天都能看见，可每逢于午夜时分，亦或是夜幕消散，朝阳将生之时，苏昼总是能看见，有一些黑色或者白色的影子在街道亦或是小区中游荡，发出只有他一个人能听见，能感知的幽魂之音。

    倘若仅仅是如此，苏昼或许还可以欺骗自己，认为这只是自己学习压力过大，每天只睡五小时导致的幻觉。

    但最近这些年，苏昼遭遇的各种异常状况越来越多，甚至几年前，他在夜间路过市中心广场的时候，还看见一位如同幻影，身穿军装的老爷子笑着对自己打招呼。

    ‘年轻小伙子，很精神！要好好学习呀！’

    虽然军装老爷子说的只是最普通不过的勉励话语，但很快随风消散的他，毫无疑问是一种‘超凡现象’！这顿时让苏昼对这方面更加狂热，并且坚信不疑。

    而且，也不知道是不是因为如此，自那之后，他的身体素质似乎开始越来越好，如今甚至已经变强到他自己都有点害怕的程度。

    加个简单易懂的比方：如今的苏昼，可以空手握碎筒子骨，吃螃蟹和龙虾不需要钳子，只需要手指一捏，便能将厚实的甲壳捏碎！

    世界顶级运动员百米跑可以进入十秒，而并没有受过正规训练的苏昼私下测试，却可以跑进11秒内，是国家一级运动员水准！

    而其他的种种举重，耐力，游泳，肺活量，种种肉体指标，都全方位接近运动员，甚至在一些特殊方面，还尤有胜之。

    偶尔能看见幽魂，身体素质超乎寻常，但还未超越人类极限……苏昼将如今这种状态的自己，称之为‘准超能者’。',10034,10100);
    insert into ds_book values(null,10101,'至于为什么热衷异闻怪谈，心思都在异闻与能力上，导致学习成绩一直只是中下游晃荡的苏昼，期末成绩还能算是过得去……

    “苏昼，你在这里啊，咳咳。”

    温和的声音，伴随着轻咳传来，一位身穿白衣，看上去身体不太健康的少年慢慢走来，在树荫下找到了苏昼。

    他体态颀长清癯，容貌出众，看见正在苏昼指尖旋转的手机，熟悉对方的少年不得露出苦笑：“又在论坛上和人杠啊……唉，以你的实力，他们的言语根本无关紧要吧？”

    “启明，你不懂，这是乐趣。”

    对于自己的发小，挚友，洪城一中年级第一的究极学霸，邵启明的疑问，苏昼停下指尖旋转的手机，收入口袋，他浮夸的对对方比了个大拇指：“网络抬杠，我超喜欢的！”

    邵启明，刚满18岁，同为怪谈异闻爱好者，出身富商之家，和苏昼家中是世交。

    其为人温文儒雅，有君子之风，无论是容貌还是气质都完美符合‘别人家的孩子’‘完美好学生’‘谦谦君子’这种标签。

    两人打小就在一起玩，一起上学。如果不是邵启明的影响，依照苏昼的性格，怕是根本静不下心来学习，期末也不可能在对方的辅导下获得少见的好成绩。

    同样的，如果不是苏昼的影响，邵启明也必然会成为邵叔口中的‘书呆子’，也不会对什么异闻感兴趣，甚至因为那颇为病弱的身体逐渐自闭，更别说主动出来旅行，见识世界了。

    并且，邵启明也是唯一相信苏昼能看见‘幽灵’，相信‘超凡’的人。

    原因很简单——他小时候一次得过一次很严重的肺炎，在医院的时候，真的看到了许多黯色的影子，听见了许多令人心烦的杂音。

    但奇怪的是，在苏昼随父母赶来探病，对那些黯色的影子发出呵斥的那一天后，黯影们便一个又一个的退去，似乎在畏惧着什么。

    自那之后，邵启明的病情便急速好转，这场差点令他当场去世的肺炎就这样痊愈，只是留下容易咳嗽的后遗症。

    眼见为实，亲身体验，为何不信？也正因为此，苏昼一直以来收集各类异闻怪谈，购买杂志和实验材料的资金，全都来自这位好朋友。

    这次旅游，正是两人在严峻的高考前，双方父母默许的最后放松机会，苏昼那成绩主要是托了对方的光这才能被勉强允许，算是被派过去照顾邵启明的。

    而对此这次出行，难得出门一次的邵启明甚至比苏昼还兴致勃勃。

    “真是的，就知道在网上和人抬杠……”

    邵启明对于自己朋友说好听是活跃，难听就是富有攻击性的性格也是见怪不怪，他微微一笑，摇头道：“暑假作业写了吗？模拟试卷写了吗？”

    “好兄弟，这不是有你嘛。”

    苏昼不慌不忙，亲切的走上前，想要搭上邵启明的肩膀：“到时候我抄你的啦。”

    白衣少年自然不为所动，他向后退一步，避开苏昼的套近乎：“复习呢？重点背了没？”

    “有你有你。”
','    “文言文阅读理解，旅游感想录，伯父伯母要求的旅游游记……”

    “唉，全都拜托你了，你真的是我最好的朋友！”

    “呔，无耻小人！”

    对于如此无耻的苏昼，以及那阳光开朗的笑容，邵启明实在是忍无可忍，随手掏出一个水壶，用力朝着对方的脸丢过去。

    这水壶分量不轻，即便是邵启明身体不好，力量不大，落下的时候也带出些许风声，倘若砸在地上，定能将松散的泥土砸出小坑。

    但对此，苏昼却不慌不忙，他只是轻描淡写的抬起右手，竖起食指，然后轻轻一点——就像是电影特效那般，原本带着弧线飞出的沉重水壶，在接触苏昼手指的瞬间停在半空，仿佛失去所有的动量。

    而随后，苏昼手掌一翻，那圆形的黑色军用水壶便落在掌中，直接被他收下。

    “谢啦。”

    苏昼轻快的说道：“这是什么啊？你什么时候买了水壶？”

    “……你这身体素质和反应力越来越夸张，唉……我也想要呀。”

    邵启明没有第一时间回答苏昼的问题，他只是颇为羡慕的打量了一下眼前的同龄少年。

    苏昼身材匀称，看不出多少肌肉，但是他却很清楚，在那看似普通匀称的外表下，是远超寻常人的肌肉密度，机械一般的精密控制力，以及如同豹子一般凶猛的爆发力。

    曾经，有校外小流氓想要找家里有钱身体病弱的自己麻烦，结果苏昼出手，轻松就扫平了七八个流氓联手。而来了更多流氓后，苏昼便表情淡漠的让他先回家，自己一个人对上了几个面包车的混混。

    那时，邵启明一躲起来，就立刻准备报警通知家长——苏昼的父亲就是警察——可就在他终于找到公用电话机，正要报警前，苏昼就已经解决掉了所有人，一脸若无其事，甚至可以说是‘漠然’的表情，带他回了家。

    那时苏昼甚至衣服都没有弄脏！

    邵启明很清楚，自己的这位朋友，虽然学习成绩一般，但倘若在古代，毫无疑问是战场百人敌，甚至学校导师中，也有不少人劝苏昼去尝试体育特长生这条道，以他的天赋，无论是格斗还是体能运动，定能在国家级比赛中夺取优胜。

    当然，苏昼一直是拒绝的。

    至于原因，就好比现在。

    苏昼的视线越过邵启明，凝视着街道一角，他能看见，有一道黯色的影子在小镇小巷中一闪而过，其形有点像是蛇，又有点像是人，随之而来的，便是阵阵被苏昼称之为‘灵音’，足以令普通人头晕脑胀的声音。

    奇形怪状的黯影出现并不奇怪，但大白天能看见就很罕见，至于灵音，一开始或许还有点烦躁，但听了十年，他早已习惯，现在再怎么令人心惊胆战，头晕目眩的声音，对他来说都和下雨声一样可以忽略。

    “蛇形灵影吗……看来这个地方真有神异！来的不亏呀！”

    看见这一幕，苏昼心中颇为激动……总之，相比起这些令人着迷的奇异现象，非同凡响的超凡异闻，苏昼可没打算将自己的未来全部都放在‘锻炼’和‘比赛’这种毫无波澜的事情上面。

    “别发呆了，这水壶是导游发的，说是山路漫长，这里天气炎热，多备点水没错。”
','    对似乎有点走神的苏昼，邵启明提醒道：“水壶里装的是胖大海泡的水，似乎加了点冰糖，味道还可以，你走的早，导游叫我把你的那份带给你。

    “真是的，躲在这么偏僻的地方，到时候大巴先出发了怎么办？”

    “我还好，反倒是你这个身体，才需要多喝水吧。”

    回过神来，掂量一下手中的水壶，苏昼笑了笑：“行了，我刚才吃了西瓜，又喝了半锅鱼汤，暂时不渴。”

    说着，苏昼便将水壶收起来，他自信道：“而且，就算你们先走了，我也完全可以跑步跟上去。”

    “山路蜿蜒，我走直线，不会比汽车慢的。”

    以肉体比拟汽车，这种话倘若是其他人，必然就是妄言，但对此，无论是苏昼还是邵启明，都一脸理所当然。

    顺着话题，两人又聊了聊有关于掸国本地‘蛇神’的传说，畅想一番‘双头蛇’和‘蛇神’之间的关系。

    很快，随着旅行团大部分人都就餐完毕，司机和导游开始召集，点数人名，苏昼和邵启明也就这样顺着人群上了大巴。

    虽然是内陆原始森林，但因为在‘双头蛇’之前，此处就已经是知名旅游景点的缘故，克钦山区外围早就有了通畅的林间公路。

    从这里出发，一个半小时的山路车程，苏昼便能抵达自己的目的地‘克钦蛇谷’景点，去亲眼看看，所谓的‘双头蛇’究竟是基因突变，还是真有神异。

    大巴启动了。

    引擎的轰鸣声响起，旅游大巴在林间公路行驶，苏昼看着窗边的景色一点一点朝着后方拉去，东南亚丛林充满生机绿意盎然的风景并不能吸引他的注意力，他所在意的从来不是这些‘普通’的东西。

    中途，在导游颇显浮夸的介绍声里，在前座大爷颇为响亮的鼾声中，少年拿起手机，看向亮起的屏保，那一张旅游前更换的‘七首蛇神’图片，想了想后，苏昼并没有选择继续上网去论坛上水贴，而是略微闭上眼睛，眼睫毛颤动着。

    在抵达目的地前的无聊过程中，他感觉有些困了，一种古怪的疲惫从骨髓中涌出，令他非常想要睡一觉……而在睡之前，苏昼不知为何，似乎又听见了一声声古怪的嗡鸣，这声音邪异，潜藏在导游的介绍声中，但暗中却带着一丝圣洁。

    顺着这个声音，那安详，亲切的味道，苏昼缓缓低下了头。

    而与此同时，整个旅游大巴中，所有的乘客，全部都低下了头。

    他们全都陷入沉睡。',10034,10101);
    insert into ds_book values(null,10102,' 一时间，原本热闹喧嚣，充满嘈杂人声的大巴内部，只剩下一片寂静，甚至就连之前打鼾的大爷，此时此刻也眉头紧皱，不再发声，他缩在座椅上，似乎梦见了什么可怕的东西。

    “好，最后一批‘供物’都搞定了。”

    确定这一点后，之前还在车头喋喋不休，介绍掸国传统神话，克钦蛇谷典故，以及各种各样当地传说的导游便停下自己的‘念诵’，解开自己一直暗中掐着的‘手印’。

    环视整个大巴，这位有着当地人黄褐色肤色，一直都一脸笑眯眯的掸国人，逐渐变得面无表情。

    “一次性抓三十多头供物，五十年来头一次大手笔。”

    他吐出一口气，然后低声道：“组织的计划就差最后一点，无所谓会不会被人发现了——喂，貌巴，准备转向，接引点就在前面。”

    “好的，哥昂大人！”

    年轻的司机狂热的回答道，然后很快，他打着方向盘，让整辆大巴猛地一转，从公路上偏离，直接撞向郁郁葱葱的原始密林！

    与此同时，哥昂也抬起手，十根手指没有骨头般，如同蛇一样纠缠在一起，做出一个无比古怪，也异常神圣的‘秘印’，他口中念念有词，发出之前和催眠众人的‘灵音’极其类似的声音，整个结印的手掌都开始发光。

    就在大巴将要撞在原始密林上的瞬间，随着哥昂结印，淡绿色的光芒扩散，一层层波光粼粼的幻光开始在半空浮现，而原本的密林景象就如同水波一般晃动，将整个旅游大巴彻底的吞没，消失不见

    这一片区域的密林，赫然只是幻象！

    引擎轰鸣，大巴加速，跃入幻象，而车轮接触的也并非是松软的泥土，是压实的砂石路！

    这里本就是人烟稀少的旅游路线，伪装成密林的幻象内同样有法术陷阱，需要特定的印法才能解开，坐车来往的旅客一目扫过，根本发现不了，本地人同样很少于此行走，也不会贸然进入不熟悉的原始森林，更不可能发现这一点。

    大巴在砂石路上急行，哪怕是铺路的人早有准备，在离开公路的时候仍会颠簸。

    但，不管再怎么颠簸，三十五位乘客，却没有一个醒来。

    无论是老人幼童，男人女人，所有人都在座位上，眉头紧皱，似乎沉浸在一个不怎么美好的梦中。

    吞入大巴后，密林幻象表层光芒波动，很快就恢复正常。

    仿佛一切皆未发生。

    离开公路，大巴于林中急行。

    本来，即便是砂石路吸收了大量震动，其声也足够惊动飞鸟，掀起喧嚣一片。

    可如今，周围的森林中却一片死寂。

    别说是飞鸟，就连夏日本应聒噪的虫鸣都无，只能听见风吹过树林，带起枯燥的沙声。

    抛开这等诡异之处，很快，载满昏迷游客的大巴便抵达目的地，一片被人工整理出来的空旷地带。
','    在空地的上方，有一片片绘有树林图案的绿色迷彩幕布，它搭配幻术的小阵盘一齐遮掩此处，想来是为了尽可能不在第一时间就被可能存在的空中侦查，亦或是不被幻术影响的卫星扫描发现。

    空地中，大巴缓缓停下，被称呼为貌巴的掸国司机开始掉头停车。

    稍后，等接引小队过来把‘供物们’运走后，他还要把车开到景区的其他地方转移视线。

    而司机旁，能看见，被称为哥昂的掸国神秘组织高层一直都手捏秘印，令幽幽绿光覆盖大巴，吸收声音，压制周围生灵活力，保证行动不会因为意外被发现。

    “一路镇魂敛声，消耗有点大啊。”

    抵达目的地后，哥昂吐出一口气，解除了秘印。

    他的表情有些疲惫，身上的绿色灵光也摇摇欲坠，似乎将要熄灭。

    然后，这个之前作为导游，一直笑呵呵，如同亲切大叔一般的男人，便随意的伸出手，按在身侧一位壮年男性的头上。

    轰！一瞬间，绿光炽然，被按住头的男人猛地睁开双眼，嘴巴大开，发出无声的惨叫——他的肉体还想要挣扎，双手双脚都在不断挥动，可在哥昂的压制下，这反抗越来越弱，直至于无。

    啵。

    什么东西破碎的声音响起，能看见，一丝丝白色雾气一般的光，正从男人的七窍中流出，最后全部汇聚在哥昂手心，转换为绿色的灵光。

    而这个男人的精神也彻底死去，他两眼翻白，口角流涎，虽然肉体还有本能的呼吸，但只是活着的肉块。

    对此，哥昂目光漠然，嘴角甚至还带着一丝笑意，轻嘿一声，他将灵光一口吞下，便再次精神焕发，满意的点头自语。

    “一份人魂差不多就够了。”

    一旁，貌巴对这一幕并未有任何恐惧，他甚至隐约露出了羡慕的表情。

    对于这两个神秘组织的人来说，这一车人似乎都只不过是材料，不过是储备粮，而并非是独立的智慧生命。

    “倘若组织计划成功，未来这种‘食粮’要多少有多少。”

    感受着重新饱满的精神，哥昂想到了组织正在进行的计划，不禁感觉身体有些发热，亢奋，他开始畅想美景：“到时候，以我的秘法，即便是成为总部首领也无不可能啊！”

    心潮澎湃，畅想未来的掸国神秘组织高层来不及继续畅想更多的美好未来。

    因为一只修长，干净，但十分有力的手臂，已经从他背后伸来，带着怒意攀上了他的脖颈。

    ——这哪来的？！

    原本因为兴奋，都开始有些出汗发红的皮肤上，所有毛孔都因惊恐立刻紧闭收缩，哥昂猛地感到一股凉意自脊背尾部升起，直窜脑门。

    无比危险的预警正在心中大响——而意动身动，他右手直接蠕动结印，有淡绿色的光芒浮现，左手抬起，准备肘击身后，身体也同时在如同蛇一般不停的扭动，要挣开这条胳膊。
','    一瞬间，如同雷霆一般的精神冲击，就这样顺印法而诞，朝着身后之人冲击而去！

    组织传承的秘法，模拟幽魂之音而创的秘术，‘惊魂术·蛇吻’足以在瞬息间令一个成年健壮男子直接昏迷，甚至遭受不可恢复的灵魂重创！

    没有防备的灵魂挨上这么一下，就像是被一条毒蛇朝着指甲缝里塞进了一根充满腐蚀剧毒的毒牙！剧痛之余，还能腐蚀身心！

    哥昂很确定，即便是组织中少见的‘觉醒者’，也很难硬吃这么一击！

    可秘术发出，虽然击中目标，却并没有带来哥昂想象那般的结果。

    “草！？”

    一声痛呼传来，这让哥昂不禁为之一喜。

    但很明显，这痛苦中蕴含的情感惊怒大过恐惧——手臂主人的动作也只迟缓了不到半秒，然后便继续以比之前更加迅猛的速度收拢发力！

    杀无辜之人者，必杀之！

    “呃啊—”

    被结实的手臂用力勒住脖颈，逼出一口气，一系列动作流畅的像是演练过，就在哥昂心中匪夷所思地狂呼‘这不可能！’时，那条胳膊便轻快且有力地卡在他的下巴之下，坚硬的肌肉鼓起！

    这爆发肌肉带来的力量，将哥昂最后的反抗也击溃，呼吸被强迫禁止，令他眼珠暴起，舌头吐出。

    而这手臂猛地发力上抬，登时令这位伪装成导游的神秘组织高层脑袋后仰，被迫抬头，然后，肩部手肘用力，猛地一扭一拧——

    正准备叫喊，右手同样在变幻第二个印法的哥昂整个人便软了下来。

    ——这，这不可能……我还有印法，密咒，还有蛇蛊……我，我还有……

    ——哪来的……觉醒……者……',10034,10102);

    insert into ds_book values(null,10103,'残破的大地蔓延出无数条裂缝，黑色硝烟遮蔽夕阳的余光，泥泞的道路上，无数人艰难行走着，脸上布满了绝望与恐惧，不时有人跌入裂缝，哭喊声从未停止过。

    延绵数万人的队伍排成长龙，两旁，每隔一段距离都有一名身体得到强化的战士保护，这种人被称为进化者。

    自从半年前地球突发灾变后，进化者陆续出现。

    队伍后方，陆隐抬头看向远处，耳畔听到了令人头皮发麻的咀嚼声，随着一声嘶吼，焚烧的大树后冲出一只散发猩红双目足有两米长的变异犬，嘴角流着血水咆哮着冲向队伍。

    队伍内不少幸存者看到这一幕惊恐尖叫，陆隐目光一凛，从腰间抽出一把古怪的武器，看起来应该是铁棍，但一侧被削尖，宛如刀锋。

    陆隐跳起来单手下劈，毫无阻碍的斩断变异犬头颅，血水喷洒在地，染红了草丛。

    看到变异犬死亡，队伍这才安静下来，恐惧的继续向前方走去。

    陆隐收回铁棍，看了看，上面有几丝裂缝，“看来用不长久了”。

    随着夕阳西下，大地陷入黑暗，所有进化者点燃火焰，顺着队伍一路蔓延，妄图利用这种方式驱赶变异兽，而队伍也停止前进。

    在黑暗中去陌生的地方等于找死。

    沙哑的电流声响起，陆隐腰间对讲机传出声音，“尾号为三的进化者寻找食物，范围方圆一公里”。

    陆隐的进化者代号为一百零三，抬头，看向那头被斩杀的变异犬，拎起来甩到队伍前，“吃吧”。

    队伍内传出阵阵喧哗，紧接着几名男子上前处理，早已习惯的样子，哪怕那头变异犬嘴角还有人的骨头残渣。

    一头变异犬只够二十多人吃的，陆隐走出火堆，握紧铁棍，向远处走去。

    耳边咀嚼声从来没停过，黑暗中，一双双散发绿光的眼睛盯向陆隐，这是变异老鼠，样子虽然难看，但肉质可以吃。

    陆隐甩起铁棍砸死了十多只变异老鼠，扛着扔向队伍，他这边够了。

    突然一声惨叫，陆隐不用看就知道是进化者死了，他也没打算去救，谁知道攻击进化者的是什么，或许是剧毒的蛇，吸血的蚊子，或者能咬碎钢铁的强大变异老鼠，这些生物在野外不难遇到。

    队伍很安静，所有人都躲在火焰后面，仿佛一层薄薄的火焰真的可以保护他们。

    陆隐怜悯的看着这些人，随后抬头望天，星空那么璀璨，明亮，曾经被污染的空气在半年前完全恢复，与之相伴的是无数生物变异，包括人类本身。

    没人知道那场变异是因为什么，仿佛一夜之间，生物都变得很恐怖，而很多人也变成了行尸走肉，没有理智，到处吞噬活物，这种人被称为丧尸。

    剩余的幸存者身体都变强壮了一些，虽然变化不大，但却可以通过吞服变异生物体内的晶体变强，这就是进化者。

    地球一夜间仿佛回到了远古时代，弱肉强食，曾经统治地球的庞大武器库几乎都毁了，陆隐亲眼看到他所在城市的武器库发生爆炸，仿佛那些现代化武器不容于如今的时代。

    狂风吹过，地面，染血的报纸被石块压住，发出飒飒的声响。

    陆隐捡起报纸，看着头条‘2200年2月3号，一个载入史册的日子，那一天，华夏天空五号登入海王星，白浅成为地球第一个探索海王星的宇航员，海王星为气态星球，那一天…’，陆隐扔掉报纸，一个小女孩小心递给他一块烤好的兽腿。

    陆隐接过兽腿，淡笑道“谢谢”。

    小女孩腼腆的笑了笑，跑回了队伍中。

    兽腿很难吃，虽然撒上了调料，但依然非常难吃，不过陆隐吃的很满足，吃饱了才有力气。
','    火焰突然波动了一下，陆隐猛地抽出铁棍狠狠砸下，将一只穿过火焰的变异螳螂砸死，这种变异螳螂一旦冲入队伍内会造成非常大的伤亡，那对刀锋反射着红光，不比陆隐的铁棍差。

    一夜的时间，陆隐只休息了两个小时，期间，杀死了十多只妄图冲击队伍的变异生物。

    他这边没什么人伤亡，但其它地段就不同了，其中一段幸存者连同进化者足有数十人被杀，被一头巨大的变异野猪屠杀，那头变异野猪可以发射坚硬的鬃毛，一轮攻击下来就能带走不少人性命，如果不是较为强大的几个进化者出手，伤亡还会更大。

    随着朝阳升起，队伍继续朝南方前进，他们要去金陵，去那个苏省地界最大的聚集地，那里有军队，有很多进化者，还有被称之为华夏刑圣的周山。

    半年的末日灾变，诞生了不少进化者，更诞生了被称之为七圣的绝顶强者。

    如今信息虽然不通畅，但还是可以互相联络的，前不久，进化者被明确划分出了等级，分别为刚刚吞服晶体的普通进化者，拥有碾压普通进化者力量的人级强者，再之上则是拥有破坏城市力量，被称为撼地级强者，也可以称之为地级。

    最顶层则是飞天级强者，顾名思义，可以飞天，也被称之为天级强者，而华夏七圣，就是七位天级强者。

    末日半年，也只能如此划分，或许再过一段时间会有更系统的划分，但那七位可以飞天的强者只要不死，永远屹立顶端，这也是圣之一字的由来，或许也可能是无数幸存者期盼他们的保护，所以称之为圣。

    金陵聚集地，就拥有一位圣，刑圣周山。

    队伍继续前进，他们距离金陵还有一百多公里，和平年代数小时的路程，放在如今，至少要好几天。

    距离队伍长龙数里外，无数游荡的丧尸缓缓接近，仿佛闻到了活物的味道。

    队伍两旁进化者紧张戒备，不少进化者都目光恐惧，这些丧尸速度虽然不快，但力气很大，血液中含有剧毒，一旦触碰到即便进化者都会皮肤溃烂，直至神智消失，变得跟他们一样，这才是最恐怖的。

    陆隐眼睛眯起，握紧铁棍，跟丧尸战斗并不难，他们永远都那个样子，不像进化者可以变强，这也是无数幸存者庆幸的，如果丧尸也可以变强，他们就真的没有活路了。

    当前幸存者最大的敌人是变异兽。

    就在陆隐等人准备跟尸群一战的时候，那些丧尸突然顿住，然后转身就走，陆隐心中一跳，涌起不好的预感。

    地面忽然震动，队伍前方，一株巨大的藤蔓自地底升腾，枝叶宛如有灵性一般抓住不少幸存者，随着绝望的哀嚎，所有被抓住的幸存者被碾成血水，浇灌在藤蔓扎根的土里。

    所有幸存者恐惧逃离，连不少进化者都一样。

    陆隐眼皮直跳，这株变异藤蔓绝对达到了地级程度，不是普通进化者可以媲美的，哪怕他们队伍中有人级强者。

    队伍中的进化者根本没打算硬拼，全部向后方逃离，避开藤蔓范围。

    过了好一会，藤蔓才仿佛吃饱了一般缩回地底。

    无数幸存者痛哭，绝望的呐喊，很多人在这种环境下会精神崩溃，连一些进化者都一样。
','    很快，沙哑的电流声传来，腰间，对讲机传出声音，“原地休整，刑圣将亲自来接我们”。

    听到这个消息，无数人欢呼，对如今的幸存者来说，天级强者就像神，仿佛只要天级强者出现，什么事都可以解决一般。

    陆隐面露嘲讽，圣？他单手捂住左臂，直到现在，他的半边身体都还在疼痛，刺骨的疼痛，仿佛永远提醒他那一夜的事情。

    一整座城市被抛弃，所有未毁灭的热武器宣泄到了城市内，哀嚎遍地，自己半边身体被焚烧，回头看到的是那对高高在上的眼眸和刺目金光。

    刘少歌，他永远忘不了那个被称为光圣的男子，七圣之一，让他体验到了极致的痛苦，这份痛苦，陆隐发誓绝对十倍偿还。

    随着火焰升起，天色变得黑暗，陆隐正准备休息，不远处传出尖叫和哭喊声。

    陆隐皱眉，转头望去，百米外，几个女孩子被十多名进化者包围，肆意调笑，其中好几个女孩子衣服都只剩一点点，无声流泪。

    这一幕不陌生，末日灾变，人性沉沦，很正常，陆隐看过不少次，怎么说呢，在这种环境下想要得到保护，不付出一点代价也不可能。

    陆隐闭上双眼，精神稍微放缓。

    远处，一名少女尖叫一声被一巴掌拍在地上，“妈的，老子不要命的保护你们，玩玩怎么了，别给脸不要脸，前两天还有个小明星被老子玩过，现在求老子玩老子都不玩，起来”。

    少女愤恨的瞪着进化者，目光通红。

    四周围进化者咧嘴大笑，他们喜欢这个时代，可以放肆的玩，没人能管他们。

    呼的一阵风刮过，进化者眼前多出了一个人，正是陆隐，此刻，陆隐手中铁棍架在这名进化者脖子上，淡淡道“滚”。

    四周围寂静无声，只有那几名少女无声的哭泣。

    被陆隐威胁的进化者脸色极其难看，咬牙道“姓陆的，这件事跟你无关，她们归我保护”。

    “你吵到我了”陆隐淡淡说了一句，铁棍锋利的一面下压，顿时，那名进化者皮肤开裂，血液顺着铁棍流淌。

    进化者骇然，“好，好，你狠，她们归你，我不动了”。

    陆隐收起铁棍，冷漠走回原地，队伍内不少人静静看着这一幕，他们早已习惯，哪怕刚刚那几名少女被杀也没人帮忙，陆隐在他们看来显得很怪。

    那十几名进化者愤怒对视，却没有妄动，陆隐，很强，这点他们知道。

    那几名少女跑到陆隐身后想要说些什么，陆隐闭着眼，没搭理她们，她们只能感激的看着陆隐，小心坐下。

    过了没多久，一个容貌艳丽，衣着暴露的年轻女子笑眯眯来到陆隐身旁，凌厉的目光扫过那几名少女，吓得她们立刻后退，恐惧低头。

    艳丽女子这才满意，坐到陆隐身侧，对着他耳朵吹了口气。

    陆隐抬手捏住女子脖颈，睁眼双眼，冷声道“再有下一次，死”。

    艳丽女子目光阴冷，勉强露出一丝媚笑，“你还是这么无情”。

    陆隐放开手，冷漠盯着女子，“什么事？”。

    女子揉了揉脖颈，白了陆隐一眼，“你得罪人了知不知道”。

    陆隐没回答。

    女子继续道“张桐那几个人在密谋对付你，他们十多个进化者，你只有一个人，对付不来的，小心点”。

    “谢谢”陆隐淡淡回了一句。',10035,10103);
    insert into ds_book values(null,10104,'女子无奈看着陆隐，“其实只要你开口，我会帮你的，我身后也有人”。

    “不用了”陆隐淡淡道。

    女子叹口气，“好吧，随时联络，放心，我会帮你看着他们的，走了”，说完，对陆隐笑了一下，转身离去，留下一阵香风。

    陆隐再次闭眼，女子的到来对他没有丝毫影响。

    后半夜，艳丽女子再次到来，看着陆隐笑道“恭喜你，麻烦没有了”。

    陆隐疑惑看着她。

    女子道“我请我大哥出手，张桐被抓住了，我大哥请你过去谈谈怎么处置他们”。

    陆隐目光一闪，起身，“走吧”。

    女子笑了笑，前面带路，越过火焰，来到距离队伍三百米外，这个地方虽然同样不安全，但也不算远。

    当陆隐来到的一刻，张桐，也就是欺辱那几名女子的进化者还有他身旁十多人全都跪在地上，眼前，是一个高大的男子，背着双手。

    “大哥，陆隐来了”艳丽女子走到男子身旁娇声道。

    男子转身，微笑的看着陆隐，“你就是陆隐？”。

    陆隐点点头。

    “我叫刘升，是这只队伍的队长之一”男子微微昂首说道，颇为傲然的看着陆隐。

    陆隐淡淡道“我知道”。

    刘升眉头一皱，他不喜欢陆隐的态度，“这些人你打算怎么处理？交给你”。

    陆隐看着刘升，“条件”。

    刘升嘴角上扬，紧盯着陆隐，“明人不说暗话，我听过你的事，也观察过你，你，应该没有吸收过变异兽体内的能量晶体吧，但却很厉害，能告诉我为什么吗？”。

    一旁，艳丽女子也期盼的看着陆隐，包括张桐那些跪在地上的进化者，都盯着陆隐。

    陆隐嘴角含笑，“这就是你引我来的原因？”。

    刘升淡笑，看向艳丽女子。

    女子上前几步，走到陆隐身侧，对着他吹了口气，娇声道“陆大哥，告诉我们好不好？是不是另一条进化之路？告诉我们就是告诉全人类，全人类会感激你的，而我，也可以陪陪你”，说着就往陆隐身上靠。

    陆隐转头看着艳丽女子，“我说过，再有下一次，死”，话音落下，铁棍一闪，艳丽女子捂住脖颈，血液顺着手指流淌，染红了衣服，不可置信的倒下，她没把陆隐的话放在眼里，也根本没想到陆隐居然敢当着刘升的面杀她，刘升可是队长之一，人级强者啊！

    刘升也呆住了，他同样没想到陆隐这么大胆。

    陆隐一甩铁棍，“你们很烦，从这支队伍成立的一刻就盯着我，今晚，都结束吧”，说着主动冲向刘升，铁棍当头劈下。

    刘升怒极，“你找死”，说着，从腰间抽出一把似模似样的长刀，一刀架住铁棍，在他看来，这一刀不仅可以挡住陆隐的攻击，还应该把陆隐重创，然而现实跟他预料的完全相反，他的长刀被一劈两段，铁棍刀锋甚至在他右肩留下深可见骨的血痕。

    这一幕让刘升不敢置信，他可是人级强者，足以单挑很多普通进化者的人，居然一招败在陆隐手下，怎么可能？
','    陆隐一刀砍伤刘升，没有停歇，铁棍横扫。

    刘升急忙避开，一个侧翻将刀柄甩向陆隐，陆隐一棍子荡开刀柄，气劲宛如利刃斩在地面上，将地面斩出一条小裂缝。

    “看什么看，一起上，给我宰了他”刘升大吼，怒瞪着张桐等人。

    张桐等人不敢犹豫，抽出各种各样的武器攻向陆隐。

    陆隐目光冷冽，翻转铁棍，双腿猛地用力蹬出，肉眼可见的气浪震裂地面，身体直接越过十多米距离，铁棍刀锋橫斩，一瞬间，张桐等人全都望着胸口，血水，顺着胸口滴落，很快，他们便没有知觉，倒在地上彻底死亡。

    这一刻，陆隐的心坚硬如铁，这是个最坏的时代，没有约束，但却也是最好的时代，恶人，可以除尽。

    刘升呆滞望着陆隐，“怎么可能？你，你，你是地级强者，绝对是地级强者，人级不可能有这么强大”。

    陆隐目光冰冷。

    刘升颤抖，直接跪在地上，“陆隐，不，陆少，放了我，求求你放了我，我可以做你的狗，我可以为你杀人，我可以为你找女人，你要的一切我都可以为你做”。

    陆隐抬起头，仰望星空。

    刘升目光阴狠，猛地从怀里抽出刀片刺向陆隐，刀片很顺利的刺中陆隐，但眼前的陆隐，缓缓变淡，刚刚那道只是残影。

    刘升瞳孔收缩，不可思议望着这一幕，这是什么？

    “这叫游身步，是一种战技，来自--星空”陆隐淡淡说了一句，铁棍划过，刘升头颅垂下，跪在地上死去。

    陆隐叹口气，收起铁棍，依然仰望星空，“我只是客人，却在喧宾夺主”。

    很快，陆隐把刘升这些人身上的能量晶体取走，靠近手上的戒指，蓦然，那些能量晶体突兀消失，仿佛从来没存在过。

    这是凝空戒，可以储物的珍贵戒指，跟战技一样，同样来自星空。

    张桐等人的失踪没人在意，但刘升就不一样了，他是队长，如今居然也失踪了，这引起了其他几个队长的注意。

    但因为刘升要谋夺陆隐进化的方法，特意隐藏了行踪，所以没人来找陆隐的麻烦，也算刘升自作自受。

    第二天中午，数万人队伍看向远方高空，就在刚刚，他们得到消息，刑圣周山就要到了。

    没多久，一个黑点出现在众人眼前，随后，高空，出现了一个男子，身材强壮，足有两米多高，短发，手中，是一柄三米多长的开山巨斧，屹立于高空，相当霸气。

    所有人呆呆望着这一幕，人类真的可以飞行？这就是飞天级强者？华夏七圣之一。

    一声轰鸣，周山一句话没说，抬手对着下方压去，气浪掀起灰尘，吹得数万人张不开眼。

    所有进化者炙热的望着前方，这就是天级强者，足以毁山灭河的力量。

    地底，巨大的藤蔓蜿蜒而出，狠狠席卷向周山。

    周山哼了一声，在众人耳边炸响，随后，将巨斧高高扬起，背后空气波动，隐约化作透明翅膀，“暴风斩”一声大喝，周山身体随着巨斧翻滚落下，猛地砍向藤蔓。

    惊天轰鸣炸响，地面，巨大的裂缝向四面八方蔓延而去，大地尘土飞扬，一缕缕气劲四散，幸亏有进化者队长挡在前方，否则光凭这些气劲足以对幸存者造成巨大伤亡。

    陆隐紧盯着前方，昨天他们猜测藤蔓是地级实力，实际上唯有他感觉到，藤蔓，肯定是天级实力，这也是为什么周山全力出手的原因。

    狂风吹过，当烟尘散尽，出现在所有人眼前的，是周山扛着巨斧的霸气身姿，而那株藤蔓已经彻底粉碎，地上是一片巨大的坑洞，填满了绿色液体。

    数万人崇敬仰望周山，发出欢呼。
','    周山扛着巨斧腾空，大声喊道“走，回金陵，那里安全”。

    “多谢刑圣”。

    “刑圣万岁”。

    “刑圣”。

    …

    数万人高呼周山之名，在这个末日年代太需要英雄了，周山就是英雄，七圣就是英雄。

    陆隐握紧铁棍，他如今的实力还达不到天级，跟刘升说的一样，他确实没有吸收能量晶体，他要走另一条进化之路，星空真正的进化之路，想着，陆隐抬头，“快了吧，应该快来了”。

    有周山保护，队伍前进的很顺利，这个世界肯定有远超周山的强大生物，但那些生物太稀少，几乎不会碰到。

    一天后，数万人队伍来到金陵，直到此刻，很多人才放下包袱，大声哭出来。

    金陵被戒严，外面是巨大的土墙，土墙上一排排进化者沉默的看着数万幸存者进入，目光悲哀，这支队伍从出发到结束，至少损失十分之一的人口，他们是从绝望中走出来的。

    陆隐在和平年代来过金陵，那时的金陵景色优美，街道旁都是古树，然而此刻，金陵缩小了很多很多，外围被放弃，无数游荡的丧尸布满了外城，如果不是周山开路，他们想要进入金陵聚集地肯定要经过一番血战。

    幸存者会有人安排，进化者则被另一批人安排。

    这只队伍进化者五百多人，相对数万幸存者，等于一名进化者保护近百人，比例相当稀少，也从侧面证明变异生物不好杀。

    可惜丧尸体内没有能量晶体，否则进化者人数肯定要多得多。

    刑营，刑圣周山创建管理进化者的组织，金陵聚集地所有进化者不管加不加入都必须到刑营登记测试战力和身体情况，陆隐等人就被带到了刑营。

    所谓刑营并非一营之地，而是非常庞大，占据金陵钟山，传说创建之初，金陵丧尸和变异兽无数，周山带领所有进化者耗费一个月才拿下钟山，这还是因为钟山曾是金陵旅游区，没有太多野生变异兽的原因。

    刑营以钟山为中心，向外辐射，逐渐帮助幸存者拿下了金陵聚集地，成为华夏华东区最庞大的幸存者聚集地之一。

    钟山刑营肃穆庄严，周围进化者羡慕的看着身穿统一制服的刑营进化者士兵，他们未来也要在这里。

    “不过半年而已，刑圣居然创建了刑营如此庞大的组织，真是不可思议”有人感慨道。

    旁边立刻有人附和，“末日到来，很多人还躲藏着，刑圣已经创建了刑营，未来绝对可以称霸华夏”。

    话语一出立刻很多人附和。

    陆隐走在进化者中间，望着四周围不时走过的进化者士兵，目光一闪，这些士兵，是真正的士兵。

    按理来说，末日降临，不管任何人有何等魅力也不可能创建如此组织，周山更不可能，但刑营还是出现了，只有一个原因，这里的人是真正的军人，周山，代表着国家。

    华夏并没有因为末日到来而崩溃，只是以另一种方式稳定了下来，周山是军队中人，甚至有可能七圣都是，否则光凭半年时间是无法达到天级的。

    不知道是不是应该庆幸，末日并没有导致通信全面崩溃，否则即便国家也不可能在短时间稳定形势。',10035,10104);
insert into ds_book values(null,10105,'钟山被掏空，内部是一个庞大的空间，充满了现代化设施，让数百进化者惊叹。

    一队队进化者士兵走过，背负制式钢刀，好像现代与古代结合，充满了怪异。

    随着进化者实力越来越强，普通枪械还不如冷兵器好用，再加上很多武器库被毁，能装备制式钢刀已经证明刑营的不简单。

    陆隐等人被接引，来到巨大的广场上，四周站着一圈进化者士兵，还有不少女兵神态肃穆的看着他们。

    广场十多米高上方有一层透明玻璃，里面同样是巨大的空间。

    此刻，靠近玻璃旁，几名男女嬉笑着看着下方。

    “不知道这次能不能招几个有用的来，就算达不到人级也不要太差才好”一个中年男子瓮声瓮气道。

    “不要抱太大幻想，人级不是那么容易达到的，这只队伍几个人级队长早就被刑圣安排好了，你我一个都没分到”旁边神态妩媚的女子不满道。

    “也不是不可能，那么远保护数万幸存者来到金陵很不容易，这些人我很看重，你们不要全让给我好了”另一边年轻男子笑道。

    “别做梦了，看冯宏怎么安排了，这次是他当教官，大头肯定被他拿走”中年男子道。

    几人都是刑营万夫长，刑营在册进化者八万，唯有达到地级可以成为万夫长，达到万夫长，在金陵绝对是一方霸主，只在刑圣周山地位之下。

    对金陵数百万幸存者来说，刑圣不常见，万夫长就是天。

    “听说洛圣麾下雪女要到金陵，将会跟我们切磋一下，你们打算谁上？”妩媚女子突然问道，面带笑意的看着旁边几人。

    几人安安静静，没打算接茬。

    妩媚女子失笑，“传闻洛圣对外宣布雪女地级无敌，你们，真不打算见识一下？”。

    几人还是不说话。

    妩媚女子抿嘴笑了笑，不再多言。

    洛圣白雪，屹立雪山，创建蓝营，虽与刑圣周山并列七圣，但其地位还要在周山之上。

    华夏七圣在外人看来地位同等，实则唯有少部分人知道，七圣，分为上三圣与下四圣，洛圣白雪就是上三圣之一，而周山，屈居下四圣。

    广场上，一个个进化者接受检查，主要因为末日后很多病毒变异，尤其是丧尸的病毒很难治疗，刑营必须确保所有进化者身体没有被病毒感染，否则很危险。

    很快轮到陆隐。

    看着保存自己血液的样**放在一旁，护士开始填写他的个人资料，陆隐目光一闪，双腿发力，身影突兀模糊，下一瞬再度恢复正常，所有人都没有看清，唯有样**内的血液颜色变了一点点，似乎，带了一丝紫色，却又很快恢复正常。

    “陆隐是吗？麻烦您稍等，很快就好”小护士微笑对陆隐说道。

    陆隐点点头，“谢谢”，说完，走到另一侧。

    一段时间后，将近五百进化者全部抽检完毕，没有问题。

    没一会，一个身穿深色军服的中年男子走来，随着他的接近，一股压力油然而生，所有进化者惊讶望着他。

    滋滋
','    地面裂开，气劲横扫而过，震撼所有进化者。

    “地，地级，撼地级强者”有人惊呼，所有进化者惧怕而又羡慕的看着中年男子。

    中年男子走到距离陆隐等人十多米外，朗声道“我叫冯宏，刑营万夫长，现在我要问一遍，你们当中有谁不愿意加入刑营的可以离开”。

    数百进化者你看看我，我看看你，随后陆续有人走出。

    刑营虽然强大，却必须接受管束，很多人没当过兵，不愿意加入很正常，陆隐也是其中之一。

    不愿加入刑营的足有将近两百人，也就是接近一半。

    冯宏看着不愿加入的进化者，淡淡道“加入刑营，不仅安全可以得到保障，还可以把你们的亲人接到钟山周边，每个月都可以分到能量晶体修炼，更可以得到刑圣传授的战技”。

    “什么是战技？”有人好奇问道。

    冯宏冷声道“可以将你们的力量百分之两百发挥出来的技巧，就是战技，刑圣的战技是暴风斩，一斩之下世界上能挡住的没几个，你们应该看过了”。

    所有进化者目光兴奋，他们当然看过，一斩灭掉变异藤蔓，令大地开裂，风云色变，何等的强大。

    “我们可以学习暴风斩吗？”有人期盼问道。

    冯宏冷漠道“任何人都可以学习，只要得到刑圣的承认”。

    此话一出，原本打算离开的进化者犹豫了，陆陆续续回到原本队伍中，而真正打算离开的只有不足五十人，陆隐就在其中。

    冯宏手一挥，“带他们离开”。

    很快，将近五十名进化者被带出了钟山。

    陆隐回头望去，这个地方很快将不平静。

    钟山外聚集了不少幸存者甚至进化者，当陆隐等人出来后全都围了过来，“兄弟，要不要买一处房产？可以找我，价格绝对公道”。

    “兄弟，要导游吗？别这么看我，金陵城外有太多丧尸和怪物，没有导游，你很容易陷入包围”。

    “兄弟，要武器吗？锋利的战刀，坚硬的长枪应有尽有，你想要热武器也有，买几个炸弹防身吧”。

    …

    “有地图吗？”陆隐问道。

    一个贼眉鼠眼的进化者立刻凑了过来，先是目光凶厉的扫了周围一圈，吓走同行后小心取出地图，“兄弟，这份地图诚惠十颗晶体”。

    陆隐眉毛一挑，“十颗？你疯了，一份地图要十颗能量晶体，你知不知道一颗能量晶体就可以让普通人进化”。

    贼眉鼠眼的进化者小声道“兄弟，这可不是普通地图，上面详细标注了金陵外城强大怪物和丧尸的集中地，你也不想刚出去就被包围吧，这可关乎你的命，你的命难道不值十颗晶体？”。

    陆隐失笑，“最多三颗，多了没有”。

    贼眉鼠眼的进化者爽快道“可以，交你这个朋友，地图拿去”。

    陆隐感觉自己被骗了，这也太爽快了，不过他也不介意，手伸入怀中取出三颗米粒大小的白色晶体，递给进化者，贼眉鼠眼的进化者接过晶体，目光兴奋，随后接近陆隐，低声道“兄弟，看你这么爽快的份上送你个东西，不用谢”，说完，把一粒圆形药丸塞到陆隐手中，转身离开。

    陆隐看着药丸，目光怪异，这东西他认识，壮阳药。

    末日后很多植物变异，和平年代的药物早已过时，利用变异植物制作的药物效果更好，这种壮阳药陆隐看见过别人使用，那效果，绝对的，但，这种药丸很珍贵，如果拿出去卖绝不止三颗晶体，这家伙哪来的？

    陆隐没有多想，随手把壮阳药扔掉，环顾周边，向外城走去。

    仔细看着地图，陆隐目光扫视，最终定格在城南的荒山处，“希望这里有线索”。

    钟山内部空间最顶层，巨大的会议室坐满了人，最上首位置空着，左下首第一位坐着一个脸上有刀疤，身穿军装的男子，右下首第一位坐着一个容貌靓丽，戴着眼镜的少女，这里坐着的大多是刑营万夫长。

    过了好一会，周山跨入会议室，很自然坐到最上首的位置，目光扫视所有人，最后看向戴着眼镜的少女，“策划怎么样了？”。

    少女推了推眼镜，“初步估计，想要扩大金陵聚集地至少耗时两个月，战斗人员损失可能达到两千到三千，如果想要把和平年代金陵地界全部扩入聚集地中，损失还要增大三倍”。

    周山皱眉，“聚集地必须扩大，向北推进的路程还算顺利，最多几个月就能连通京城，到时候全国连通，想要收复国土就很容易，我们不能弱后，不能让其他人笑话”。

    “刑圣，刚刚收到消息，天竺诞生了天级强者，苦僧”刀疤脸男子突然开口道。
','    所有人哗然，天级强者整个华夏不过七人，可见其艰难，没想到天竺居然诞生了一位。

    周山目光一凛，“苦僧？查他的资料，按理说一年内不可能有别人能突破天级”。

    “是”。

    “还有别的事吗？”周山继续问道。

    刀疤脸下手，一名进化者刚要开口，目光突然呆滞的望着窗外，其他人紧随其后，都呆滞的望去。

    周山陡然转身，看向窗外，目光一缩。

    只见天空数十道流星滑落，拖着长长的火焰划破天空，其中一道流星朝着金陵方向砸来，最终落在金陵聚集地南方，大地震动了一下。

    这一刻，无数幸存者和进化者看到了这一幕，天空流星如烟花绚烂，转瞬即逝。

    金陵城外，正顺着地图来到城南荒山的陆隐也看到了，而此刻，那颗砸落在金陵城外的流星距离他没多远。

    狂暴的气浪扫荡天空，吹散了云层，大地寸寸开裂。

    陆隐一脚踹开咂向自己的钢筋铁架，定睛望向南方，思索了一下，快速冲去。

    金陵城内，周山腾空而起，想要冲向南方，却被拦住，“刑圣，无数丧尸冲击城墙”。

    周山目光转向东面，入眼所见黑压压一片丧尸游荡而来，金陵城已经封锁，其中不少幸存者还被关在城外，绝望呐喊。

    周山手持开山巨斧，飞向城外，一斧头斩向大地，无数丧尸被切割，“开城门，放他们进去，我来守护”。

    金陵城南，流星砸落之地，烟尘直冲云霄，巨大的坑洞蔓延方圆千米，呈圆锥形，最下方是一个白色圆球，两米直径，冒着白烟，四周围空气扭曲。

    陆隐接近坑洞，躲藏在坑洞不远处废弃厂房内，透过木板看向白色圆球，目光微变，虽然有所猜测，但真的出现，他还是始料未及，“没想到来的比我预估的还早，宇宙飞船”。

    一声轻响，白色宇宙飞船舱门打开，一只手探出，顿了顿，随后，一个年轻人自飞船内走出，短发，身穿白色轻甲，脚踩战靴，缓缓走出宇宙飞船，抬头看向上方，伸了伸懒腰，“真累啊，试炼就试炼，选这么远的地方，还让我们自己飞过来，真恶心”。

    说完，年轻人从飞船内取出一柄短刀，又取出一块类似腕表的东西戴在左手手腕上，点了点，滴滴声响彻，年轻人目光一凝，看向陆隐的方向，“什么人？”，说着一跃而起，抽出短刀橫斩，巨大的斩击划过，厂房被一切两断。',10035,10105);
insert into ds_book values(null,10106,'一个年轻人正在骑着摩托车前行，固定在仪表盘上的手机突然响起。


“喂？二愣子，有什么事？”年轻人伸手按了手机通话键用耳机跟对方通话。


这个年轻人叫杨萌，23岁，长得挺爷们的一人，却有一个很女性化的名字。


有这个名字要‘感谢’他那对奇葩父母。


他的父母是标准的农民，没有受过什么高等教育，于是给孩子起名的时候请了村头算命的张铁嘴来代劳。


这张铁嘴捧着一本破烂不堪的《说文解字》翻了半天，最后大手一挥：“萌，草木芽也。这孩子就叫这名儿了！”


于是他就有了这么个名字，从小到大没少让同龄人笑话。


和他们村里别的年轻人一样，杨萌也早早地离开了家乡到城市里打工，都说城市里机会多，凭借杨萌在城市里多年打拼的经验来看，那说的是底层打工的机会多。


杨萌也没受过什么高等教育，只能靠着出把子力气赚钱，工地里搬过砖，小区门口站过岗，维修铺里修过车。。。。。。现在送外卖赚个跑腿钱。


听了他的话后电话那边直接传来了咆哮声：“萌萌，我说了无数次了！你丫的要叫我大名！胡国辉！不是二愣子！”


这打电话的人是杨萌的老乡叫胡二愣，上学时候嫌弃自己名字土气，偷偷改名叫做胡国辉，但是他们这些一起光屁股长大的发小还是叫他胡二愣，简称二愣子。


“好的二愣子。”杨萌回答道。


电话那边沉默了一会儿：“萌萌，也就是我打不过你，要不然我非揍你一顿解解恨。”


杨萌挠了挠头：“来啊，互相伤害啊！二愣子！这话光我就听了十多次了。咱说点有用的好么？给我打电话有什么事？”


“还能有什么事？这不闲着没事么？把‘疯子’、‘龙虾’他们叫出来一起撸个串？咱们茁山子村出来的这些人好久没聚聚了。”胡二楞说出打电话的目的。


杨萌摇头道：“还是算了吧，我要去面试新工作呢。”


“你不送外卖了？”胡二楞听后好奇问道。


杨萌点头道：“是啊，赚的钱太少了，想要多赚点。换个新工作试一试。”


胡二愣听后愣了：“卧槽，你赚钱还少？送外卖不好么？不是一个月能上万么？哥几个提起你的时候还说你特拼。你这是要干什么？别为了赚钱把身体给累垮了！”


杨萌叹气道：“上万？哪有那么多啊！我这么拼一年有一个月上万我就知足了！平时也就四五千。你说原来我孤身一人无牵无挂，每个月还可以给家里寄些钱，穷不穷的对我来说也无非是晚上吃馒头咸菜还是吃排骨米饭而已，并没什么大的差别，甚至还可以玩玩游戏跟朋友们聚聚过得还是挺快乐的。可是这恋爱之后我深深感受到钱不够用。我现在都恨不得一分钱掰成两瓣花”


胡二楞沉默了一会儿：“她又跟你要什么了？”


他知道杨萌最近找了个女朋友，不过说实话，他倒真没有为这事替杨萌感到高兴。


不得不说，感谢父母的‘基因提纯’，杨萌的‘卖相’还是不错的，一米八二的身高，属于要模样有模样要体型有体型那种男人。所以别看他送外卖，还真的找了个城里的女朋友，而且还是个大学生。


那个女孩经常叫外卖，杨萌又好巧不巧的经常接到她的单，一来二去的两人就这么在一起了。不过对杨萌这样穷山沟沟里跑出来的苦哈哈来说，有个城里的大学生女朋友有时候看来并不是那么合适。
','
听了胡二愣的问题杨萌赶紧解释道：“你误会了，这次她可没跟我要，她跟我说她同学刚买了一个普拉达的包挺好看的，看着她羡慕的样子我就决定攒钱也给她买一个。”


胡二楞骂道：“靠，她怎么不想要天上的月亮呢？你脑子臭了给她买这个？那可是普拉达的包包！便宜的也要一万多！就她看上的还不可能是便宜货，你不过日子了你给她买这玩意？”


杨萌讪笑道：“人家一城里的大学生，不嫌弃咱肯跟咱在一起已经够委屈她了，咱就尽力让她过的好点吧。”


胡二楞问道：“‘茁山子小霸王’怎么成了舔狗了？好，你们正经八经恋爱我也不说什么，可是我问你，你见过她家人没？”


听了胡二楞的问题，杨萌喃喃答道：“家长还没见呢，她告诉我说她家人瞧不起我是送外卖的，非让我们分手，所以我才准备找个新工作。”


“操！送外卖怎么了？凭自己劳动赚钱谁也说不出个‘不’字来！现在那些白领看起来体面，赚的可能还没你多呢！”胡二楞愤愤说道：“我都想辞职去送外卖了！”


胡二楞算是他们之间混得好的，在一家汽车4S店做销售，整天西装革履的，但是算起来赚得还真没有杨萌送外卖赚得多！


“你现在是24K舔狗，纯的！鉴定完毕！”胡二愣最后下了结论：“你现在去哪面试？什么工作？”


杨萌答道：“四平路这边的一家仓库做库管。”


“四平路？那都到郊区了！”胡二愣想了想：“不对啊，做库管待遇也不高吧？你不是想赚钱么？这不是越赚越少了么？”


杨萌听后语气兴奋起来：“招聘广告上说了！一个月两万块呢！”


“多少？”胡二愣吓了一跳：“哥们，你上当了吧？你到北都博物馆当库管也给不了你这么多工资，这摆明了是骗子好吧！”


杨萌却道：“是不是骗子先去看看再说！他能骗我什么？骗我钱还是骗我色？骗我钱我没有，骗我色。。。。。。我巴不得有个美女骗我色呢！不瞒你说，我现在想赚钱想疯了！连电线杆子上那些重金求子的广告都想打电话试试。”


“噗。”胡二愣听后笑了起来：“我服了，这样的骗子广告也就你能去。哎，我问问你，如果是个抠脚大汉要骗你色呢？”


杨萌笑道：“我特么的打不死他，让他知道‘茁山子小霸王’那正义的铁拳到底有多硬。行了，不跟你说了，我现在到四平路了，我找找那地方，等我面试完了给你打电话咱们再约。”


“得来，兄弟，长点心眼别上当了！”胡二愣又叮嘱了两句后才挂断电话。


杨萌挂断电话，把车停下拿出自己在报纸上看到的招聘启事，看看上面的地址。


这是一份很奇怪的招聘启事，上面连个电话都没有，也不说是什么单位，只是说仓库招聘库管，月薪两万，留下一个地址就没了。最古怪的是上面写着‘午时前来面试’。这是几个意思？午时问斩？


这样的招聘广告也就是杨萌，换做任何一个人都不能来面试好吧？


就这杨萌也是一头雾水，午时？唐朝之前午时是指中午12点到下午两点，唐朝之后则是指中午十一点到下午一点。他到底什么时候来？想了半天，他在12点来面试，这应该没错了吧？


但是当他按照招聘广告的地址找到地方后他就傻眼了，这尼玛还真是骗子啊？


这不就是一个小平房么？从外面看有两间，也就是三十多平米的样子。但是那房子破旧的样子看起来比自己爹妈年龄都大，这里有一家公司？这不是上坟烧报纸------骗鬼呢？
','
不过来都来了，杨萌还是抑制不了自己的好奇心，就算是骗子也要看看他们是什么样的骗局不是？


想到这杨萌锁好了摩托车过去敲了敲门，结果并没有任何反应。杨萌苦笑着摇了摇头，得，这就是一个恶作剧。他也想不明白，到底谁这么无聊，花那么多钱在报纸上做广告就为了捉弄人玩。


就在他刚要转身离开的时候，门上突然传来了一个声音：“你找谁？”


杨萌听后赶紧回头，门并没有打开，难道这里有对讲机摄像头？小平房还玩高科技？


他赶紧回道：“我是看到招聘广告过来应聘的。”


“哦？”说话的人突然语气激动起了起来：“你能看到招聘广告？太好了，快进来快进来！”


他语音刚落，平房的破门就这么打开了。杨萌一头雾水------这里难道这里是电影里黑衣人的秘密基地？


进还是不进？杨萌也有点拿不准。万一自己进去让人绑架了怎么办？这样的地方明显看就很有问题。


最后他一咬牙，进！为什么不进？这和谐社会哪有那么多犯罪分子？想到这杨萌直接进入了房间。


结果他刚进入平房里，一片白光就笼罩住杨萌的全身。


杨萌赶紧闭上眼睛，这也太亮了吧？简直比宝马车的激光远光灯还亮，刺的他眼睛生疼！这特么的搞什么鬼？我是来面试的，不是让你们把我搞成瞎子的！


他刚想破口大骂，却感到白光已经消失，他小心翼翼的睁开眼睛，结果等他看清眼前的景色后一副瞠目结舌的表情。


“卧槽，这里到底是哪？”',10036,10106);
insert into ds_book values(null,10107,'杨萌睁开眼后哪还有什么平房？


他置身于一个大花园之中，一座雄伟的宫殿矗立在他的面前，宫殿门上牌匾写着《东岳宫》三个大字。再放眼看向远方时发现，这片绿地赫然悬浮空中，周围都是万丈深渊，根本没有任何离开的道路。


“这个宫殿是怎么盖起来的？”杨萌现在是一头雾水，刚才跟自己说话的男人在哪？


他使劲拧了一下自己的大腿，疼的自己是呲牙咧嘴的：“痛痛痛痛痛！我去，这不是做梦啊？这到底是哪啊？我这是活见鬼了？”


就在杨萌不明所以的时候，他身后又传来了那个男人的声音：“嗯，你说‘活见鬼’这三个字倒也贴切，因为按照你的理解方式来说，你现在所在的地方属于阴间。”


杨萌赶紧回头看清说话的男人，大约五十多岁的样子，国字脸络腮胡，浓眉大眼一副不怒自威的样子。


最关键的是：他的造型实在是太独特了：头戴平天冠，上身穿‘衣’，下身穿‘裳’，肚子上还包着一圈围裙，全身以红色为主。


感谢小时候那吓死人不偿命的电视剧《封神榜》，杨萌对这身打扮还是印象深刻的，这是商周时期的冕服。红色冕服。。。。。。那是天子穿着的颜色！


不过杨萌看到他后并没有吃惊，反而是恍然大悟的表情：“你这是COSPLAY？哦，我明白了！这是电视台的恶搞节目对吧？摄像头在哪？你们这是也太牛X了吧？怎么做到的这么快时间更换布景的？我们这是在摄影棚里么？”


结果听了杨萌的话，那冕服男子却糊涂了：“‘烤死普雷’是什么东西？难道你说的是‘炮烙之刑’？”


杨萌伸出大拇指：“大哥，你的演技真好，奥斯卡都欠你个小金人！你们到底是哪个电视台的什么栏目？你可千万别告诉我我已经死了，你们这节目有个巨大的漏洞知道不？既然是阴间，怎么会有这么多花花草草在这里呢？”


古装男人微微一笑：“是我可以很负责任的告诉你，这里确实是在阴间，整个阴间是只有这里才春色盎然。至于你问我我是谁？寡人就是东岳大帝。欢迎你来到我的府邸------东岳宫。”


听了他的话杨萌愣在原地，突然‘噗嗤’笑出声来：“寡人？你怎么不说你是寡妇呢？你说你是东岳大帝就是东岳大帝？怎么能证明你说的是真的？别闹了，摄像头在哪里？我可不喜欢这恶作剧。我不管你们是什么节目组的，赶紧让我回去，要不然我真告你们侵犯他人人身自由！”


结果他语音刚落，就看到东岳大帝伸手一指他，他还没明白怎么回事，人就‘噌’的一声飞到了天上。


“我。。。。。。我。。。。。。。我靠！”杨萌瞬间觉得自己词穷了，只能用这俩字来表示自己的心情------他身上可没有什么威亚把自己吊起来，他就是这么凭空起飞的！


“现在相信我没有骗你了吧？”东岳大帝在地上一脸笑容。


杨萌都吓傻了，在天上闭着眼睛拼命点头。他原来一直以为自己不恐高，结果事实证明那要看在天上是什么样的姿势-------这样凭空飞在天上，不恐高才怪！


东岳大帝脸上微笑不变，晃动几下手指，杨萌重新落在了地上。


杨萌从地上爬起来瞪大眼睛看着东岳大帝：“你。。。。。。您真是东岳大帝？”


东岳大帝点点头：“如假包换。”


杨萌傻眼了，这尼玛可是大人物啊。


这东岳大帝也就是泰山神，泰山作为五岳之首，按照阴阳五行学说泰山是万物发祥之地，所以泰山神地位极高，历朝历代的帝王都要祭拜泰山神。最关键的是：东岳大帝才是阴间真正的老大。

','他挠了挠头：“大帝，恕我直言，我就是一普通人，你把我搞来这里干什么？”


东岳大帝却语出惊人：“并不是我让你来的，但是你来的正好，终于找到接替我位置的人了。”


“噗。”杨萌喷了：“那个。。。。。。大帝，我活的好好的还不想死呢，要不然你等我死了之后再把我整过来？或者你换个人来替你？”


东岳大帝摇了摇头：“现在仙凡两隔，就连黑白无常都无法去凡间了，但是正所谓‘大道五十，天衍四九，人遁其一’，我不知道你怎么来的，但是我知道这要天大的缘分才行。”


杨萌眨了眨眼，直接变成一张笑脸凑到东岳大帝面前：“大帝，你的意思是说。。。。。。。我是什么仙二代？不对，我爹妈都活的好好地，哦，我明白了，是不是我祖上是什么神仙大能？咱给我透露透露呗？是不是我今后就可以在仙界横着走了？”


东岳大帝看着杨萌这没脸没皮的样子瞬间无语了：“小兄弟，你想多了。历代东岳大帝都要自己寻找接任者的。”


“历代？”杨萌眨了眨眼：“神仙也会死么？怎么这东岳大帝还更新换代？”


东岳大帝点头道：“盘古开天地后头部化身东岳成为第一任东岳大帝，但是盘古大能不可能一直掌管凡间俗世，所以就设‘东岳大帝’官位掌管生死统帅阴间。后来像太昊、金虹氏、上清真人、山图公子、天帝之孙等大能都任过东岳大帝之职。我也在这位置守了三千多年。现在终于有人可以替代我了。”


杨萌眨了眨眼：“这么大的官职怎么听你说好像很不好的样子？”


东岳大帝正色道：“修行一途不进则退。‘东岳大帝’这个官职确实很大，但是也限制了我们提升修为的可能，只有放弃这个职位我们才可以百尺竿头更进一步。但是这个位置又不能空缺，如果这位置空缺的话会造成众界大乱！所以我必须要找到替代我的人才能脱离这个职位。”


杨萌听了是一头雾水，这是什么意思？怎么听怎么好像东岳大帝是个很坑爹的官衔。


他想了一下：“东岳大帝，您刚才说的那些人好像都是神仙大能，这么高的职位怎么能让我一个凡人来顶替呢？”


哪知道东岳大帝听后脸色却变得难看起来，沉默了半天后才说道：“天机不可泄露。”


你妹的‘天机不可泄露’！这里绝对有问题！杨萌开始警觉起来。


“那我不要这个机缘可以么？你送我回去吧，我就是一普通人，也没什么大的志向，就想让父母过得好点，然后自己老婆孩子热炕头一辈子就满足了。”杨萌真心不想留在这个地方成为什么所谓的‘东岳大帝’------尽管生活里充满挫折，可是他还没活够呢。


东岳大帝毫不犹豫的摇头：“不能。”


杨萌还想问个究竟，东岳大帝却道：“得了，没有时间浪费，你该接受东岳大帝之位了。”


“啊？这就接受？如果我不接受怎么办？”杨萌反问道。


到了城市里这么多年他什么也没学会，就学会了一句话：这天上不会掉馅饼。他们村里的一个年轻人，就是相信了天上能掉馅饼，结果让传-销骗的一家人都差点集体上吊。


送上门的好事那都不是好事。


东岳大帝却冷冷一笑：“不接受？你不要忘了，我可是东岳大帝，阴间的老大，我去找崔珏在生死簿上画几笔让你凡间的亲友提前来和你相聚如何？”
','
杨萌听后瞪大眼睛，卧槽，还真是好奇害死猫，自己就是好奇来应个聘，怎么变成这个结果？自己这就要死了？伐柯，自己这还没给父母尽孝呢！


可是看这架势不答应都不行了，要不然连自己的父母亲友都能给害了！他思考了一下后，得，只能等父母死后再给他们尽孝了-------特么的，人都死了还怎么尽孝？


这都叫什么事啊！


但是现在他也没有别的选择。


他赶紧问道：“大帝，我问一下，我如果担任了东岳大帝有什么好处？”


东岳大帝听后一愣，随即哈哈大笑起来：“你小子有意思，这是无利不起早么？东岳大帝是什么人？地府的老大啊！当东岳大帝那好处可不是你能想象的！除了盘古大帝一脉相承的修炼法门外，理论上讲地府的阴帅鬼王千万阴兵都可供你调遣！这可是可以震撼三界的强大力量！如果阴间不强，为什么天庭派了天师钟馗佛国要派了地藏一起镇守地府？小子，天大的机缘砸你头上，你就偷偷乐着吧！”


杨萌撇撇嘴，怎么就不愿意听到‘天大的机缘’这句话呢？自己这‘天大的机缘’就是早死早投胎？这去那里说理去？


但是没有办法，家人的安危握在人家手里！他也只能叹了口气：“好吧，我答应你。”


东岳大帝笑了起来：“这是你自愿的，我并没有逼你，对吧？”


杨萌气的差点骂街，你这不算是逼我那什么是逼我？人在屋檐下不得不低头：“没错，我是自愿的！”


东岳大帝笑的更开心了，直接升起一道白光照在杨萌身上，光芒大盛照的杨萌都睁不开眼，海量的信息充斥在他的脑海里，这都是历任东岳大帝的传承。他坐在那里也不知道消化了多久，等他再次睁开眼睛的时候东岳大帝已经不见了。


不过杨萌现在心情明显不好，睁开眼后首先做的就是比出中指破口大骂：“靠，你丫就是个骗子！”',10036,10107);
insert into ds_book values(null,10108,'杨萌发现自己被人坑了。


他继承传承后，知道了很多事情的真相，难怪上任东岳大帝跑的比兔子还快------他不跑都不行！


阴间是不是个好地方？曾经还真是！


正如上任东岳大帝说的那样，阴间是盘古大帝建立，确实有盘古大帝一脉相承的无上功法；而且跟西边那些长翅膀的管理模式也不一样，那边好人死了上天堂坏人死了下地狱，而咱这边好人坏人死了都进地府，这就代表着阴间有无尽的功德！所以曾经阴间是神仙们眼红的好地方------那么多有关系的远古大能都会担任‘东岳大帝’一职，包括西王母的小舅子金虹氏玉帝的孙子等都担任过这个职位。


说白了就是来镀镀金，这和凡间差不多。


但是这一切都是‘曾经’！


现在的阴间则是个狗嫌猫不理的地方。


首先说现在仙凡两隔，阴间成了个单向道，什么孤魂野鬼来的倒是多了，可是功德贡品之类的都过不来，所有人都是只干活没回报；更扯淡的是：现在地府里天庭、佛门、道家三方势力混杂，东岳大帝根本没法像原来那样统御地府。


所以上任东岳大帝说的很婉转：统御百万雄兵这样的事情那不过是‘理论上’而已。


盘古大帝的法门传承是好，但是也是需要慢慢修炼的。而提升法力的办法竟然是靠功德！杨萌二十多岁一普通人，去哪里偷功德去？就算杨萌把从小扶老奶奶过马路这样的事情加起来混出来的功德加起来也就堪堪够学个入门功法，只能使用最基本的类似于‘唤魂诀’之类的小法术，可是这些基本法术都是小鬼差们行走凡间使用赚取功德用的，而现在仙凡两隔让他怎么去凡间？


杨萌现在脑子里有历任东岳大帝修炼盘古大帝功法的心得，如果功德充沛那他修行之路肯定是一日千里，但是现在他空有屠龙技，无龙可杀之------谁让他没功德呢？


杨萌也想在阴间到处转转，可是东岳宫悬浮在天空，他想离开这里要有踏步虚空的能力。而至于学会‘虚空转移’？呵呵，上任东岳大帝都做不到！


刚才坑了他的那位‘前东岳大帝’是谁？正是商周时期的‘武成王’黄飞虎。当年元始天尊炼成法宝‘封神榜’交给姜子牙，老头子就把黄飞武封为‘东岳大帝’。因为他是凡人封神，所以天道规定‘东岳大帝’一职必须由凡人接任，可是仙凡两隔后去哪找活的凡人接任东岳大帝？


而黄飞虎这家伙说好听点是‘以武入道’，说难听点就是个肌肉脑袋。盘古大帝那么好的法术传承他就没学会几个，而且上任后没多久就仙凡两隔，他也没有多少功德，更没法修炼法术。在东岳宫这里待了三千年就跟蹲了三千年的监狱差不多。现在阴间不好混，就连他原来的手下酆都大帝都混到天庭里成为紫薇大帝了，他还在这东岳宫里‘蹲大牢’。


这等了几千年好不容易看到了有人莫名其妙到了东岳宫，而且还是个凡人，这样的机会不脱身更待何时？所以黄飞虎直接把‘东岳大帝’一职传给了杨萌，跑的比兔子还快！


杨萌现在是极度无语，他到现在也想不明白到底是谁把自己带到的东岳宫。


唯一让他满意的就是这里环境不错，像是个大庄园，啧啧，这样的环境如果是在凡间，他活几辈子也赚不来那么多钱买这样的房子吧。


“唉，老爸老妈，我不是不想尽孝啊，谁知道自己能碰到这样的破事！”杨萌躺在东岳宫门口的草坪上望天，他现在是郁闷的不行------自己不会也会被关在这里三千年吧？


“到底是谁特么的把我给搞到这里来的？到底是哪个孙子登的那个破广告？”杨萌气的破口大骂。


他现在郁闷的不行，殊不知有人比他还要震惊。
','
“武成王从东岳宫出来了？”天界无数大能都感觉到了东岳宫的人事变化，这可让他们震惊不已：毕竟东岳宫的情况他们可是都知道的，武成王离开东岳宫那就说明东岳大帝已经换人了，可是现在仙凡两隔，他从哪里找到的替代者？


难道仙凡之间的隔阂已经被打通了？


可是他们用法术探索一番后发现压根没有，这就更奇怪了！


所有神仙一头雾水，甚至有人想窥探天机都毫无结果。


现在无数和武成王有旧的仙人都纷纷在联系武成王，想要搞清楚事情的真相，更有人已经想办法要到东岳宫亲眼看看到底发生了什么。


但是东岳宫这地方很是奇特，属于一方独立空间，没有东岳大帝的邀请谁也无法找到这里。新任东岳大帝到底是谁？大家谁也不认识，联系不上杨萌这个新任东岳大帝想来东岳宫都来不了。


昆仑山九天之上的虚空之中则突发一声巨响，一块巨大的悬石从中间离开。石头中间盘膝坐着一个赤裸上身的中年男人，只见他一头长发随风飘逸，身上的肌肉闪闪发光。


男人睁开眼睛，如果有旁人看到男人的眼睛会吓一跳：他的双眼里竟然蕴含宇宙星空！


他看向虚空微微一笑：“小家伙，做的不错。你让我脱离了困境，我也帮你一下！”


只见他伸出右手，一团黑色的火焰凝结在他的右手熊熊燃烧，他把手往外一甩：“去！”


那团黑色火焰就这样飞向天空，生生把虚空烧出了一个洞！男人看着黑色火焰烧开虚空出现一个通道，直接身影一闪，进入了虚空之中。


而此时在东岳宫杨萌也没闲着，他正在遭遇大危机------他的肚子饿了！


靠，那些神仙们不吃饭吗？但是杨萌现在虽说是在阴间，而且挂名东岳大帝，但是他依然是个大活人，到点儿肚子饿这是人之常情！


他准备去东岳宫看看里面有没有什么吃的------有个什么仙果仙酿什么的也好啊。


“切，这么大的东岳宫，怎么也没有个什么管家门卫侍女什么的，果然电视上都是骗人的。”杨萌自言自语的向着东岳宫走去。


如果东岳宫里没吃的那才叫可笑：新任东岳大帝是被饿死的？
','
不过说到东岳宫没人这件事上，咳咳，这口锅还要黄飞虎来背！


原来东岳宫里也是宫女侍卫无数，毕竟是一方大帝，排场能小了么？可是这黄飞虎是想尽办法想要挪挪位置，为了不当东岳大帝那是各种托关系找门路。


他和金虹氏、山图公子等担任过东岳大帝的大能不同，他没有背景就是凡人升仙，想要找人帮他都找不到人。他只能各种找门路送宝贝，看看有没有人能让他离开这个鬼地方。


最后的结果是：宝贝没了脸也丢尽了。黄飞虎一怒之下解散了东岳宫里的所有人，成了真正的‘寡人’。


杨萌还在那里担心自己会不会被饿死，突然神奇的一幕出现了：他的面前凭空出现了一只手，把他面前的空间直接撕开，然后一个健硕的男人从里面走了出来。


“这位。。。。。。仙长还是道友的来着？是该这么称呼吧？请问你这是法术么？”杨萌两个眼睛变成了小星星，瞧瞧人家这法术多帅？比机器猫的任意门还要霸道！


他现在也是无知者无畏。


要知道就这样撕开虚空的手段就算是仙家能做到的也不超过五指之数！而更可怕的是：东岳宫这一方天地极为特殊，就算元始天尊这样的顶级大能也无法像这个男仙这样凭空而入！


不过杨萌不知道这一点儿，在他眼里所有的神仙都能做到。。。。。。


男人并没有回答杨萌的问题，而是上下打量着他，最后开口问道：“你就是新任东岳大帝？”


杨萌拼命点头：“没错没错，话说道友，你这美瞳不错，这是哪里买的？这两眼都是星星简直太酷了！看上去只能用‘深邃’二字来形容了。”


来的男人不是别人，正是被困在九重天上悬石之中的那个男人，听了杨萌的话他突摇了摇头：“你说的我听不懂。”


杨萌眨了眨眼，感情说了半天是做了无用功，想想也是，神仙知道什么是美瞳？切，什么神仙啊，都是土鳖！


不过他虽然心里这么想，脸上可没表示出来：“。。。。。。得，跟你解释也解释不清楚，我去找点吃的去！不瞒道友，我是刚到这一亩三分地还不熟悉，神仙都不吃饭么？。”


男人听了后笑了起来：“谁说神仙就不吃饭了？要不然天上那些厨神灶神酒神什么的都去伺候谁去？我告诉你，天庭里光正厨神就有三位!徒子徒孙更是无数！神仙么，整天让别人不要沉溺于口腹之欲，而他们自己呢？龙肝凤髓都是他们菜单上常见的菜式。所以说最虚伪的就是那些神仙，都是‘严于律人，宽以待己’的伪君子！”


杨萌听后愣在原地，这是哪里来的愤青啊？


哦，不对，应该叫‘愤神’！',10036,10108);

insert into ds_book values(null,10109,'公元2020年，江南大学，教室。

        “这道题正确答案是……”

        听着讲台上老师喋喋不休的讲解，王双有些无聊的看着窗外，时不时的看会手机，偶尔也会攥着一个小巧精致的兔子挂件把玩，身为东山省二流大学的一名大三学生，王双早就已经过了对大学充满激情的学习生活，每天的任务基本上除了吃就是玩。

        这是一节高数课，老师很认真的讲，不过王双表示自己一个学渣真没有必要听讲，反正每次不是倒数第一，就是倒数第二。

        “双子，快看，外面天空上似乎有什么东西。”这时，一个声音突然小声叫道，把王双的目光吸引过去，瞥了一眼旁边瞪大眼睛看着窗外的李新。他的个子不高，穿着一件黑色外套，脸上带着一副眼镜，一副斯文的样子。

        但是和这个家伙相处三年下来早就已经摸透了这个闷骚货，外表看去一脸斯文，其实私下里手机上和电脑上的小电影把内存都装满了，宿舍六个人想要看电影，直接就可以问他要，讲荤段子那更是张口就来，所以众人私下里都叫他数据库。

        王双顺着李新的目光向着外界看去，不由的瞪大了眼睛，紧紧的看着外界，双眼中满是不可思议。

        天空上，一点点金色光点铺满天空，无边无际，仿佛一片汪洋缓缓落下，速度很慢，王双目测这些光点想要落到地面，至少还要一个小时！

        “这是什么东西？”

        “天啊，奇观，天上出现一个奇观！大家快来看啊。”
','        “这，这难道是海市蜃楼吗？”

        ……

        同学们也渐渐发现外界的光点，都满是好奇的看着这些光点落下。甚至连老师的课也不听了。当然，老师也被吸引过去，看着外界的景象出神。

        “新子，我感觉有点不对劲。跟我走。”王双看着外界的景象，脸色一片凝重。转头一脸严肃的看着李新沉声说道。王双自己不知为何，心里有一丝丝不安的感觉，这是他的直觉，而好几次，都是靠他的直觉，让他躲过了好几次劫难。

        李新有些楞楞的看着王双，这还是他第一次看到这个家伙这么认真，又转头看了一眼教室的老师和同学，咽了口唾沫，也没有问原因，狠声道：“好，老子就跟你这么疯一次，哪怕被学校通报老子也认了。”

        王双脸上露出一丝笑容，拍了拍他的肩膀，直接起身大步教室外面走去，而李新也是跟上。

        讲台上的老师这时回来神来，看着两个学生大步向外面走去，连一个报告都没打，不由的愤怒喊道：  “同学，你们要去哪，现在在上课！回去坐好。”

        不过，两人的身影没有一丝停顿，仿佛没有听到，直接的走远了。

        “这是谁？我要向他的班主任汇报这两个家伙。”老师看着台下的学生，大声问道。

        同学们都没有一个吱声的，都有些惊讶的看着两人的背影，小声嘀咕起来。

        “王双和李新这两个家伙今天吃错药了，竟然连老师都不鸟了。”

        “霸气，这两人，我服，愿老天保佑，希望你们没事。”

        “两个学渣，这是吸引美女注意的一种方法吗？”

        在学生中间，一个大约二十岁左右，有着绝美容颜，留着一头披肩长发，身材窈窕，穿着一身米黄色外套的美女注视着两人离去的样子，又看了一眼外界的景象，好看的眉头一皱，身影不自觉的向着门口的位置悄悄移去。

        不过不论众人如何猜测，两人都不怎么在乎，出来之后，王双一路奔跑的向着宿舍奔去，这时，更能够看清楚天空上的金色光点，密密麻麻的，像海潮一般。看一眼就感觉头皮发麻。

        路上甚至遇到不少对着天上的景象不断拍照的学生，“咔嚓”“咔嚓”声不停地响起，奇异的景象引起了众人一番激烈的讨论。甚至王双在手机里一看，不论是微博，还是聊天群，亦或是朋友圈都被这个话题所淹没。

        “惊爆眼球，天空出现海市蜃楼！”“世界第九大奇迹！”“是造物者的神奇，还是外星人的阴谋？”

        一条条消息占据了所有人的眼球，这时，不论是明星出轨，还是某个天王去世都比不上这件事情。

        匆匆浏览了一下，王双便将手机放进口袋。但是脚下的步伐却是加快了很多，本来宿舍楼距离教学楼就很近，不过四五百米的距离。不到三分钟，王双与李新两人便跑到了宿舍楼门口。两人又马不停蹄的跑到三楼的325，打开房间的门，一头钻进去。

        房间是六人的标准，其他四人都是其他系的，不在一个教室，现在恐怕在上课，都不在宿舍。

        “呼，我……说，你这个家伙到底怎么了？怎么神经兮兮的？”李新一下子扑到自己的床上，直到此时才来的及开口问道，一路奔跑，就他那样几年不锻炼的身材早就已经累的气喘吁吁的。

        王双没有吱声，一下子爬上床，将垫子掀开，一把长一米的黑色长刀静静地躺在那里。王双拿起这把自己花费了一个月生活费在网上购买的一把唐刀。“嗤”的一声，抽出长刀，雪白的刀身，甚至能够映出人的倒影。

        这可是王双当时和店主墨迹了好几天，反复叮嘱要真品，不能够粗制滥造，也许是被王双的态度弄烦了，最后发过来的竟然真的是一把完美的唐刀，这可是让的喜欢耍刀的王双直接给了一个五星好评。
','        “卧槽，双子，你疯了吧，竟然在垫子下藏着这种东西。”

        “你不要命了，这要是被学校发现，你最少也得计一个大过，甚至被留校察看也说不定。”看着王双的唐刀，李新吓了一跳，王双竟然在床下藏了一把刀，这要是被宿舍阿姨看见，一准收走。

        听见李新略带紧张的声音，王双将刀入鞘，转头沉声道：  “新子，你相信我吗？”

        “废话，我不信你，你还能信谁？”李新白了王双一眼，没好气的说道，作为宿舍六人中和王双关系最好的兄弟，两人的关系简直就是穿同一条裤子般的好。

        “好，既然你相信我，那就按照我说的做。”王双盯着李新的眼睛，声音有些低沉，“我感觉到强烈的不安，就是在看到那些金色光点之后。”

        “虽然我不知道接下来会发生什么，但是我的直觉告诉我绝不会有好事发生。只有武器才可以给我安全感。”

        “你应该知道我的直觉，好几次都是靠着我的直觉，我才躲过很多奇怪的危险。”

        李新沉默的看着王双，这个自己处了三年的兄弟，王双的直觉的恐怖他是清楚的，有次过马路，王双突然发疯般制止了所有过马路的行人，本来众人都很愤怒，结果路边的一辆卡车突然发疯般猛的一个加速，直接穿过马路，撞飞了好几辆车。

        那时，众人方才后怕似的对着王双不停地感谢。类似的这种事情很多，也因此，他对王双的话语有种莫名的信任。',10037,10109);
insert into ds_book values(null,10110,'“好吧，老子就再陪你疯一把，希望你的直觉是对的。不然咱们两兄弟的学校生涯就可以结束了！”李新苦笑一声。

        王双拍了拍李新的肩膀，微微一笑，“相信我的直觉，现在你拿着我所有的钱去超市买东西，包括水，方便面，面包，还有一切能吃的。买完之后再去药店，买一个药箱。拿着我的包！”

        说着，从自己的衣柜里拿出一个登山包，几乎有半人高。这是他以前买的。

        “好吧，我去买，不过不用你的钱，用我的就是。就算是被人当做疯子也认了。”李新虽然答应了王双，但是脸皮还是有些抽搐，“但是，如果以后发现买这些没用，你得把钱还我啊！”

        “知道了，放心吧，少不了你的。我去给你找一把武器。四十分钟后宿舍会合。记住，必须准时回来！”王双笑骂一句，不过说道最后脸色又变的无比凝重。

        李新重重的点点头，拿着自己的钱包与登山包就向外冲去。王双则是将唐刀放在行李箱内锁上，出去打了个车到了学校附近的一个五金店。

        这是他以前偶然来逛的时候发现这里竟然卖刀，还是那种用金属切割的那种刀，很锋利，但是卖相不好。他自己不怎么喜欢。但是这次，就算是卖相不好他也得买，幸好他和老板认识，算是比较熟了，没有讨价还价，直接把自己的生活费八百块钱掏出，将这把不过八十公分的砍刀带走，老板还热心的给了一个刀鞘和盒子，方便了王双，不然他还真不敢这么光明正大的带出去。

        买好刀，打车回到学校，向着学校的宿舍跑去。路上的所有人仍然叽叽喳喳的讨论着天空上的金色光点，网上的信息也有愈演愈烈的趋势。天空上的金色光点此时已经接近地面，众人也都看的更加清楚。

        回到宿舍，李新已经在床上躺着，背包里，全是矿泉水，面包，火腿肠，方便面，鸡翅等零食，还有一个二十公分大小的药箱，打开一看，各种治疗平时小症状的药物都有，还有纱布，碘酒，创可贴，棉签等等都无比齐全。

        李新在一旁叫苦：“大哥，你知道我去买这些东西人家都怎么看我吗，都是用一种看智障的眼神看着我！我是承受了多么大的压力才把这些东西买来的。呜呜”

        说道最后，几乎快哭出来，王双有些头疼，将刀从箱子内拿出，一把扔给李新没好气的说道：“给你，算是弥补你受创的心灵。”

        “嘻嘻，我就知道双子你够义气，好了，我接受你的道歉。”李新一下子嬉笑颜开，接过刀，抽开一看，纯金属制造的，看上去就锋利无比，不过就是卖相不如王双的那把唐刀。但是李新仍然爱不释手，每一个男人心中都有一个热血江湖梦，渴望仗剑走天涯。

        “金色光点马上就落下来了。”王双透过宿舍的窗户看着外界的天空。金色光点马上落下，但是心中的不安也越发强烈起来。
','        不由的摸着自己脖子上的一块黑色石头，这是他一年前在一个淘宝市场上花了一百块钱买的，不过眼珠大小，薄薄的，黑的不见一丝光亮，中间一个奇怪的门形图案。王双在看到这块石头的第一眼就喜欢上了，一直戴在身上。

        不知是不是错觉，王双摸着这块石头，竟然感觉到一丝丝的温热，似乎有什么东西蠢蠢欲动。

        王双眉头一皱，隐隐间感觉到事情似乎有点超乎自己的想象。不再多想，只是看着外界的天空。

        终于，金色光点逐渐落下，这些金色光点在所有人惊骇的目光下，直接穿透了墙壁等一切阻碍物，落到人的身上消失不见。

        而被金色光点穿透的所有人都在一瞬间昏倒，  整个世界似乎一下子安静下来。

        王双和李新也不例外，两个人同时倒在床上，不过两个人都已经把宿舍门牢牢锁住，但是不担心。

        王双不知道在自己昏迷的时刻，脖子上的黑色石头在吸收了金色光点之后突然化成一道黑色的光芒，直接穿过王双的身体，在叶枫的脑域一处莫名的空间落下，形成了一个小型黑洞。不断吞噬者外来的金色光点，同时一股股奇异的能量流出，在王双的体内不断地流转。

        此时，王双的身上一股股漆黑的杂质从体内排出，将全身覆盖，不知过去了多久，那股奇异的能量变的少了许多，最后似乎经过一处神秘的穴窍，略一犹豫，便将最后的这股能量尽数涌入。

        “轰”

        一道道赤色火焰瞬间自王双体内升腾而起，身体上的杂质一眨眼就被焚烧一空。但是奇怪的是这股火焰似乎并没有对王双产生一丝伤害。甚至连他的衣服和床铺都没有一点破坏。只是将这些杂质全部焚烧干净。

        火焰在焚烧杂质以后渐渐融入到王双体内。此时，已经过去了三个小时，王双渐渐醒来，睁开眼睛，看着周围的环境，似乎什么都没有改变，但是一种说不出的感觉却是在王双心头缠绕。

        “啊！”一道凄厉的哭喊声响起，打破了世界的平静。王双脸色一变，一个闪身，来到窗户边，他自己都没有发现自己现在的速度已经远远超过了以前的自己。近五米的距离只是一眨眼的时间就到了。

        可是当王双看清外面的景象时，饶是他那一贯自称强大的神经也不由的有些头皮发麻。

        一群身穿江南大学校服的学生，围着一个女生疯狂的撕咬，鲜血与碎肉遍布这些人的身上，但是他们丝毫不在乎，只是不停地啃食着女生的身体。女生的声音渐渐微弱，很快再也没有生息。

        即使隔着一百米的距离，王双也看的很清楚，这些人，不，应该不能称之为人，他们的牙齿变的尖尖的，瞳孔变的灰白，没有一丝光泽，嘴里只会发出嘶吼声。

        “丧尸”王双的脑海里只能够想到这个恐怖的名词，生化危机他也看过，但是没想到竟然会真的发生，随便一眼看去，校园里到处都是疯狂奔跑的人群。一群群丧尸脚步蹒跚的追逐着这些人。

        一个不小心拌倒的男生刚想爬起来，一个躺在旁边被啃的坑坑洼洼的尸体突然醒来，一把扑上来，对着男生的脖子就是一口，一大块血肉被咬下，男生的脸色变的无比惊恐，可是再也说不出来话，只能不甘的倒下。一群丧尸疯狂的涌上来享受着这顿大餐。

        王双倒抽一口冷气，一把将窗户关上。坐在床上，脸色阴晴不定。就在这时，昏迷的李新也醒过来，看着王双，有些疑惑的问道：“发生了什么？”

        “你自己看吧。”王双的声音中有一丝颤抖，手指指了指窗户。

        李新走到窗户边，一眼望去，校园里成为了一片修罗地狱。到处是吃人的恐怖景象，比恐怖片还要恐怖。

        “呕”李新只是看了几眼，几乎要吐出来，脸色变的苍白一片，“这是生化危机吗？怎么可能真的发生。”李新眼中满是不可思议。
','        “好了，现在事情已经发生，很明显，现在这种情况就是那金色光点导致的，我们不知道外界到底变的如何？政府会如何处理？甚至政府还会不会存在都是一个未知数。”

        “我们如今，只能够做最坏的打算！”',10037,10110);
        insert into ds_book values(null,10111,'王双缓缓开口：“幸好我们已经做了一些准备，一人一把刀，药品和食物都准备了一些。”

        “目前当务之急就是赶紧离开学校，学校的人可以说算是最多的，一旦被丧尸包围，我们谁都活不下去。”

        “幸好我们学校不是在市中心，而是在郊区，从学校北门出去，那里平时没人走，并且附近也没有商铺，出去就是一条公路。”

        李新听着王双的分析，不停地点点头，可是又有些疑惑的问道：“那咱们宿舍其他人怎么办？还有我们要去哪啊，看现在这种情势，估计整个江南市都沦陷了。”

        “我们现在自身都难保，你还想着其他人，大哥，醒醒，现在是末世，先活下去再想其他的。”王双苦笑着说道。他自己也是一个平凡人，能够在这种环境下活下去就不错了，还想如何。

        “不好，我父母和姐！”突然，王双脸色一变，他父母恐怕有危险，还有在江南市的姐姐，已经结婚，并且有了一个可爱的小宝宝。

        王双急忙掏出手机打电话，可是手机里只传来一阵“嘟嘟”声，就算是打报警电话和消防电话此时也没有一个回音。

        李新也掏出手机拨打了一遍，结果没有任何改变，全是无人接听。两人都有些沉默的坐在床上。

        “砰砰”声不断响起，宿舍门仿佛被人大力撞击，王双与李新脸色猛然一变。手中的刀直接出鞘，紧紧握在手中。

        “新子，去开门，如果是丧尸，我直接一刀砍死。”王双小声吩咐了一下李新，李新也知道现在不是开玩笑的时候，一步步的走向门口，将锁缓缓打开，王双眼睛紧紧盯着门口。

        “咚”的一声，门打开，一个身影猛的扑过来，王双看的清楚，这是一个穿着短袖，下身穿着短裤的男生，脸色苍白，一嘴的尖牙，瞳孔呈灰白色。嘶吼着向着王双扑来，王双大骇，手中的唐刀疯狂砍去，惊恐之下，连丧尸的要害都忘了。

        丧尸身上的血肉飞舞，但是明显没有任何感觉，“吼”，一声大吼，仍然勇猛的扑过来，两只手臂紧紧的抱住王双的身体，大嘴张开，都裂到了耳朵根，满口尖牙似乎想要把王双一口吞下。

        “啊”王双的唐刀在这种贴身战中没有一点用处，而李新似乎没有反应过来，眼看着王双就要被丧尸咬到。王双在恐惧之下，一拳向着丧尸的脑袋砸去。身体内一股奇异的能量从一个穴窍内涌出，顺着手臂延伸到手掌。
','        “呼”一道赤色火焰猛然在拳头之上出现，一拳打在丧尸的脑袋上，瞬间便将这头丧尸的脑袋焚烧一空。

        “砰”无头尸体倒下，一股股黑色的血液顺着脖颈流淌。王双一下子瘫倒在地，惊魂未定的看着眼前的丧尸。

        “双子，你没事吧！”李新急忙走过来满脸焦急的问道，对于王双身上突然的火焰，他感到无比的震惊。他刚才被这头丧尸的一阵猛冲撞在一旁，等到他起身想要过来帮忙时，丧尸已经快要咬到王双了。

        本来李新都已经绝望了，没想到王双的拳头上突然出现一道火焰，直接把丧尸给烧死了。

        王双有些后怕的回道：“没事，我刚才是怎么弄死他的？似乎我的拳头上出现一道火焰，直接把他的脑袋烧没了。”

        “卧槽，你还问我，我还想问你呢，这是怎么回事，你的身上怎么会冒出火焰，难道你是外星人不成。”李新瞪大眼睛惊诧的问道，他也是心大，刚经历过危机，现在就能开玩笑。

        就在王双想要回骂的时候，突然，脑海里一阵信息突然传来，王双直接撂下一句“等我”就坐在地上出神。

        “卧槽，现在什么时候了，你还有心情发呆。”李新将尸体扔到外面的走廊，骂骂咧咧的将门口锁上。幸好现在是上课时间，整栋宿舍里基本没人。

        很快，王双醒来，睁开眼睛，直直的盯着李新，声音中满是不可思议。“新子，脑海里一股信息告诉我，我似乎是什么进化者，觉醒了自己的异能。”

        “进化者？这是什么东西？”李新满脸懵逼的看着王双。

        “似乎是那些金色光点融入了人的身体，有的人没有任何异常，有的人无法承受，直接基因崩溃，变为丧尸，但是有的人却是被这些金色光点刺激到了一些穴窍，从而拥有了了一种奇异的能力，这种人，就叫做进化者。”

        李新咽了咽口水，有些干涩的道：  “你就是那个所谓的进化者？”

        “似乎是这样的。”王双点点头。

        “啊，为什么我一点异能也没有，不公平啊，我哪点比不上你，你都能进化，我为啥不能啊。”李新突然一阵哀嚎，满脸的苦大仇深，看着王双的眼神都变的危险。

        王双嘿嘿一笑，“人品问题，放心，以后有哥哥罩着你，小小丧尸算什么。”有些话王双并没有告诉李新，那就是他似乎并不是普通的进化者那么简单，他刚才在接受脑海信息的时候竟然发现自己可以看到脑海内一个黑色的门户，仿佛是万物的终结。

        王双清楚的知道那个门户就是自己原来挂在脖子上的那块黑色石头，没想到竟然变成了这样一个东西。

        王双起身，等静下心来，才感觉到自己似乎全身都充满了力量，视力变的清晰无比，原来还略微有点近视，但是现在看一百米以外的一片树叶都看的清清楚楚。王双不知道这是怎么回事，只能把这些归咎于觉醒的原因。
','        王双伸出手掌，心念一动，“砰”得一声，一团拳头大小的火焰在掌心里熊熊燃烧。心里再次一动，火焰瞬间消散。王双感觉特别有趣，伸出手指一弹，一团火焰飞出，将面前的墙壁烧了一个拳头大小的洞，小洞周围一片漆黑。

        王双将火焰化为子弹，弹飞出去，直接将墙壁透出一个小孔。

        王双想要继续再发出火焰，可是却猛然发觉自己体内的那种奇异能量似乎已经用尽，火焰不再出现，脸色瞬间一变。

        “行了，双子，你别显摆了，再玩下去咱们就真的走不了了。”李新看着王双，不明所以的叫道。

        王双瞥了一眼李新，没好气的说道：“你以为我在玩啊，不清楚这个能力的作用方法，想要在这个拥有近五千人的学校里杀出去，你以为是这么简单的事情吗？就算是我能够杀出去，但是我也不能保证把你安然无恙的带出去啊！”他没有告诉李新他现在的异能已经发不出来了。

        “呃，好吧，你继续，我不打扰你了。”李新一愣，幸幸的开口。事关自己的小命，李新也不敢大意，现在他唯一能指望的就是王双这个进化者了。

        “好了，基本熟悉了，现在必须马上离开，不然就真的麻烦了。”王双有些凝重的说道。说完，背上登山包，右手拿着唐刀，打开宿舍门，向外走去。李新见状，连忙拿起长刀跟上。',10037,10111);
insert into ds_book values(null,10112,' 你，静静的离去，

    一步一步，孤独的背影，

    多想，伴着你

    告诉你我心里多么的爱你......

    当这首熟悉的旋律在陆梦麟的耳畔响起时，就像做了个漫长无比的梦。

    猛然睁开双眼，首先映入眼帘的是母亲那略带紧张的面容。

    陆梦麟有些迷惘，怔怔的望着妈妈，因为她比实际年龄年轻了至少二十岁，依稀是自己少年时代的记忆模样。

    “梦麟，你没事吧？”妈妈的声音轻柔好听，仿若天籁。

    陆梦麟浑身剧震，泪水忍不住奔涌而出。

    “怎么了？傻孩子，成绩不好没关系，只要你好好努力，爸爸妈妈不会怪你的。”母亲摇头微笑。

    “妈，我好想你！”陆梦麟情不自禁的张开双臂，紧紧的抱住了母亲。

    他脸上的泪水就像断了线的珠子，一颗接一颗的从脸颊滑落，根本止不住。

    母亲显然没想到儿子会这么激动，轻轻拍着儿子的后背，满脸的关切。

    “要是成绩实在不行，大不了去找亲戚借钱，也一定要让我崽儿上大学。”母亲暗暗下定了决心。

    从老式半球面电视机里播放的这首《懂你》，是歌手满文军在1994年的作品，曾经感动了整整一代人。

    而再次听到这首歌时，陆梦麟却有着恍若隔世般的复杂心情。

    如果时间是一条永不停竭，奔涌向前的河流，那么就在刚才，陆梦麟逆行了。

    在那段宛若噩梦，却又真实无比的记忆之中，陆梦麟已经三十七岁了，在三线小城市里做着一份毫无前途的工作，赚取微薄可怜的那么一点点薪水，平时除了打游戏这个爱好之外，生活并无激情。

    和绝大多数的普通人一样，生活就是个缓慢受锤的过程。人一天天老下去，奢望也一天天消逝，最后变得像挨了锤的牛一样，所有的梦想和追求，都渐行渐远。

    陆梦麟还很清楚的记得，房价连涨了十几年，涨到令他这样的工薪阶层觉得遥不可及，只能倾尽举家之力，掏干了六个钱包和背负上数十年的高额债务，才能拥有所谓的上车资格。

    而就在那个令他刻骨铭心的下午，当年迈的父母带着辛苦毕生的积蓄，以近乎朝圣般的心情，想要为儿子奉献出最后一分光和热，来到了售楼中心。

    那是一个知名的大地产名牌，它们在三四线城市拿到了大片的土地，以资金高周转和营销强大而闻名。
','    位于Z市的这个项目正在前期施工中，连售楼中心都还只是刚刚完成主体建筑，就已经开始接待客户了。

    轰然一声巨响，犹如晴天霹雳。

    谁能料到，整个售楼中心坍塌了。

    数十人被塌方的豆腐渣工程埋在了一片废墟之中，其中就有陆梦麟的父母。而陆梦麟恰巧因为出门接电话而逃过了这场生死劫难。

    一周后，地产商派来的谈判专家找到了陆梦麟，并且提出了赔偿方案，一套顶层复式。

    面对这样的条件，有人怦然心动，而陆梦麟唯有惨笑，家人都没有了，要房子有屁用啊！

    一个月后，陆梦麟得知，其他的受害家属全都接受了赔偿条件，只有他还倔强的坚持着。

    可惜，平凡的小人物在面对命运的无情碾压时，毫无还手之力。

    陆梦麟的坚持，并没有盼来公道和正义，也没有任何人因此而受到实质性的惩罚。那些消逝的生命在权势与财富面前，何等的卑微。

    为了替父母讨回公道，他默默的收集证据，犹如行走在黑暗中的骑士，负重前行。

    一年后，陆梦麟历尽艰辛，在黑客的帮助下，终于掌握了这个地产集团的罪恶铁证，如果这份核心证据曝光，该集团必然会分崩离析，为恶者终将受到严惩。

    然而，就在陆梦麟向公检法部门递交证据的途中，却遇到了一辆迎面撞来的泥头车。

    恍恍惚惚间，陆梦麟仿佛在黑暗的大海中沉睡了很久，很久。

    直到耳边响起了这首《懂你》，当他睁开眼睛，看到的却是母亲年轻时的脸庞。

    我这是，重生了？

    下意识的走到自己的小房间，书桌上摆满了复习资料，厚厚的摸拟考试卷，还有自己偷偷藏夹在卷子底下的那本《灌篮高手》，一切仿佛都回到了高中时的记忆里。

    陆梦麟怔怔的盯着自己修长细腻的十指，忍不住摸了摸平坦结实的小腹，四块腹肌隐隐成形，望着镜子里那张略显稚嫩却又充满阳光的脸庞，内心情绪毫无疑问是激动的。

    三十七岁的自己，早已被生活折磨得失去了朝气，身材也因为长期加班而走样，那突起的肚腩，松弛的肌肉，还有日渐稀疏，不断向后推移的发际线，都是多年辛苦工作留下的痕迹。

    而此刻，镜中的少年，年轻而充满朝气，青春的样子，怎么看都阳光帅气。

    陆梦麟的目光紧紧锁定在了桌前的台历上，台历显示的时间是1998年6月1号，直到此刻，他仍不敢完全相信，自己竟然回到了二十年前。

    “爸爸妈妈，我回来了！这一次，我绝不会再让你们有事！我绝不会再让那场悲剧发生！”镜中的少年泪流满面，自言自语道。

    ......

    九八年的初夏，天气似乎比往年来得更为炎热。

    这个时间段的陆梦麟正在读高二，不过一提到他的成绩，所有人只能用一声唏嘘来形容。

    他就读的是柳纺一中，这所厂办的子弟学校，整个高二年级共有六个班，每个班有学生五十人左右，全年级一共三百余人，而陆梦麟的成绩，最好的时候大概可以考到二百五十名吧！

    没错，他就是传说中的吊车尾，而且还是吊得很有特点的那种。

    如果陆梦麟是那种完全读不进书，成绩烂得一塌糊涂的学生也就罢了，可他的文科成绩偏偏又不能算差，特别是历史和语文，一百五十分的卷子，有时能考到一百二十分以上。

    只不过他的数学和英语成绩，就烂得有些触目惊心，令人发指了。

    在高二（五）班，陆梦麟同学曾经创下过一个令所有人都叹为观止的记录，一百五十分的英语卷子，他在把选择题全写了的情况下，居然考出了个五分的成绩。

    没错，真的只有五分，用英语老师的话来说，就是你丫简直和英语有仇，这运气也太差了吧！

    而数学课对于当年的陆梦麟来说，也基本上属于听天书一样。基础没跟上，压根就听不懂，考试成绩经常在四十分左右，因为整张卷子上，他会做的题实在不多。

    在老师们的眼中，已经到了高二阶段，像陆梦麟这样的偏科学生，基本上已经放弃了。

    “这几道题出得是有点刁！不过你们班上的水平不行啊，看来除了某位天才同学之外，没人能全答对吧！”

    说话的是高二（五）班的英语老师，他是个满脸肥肉的矮胖中年人，手里拿着大红色的保温杯，笑眯眯的说道。

    同学们纷纷缩了缩脖子，黑板上这几句英译汉确实有难度，刚才有几个英语成绩不错的学生试过，结果都译得狗屁不通。
','    看来除了那位，应该没有人能把这些超水准的译句全部写出来吧！

    “陆梦麟，又在发呆呢？你上来，把这些诗句翻译翻译！”众人耳边突然传来了英语老师尖酸刻薄的声音道。',10038,10112);
insert into ds_book values(null,10113,' 听到刘老怪唤陆梦麟上台翻译这些英语诗，班上同学们顿时爆发出一阵欢快的讥笑声。

        因为所有人都知道，以陆梦麟的英语“造诣”，别说翻译这种程度的英文了，他大概连写的啥都看不懂吧！他可是能考“五分”的猛人啊！
    
        陆梦麟愣了一愣，有点不习惯的缓缓站起了身，在他的记忆中，已经很久很久没有回到课堂了，对于老师点名和上台解题这种事情，确实有点迟钝。
    
        而这位教英语的刘老师，在陆梦麟的印象中，是一个相当猥琐的油腻男人。
    
        他在教女生解题的时候，会刻意的将身子俯得很低，用老鹰捉小鸡式的呵护，将那些可怜的女生笼罩在怀中。
    
        他还曾经在小城的舞厅里与人争风吃醋，被人打得头破血流，然后裹着纱布给学生上课，吹嘘自己在社会上是多么的神勇。
    
        就是这么一个奇葩的人物，却是柳纺一中高二年级唯一的英语老师，如果只是在学术上误人子弟也就罢了，关键是这家伙的人品还不怎么样，从来不知道学生的自尊心为何物。
    
        像这样故意点名让陆梦麟上讲台出丑的举动，根本就不是为了检验学生的成绩，而是纯粹为了令人尴尬而取乐。
    
        若是在二十年后，这样的垃圾老师根本就没有立足之地，但是在九十年代，特别是在缺乏教师队资源的小地方，确实存在过。
    
        在一片讥笑声中，陆梦麟很认真的看了看黑板上的英文，挠了挠下巴，随口道：“那个，我可能，译得不太准。”
    
        这句话才一出口，教室里又是一阵哄笑。
    
        陆梦麟这小子说话太逗了，含蓄，相当的含蓄啊！
    
        如果他不是英语只考五分的神人，这话也许还有点说服力，但是现在从他的嘴里说出来，实在是喜感十足呢！
    
        陆梦麟满脸坦然，在满堂哄笑声中仍保持着身姿如枪，气定神闲。
    
        坐在左侧第三排的班长苏雪痕微微皱了皱眉，以微弱不可闻的动作轻轻摇头，并没有像其它人一样露出讥笑的神色。
    
        她觉得，刘老师在课堂上点陆梦麟这样的偏科生来答题，完全是一种浪费大家时间的行为，况且这种嘲笑他人弱点的举动，并不好笑，反而有点...猥琐。
    
        苏雪痕就是刘老师口中的那个某天才，她在整个年级的成绩稳居第一，而且很可怕的是从未被超越，比第二名永远能拉开至少十五分的差距，加上她的性格冷淡，沉默寡言，虽然从小就是美人胚子，却令人不敢随意亲近，甚至是有些敬畏。
    
        男生们在私下里喜欢以语文课本中的《爱莲说》一文来形容苏雪痕，“出于淤泥而不染，濯清涟而不妖，中通外直，不蔓不枝，香远益清，亭亭净植，可远观而不可亵玩焉。”
    
        此刻，站在课桌前的陆梦麟，居高临下，能够很轻易的将全班大部分同学的表情尽收眼底，很自然的也看到了苏雪痕的表情。
    
        望着那张曾经令少年时代的自己魂系梦牵的清丽脸庞，陆梦麟突然觉得有些感慨万千。
    
        苏雪痕是自己见过最优秀的女孩子，她不仅长得异常美丽，成绩格外优异，而且心地还很善良，可惜自己的学生时代实在太不够出色了，在她面前自惭形愧，根本就没有勇气去接近这样一位近乎完美的少女。
    ','        突然间，陆梦麟的眼神变得凌厉起来，目光炯炯的落在了苏雪痕的身上。
    
        因为他想起来了，应该就在半年后的高考前夜，苏雪痕因为某件事情发挥失常，考出了自己最差的成绩，与第一志愿“燕京大学”失之交臂，令所有人扼腕不已。
    
        如果自己的记忆没有出错的话，在大学毕业之后，苏雪痕凭借自己的优秀和努力，放弃了留校的机会下海创业，很快就积累到了普通人难以企及的财富。
    
        也许正因为在事业上太过专注和努力，她在婚姻上的选择却昏了头，一段失败的婚姻让她颓废到底，惨遭家暴，甚至香消玉陨。
    
        只要一想到如此清丽善良的女生，在滚滚浊世之中却落得那么悲惨的下场，陆梦麟就觉得心中隐隐作痛，望向苏雪痕的眼神中也充满了难以言状的情绪。
    
        少女的敏感，让苏雪痕注意到了来自左上方的凝视，她并没有迎合陆梦麟的目光，反而稍显有些愠怒。
    
        在这个少年如歌的年纪，男生对女生就算有倾慕之情，也只是在心底默默的念想，就连偷偷瞄上一眼都要鼓足了勇气，哪有像陆梦麟这样明目张胆的直勾勾盯着人家，而且还是在众目睽睽的课堂之上。
    
        很快，同学们也发现了这个不寻常的细节，陆梦麟的目光一直盯着苏雪痕，似乎有千言万语要倾诉，这副模样太令人心惊胆颤了。
    
        “见鬼，他盯着苏雪痕干什么？”
    
        “他不会是想表白吧？这是疯了么？”
    
        “哈哈，这小子发颠了！连眼神都不对劲了！”
    
        课堂上传来同学们的交头结耳，议论纷纷。
    
        刘老师也发现了不对劲的地方，他皱起眉头，满脸不屑的说道：“Toad wants to eat Swan meat，癞蛤蟆永远都是癞蛤蟆，想吃天鹅肉的话，先把英语练好吧！”
    
        此言一出，班上同学们又是一团哄笑。
    
        苏雪痕顿时气得把头埋得低低的，对陆梦麟大胆无知的举动更加生气了。
    
        一片哄笑声中，陆梦麟终于回过神来，意识到自己现在是在九八年，苏雪痕还只是个高中小姑娘，自己刚才的目光似乎太直接了些。
    
        “陆梦麟！父母交学费是让你来发呆的么？像你这样的垃圾，其实真没必要在我的课堂上发呆，去操场上打打篮球，锻炼身体不好吗？反正你也考不上大学，何必浪费光阴呢？”刘老师皮笑肉不笑的讥讽道。
    ','        不待陆梦麟说话，刘老师又继续开启嘲讽模式道：“未来是国际化的大时代，学不好英语，等于就是废物！你们如果像他一样，将来就只能去厂里扛大包，当苦力！”
    
        说完这句话之后，教室里的哄笑声顿时少了大半。
    
        大多数同学忽然觉得陆梦麟挺可怜的，被刘老怪当作了反面教材的典型，半点不留情面。
    
        特别是那些英语成绩较差的同学，更是吓得噤若寒蝉，连大气都不敢出，生怕引火烧身，被刘老怪无差别攻击。
    
        陆梦麟听到这番话，只是皱了皱眉头，显示出了与年龄并不相符的淡泊表情。
    
        如果是二十年前的少年陆梦麟，被老师当众羞辱，大概会羞愤难平，紧张得说不出话来，只想有个地缝钻进去。
    
        事实上，对于这个年纪的高中生而言，老师的影响和煽动性太强了，如果老师不喜欢哪个学生，大家都会似有若无的孤立他，而他本身也会承受巨大的心理压力。
    
        不过，这些垃圾话对于拥有成年人灵魂的陆梦麟来说，却完全可以不当一回事。
    
        如果按照走出社会后的标准来看，面前的这位刘老师只不过是一名普通的高中老师而已，而且还是人品不怎么样的那种，实在算不得什么了不起的人物，他的恶毒攻击并不能撼动陆梦麟的心神，反而只是觉得有些可笑。
    
        许多有个性、有才华的学生，正是在那些垃圾老师的淫威之下，才失去了灵性和自我，变成泯然众人矣。',10038,10113);
insert into ds_book values(null,10114,'“嗯，您说得非常对！未来是国际化的时代。不过，未来同样是多元化的时代，学不好英语，还有很多路可以走，只要努力勤奋，也未必就是垃圾。”陆梦麟振振有词道。

    他自己就是这样一路过来的，虽然没考到好大学，可是在后来的工作中依靠自己的努力和勤奋，依然顽强的生活着。

    “强词夺理！歪门邪道！你想让大家和你一样，都学不好英语，然后考不上大学吗？”刘老怪听得火冒三丈，怒斥道。

    在他的印象中，还没有哪个学生敢胆用这种口气和老师说话，而且最让他受不了的是用这种平等的姿态，堂而皇之的讨论他的专业，这让他很不爽。

    “废物就是废物，Get out！现在，立刻，马上！”刘老怪终于爆发，怒冲冲的吼道。

    陆梦麟摇摇头，看起来毫无畏惧，淡淡道：“我不是废物，刚才已经说过了，这些诗我能翻译！只是译得不太准而已。”

    刘老怪满脸不屑，脸上写满了嘲讽，自以为很幽默的冷笑道：“还要继续哗众取宠？哈！你要是翻译得出这些，老师我连黑板擦都吃得下去！”

    “陆梦麟同学，请不要浪费大家的时间，好吗？”

    刘老怪这最后一句，又顺势朝陆梦麟身上扣了一顶大帽子，把浪费大家时间作为武器，试图给少年致命一击。

    这时，教室里所有人都用同情的目光望向了陆梦麟，看起来，他已经彻底触怒了刘老怪，看来以后都不用再上英语课了，虽然这是很多人梦寐以求的惩罚。

    “如果我会做的话，您真的会吃黑板擦？”陆梦麟突然有些顽皮，笑兮兮的反问道。

    刘老怪怒不可竭，横眉冷对，紧紧捏住了黑板擦，大有立马砸过来的架势。

    这时，陆梦麟却昂首挺胸，大步迈上了讲台。

    全班同学顿时全都炸窝了，没想到他真敢上去，这小子是吃了熊心豹子胆，还是没睡醒？

    陆梦麟再也不理会四周的诧异目光，聚精汇神，心无旁骛，一把抓起粉笔，在黑板上唰唰的书写了起来。

    沙沙，沙沙沙！

    一行行秀逸的板书在陆梦麟的粉笔尖流淌而出，很快就写满了小半个黑板。

    教室里突然变得哑雀无声，安静得令人发指。

    包括刘老怪在内，所有人全都傻眼了。

    这，这怎么可能？

    这不是在做梦吧！

    有人狠狠拧了拧自己的胳膊，张大嘴巴，满脸不置信的盯着讲台上的那个瘦削却有力的背影。

    一切屋宇尽皆湮灭
','    一切繁华荡然无存

    海又覆海，海水无涯

    今日所剩，惟寄一叶之舟，随波逐流

    异日你将何等哀伤……

    一共五条英译汉诗句，全部呈现在全班同学面前，字迹工整有力，至少比刘老怪的字要好看太多。

    而全班英语成绩最好的几名同学则纷纷大惊小怪起来。

    因为陆梦麟写出的前两句，和他们心中标准答案几乎一模一样，只是表达方式更加中式而已。

    而后几句，虽然与英语辞典上的译义有些区别，但还是有相近的地方，很值得推敲。

    至少，这完全不像是陆梦麟的英语实力，简直跟做梦一样。

    就连苏雪痕也满脸诧异的睁大了眼睛，小巧的嘴巴卷成了超可爱的O型。

    以她的英语水平，当然能判断得出来，这几道颇有难度的英译汉难题，其实是出自英国诗人弥尔顿的大作《失乐园》，已经远远超出了高中英语的范畴，而陆梦麟几乎全对！

    而且就算是后面几句，苏梦麟写的答案虽然与课本上的语法有些区别，却并不是胡编乱造的，而是更倾向于用文言文来翻译美式英语的表达方式。

    “见鬼了，他怎么会做这些题的？”全班同学包括刘老怪在内，全都在心中不住的疑问着。

    陆梦麟笔走龙蛇，飞快的写完了答案，然后指尖轻轻一弹，粉笔犹如烟头，以一道潇洒好看的弧线划过半空，精确无误的落回到了粉笔盒里。

    全班同学目瞪口呆，眼镜纷纷跌碎了一地。

    这些拗口的英文诗句，也许对于高中生来说是颇有难度的挑战，甚至是不可逾越的鸿沟，可是对于曾经做过两年外贸生意的陆梦麟来说，实在算不上什么。

    生活的压力，往往比学校的说教更直接。记得无数个凌晨时分，陆梦麟都窝在网上和地球另一端的老外们对话。

    虽然他在学生时代的英语很烂，但是为了在网络上做外贸单挣钱，重新自学了英文，而且没有那么多学校的条条框框，学到的英语其实更简单实用。

    说到底，英语也只是一门语言，只要词汇量的积累上来了，语法只是小问题。

    “刘老师，这黑板擦...”陆梦麟咧嘴笑了笑，很客气的说道。

    刘老怪此刻的表情极为丰富，可谓是五味杂陈，他做梦都没想到，像陆梦麟这样的家伙，居然能译出自己精心准备的《失乐园》，而且居然答得有模有样。

    以刘老怪的英文底子，当然是看得出，陆梦麟这几句译得很有水平，甚至已经跳出了课本，隐隐有超越自己的水准。

    可是他是谁？他是柳纺一中唯一的英语老师，又怎么能承认这种离谱的事情呢？

    像他这样师德欠奉的老师，在面对这种怪事的时候，首想想到的并不是替班级高兴，又多了一个尖子，而是觉得自己丢了面子，一定要找回自己的面子。

    “你写的都是些什么？狗屁不通！通通都是歪门邪道！跟你们说了多少次，语法不能错！”刘老怪急急忙忙说道。
','    “嗯，我确实译得不太准。”陆梦麟很平静的点了点头，根本不想与刘老怪争辩，说完之后就坐下了。

    他这样的举动，反而显得成熟稳重，比满脸急切的刘老怪更像是成年人。

    刘老怪内心更纠结了，人家不跟你争，倒像是一拳挥到了空处，有力使不出。

    “王均，你是英语课代表！你来告诉他，是不是语法全都错了，这些译句根本就是错的！”刘老怪感觉不妙，立刻开始拉拢同学，孤立陆梦麟。

    被刘老怪叫到的这个王均是班上的英语课代表，也是老师心目中的乖乖好学生。

    干部家庭出身的王均从小耳濡目染，对于察言观色，溜须拍马很有一套，立刻站起来，皱着眉头大声说道：“是的！陆梦麟的译句是错的，语法上有很大的问题。”

    此言一出，四周的同学们纷纷轻嘘了起来。

    大伙都在心中暗想，这马屁精王均刚才也上台试过了，他连前几句都不会译，哪来的勇气大言不惭，评论人家。

    刘老怪听到大家的嘘声，知道王均压不住场面，顿时目光扫过全场，最后落到了苏雪痕身上。

    对于这个成绩特别优异的漂亮女生，就连刘老怪也是很欣赏的，他经常把苏雪痕挂在嘴边，吹嘘对方是他的得意门生。

    而像他平时那些猥琐的歪念头，也是绝对不敢向苏雪痕出手的，因为苏雪痕实在是太优秀了，无论哪方面都是焦点，近乎完美，属于令他不敢轻举妄动的那种女生。

    不过，刘老怪更清楚，像苏雪痕这样的尖子生，在班上说话是最有份量的。

    而且因为家庭环境的关系，苏雪痕的英语水平甚至从知识面的深度和广度上早就超过了自己这个英语老师，何况她这种不偏不倚的性格应该会很客观，毕竟那小子的答案确实有语法上的问题。

    “苏雪痕，你来评价一下。”刘老怪才一开口，班上顿时就安静下来了。',10038,10114);

    insert into ds_book values(null,10115,' 呼！

　　高然猛地睁开眼睛，入眼，一片混暗，一片冰凉，还有些艰涩。

　　这，怎么回事，我怎么在水里？

　　“啊……唔……”

　　还没等他搞清楚状况，刚一张嘴，一股冰凉的水就冲进喉咙，呛得他急忙屏住呼吸。

　　不能呼吸，一股憋闷感随即袭来，本能驱使他毫不犹豫就要冲出去。

　　然而当他看清楚周围的环境之时，顿感绝望。

　　他居然在一辆全封闭的车厢内，其下半身还死死卡在变形的方向盘和座椅间。

　　随着窒息感越来越强，生死攸关之际，他抓住方向盘，使出全身力气往上一掰。

　　“咯嘣！”

　　纯钢属制造的方向盘居然被他轻松齐根掰断。

　　看了看握在手中的方向盘，高然不由大为震惊，这力量，我天！

　　没时间多想，窒息感让他额头青筋暴起，挥舞手中的方向盘，向着挡风玻璃迎击而去。

　　“砰！”

　　砸开挡风玻璃，毫不犹豫逃离出车厢。

　　双手双脚稍稍一用力，他就如一条游鱼，飞快地向上飙射而去，感受着耳边传来的轰隆隆的水流声，高然更加震惊自己的力量。

　　天啦，自己何时变得如此有力了，这太不可思议了吧。

　　不过几秒钟，他就从几十米的水底冲出了水面，惯性使然，居然冲出水面足足两三米，这才又重新砸落水中。

　　“哗啦啦……”

　　“啊……呼……”

　　高然终于冲出水面，来不及抹去水流，大口大口贪婪地呼吸起来。

　　终于能呼吸了。

　　此刻，他觉得世界上最美好的事情，莫过于呼吸，这感觉实在是太爽，太惬意了。

　　好一会儿，仰躺在水面上的高然才彻底缓过劲儿来。

　　稍即，急忙看向四周围的环境。
','　　一看，顿感吃惊，头上是一座高约几十米大桥，桥边还围了不少人，虽然听不到这些人在说些什么，但还是可以清楚地看到他们在指指点点的，很显然他们是在议论自己。

　　就在他惊魂未定之际，一艘快艇，向其疾驰而去。

　　终于得救了，高然如落汤鸡般躺在快艇中，只顾着心惊肉跳和呼吸了，至于救援人员嘘寒问暖的话，他是一句也没有听进去。

　　仰望着蓝天白云，感受着快艇急速驰骋，高然渐渐稳下心来，而车祸前的景象也渐渐浮现在眼前。

　　一个小时前，高然从货运中心接走了六百多块翡翠原石，当他驾驶着皮卡车经过大桥之时，被后面疾驰而来的大卡车追尾……

　　随后他就冲出大桥，掉下几十米高的柳叶湖中。

　　回忆到这里，高然不由摸向前胸。

　　“咦，一点都不痛，这是怎么回事？”

　　“我记得当时脑袋受到了撞击，好像胸骨断了……”

　　“现在怎么会一点伤都没有？”

　　将全身都摸了一遍，高然内心泛起惊涛骇浪，今天发生的事情实在是太诡异和离奇了，让他一时半会还不能接受这个现实。

　　“车祸，还是人祸？”

　　“还有这力量，咦，我的脑海中怎么多了这么多的信息？我的身上到底发生了什么？”

　　“我的脑子里有一颗龙珠，还有一部炼体术《修龙决》？什么情况？”

　　“天啦！这到底怎么回事啊？”

　　就在高然胡思乱想中，一位警察关心地问道：“小伙子，没事吧，还能站起来吗？已经到岸了。”

　　“呃，谢谢！”

　　高然急忙翻身站起来，对几个救援警察，到了一声谢谢，随即跳下快艇。

　　“小伙子，等等，你还不能走……”

　　见高然要走，几个警察急忙追上来。

　　“有事？”高然不解地看向他们。

　　“当然，这么大的车祸，我们需要你配合调查的，走吧……”

　　几个警察虽然觉得他很可怜，但却不会忘记自己的职责，这么大的交通事故，不问个清楚明白，他们也不好向市民交差的。

　　高然穿过人群之时，八卦声汹涌而至。

　　“大家认出来没有？”
','　　“认出什么？”

　　“这不是钱家那个上门女婿高然吗？”

　　“呃，是吗？”

　　“听说那小子在钱家过得猪狗不如，也不知道是不是真的？”

　　“千真万确，我亲眼看到过那小子被钱家人使唤，他连屁都不敢放一个，果然是传说中的废物啊。”

　　“唉，真是造孽啊，出了这么大的事，钱家人都没有来看一下，这小子实在是够惨的啊。”

　　“听说他老婆钱小月美艳不可方物，为什么要入赘这个废物呢？”

　　“谁知道呢，有钱人家的心思不是我们这些小老百姓能懂的。”

　　“哈哈，要是我，我也愿意。”

　　“你呀，舔狗去吧！”

　　“哈哈哈……”

　　听着刺耳的议论声，高然不为所动，钻进一辆警车，而后警笛声响起，留下一地瓜农，呼啸而去。

　　没热闹可看，人群哄然散去，一位鸡冠头的黄毛年轻人猛然回过神来，边走边拨出一个电话。

　　“龙哥，高……高然那个废物没死……对不起……，谢龙哥，我这就回来……”

　　一个小时后，高然从警局走了出来。

　　走出警局的那一刻，高然不由长长呼出一口气，虽然警察只是询问一番事情的前因后果就将他放了，但他依然感觉心有余悸。

　　从小他就很怕警察，只要警笛声一响，他都会情不自禁想要躲起来。

　　“嘎吱！”

　　刚刚走出警局的大门，就见一辆酒红色的宝马X5，急停在他的面前。

　　“我靠，谁啊！”

　　高然正在想事情，被突然冲来的车子吓了一跳，不由爆了粗口。

　　车刚停稳，从里面钻出来一个女人。

　　女人很美，美得令人不敢直视，美得令人窒息，尤其是那两条白花花的大长腿，和那高耸的双峰，令无数狼友直咽口水。

　　美女狠命撞上车门，瞪着高然，踩着高跟凉鞋，蹬蹬蹬而来。

　　看到这个绝美又性感无敌的女人，高然顿感大难临头，下意识地就要转身逃跑。

　　“站住，你给我站住！”

　　刚要转身，一声厉喝，吓得他不得不停下来，而后苦逼地转过身。

　　“小月，你来啦！”',10039,10115);
insert into ds_book values(null,10116,'“哼，没用的废物，让你去接一下货，居然搞砸了，那可是六百多块翡翠原石，将近五千万呐，却被你全部倒进柳叶湖，你……真要气死我啊！”

　　美女叫钱小月，正是高然的老婆。

　　每当看到钱小月，高然都有种自惭形秽之感，他觉得自己是配不上她。

　　也不知道钱家为何要招他入赘，按照钱家的势力，要找一个门当户对的上门女婿应该不是难事。

　　高然从记事起就生活在柳城郊外的高家庄，他没有父母，是被爷爷一手拉扯大的。

　　自从爷爷将他嫁到钱家后，就出了远门，高然不知道他去了哪里，每次回家都没有看到他老人家。

　　“我……”

　　面对老婆的臭骂和质问，高然心中苦闷而又凄然。

　　苦闷是因为他确实一无是处，还将那么贵重的翡翠原石葬送在柳叶湖中。

　　凄然的是，他好歹也是一条人命，没想到老婆一见面不问平安，反倒劈头盖脸一顿臭骂，不说他现在已经不同往日，就算是此前，也无法忍受。

　　钱小月恨铁不成钢地瞪着高然，由于极度生气，她那高耸的山峦，在一呼一吸之间，如同连绵不绝的波涛滚滚而来，虽然高然心中凄苦，但依然被这惊心动魄的风景陶醉。

　　“我什么我，看什么看，再看我把你的眼珠子挖下来，哼！癞蛤蟆想吃天鹅肉，痴心妄想。”

　　见高然死死瞪着她那里，钱小月就更加的气上加气，越说越气之下挥手向其大脸扇去。

　　“啪！”

　　“啊！”

　　一声脆响后，传来一声痛呼。

　　这痛呼不是高然发出来的，而是钱小月的，只见她痛苦地握着小手，不可置信地瞪着高然。

　　高然被老婆狠狠扇了一巴掌，要是以前，可能会感到脸上火辣辣的，但现在他连一点痛感都没有，就好像刚刚钱小月在给他挠痒痒一般。

　　虽然不痛，但被老婆当街扇耳光，要是搁以前，他会默默忍受屈辱，不会生出丝毫的反抗之心。

　　但现在，他感觉心中有一团火焰在燃烧，而且越烧越烈，一股难以压制的情绪喷礡而出。
','　　这是一股被压抑许久的情绪，如同一座沉默了几千年的火山。

　　只见他目光一凝，从其中射出一道冰冷刺骨的寒光，直透钱小月的双眸。

　　看到这一抹冰冷的寒光，钱小月不由瞬间身体僵直，刹那间她感觉被一座冰山当头重压，一股冰冷而又死亡般的气息笼罩着她，难以呼吸，难以抗拒。

　　“呃……你……”

　　钱小月从高然的双眸中看出了不同，惊愕稍许，蓦然回神，这家伙怎的与以往不同了呢，居然敢顶撞自己了。

　　“哼，不服是吧，是不是想打我啊，来，来来来，有种你就打回去。”

　　见这个被自己吃得死死的吃软饭的家伙，居然敢用这种眼神看自己，钱小月猛然反应过来，瞬间摆脱劣势，冷哼着，气势凌人地凑上去。

　　“我……算了，好男不与女斗。”见这张精致绝美的脸蛋儿凑过来，高然扬起的大手，缓缓放下去，摇摇头，苦涩而又无奈地道。

　　见高然瞬间蔫了，钱小月不由微微有些失望，她虽然不喜欢这个傻大个，但也不希望他如此窝囊，她钱小月的男人，可不是这样的窝囊废。

　　“哼，废物就是废物，永远也上不了台面。”

　　听闻这个从来没有过夫妻之实的老婆刻薄的话，高然顿时有种暴走的心，深呼吸几次，他还是渐渐平静下来。

　　暗暗下定决心，既然你钱家人看不起我，那我就和你们从此一刀两断吧，就不信离开你钱家，我堂堂七尺男儿还活不下去？

　　反正他和钱小月是清白的，说走就走，不会有丝毫的留恋。

　　“还愣着干嘛，上车，回去再收拾你。”还没有等高然回应，就听钱小月怒喝道。话到嘴边，高然又硬生生咽了回去，乖乖跟随老婆上了宝马车。

　　自入赘钱家的两年来，他默默承受着钱家人不待见，甚至是羞辱，人都是有脾气的，此时此刻，他只想挺直腰杆，重新做回自己。

　　记得在入赘钱家之时，爷爷说过的话，依然回荡在耳边。

　　“小然啊，记住，不管你受到多大的委屈，一定要和钱小月在一起。”

　　也正是爷爷这句话，高然隐忍了两年，直到现在他都不明白爷爷为何要他忍辱负重守护钱小姐。

　　索性还有钱老爷子对他很好，要不然他真的要逃走了。

　　“是不是想一走了之啊，我告诉你，那可是五千多万的原石，捅了这么大的娄子想一走了之，哼，门儿都没有，高然，你要不将这笔货款还清，休想离开。”
','　　“呃……”

　　听闻钱小月的话，高然顿觉无语，这叫什么事情嘛，他又不是故意的，现在倒好，将丢失的原石都赖在他身上，一时间居然不知道该如何反驳。

　　虽然他入赘钱家，明面上好像从此乌鸡变凤凰，实则还是一个名副其实的穷光蛋，五千万啊，他要上哪里去弄，这不是要将他一辈子都绑架在钱家吗？

　　“好，给我一年时间，我会还清这笔货款。”高然深深呼吸几口气，无奈地道。

　　人活一口气，既然自己摊上这种事情，那就勇敢面对吧，不就是五千万吗，他就算捡垃圾也会还清的。

　　虽然他霸气地应付着，但也只是强硬了半秒钟，五千万啊，老子身上连五十块都没有。

　　听闻其言，钱小月的一双美眸中闪过一丝诧异，这家伙咋了，怎的像是突然变了一个人似的？

　　奇怪啊奇怪，这还是以前那个唯唯诺诺、听之任之、任劳任怨的废物吗？

　　“哼，算你还有点骨气……”

　　“小心！”

　　就在钱小月说话之际，前面的车猛然急停，钱小月反应也很迅疾，急忙死死踩下刹车，宝马车与前车在相距不到五十公分之间堪堪停住。

　　“嘎吱，嘎吱吱！”

　　连锁反应，后面的车纷纷急刹，一时间马路上响起了刺耳的摩擦声，还有一股股青烟冒起。

　　没等钱小月从惊魂中缓过来，高然就打开车门走了下去，因为他看到前面出了车祸。

　　钱小月见状也急忙下了车，追了上去。

　　当她来到出事地点之时，顿时被眼前的一幕惊呆，只见一个老头被一辆SUV撞倒，一条腿还被轮胎死死压着。',10039,10116);
insert into ds_book values(null,10117,'惊愣稍许，人群急速汇集而来，见到眼前一幕，司机也吓得瘫坐于地，口中呢喃自语。

　　“我撞人啦，完了，完了……”

　　众人围着出事车辆，眼睁睁地看着老头躺在血泊中，而束手无策。

　　“快来啊，大家伙儿搭把手，将车抬起来，要不然老人家这条腿保不住了。”

　　不知道谁大喊一声，众人纷纷上前抬这辆两吨重的越野车，司机也回过神来，众人齐心协力，呼喝着，奋力抬着汽车。

　　虽然人多，但这辆越野车实在是太重，无法撼动其分毫，依然死死压着老人，眼看着老人血流越来越多，气息越来越微弱，众人只能干着急而无别的办法。

　　司机早已经吓得六神无主，其苍白的脸上，豆大的汗珠噼里啪啦滚落而下。

　　“你特么还愣着干嘛，赶紧打电话报警啊。”终于有人想起救援，于是对着司机吼道。

　　司机激灵一下，急忙掏出手机，拨通了报警电话。

　　“唉，只怕来不及了。”

　　“是啊，流了这么多血，还被压着，等到警察来了，只怕……”

　　“还有办法，用千斤顶呀。”

　　“咦，这个办法好，大家赶紧找千斤顶去。”

　　就在大家伙儿议论声中，高然来到越野车前，毫不犹豫弯腰扣住地盘一侧。

　　“小伙子，我们这么多人都抬不起来，你一个人逞什么能，快走开，等千斤顶来吧。”见高然的行为，一人顿时善意地说道。

　　“是啊，千万别动，弄不好会造成二次伤害。”另一人也紧接着附和道。

　　钱小月见状，也急忙喝止起来，“高然，你听不懂人话是吧，还不赶紧回来。”

　　“呃……你……”

　　就在大家劝阻声中，高然居然将两吨重的汽车从侧方位抬起来十多公分高。

　　“快，快将老爷爷拖出来啊。”见众人都惊愕地看着自己，高然高声喊道。
','　　听闻其言，一众人这才猛然回过神来，尤其是肇事司机的反应最为快速，第一个冲到老头身边，将其迅速从车底拖了出来。

　　“嘭！”

　　见老头脱困，高然猛然松手，越野车轰然砸落。

　　高然拍了拍手，道：“大哥，别犹豫了，赶紧送老爷子去医院吧。”

　　“好，谢谢小兄弟。”司机连连点头，急忙抱起浑身是血已经昏迷的老头，将其放在后座椅上，急火火地开车走了。

　　“我们也走吧。”见众人都惊愕地望着自己，高然对钱小月微微一笑，道。

　　直到此时，钱小月才从惊骇中回过神来，急忙回到车上。

　　“哼，不要以为有点蛮力就有多了不起，在我眼里，你依然是一个莽夫，废物。”当她带着疑惑而又骇然之心看向高然之时，就见高然一副淡然的样子，顿时冷哼一声，道。

　　高然对于钱小月的冷嘲热讽早已经习惯，自然是不当一回事，转过头，看向地上那滩触目惊心的血红，默默地为老头祈福。

　　钱小月虽然说话如刀，但内心却不平静，这家伙，没想到力气这么大，要不是亲眼所见，是无论如何也不敢相信这个事实。

　　唉，光有力气又有何用呢，这年代需要的是聪明的头脑，一想到这里，刚刚收获的好感瞬间荡然无存。

　　直至宝马车消失在大家的眼中，目击者都还没有从惊愣中回过神来，不过这一幕被很多旁观者用手机拍了下来，还有人发送到了微信朋友圈、微博、还有抖音等平台。

　　不足半天，高然的神威就传遍神州大地，不得不说，现在的网络实在是太强大了。然而网络上发生的一切，高然却一无所知。

　　半小时后，两人回到了位于柳叶湖北岸的湖光山色别墅群的188号别墅。

　　这里距离市中心不足十公里的路程，距离高然出事的大桥，也只有不足五公里的路程。

　　只要他不出事，通过大桥，就能将那批原石圆满送达188号别墅，但就在即将到家之时，却出了车祸。

　　细细回想，高然终于想起案发前的一些细节来，在他正常行驶过程中，后面就跟着一辆渣土车，由于是大白天和正常行驶，他也没有在乎。

　　当他驶入大桥正中心之时，令他不敢想象的事情发生了，那辆渣土车向他加速冲撞而来。

　　当时他目视前方，根本就没有注意后方发生的事情，猛烈冲撞下他也被渣土车连人带车撞下了大桥。

　　虽然当时他很慌乱，但依然通过反光镜看到了渣土车驾驶室内司机的模糊身影，此人目光非常凶狠，除此之外就没有其他的印象了。
','　　想到这里，就算是一个傻子也知道，这是有人想要置他于死地。

　　“不管你是谁，我发誓一定会找到你……”

　　思索着，高然跟在老婆的身后，走进了188号别墅，这是一栋欧式城堡的建筑。

　　别墅很大，地下一层，地上三层，共一千多平米，有一个不小的花园和游泳池，在湖光山色别墅群中，算是最豪华最贵的别墅之一了。

　　一走进高档大理石铺设的大厅中，高然就感受到了凝重而又沉闷的气息。

　　抬头看去，只见大厅中坐满了人，居中一人正是钱家的老爷子钱万才，两边沙发中坐着高然的岳父钱本多，而下手位依次坐着小两岁的钱本智和小三岁的钱本堂。

　　而对面沙发上坐着三个中年美妇，正是高然的岳母张甜，二婶吴丹和三婶刘海燕。

　　还有一人高然不但不认识，还很刻骨铭心。

　　他就是吴家龙，也是吴丹的侄子，这小子暗暗追求钱小月很久了，就像狗皮膏药般粘着钱小月。

　　对于高然这个有名无实的丈夫，他是根本就没有放在眼中，不仅仅如此，还当众羞辱打骂过他，给高然造成了极大的心理阴影。

　　见这么多人都不怀好意地注视自己，高然起初还有些害怕，随后他就镇定下来。

　　呵呵！

　　我已经不再是以前的我，怕你们干什么，暴风雨尽管来得猛烈些吧。

　　从今以后再也不会像以前那般活得像条狗，是时候挺直腰杆做人了。

　　见高然走进来，也只有钱老爷子不动声色地对其点点头。

　　“高然，没事吧？”钱万才朝高然招招手，神情略微担忧地询问道。

　　“没……”

　　高然刚一开口，却被一人的嗤笑声打断。

　　“切！爸，这不是明摆着的吗？他好端端的呢？哪里像有事的人呀，真是好人不长命祸害活千年，不知道他活着回来干什么？”二婶吴丹见其大摇大摆走进来，眉目一冷，抢着说道。',10039,10117);

insert into ds_book values(null,10118,'华清医科大学附属医院招人条件一直严苛，起点必须是985或211硕士研究生,即使是进入华清华清医科大学本部的博士、博士后，也必须要到旗下基层分院实习或工作，积累至少两到五年的工作经验。
    　　林宇，一个普通的二本医学毕业生，破天荒收到了华清医科大学附属医院录用通知书，能进到华清医科大学附属第八医院，在自己所在的华北医学院临床一班，那也算是目前混得最好的了。
    　　今天是林宇前往医院报到的日子，他早早在旅店洗漱一番，简单地收拾了有些蓬乱的头发，下楼吃了早餐，坐上公交车往医院赶。
    　　初夏的早晨，惊雷时而响彻天际，大雨磅礴，犹如一首狂想曲，不断击打在汽车玻璃窗上，暴雨如注顺着玻璃流了下来，车箱里面一股带着腥臭味的湿气蔓延开来。
    　　林宇坐在司机后面的位置，左边玻璃上时不时有水迹流入车内，他把腿缩了缩，尽量不让雨水沾湿自己的裤子和鞋子。
    　　半小时后，医院的轮廓逐渐映入林宇的眼前。
    　　医院坐落在潭湘市的新区，眼前的内科楼、外科楼、综合楼，目测都有二十层左右，呈品字型分布，中间是一栋十一二层的门诊大楼，看上去甚是宏伟！
    　　后面分布的宿舍楼、教学楼、多功能楼、检验大楼应有尽有，楼宇间排列得井然有序！
    　　从规模来看，这里无论如何都不像是一个二级医疗机构，规模远超同等二级医院，甚至比三甲医院规模还大。
    　　医院门脸前面两根水桶粗的立柱，左边挂的是【华清医科大学附属第八医院】，右侧是【潭湘医药协议二级甲等医疗机构】。
    　　医院是公交车的终点站，汽车只要掉头就到了医院门诊大楼前的站台。
    　　就在此时，公交车前面一辆红色跑车本来在中间车道，她打了右转向，突然车子直接左拐，一脚油门蹿到了公交车的前面，她应该也想进入左车道掉头。
    　　“我靠！”司机始料不及一个急刹，同时大骂了一句！
    　　公交车此时速度不慢，加上现在下雨，地面湿滑，车头直接撞到了跑车屁股发出“砰”的一声。
    　　公交车直接犹如醉汉一般扭曲起来向前，“砰”的一声撞到了中央隔离带，发生了侧翻，“啊...啊...啊”全车人都尖叫起来。
    　　一瞬间！林宇也顺着惯性掉进了车里...
    　　 他头痛欲裂...一切的一切，都虚无缥缈起来...。
    　　　抢救室就在百米开外！抢救车在医护人员百米冲刺下推了过来。
    　　林宇隐隐感觉到自己被人抬上了抢救车，颠簸地推到了抢救室...
    　　急诊科医生抢救安排的声音，遥远又熟悉：“大动脉没了！报告血压！准备除颤仪！...肾上腺素准备...”。
    　　林宇心口传来一阵窒息感，一种前所未有的压迫感...
    　　此时的他，感觉自己被千斤重担压住一般，喘不过气来，大脑也混混沌沌…
    　　“血压测不到！室颤...除颤仪准备就绪...第一次除颤，200J，大家让开！”
    　　除颤仪的电流传到林宇的胸部皮肤，发出“噗”的一声。
    林宇的胸口一股电流传过，心脏的压迫感瞬间解除，又开始了跳动，头脑也清醒不少！
    心电监护仪上面也传来了熟悉节律的“滴滴滴”声。
    　　“嗷...”林宇一口大气喘出，顿时神清气爽了，刚才那种濒死感消失得无影无踪！
    　　林宇徐徐地睁开眼睛！耳边传来心电监护仪熟悉的“滴...滴...”声。
    抢救的医生开心道：“救过来了...”。','    突然！林宇耳边传来一个声音：【系统唤醒，建立连接！】
    　　抢救的声音似乎在耳外传来，但这个声音好像就在脑海里面。
    　　林宇此时已经清醒了大半，只是头痛欲裂，脑袋里嗡嗡作响！
    　　林宇感觉胸前心电图的电极球一个一个被粘在了胸部，左侧腕部也传来血压计熟悉的压迫感。
    　　“心电图基本正常，血压120/80……”
    手臂也被针扎一下，犹如蚂蚁夹了一下样疼痛传来，他清醒很多，但是头痛欲裂，应该刚才车翻的过程中，头撞到了对面椅子上，撞得不轻！
    脑海里声音异常清晰，再次传来：【系统连接完成！开启技能树，点亮助理医师级，获得技能：医学透视，经验值100】。
    突然！林宇脑海里出现了一个界面，看上去像的一个手机屏幕，或者像平板屏幕一样，上面显示出了一根树枝状的东西。
    第一层：点亮（一百经验值），助理医师级，  技能：医学透视！
    第二层：灰暗（一千经验值），职业医师级，  技能：未知。
    第三层：灰暗（一万经验值），主治医师级，  技能：未知。
    第四层：灰暗（十万经验值），副主任医师级，技能：未知。
    ......
    任  务： 熟悉系统。
    经验值：100（获取方式：直播手术室分享）。
    除了第一层亮了起来，二到以上全都是灰暗的！林宇在脑海里看得清楚，只是想不明白。
    “这是啥东西？”林宇直接懵逼，他有些不敢相信，声音如此清晰，界面如此熟悉！
    不应该啊！刚才确实差点死了，但明明被抢救过来了？
    怎么脑海里出现了个什么系统？
    难道老子撞成了精神病？林宇暗自担忧起来。
    　　  精神分裂症最典型的临床表现就是感知觉障碍，最突出的表现就是幻听、幻视、幻嗅、幻味及幻触等，而幻听最为常见。
    　 这是妥妥的幻听啊，目前来看，虽然脑海里有东西，但眼睛还正常，眼睛里面都是忙忙碌碌的白大褂，至少还没出现幻视！
    　　医生见林宇嘴角动了几下，似乎听到了他嘴巴里面嘟哝了两句，拍了拍他肩膀道：“小伙子！叫什么名字？”。
    　　林宇此时感觉好多了，望着胡子拉碴的医生，嘴巴动了两下：“林...林...宇”一股熟悉的消毒水味道直冲他的脑门。
    　　“还有哪里不舒服吗？”
    “我...还好！感觉头有些痛！”他试着动了动头，捏了捏手指，动了动脚趾，感觉不错，都在!
    “还好！你这头上被撞了下，不过没有明显伤口！可能有点脑震荡！”医生安慰道。
    “有什么不舒服就告诉我！”医生建议道。','    “好！其他感觉还好！”林宇安心道，想说自己刚在脑海里看到了些东西，话到嘴边说不出口，暗道这应该是脑震荡引起的不适吧！
    关键是告诉他，说我脑袋里来了个“系统”！这谁会信啊？
    暗道这是脑震荡还是神经病啊？
        自己毕竟是医学出生，身体上有没有问题， 心里还是有数的，只是自己这脑海里这个声音和影像才是个大问题。
    　　医生在林宇身上做起了体格检查，这里摸摸，那里问问...
    “不可能啊！刚才心脏都骤停了，怎么就没事了呢？心电图也没有任何问题！血压还这么好！骨折也没有！脑出血也没有！”医生嘟哝自言自语起来。
    暗道他刚才居然心脏骤停了，现在一点问题没有？医生也有些不解，不过没事终究是好事儿！
    　　“...”林宇满脸黑线，暗道你这是希望我不好的节奏啊！
    　　医生再次检查了一遍，发现确实没有什么问题，才放心起来，望着护士道：“这家伙命大！暂时看来没有内出血！没有骨折！留观24小时！有问题再来喊我！”。
     他说完去抢救其他病人了。
    林宇休息了大半小时，确认没什么事儿，试着坐了起来，伸了伸胳膊蹬了蹬腿，发现除了头有些痛，感觉还不错！
    这里不愧是潭湘市设备最齐全的医院，心电监护仪、除颤仪这些设备都备好放在旁边，移动B超、C臂这些都摆在了里间的玻璃房，这两个设备可不是每个医院都常备的！
    墙壁上一尘不染，上面贴了不少挂图，多是抢救、过敏休克、急诊抢救室室器械制度、首诊负责制度等流程图。
    这些制度都制作精美，贴在了墙上！
    心电监护仪传来“滴滴滴”！臂膀上的血压计开始了一阵熟悉的压迫感，二十秒后，压迫感消失，林宇下意识地望了望监护仪，血压120/70mmhg，心率75次/分。
    林宇望着这些监测值，暗道我这身体倍棒，吃嘛嘛香，没有任何问题！刚才那种撞击怎么就心脏骤停了呢？想不通！
    　　隔壁抢救室传来司机骂骂咧咧的声音“哎呦！哎呦！痛痛痛...马路杀手！明明是左拐掉头，你特妈居然打右转向...哎呦！哎呦！”。
    护士长见病人乱吼，见怪不怪地笑笑。
    她见林宇坐了起来，继续过来询问道：“感觉怎么样？小伙子！”。
    　　“还好！没事儿！麻烦把这盐水拔了吧！”林宇建议道。
    　　“没事就好！水吊完了，医生说可以拔了，你好好休息一下！”护士长说完把他的针拔掉了。
    　　林宇暗道护士长对自己还是蛮关心的，他感激地回望了一眼护士长，暗道这护士长还比较年轻，丰满逼人啊。
    　　突然，他眼睛里闪过一阵光芒，白大褂、外衣、甚至内衣都慢慢变得透明，肌肤犹如羊脂白玉般柔滑...
    　　啊？护士长今天穿的是粉红色内衣！那个形似麻将二筒的罩子扎扎实实映在林宇的眼眸里！
    甚至那蕾丝边纹理都是那么的清晰！
    好凶的两个对称的女性特有对称人体器官，都快喷薄欲出了！有货啊！林宇邪恶地感叹起来。',10040,10118);
insert into ds_book values(null,10119,' 脑海里不合时宜地传来提示音【系统助理级：初级医学透视，消耗经验值10，剩余90】。
    系统？什么系统？林宇简直不敢相信自己的眼睛！
    我靠！还真能看！这...到底是怎么啦？林宇反射性地揉了揉眼！
    再揉！还是能看得清楚！
    医学透视？这是个什么梗啊，老子的眼睛成B超、CT了吗？可以穿透障碍物了？他简直不敢相信自己的眼睛。 
    　　护士长见他揉眼睛，关心起来：
    　　“怎么啦？眼睛是不是还有些不舒服？等下我给你拿一支眼药水”。
    　　林宇不太好意思，总不能告诉你，我看到你的粉红色蕾丝边内衣了，还看到了些不该看到的东西！
    　　不应该啊，从外到内，起码隔了两层：白大褂，墨绿色连衣裙！
    　　林宇邪恶地往下看了看！内裤也是粉红色，再定睛一看，什么都很清楚！甚至...
    　　林宇不由自主地往下看了看！
    再看！自己的良心就要受到道德的谴责了，林宇暗道。
    　　这特妈是啥情况？他简直不敢相信自己眼睛！幻听已经很恐怖了，难道还幻视吗？这比车祸还恐怖啊！
    幻听啊！还有幻视！精神分裂症两个症状都齐了！
    这绝对是妥妥的精神分裂症啊！
    尼玛！我一直就是社会主义接班人，相信马列不信牛鬼蛇神的，我这眼睛视力一直很好！没近视，更没远视啊！
    为什么能透视呢！想不通啊，林宇暗自着急道。
    系统是个啥？难道这是个神医系统，亦或是名医系统？有了他，我的医学道路就要起飞啦？
    老子做梦都在当名医，昨天晚上还在梦中在妇产科做男医生呢！
    　　系统还是精神病？这是个问题！还是个急迫的问题啊！林宇担忧道。
    　　这时，一个小护士进来找护士长拿除颤仪。
    　　林宇想再次确认下，又邪恶地望了望这个小美女！尼玛！别看她外表娇小，这胸好凶好凶啊！
    　　内裤上印了个Hello kitty，一只可爱的小猫咪，林宇瞬间没了兴趣！收回了眼神。
    系统提示：【系统助理级启动，初级医学透视，消耗经验值10，剩余80】
    　　脑海里的这个声音时不时来一下，林宇有些头大，暂时来看，应该没有什么副作用，他心安了不少！
    确认无误！应该不是精神病！我真有金手指了？
    一直以来，我就是想做医生。
    当然！有了金手指，疑难杂症都能治，美女任我睡，数钱数到手抽筋，我还是挺开心的！他邪恶地想到。
    林宇真想跳起来！作为医生，有了这个系统，特妈比中了一千万还开心啊！　　
    　　　林宇暗自告诫道：低调！一定要低调！不然！要是被相关部门抓过去解剖研究一番，那就得不偿失了。
    　　小护士已经出去，林宇又一次再护士长身上确认了下自己的医学透视功能!
    【...经验值剩余70】
    　　确认无误，虽然用科学无法解释，但我确实有金手指了！
    林宇此刻激动万分，心潮澎湃，呼吸也急促了起来。
    　　护士长见他死盯着自己的胸口，被一个帅哥盯着看，满脸羞红。
    　　暗道我胸比较大，穿了白大褂，你也看出来了吗？你这...还呼吸急促起来了，姐姐我有这么大魅力吗？
    小处.男！鉴定完毕，护士长开心道。
    　　林宇没有关注护士长的的脸色变化，自我适应了一下，发现自己除了眼睛比较累外，其他感觉还好，还得去医院报到，索性去护士站打个招呼，准备撤退！
    　　“你刚才心脏都停跳了，至少观察24小时再说！”护士长坚决不同意他走，开玩笑，你刚才心脏骤停，没把你送心内科就不错了。
    24小时？可不行！医院里面，我做医生上班可以，你要我待这里望着天花板，现在手机又不知道到哪去了。
    这样待着，比杀了我还难受，关键是，今天是报名截止日啊。','    　　“护士长，我没有问题！你看我能跑能跳！”林宇从来没有如此好的感觉，此时精气神十足，身体完全没有任何问题，视力更是超好！
    　　当然了，他对自己这个系统，也慢慢摸出来一些道道儿，意念中要启动系统，他才会启动，现在只点亮了医学透视技能，不知道以后还会点亮什么技能？
    　　还好，这个医学透视技能不是挂在眼睛上，必须启动系统才能用，不然的话，走在街上，到处都是骷髅，血管、神经，那也够吓人。
     护士长也是一个比较较真的人，摇了摇头道：“不行，我得去问下牛主任！”。
    “不用！护士长，我真没有问题，其实我是你...”想告诉她说，我是你们的同事，同事还没说出口，一个美女过来打断了他。
    　　“有没有问题不是你说了算！得医生说了算！”这时候，一个带着墨镜的美女过来冷冷道。
    　　林宇望了望这个美女有些恼火，你又是谁？我要出院同你又扯上关系了？
    　　尼玛，林宇定睛一瞧，大美女啊！
    她脸上没有一点瑕疵，身材也是刚刚好，满脸一股盛气凌人。
    　　“什么意思？”林宇望着她不解道，他对美女一直都是保持绅士风度的。
    　　“你走可以！得把字签了，出了医院的门，你就不能找医院的麻烦！更不能找我的麻烦！”墨镜美女冷冷道。
    　　护士长有些尴尬，嘴巴嗫嚅了几下，准备解释一番。
    　　墨镜美女冷冷道：“你回到你的岗位上去，这里我自己来处理！”。
    护士长尴尬道：“那...好的！院...”。
    她话还没说完，墨镜美女把手一扬：“你去忙吧！”口吻严峻，没有丝毫商量的余地。
    她见护士长走了，又望着林宇道：“签了吧？”。
    　　“怎么签？”林宇不解道。
    　　“强烈要求出院，一切责任自负！然后签上名字就可以了！”墨镜美女道，把手里的一张印着某某责任书递了过来。
    　　林宇是医生出身，当然知道医院这样做有他的道理，只是你这态度也太咄咄逼人了吧。
    　　“我为什么要签？”你穿着正装，也不是医生啊。
    但是刚才护士长对她毕恭毕敬的态度，感觉她又像是医生，难道是医院的领导？林宇有些懵了。
    　　“很简单！我是前面那一部车的司机！你要是走了，然后出了事儿，保.险公司不赔！那我可不管！”。
    　　原来如此！你就是那个罪魁祸首啊，妥妥地马路杀手啊！
    　　“啊？你就是那个准备左拐掉头，然后打右转向灯的马路杀手啊？”
    　　“...”墨镜美女被人说中痛处，有些尴尬，此时正是上班高峰，保险公司勘察车被堵在了桥上。
    　　通过电话沟通，他们要求这些伤者全都要留在现场，这样好做理赔，哪知道，居然有个家伙还真想跑路！
    你可不能跑，你出院后要是出事儿了，保险公司又不认，那我找谁去？或者你要找医院的麻烦也不行！
    “我没事了！保证不找你麻烦！”林宇只想离开了，现在接近十点，得赶快去把名报了。
    “你不能走！你要是走了，回去出事了，到时候保险公司又不认怎么办？”美女坚持道。
    林宇听她说自己出事！暗道你才要出事呢！你全家人都要出事，老子都不会出事！
    心里有些烦躁：“我为什么要听你的？我看那护士长还蛮怕你的！你也是这个医院的？”。
    “是的！怎么啦？”美女道。','    林宇正准备问她是哪个科室的，暗道你要是这个医院的，那我还是得客气一点，毕竟以后是同事，抬头不见低头见。
    就在此时，一个四十岁的中年大叔捂着肚子过来。
    他冷汗直冒，应该痛得厉害。
    “砰！”地一声，摔倒在了旁边的地板上，应该是痛得厉害，走路不稳。
    “快来人！这里有个病人！”墨镜美女朝导诊台喊道。
    不用喊，大家都看在了眼里，值班医生和护士都冲了过来。
    “哎呦哎呦！医生！我肚子痛！”病人见医生过来，立即朝医生指了指肚子。
    医生上前询问道：“嗯！什么时候开始的？哪个地方？”。
    病人表情痛苦，扭曲着脸庞，豆大的汗珠往下掉，看得出，他痛得不是一般厉害！
    “半小时前开始的，这里痛，一直痛！可能是早上吃了点冷稀饭！然后肚子有些拉稀，上厕所的时候，突然就痛了！”病人指着自己的肚子。
    “有恶心吗？吐没吐吗？”
    “嗯，恶心得厉害！吐了两次！”
    “以前有什么病没？”
    “以前？我有胆囊炎！一个月前还在你们这里住过院！当时说要动手术，我看不痛了就没动！...现在看来，当时就该把手术做了！”病人喃喃后悔道。
    “哦！好，赶快约个急诊B超，看下胆囊！收治到普外科！”医生一听，这个还是比较符合胆囊炎急性发作的表现，更何况又有既往史。
    几人七手八脚把病人抬上了轮椅，准备往住院部走。
    “慢！”林宇大吼一声。
    “啊？”医生护士都是大吃一惊，不知道他是个什么意思？
    “怎么啦？”医生有些烦躁，望着林宇，有些不解，你是谁啊，这里又你说话的份儿吗？把病人耽误了，你担待得起吗？
    “我觉得应该给病人先做个心电图！”林宇建议道。
    他见病人痛得如此厉害，开始也以为是胆囊炎，刚才聚精会神地望着病人，他第一次在病人身上启动了金手指！发现病人可不是简单的胆囊炎！
    脑海里的声音再次响起【系统助理级，中级医学透视，消耗经验值20，剩余50】。',10040,10119);

insert into ds_book values(null,10120,' 林宇听到耳边传来中级医学透视的声音，这样说来，还有高级医学透视了。
      林宇暗自期待，不知道后面的透视功能还有什么特别之处？
    现在经验值只剩50了！也不知道怎么获取？一切都是未知！林宇有些小期待，又有些小担心！不知道这个东西有没有什么副作用？
     
    映入他眼眸的血管里面是潺潺流动的血液，通过病人外衣、内衣，胸壁，心脏有节律的跳动，主动脉弓里面潺潺而流的红色血液有条不紊地流过，犹如河流一般...
    　　旁边的上腔静脉血液回流也是有条不紊，因为是静脉血，只是颜色有些暗红...
    当林宇看到患者的心脏血管的时候，他暗自心惊！
    病人的心脏血管有问题！
    并且是大问题！
    病人心脏左冠状动脉前降支出现了血液断流！
    这临床表现！这血管情况！
    这是妥妥的心肌梗塞啊！
    心肌梗塞最常见的血管堵塞就是左冠状动脉前降支。
    心肌梗塞！这可是要命的病，不能耽误一分钟！
    你这还要预约B超、做B超，还要到科室！这里、那里一耽误，病人还有命吗？
    心肌梗塞，时间就是生命！能否溶栓、能否放支架，干预得越早，效果越好。
    林宇暗道脑袋里的系统，妥妥金手指啊！当然了，他来不及震惊，现在当务之急是要医生给他做一个心电图，让医生赶快处理病人。
    “你是谁？这是医院！”医生显然对林宇这种指手画脚有些烦躁。
    “主任！你想过没有，假若这个病人是心肌梗塞的话...”林宇望着医生幽幽道。
    “哼！我二十几年的临床经验了，你是医生？”医生见他质疑自己的权威，有些恼！
    “我也是医生...刚毕业！病人腹痛，我觉得要排除心脏病...”林宇话还没说完直接被他打断。
    “哼哼！不要耽误病人了，赶快送到B超室去！”医生直接不屑地望着林宇，开始吩咐护士了。
    病人这个表现、结合病史、饮食等等，不说胆囊炎急性发作百分之百，起码也得百分之九十。
    暗道就算你说得有道理！那我也得按照我的思路搞！最多我加紧给他再约一个急诊心电图！
    见病人马上要被推走了，林宇暗自着急！
    墨镜美女冷哼一声：“怎么样？医生可是凭经验吃饭的！你还嫩呢！那是我们急诊科牛主任！”说完也是一股小眼神过来，里面夹杂着不屑和嘲笑。
    “哼！治病救人可不能仅凭经验，这个病人明明就是心肌梗塞，牛主任会把病人害死的！医院就等着打官司吧！”。
    林宇想着无论如何也得去说服这个倔强的牛主任！
    “等一下！”墨镜美女喝道。
    护士已经走了十几步，见墨镜美女一声吼，直接被搞晕了，现在都不知道听谁的了！
    牛主任正走到门口，也停了下来。
    “先给病人做一个急诊心电图！”墨镜美女吩咐道。
    “你又是谁啊？...”牛主任只差吐血了，你戴这么大个墨镜，又在这里瞎指挥一通。
    他望着墨镜美女，定睛一瞧，吓了一跳：“夏...院...那我马上去安排！”。
    林宇也没想通这个牛气冲冲的牛主任怎么就听这个墨镜小妞的话？
    林宇见病人又推了回来，放下心来！准备离开！
    “我说了你不能走！你要是走了，如果回家死了的话，那我们医院可不负责任！”墨镜美女冷冷道。
    　　林宇回过头望着她，没好气道：“你死了，我都不会死！”说完准备走人！
    美女见他咒自己死，气得直跺脚，正准备怼他一通！','    耳边传来了抢救室里的声音，把她吓了一跳，根本没精力去管林宇了。
    “缺血严重！很有可能是心梗！快通知心内科医生过来！快快快！抽个肌钙蛋白！”抢救室里面传来牛主任急切安排的声音！
    林宇也听到了牛主任的吼声，暗道这系统牛叉啊！
    他望着眼前的美女，一股胜利的眼神射了过去，暗道：小样！老子牛叉吧！哈哈哈。
    “你...怎么知道？”墨镜美女喃喃道。
    林宇望着惊讶的墨镜美女，耸了耸肩道：“怎么样？经验差点害死人吧！”说完头也不回地走了。
    ...
    林宇回旅馆换一套衣服，继续把报道流程走完。
    　　来到人事科，负责人姓刘，叫刘美，是一个三十多岁的少妇，脸上涂一层厚厚的粉，前凸后翘得厉害，波涛汹涌得更厉害。
    　　波涛姐见林宇盯着自己颈部下面看，挺得更厉害了，自己的丰满有人欣赏，她内心还是很开心的。
    　　她办事麻利，三下五除二就把林宇安排得妥妥的。
    　　新进医生，首先科室轮转，会议早已确定，林宇被安排到了泌尿外科！
    　　波涛姐带着他到科室！想让他同泌尿外科王超主任见一面，整个科室医生都做手术去了，只有一个值班医生，忙得晕头转向，根本没时间搭理他，同他简单地打了个招呼，算是欢迎。
    　　波涛姐有些无奈，给王主任打了电话，没接！
    　　她尴尬道：“他应该在手术台上！我们先去后勤拿宿舍钥匙！”。
    　　说完又带着林宇到后勤办公室。
    　　暗道看你是院长特事特办把你招聘进来的，不然还懒得搭理你，其他新进人员都是自己去跑的。
    　　林宇来到一房一厅的单身狗宿舍，打扫了下，累得满头大汗！
    　　到了中午，喊了个外卖，吃完后，准备躺在床上休息！脑海里的系统提示音再也没有出现了。
    　　“砰...砰！”门口传了敲门声。
    　　“谁啊？”林宇暗道奇怪，初来乍到，谁来找我？
    　　林宇打开门，只差没亮瞎眼睛，一个绝美的美女站在门口狠狠地盯着他。
    　　不是别人，正是今早那个女司机！
    　　林宇暗道这家伙真是阴魂不散啊，都说了不找你麻烦了，你出车祸难道还赖上我了？
    　林宇仔细地瞧了瞧她：眉毛如画，眼神冷漠但也勾人，鼻子挺得正合时宜，嘴巴是典型的江南美女的樱桃嘴！脸部皮肤更是吹弹可破。
    　　沉鱼落雁啊！林宇突然想到了这个词儿！
    美女见得不少，如此漂亮又气质的的确少见！
    　　身高目测起码一米七以上！美女中的极品啊，只是胸部小了点！可惜了！
    　　其实也不小，中等偏上，只是刚才见了大的！有了对比就有了伤害啊。
    　　尼玛！还是黑色的，又是蕾丝边！但这质地绝对比那护士长的好啊！只是她包裹的“东西”比起护士长的来，就有些小尴尬了！
    系统提示：【系统助理级：初级医学透视，消耗经验值10，剩余40】。
    　　　美女也是怔了一下！她万万没想到林宇就是早上不给自己面子和咒骂自己早死那个可恶的家伙！
        他说是刚毕业的医学生，原来就是我们医院新进的林宇，真是冤家路窄啊！
    　　你还敢盯着老娘的胸部看！没素质！没教养！夏雨嫣暗骂道！','    　　她定了定心神，望着这个被父亲特招进来的二流本科生，天天在父母口中念叨的家伙，今天终于站在了自己的面前。
    　　他到底同自己家族有何渊源，她并不太清楚！
    望着眼前这个猥琐的家伙，她更不想知道了。
    　　“原来你就是林宇！”她也是大为惊讶道，今天早上你不给我面子，然后还咒我早点死！
    　　“原来你就是马路杀手！”暗道我都说了不找你麻烦，你苦苦找我干嘛？
    　　“我叫夏雨嫣！”美女见她又提女司机这个梗，有些烦躁。
    　　“不认识！”林宇诚恳地摇了摇头，我只知道你就是那个打右转向灯然后左拐的女司机！
    　　夏雨嫣有些气，暗道如果不是父亲给你开后门，你能进来？声音提高了几度：“不认识？你居然不接我电话！”。
    她打了他几次电话都不在服务区，她还好奇怪，从人事科了解到这个家伙明明已经报道，电话居然不在服务区。
    　　林宇见这家伙态度不太好！简直就是来兴师问罪的节奏，我电话不接，不关我事儿，不是因为你今天出了车祸吗，老子手机早已经不知道下落了！
    　　“手机应该在车祸中身亡了！不对！你应该赔我一部手机吧！”林宇一脸无辜，虽然手机比较差，但也是可以打电话发微信的！
    　　“哼！谁要你今天早上走了！你不走的话，我保险公司就给你赔了！可是你走了，现在可不好说你手机到底在哪掉的了？”。
    赔一部手机是小事儿！你这态度就别想要手机了。
    　　 林宇暗道就一破手机，不值几个钱，懒得同她扯： “好！算你狠！算我倒霉！手机身亡了就身亡了吧！”
    　　“你怎么就没身亡呢？”夏雨嫣哀怨地狠了他一眼。
    　　林宇一听，瞬间火大，暗道老子没惹过你吧，最多就是早上怼了下你，前提还是你怼了我一顿，你这心胸同你这对...一样狭小啊！
    　　“请你嘴巴方干净点，我不认识你，你到底干嘛？我要睡午觉了！”说完准备关门！
    　　“我会让你好好认识我的！”夏雨嫣狠狠道，望了他一眼：“我们出去谈点事儿！”。
    　　“我们之间有什么事儿可以谈？我又不认识你！还是车祸的事儿？”林宇有些恼了。
          我们有点八字不合，感觉同你没事可谈！
    　　夏雨嫣没想到他是如此态度！气不打一处来，恶狠狠道：“我是医院院长！”。
    　　“哈哈哈”林宇笑得开心：“你是院长？院长情人吧？你多大了，就来当骗子！我今天刚来报道！没钱！骗色也不行！我不喜欢胸小的！”。
    这话绝对算恶毒了，谁叫林宇就是一毒舌呢？不可能院长这么年轻！',10040,10120);

    insert into ds_book values(null,10121,'玄黄天下西南，一座大雪山。雪山之大，方圆千里，沿山脚数十郡城，人口百万；雪山之高，直插天穹，不见峰顶。

    山下的人，千万年来，也曾见过有人登上这座高山，却从未曾见有人下得来过。

    所以这座大雪山，名不归山。

    不归山上，并不是如人们想像般寸草不生的荒凉景象。东南西北四面，无论从那一面登顶，都会看见山顶之上，竟有一大片凹陷下去的广袤盘地，形成方圆数十里的沃野平原。

    这片平原的南面，有坡度平缓的丘陵，起伏几下，便被高高的雪峰，阻断在棱角犀利的黑石险崖之下。

    从平原和丘陵看四面的白雪峰顶，宛若长龙，连绵环绕在青天之下，壮阔雄伟。

    只有大大小小百余间房屋的思安寨，犹如一块小小的补丁，打在雪山下翠绿丘陵和广袤平原的交界线上。

    思安寨中，一座庭院宽广，朱门漆柱的豪阔府邸，有十几个鲜衣照人的少年，正在院中练剑。

    只见剑光霍霍，起若雷霆电闪，罢若江海凝光，一众少年，(身shēn)法剑势，都卓然不凡。

    府邸大门之外，门头高挂的“行知学堂”四个大字，在煦暖的晨曦之中，熠熠闪光。

    这便是思安寨族长任净芳之子，族中第一剑客任重山主持的文武兼修学堂。族中富足人家的子弟，多半会送到这行知学堂来，上午学剑，下午习文。

    寻常陋巷之中，多有村居小院，虽然简陋，亦有少年，在家主督促之下，刻苦练剑，挥汗如雨。

    整座思安寨，若非农忙，就都是这样一番景象，巷道中，鸡犬相闻；院落内，少年倜傥，剑光飞舞。

    寨门外，一条大路，蜿蜒穿过田野，通往三数里外，一座雕琢精美，历经数百年风雨洗刷的古老石桥。

    桥下弯环小河，自西往东，穿越整片平原，去往东边的披云大泽。

    河上这座桥，长逾三丈，名为“迎圣桥”，是思安寨通往平原，去往外乡的唯一通路。

    桥两边共计20根望柱，间隔18块栏板。每块栏板，都有一个形貌古怪，姿势夸张的人物浮雕。

    每根望柱顶上，有仰首石狮塑像；除了东面桥栏正中的那一根。

    这根特别的望柱顶部，也不知多少年前，便已经在齐平横栏处断裂。石狮不见了，却常年(裸luǒ)露着一根如拇指粗细的锈铁条。

    迎圣桥上，一个十一二岁的少年，(身shēn)材精瘦，衣衫破旧，满(身shēn)土木尘灰之色。

    少年名叫任平生，是村中唯一的猎人任强之子。

    任平生也在练剑，从他(身shēn)形闪转，举手投足，都可以看得出是在练剑。

    可是他剑招生疏，(身shēn)法古怪，手足生硬，一招一式之间，全无连贯接续。

    更为古怪的是，少年手中，根本就没有剑。连根替代的木剑，甚至棍子都欠奉。两手空空，只是右手指掌，做了个虚中握剑的手势。

    但是任平生依然练得如痴如醉，孜孜不倦。三年来，(日rì)(日rì)如此，风雨不改。

    思安寨中，任氏一族，人人练剑，人人有剑；除了猎人任强一家。

    各家家长，或亲自教授子女家传剑法，或家底丰厚者，将子女送往行知学堂。唯独猎人的儿子任平生，学剑无门。

    所以自八岁那年起，任平生突发奇想，认为迎圣桥上的十八幅栏板浮雕，必然蕴含着十八式无上的剑法秘笈，于是自此沉迷，(日rì)(日rì)闲暇时，就会来到桥上，空手模仿栏板浮雕人物的姿势，自悟剑招。

    为此，任平生没少受村中同龄少年，甚至成年长辈们的讥笑嘲讽。

    无数次挥“剑”而出，无数次跌跌撞撞，遍体鳞伤，少年仍在勤练不缀。

    十八式一次次使完，任平生已经衣衫湿透，疲惫不堪，双手扶膝，弓着(身shēn)体喘气。这个姿势，正好双眼又对上了“栏板剑法”的第一式，名为“天怒”的人物浮雕。

    那一招“天怒”，按任平生的理解，应是在拔剑瞬间，即飘(身shēn)而前，挥剑而去。
','    他直起(身shēn)来，打算继续练。

    右手虚握，悬于脑后，目视右侧，准备出剑……突然，少年的

    目光停在了那根露出望柱顶部的锈铁条上！

    这不就正好是一把剑柄铁芯的大小吗？少年突发奇想，练这天怒一式，始于拔剑，岂能无剑可拔。

    哪怕只是体验一下手中有剑的感觉，也是好的。

    于是任平生横移两步，肩侧斜对那根望柱，右手反悬，握住铁条。

    “起！”随着一声清喝，少年奋力拔剑，奔跑，挥剑，过桥，出击，动作难看，但一气呵成。

    (身shēn)心沉醉在剑招中的任平生，没有注意到，拔剑的瞬间，侧后方的断头望柱砰然碎裂；更没有注意到，手中的铁条，已经生生带出一根锈迹斑斑的破旧铁剑！

    好重！

    任平生突然感觉右臂被一股突如其来的重量，扯得往下一沉。他这才发现，右手中，赫然握着一把锈迹斑斑的阔刃铁剑！

    少年茫然不知所措——哪来的铁剑？

    然而，这样的茫然，瞬间被一声震耳(欲yù)聋的巨响惊醒。那声响如雷鸣，如炸裂；眼前飞起一片漫天尘灰，遮蔽整个视野。

    桥不见了！

    整座石桥，瞬息间化作碎石尘埃，碎落河中。

    剑出石中，石桥垮塌。略一回顾方才拔剑的(情qíng)景，少年隐约猜到了整件事(情qíng)的来龙去脉。

    任平生站河岸上，怔怔出神；或者说，是因为害怕而失魂落魄。握着那把锈铁剑条的右手，不觉紧了一紧。

    他目光快速闪烁，不断地在手中这把破旧铁剑，和已经碎落河中的一堆乱石之间回转切换。也就是稍稍犹豫了片刻，任平生一咬牙，拖着那把与瘦小(身shēn)材极不相称的巨大剑条，拔腿就跑！

    三年来，他做梦都想着，有朝一(日rì)，能拥有一把属于自己的剑。

    现在剑有了，去他的古石桥……

    ~~~~

    我所居兮，青埂之峰；我所游兮，鸿蒙太空。

    超脱尘俗的世外仙人，百年千年，修的无非就是这样的一番逍遥境界。

    玄黄天下，无数大大小小的山上修士宗门，都是奉鸿蒙山太虚神(殿diàn)为尊，信奉太一道教。

    此时的鸿蒙山巅石坪上，花丛草树之间，有仙鹤翩飞栖息，灵兽奔突出没。

    石坪西面的无垠云海之滨，一位头戴逍遥巾，(身shēn)着青色道袍的老者，长髯飘飘，姿态倜傥，一派神仙之姿。

    这位老者，便是一手掌控着天下苍生祸福的太一道教天师，贺兰平。

    玄黄天下，有灵气充盈的三大原初之地，鸿蒙山便是其中之一。

    贺兰平峭立山巅，望着无垠云海之外那一条平直的天际线，眼神幽深，眉头紧锁。

    他已经感应到了某种不祥的气息，这种气息，数百年没有出现过了。

    突然，天际线一阵迅捷的波动，如同仙人挥鞭，又瞬息归于平直。

    紧接着，平直的天际线闪出道道电光，直击天心。
','    电光闪击之下，万里如练的天穹，如从天心爆开，那爆炸波浪，冲得天幕高高隆起，牵扯西边那条平直的天际线，再次弯曲，如拉开绷满的弓弦，好像随时便要爆裂开来。

    悠悠弥漫了千年的鸿蒙山西岭云海，突然间翻腾不已，数息之间，便是惊涛拍岸，巨浪滔天，如同有大鹏击水，巨鲲翻(身shēn)的可怖景象。

    石坪上原本悠然自如的仙鹤灵兽，纷纷惊起，转眼间尽数隐入东面的花丛草树。

    青袍老道神色凛然，眼神变得十分犀利，死死盯着那律动不已的天际线和脚下那翻涌狂暴的云海。

    原本在石坪上奔跑玩乐的髫龄童子，顾不得惧怕那峭立崖壁的严厉师尊，惊呼四起，纷纷跑入石坪东面那一丛茂密的仙界琅瑶树林。

    此时的琅瑶花树，满树无叶，琅瑶却花开得正盛，花瓣莹白带粉，朵朵透着羊脂白玉之光。

    但童子们那顾得上迷恋这绚丽花丛，只顾在树丛间惊慌奔逃，去往东面崖坪上的宫观(殿diàn)宇躲避。

    一个头簪道髻，仪态雍容的中年道人，默默走到天师(身shēn)后，垂手恭立，似是静静等候师尊谕令。

    天穹之变，云海汹涌，足足持续了一刻光(阴yīn)，才慢慢归于平静，恢

    复如初。

    碧空依然如洗，始终没有出现天师一直担心的雷霆万钧，风雨交加的画面。

    “剑魔血脉，苏醒了！”贺兰平的目光依然落在远远天际，喃喃说道，“这悲天剑，也不知被什么样的神通封(禁jìn)，又蛰伏了五百年，这会终于唤醒了沉寂万年的剑魔血脉。”

    他长舒一口气道：“好在太一天庭还没有察觉到，我们作为天帝奴仆，还可补救。否则，一旦惹得天庭震怒，你我虽是人间之上的仙家至尊，万钧雷霆之下，也不过是留得一抔尘土而已。”

    (身shēn)后的中年道人，也顾不得“淑人君子，其仪不忒”，举起灰白道袍的大袖，不断擦拭着额角那不争气连连渗出的汗珠。想来他在山上修行那么多年，都未曾听见师尊说过这等重话。

    老者从远处收回目光，那不带任何感(情qíng)的眼神，便落在了中年道人紧张的脸上，微微颔首道：“王璟，你随我修心六百年了，却仍是如此妄心不净，七(情qíng)不断，何以成道？”

    老者目光虽无严厉之意，那名为王璟的中年道人，却不敢直视，惶恐答道：“弟子无能，五百年前哪次，未能一举杀灭了那剑魔后裔一族，断绝了这一桩祸患。”

    老者似乎无意向这名弟子施加更多威压，再次转脸望向早已恢复如常的悠悠云海，缓缓道：“上次的事，不全怪你，他们这些人，根本没有得到当年任凤书剑道传承之万一，之所以能够存活脱(身shēn)，我不相信这其中没有摩天岭那三个老不死在捣鬼。但那件事，既然没凭没据，我们也就不要去怨天尤人了。”

    讲完了宽心的话语，天师的脸色有点古怪，方才那“老不死”三字，岂不是连自己也一并咒了！

    他转过脸来，神(情qíng)平静地吩咐道：“我还是那句老话，你要做的，就是用鸿蒙山行者该有的双脚，踏遍这方天下。下次回山的时候，把那支令上苍不宁的悲天剑条，给我带回来。”

    天师的语气，并不严厉；但那言外之意落在中年道人的心头，却是字字千钧：如果没有带着悲天剑条，你也用不着回来了。

    中年道人领命之后，嘴角微挑，(欲yù)言又止。

    这一点小心思，又如何逃得过天师犀利的双眸！

    “我希望你此去，不会成为永别；但是万一你时运真的如此不济，又或者心境如此不坚，那么现在有话，也不必藏再藏着掖着了。”

    中年道人松了口气道：“师尊，我只是一事不明；那支剑条，既然深为上天所恶；铸造此剑的人，想必也是对天庭不善的，却为甚么要把此剑名为‘悲天’？”

    青袍老道罕见地神色缓和，面带一种十分玩味的笑意道：“打个比方，若是你我之间约了场生死决斗。我走到你跟前，一副悲天悯人的眼神看着你，然后叹道‘可悲啊，看得见的前程似锦，咋就摊上了我这么个对手’。名为悲天之意，大抵如此。当年剑魔，狂妄得从来不知天高地厚。”

    青袍老者突然间面含寒霜道：“如此狂妄之人，也害得自己的子孙后世不得好死。”

    中年道人神(情qíng)一凛，老者说的这笑话，冷得他有点毛骨悚然。

    “弟子斗胆再问一句，若是有幸不辱师命，不知那持有剑条的人，该如何处置？”

    “我们既然替太一天帝照看着这方玄黄天下，就不应该让天下出现令天帝视为叛逆之人。”

    中年道人脸上一片寒霜，微微点头。

    却见老者双手负后，和颜悦色道：“我鸿蒙山既为天下山头仙家之主，门人弟子，就应该只做仙家的事。这天地异象，北荒城和铁流驿那边，瞎子都看见了。所以下山之后，你可先去西京找常一问。”

    中年道人神色愈发恭谨，连连点头，没再说话。

    青袍老者叹了口气，悠然转(身shēn)，去往山巅东面那处藏风崖坪上层层叠叠的宫观(殿diàn)宇。

    老者在花丛之下停了脚步，侧脸对着依然恭立原地的中年弟子道：“如果发现摩天岭那几个老鬼再出来捣乱，你就告诉我。”

    说完头也不回，穿过琅瑶花丛，走入瑶光掩映的崖坪(殿diàn)宇之中。

    玄黄天下，亿万太一道教信徒，此时正满怀敬畏，五体投地，震慑于那无上的太一天威。',10041,10121);
    insert into ds_book values(null,10122,'一处世间从没有人到过的地方，一座高山，山腰终年云雾环绕，山腰之下是什么景象，也从没有人见过。那万年环绕的云雾之上，两面斧劈刀削的断崖石壁，相对而立，中间只余一线深渊，深不见底。一条顺着一边石壁开凿出来的栈道，拾级而上。那石级之险，人行其上，处处如险崖抚顶，脚踏深渊。

    这便是三大原初之地的另外一处，摩天岭。

    这段断崖峡谷，便是摩天岭半山的抚顶峡。

    峡顶一侧，断崖之上的哪道山梁，无路可通，四面峭壁，便是猿猴也不可能上得去。但此时的山梁上，却有一个须发如戟的粗豪汉子，目光刚刚从那天地突变的异象中收了回来。汉子浓密的长眉一挑，似要倒竖起来，却苦于两眉之间并无空隙，两道眉毛连成了一线，这样的横眉倒竖之态，就显得尤其滑稽。

    可惜险崖之巅，并无余子，无人去欣赏汉子那精彩的表(情qíng)。

    那汉子环眼一瞪，震天吼道：“臭小子，急什么急？多大点能为，就敢蹦出来与天下为敌？老子好歹等了几千年了，也没见半个人影，能走上这道山峡，给老子过过手瘾……”

    那汉子吼得口沫横飞，暴跳如雷，也不知到底是兴奋还是狂怒，总之那声势，似乎比刚才的天地异象要加倍的震天动地。

    这时候，半空中一个慢悠悠的声音传来，就把汉子那震天的气势给生生压了下去。

    “老三诶，俗话说，打狗还得看主人面不是？你要揍人，有种的下山找人揍去啊；把贺兰平，顾万年，宋元山那帮小子揍到不认得爹妈是谁，我都不管。可你没种下山，却非要找我未来的徒儿，你自个儿的小师侄出气，算什么回事？”

    从抚顶峡的栈道出口往上，山路石级略见平缓，再上数十里地之后，路边的青草崖坪中，一方巨石之下，有个(身shēn)着八卦太极道袍，头戴纶巾的道人，口*唇翕动。方才对着那戟须汉子说话的，只能是他了。

    这道人獐脸鼠须，加上那一(身shēn)装束，一看就不像什么世外神仙，倒像个江湖卖卦的骗子。

    抚顶峡山梁上的戟须汉子，听了鼠须道人的言语，更加来劲，吼道：“我先出声要的人，怎么就成你徒儿了？有本事你下来。”

    鼠须道人那(身shēn)材，说实话，看起来风吹就倒，对上戟须汉子一个粗壮的手指头，都不太够看的；但脾气却丝毫不让，依然死样活气道：“出声是你先出声，但你出声是要揍人；我出声是要徒儿。活了几千年都拎不清道不明，收什么徒弟，就是天纵的美玉良才，还不得给你教糊涂了？不服气啊，有本事你上来。”

    两个活了千年万年的世外神仙之争，就这样演变成了世俗市井间的无赖扯皮。两人一个气冲斗牛，一个不紧不慢，倒也相映成趣。上下相隔数十里，斗起嘴来，毫无隔阂。

    若留心观看，就会发现青草崖坪中的那一方巨石，不知什么原因崩缺了一角。那巨石极大，单单是侧面那一角崩缺出来的石料，估计也足够建一座横跨数丈的河上石桥。

    过了巨石崖坪往上又五六十里，便是山顶。山顶上观天，再无云霞，只有蓝色苍穹。一座九层高塔，因从无风雨侵蚀，飞檐彩拱，万年如新。

    高塔之下的花树丛中，一个长着红红酒糟鼻，小眼迷离的老人，原本躺在一张摇椅上悠然喝了半天的酒；目睹

    那一番天地异象之后，一激灵从躺椅上站起(身shēn)来，把酒葫芦往椅边的石桌上一放，蹑手蹑脚地走到高塔门口。

    也不见老人抬手，那两扇厚重铁门，竟缓缓自开。老者举步跨过门槛，脚步落地无声，进入塔内。那塔内虽有楼梯环壁而上，却无楼层，也无塔顶。

    老者抬头仰望，只见天光湛然。那天光落入塔内，六面墙壁七色流光，上下蜿蜒流转如常。

    这塔的名字，就叫通天塔。

    见塔内并无异样，酒糟鼻老者神色宁定，出塔时便没再那么刻意小心，脚步自然而然，(身shēn)后那足有千斤重的塔门，自动关闭，不发出一丝声响。

    老者走到山边，山下那两个，吵得实在有点不成样子。他努力睁大些微醺的醉眼，声音沙哑道：“都不过几千岁的孩儿，叹什么岁月悠长？你俩一个磨剑的，一个算命的，人家带一把砥砺了万年光(阴yīn)的宝剑上得山来，喊一声二师叔三师叔，委屈你们了？”
','    百里之下，山梁上的戟须汉子哀叹不已。

    巨石崖坪上的鼠须道人，唯唯诺诺，却终归忍不住开口道：“老大诶，这样不太厚道吧……”

    话音未落，天空中一道雷光落下，鼠须道人冷不丁挨了一记板栗，双手捂头；却仍是不肯就范道：“叫二师叔也好，叫二师父也罢，咱总得有个人看着一眼那小子，不给天下宗门那些个蠢猪，给早早宰了吧。你能算天机，你自己去啊？”

    山上顿时沉默。

    山下的抚顶峡石梁上那位爷，却似是受了鼓动，接口吼道：“对啊，叫三师叔也好，三师父也罢，那小子的剑，总得有人磨得开刃是不？”

    山上就更加沉默起来，良久，那沙哑的声音才又传了下来：“要不这事，再斟酌斟酌？”

    “嗯，是要斟酌斟酌。”

    “对，斟酌斟酌。”

    万年寂寂的摩天岭上，这样的斗嘴扯皮，从来不伤和气，只添乐趣。

    ~~~~

    玄黄天下北荒之北，是封着万年玄冰积雪的极寒之地，三面环海，只有南面与北荒内陆接壤。这地方天寒地冷，即便是皮糙(肉ròu)厚，钢筋铁骨的狂人，也不会涉足。

    除了偶尔可见冰山雪原之上，会出现踟躇独行的白熊，便再难见到其他活物。

    在一处临海的冰山之下，有一冰晶洞口。进入洞口，便是长长的寒冰隧洞，洞壁晶莹剔透，如同长长水晶洞府。在隧洞中一路穿行，竟有十余里路。

    再出得洞来，豁然开朗，便是一处四面高山环绕的盘地。盘地中，一座晶莹透亮的水晶宫(殿diàn)，房屋鳞次栉比；整座宫(殿diàn)，脊瓦门楼，飞檐斗拱，高墙廊柱，尽是琉璃冰晶雕成。

    此琉璃宫阙的最神奇之处，是尽管琉璃通透，但是无论对着那一面墙壁，你都无法看到墙里的任何景象物事。

    这便是三大原初之地的最后一处，九幽*洞琉璃宫。

    高墙之内，(殿diàn)宇门前，一座宽阔的庭院，院中冰晶雕琢的亭台花树，错落有致。

    一个盲眼老人，神(情qíng)漠然，盘腿端坐在一座琉璃凉亭之中，寂然不动，似与院中景物，早已融为一体，千百年来，从未变过。

    一个大头短发，(身shēn)材敦实短小的中年男子，却是仰着一张童颜圆脸，在那盲眼老者(身shēn)前来回走

    动，不肯稍停。

    童颜男子才来回走了几趟，见盲眼老人始终不动，就失去了仅剩的一点耐心，停下脚步，用力摇了摇老者的肩膀，大声嚷道：“瞎子哥，好戏都演完了，你快醒醒罢。你再这样，我可要走了。”

    盲眼老人长出一口气，睁开双眼，一双灰暗的眸子对着凉亭之外，被高山阻断的天幕道：“嗯，是演完了；我只是想感念一下，这一番天地异象被激发之后，那宝剑是不是仍会留下一丝气息。”

    童颜男子双手环抱，蹲下(身shēn)来，与盲眼老者面对面道：“瞎子哥，你说这家伙，有当年剑魔几成修为了？敢把悲天剑放出来，想来也至少能给我八百喂上几拳了罢。可惜那剑魔死的有点早，否则的话，我就不用叫八百了，起码可以改成九百，甚至是一千，好歹也要跟他斗上一场。”

    盲眼老者原本漠然的表(情qíng)，微微有了点笑意，说道：“要做八百还是一千，还不是你自己一念之间的事。跟那个已经死了万年的人，有条毛线的关系啊。”
','    这名叫八百的童颜男子，一本正经道：“当然有，我现在只是八百，就已经几百年找不着对手了。着急啊。是再强一点，岂不是要加倍的着急？不划算不划算。”

    盲眼老人对童颜男子这种没大没小的言语，似乎早已司空见惯，便没再理他。

    童颜男子显然不是个有点耐心的主，蹲了一下，见老者没有反应，便又喋喋不休起来：“瞎子哥诶，你说，他叫剑魔，我们这太上宗，被太一道教那帮人称为魔宗；大家都是魔，大魔见小魔，总得分出个输赢来吧？”

    盲眼老人打趣道：“先整明白，他是大魔呢，还是你是大魔呢？”

    “他当然该是小魔，反正他也不可能是万年前的剑魔本人了。”

    “嗯，”盲眼老人犹疑了一下，缓缓说道：“八百啊，我能不能求你个事？”

    “不能，”八百面色愠怒道，“你都不当我兄弟，我干吗给你办事。”

    盲眼老人面色一凛，语气决然道：“这事，你办也得办，不办也得办。否则，这辈子别来找我喝酒。”

    老人一恼，八百倒是高兴起来，大笑道：“这才像话嘛，你瞎子哥有事，跟兄弟讲就行，说什么求不求的，生分。说吧，啥事？”

    盲眼老人仰头向天，那原本灰暗的眼眸，在天光照(射shè)之下，竟似要闪出几分光彩来。他喃喃说道：“你帮我找到那悲天剑的主人，别着急打架，带到这里来让我跟他说几句话。”

    魔宗宗主八百，一个令满天下无论修士和武夫都十分忌惮的人物，天不怕地不怕，却唯独对琉璃宫中这位看守宫门的盲眼老者，历来十分敬重。

    盲眼老人，从来没显露过他有任何修为，但自从八百少年时随师父进入琉璃宫，老人就在这里看门。如今三千多年过去，八百早已接替师父成了魔宗宗主，后来又打遍天下，再无敌手；盲眼老人，还是当年一般年纪。

    八百见老者如此郑重其事的神(情qíng)，知道此事重要，欣然应(允yǔn)道：“放心吧瞎子哥，只要那人听话，我一定先带来给你见见，然后再揍……哦不对，给你摸摸……更不对啊，那人多半是个小子，摸起来岂不瘆人的很……”

    “滚……”

    “好咧。”

    八百短腿一蹬，瞬间消失。',10041,10122);
    insert into ds_book values(null,10123,'悲天剑出世引发的天地异象，只有一个地方的人，是看不到的。

    那地方，据说也是太一天庭俯瞰人间大地的视野死角，就是思安寨所在的，不归山上那片平原。

    所以拔出石中锈铁剑条的少年任平生，并不知道天上地下，发生了那么多动人心魄的事(情qíng)。

    平原上，一个瘦小的(身shēn)影，拖着一柄与(娇jiāo)小(身shēn)形极不协调的巨大阔刃铁剑，亡命地奔跑着。

    他要远离这片蹲在草丛里拉泡屎，都能让人远远看见两片白(臀tún)的广袤平原。

    几条最大的黑狗，已经奔出村巷，一路咆哮，去往河边。远处奔逃中的瘦小少年看在眼中，更加焦急，一咬牙再次狠命发力，在茫茫荒野里，脚下生风。

    无论如何，他不能让村民看见。

    任平生已经竭尽全力，就在即将脱力仆倒之时，跑到了靠近大泽边缘的草丛茂密之处。这节点，堪堪赶在了村民奔出村前视野开阔之地的瞬间。

    此处的草丛，依然不高，但已经足以让少年猫着腰隐藏(身shēn)形。

    村中多狗，他必须赶到草地东边披云大泽的边缘，借助哪里的浅水草地，消除自己的气息踪迹，才能找地方藏(身shēn)歇息。

    无论是追踪还是躲避追踪，这种事，他做得比吃饭拉屎还要在行。

    要活着就那处境，学这种技能不是他的选择，而是他的宿命。

    行知学堂中，那些鲜衣仗剑少年，在夫子任重山的带领之下，冲在最前，疾步朝石桥垮塌之处奔去。

    也是任平生自己做贼心虚，过于紧张。说实话，村里(热rè)烈的反应，主要还是石桥垮塌的动静，太过震撼，大家都不明所以，慌乱中互相召集呼唤，出村应对。

    待冲到村口，发现竟是河上的古老石桥垮塌了，塌得连渣都不剩；哪里能想到，这是一个十来岁的少年干的事。

    老少青壮，聚集在原本还是桥头的地方，年纪稍长的，都不由得想起了那个跟石桥有关的古老传说，交头接耳，议论纷纷，满脸惶恐。

    便在众人都不知所措之时，年纪老迈的族长，拄着盘曲遒劲的老山藤拐杖，越众而出，走到河边，对着碎落河中的桥石，面色凝重，一言不发。然后，老族长突然跪倒尘埃，连连伏地而拜。

    (身shēn)后的村民见状，纷纷效仿。河边路头，刹那间跪倒一大片陆续到来的村民。便是那些个本着看(热rè)闹的心思前来的半大孩子，也都被家里的大人摁着头拜了下去。

    可惜这样的壮观场景，忙着逃命的任平生，已经看不到了。

    一轮明月，高高悬在无垠的夜幕之中，俯视天下，照着山野中，双手抱膝坐于石上的孤独男孩。

    任平生脚边横放着那把锈迹斑斑的铁剑条。

    今天一路狠命奔跑，少说也趟过了三十多里路，才到了这片山野。

    平原不能藏(身shēn)，沼泽不能久留，所以他只能先跑到山野。

    夜悠悠，思悠悠。

    任平生嘴角上翘，倔强的面孔上，两道目光(阴yīn)冷，一如那(阴yīn)冷不问人间疾苦的夜月。

    “那石桥栏板上的剑招

    ，从此再不可能有人看到了。”少年的思绪从悠悠往事中回到现实，便生出一番感慨，“好在学了三年，我都已经记得。”

    他抄起地上的剑条，趁着月光，一招一式地摆着定式。每一招定式，从那栩栩如生的(身shēn)姿神态，再到那每一幅浮雕人物的神态之中，少年感应到的魂魄心神，三年来，他都已经效仿淬炼了千遍万遍。

    只不过雕刻毕竟是雕刻，历时三年苦练，从来无法将那些姿势，变成剑招使出。每一出手，(身shēn)法都十分别扭，特别是其中一式，栏板左下角题书“悲天”二字的，头下脚上，剑劈大地。且不论如何打出来，关键是，有什么卵用？
','    一次又一次尝试，一次又一次踉踉跄跄，跌扑绊倒，直至再次耗尽体力，衣衫湿透。任平生双手拄剑而立，茫然四顾。

    “任鸡*鸡，总有一天，老子要用手中这把铁剑，打到你跪地求饶三百次，再断了你的双手，割了你乌鸦嘴里的那根舌头。”任平生没了力气练剑，便对着夜空哀吼道。

    远离人烟几十里，他不怕有人听见。

    任鸡*鸡本名任常继，是第一剑客任重山的儿子，大着任平生一岁，平(日rì)里，带着一帮仗剑恶少，有事没事，便以把任平生打个头破血流为乐。

    任鸡*鸡曾口出狂言，总有一天，他要把任平生打到跪地求饶。

    ——因为村里所有的同龄男孩都打过任平生，所有打过任平生的孩子都知道，那个打不过任何人的家伙，从不求饶。

    任鸡*鸡曾经在一次把任平生打趴下后，在他头上呸完口水，说过一句话，“也只有想学剑想坏了脑子，又太((贱jiàn)jiàn)太蠢学不了剑的人，才会觉得那栏板雕画是(套tào)剑术。”

    夜风凛凛，流完了汗的少年，终于感觉有点冷了。

    “想要把人家打败，就先得有胆气不怕人打。”一个低沉浑厚的男子声音，划破了山中月夜的宁静，“很多年前，我就希望，这把剑能落到你手里。”

    每次听到这个熟悉得不能在熟悉的声音，少年心中都会犹然而生一股寒意；除了这次。

    他平静躬下(身shēn)体，双手趴在之前休息的石头上。

    一反常态的是，他并没有像以前一样，主动扒开裤子，露出光光(屁pì)股，以期少挨几鞭。

    任平生静静地等着，不知会是哪根竹鞭，在自己的(屁pì)股蛋上划下血痕。只不过这一次，他等来的只是噼啪两掌，并不重，便只是拍拍。与其说是惩戒，不如说是招呼。

    “不打了，起来坐吧。”那声音沙哑的男人说道，“桥塌了？”

    “嗯。”没有挨打，任平生也不觉得算什么惊喜，用鼻子应了一声，起(身shēn)在石上坐下，背对着男人侧边，并没有放下手中的剑条。

    男人便是猎人任强，是任平生的父亲，但自从八岁之后，任平生再没有喊过他一声“爹”。

    任强做了几十年的猎人，最擅追踪，能轻易找到自己这么个小孩子，并不意外。意外的是，他不是西北山中打猎好几天了吗，怎么会如此凑巧出现在这里？

    只不过任平生并不打算要问，任强也就没说。

    任平生感

    觉一侧肩膀被一根木棒似的硬物拍打了几下，然后就听到(身shēn)后男人的声音：“送你个东西，要不要？”

    任平生侧头一看，肩头上，搁着一支缠着厚厚纱网的剑鞘。那剑鞘，已经旧的发黑，虽然月光昏暗，仍可以看出那发黑的鞘口，木质坚硬细密。

    他一言不发，伸手把剑鞘从自己的肩头上摘下。缠着剑鞘的丝网，看似肮脏不堪，也不知多少年没有解下来洗过了。

    丝网的网眼本来不小，但层层包裹，把本就比较宽大的古式剑鞘，裹得跟小腿般粗细，竟也能把木鞘封了个严严实实，除了鞘口，不露半点木色。

    任平生把手中的铁剑条插入鞘中，纹丝合缝，好像本来就是量(身shēn)定制的！少年脸色终于露出一片惊疑之色，转头看向(身shēn)后的男人。

    月光下，任强那朴实无华的脸上，表(情qíng)平淡，似乎所有的事(情qíng)，都是那么理所当然。

    一大一小，就这么沉默着。任强从腰间的布带中，抽出一根摩沙得油光发亮的筋竹烟斗，点了袋烟，这才吐着烟圈道：“有问题，就问吧。”

    虽然觉得不大可能，少年终于还是忍不住问道：“剑鞘，本来就是这把剑的吗？”

    “是的。”男人没有半句废话。

    “可是，村里人不是说，那座桥已经建成好几百年了吗？”
','    “是的。”

    “剑鞘也是几百年前的？”

    “是的。”

    ……

    永远是同样两个字的答案，重复了好几次之后，夜月少年那两道清澈的眼神，愈发炽(热rè)起来。只是想到那锈迹斑斑的剑(身shēn)，全无锋刃可言，刚刚被自己胡思乱想煽动起来的(情qíng)绪，便又瞬间委顿下来。

    任平生不再问的时候，任强却说话了：“这把剑，如果你要，就剑在人在。任他什么神器重宝，都不能换。若做不到，你可以现在连剑带鞘还给我。没人会追究你拔剑毁桥的事。”

    少年握剑的手紧了又松，松了又紧，挣扎良久，说道：“我要了。”

    任强看着他，少年眼神坚定。

    任强缓缓解开外衣，从(身shēn)上贴(身shēn)的褡裢中，取出一团乌黑的软质物事，递了过来。

    “用这个缠好剑把，缠粗一点，就当临时的剑柄吧。跟缠弓柄是一样的。”

    任平生接过男人手中的物事，在月光下细细端详，才发现，原来是跟缠在剑鞘上一样的肮脏丝网。试了一下，这丝网的坚韧程度，不输钢筋铁线，却又柔软异常！

    他从来没有见过这样的东西，甚至都没听有人说过。也不知道为什么一天只内，会在他这么一个顽劣男孩(身shēn)上，发生那么多不可思议的事。

    更加不可思议的是，这种足以惊世骇俗的东西，竟然会接连出自这个窝囊的男人之手。

    任平生一丝不苟地缠着剑柄。男人便坐在一边，寥寥交代了两句：“这剑被锈得没了锋刃，得你自己磨，不管十天半月，还是十年八年，磨得出锋刃，剑才是你的。不是迫不得已，永远不要解下剑鞘上的丝网。”

    生平第一次，少年决定把男人说的话，牢牢记在心中。
',10041,10123);

insert into ds_book values(null,10124,' 断魂涯，顾名思义，纵身一跳，身死魂断。

    此时的魂断崖被黎明前的黑暗笼罩着，显得特别的空灵。

    悬涯下黑水河跳崖的咆哮声如雷声滚入耳中，顺着每一根神经流淌，游向神经末梢。也许，我们都需要这么一声呐喊或咆哮，来驱除内心的怯懦与不甘。为自己悲壮的人生送行。

    悬崖顶上伫立着一块巨石，它以这样的姿势静看世间冷暖已经多少年了？数十万年，还是数千万年？谁也不知道。氤氲于四周那种诡异的潮湿，散发出一种深入骨髓的寒意，让人没来由地感到一种痛彻心扉的冷，不自禁地接连打着冷颤。

    巨石上站立着一个男子，身上的衣服已经烂成了布条，沾满了血迹。给人一种孤傲悲壮的感觉。他看着眼前的悬崖沉默不语。无形中散发出的气场让人心悸，连求欢的虫豸都不敢再鸣叫。

    “风言，你已无可走。不要再挣扎了。把东西交出来，我让你们一家三口离去。”一个声音突兀地响起，对着悬崖上的那块巨石的男子大喊，声音却有些颤抖，显得喊话者底气不是那么足。

    等了许久，并没有等到回答。那人犹豫了一下，上前迈出了一小步，给自己壮壮胆，颤巍巍又喊道：“风言，你不为自己想想，也要为你的孩子想想，他都还未出世，就要为你的过错赎罪。还有你的妻子，也要为你陪葬。作为父亲，作为男人你不感到耻辱吗？”

    巨石上的风言轻轻叹息了一声，却如巨雷在喊话的那人耳边响起，让他不自觉地倒退了数步。

    倒不是他胆子小，而是追杀风言的这一路上，实在太血腥了。眼前那个孤傲的人简直就是一个杀神。在他分心照顾临产妻子的情况下，还能一路奔逃，一路阻杀。各种手段层出不穷，杀人于无形，让人防不胜防。居然能在短短一个多月的时间里，把从原先追击的两千多同阶修者，杀到现在剩下的已经不足四十人。把他称为杀神都有点对不住他。

    风言心里其实也挺憋屈的。那天他和妻子正在院子中卿卿我我，畅谈未来的美好生活。谁知正陶醉处，几个家伙一脸慌乱的居然能避过他精心布置在院墙，窗户等位置的法阵，直接从大门闯进院子中。比强盗还要强盗。然后，他们扔给他一个木盒。就要穿墙而过。

    风言本能接过木盒的时候，已经断定里面空无一物。但是能用这样的名贵罕见的木盒装，可想而知，里面的东西该是何等的宝贝。

    刚搬来这里时，就时常有一些不长眼的小贼来关顾。所以风言布置了不少法阵，惩治一下那些小贼。

    每抓一次，就让他们跪地拜他为祖宗，然后让他们给自己干十天的活后再放走，以此小小的惩戒那些小毛贼。

    自认为是贼祖宗的他怎么可能放过这几个不速之客，瞬间判断出宝物藏在何处。使出暗影手，从领头的那家伙身上拿到一个兽皮小包。里面是一块不规则的东西。

    风言没有立即打开查看，而是放进老婆的怀里。用他的话说，宝贝就得和宝贝待在一起。

    那几个家伙这回没有那么幸运了，触发了风言布置在后院墙上的法阵。一个个像是刚被雷劈过一样，一身焦黑。虽不至于重伤，但是卖相实在不好。

    他们也只是回头怨毒地看了风言一眼，立即咬着牙，硬生生穿过法阵离去，只留一地的鲜血和烧焦的衣服和皮肤。

    风言还未来得及和这几个家伙挥手告别，前门又传来一阵“霹雳吧啦”的响声，然后是各种哀嚎。

    “啊！疼死我了。”

    “什么鬼东西，我痒得受不了了。”

    “啊！太无耻了，竟然还有偷袭老二的法阵。”

    “妈的，就这么个破院子，有必要装置这么多法阵吗？”

    风言安装的法阵是杀不了人，但是可以恶心死人。

    “大哥，虽然法阵级别不高。但是有能力布置这么多法阵，看来院子的主人身份不一般呀。”

    “再怎么不一般，有那件宝物重要吗？再说了，你不见刚才进去的那几个根本就没触发法阵……”

    瞬间，各种声音交织在一起，灵器和破碎的院墙满天飞。只是两呼吸之间，外院和屋子已经成了一片碎屑。

    黑压压的人群将整个院子围得水泄不通，先前跑出去的那几个家伙也被赶了回来。风言看着他们那惨不忍睹的模样，差点没笑出来。

    被逼回来的那几个小贼，一口认定是风言拿走了盒子。

    风言也懒得解释，就让他们自己搜那几个小贼的。结果搜出了一个空盒子。

    风言知道这伙人不老实，没有交代那个兽皮小包。

    可是追来的人那肯放过他们，一遍遍不厌其烦的折磨他们，不一会就弄死了几个。最后一个小喽啰忍不住了，才交代说东西收在一个魔灵血鹿鹿皮制成的小包里，可能是刚才触发法阵被烧成灰了。

    一名中年大汉一听，狠狠地给了他一拳头，吼道：“别说那东西了，就是魔灵血鹿的皮，用灵炎烧个百八十年都不会坏。说，东西在哪里。”

    那小喽啰根本承受不了这种让灵力在体内燃烧的攻击，直接跪下来，看着自己的头领哀求道：“大哥，我知道你在兽皮小包里刻印了法阵，你就把它召唤出来吧。东西没有了，将来还可以再去抢，命可是只有一条呀。”

    “哟，你倒是很有雄心壮志呀，还打算再抢一次是吗？”一个中年妇女一巴掌扇过去，小喽啰直接飞出了数千人形成的包围圈，彻底解脱了。

    中年妇女回头看着那几个人，最后指着领头的讥笑道：“被烧成这样，我都差点认不出来了。原来是臭名远扬的‘不留名’呀。要真敢留名，都不知道你们已经死了多少回了。你就是他们的老大劳财吧，不想死的话就把东西交出来。”

    劳财犹豫了许久，在众人的威压下，终于扛不住。可是几次召唤都没召唤出来，急得他满头大汗。

    突然，他指着风言，喊道：“大哥，你把东西交给他们吧，不然我们都会死的。”

    “妈的，还敢污蔑我！”风言怒不可遏，一拳直接将他砸成肉泥。

    剩余的一个小贼见老大死了，不仅没有被吓着，反而露出决然的神情，指着吴韵说道：“东西就在那个女人的肚子里。”

    风言一听，更是怒气冲天，上去直接一脚踹在他脸上，直接踩碎他大半个脑袋。居然敢指着他的女人说这样的话，找死。

    中年妇女一脸媚笑道：“既然几个小贼都死了，而东西却没找到。那我就勉为其难要搜身了，这位姐姐可莫要怪我哦。”

    “滚！”风言见中年妇女真要动手，脸色很不好看。散发出的气场让那些小喽啰都倒退了数十步，全都退到院子外面。院子里还剩下十几位修为高的头领。
','    “大家一起上。”中年大汉突然喊道。

    十几名高手同时攻击风言。风言根本不惧他们，双手挥舞，一个个掌印不间断地从他双手飞出，瞬间就将数人打得只能退出小院。

    白芙蓉等几个人趁机对吴韵出手。吴韵一直在警惕，但是她身体不便，加上怕伤着肚子里的孩子，被白芙蓉从怀里掏出魔灵血鹿皮小包。

    风言知道完了，哪怕跳进黑水河也解释不清了。

    他猛然轰出一拳，拳影如一条巨龙在地面上飞速游动，硬生生轰出了一条血路。他抱着吴韵就往外跑。就这样，他被这群人追杀了半个多月，横跨了半个东大陆，一直被追击到断魂涯上。

    风言的叹息不是因为被围困，而是心中的疑惑没法解开。兽皮小包里的东西到底去了哪里？自己得到宝物还好说，一无所获还被追杀十数万里，任谁都感到憋屈。

    “风言已经是强弩之末，我们一起冲上去。得到宝物再说怎么处理，即使得不到，你我也能有个交代。”

    不知道谁喊了一声，巨石下的人群蠢蠢欲动。

    但没人敢第一个冲上来，前几次说好的一起冲，结果死的都不是在后面鼓噪的人。

    “言，我压制不住了，孩子要出生了。”巨石下，斜躺着的吴韵有气无力地说道。

    “我去击退他们，你拿着这个。这是我帮尹家炼药，他们送我的，说是可以横渡黑水河五次，到了对面就安全了。好好养大我们的孩子。”风言跳下巨石，扶起吴韵交代道。

    纵有万语千言，此时哪有时间诉说。

    说完话，风言又跳上巨石，努力让自己进入最佳状态，给妻子和孩子争取逃生的机会。

    “这样吧，我冲前面，你们跟后面，可别离得太远哦。”遍体鳞伤，脸色惨白的中年女子看着天色就要亮起来，估计身后得到消息，尾随而来的那群人在天色亮起来的时候肯定能赶到。她得给自己留一定的时间躲过后面的那群人，否则自己就是徒做嫁衣。

    她刚要动，立即封闭自己的所有感官。

    其他人也感觉到了异样，一个个都使出保命的看家本领。

    中年大汉气得大骂，“孟鹰，你竟敢放毒，给老子滚出来。”

    一道身影出现在风言与中年大汉之间，慢悠悠地说道：“看来这几年没白尝我的毒呀，一下子就认出来了。”

    “老子宰了你！我兄弟四人，被你毒死了三人。”中年大汉该是恨极了孟鹰，直接冲上去与他拼命。

    中年女子等人真想骂死这个中年大汉，都这个时候了，还沉不住气。但是看这情形，想要他回头那是不可能的，只能先对付孟鹰了。

    中年女子喊道：“孟兄，你干嘛要来趟这趟浑水。就不怕给毒宗带来灭顶之灾。”

    有人附和道：“是呀，孟兄，你可是毒宗指定的下一代宗主。可别给毒宗带来灾祸。”

    “我脱离毒宗已经很多年了。再说了，即使不脱离宗门，难道毒宗还怕你们不成？”孟鹰并不擅长功法，对付发狂的许堂主有些抓襟见肘，但是语气却很轻松。首先气势上不能输给对方。

    风言看到孟鹰出现，稍微松了一口气，回到巨石下安抚吴韵。

    “哇……”一声婴儿的啼哭传来，声音不是那么嘹亮，却像一只暗黑色的巨手，将山腰上的打斗声压制下去。

    除了昏迷的吴韵和风言，包括孟鹰，识海都感到一阵莫名的压抑。但是这感觉刹那而过，瞬间又消失殆尽。所以人都感到一阵心悸。

    风言看向黑水河，骂道：“妈的，竟敢打我儿子的注意。那就让你成为我儿子成长的养料。”

    一道无比强大的魂力随着风言向前延伸的食指射出，将黑水河上的一个气泡击碎。一道黑影窜出，正要逃离，风言的魂力化成一只瓷白色的鹞鹰，一把抓住那道黑影。将它带到风言眼前。

    风言指尖冒出一点微弱的火光，注入到黑影中，冷笑道，“见不得光的东西，也敢打我儿子主意。”

    黑影突然散发出强大的气息，瞬间地动山摇，黑水河巨浪冲天……

    宇宙深处。有一条光怪陆离的星河紧紧流淌。一个有气无力的声音却很暴躁地响起，“哪个王八蛋竟敢阴我！”

    另一个声音从无尽的黑暗深处传来，“老鬼，你又被阴了，哈哈哈！咦，我为什么要说‘又’呢？”
','    “此时再不冲上去，更待何时！”中年女子看着身后越来越近的人群，自己率先冲了上去。此时天地大变，不趁乱浑水摸鱼，更待何时？

    所有人像是打了鸡血一样，将潜能都激发出来，冲向山崖。

    后面的人来得比预估的要凶猛，中年女子等人刚到巨石下，他们已经赶到。将孟鹰也逼迫到了巨石上。

    “韵，记住我刚才和你说的话。”风言给吴韵喂下一枚丹药，把她抱进那艘如乌篷船的灵器中。见她醒来，才依依不舍地将怀中的孩子放到妻子的怀中。

    风言跳上巨石，一看下面的人，傻眼了。这么多人，还怎么打？！逃都没地方可以逃。

    风言当机立断，拉着孟鹰跳下巨石，趁其不注意，将他也推入灵器中，“老孟，我老婆和孩子就拜托你了。”说完将灵器推下了悬崖。

    “来吧，让你们知道得罪我的后果。”

    风言跃上巨石，昂头长啸，无数灵丹妙药从他的空灵戒中飞出。在半空中划着诡异的弧线，来到众人头顶。

    “那是仙品丹药！”

    “那是大师级一品的洗骨水！”

    “这是宗师级二级品的破天丹！”

    “我看到了宗师级一品的养魂丹”

    ……

    众人都被漫天乱飞的丹药惊呆了，好一会才想起要伸手去抢。

    可是没有一个人抓到那些丹药，因为它们很快就碰撞在了一起，接着就是如爆竹爆炸，声音不大，但是很密集，很恐怖。是药三分毒，各种不同属性的丹药一旦融合在一起，就形成了剧毒。在晨曦的照耀下，漫天都是五颜六色的粉末和水雾。

    被粉末和水雾粘上的人，有的从内而外开始腐烂，有的是忍不住奇痒，自己抓烂身体。山崖上就像一个人间炼狱，哀鸿遍地，腐烂的血肉满地都是……

    风言突然化成一个百丈高的巨人，双拳燃烧着熊熊烈焰，一拳又一拳轰向下方的人群。

    瞬间，大地开裂，高山粉碎，空间撕裂，域外乱流不断涌入……

    加上风言不断释放出的火属性灵气，让毒雾快速燃烧，增强毒性，无人能逃脱这片充满死灵气息的大地……

    始作俑者，风言也没能逃脱，肌肤开始腐烂。他不想妻子看到自己这副丑模样，他要保留自己最帅气的样子。纵身一跃，跳入了波涛滚滚的黑水河中……

    这一战，让断魂涯成了死亡禁地，数百年无人敢踏足。',10042,10124);
    insert into ds_book values(null,10125,'神武大陆西南部的云水沼泽，这里是各种毒虫毒蛇，凶禽猛兽的天堂。人族极少涉足，是因为此地还有数不清，难于辨别的沼泽暗坑泥潭。连靠猎杀灵兽，采集药材生活的猎杀者都不愿意靠近此地。

    但是今天，云水沼泽异常的热闹。数百人在草地上飞奔，空中更有上千人在飞行。他们在追击一个老头和一个女人。

    惊起的毒虫成片成片地被惊飞，像乌云一样，摇碎了正午的阳光。那些在这里称王称霸的灵兽此刻没有一头敢冒头，偶有几只躲在沼泽暗坑底下的蛟龙会喷出一道道数百米高的水柱攻击天上的人，反正这些人不敢进入水底与它们决战。其余的所谓沼泽霸主，都做了缩头乌龟。因为它们都知道，这些人惹不起。

    “老头，你竟敢偷我们帝国的宝物。你以为逃进云水沼泽，就能躲得过我们的追杀吗？”

    “死瞎子，赶紧把玉叶紫心花和火云珠还回来，不然让你死无葬身之地。”

    “那女人受了重伤，先解决她。”

    这两人正是吴韵和孟鹰。这些年为了给孩子们治病，他们没少干这些事情，面对追兵毫无惧色。

    敌人紧追不舍，慢慢缩短了距离，吴韵知道不能在背对他们，那样反而更危险。

    她转过头，很优雅地笑了笑，说道：“我说过了是借，不是偷。以后总会还给你们的。”

    一名身着将军铠甲的男子冷笑道：“借？有你们这么借的吗？我们答应了吗？

    吴韵无奈的说道：“就是因为你们不答应借，我们才拿的嘛。反正你们也不缺这几样东西。”

    一个身着文官服饰的中年男子指着吴韵说道：“缺不缺是一回事，你竟敢擅闯宝库。帝国颜面何在，余家城颜面何在。”

    吴韵冷声道：“我拿这东西是救人。再说了，这东西不也是你们抢了那几个猎杀者得到的吗？还好意思说什么帝国颜面，要不要我去你们京都走一趟。跟你们皇帝陛下说说余家城的事情？”

    中年文官眼露杀机，低吼道：“你知道的太多，只能去死了。老四，上！”

    老四就是那名将军，立即喊道：“布阵！”

    那边孟鹰一听到“布阵”这话，立即冲过来。他身后凝出一只碧绿色的巨掌，朝着地面的人群拍去。

    “雕虫小技！”空中数人同时出手，数十道灵力汇成一只金黄色的拳头，轰向孟鹰的巨掌。

    孟鹰白眼一翻，巨掌立即一分为二，避开拳头。继续向着地面拍去。

    就这一瞬间，地面的那些士兵已经差不多摆好战阵。数百根长枪几乎是同时举过头顶，从枪尖射出数百道颜色各异的光芒，在他们头顶约四十米处汇集，形成一个半圆形的护罩。

    “嘣！”青色巨掌化成粉末。孟鹰收回双手，同时很不经意地抹去嘴角的一丝血迹。暗自庆幸自己出手够快，他们的战阵还没布置好，否则吴韵凶多吉少。

    护罩被青色巨掌击中，寸寸碎裂，下面的人东倒西歪，像是喝醉了酒一样。

    “快散开，释放护罩。有毒雾！”老四大声喊道。

    青色巨掌碎裂之后，并没有完全消散，而是化成了微不可见的青色粉末。

    下方的数百人立即一脸混乱，只要提到毒，没谁不怕。

    半空中的吴韵趁此机会，打出数十个手印，双手举过头顶。瞬间空间像是被撕裂开，无数陨石从天外飞来，砸向空中的人群。“这是……碎星决，赶紧躲开……”
','    不知道谁喊了一声，半空中的人群也一片混乱。

    可是他们还是晚了一步，很多陨石击碎他们的护罩之后再次爆裂，将那群人炸得血肉纷飞。

    “狂妄之极！”一名中年男子冲向吴韵，手中闪着金光的长刀还在半途，气刃已经切向吴韵的前胸。

    “你不让我活，那我只能让你死！”吴韵手中多出了一条莹白的骨鞭。瞬间划出数十道弧线，将气刃搅碎。然后骨鞭凝成一根银白色长枪，狠狠地击打在中年男子的长刀上。

    “哐！”一声巨响，吴韵巨大的力道让中年男子手中的长刀差点掉落。而吴韵面不改色，又发起一顿猛攻。她要在对方没来得及支援之前，解决掉对方的最强者。这样才有脱身的希望。

    “老二，回来！”

    老四看到孟鹰向着中年男子丢出数枚颜色各异的丹药，吓得赶紧唤回中年男子。

    “姐，我们走！”孟鹰又将数枚丹药丢向半空中血肉模糊的人群。

    两人快速冲向沼泽深处的黑水河畔。孟鹰取出一个方形的灵器，将灵力注入其中。不一会盒子变成一只乌篷船，两人跳上船，横渡散发着无比诡异阴寒气息的黑水河。

    “老四，你慌什么慌，这哪是毒丹，明明就是普通的丹药。咳，真是的，放走了那两个家伙，将来说不定后患无穷。”老二气呼呼地埋怨道。

    老四望向吴韵和孟鹰消失的地方，说道：“可他丢出丹药的手法确实是毒宗特有的功法。不过进入沼泽深处，能有几人活着回来？放心吧，不会有事。”

    那名文官也安慰老二道：“大不了多花点钱在京都打点打点，没多大事。即使抓到了也不好办，那女人刚才用的是碎星决。”

    老二不屑地说道：“碎星决又如何？现在东西两块大陆水火不容，杀就杀了。算了，不说了。传令下去，严查这两人，任何消息都不要放过。说不定他们的消息能在鸿岚阁卖个好价钱。”

    孟鹰和吴韵费尽心思偷来药材和丹药要救助的人此时正在碎裂域的沉梦雨林中历练。

    碎裂域，是一个特殊的域界。有人说是被遗弃的世界，也有人说是被天诅咒过的域界。更有人说它原本是大陆的一块，被大神打碎后漂泊到了域外。

    各种传说都精彩纷呈。但是能进入碎裂域的人少之又少。这些年，不知道多少人为了寻找碎裂域一去不复返。

    十四年前，孟鹰乘坐一艘灵器，带着吴韵与她的孩子风廉横渡黑水河时，无意中闯入了碎裂域，才躲过了无尽的追杀。

    十四年过去，风廉已经长成一名翩翩少年。此时他正带着小自己三岁的妹妹梦洁在雨林中历练。

    “哥，休息一下吧。我感觉自己腿都要断了。”梦洁嘟着小嘴，满怀期待地看着风廉。

    风廉老老实实地地蹲下，背起笑嘻嘻的梦洁，飞奔向前。

    “哥，你慢一点。可别像上次一样，把我脸都刮花了。”

    风廉盯着前方微微浮动的枯叶，说道：“再慢那头黑角地龙要跑掉了。”

    梦洁无所谓地说道：“跑就跑吧，反正雨林里面灵兽多的是。好不容易出来一次，我都还没玩够，你又要回去。天天被那几位师尊折磨，我都要累死了。”

    风廉笑道：“你不打击我你很不开心是不是？我不是修者都还那么卖命地修炼，你是修者还不多加努力。”

    梦洁埋怨道：“丘师尊不是说过了吗，陌村是被诅咒过的地方，很难修炼出成果。反正我修炼不修炼也能升级。我就喜欢上付师尊的课。”

    一提到付师尊，风廉就满脑黑线，他最怕上付诗的课。一天到晚琴棋书画，这还不算，孟鹰还逼他与梦洁一起跟付诗学舞蹈。一想起这些，他就感觉两腿发软。

    “哥，快点追上去呀。黑角地龙要跑掉了。”

    风廉只能忘掉那些不愉快，提起精神，快速追上去。

    “太好了，它被我们赶进陷阱法阵了。”梦洁从风廉背上跳下来，生龙活虎的样子，哪有半点腿要断的样子。

    风廉抽出一把匕首，盯着在陷阱法阵中挣扎的黑角地龙，等待最佳时机。

    “哥哥加油，你一定能一招将它毙命。”梦洁随手摘下一串野果，跳到树上，给风廉打气。

    风廉无奈地说道：“这可是三阶中级的黑角地龙。我又不是修者，怎么可能一招将它拿下，要不你来。”

    修者分为六个等阶，分别是封粱，玉府，恩泽，灵海，神庭，宗师。分别对应灵兽一阶到六阶。每一阶又分低中高三个等级。
','   梦洁现在是恩泽低级，而风廉连修者都不是，要战胜这头黑角地龙是挺难。

    梦洁靠着树干，有气无力地说道：“我好困，先休息一会。”

    “嗷……”黑角地龙越是挣扎，法阵中的灵力绳索捆得越紧。有几道已经勒进它的身体，疼痛让它忍不住大叫。

    风廉趁此机会，像只灵猿一般，避过法阵的丝线，跳到黑角地龙的背上。双手将匕首刺入黑角地龙最薄弱的后颈。

    黑角地龙吃痛，身子一甩，风廉被甩飞。在半空中，他的身子扭出几个高难度动作，避开陷阱法阵的丝线，落在陷阱法阵外围。

    看着不断咆哮挣扎的黑角地龙，风廉心中暗自得意。这还是他第一次挑战三阶的灵兽。虽然不能一招将之击杀，但对他来说，已经算得上是很大进步了。

    得意不到半秒钟，风廉脸色立即凝重起来。黑角地龙力大无比，再这么挣扎下去，法阵要毁掉。没有法阵的束缚，他和梦洁不可能是黑角地龙的对手。

    风廉不再拖延，看准黑角地龙蹲下身子挣扎的那一瞬间，再次跳到它背上。抽出匕首后，风廉抓住它额头的逆鳞，滑到他肚子下，再向它前胸刺入。并用力地搅了几下。

    黑角地龙彻底被激怒了，挣脱了好几根灵力丝线，疯狂地跳动摇头，要将风廉甩下来。

    风廉一手抓住逆鳞，一手抓住独角。拼尽全力将黑角地龙的头抬起来。只要它抬头，伤口的血就会不断流出。

    虽没被甩下来，但是黑角地龙身上坚硬的鳞片已经把风廉刮得遍体鳞伤。一刻钟后，风廉力量已经接近枯竭，可他还是不想离开，因为黑角地龙的血已经染红了一大片林地，再坚持一会他就成功了。

    可是现实却让风廉吃了一个大亏。临死之前的黑角地龙使出最后的力气，将他从背上甩下来，抬脚朝他脑袋踩下来。

    风廉看到一片黑光向自己的眼睛压过来，本能地滚到一边，避过了这一脚。可是地上全是粘稠的血液，他滚动得越来越慢。黑角地龙的第二脚已经朝他胸口再次压下。

    情急之下，风廉也不知道哪来的力气，奋力弹起，一把抱住黑角地龙的大腿，任它怎么挣扎，就是不放开。

    “刀疤和仁剑两位师尊骗我，说人生最快乐的事情就是抱大腿。我擦#&￥*%……”风廉心中不断问候他的两位师尊。

    “看吧，最后还得我出手，才能制服它！”梦洁不知何时站在黑角地龙的背上手里拿着那把血淋淋的匕首，对风廉扮了个调皮的鬼脸。

    “轰隆。”黑角地龙终于到底不起。

    风廉有气无力地躺在血泥中，说道：“好吧，你赢了。”',10042,10125);
    insert into ds_book values(null,10126,'陌村，位于碎裂域沉梦雨林的一个低洼地，像是一颗明珠被森林拥入怀中。

    说是村，其实说的有点小了，整个陌村方圆十余里。人口差不多有八万人。

    陌村，这个村子在十四年前是没有名字的。因为村民除了每年的冬至那一天会派几个代表去炎镇纳贡，其余的时间他们都过着日出而作，日落而息的安逸且自闭的生活。

    除了几个修为较高的猎户会到村子外围一里之内狩猎，其他人是不会踏出村子半步的，一旦踏出去，很有可能就踏不回来了。

    十四年前，一个叫孟鹰的炼药师带着一个女人和一个婴儿入住了村子，并给村子起名叫陌村。

    村民很排斥外来者，因为陌村自古以来都没有外来者。连镇上的大人们都不愿意过来，说这是一个被诅咒过的地方。

    他们拿着各种农具像赶凶兽一样要跟走孟鹰三人。但是这个炼药师他们惹不起。后来他给村民炼药，让很多普通的孩子都能走上修炼之路。

    村民的情感是淳朴的，你对我好，我加倍偿还。所以后来孟鹰不知道又从哪里陆陆续续带来了好几个外人，村民都睁一只眼闭一只眼。

    陌村北边最高的那座小山上，有一个院子。这个院子可以说是陌村规模最宏大的建筑。这个院子建在村子的制高点，刚好可以俯瞰整个陌村。

    当年孟鹰要在这里建院子，遭到村里的一致反对，说是压制了龙头，破坏了风水。孟鹰用拳头证明自己有资格在这里建这个院子。

    孟鹰一回到陌村，立即进入炼药房中给风廉和梦洁炼制医治他们身体隐疾的丹药。吴韵因为伤势较重，回到自己的屋子中疗伤。

    突然，晴朗的天空发出一阵雷鸣声，一道闪电落入小院最高的那座六层木楼上。一个人影从顶楼跌下，幸好被正在拿着一把食材，从楼下经过的大厨马伟接住，否则可能已经半身不遂。

    “老丘，你不说想引个天雷比生个娃还难吗？怎么外焦里嫩了？”马伟大肚子顶了一下头顶冒着黑烟的丘山，打趣道。

    丘山没好气地说道：“我现在没心情跟你说笑，赶紧把其他人找来，去小孟的房间。”

    马伟知道出了大事，不敢再调侃丘山，放下丘山，转身过去找其他人。

    丘山等了半天，孟鹰才从炼药房走出来。

    看到满脸焦虑的丘山，孟鹰刚要发问，丘山已经火急火燎地说道：“小孟，出大事了，你看看这个。”

    孟鹰没有接过丘山递过来的那些石头和龟甲，说道：“你给我这个我也看不懂，有什么事情你就直说。这些年的麻烦还少吗，我经受得住。”

    丘山深吸了一口气，问道：“当年断魂涯上的事情，你是不是也知道，并且参与了其中？”

    孟鹰笑着摇头道：“你呀你，整天没事干，就知道去算我的过去，你能不能给我们大家算算未来。”

    丘山抹了一把额上的冷汗，又道：“我算的就是我们的未来。你和吴韵的行踪被另一名星算师算出来了。他们近日可能要打开一条空间通道，到陌村找你。”

    孟鹰一听，表情变得凝重起来，问道：“不可能吧。我回去打探过，当年追杀姐姐和姐夫的人，没一个活下来。他们怎么知道我参与了其中？”

    丘山哼道：“连我这个半吊子的星算师都能算计出来，如果对方请的是星瞳楼的星算师，你说能不能算出来？”

    孟鹰笑道：“别紧张，兵来将挡水来土掩，怕什么。陌村这地方，我们才是主宰者。对了，星算师有那么邪乎吗？连我在这里也能算出来，我可是尽可能抹去了所有的痕迹。”

    丘山叹了一口气，说道：“不是你和吴韵的问题，问题出在尹家送给风言的灵器上，那上面有伊家留下的标记，能把空间坐标传回尹家，想必是他们把这个消息给卖给了辟徵宗或者其他的宗门世家。”

    孟鹰咬牙切齿地说道：“辟徵宗？！当年的帐还没算清楚，他们要敢来，来几人杀几人。”

    丘山说道：“我虽无法算出这次参与的宗门和世家，但是辟徵宗肯定不是主角，他们只是被身后的那些宗门世家请来的杀手。”
','    孟鹰知道丘山绝对不是危言耸听。丘山来到碎裂域的时间比自己还长，不可能知道断魂涯一战。更不可能知道风言。在孟鹰的印象中，风言极少以真面目示人，在神武大陆，认识风言的人不到十指之数。

    见孟鹰沉默了许久，丘山说道：“我们去客厅和大家商量一下吧。”

    刚走到门外，就听到里面传来一阵阵开心的笑声。

    客厅中，吴韵、付诗、马伟，还有负责教授风廉和梦洁身法和战技的刀疤和仁剑正在聊着一些往年趣事。

    见孟鹰和丘山一起走进来，吴韵问道：“小孟，怎么了？”

    孟鹰现在的样子像个已经步入暮年的老者，头发花白。为了给风廉和梦洁炼药，去掉一身毒血，再耗费生命力重新凝练新鲜血液，加上找寻药材，横渡黑水河更要耗费生命力。如今寿元所剩无几，双眼近乎瞎了，两米外的东西都看不到。

    而吴韵，因为救治血气不断流失的梦洁，不断放血让孟鹰提炼成精血，两鬓多了一些白发。面容，身材等依然像个刚刚成熟的女子。她叫孟鹰“小孟”，在场的人听了十来年，还是不怎么习惯。

    丘山把自己通过星算术看到的场景跟大家说了一遍。

    “怕他们做什么，来一个杀一个，来两个杀一双。我们修为被压制，他们也好不到那里去。”刀疤挥舞着手中的长刀，不屑地说道。

    “你懂什么，老孟不是怕，是不想给这个村子带来灾祸。而且两个孩子怎么办？你就知道打打杀杀，哪像我们，满怀仁慈之心。”仁剑抓住机会立即打击刀疤。

    “你皮痒了是不是，要不要来练两手。”

    刀疤就要冲过去，被付诗拦住，“现在说正事呢，你们不要闹。”

    付诗曾经是大陆上鼎鼎有名的一代名媛，人脉大到何种程度，估计她自己都不清楚。哪怕现在已经年老色衰，依然有着一种神圣不可侵犯的高贵气质。

    至于她为什么会来到陌村，她和孟鹰都守口如瓶。只知道是六年前被孟鹰请过来的。刀疤和仁剑就怕她，只要她一开口，两人立马就蔫。

    “十几年前追杀我们的人，来头可不小。而且涉及到十几个宗门，世家。硬拼是不理智的，我们离开这里，跟他们玩猫捉老鼠的游戏。”吴韵说道。

    孟鹰摇头道：“你们留在这里，我带着尹家的灵器离开，他们就失去坐标了。”

    丘山摇头道：“灵器长时间在这里呆着，估计陌村的坐标已经被他们得到了。你走了也不济于事。还是想想怎么安顿好两个娃子，之后我们一起离开。”

    孟鹰和吴韵低语了许久。孟鹰突然站起来，宣布道：“这两天风廉和梦洁应该就回来了。十日后，给他们举行定亲仪式。然后我们离开陌村。”

    丘山问道：“那孩子怎么办？跟我们一起走？”

    吴韵摇头道：“乘坐灵器横渡黑水河太耗费生命力，两个小孩身体自小就不好，就留在这里吧。这世外桃源挺适合他们。”

    付诗皱眉道：“那，那他们的病怎么医治？”

    吴韵沉痛地说道：“风廉刚出生，就在黑水河上漂泊，那时我体弱不堪。小孟得耗费心神控制灵器。如果不是他识海中有着一道不知来历的魂力稳住他的识海，怕是已经……也是因为如此，识海的黑影吸干了风廉的灵气，让他还没有萌芽的灵晶枯萎，成不了修者。这些年，小孟也是想让他的灵晶复活，其他没有什么状况。这点大家放心，只要不是天灾人祸，他们自己能好好活下去。”

    付诗又问道：“那小洁呢？”
','    孟鹰说道：“她是我在黑水河边捡来的，当时抱着她的是一个中年修者。那人用自己的生命力凝成护罩，保住了小洁的命。但他自己已经回天乏力。奄奄一息的他托付我将她抚养成人。并说让小洁一辈子隐居，不要出世，否则她将……。

    “她身体的主要问题就是血气和魂力总在流失，偶尔又能吸收回一些，总之时好时坏吧。我也查不出什么病因，从她残缺的识海来看，应该和她的身世有关。孩子都长大了，应该学会自己照顾自己，做父母的的不可能陪孩子一辈子。”

    吴韵和孟鹰说得都很轻松，其实在座的人都知道，他们身体的状况绝对没有这么简单。

    刀疤盯着丘山问道：“丘爷，你不是星算师吗？怎么不给他们两个小孩算算？”

    丘山很是委屈地说道：“我要能算就好了。他们两人的过去和未来都被人刻意篡改过，特别是小疯子，篡改之人就是他识海中的那道黑影。篡改的手法粗糙无比，好像怕人家不知道他会篡改别人的命运一样。小洁的就不一样了，篡改之人的手法极为高明，根本无迹可寻。但他不是用星算术，而是一种我不知道的术法。”

    仁剑问道：“真的没办法将那道黑影从小疯子的识海驱除吗？这样的话说不定他就能修炼了。”

    吴韵和孟鹰同时摇头，吴韵道：“不行，那道黑影像是和我们处于不同的空间，根本无法接近。”

    刀疤说道：“既然决定了，我和贱人立即给他们造新房去，争取在三天之内完成。等他们回来，我还得再折磨他们几次，不然没机会了。”

    仁剑骂道：“刀疤，你大爷的，我叫仁剑，信不信我抽你！”

    两人打闹着离开了大厅。马伟也跟着走了出去。

    付诗道：“我去找村里的祭司。婚礼还是按村子的习俗办比较好，这样以后他们也能融入其中。”

    吴韵道：“我跟你一起去吧。村里的人还是不怎么喜欢外来者。”

    屋内自身孟鹰和丘山，丘山问道：“你们这么仓促就给孩子们安排他们将来的路，合适吗？”

    孟鹰翻着白眼说道：“还不是你说得那么危机重重，把我们吓的。”

    丘山瞪着孟鹰道：“我还有错了？那你可以不听我的话呀！”

    孟鹰丢给丘山一张图纸，笑道：“丘爷的话我们还是要听的。你把大阵给刻印完整一点，留给孩子们保命用。”

    丘山打开图纸，看了一眼，满头的黑线。刚想骂人，孟鹰已经不知道闪到何处去了。',10042,10126);

insert into ds_book values(null,10127,'一古教、破刀、彼岸花

    第一章劫匪被劫

    一条荒废的古道，十几个衣衫褴褛，面黄肌瘦的人护着三辆马车小心翼翼的行进着。道路的荒草被不断的碾倒下去，匍匐在地，正像是无数的江湖豪杰在强权面前摧眉折腰，轰然倒地，围着马车的每个人表情都紧张肃穆。

    七月骄阳似火，豆大的汗珠在大家脸上滚落，再配着那样的表情看着很是诡异。从他们慌乱的脚步可以判断这是一群很普通的人，可那三辆马车看起来却一点都不普通，车厢外体装裹着精美的丝绸，缝隙处镶嵌着火狐的皮毛，窗牗上装饰着金玉，窗帘低垂，无法看清里面是什么，每辆车拉车的五匹马更是纯种的胭脂兽，就这十五匹马也不是普通的富贵人家可以拥有的。

    这样的一群人和这样的三辆马车走在一起怎么看都有点不伦不类，这些人就算是给这三辆马车当车夫都不配，可偏偏看起来他们像是在保护着这三辆车似的沿着这久已荒废的古道小心前行。

    有些事不是你小心了就不会发生，尽管他们很小心了，前面还是忽然冲出几十号彪悍的人挡住了去路，这些人气势汹汹，每个人都拿着刀枪，身上隐隐有血光外溢，看的出都是杀过人的狠厉角色。带头的人看着还有点人模样，浓眉虎目，仪表堂堂。

    看见这些人冲过来，原先跟在马车旁的十几个人立即蜷在马车的周边，面露惶恐，全身瑟瑟，有几个人的手里倒是有短刀，可此时也都抖成了一团，慌的不知道该怎么办才好。

    对方带头的轻蔑的看了这十几个人一眼：“看看你们这怂样，再看看你们这穿戴，这表情，你们跟这马车配吗？现在给你们一个机会，只要你们立即滚蛋，你们的蝼蚁命就可以保住了。”

    可是他的话说完了那十几个人不但没走，反而靠马车更近了些，几个手里有刀的也忽然挺了挺胸膛，手里的刀握的更紧了些，眼里有些绝然的神色，但是没人接对方的话。

    就仿佛能够死在他们护着的马车旁就是他们今生最大的荣幸。

    带头大哥身边的一个瘦子见这阵势不由的冷笑：“我们兄弟在这条道上作了这么多年生意，还没见过舍命不舍财的，大哥仁义放你们一条生路，你们还真是不知道好赖呢！那好，我成全你们。”话音落下身影爆射而出，一脚就踢飞了最前面的人。瘦子脚上的功夫不弱，这一脚居然把对方踢出去三丈多远，落入路边的乱树丛中，耳听的哎呀一声就没了下文。

    护着马车的十几个人倒没被瘦子那自以为惊天动地的一脚给吓到，反而被他说的话弄的迷惑不解，其中一个年纪大的站出来拦住还要动手的瘦子，拱手说道：”英雄慢动手，听英雄说话的意思各位是——劫道的？”

    瘦子撇了撇嘴：“老家伙你这么说就不对了，什么叫劫道？我们是作生意的——无本生意！明白了么？哈哈哈”几十个人全都肆无忌惮的狂笑起来。

    没想到这个年纪稍大的听了这话居然长出一口气，整个人看起来轻松很多，抹了下额头的汗水说道：“各位原来是求财的——那你早说么，都吓死我了！”

    所有的劫匪都不由打了个趔趄——你特么不怕抢劫的，那你们哆嗦个啥，抢劫的你们不怕，你们倒是怕个啥？

    年纪稍大的这时又上前深施一礼道：“各位英雄若是求财，在下这里倒是有那么几千两黄金送给各位买点薄酒，就算我家主人的一点心意。”

    这话顿时让在场众人又是一个趔趄，几千两黄金买酒，这里的所有人就算变成大象也要淹死几个来回，再说了，这些劫匪在这条路上工作很多年了，赚到的钱加一起也没到一千两，这一下就是几千两……

    “我要回家把我家的老房子翻盖了，再买十亩地……”

    “这回我可以把王寡妇娶了，那娘们我都惦记几年了。”

    “我必须要去趟春香楼，那里的头牌楚媛媛那个贱货一直都卖艺不卖身，每次看见她我都浑身痒痒，那胸，那腰，那腿，那小嘴……这回一定让她卖艺又卖身，至少要用十个以上的姿势来伺候我。”

    “妈的这次得跟大羊好好赌一次，这鳖孙每次都用钱大压我，这回……”

    “哎！我终于有钱给我弟弟治病了，他都瘫痪……”

    ……
','    所有的劫匪脸上都冒着各种各样的星星，直到一声清咳打断众人这才清醒过来，至少有十几个人醒过来的第一件事就是赶紧擦哈喇子，这尼么，前大襟都湿透了。

    收拾利索了才看见金子已经摆在众人面前，整整齐齐的六个大金匣，上面还有些散碎的，大金匣是五百两一封的，那就是说这些金子至少三千两，这可是金子，不是银子，所有人的眼睛又直了。

    对方年长者于是又清咳了一声道：“各位英雄，这是在下等全部财物，只因主人家有急事，需要赶路，还望各位英雄能给我等一个方便，他日有缘必当再致谢意。”言罢对着劫匪又是深施一礼。

    劫匪带队的用了很大力气才把眼睛从金堆里拔出来，冷笑着：“你以为我没见过金子？”

    话音刚落就听身边有人小声嘀咕：“你指定见过，但这么大一堆你见过么？别装逼了，赶紧拿金子走人吧。”

    带队的大哥瞪了一眼说话的劫匪才又看着马车众人说道：“既然你们这么急，那我也给你们个痛快，金子和马车留下，马车里的人可以跟你们一起走。”

    对方老者刚要再说话，岂料旁边树丛里稀里哗啦的走出一个年青人，看年岁十七八的样子，眉目很清秀，但眼神里冒着让人说不清的邪光，手里还提着一个人，正是瘦子劫匪踢飞的那个，只是已经昏迷了。

    少年一出来就对着所有人喊了一嗓子：“谁都不准走！我要问清楚刚才是哪个趁我拉屎时暗算我，居然还用活人作暗器，挺有想法啊。”

    在场众人立即觉得天上有无数只乌鸦飞过，这特么的谁呀？不知道什么是死么？在场的都是什么人知道么？还居然跑到一个方圆几十里无人烟的地方拉屎，你怎么不到混沌星空去拉呢！

    不料年青人一眼看见了地上的黄金立即打了个口哨，随手从腰里扯出个蛇皮袋子流着口水满眼兴奋就开始装金子，边装还边自语着：“这特么的谁呀？居然把这么多金子扔马路上，太特么的败家了！这么多人居然没看见，太幸运了，呵呵呵，这下发达了，哎呀！这么多金子啊，我先买什么好呢？真是纠结呀！”

    所有人觉得天上又飞过了比刚才多几百倍的乌鸦，黑压压的一片。

    劫匪里的瘦子是最先反应过来的，他没有废话，身子直接腾空而起，右腿奔着年青人的脸就劈了下去，同时腰一转手里尖刀就对着对方的胸扎下。

    在场的人都能看出来瘦子的确功夫不错，这一腿一刀干脆利落，腿掩护着刀，刀借着腿势，哪一下落在年青人身上，年青人都必死无疑，而现在年青人正两眼冒光装着金子呢，注意力就没在瘦子那里，眼看瘦子的两击就要全落在年青人身上，瘦子咬牙吼了一声：“去死吧！”然后就飞了回去。

    是的，是飞了回去，脸上还贴着块金砖，落地时把地都砸了个坑，这下让众劫匪目瞪口呆，谁都没看出来年青人是怎么出的手，仅仅是看见瘦子脸上的金砖可以判断是年青人出的手，而出手的分量更是吓人。

    劫匪们反过神来发现年青人已经把金子全装进蛇皮袋子里了，起身急匆匆的分开众人跑到瘦子身边从瘦子脸上把那块金砖抠下，随手在衣襟处蹭了蹭擦净血液也装了起来，并把袋子缠在腰上，三千两的金子不是轻快玩意，可年青人看着很轻松，就像几两一样，嘴里还嘀咕着：“太败家了，居然用金砖打人。”

    领头的劫匪眼看着瘦子的整个鼻子都被拍进脸里了，不由回头怒瞪着年青人：“阁下什么人？阁下暗器伤人算什么英雄好汉？”

    年青人看着劫匪的眼神好像看见对方脸上长了花一样：“我叫姬武，你要不要脸啊？你一个抢劫的跟我谈什么英雄好汉……好吧，就算谈，只要能打倒对手的都是英雄好汉，说明对方有本事，将来你要是遇上一个放屁都能蹦死你的人，你更要匍匐在地，顶礼膜拜，因为对方比你强太多了，你连人家一个屁都挡不住还敢说对方不是英雄好汉？”

    劫匪怒极：“你……”

    “你什么你？”现在就要你们来告诉我刚刚是谁拿活人暗算我？”姬武眯着眼问。

    领头劫匪阴沉着脸后退一步对其他劫匪命令道：“弟兄们，我们的金子都在这小子身上，我就不信他一个能打我们几十个，一起上，干掉他，抢回金子！”这些劫匪毕竟常年聚在一起，简单的默契还是有的，立刻刀枪齐举，往姬武身上招呼而去。

    姬武往后连退了几步躲开攻击，嘴里咕哝着：“就你们有刀，欺负谁没刀似的，我也有。”说着还真从后腰抽出一把刀来，一把一尺多长，崩牙卷刃，锈迹斑斑的破菜刀，跟着马车的十几个人瞬间被姬武的刀雷倒“这也叫刀？这切菜都没人要的东西居然叫刀？”

    姬武可没管别人的想法，就见他左一下右一下，出手毫无章法可循，速度也不快，偏偏把所有人的攻击都挡下了，边打还边嚷着：“这么激动干嘛？看来暗算我的就是你们没错了，跟你们说哈，刚刚我拉屎正拉了一半，你们把这个人撇过来暗算我，也就是我功力深厚才没摔在屎坑里，但是另一半说啥也拉不出来了，这笔帐要怎么算？”

    每个人的脑门上都挂满了黑线，拉不出来屎居然要别人负责，这个世界估计也找不到第二个了。可是姬武就这么嚷着，打着，东一拳西一腿左一刀右一脚前一指后一掌，二十息不到居然把几十个劫匪全都打翻在地再也没有动手的力量。
','    姬武踱步到带头劫匪身边一脚踩住他问道：“刚刚是你要杀我？”

    带头劫匪面色青紫，嘴里涌出了血沫，可说的话却没一点服软的意思：“有种你杀了我，爷要是皱一下眉头就不叫倪大虎，但是你得罪了蒙山梁家寨，我保证你活不过三天。”

    姬武嗤了一声：“我还以为你真是什么英雄豪杰呢，没等问就啥都说了，原来你叫倪大虎，蒙山梁家寨的，很好，这回我知道跟谁算账了。”

    “算账？”倪大虎忍不住冷笑，可这一笑嘴角直接溢出了鲜血：“小子，你知道我梁家寨是什么地方？居然要跟我梁家寨算账？你先想好怎么活下去吧！”

    姬武脚下稍用力，倪大虎顿时感觉自己肋骨至少折了两根，不由痛呼出声，嘴里喷出了一大口血，而姬武嘴里则发出啧啧的声音：“哎呀呀！你看你看，我这被你砸的后果很严重呢，手脚力量都不受控制啊，由这能判断，我不但一半屎拉不出来了，很可能还患上了拉屎恐惧症，拉屎官能综合症，习惯性拉屎拉一半症，而且鉴于拉屎所在部位离子孙根非常近，所以要对这些部位进行详细细统的检查，看看是不是有什么隐性的连带伤害存在，遗祸我的后代子孙，你们也知道现在这个医疗系统收费有多么昂贵了，这些林林总总的购号，检查，治疗和购买丹药的费用加在一起，恐怕是一笔不小的开销呢，你们打算怎么赔偿我啊？”

    趴在地上的劫匪早就有人恨的用手将地抓了个坑：“这也太无耻了，这特么的是敲诈！赤裸裸的敲诈！”

    “这是年青人么？这是一个年青人说出来的话么？这脸皮得有多厚啊！”

    “谁能把我扶到他面前去不？我这伤的太重爬不过去了，谁扶我过去踹死他？”

    “真是世风日下啊，现在的青少年都无耻的这么没有底线了么？”

    姬武依然是一副唇红齿白风清云淡的样子，他一点也不为自己的无耻觉得脸红：“这样吧，把你们身上所有的贵重物品全都拿出来看看够不够，谁要敢保留……”他脚下又加了几分力道，倪大虎又是一声惨呼，肋骨又折了两根。

    所有的劫匪看着这样一个人模狗样心狠手辣，功夫又高又无耻的家伙当然不敢保留，赶紧把身上所有值钱的物品统统拿出来放在姬武的面前，其中居然还有几十枚铜币，姬武看着这些东西有点不敢置信的瞪大眼睛：“就这些了？都拿出来了？”

    劫匪们忙不迭的点头：“都在这里了，在您面前我们哪敢保留。”

    姬武一只手不由扶住了自己的额头，然后甩了甩脑袋，忽然发疯似的一脚一脚踹着这些劫匪，边踹边骂道：“你们这群败类，垃圾，白痴，特么的抢劫这么有前途的职业居然被你们作成这样！你们还特么的能干点啥？那些江湖大盗山林好汉的脸都被你们丢尽了，几十个人啊，身上就这几个钱，一共还不到一百两银子，居然说自己是拦路抢劫的，怎么有脸说出来？我叫你丢人，啊，还蒙山梁家寨？我叫你梁家寨！”几十个劫匪一会儿功夫就被他踹的鼻青脸肿，腿断胳膊折。

    马车那边的一伙人听着姬武的叫嚷则完全呆若木鸡，三观倾覆，甚至连劫匪来抢劫时都一点反应没有的马车厢里也有一个的门帘撩起个缝，无耻到这种地步的人比那万年古教的教主都稀少啊，可算遇见一个，必须观瞻观瞻。

    姬武打够了好像气也出的差不多了才停下看着地下惨呼连连的这群劫匪道：“都特么的别装死，把你们身上的衣服都给我脱下来。”

    所有人的眼睛瞬间瞪大，他这是要哪样啊？几个年青点的劫匪紧紧抓住自己的衣服抱着胸恐惧的退到了其他人的后面。

    众劫匪大眼瞪小眼互相看了半天才有一个忍着伤痛站到了姬武的面前，一副壮士断腕舍生取义的决然表情道：“如果一定要这样，才能平息小爷你的怒火，请小爷放过我的弟兄们，要祸害就祸害我一个人吧，我一定把小爷你伺候舒服了，不让小爷你失望。”说完把全身衣服快速脱光，脸一仰胸一挺：“来吧！”

    劫匪里已经有人哭出了声：“太够义气了，这样的兄弟我要交一辈子，尊敬一辈子。”

    “今天这件事我们都要为这位兄弟保守秘密，回去后谁要敢乱说话，我大虎第一个不饶他。”倪大虎也眼含热泪。

    姬武则是看着脱光的这个家伙愣了半天才明白他的意思，抬脚把他踢飞：“滚！”

    最后在姬武的威胁下众劫匪还是脱的精光排成一排蹲在马路边，而倪大虎更是被逼着用自己的血写了欠条赔偿对方的人身伤害及心里补偿，居然是一万两黄金。

    姬武作完这些一把火烧了劫匪们的衣服，然后看都没看马车一行人，昂首挺胸的走了，当然走时没忘了把劫匪们凑出来的那些银子和几十个铜币揣在怀里，临揣起来之前还认真的数了下铜币。

    见姬武走了，马车一行人也快速启程很快消失在古道尽头。

    劫匪们看所有人都走光了，这才有一个疑惑的问倪大虎：“虎哥，我们这，这算不算被人打劫了？”',10043,10127);
insert into ds_book values(null,10128,' 可惜马车一行人还没走出五十里就再次被拦住，这次拦住马车的没有那么多人，只有四个。

    一个青帽青衣青裤，青巾蒙面，一个散着头发遮住了半边脸，露出的半边脸苍白如纸，蓝衣青裤，一个满面虬髯，眉长似剑，裹一身大花衣看着不伦不类，一个摇着羽扇，唇红齿白眼神却很阴鸷，一身刺绣着梅花的精缎长衫。

    四个人都没拿什么武器，就那样清清爽爽的站在古道的草丛中，但马车一行人看见四人的时候立刻如坠冰窟，此时虽然天已黄昏，但七月流火，每个人身上都是一身的汗水，围着马车的那群衣衫褴褛的人更是挥汗如雨，可看见这四个人，汗立刻消了，笼罩他们的是让他们战栗的阴寒。

    马车停下，跟在车边的那些人立刻如之前一样的龟缩在马车的周围，握着短刀的几个人同样的握紧了手里的刀，四人却连看都没看这些人一眼，披散着头发的人苍白如纸的脸上似乎有了点血色，对着马车说道：“我们兄弟只要青夫人手中的血玲珑，只要夫人交出血玲珑，我们兄弟四人就留你们所有人一个全尸。”

    冰冷的话语没有一丝人气，听着让所有人身上的寒气更加浓重，而且语气骄傲自负，仿佛给别人留下一具全尸已经是他最大的恩赐。

    四下里只有鸟啼虫鸣和远处隐隐的猛兽低吼，再就是风掠过丛林古道发出的呜咽，没有人接他的话，这样的话没人知道该怎样接。四人仿佛也不急，就这样静静站在那等着。

    不知道过了多久，马车里忽然传出了一声叹息，那是怎样的一声叹息？

    满天的夕阳仿佛就在这一声叹息后失却了绚烂的色彩，四周丛林中虫鸟兽也在这一声叹息后静逸无声，假如这里是金戈铁马，雷石战车的沙场，这一声叹息也会让将士们偃旗息鼓，折戟沉沙，永不再战，这一声叹息仿佛包含了世间所有的无奈和辛酸，所有的苦楚和悲悯，世间一切的争名夺利，铁血杀伐仿佛都在这一声叹息中化作了静逸虚空，幻成了过眼烟云。

    护着马车的那些人在这一声叹息后全都热泪盈眶，垂首自怜，手中握着的短刀早不知何时落在地上，拦住马车的四人也都极目远眺，神思不属，浮想联翩。

    这时马车里又传出了轻柔的话语：“海门四骄，本是人中龙凤，仙门翘楚，老大狄武艺，十七岁筑基，三十岁成丹，四十六岁结婴，已经不能用天才来形容，一生重情重义，情义双绝，可惜为了魔女楚怜怜自暴自弃，从此修为再无寸进。”

    “老二西门生，传为广庆仙王转世，一念成丹，冰狱结婴，为了朋友四入魔海，三次兵解重生，传为修真界的美言佳话，可惜最后落入陷空门，身中奇毒，容貌尽毁，一生不肯再以真面示人。

    “老三铁劲男，三岁即为神童，八岁可幻海杀蛟，机敏过人，后因得罪药王谷，慧根被斩，一生修为止于金丹。”

    “老四洛风天，变异沙灵根，得天地眷顾，一生奇遇不断，连获至宝，金丹四层时即可越级斩元婴，杀伐果断，号称海门同辈第一人。”

    摇着羽扇的洛风天抱拳道：“青夫人不愧是修真大陆的第一美女，玄真古教的第一才女，一声叹息就可叫天地失色，却连我兄弟这等下作之人都能记得清楚，既是知道我兄弟四人，不知夫人还有什么可说的？”

    马车内轻柔的声音回道：“可是就凭你四人就想让我月青青就范是不是想的有点多了？”

    洛风天笑道：“若是青夫人身体康健，修为全盛，我兄弟四人当然不够夫人看的，全天下的人都知道青夫人已经是元婴巅峰，半步出窍境，但听闻夫人近期身体有恙，修为也连原来的一半都不够了，所以我兄弟斗胆请夫人能以血玲珑相赠，我等必保夫人全尸，不辱夫人清白，不知青夫人意下如何？”

    月青青冷哼一声：“难道你们就不怕我夫君事后灭你们一族？”

    裹着一身大花衣的狄武艺说道：“听闻尊夫穆北剑已经来到这回元大陆接应你们母子三人，可惜他刚一到这就官司满身，怕是没有机会回我们修真界灭我们家族了，青夫人还是交出血玲珑，多为自己打算一下吧。”

    月青青沉了口气：“血玲珑是极品灵草，炼制十品丹药见仙丹的主材料，据说服用后可使结婴以上的修真者直接晋级一个大级别，就算当今的修真界也万年不遇，当然算是重宝，可是当今的修真界有谁可以炼制十品丹药？就是药王谷的第一药王谢林前辈也只能炼制八品丹药，你们抢这雪玲珑又有何用？怕是受人蛊惑吧？”

    洛风天摇摇羽扇：“夫人不必多虑，我等拿到之后自有安排，只要夫人把它交给我们就可以了。”

    月青青还是轻柔的语调：“那你们就自己过来取吧。”四人听闻这句话都是瞳孔一缩，不但没上前反往回退了一步。

    月青青成名不是她有多高深的道行而是她的美色，传说她的美色已经不能用言语来形容，有三个最顶级的画师给她画完画像全都发疯的撕碎自己所作的画后自杀身亡？

    要用祸国殃民来形容她的美那是对她美貌的侮辱，当年嫁给修真大陆第一古教玄真教的第一天骄穆北剑时，魔门的魔子听闻她的美貌跑去偷窥，结果在一处回廊看到了她，她并不知道魔子是什么人，还以为是门内弟子淘气，就对着他轻轻一笑，结果魔子当场道心坍塌，修为尽毁。
',' 要知道魔门是美女辈出的地方，魔门女子大都比人类女子要漂亮妩媚，魔子可是见惯了美女的人，可是连他都抵挡不住月青青的一笑，更不要说别人了。

    弄到最后除了穆北剑，天下没有男人敢去看月青青，别的美女那是一笑倾城，月青青那是一笑杀人，谁看谁死，就是穆北剑自己面对她也经常是魂不守舍，她的美不是妖媚，不是狐媚，就是那种勾魂夺魄，让人一下丧失自我的美，月青青也不轻易出门，出门必戴面纱，要不就会天下大乱。

    只要是个正常的男人都不可能抵挡住月青青的轻轻一笑，现在要四人到她的面前去取东西，开玩笑！不想活了么？什么？清心咒？没用，不是没人试过，试过的那个人跳海自杀了，说修真者可能会被淹死么？他跳海里后被海兽吃掉了行不行？我就不信弄不死他！

    就是听见她灵动清柔的话语声也会让人有朝闻道夕死可矣的感受，四人刚刚听她说了那么多都已经有点丧失信念了，现在让他们上前去拿东西，他们不敢。

    马车里月青青的声音忽然又传出来：“怎么？你们不来拿难道还要我给你们送过去？”

    这时青巾蒙面的西门生忽然开口道：“青夫人若是修为还在，刚刚一声叹息令我们神思不属时就是最好的出手机会，可惜她没出手，现在这么说明显是想不战而屈人之兵，说明传说青夫人受伤是真的，现在是没办法出手，我们还忌讳什么？”

    其他三人听了这话全都目光闪烁，不得不承认西门生说的有道理。

    西门生接着又道：“我身中剧毒后，身体溃烂，早就对女人没有什么心思，不如就由我来接青夫人的血玲珑。”

    马车里传来了一声咯咯的笑声：“还是西门生懂得怜香惜玉，知道我不方便，特来为我分忧，好吧，那就你过来拿吧。”

    这几声轻柔的话语若是意志力不坚定的瞬时就可以筋酥骨软，四人也是连咽了几口唾沫强稳住心神，西门生慢步走向马车，根据声音判断月青青正在第二辆车上。

    可是他刚刚站在马车车厢前，车厢里一道惊天的匹练飞出，势若长虹直接就贯穿西门生的身体，可怜西门生一个结婴的修仙者，竟然连内婴都没有逃出来就魂飞魄散，丧命当场。

    海门四骄从此少一个人，其他三人见到此景当时目呲欲裂，老大狄武艺嘶吼一声：“贱妇！你敢！”

    车厢内空灵的声音传出道：“杀人者，人恒杀之，我有什么不敢？”

    “好一句杀人者，人恒杀之。”天空里忽然又传出一个女人的声音：“你刚刚杀了人，现在你可以安心的被杀了，呵呵。”

    随着一声轻笑，一只几丈大小的手从天而降，正好把马车一行人全部笼罩其中，看样子是要一掌灭杀了这些人。

    月青青冷笑声起：“柳如烟？想不到我待你情同姐妹，你居然也要杀我？”话说着，车厢爆烈，车体四散而去，一根巨大的女人手指对着击下来的大手点了上去。

    来袭的女人咯咯笑着：“我为什么不能杀你？你待我情同姐妹？你哪个地方待我情同姐妹？我跟你在一起，每个男人的眼里都只会看见你，你明明每天蒙着脸，可还是跟一块臭肉似的吸引了那些像苍蝇一样的男人围着你转，你待我情同姐妹？我最喜欢的花凡尘除了看你，什么时候看过我一眼？可是你明知道我喜欢他，却从不为我说上一句话，你待我情同姐妹？你去死吧！”

    怒吼中巨掌又快了三分，同那只点上来的手指撞击在了一起，巨大的爆炸声瞬间冲破了在场诸人的耳膜，半空中一时间风云滚滚，狂风乱卷，从空中落下的柳如烟娇笑着说道：“青青姐受了重伤还有这样的一击之力，真的很不容易呢！“转眼脸一变又道：“可是今天无论怎样你都必须死！海门四骄，就知道你们这些臭男人杀不了这个女人，现在我来对付她，你们去把其他的人全部杀光。”

    说完就扔出了她的本命法宝，居然是一个精美的肚兜，肚兜上刺绣的群蝶戏鹃花，法宝一出，那群蝴蝶也像真的活了一样从肚兜上飘荡而起，眨眼变成了凶狠的毒娥，扑向马车众人而来。

    月青青从破碎的马车上站起来，外面的人这才可以看清楚她的样子，瞅着只有二十几岁，穿着云锦般的宫装，流云袖舞，长裙飘曳，一头黑发如瀑，随风漫卷，至于她的脸，没人能说清她的脸到底有多美，似花花不及其美之万一，似月月不及其明之一二，脸上的皮肤更是光嫩如轻水般吹弹得破，眼睛里闪耀着圣洁的光辉。

    她的秀眉轻蹙，双眉间仿佛有无尽的离愁，无尽的悲悯，剩下的海门三骄当时就看痴了，身体再也不能动弹一下，柳如烟瞥见三人神色不由骂道：“三头没见过女人的公狗，她再漂亮也是被穆北剑玩烂的烂货，孩子都生了两个了，现在你们去杀了其他人，尤其那两个孽种，事后我给你们找一千个漂亮的女人，都是处子之身，随便你们怎么玩，去呀！”

    海门三骄这才恢复神智扑奔马车而去，倒不是说一千个处子身的女人打动了他们，海门四骄也是名动一方的大佬，岂会为这样的庸俗动心，是柳如烟的喝骂荡涤了他们的灵台，使他们三个灵台瞬时空明，醒悟过来，想起了自己来这的目的。

    可他们刚冲到马车前，第一辆马车厢里忽然冲出两个相貌一样，衣着一样的老者拦住了三人的去路。
','    “玄真双煞？”铁劲男叫了一声，狄武艺骂道：“让他们变成光毛双尸。”嘴里说着，本命法宝就放了出去。

    在场的其他人也都放出法宝，战在一起。

    月青青也抖出了她的本命法宝，是三尺绢菱，随风一抖变成几丈宽窄，卷住柳如烟的毒娥，可是柳如烟也已经结婴六层，比月青青全盛时仅低不到四层，月青青现在有伤在身，想一下制住柳如烟是不可能的，双方打了个势均力敌。

    现场是六个结婴，一个金丹在混战，对于到处都是普通人的回元大陆来说，几个武功高强的练武者打起来都会让他们觉得惊天地泣鬼神，惊心动魄，此时七个在他们眼里就是神仙一样的人打在一起，简直可以用天昏地暗，日月无光来形容，七人真元之力扫过之处，寸草不生，护着马车的那些人更是全都身体爆烈而亡，到是后面的马车上跑出一个男孩和一个女孩，男孩穆麒麟，十四岁，筑基三层，女孩月影如，十六岁，筑基六层，正是穆北剑的一双儿女。

    姐弟俩一个姓穆，一个姓月，倒不是为了表明穆北剑和月青青家里如何的民主平等，而是修仙大陆就是这个习俗，男女婚嫁后生了男孩随父姓，生了女孩随母姓。

    姐弟俩本来不想离开母亲，可是月青青动手后就一再传音给两人，让两人快走，此时真元混乱，四处爆裂，两人的灵力护盾全都被击破，再不逃走就会有随时丧命的风险，月青青又再次传音：“你们快走，只有你们走了，为母才能安心！”

    姐弟俩这才最后回望了母亲一眼，手拉着手逃入旁边林内。

    他们一出现就被柳如烟发现了，柳如烟也不传音，直接大喊道：“你们三个留两个对付双煞，一个去处理那对孽障。”

    那边拼斗的五个人中，铁劲男的修为最低，他一生修为止于金丹，再怎么修炼也无济于事，此时夹在战斗中，其他四人的真元对他冲击很大，让他打起来有点畏手畏脚，听见柳如烟的这句话，立刻跟两个兄弟打声招呼就去追杀小姐弟俩了。

    这边的月青青听到柳如烟的安排立刻就急了，她知道柳如烟这样的喊叫就是为了扰乱自己心神，可看见铁劲男要去追杀自己的儿女还是目呲欲裂，一口精血喷到绢菱上，真元暴长，手中的绢菱如游蛇吐芯般迅捷无比滑向铁劲男，铁劲男一个猝不及防，被绢菱击中后背，狂喷一口鲜血，但只是扭头看了一眼就继续追击去了。

    柳如烟却趁着月青青这个分力的瞬间抛出了一柄青绿色小剑，小剑迎风变成三尺，剑光刹那间在月青青的脸上至上向下的划过，月青青绢菱倒卷抽中了柳如烟的前胸，柳如烟被抽飞的瞬间，肚兜法宝也撞中了月青青的颈部，那柄青绿色的剑也瞬间刺入月青青的左胸。

    柳如烟连吐了几口血才挣扎着从地上爬起来，走到脸已被劈成了两瓣的月青青身前：“其实我还是喜欢作一个小修时使用的这柄飞剑，这还是当年他亲手给我炼制的。”柳如烟的面庞浮现了少有的少女娇羞：“那时他也是个小修，灵力不足，这柄剑他整整炼了九天才炼好。”可是转瞬她的神色就浮现了一丝恶毒：“但他不该在这之前的山门大比中一直看着另一个外来的女孩子，所以他给我炼好了剑后我就直接用这柄剑杀了他，成为这柄剑下的第一个亡魂。”

    不管什么人听到这女人的恶毒恐怕都要倒吸一口凉气，可她依然自顾着说道：“但我在他的尸体前发过誓，我会珍惜这把剑，会一直把它随身携带不会抛弃，就算以后有了再好的剑都不会抛弃它。”说着深吸一口气：“事实上我真的对它很好，后来有了很多比它强千倍万倍，比它更好的剑我依然一直带着它，从没想过要扔掉它。”顿了下又忽然恶狠狠的说道：“但你知道他那次看的女孩子是谁么？就是你这个烂货！要不是你，我怎么会亲手杀了我喜欢的人？你看着我，你看着我啊！”

    但月青青至始至终都没看她一眼，她的双目中有红色的泪慢慢流出来，她目光的方向始终是一双儿女逃走的方向，直直的望着。

    柳如烟刚要再说什么，忽然看见月青青的元婴从她体内爬了出来，站在月青青的肩膀上，柳如烟有了不好的预感：“你要干什么？你要自爆元婴？你疯了么？”

    她的话音刚落，一声尖锐的鸣响声爆出，月青青的元婴自爆了，一辈子积蓄在体内的所有真元都在一瞬间爆发出来，月青青之所以让元婴爬出体外自爆就是让真元的杀伤力最大化，若是在体内自爆伤害范围就会减弱。

    方圆十丈内刹那间形成了一个空间黑洞，所有的东西都被吞进又被喷出，吞进时是完整的，喷出时已经化作了齑粉，柳如烟警觉的早，虽然逃出了十丈的必杀范围，但还是被炸成重伤摔倒地下，那边混战的四人就没那么好运了，瞬时就都变成了亿万个分子结构，可是爆炸结束后，柳如烟睁开沉重的眼皮居然又看见了月青青的元婴，一个两寸高，光溜溜的小美人，那个元婴看了下睁开眼睛的柳如烟就化作一道金光逃掉了，柳如烟手指着月青青元婴逃走的方向艰难的吐出几个字：“你居然，是，双元婴？”就又昏死过去。',10043,10128);
insert into ds_book values(null,10129,' 穆麒麟和月影如看了母亲最后一眼后祭出飞剑就逃向密林深处，也看见了随后追来的铁劲男，发现对方被母亲击伤后还是追上来，于是加快了飞剑的速度，倒是没看见月青青被伤害的一幕。

    铁劲男虽然被月青青打成了重伤，不停的咳血，但是没放弃追杀姐弟俩，只是随手扔嘴里几粒丹药就继续追杀上来，也不清楚身后发生的事情，但是那一声巨响他听到了，凭经验就知道是有人自爆了元婴，估计应该是青夫人这边的人支持不住，他紧盯住前面的姐弟俩同时放出了本命法宝月牙铲。

    月影如正带着弟弟御剑狂奔，身后忽然传来了呼啸的声音，回头见到一柄丈许长的月牙铲直奔俩人后心撞来。

    月影如脸色铁青，紧紧护在弟弟的身后，放出一个小鼎状的防御法宝挡住了月牙铲的一击，但她自己也被这一击震成了重伤，鲜血顺着她的嘴角飘飞而出。

    差距实在太大了，一个是筑基六层的小修，一个是金丹大圆满，正常情况下只要这一下铁劲男就可以让两个人灰飞烟灭，可是月影如放出的法宝实在强横，还附带有神魂攻击的属性加成，这一铲刚跟小鼎接触就被弹出去，小鼎同时泛起一圈金黄色的光晕，带着嗡嗡的声响，铁劲男狂奔的身形就是一滞，他感觉到那层光晕的涟漪似乎伤害到了自己的识海。

    而那姐弟俩趁着他这一滞的机会飞出去几十丈远，铁劲男感受了一下不再有什么附加的伤害后又追了上来，心里却想着：“不愧是万年古教，教里的小孩子都有这样的法宝，估计是件极品法宝，可惜对方修为太低，法宝的威力能被发挥出来的不足三层，这要是威力全部发挥出来，恐怕就凭这件法宝自己就不是对方对手，好了，这件法宝是我的了。”

    铁劲男一边想着一边又放出自己的月牙铲向两人攻去，月影如看对方再次袭来，知道自己不可能再挡住对方一击了，喊了一句：“弟弟，你先走。”就再次祭出小鼎。

    穆麒麟却紧跟在姐姐身后也祭出一件火轮，小脸虽然煞白但语气却很坚定：“姐姐，我跟你一起御敌，姐姐如果不敌，他们又怎么可能会放过我，我不会走的。”说完居然把火轮祭到了小鼎的前面：“姐姐，你已经重伤了，这下还是让我来挡。”

    月影如大惊失色，穆麒麟的火轮她知道，是件攻击性法宝，防御性不高，这一下撞上，弟弟的小命就保不住了，心里一急嘴上说不出话，只是把小鼎又往前挪了一下挡在前面。

    铁劲男开心了，这下又看见一件极品法宝，老天待我不薄啊，这俩小修以为有两件极品法宝就可以天下无敌了，居然来挡我，真是螳螂挡车，去死！

    就在他要发动雷霆一击杀死小姐弟俩的时候，他的神识忽然扫到一个人，离自己大概有七八丈远的距离，手里提着把破刀，正仰头看着打斗的三人，铁劲男扫到对方不过是个普通的武者也没当回事，继续发动攻击，一铲击下。

    底下的人正是姬武，看到三个在树林中飞来飞去的人姬武有点呆傻：“这特么的是人么？怎么会飞的？”

    这时月牙铲跟小鼎和火轮同时撞在一起，发出一声轰鸣，原来是穆麒麟眼看姐姐不可能再接下这招了，就催动火轮，跟小鼎同时迎向月牙铲，瞬间姐弟俩就像断线风筝似的飞出去，撒下满空喷溅的血雾。

    姬武呆呆的看着这一切：“这是什么功夫？好大的威力！”他的感叹声刚落下，月影如和穆麒麟同时跌落在他的身后，面如薄纸，呼吸急促，已经是命悬一线。

    铁劲男也落在姬武的身前，嘴角有血丝溢出来，穆麒麟的火轮刚刚也伤到了他，虽然这种伤害对他来说可以忽略不计，但因为先前被月青青打成重伤，此时穆麒麟的攻击还是让他又吐口血。

    姬武看看落下的铁劲男，又回头看看倒地的姐弟俩，不知道该怎么办才好。

    现在的情况是四人在一条线上，姬武在中间，姐弟俩在他身后，铁劲男在他身前。

    铁劲男看着姬武身后皱皱眉头：“居然没死，算你们命大，现在我看你们死不死？”说着一拳击出。

    他这一拳根本就没绕开姬武，不管姬武是什么人，他都打算一起杀了，他可不是什么善男信女，在他的眼里普通人就如同蝼蚁般不值钱，何况姬武恰好挡在他出拳的路线上，那姬武死了也是活该。

    月影如此时气若游丝，朦胧中居然又看见了姬武，她忽然笑了一下，想不到临死前又看见这个无耻到极点的家伙，一想到他教训那群劫匪时无耻的样子，月影如就哭笑不得，这时她看见了铁劲男击出的磨盘大的一拳，这一拳是要打她姐弟两人的，可是姬武恰好在这一拳首当其冲的位置上，月影如面上浮出了微笑，她无法喊姬武让他躲开了，只是想着黄泉路上有这么个家伙一起应该不会太寂寞吧。

    但让所有人都没想到的是姬武居然对着那咆哮而来的拳头一刀挥了出去，看见这一刀铁劲男都被气乐了：“你练过几天拳脚就以为能够横行天下了，居然跟一个金丹大修士硬碰？还用那样一把破刀，你的刀能切折我根毛我都算它是把刀，去死吧！”

    姬武毫无疑问的被一拳击飞，尽管被击中时身体冒了一团黄光好像是护甲什么的东西，但还是能听到他全身骨头寸断的咔擦声，可他挥出去的那一刀，准确的说是撇出去的那一刀，居然像切豆腐似的破开了铁劲男的拳头，若不是铁劲男的拳头被破开，估计姬武就被这一下打成泥了。

    可是那刀破开铁劲男的拳头后并没停止，而是继续旋转着飞行，把铁劲男斜肩带背劈成了两半，铁劲男的金丹刚刚从身体里掉出来就被刀芒绞成了虚无。
','    铁劲男可是到死都不相信这个结果，一个金丹巅峰的大修士，被一个普通的古武者给杀了，而且连金丹都没逃出来，连夺舍重生的机会都没有了，他只是愣愣的看着那把破刀，看着它接近自己，看着它破开自己的身体，又看着它回旋着回到对方手里，至始至终他只说了三个字：“你的刀……”他死的太不甘心了，他就没想过来到这个大陆会被一个古武者给杀掉，用的是那样的一把破刀，这是个什么大陆？

    月影如眼看着姬武被一拳击飞，撞向自己和弟弟，也无力阻挡，只能由着他的身体撞在自己和弟弟的身体上，然后三人又往前滑行了六七丈远，坠下了一个无底深的悬崖。

    这个时候离这里大概两千里的一处草原上，穆北剑也轰然倒地，他没想到自己刚到这里就遭到三个化神境的围攻，他接连破开了两个化神结界，可是无论如何也破不开这第三个流水界，结果就在这里他被人把他的元婴分身杀死，三魂七魄收走，气海丹田被毁，经脉寸断。

    同一时间的修真大陆玄真古教内，穆北剑的师弟陈晓东拍案而起：“什么？海门派有三个化神境的高手去回元大陆截杀师兄，还派出海门四骄去杀青青嫂子和侄子侄女？什么时候的消息？怎么现在才得到这样的消息？你们天机组是干嘛吃的？来人，通知长老处，我要去回元大陆接应师兄，让他们派人随后赶过来。”

    穆北剑是玄真教守教长老陆无根的大弟子，是下一任守教长老的顺位继承人，玄真教里，掌门不是最有权利的人，守教长老才是，所以历代守教长老的选拔培养都严谨苛刻，选出后由现任的守教长老亲自督教百年以上才经由长老处评审合格后任职，而现任守教长老就会放下所有俗物，专心修炼直至飞升，如果不是发生了生死存亡，事关本教灭门灭宗的大事他们就不会再出来了。

    穆北剑和二师弟陈晓东平时感情最好，曾一起出生入死过，都为玄真教立下过赫赫功绩，此时听见师兄身陷险地，他当然急了。

    海门教一直是玄真教的生死对头，但截杀对方的守教长老继承人可是近几百年都没有过的大事，所以情况传到长老处，立刻一片哗然，很快就组织了五个化神境的长老出发去回元大陆接应，同时派天机组的人抓紧收集情报探明海门教的动向。

    等陈小东发现穆北剑的时候，穆北剑已经变成了一具残废的肉体，魂魄被人收走了，分身被搅碎了，仅有经脉寸断的肉体躺在那里，双眼空洞的望着一切，陈小东抱着穆北剑嚎啕大哭：“师兄，师兄——”

    跟着陈小东一起赶来的人也被陈小东的性情流露感动，不禁潸然泪下，很快情报就纷纷传来：“青夫人一行先是在齐远国被七个元婴修士打伤，虽然七人全被青夫人斩杀，但青夫人也身受重伤，后由玄真教在回元大陆的分舵偷偷把一行人送至花间国蒙山附近，打算跟前来接应的穆北剑汇合，结果穆北剑刚刚进入回元大陆就被埋伏，而青夫人一行也踪迹皆无，只在梁家寨附近三十里处发现剧烈打斗，但打斗地方什么都没有了，周围五十里搜寻不到任何相关的人和信息。”

    陈小东痛不欲生：“海门教，我跟你们没完。”要不是其他人拉着，他恐怕立刻就要杀去海门教为师兄报仇雪恨。

    蒙山万古涯下，等姬武睁开眼睛时已经不知道是什么时候了，他感觉自己像块破抹布似的挂在一个树丫上，身上筋骨寸断，内脏也全部破裂，就这样他居然还能睁开眼睛，姬武自己都奇怪。

    他看了看眼前灰蒙蒙的天空，还想转头看一下四周，可是脑袋一动都动不了，脖子居然也断了，姬武这才怀疑自己是不是真的还活着了，可是全身巨痛的感觉还在，那就是说还活着。

    他努力的转了转眼珠，让视力可以到达更远的地方，果然在视线边缘的地方看见了跟他一起掉下来的姐弟俩，姐姐在下面，一根枯木枝贯穿她的肋下，枝头还挂着血肉模糊的东西，也不知道是她身体内的什么部位，弟弟匐在姐姐的身上，浑身血迹斑斑，看不出伤了哪里，也看不出俩人的死活。

    姬武这才发现自己所处地方的古怪，这里看不见天空，只能看到上面灰蒙蒙的一片，这里虽然也是森林，可是感觉少了森林里的很多东西，到底少了什么姬武也一时想不起来，想不起来他就不打算再想，头疼的像是裂开了一样，他也没法再想下去，他就觉得眼皮很沉很沉，于是又昏迷了。

    等他再醒过来时发觉自己已经躺在地上了，眼前是一个稚气帅真的男孩子面孔，看她睁开眼，男孩子很开心：“姐姐，他醒了。”

    旁边一个虚弱的声音说道：“醒了？那太好了，想不到我们都可以大命不死，你把这水拿给他喝吧。”

    姬武喝口水才感觉好点：“你们是什么人啊？”

    穆麒麟看着他笑着：“我们就是那三辆马车上的人啊，就是你帮忙打跑了劫匪的那个马车。”

    姬武眨眨眼：“你们都有这样的本事，哪里还用得着我去解围？”

    穆麒麟道：“不是的，武哥，我们当时还不能动手的，一动手就会有真元流动，就会被追杀我们的人查觉，所以你给我们解围了正合适呢。”

    姬武疑惑：“那你们到底是什么人呢？追杀你们的人又是什么人呢？”

    穆麒麟回头看了眼月影如，很明显是得到了月影如的同意后才说道：“我们是修真大陆的人，因为在你们回元大陆发现了一处七彩天然灵泉，母亲带我们来提高修为，结果就在灵泉附近又发现了极品灵草血玲珑，我们带着血玲珑打算返回修真大陆，可是不知道谁泄露了消息，有人来杀我们抢夺血玲珑，后来是我们教内的一个长辈安排我们由一些普通人掩护着逃出来，但还是在这里被拦住了，母亲让我跟姐姐先走，她挡住了敌人，也不知道母亲现在怎么样了？”

    在说到母亲的时候，穆麒麟声音越来越小，后来就完全听不见了，他的眼里也蓄满了泪花，是的，在那样的情况下月青青不可能逃掉的，所以结果可想而知。
','    姬武并不知道后来发生了什么，只是猜想可能遇到了更厉害的对头，于是安慰道：“放心吧，吉人自有天向，我们这样子都没事，你母亲也不会有事的。”

    穆麒麟脸上又重新有了阳光的样子：“嗯，武哥说的也对，只是我们困在这里也不知道该怎么出去，我和姐姐都是修真者，平时不吃东西也没事，可姐姐说你是凡人，不吃东西不行的，这里又根本就没有啥吃的东西，你会不会很饿啊？”

    他这一说姬武真觉的很饿了，也不知道是多长时间没吃东西了，腹内空空，就听穆麒麟又说道：“其实我的戒指里有吃的东西，只是我也受重伤了，灵元力调用不了，打不开戒指。”

    姬武有点懵圈：“什么戒指里有吃的？是戒指糖么？对了，你跟你姐姐都叫什么名字啊？我还不知道呢。”

    穆麒麟愣了下：“戒指糖是什么啊？我说的是储物戒指，喔，对了，我还没告诉你我跟姐姐的名字呢，我叫穆麒麟，我姐姐叫月影如，可惜你脖子不能动，要不你可以看看我姐姐的，我姐姐好漂亮的，别人想要看都要给我灵气石才可以呢，武哥你看就免费好了。”

    这小子还没等怎么样就露出本色了，先把姐姐卖出去了，估计平时有比他大的男孩子跟他提这样的要求没少被他勒索，他也用这样的方法骗过不少东西才对。

    旁边月影如用虚弱的声音骂道：“麒麟你就不能长大点么？都十四岁了还是这么不着调，等我们回去一定让父亲责罚你，咳咳”话说到这里月影如剧烈咳嗽，嘴角溢出血来。

    穆麒麟赶紧奔到她身边：“姐姐你没事吧？你的伤口还没处理就不要再说话了，是我不好，我以后再也不惹姐姐生气了好不好？”

    月影如轻轻点头：“好了，你赶紧修炼恢复功力，只要你能调动一丝灵力打开储物戒指就好了，那里有丹药，可以很快治好我们的伤。”

    穆麒麟点头：“好的，那我去那边打坐了，你们有事就喊我。”

    月影如点下头，看着他走到几丈远的一块白色大石头上坐下运功，又扭头看了下姬武：“不好意思啊武大哥，是我们连累你了。”

    姬武苦笑一下：“是我自己要管闲事的，跟你们无关，对了，你伤到肺了吧，说话会费劲，还会加重你的痛苦，还是先不说了吧。”

    月影如虚弱的声音道：“其实小声说也没事的，但是你伤的真的很重，就算是我恢复灵元力也不知道能不能治好你。”

    姬武努力想用眼睛看到月影如，可是怎么努力也看不见，知道她就躺在自己身边，鼻子里甚至都能呼吸到她的芬芳，可就是看不见人，刚刚听穆麒麟夸自己姐姐漂亮早就让他心痒痒的，可他的脖子早让穆麒麟用木棍给固定住了：“放心吧，只要死不了就有办法。”最后他只好这样说一句表示应答。

    月影如轻声道：“我想教你修真功法，这样可以修复你的身体，但是我们的功法不外传的，想要学习就要加入我们玄真教，不知道你愿不愿意啊？”

    姬武又苦笑了一下：“你就算想收小弟也要看好人啊，眼看着我就是个废人了，你居然还逼着我入你的教，是不是有点乘人之危呢？”

    月影如被他逗的想笑，可是立刻就咳了起来。

    姬武赶紧又说道：“别激动哈，我就是这么一说，其实我跟你说啊，我老早就听过很多神话故事，一直都渴望有机会可以作神仙的，现在机会来了我当然不能错过，不就是入教么，就是让我当和尚我都同意。”

    月影如虚弱的说道：“好吧，那你现在全身放松，用鼻子自然呼吸，双目视线集中在鼻前四尺处……”很快就把一套呼吸吐纳的功法说完，姬武按照她说的开始呼吸，集中注意力，吞新吐陈，试着控制进入的气体根据月影如指导的方向流动，很快就进入状态。

    月影如侧着头看着姬武的脸庞，她实在想不通这是个什么样的人？身上到底有什么样的秘密？怎么可能中了金丹修士的全力一击而不死？就算一千个普通凡人放一起，铁劲男也可以一拳全部打死，他不但没死，反而杀了铁劲男，看来他用的那把刀也很有名堂的，能劈开铁劲男的一拳那绝对不是姬武的力量，就是这把刀的力量，这到底是把什么样的刀啊？

    月影如就这样想着这些所有让她好奇的事情慢慢睡去了，四处特别安静，静逸的让人感到害怕。',10043,10129);

insert into ds_book values(null,10130,'夜色露出獠牙，吞噬星空。

    雷声大作，电闪如蛇，磅礴大雨铺天盖地而下。

    乔智浑身湿漉漉的走入五星级酒店大厅，惹来服务员的困惑和蔑视。

    保安挡住他的去路，询问他的身份。

    他知道自己现在很狼狈，像只丧家之犬，“我是来找我老婆的，请帮我打个电话，确认一下。”

    乔智面色灰暗，内心低吼，我其实是来捉奸的！

    在服务台打电话确认，保安才允许乔智走入电梯间，帮他刷了卡。

    酒店8868房间，穿着睡袍，眼神迷离，满是醉态的女人，靠在门侧，嘴角扯着不屑地弧度望着自己。

    女人唇薄鼻挺，眼眸淡淡一瞟，溢出的光彩，仿佛能将人溶了。

    噬魂销骨，不过如此。

    刚刚结婚三个月的妻子陶茹雪，半个小时之前给自己突然发了一条地理定位，说有个“礼物”送给他，需要他亲自来到酒店验收。

    陶茹雪身高在一米七左右，标准的九头身，五官立体宛如艺术大师鬼斧神工之作，肌肤赛雪，宛如白玉般似能反射光彩。

    “你来啦！这是我给你送的大礼，请笑纳。”

    “贱货。”

    乔智气得浑身直打哆嗦。

    陶茹雪身后站着一个男人，手里拿着红酒杯，穿着黑色的睡衣，金丝眼镜背后的一双眼睛，挑衅般地凝视着自己。

    男人叫做韩斌，和陶茹雪是高中同学，琼金市现在最有名的年轻外科专家，标准的上层人士。

    没错，妻子送给来的礼物是一顶绿油油的贝雷帽。

    “乔智，你现在彻底死心了吧？我最瞧不起你这种没有尊严和底线的人。你是疯了吧，一个厨子竟然想癞蛤蟆吃天鹅肉。出卖自己的灵魂，觊觎、偷窃我陶家的产业。你别做梦了，我一辈子瞧不起你。”

    “无论你再怎么瞧不起我，你今天必须得跟我回家。”

    乔智压抑着怒火，如果自己此刻认怂，只会输得彻底。

    一个憋屈的声音告诉自己，不要走，不能走！

    战士即使牺牲，也得死在沙场上。

    韩斌站在陶茹雪的身前，语气粗沉地说道，“我和茹雪两情相悦，如果不是你从中干扰，现在我们已经是夫妻。虽然破坏别人的家庭不对，但对我们而言，你是第三者，所以请你自己主动退出，我愿意给你一笔钱，你开个价码吧！”

    啪，一声清脆的响声，干净利落地狠狠扇在韩斌的脸上，韩斌的镜架被打歪，揉了下鼻子。

    两道红线蜿蜒，竟流血了。

    这混蛋！

    韩斌眼中满是恶毒之色。

    乔智怒道：“知道什么叫骗婚吗？你妈早点告诉我，你喜欢在外面养野鸭子，我根本不会跟你结婚。”

    啪，又一声清脆的响声，这次是从乔智的脸上传来。

    陶茹雪被气得浑身发抖，眼睛痛红，手还高高扬起，怒声道：“如果不是迫于我妈的压力，我怎么会跟跟你结婚？还有，我的心里只有韩斌，你既然不同意和平结束这段感情，那我们从现在开始分居，然后走法律程序吧。”

    “就算要走法律程序，那也得等明天民政局上班，今晚你必须跟我走。”乔智亮掏出手机，狞笑着威胁，“你们想身败名裂吗？想的话，我现在就打贵台的二十四小时热线，让他们安排记者来采访一下。”

    “卑鄙的家伙！”韩斌愕然望着乔智。

    他是著名的外科手术专家，一旦出现这种绯闻，近期想要晋升肯定会受到影响。
','    至于陶茹雪是琼金电视台新闻栏目的主持人，外界都不知道她已经结婚，如果她的家庭私事被曝光，事业极有可能受到影响，彻底完蛋。

    这小子难道不知道家丑不可外扬，想让全市人民知道他被绿了吗？

    “还愣着做什么？赶紧穿衣服跟我走吧！”乔智意识到自己赢了，恼、怒，又有种说不出的痛快。

    陶茹雪无奈望着韩斌，“我们都高估了他的自尊心！只想吃软饭男人，根本没有任何底线。”

    韩斌咬牙切齿地望着乔智，原本以为气走乔智，与陶茹雪能够春宵共度，但低估乔智的决心和无赖。

    作了无数思想工作，韩斌叹气道：“你走吧，回去给我打电话，报个平安。如果他敢对你动粗，无论在哪儿，我都会立即赶到。”

    乔智意识到这两人可能是故意要激怒自己，演了一出戏。

    孤男寡女穿着睡衣，共处一室，鬼知道他们在自己抵达之前，有没有互诉衷肠，卿卿我我，发生什么！

    这贱人还真是坏透了，哪有这么折磨自己的丈夫？

    回想当初，他的理智，也是被狗血给浇懵了！

    他愿意当陶家的女婿，除了偿还父亲欠下的人情债之外，还有一个重要原因，陶茹雪本身出众，是琼金一枝花，知名度高，追求者众多。

    她的一举一动都被公众关注着，穿过的衣服都会成为琼金女人圈的热销品。

    能娶到这种女人，是所有男人梦寐以求的荣幸。

    何况她不只是美，而且家底也殷实。

    母亲陶南芳是琼金赫赫有名的餐饮界企业家，名下的淮南菜餐馆连锁，不仅遍布省内，而且在国外也有多家分店。

    原本以为娶到白富美，是种幸福，未曾想是麻烦的开始。

    乔智娶了陶茹雪，两人不仅分房，而且陶茹雪对他的态度越来越糟糕。乔智几次想要主动接近陶茹雪，都被她直接给拒绝，还有几次动手，甚至抓破了乔智的脸。

    原本以为陶茹雪是觉得自己很陌生，等接触一段时间便能破冰。

    后来乔智才知道，臭娘们在外面早就有相好的。

    两人一前一后坐入出租车，司机不时通过后视镜望向后排两人。

    他发现这对从酒店出来的这对男女关系很诡异。

    女人长得很好看，跟明星似的，却只穿着睡衣。

    男人浑身湿漉漉的，像刚从水里捞出来的落水公鸡，眼睛却是雪亮。

    接下来的对话，让司机三观崩毁。

    “乔智，你都捉奸成功了，为什么还能忍着……果然，你就是只缩头乌龟。”

    乔智面色铁青，谁他妈的想要捉奸，还不是担心你出事了？

    如果真知道你和野狗在一起，他绝对不会一个人来，肯定要带着你妈、你姐、你爸，你姥爷姥姥，甚至还得直播，让全地球的人，都看看你刚才那嚣张、浪骚的劲头！

    “没错，我就是特么世界独一无二的忍宗大弟子！我贪图你陶家的财产，我要的可不是咱俩婚后那可怜的一半财产，而是要整个淮香集团收入名下。你的这点小挫折小花招，根本撼动不了我，阻止不了我，所以想踹了我，跟你的情郎结秦晋之好，那就是做梦！”

    乔智故意刺激陶茹雪，心想，你不是说我冲着你的家世吗，行，我就专门拿这个来刺激你。

    “你别做梦吧，我妈没那么傻！”

    “是吗？你妈好像更喜欢我这个拿厨刀的粗人，而不喜欢那个拿手术刀的斯文败类。”

    “呵呵，我妈喜欢你，你怎么不娶她？”

    “嗯，如果她愿意的话，我当然愿意娶她，我眼睛里只剩下钱，谁给我钱，我就娶谁！”

    “你你你……这个臭渣子！”
','    “那也比你强，你这个浪蹄子，水性杨花，母狗、公交车、潘金莲。”

    司机听得目瞪口呆！

    两人好像是夫妻，虽说夫妻吵架是常事，但这么吵的闻所未闻。

    还有，信息量实在太大，简直令人难以置信。

    乔智爆粗口，那是受到强烈的刺激。

    换做正常人，遇到老婆跟另外一个男人合谋，故意用红杏出墙刺激自己，神智都得混乱，拿刀杀人的心恐怕都有，至于口齿上刻薄、毒辣一点，那已经算是够收敛了。

    人在暴怒当中，失了智，骂脏话的时候，谁还讲究什么正确的价值观、世界观！

    当然是，骂得怎么爽，怎么来！

    咆哮过，是死一般的宁静。

    车窗外，炸山般的雷声，蛇信般的电芒不断。

    抵达所住的小区，陶茹雪半天不下车，乔智以为她又闹别扭，过去一看，或许是因为之前喝了酒，现在酒意上涌，她竟然直接昏睡过去。

    无奈，只能将她拦腰抱了出来。

    好不容易，进电梯，按开指纹锁，嘭地一脚直接踹开半开的房门，再将软弱无辜的陶茹雪，故意重重地摔在松软的床上。

    刚才牙尖嘴利的女人，现在变成了一滩水，没有半点反应。

    乔智也累得气喘吁吁，躺在床上休息，感慨刚才是经历了什么屁事儿！

    陶茹雪翻了个身，手臂搭在乔智的胸口，吐气如兰，轻声呢喃：“好热，好渴。”

    乔智挣脱陶茹雪的手臂，掏出手机，拍下视频，冷笑：“多留个把柄，将你的丑态拍下来，看你清醒的时候，该如何面对。”

    仔细想想，乔智删掉了这段视频，她和自己是名义上的夫妻，家丑不可外扬，如果视频泄露，被太多人知道，只会嘲笑自己无能无用罢了。

    只是短短的走神功夫，未曾想，床上的陶茹雪身体扭成一团，原本就只穿了一件睡衣，竟然拉扯到两边。

    乔智呼吸加重，心里瞬间蹦出个魔鬼。

    它用恶毒的话语，刺激自己，你是不是男人，如果是男人的话，那就现在、立刻、马上便征服她？

    不过，现在去碰陶茹雪，那算是趁火打劫，不是正人君子所为！

    还掺杂着诡异离奇的念头闪现：抵达酒店的时候，陶茹雪跟韩斌在酒店已有一段时间，两人如果发生什么，现在自己再接棒，陶茹雪最后有了小孩，那这小孩就究竟算是谁的？

    特么的，这都是什么跟什么？

    乔智到厨房自己先喝了一大杯凉水，然后再倒了一杯喂陶茹雪喝了几口。

    怀中女人的面色不对劲，雪白中透着妖冶的红，浑身发烫，柔若无骨。

    乔智喘息如牛，积蓄了数月的悲闷情绪，宛如大河决堤，而陶茹雪也极为配合着他。

    玻璃窗外，电闪雷鸣，帮着掩盖这满屋和心里的乱。

    不对！

    他迅速发现问题。

    陶茹雪不仅仅是喝了酒那么简单，她可能还吃了特殊的药物，难道那狗一样的韩斌给她吃了什么？

    ……

    暴雨还在持续，乔智从报复性的情绪里，慢慢回落。

    空虚、懊恼，还有些怜悯……

    最终，乔智做了个奇怪的决定，拦腰抱起了她……',10044,10130);
insert into ds_book values(null,10131,'嘭”，白色如玉的浴缸，溅出水花！

    冰凉的水浸没陶茹雪的身体，她被水包围，吸入一口水，呛到肺部，从迷幻朦胧的世界回归现实。

    有人要谋杀自己吗？

    她张开双臂，努力将头浮出水面，看见极其厌恶的那个人，用冰冷的眼神望着自己。

    “好好清醒一下吧！”

    花洒打开，冰冷的水柱，朝陶茹雪的脸狂喷。

    乔智没有做出更不理智的行为，而是将她无情地扔入浴缸，再用冷水将她浇醒！

    前所未有的耻辱……

    乔智从卫生间消失，陶茹雪艰难地从浴缸里爬出。

    水珠顺着脸颊往下流，刘海软趴趴地贴在额头，像水鬼一样从厕所摸到床前的桌子上，抽了一块洗脸巾把水擦干净，湿湿的刘海也被撸上去，露出一张明艳的脸蛋。

    换上了绸质睡袍，房间内已经没有那个人渣的影子。

    体内的那团热气烟消云散，精疲力竭，她倒在床上，昏沉地睡去。

    直到窗帘被拉开。

    温和的光掀开眼皮，骨头如同散架，头疼欲裂。

    乔智站在帘布旁，陶茹雪死死地盯着乔智。

    “你别用那样的眼神看着我，我没对你做什么。男人虽然是下半身动物，但也不是所有的女人都能引起欲望，像你这样的女人，还没法引起我的兴趣。”乔智面无表情地打击对方。

    “我有几句话想跟你说，你能不能靠近一点？”陶茹雪嘴角带笑说道。

    他刚靠近两步，突然感觉到杀气，陶茹雪将埋在枕头下多日的水果刀取出，朝自己的胯下扫过来。

    “好险！”

    乔智背脊冒着虚汗，下体凉飕飕，刹那间也不知中招没有，“你疯了吧？”

    疯婆子谋杀亲夫的想法多么深重，幸好这段时间保持克制。

    “臭渣子，我阉了你。”陶茹雪是动真格的，幸好没有专业练过武，招式没有章法。

    乔智瞄准机会，探手按住她的手腕，陶茹雪另外一只手狠狠地扇向他的右脸。

    这贱人抽自己耳光，是抽上瘾了吧？

    乔智又被扇了一记耳光，动了真火，怜惜的情绪一扫而空，用另一只手扭住她的手腕，将她的身体挤在墙壁上。

    后背撞击冰冷的墙壁，陶茹雪疼得泪水流了下来。

    乔智正心软，突然感觉胯下发寒，陶茹雪抬起膝盖顶上来，乔智只能用双腿夹住对方的细腿，将陶茹雪死死地顶在墙壁上。

    陶茹雪咬牙切齿，狠狠地用头去撞乔智的下巴，乔智被顶得眼冒金星。

    他也狠狠地回击，砰，鸡蛋碰鸡蛋，脑门磕脑门，两人都不好受，就看谁更能忍痛。

    乔智赢了，他不再怜香惜玉！

    陶茹雪没想到乔智这么凶残，别提把自己当女神对待，就是连女人都算不上，悲从中来，呜呜地痛哭起来。

    “你放开我！”

    陶茹雪变聪明，她知道对方是男人，力气比自己大，嘴巴还特别贱，继续闹下去，只会自己吃亏。

    “放开你，没问题，但你要答应我，不要再发神经。”乔智皱眉，水果刀已经被他摘下，扔到远处。

    “好的，我答应你。”

    陶茹雪目光满是冰冷之色。

    乔智缓缓松开手，陶茹雪嘴角浮出一抹凄美的笑容，“你等着离婚吧，我已经下定决心，我不想继续演下去了！”

    乔智仰天大笑，“演？昨天你那样子别提多主动了。”他拉开自己的衣衫，指着胸口的红痕，“昨晚你不知道当时多么的饥渴。这就是证据，我已经拍照了。当然，我知道，你心里肯定把我幻想成另外一个男人。”

    “另外，昨晚我去之前，你跟韩斌喝了酒的吧？你难道就不怀疑，韩斌给你喝的酒有问题吗？不然，为什么你在出租车里就没意识了，回家躺在床上还嚷着自己口渴，特别热！”

    陶茹雪又气又怒，内心却在翻腾。

    自己的酒量挺不错，昨晚只喝了两三杯红酒，即使是喝的是假酒，也绝不可能那么容易醉倒。
','    “还有，记住不是我求着娶你，而是你妈求着让我娶你。她觉得事业如果落到你和你妹两个败家娘们手里，绝对会破产。如果不是我爸受过你外公的恩惠，我怎么可能接受这个要求？”乔智冷笑道，“另外，你妈是对我很好，但其实她有自己的野心和算盘，不过是利用我，帮你们陶家守家业。”

    陶茹雪大脑嗡嗡作响，哪有功夫琢磨乔智的话，满是乔智提及韩斌给自己下药的事情。

    她心情混乱不安。

    韩斌会那么做吗？

    她和韩斌相识那么多年，确定恋爱关系也就在数月前，两人保持一道清白的界线。

    若不是自己的闺蜜从机场拍下韩斌与一个年轻女孩相拥的画面，陶茹雪或许还会坚持跟韩斌在一起。

    陶茹雪因为失恋，心如死灰才会接受妈妈的要求，与乔智结婚。

    她当时作出这个决定，既是想让自己尽快走出伤痛，也是希望刺激韩斌。

    但韩斌前不久又开始联系自己，明明知道自己已经结婚，还纠缠不清，甚至还很配合设计昨晚红杏出墙的戏码。

    陶茹雪不敢往深处去想。

    “我去上班了！”

    乔智见陶茹雪发呆，决定不再与她继续纠缠。

    陶茹雪距离上班还有一段时间。

    她没有搭理乔智，坐在镜子前。

    拉开化妆盒，她先是吃惊，随后发出撕心裂肺的猪吼声！

    迪奥红管999、纪梵希小羊皮304、YSL小金条21号、兰蔻哑505朱砂红、香奈儿磨砂黑管112、雅诗兰黛520全部被掰断，干净利落地成了两截……

    近百支口红全军覆没！

    口红就是女人行走的鸡血，动什么都不能动口红。

    想要摧毁一个女人，就折断她所有的口红。

    他太狠毒了！

    “你弄断我多少支口红，我会弄断你多少根骨头，此仇不报，誓不为人。”

    ……

    位于九华街的淮香酒楼是淮香餐饮集团的旗舰店，每年都有无数人慕名而来，只为品尝味道正宗、传承悠久的地道淮南菜。

    乔智和陶茹雪的婚事没有对外公布，将他安排在淮香酒楼，丈母娘嘴上说是锻炼自己，事实上是不想让自己那么轻松的“吃软饭”。

    他虽然厨艺精湛，但没在正规的酒楼熬炼过，也琢磨着将这段经历当成财富。

    但这只是过渡，他自己肯定要独立地做出一番事业。

    至于跟陶茹雪说，贪图她的家财，那只是戏言。

    他自认为有手有脚有真才实学，不仅有长远的目标，而且还有为之努力奋斗的计划。

    现代厨师是要考中式烹调师职业资格证书，等级分为五个，分别为初级、中级、高级、技师、高级技师。

    除此之外，初级厨师之前有学徒，高级技师之后有大师、宗师和国手的称号。

    乔智没有参加过证书考核，因此他的身份只是个学徒厨工，连初级厨师也不是，在后厨的话，主要工作是洗碗、洗菜，人手实在忙不过来，最多让你配个菜。

    像淮香酒楼这种级别，乔智连配菜的资格也不具备。

    “喂，新来的，赶紧去洗盘子。”说话的名叫包通，是一名初级厨师资格证拥有者，名义上是乔智的师父。

    包通并没有认可乔智是自己的徒弟，所以一般都用“新来的”称呼他。

    乔智也不生气，笑了笑，将洗好的碟子放在消毒柜里，他瞄了一眼包通的刀工，忍不住暗叹了口气，这家伙刀工明显不行。

    文思豆腐是极其讲究刀工的一道菜，食材倒是放在其次。

    包通用切土豆丝的手法来切豆腐，肯定不行。

    “看什么看，想偷师吗？”包通瞪了乔智一眼，“先洗半年的盘子，再想着碰刀，这是规矩！”

    一个年长些的厨师走过来，见包通分心，皱眉道：“文思豆腐要好好弄，是个重要客人点的，如果有一点差错，唯你是问。”

    包通被批评，心里不舒服，将怨愤全部撒到乔智的身上，拉开消毒柜，佯作检查一番，怒道：“新来的，这些碗没按照指定的要求洗，给我全部重新洗一遍。”

    乔智作为忍宗大弟子，自然不会因此暴怒，重新将碗取出来，堆到了水池里。
','    郭燕也是个学徒，低声说道：“包胖子实在太过分了，故意找你茬呢。”

    乔智淡淡一笑：“恶人自有恶人磨，等会有人收拾他呢。”

    郭燕见乔智年龄跟自己差不多大，长得人高马大，心态还这么好，对乔智的印象其实挺不错，“包通仗着舅舅是酒楼的经理，所以在后厨一向横行霸道，你拜他为师，真心倒霉哩。”

    郭燕比较年轻，样貌很清秀，若是放在其他地方，只能算是中上之姿，但是放在后厨这和尚窝里，则是一道魅力的风景。

    尽管他和郭燕都是学徒，还是有差别待遇，累活重活都是自己做。

    乔智耸肩笑道：“他一直喊我新来的，也没当我是他的徒弟。”

    心里却是在想，就凭他那三脚猫功夫，哪配当自己的师父？

    话音刚落，主厨那边传来怒骂声，“文思豆腐是谁切的啊，筷子一般粗，能下锅吗？这种水平，也能在淮香酒楼后厨工作？”

    包通发现大家都盯着他，连忙低下头，面红耳赤。

    郭燕对乔智比了个大拇指，“厉害了，你竟然能预知未来。”

    乔智的这点眼力还是有的，想要做一份极品文思豆腐，以包通的刀工根本不足够支撑这道菜。

    如果是平常客人，主厨可能睁一只眼闭一只眼，将就一下便可以，但今天接待的显然不是普通客人。

    包通被骂得面红耳赤，只能继续重新准备材料，再次送到主厨那边，依然被否认。

    “真是特么的饭桶，除了混日子吃白食拿高薪，还有什么本事？”淮香酒楼共有三名主厨，这名主厨资历最身，脾气最烈，名叫龚发超。

    当下面的帮厨水平不够，就得主厨自己来备菜，但是龚发超前不久手受了伤，对掌勺没有影响，但文思豆腐这种精细刀工，却是没有十足把握。

    只能硬着头皮上了！

    龚发超暗叹了口气，拿起刀开始切豆腐，只是两三刀之后，便觉得水准不够！

    “今天祥和厅来的客人，是赫赫有名的美食家徐鹤翔老师，他的评点对我们淮香酒楼有着重要意义。文思豆腐是淮南菜系的招牌菜，如果今天弄砸了，不仅是我的耻辱，更是影响淮香酒楼的名声。”龚发超叹气道，“其他两位主厨都不在琼金，远水救不了近火，我的手前不久也受伤，所以没法切出最佳效果。现在只能征询大家，谁能切出合格的文思豆腐，不然，我们只能放弃，今天这道菜就没法上桌了！”

    龚发超一番话刺激着大家的心脏，这是一个挑战，何尝不是一次拔份的机会？

    作为一名厨师，谁不想崭露头角？

    “我想来试试！”举手的名叫陈明，是中级厨师，也是龚发超的弟子。

    龚发超不动声色，表示默认。

    陈明开始切豆腐，大家都在感慨陈明的基本功扎实，不愧是师兄。

    “陈师兄的刀法好像很厉害。”郭燕眼中满是钦佩之色。

    力道还是绵了一点，下刀不够果断，断丝会多，乔智心中暗想。

    “你觉得陈师兄能行吗？”郭燕道。

    “或许吧！”乔智模棱两可地回答。

    郭燕对陈明很佩服，见乔智不拍马屁，不满道：“你口气倒是不小，连陈师兄的刀法都看不上。”

    乔智笑了笑，没有跟郭燕争辩。

    郭燕将乔智当成竞争对手，见他如此眼高于顶，便走到包通身边，添油加醋地将刚才乔智瞧不起他的话，转述一遍。

    “乔智实在太过分了，他刚才还没等你开始切文思豆腐，就诅咒你，说你肯定没法成功，结果你只差了一点火候，结果他幸灾乐祸地嘲笑你呢。”

    包通隔空狠狠地怒视乔智，心想你这个臭小子，自己没什么本事，竟然还敢嘲笑其他人。

    感受到扑面而来的杀气，乔智被郭燕弄得也是无语。

    没想到郭燕竟然这么阴毒，原本以为她是个女的，自己处处让着她，重活累活自己总抢着干，功劳记在她身上。

    没想到她转身就扎自己一刀，还真是两面三刀，蛇蝎心肠。

    郭燕并不觉得自己阴险，觉得乔智的情商太低，人在职场，要学会察言观色，见人说人话，见鬼说鬼话，而且还得讲究职位高低。

    乔智现在还是个实习厨工，在私下里对前辈不尊敬，这犯了大忌。

    自己和乔智是同一批进入后厨当学徒，按照常理，是得淘汰掉一名。

    乔智如果离开，郭燕留下来的概率就更大了。

    陈明将南豆腐切了三分之二，龚发超情绪失落，摇了摇头，“不行！文思豆腐需要把豆腐快速切成丝，像头发丝般细，放在水里轻轻搅动要根根分明，挑起来也要不断。你看，你的豆腐丝虽然够细，但断了很多！”

    陈明额头满是汗珠，面色惨白。

    他的失败，也让大家望而却步。

    负责祥和厅的服务员来催促，“龚主厨，请问文思豆腐准备好了没？徐老师点名等这道菜呢。”

    龚发超暗叹了口气，“恐怕要让徐老师失望，我们今天没法提供这道菜……”',10044,10131);
insert into ds_book values(null,10132,'最终文思豆腐这道菜还是被作废。

        对于追求名声的厨师而言，没有把握的菜，情愿不去碰，不去做，龚发超显然对自己的名声很敬畏。
    
        无论哪一行，有敬畏之心的人，才能获得成功。
    
        乔智暗叹了口气，一家淮南菜餐馆，做不了最经典的菜肴，是何等讽刺和悲哀。
    
        难怪丈母娘陶南芳会如此急切地寻找淮南菜大师，随着酒楼越来越多，她发现阻碍发展最大的障碍，不是资本，而是人才。
    
        “不好，祥和厅那边出事了。”传菜的服务员面色仓皇冲入。
    
        龚发超知道徐鹤翔在那个屋子，将油手在厨师服上随意地擦了擦，赶紧跟服务员招呼道：“带我去看看。”
    
        乔智放下盘子，被包通发现，他狠狠地瞪了乔智一眼，“想偷懒吗？给我在这边待着。”
    
        包通凑到陈明身边，大声说道：“明哥，乔智整天就想着玩，完全没有一点吃苦耐劳的精神，根本不适合当厨子，我看还是让他趁早走吧。咱们后厨要培养有潜力的人才，我看那郭燕虽然是个女孩，挺不错，就留她吧。”
    
        陈明对乔智也看不大顺眼，虽说做事很勤快，但性格似乎比较内向，不像郭燕整天在自己身边，“明哥长、明哥短”的讨好着，“晚点我跟人事那边反馈，给他结账，让他趁早滚蛋。”
    
        包通暗爽，朝乔智瞄了一眼，心中暗想，臭小子，敢跟我作对，看我整不死你。
    
        外面已经乱作一团，祥和厅内徐鹤翔已经瘫在地上，双目紧闭，嘴角冒着白色的泡沫，其他人都不敢动他。
    
        他的一个朋友在打120，龚发超走过去，想要问清情况，“我是酒楼的主厨？”
    
        “你就是主厨啊，我还正想找你呢！”高大的男子径直朝龚发超走过去，直接掐住他的脖子，将他顶在墙上。
    
        “杜先生，你别冲动啊！”身边有人赶紧将他给拉到一边。
    
        “你就是今天的主厨吗？徐老师吃了这顿饭，才会突然昏厥，我怀疑是食物中毒，你们这家店是黑店，用的材料肯定有问题。”杜刚是徐鹤翔的朋友，也是今天饭局的东家，所以徐鹤翔吃出问题，他责无旁贷，“将这桌菜给封存起来，我要找专业机构进行检测，我怀疑食物有问题。”
    
        龚发超忍住剧痛，赔笑道：“徐老师在我们酒楼出事，我们酒楼肯定有责任，但你说我们的菜有问题，我可以对天发誓，绝对不可能。淮香集团的食材、作料都有长期合作方，他们都是资质过硬的渠道，而且我们每天收货时都有专人检查。而且，如果真有问题，在座诸位为何只有徐老师出现症状呢？”
    
        杜刚见龚发超还敢嘴硬，朝他踹过去，被人再次拦住。
    
        他怒不可遏地说道：“徐老师的身体一向很健康，吃饭之前没有任何问题，我有理由怀疑是菜被动了手脚。”
    
        救护车到了，警车也抵达。
    
        连市电视台新闻频道的记者也闻风而来。
    
        出了这么大的事情，有新闻性，报道之后，收视率肯定高。
    
        ……
    
        陶茹雪接连受到打击，加上没休息好，浑身没力气。
    
        刚起床冲了个澡，此刻对着镜子化妆，手机屏幕突然亮了起来，是妹妹陶茹霜打来的电话。
    
        小三岁的妹妹，简直就是自己的天敌，平时两人见面就掐，别提互通电话了。
    
        “什么事？”
    
        “你反应也太迟钝了吧，家里闹出这么大的事，竟然还能保持冷静。”
    
        “赶紧说，不然我挂电话了。”
    
        “淮香酒楼弄出人命了。一名客人吃得食物中毒，现在已经进医院了。妈还在住院疗养，身体不稳定，这件事肯定要瞒着她，电视台已经有记者过去采访，你能不能动用自己的人脉，让记者不要报道？”
    ','       陶茹雪知道淮香酒楼的重要性，虽说不是现在最赚钱的一家店，但却是陶家的门面。
    
        她只是个年轻的主持人，在台里根本没有什么影响力，只能道：“我试试看吧！还是得淮香集团品牌部进行攻关，他们的实力，比我有用多了。”
    
        “哼，就知道你会推卸责任。”陶茹霜挂断电话，开始生闷气。
    
        陶茹雪给自己的上司还有台里的朋友打了电话，最终得出结论，这件事非常严重，电视台已经准备在半个小时后整点新闻播出。
    
        互联网信息传播速度特别快，现在已经在很多微信群疯狂转发，已经蔓延到不可控的速度。
    
        如果是一般人食物中毒也就罢了。
    
        现在受害的可是有美食家称号的徐鹤翔，争议性、话题性十足，很快病毒式开始传播。
    
        ……
    
        淮香集团的董事长陶南芳前不久发现有严重的疾病，已经宣布暂时退出日常管理事务，工作交给总经理宋恒德负责。
    
        宋恒德此刻坐在会议桌前，身边都是集团的高管，集体商议此事该如何办。
    
        “与检测机构联系过，并没有检查出食材的问题。”公关部负责人汇报。
    
        “舆论是可怕的，如果我们对外这么公布，肯定无法平息，觉得我们是在掩盖事实。”品牌部负责人一点不乐观。
    
        “清者自清，既然他们觉得我们有问题，那就让怀疑我们的人，找出证据。”法务部负责人比较强势。
    
        “关键是我们耗不起，刚才我们集团的股票已经跌停，只要新闻延续两三天，集团就得停牌。我们在国外有几个项目等待资金急救，这么一来，岂不是会泡汤？”国际投资部负责人忧虑道。
    
        宋恒德揉了揉太阳穴，觉得事情没那么简单，很可能存在阴谋。
    
        “分两步走，第一，让医院的大夫集中力量救治，等徐鹤翔清醒之后，跟他进行谈判，给他一笔补偿金，说服他，帮助我们消除舆论的质疑。第二，组织一个调查小组，自查内部原因。”
    
        陶茹雪打了一圈电话，徒劳无功。
    
        她想了想，给韩斌打电话。
    
        徐鹤翔在省人民医院抢救，韩斌是那里的主任医生，应该方便打听到消息。
    
        “茹雪，你终于给我打电话了。”韩斌开心地笑道，“昨天我一宿没睡，很担心你。那渣……你老公昨晚没对你做什么过分之事吧？”
    
        陶茹雪心中满是愧疚，昨晚发生的事情，难以启齿。
    
        她总不能告诉韩斌，自己被丈夫扔进浴缸，口红全被毁了吧？
    
        她转移话题道：“我想跟你打听一件事。”
    
        “我猜猜，是不是徐鹤翔的事情？”韩斌笑着说道。
    
        陶茹雪芳心微动，“是！你怎么知道我问这个？”
    
        韩斌托了托镜框，温柔道：“难道你还不理解我对你的心吗？我关心你的一切，要不你现在来医院一趟吧。我带你去问问他的主治医生。”
    
        “我这就过来，谢谢你的帮助。”陶茹雪情绪复杂地说道。
    
        此刻一双宛如鹰隼的眼睛正透过门缝朝里面盯着她。
    
        不是别人，正是乔智。
    
        酒楼闹出这么大的事，已经关门停业。
    
        乔智也就直接回家，没想到竟然撞见韩斌和陶茹雪两人正在煲电话粥。
    
        其实昨晚发生了那么多的事情，尤其是和陶茹雪差点阴差阳错，成了名副其实的夫妻。
    
        何况他的气也消了不少，折断了她所有的口红，足以发泄一切。
    
        乔智下定决心，以后要对陶茹雪好一点。
    
        韩斌会对陶茹雪下药，说明两人的关系并没有突破那一层，自己还没有完全被绿，是个值得欣慰的好消息。
    
        没想到陶茹雪竟然又在与韩斌打电话，无论他俩在聊什么，作为一个丈夫撞见，都是难以忍受之事。
    
        何况，乔智已经提醒过陶茹雪，韩斌不是什么好鸟，昨天给她罐的酒里面肯定放了什么脏东西。
    
        没想到陶茹雪竟然冥顽不灵，不引以为戒。
    
        乔智简直无语至极，绿色的贝雷帽自己死活不能戴。
    
        身后传来咳嗽声，陶茹雪捂着电话，发现乔智出现在自己的身后，她连忙低声道：“我等下来找你。”
    
        摁断电话，“你有没有素质啊？竟然在门后面偷听我打电话？”陶茹雪的怒火，朝着乔智毫无保留地发泄出来。
    
        一想到那些口红尸体，胸疼得厉害！
    
        “怎么，被撞破好事，急眼了吗？”乔智不想跟陶茹雪吵架，但现实不允许啊。
    
        “嘴巴放干净一点，我和韩斌没你想得那么龌龊。”陶茹雪提起粉色的手包，拧上金色搭扣，便朝外面走去。
    
        乔智瞄到她手腕上的红色伤痕，是昨晚与她亲密接触时留下的，想起昨晚发生的事情，触动心中的软处。
    ','        他主动跟出去，抢着坐上陶茹雪宝马车的副驾驶。
    
        “谁让你上来的，给我下车！”
    
        陶茹雪愤怒的地盯着乔智，发现他就像是一块嚼烂的口香糖，粘在鞋底，死活都清理不干净。
    
        她解开安全带，伸手朝乔智胸口推去。
    
        乔智避让，但修长的紫色美甲依然在他脸上拉出一道血痕。
    
        乔智怒了，上天除了赋予这女人一副好皮囊，掠夺了她的一切——没有素质、刁蛮任性，愚蠢得不可救药！
    
        乔智高高地扬起手，准备抽向陶茹雪，又有些迟疑。
    
        未曾想陶茹雪反手一记耳光朝他面部打来，乔智顺手捏住她的手腕，将她狠狠地压在驾驶座上。
    
        情急之下，陶茹雪竟然张口，咬住乔智的胳膊。
    
        乔智只觉得肱二头肌疼得发麻，他也发起狠，以牙还牙，探身瞄准陶茹雪白玉般的香肩。
    
        一股喷人的香气宛如兴奋剂，刺激得乔智一时红了眼，下口丝毫不怜香惜玉。
    
        陶茹雪懵逼了，趴在身上的这只公狗，竟然动手，不，动口咬女人？
    
        他能配称作男人吗？
    
        自己上辈子是做了什么孽，竟然嫁给了这么个混账家伙？
    
        疼，两人都疼！
    
        路边有对老夫妻经过，透过车窗看到这不堪入目的一幕，被车内这对男女的姿势惊呆了。
    
        这可是光天化日之下啊！
    
        僵持许久，陶茹雪率先妥协，松开口，急促喘气，身体匍匐不定。
    
        乔智也恢复理智，颓然坐在副驾驶座上。
    
        “闹够没有？放心吧，我不会坏了你的好事，你不是要去医院吗？我只是顺路，你去找你的情人，我去看你妈。”乔智嘴巴依然不饶人，句句带刺。
    
        “你从现在开始给我闭嘴，不然就趁早滚下车。”陶茹雪身心俱疲。
    
        乔智就像是块狗皮膏药，想要扯下，肯定要费一番波折，只能睁一只眼闭一只眼。',10044,10132);

insert into ds_book values(null,10133,' 张家界天门洞上空2500英尺，极限运动大佬邹检全副武装挑战翼装飞行记录，原纪录为3000英尺，挑战的高度足足比原记录低了500英尺，而且挑战的是天门吐雾的环境。

        天空中各种无人机航拍机器，伴着直升机轰鸣飞来飞去，准备记录这一历史时刻，地面上记者们长枪短炮早已架好，邹检也已站在直升机门边做着最后的准备。
    
        作为世界上最顶尖的极限运动玩家，邹检对各种极限运动已经没了多少激情，感觉都没有太多挑战性，于是他把目光对准了这次危险系数非常高的极限翼装飞行，所以说极限运动就是一项不作不死的运动。
    
        翼装飞行的死亡率在30%，直升机上邹检一手扶着舱门，一手握着个彩烟罐，脑中想着早就计划好的许多风骚的动作纵身一跃，完美！从航拍器传回地面的画面中可以看到邹检已经拉开了烟罐，一道黄色的烟雾轨迹和背上那个骚气冲天的RedBull标志，没错，就是牛牛赞助的。
    
        邹检通过头盔显示的各种数据调整着速度、高度、角度和线路并做着动作，天门吐雾的景观对游客而言是难得的美景，但是这种环境却让翼装飞行死亡率硬生生超过50%，加上高度降低许多，可以说谁敢这么玩就是作死，但是所有人都相信邹检必然成功，因为即使想失败但是实力不允许啊。
    
        中、美、英实时直播，央五的解说在看完邹检和烟雾轨迹过了天门洞的画面后优雅的念出了一副对联，“鸡犬过霜桥一路梅花竹叶，莺燕穿绣幕半帘玉剪金梭”，如果邹检知道的话肯定能猜到老妈又给解说写台本了，凭央5那几个货是绝没这水平的，美国ABC是没这文化底蕴了，主持将之比喻为，“邹像穿针引线一样穿越了一座山”，英国佬语言更贫乏，只是夸张的叫着“oh my god，crazy，oh oh oh amazing”。
    
        过了洞基本上就算完成了，后面不会有太大问题，开伞、降落、奔跑、减速，一切有条不紊，只是因为急速超过了240公里所以最后地点与计划的稍微有点偏离，但那又有什么呢，只是记者们需要多跑几步而已。
    
        眼看着记者们快要跑到面前了，邹检甚至连头盔都没摘，摆了个自认为最有型的靠莲姿势准备迎接祝贺及采访，谁知翼装在减速后与栈道的围栏打了个结，邹检往栈道栏杆上装X的一靠顿时让他脚下不稳头重脚轻，本身栏杆只过腰，栏杆上面几道防护缆绳是接近齐胸的，谁知这邹检怎么就奇迹般的从两者中间穿了过去摔出栈道，又进行了一次翼装飞行，直看的众记者目瞪口呆不知道发生了什么。
    
        话说只有邹检知道自家事，装X遭雷劈啊，一个极限玩家居然在这里失手了，太丢人了，还不如在翼装飞行中摔死呢。不过这也只是一刹那的想法，毕竟身上还有装备还是要挽救一下的，目测高度有3500英尺，飞行难度不大，只是障碍物有点多，邹检不断调整，做着最大努力，但是也只能尽人事知天命了，因为伞包已经用掉了，降落速度已经调整到能做到的最低了，此时邹检脑海里一直重复着关于一部电影的一句话，“巴音布鲁克特么为什么没有海”。
    
        邹检的爸爸是北大历史博士毕业，是徐师校史最年轻历史系教授，研究生导师；邹检妈妈是浙大汉语言文学博士毕业，同样是徐师研究生导师，副教授。邹检算是标准的书香门第，从小没少受爸妈荼毒，因为文化人要求高啊，所以什么琴棋书画之类的使劲往身上招呼，除了爸妈文化人的原因外还有另外一个原因，据老爸话说邹检是大明朝末代皇帝朱由检的第28代单传，一切为了家族荣誉。不过邹检挺不以为然，大明都亡了快四百年了还讲这一套呢。而且爷爷是单传，老爸是单传，自己又是单传，这单传没想的那么困难啊，不过几百年了这样还没断也真过分。至于老朱家的后代为什么姓邹？据说是亡国那年头躲的挺艰难，老爱家的人害怕被复辟追的也挺凶，于是就改了姓。
    
        邹检从初中开始参加定向队攻体育特长生，高中以国家一级运动员身份加高文化分考入清大物理系。
    
        什么叫不务正业邹检做了完美诠释，一入大学深似海，从此节操似路人，邹检入了大学后在极限运动上越走越远，四肢练得挺发达，虽然头脑不至于太简单，可专业课除了四门基础物理勉强及格，其他全部挂科，于是邹检被这个人人羡慕的第一学府光荣劝退。
    
        邹检不甘心啊，自己这么优秀的学生怎么就被劝退了呢？毕竟自己在央视体育频道可是好好给学校露了几次脸啊，其实学校也觉得可惜，但谁让这家伙不服从专业调剂呢，门门红灯在这个学术为主的学府当然不能忍，毕竟某明星学术不端论文造假事件造成的影响太大了。
    
        于是第二年邹检重新高考，以苏省文科状元的成绩再次考入清大物理系，许多人不理解为啥一个文科生偏要选理科专业，邹检说，填志愿的时候手滑了。于是继续极限，继续挂科，但这次不是劝退了，邹检直接被开除了，并且进了清大物理系的黑名单。
    
        邹检再次高考，没办法了，清大不收只能改去祸害北大了，作为清大长期竞争者，北大对这个刺头也是有所耳闻的，于是学校走曲线救国路线改做邹检老爸的思想工作，让邹检调剂到了历史系，毕竟邹检老爸也是北大出身还是有的谈的。邹检想想也好，毕竟历史系有家族底蕴，总是被开除也不太好。
    ','        终于混过了四年大学，勉强拿到了学士学位，邹检学位虽然拿的勉强，但是给学校带来的各种奖杯、荣誉却数不胜数。清一色全是极限运动的，连吉尼斯纪录都破了好几个。而作为拿到学位的庆祝，邹检选择了张家界天门洞的翼装飞行，于是便有了开头的那一幕。
    
        翼装飞行滑降比约是1:3，极限翼装可以做到1:3.5，而邹检这次意外摔落栈道最后50米高度时几乎做到了1:5，这都是浓浓的求生欲啊，极限玩家也怕死。
    
        落地的那一刻邹检只能做到避免脸着地，否则即使戴着头盔在这么高速情况下那帅气的脸皮也要磨没了，至于摔坏其他地方？那是老天该考虑的事。
    
        不知道过了几个小时，更不知道是幻觉还是灵魂出窍看到的，救援队慌慌张张的赶到了，好像还有爸爸妈妈。邹检第一次见到一向从容优雅的爸妈哭的这么没有形象，这让他第一次产生了后悔玩极限的想法，他突然很想抱着老爸真诚的说一句，“趁着年轻再造一个吧，别让单传断了。”然后就再也没了知觉。
    
        不知昏迷了多久，邹检终于醒了过来，脑袋清醒后的第一个想法就是这样都不死，似乎有点太没天理了。
    
        邹检努力想看看现在到底什么情况，但是挣扎了半天眼睛似乎只能看到一条迷迷糊糊的缝，于是邹检放弃了观察，老老实实休养吧，看来这次伤的不清，要一段时间不能下床了。
    
        让邹检奇怪的是似乎没有闻到消毒水的味道，难道不是在医院？不会老爸老妈已经对自己放弃治疗了吧？邹检脑子中乱七八糟的转动着各种天马行空的东西，完全符合一个脑子摔坏或烧坏的病人的症状，一会是七巧板胡乱的拼凑，一会是各种数字排列组合，一会是各种物理公式胡乱的交错替换，最后邹检含含糊糊的说了一句话，“老邹啊，不管我是死是活，支持你再造一个的话依然有效，所以我觉得我还可以再抢救一下。”说完再次昏迷了过去。
    
        再次醒来时邹检感觉到有个人握着自己的手在哭，却不是爸妈。只听那人说，“小五，皇兄对不起你啊，不该让你冒险飞行的，你要真摔出个好歹我该怎么办……”
    
        这都是什么跟什么啊？邹检总算可以睁开眼了，先是看了看环境，很陌生，很奇怪，再看看这个哭的跟死了爹妈一样的人，就更奇怪了，这小孩谁啊？穿的跟演戏似的。再看看不远处跪着的几个人，也是差不多的服饰，邹检脑子嗡的一下就炸了，“玛德，老子穿了。”
    
        紧接着就是疑问三连，“我是谁，我在哪，我在干嘛？”
    
        邹检依稀记得这小孩自称皇兄，于是伸手摸了摸自己的脸，接着大叫一声，“拿镜子来。”
    
        旁边那小孩听着这中气十足的叫声有点放心了，看起来不像有什么大问题的样子，不过还是赶紧吩咐道，“快，快，拿铜镜。”
    
        很快一个小丫头紧张兮兮的双手递上铜镜，微微还有些颤抖，邹检也顾不得去想些乱七八糟的了，赶紧接过铜镜一看，竟是自己十来岁时候的帅模样。已经没精力去关心科不科学了，既来之则安之吧，现在最重要的是先搞清楚自己到底是谁。
    
        “这位皇兄，你猜猜我是谁？”邹检勉强露出个自认为人畜无害的笑容说道。
    
        旁边那十四五岁的少年有些不淡定的看着自己的皇弟，自言自语道，“看来是摔傻了”，接着紧紧握着皇弟的手像是下着无比大的决心激动的许诺，“小五，就算上天入地遍请名医，皇兄一定要把你治好。”
    ','        看来是误会了，但邹检又无法言说，只好摆摆手道，“皇兄，我有些累了。”
    
        “好好，小五你先好好休息，有事让锦绣叫我。”说完少年领着一班老头走了出去，只留下那个之前拿来铜镜的小丫头候着伺候，看来就是少年所说的锦绣了。
    
        “秀儿啊，别站着了，过来坐。”邹检伸手拍了拍床沿，金丝楠的雕花大床只躺着一个十岁少年，还是有很富余的位置可以坐的。
    
        “奴婢不敢。”锦绣心里有些乱，自五殿下五岁丧母后性格就有些孤僻阴翳，除了大殿下外永远都是一副生人勿近的样子，就是对自己的父亲都是一副不假辞色的模样，对下人更是可想而知了。锦绣正是从五殿下5岁那年被派来伺候，那时自己7岁，现在五年过去了这竟是五殿下第一次叫自己名字，虽然只叫对了一半。话说这些年来五殿下身边伺候的下人还没听过哪个是五殿下能叫得出名字的。
    
        “这是命令。”为了搞清现在的状况邹检已经顾不得脸皮开始扯虎皮做大旗了。
    
        虽然只是面对一个十岁儿童，毕竟自己也才十二岁，锦绣还是有些害怕的，五殿下凶名在那里，虽然是躺在床上动弹不得的纸老虎，锦绣还是依言诚惶诚恐的往床沿坐了过来。
    
        邹检拉过锦绣的小手，亲切的抚摸着，虽然只有十来岁，这丫头已是邻家有女初长成之趋势，欣秀丰整，面如观音，眼似秋波，口若朱樱，鼻如悬胆，皓牙细洁。自己前世也有24岁的年纪了，这样抚摸着一个未成年小姑娘的手总有一种怪蜀黍欺负小萝莉的负罪感，再想想谁让自己现在只有十来岁呢，于是心里嘿的一声怪笑也就摸的更心安理得了。
    
        “秀儿啊，给我讲讲你的身世。”
    
        锦绣被摸的有些不自然，但那是主子，也只能认命了，好在这主子没有更过分的举动，于是深吸一口气平了平心境开始回答问题，“奴婢本姓张名嫣小名宝珠，因祖上获罪，家道中落，被买入宫中改名锦绣。”
    
        邹检听出锦绣不愿多提自己身世，但自己又急着弄清自己的身世，所以只能继续询问锦绣了。其实邹检早已根据众人服饰看出这是穿到大明朝了，再根据皇兄皇弟的称呼再次缩小了范围，差的就是现在到底是哪个皇帝，于是进一步问道，“祖上是？”
    
        “家祖姓张名敬修。”
    
        若是别的穿越者或许不知道这张敬修是谁，但这位是祖传的北大历史系毕业生啊，邹检听到也是大吃一惊，“你家曾祖父是太岳公？”
    
        锦绣听了五殿下的话被震惊目瞪口呆，吓得一言不敢发，她虽然心里是不承认祖上有罪的，但是这可是万历朝，任何人对于太岳两字都是讳莫如深，那人是皇帝禁区，何况对方还是个皇孙，竟敢尊称一声太岳公，这是何等的大逆不道。
    
        邹检看到锦绣的表情想想就明白了其中的道理，张居正重孙女的时代，而大明朝还没倒闭，自己排行老五，皇兄还没做皇帝，也不像刚刚死了老爸的样子，时间就呼之欲出了。
    
        “秀儿啊，我考你个问题，我的九岁生辰是在何时何地过的？”大灰狼一步步套小白兔的话。
    
        “去年腊月二十四，在梅园，殿下还随手折了一支梅花送给奴婢，奴婢记得清晰。”锦绣有些羞涩的回道。
    
        邹检顾不上体味锦绣的表情了，他已经算明白自己是谁了，万历三十八年腊月二十四出生，排行老五，现在十岁，今年就是万历四十七年，自己以后就不再叫邹检了，而是叫——朱由检。
    
        “我X”邹检脱口而出，声音直冲云霄。',10045,10133);
        insert into ds_book values(null,10134,'锦绣被五殿下这穿金裂石的吼叫吓了一跳，不过很快就镇静了下来，心跳莫名的就有些快，似乎五殿下这次受伤后醒来变得有些不一样了，具体哪里不一样一时又说不上来，似乎没那么稳重了，也开朗了许多，更不像以前那么不近人情了。

    “小五，你怎么了？”大殿下听到皇弟这撕心裂肺的叫喊以为出了什么事情，慌慌张张的就带着御医又跑了进来。

    曾经的邹检，现在的朱由检，一手拉着锦绣，一手扶着床沿颤颤巍巍的下了床，应该是躺着几天了，脚下有点虚，腿还有点软。

    大殿下一看皇弟这似乎风都能吹倒的样子心里又是一阵心疼，两步迈出赶紧扶住了皇弟的另外一个胳膊，这弟弟也不客气，顺势就把手搭在了皇兄的肩头。“哥哥哎，别竟整些没用的，等弟弟我恢复好了带你玩点更刺激的。”尽管知道胳膊下驾着的这位皇兄是谁，那是自己前任朱由校，但他却也一点都不见外，毕竟谁将来还不是个皇帝呢。

    莫名其妙的被皇弟这称呼搞得有点懵，但是听到小五这么说他心里也有些感动，知道这是在安慰自己呢，这是告诉自己他没有把这次受伤的事放在心上。接着朱由校又忍不住好奇，皇弟这更刺激的到底是什么？没听说过这小五比我还会玩啊。

    两个人驾着朱由检慢慢的就走出了房，这冬日的北京城还是有些寒冷的，屋里烧着地龙还感受不到，出了门立马就是一个哆嗦。

    不远处的一棵老槐树下，摆着一面三尺左右的大理石圆桌，圆桌周围间隔齐整的码着五个石墩算作凳子，而石桌上放着的东西，不用深想也知道这应该就是害自己受伤的东西了。

    走近了，五殿下伸出手摆弄了一下差不多已经散成一堆零件的木器，依稀还能看出来整体的造型，有头有翼有尾，大概是个木鸟的样子，这十岁的小孩故作老成的叹了口气，扭头看看驾着自己的皇兄，一副恨铁不成钢的口气，“怎么没有降落装置呢？”自己前世可是翼装大佬，一看就知道这木鸟缺陷在哪，没想到这一穿，遇到个皇兄也是位翼装玩家啊，而且自己悲剧的原因居然都一样。

    朱由校老脸一红，这就是这次事故的根源啊。这木鸟是朱由校近期完成的新作，还没试验过他就带着小五直接起飞了，待飞了一阵后才想起来怎么降落的问题，虽然飞行高度也就十几米的样子，摔下去也是会死人的。最后没办法，找了几棵树跌跌撞撞的就减速迫降了，最后小五还给自己当了肉垫。

    这也不是朱由校第一次这么坑了，两兄弟自小就亲近，做哥哥的一些发明创造没少在弟弟身上试验，而朱由检也乐得如此。自朱由检生母身故后也就只有这位皇兄能和自己玩到一起了，而这次试飞事故前皇兄朱由校的生母也刚刚去世，两人更是觉得同病相怜。不过发生这么严重的事故却还是第一次，也许自己这位皇兄正是化悲愤为动力所以玩的过火了些。

    随意转了一圈五殿下就示意回房了，身体还是太虚经不起太过折腾。再次安顿好这个皇弟，朱由校就离开了，既然知道小五已无大碍，那他就要回去继续研究他的发明创造了。

    房间里又再次只剩下五殿下和锦绣主仆二人，五殿下拍拍床沿，锦绣就意会到了，心里略微局促的坐到了床沿，五殿下一边摸着锦绣的小手一边思考着一个困扰整个人类的深奥问题，“我是谁？我从哪里来？要往何处去？”

    想了半天也没个结果，反而昏昏沉沉的睡了过去，醒来时已过了戌时，手里还握着个软软的小手，记得初睡时应该是未时不到，这已经过去三个时辰了，秀儿竟这么一动不动的坐在这里，就是后世久经沙场的办公室白领也扛不住啊，何况这么个娇滴滴的小丫头。

    “秀儿啊，坐了这么久不动累了吧？累了就到床上来躺一会。”五殿下这次是真的有点小感动想让锦绣休息一下，并没有什么太禽兽的想法。

    可锦绣不这么认为，在宫中这么久，毕竟已经不是八九岁的小孩子了，自己都已经十二岁了，什么暖床啊通房啊之类的即使没见过也听过。见这五殿下才十岁就要有这嗜好了，锦绣心里那还不紧张的敲锣打鼓，赶忙站起来直摆手说，“奴婢不累，奴婢一点都不累。”

    五殿下看锦绣这反应顿时乐了，在这娱乐项目极度匮乏的大明朝，没事干也只能调戏调戏小丫头了。“好好，我知道了，你一点都不累，那你去给我找本书来吧。”

    “殿下要什么书？”
','   “随便吧，能消遣就好。”

    锦绣淅淅索索的退去，没多久就带了一本书过来。朱由检接过一看书名，《资治通鉴》，不由得白了锦绣一眼，谁家公子哥用《资治通鉴》来消遣的，本以为会是个《金瓶梅》、《西厢记》之类的，再不济也可以是与《金瓶梅》同列四大名著的水浒、三国啊，不是不喜欢《西游记》，而是这年头《西游记》还在禁书之列，至于《红楼梦》那还没诞生。

    拿着《资治通鉴》读读，聊胜于无吧，毕竟亲生爹妈一个是研究历史的，一个是研究汉语言文学的，没穿越之前像二十四史、《资治通鉴》这些也是读过的，一些经典的语句还可以背诵，可这繁体的还是第一次读。所以说国人对繁体字有一种天生的亲近感，虽然没有学过，却基本上都是认识的。

    就这样一边看书，一边修养了七八日，锦绣也一直陪在身边伺候，看的累了就让锦绣读来听，听的累了就下床走走。

    终于是离得皇兄生辰近了，五殿下身体也已好的差不多了，带着锦绣逛着逛着就到了皇兄的寝宫。五殿下前世号称第28代单传，自然是没有感受过兄弟情的，这一世虽说同父异母，但这皇兄对自己却是一点都不含糊，过生日了自己自然要表示表示。

    进了门就看到皇兄带着两个小太监在那里忙活，锯子，斧子，刨刀，墨斗，能想到的木工设备一样不少，多日未见，这位皇兄依然这么虎啊。

    看到皇弟到来，朱由校停了手里的活计，接过太监递来的手巾擦了擦满脸的汗水，走向五殿下道，“五啊，听闻你这几日已经痊愈了，皇兄忙于一项研究没有时间去看你，勿怪。”

    五殿下看了看皇兄接近完工的作品，撇了撇嘴，“皇兄，这么没技术含量的东西以后咱就别做了，这不马上到了皇兄的生辰了吗？皇弟特来送上一副珍品图纸给皇兄聊表心意。”

    朱由校不以为意的笑道“小五，这你就不懂了，你知道我做的东西叫什么吗？鲁班锁，听名字就很高端，是一个叫李进忠的奴才献上的，说是失传了许久的图纸，据说这鲁班锁能解开的人还没有。”

    这厢朱由校得意洋洋的说着，那边十个鲁班锁已经被五殿下拆的只剩了三个，剩下的也在解着，基本也就是朱由校再多说几句话的功夫了。

    朱由校迈着八字步，这一回头不要紧，自己十多天功夫做的鲁班锁在自己这皇弟手下已经拆成一个个的零件了，哪是据说无人能解的情况。

    “李进忠这狗奴才竟敢糊弄我，我要剁了他。”大殿下准备暴走了，他有一种幼小的心灵受到深深欺骗的感受。

    “皇兄先别动怒，看了我这图纸再说。”五殿下说着从袖中掏出一张折叠的宣纸，这是五殿下在这修养的几天中抽空画的，前世虽有些国画书法底子，但让他用毛笔画图纸还是做不到的。这图纸是五殿下让锦绣挑的木炭修成铅笔形状画出来的，至少前世素描的功底可一点都不差，泡妞基础技能他是不会荒废的。

    朱由校接过图纸看了看，没搞明白这到底是个什么图纸，做出来的东西到底有什么用。只见下面是两个支架连着四个轮子，上面七层木板粘贴而成。这确实是前无古人的东西，若是放在几百年后，连个儿童一眼就能认出，这是滑板。
','    与其说五殿下是给皇兄祝寿，倒不如说假公济私，反正皇兄喜欢的是珍品图纸和未见过的工艺研究，自己需要的是滑板，各取所需，五殿下脸不红心不跳的忽悠着，“等东西出来我演示给皇兄看，这就是我前些日子说的更刺激的玩意。”

    朱由校从小就疏于学习，文化水平有点低，但见过的图纸却是多不胜数，尽管不知道这图纸画的是什么，却还是一眼就看出了图纸的与众不同，线条极简，笔法不俗，“小五，这图纸是哪位大师所作？看起来不像是古本。”

    “皇兄以后慢慢就知道了，这东西只有一个要求，要经得起折腾。”五殿下朝着皇兄挤了挤眼，意思很明显，暂时保密，交代完五殿下就带着锦绣离开了。

    朱由校坐在他的工作台前，袍袖一挥就把辛苦了十来天做出的鲁班锁扫进了垃圾行列，接着铺开图纸仔细的研究起来。

    其实说起来这图纸已经非常详细了，只要按照图纸来做毫无难度，而作为大明朝的第一工匠来说，朱由校知道这物件难就难在选材上。

    朱由校花了整整三天时间，加上十几个小太监忙前忙后东奔西跑的辅助，试验了十几种材料，终于是在他生辰这一天完成了。

    五殿下带着个小厮也准时的出现在了朱由校的面前，朱由校仔细一瞧，这小厮头戴网巾，一袭淡青长衫，黛眉如柳，眼若凝星，琼鼻樱唇，肤如凝脂，又明显不是个小太监，却是比太监还要妖娆妩媚的多，这后宫中除了未成年皇子皇孙是不许有其他男人。

    朱由校有些慌乱，心想“糟糕，这是心动的感觉。自己可是皇长孙，再怎么不学无术这取向问题可不能错。”定了定神再细看那眉眼却有些放心了，竖起大拇指对五殿下说道，“这不是小五家锦绣吗，你们城里人可真会玩。”没想到这丫头女装时没看出来，这一换了男装却是绝色啊。

    “今日皇兄生辰，人多嘴杂，怕秀儿身份跟着多有不便，所以换了身装束。”

    朱由校又打量了锦绣几眼便招呼一个小太监去取了个物件过来，小太监端着个托盘，上面盖着块红绸，朱由校小心翼翼揭开红绸，露出了滑板本体。

    大明第一木匠的名头果然不虚，五殿下摸了摸这隔了一世的滑板，心里感慨万千，这一看一摸就可知这滑板成了，朱由校甚至精心的在滑板的翘首上雕了个坐蟠，精品中的精品。

    五殿下单手取过滑板往地上一丢，右脚踩上，左脚用力，只见五殿下嗖的窜了出去，从接过滑板到滑出几丈开外，五殿下动作一气呵成，这时朱由校才反应过来，自己精雕细琢的东西原来是这么玩的，难怪皇弟说要经得起折腾，可笑自己捧着还担心磕磕碰碰了，但这玩法貌似也没小五说的那么刺激啊，这边想法刚起那边小五接下来的动作便让他啪啪打脸。

    起初还好，五殿下只是试试这滑板的性能，十丈开外确定了性能后，五殿下开始随着滑板闪转腾挪，花坛、阶梯，无不可滑。旁边几个小太监和锦绣已经看的目瞪口呆，朱由校也是快惊掉了下巴，这应该算是自己历年生辰最别致的表演了，从没听说过五弟还会这一手。

    锦绣看着自家殿下俊逸出尘的身姿有些目眩神迷，自从五殿下受伤醒来之后真的是彻底的不一样了，现在的那位万岁爷不仅不理朝政沉迷享乐，对皇子皇孙的教育更是不闻不问，而太子爷自身地位就岌岌可危，朝争了十多年才保住自己的位子，对两位殿下更谈不上教导了。

    两位皇孙殿下从前是众所周知的不学无术，满腹草莽。可自从五殿下醒来后不仅人随和了许多，而且说话更是风趣幽默，经常几句话说的锦绣面红心跳，不仅如此，五殿下最近没事还经常给下人们讲故事呢，那学问哪像别人说的是只读过《三字经》和《百家姓》的样子。

    锦绣看的一阵出神，那边五殿下耍了一圈已经脚踩滑板滑回来了，一个尾刹停在了锦绣面前，很优雅的朝锦绣伸出了右手，锦绣有些痴痴的伸出左手交给五殿下，这是最近坐在床沿养成的习惯，可是这次有些不一样的感受，这是在大庭广众之下，可锦绣打心底里又不想拒绝。

    “殿下最近常讲的脚踏五彩祥云迎娶紫霞仙子的至尊宝就是这样的风姿吗？殿下这是在邀我同游吗？”锦绣面红红心跳跳的胡乱想着。

    五殿下右手拇指和食指在锦绣递过的手心轻轻一捏，左手掌心轻轻的按在了锦绣的额头上，“想什么呢，我是要汗巾。”

    锦绣呀的一声缩回了手，慌慌张张的去掏汗巾，脸上更是像熟透了的水蜜桃，又红又水嫩，让人忍不住有种想咬一口的欲望，这是十二岁的小姑娘到了思春的年纪了。

    朱由校舔着脸陪着笑走了过来，“小五啊，皇兄仔细思量了一下，这蟠龙可能不适合你，明日皇兄再给你做个螭龙的，螭龙性好险，才符合你说的刺激的玩法。”

    朱由校这话倒是让五殿下有些刮目相看，智商明显见长啊，居然学会反忽悠了，不过五殿下已经试了手也不急于一时，何况今日还是皇兄生辰，你怎么说怎么来了。

    “今日皇兄生辰，皇弟只是借花献佛为皇兄演示一番，这滑板自然还是皇兄的了，皇兄若有兴趣，改日咱们去皇极门广场去耍耍，那里宽敞，而且皇弟手里有趣的东西还多着呢。”

    五殿下的意思是我不跟你抢，不过你现在还不会玩还要我教你，但是你别忘了给我再做一个，否则我手里其他好玩的就不给你玩了。

    小心思被看穿，朱由校依然脸不红心不跳的道“原来这叫滑板，好名字，形象。皇弟还有什么有趣的东西一并交与皇兄吧，不用顾虑皇兄身体，皇兄不累。”朱由校说的大义凛然，堪称无耻的典范。

    “图纸尚未出来，皇兄还需等些时日。”

    这边正说着，旁边有个太监过来传话，之前五殿下正玩得兴起，所以都没留意到这传话的人。

    “奴才参见两位殿下，选侍让奴才过来传话，午时万岁爷传下旨意，酉时在乾清宫举办家宴，给皇长孙庆生。”',10045,10134);
insert into ds_book values(null,10135,' 这传话的太监不是别人，正是为大殿下献上鲁班锁古图的李进忠，大殿下倒是没有真的剁了这太监，虽说当时鲁班锁被五殿下解的利索让他有些气恼这奴才夸大其词让他丢了些颜面，但事后想想，这鲁班锁为古图确实不假，而作为制作者自然明白鲁班锁其中的奥妙不是什么人都能解的，或许只能说这皇弟天纵奇才吧，倒不能怪罪这奴才的一片心意。

    实际朱由校哪里知道，五殿下前世玩得鲁班锁太多了，可不是这区区十来个能难为住的。

    大殿下虽不欲为难李进忠，但总归让他丢了些脸面还是要训斥一下的，于是不等李进忠往下说便哼道，“你这奴才，上次不是说那鲁班锁无人能解？倒是还没出我这宫门就被皇弟给破的一个不剩了。”

    李进忠本想与大殿下多说说这生辰宴的事的，可听了大殿下的话却是一阵诧异，这鲁班锁虽说无人能解有些夸张，但大明朝虽说能人无数，可会解鲁班锁的真可以说是万中无一，但毕竟是宫中混了几十年的老太监，李进忠也不辩解反而是连忙告罪道“大殿下恕罪，奴才妄言了，不过也只有五殿下这天纵之姿才能解开这鲁班锁，旁人是万万不行的。”嘴上拍着马屁，李进忠心里想的却是那个出了名的草包竟有这等能耐？

    李进忠低头答话，没注意五殿下一直打量着他，不为别的，因为这就是后世鼎鼎大名的九千九百岁魏忠贤。

    “你就是李进忠？”五殿下昂着头一边打量一边问道。

    这李进忠现在是在西李选侍宫中伺候，而大殿下的养母正是西李，是故李进忠与大殿下接触较多，而五殿下的养母是东李选侍，自然不认得李进忠。

    “回殿下话，奴才正是李进忠。”老太监谄媚的回道。

    “听闻你进宫前原本姓魏？”

    不仅是李进忠，包括朱由校、锦绣都是一惊，连他们都未曾听过的事情这位向来两耳不闻窗外事的五殿下是如何知道的，而李进忠更是有些不安了，他本姓魏虽然不是没人知道，却也是极少，而五殿下与他向来没有来往，竟把这隐秘的事情都了解到了，到底所为何来。

    李进忠越深思越是惴惴不安，再想想鲁班锁，他越是觉得这个十岁少年有些不简单，或许以前的不学无术形象都是掩人耳目的吧，在宫中装傻充愣不失为一种明智的生存之道。

    诸多心事的李进忠却不敢隐瞒，答道“殿下明鉴，奴才入宫前本姓魏，怕辱没了祖宗，所以改姓名为李进忠。”

    “以后没事多到小爷宫中走动走动，少不得你的好处。”

    五殿下的话让李进忠稍安了心，看来是得这位主子赏识了。

    “任凭殿下差遣。”
','    “以后没外人的时候就不要叫殿下了，叫五爷。”五殿下不仅是对李进忠说的，包括朱由校宫里的一干人等，当然不包括朱由校，让自己皇兄叫自己五爷，他还没觉得自己活得够长。

    所有人都有些摸不着头脑，这都是什么乱七八糟的称呼，有违礼法啊，只有锦绣已经习惯了，这叫法已经在这位爷的宫里施行一些时日了，只是她不知道缘由，实际上这是五殿下在为出宫微服私访做准备呢。

    所有人还在为这称呼纠结的时候，李进忠已经表明态度了“是，五爷。”

    一个五十多岁的老头叫一个十岁的小子叫五爷真的是毫不迟疑，而且毫无违和感，这就是李进忠说话做事的艺术和能人所不能的地方，后来权倾朝野也不是没有道理的。

    “听闻你入宫前家里排行老四？”

    “回五爷，奴才不敢，以后奴才就排行老六了，爷您叫我小六就成。”

    “有前途，我看好你。”五爷扬起手，于是李进忠就很自然的沉沉肩，把自己放到一个五爷最舒适的高度，让这位小爷拍了拍自己的肩膀以示嘉许。

    李进忠这真叫一顿操作猛如虎，大殿下宫里的小太监们都看呆了，心里都暗暗佩服，果然姜还是老的辣。

    “好了，闲话说完，六儿啊，说说这庆生宴是怎么回事，李选侍让你过来应该不止是传个话这么简单。”热闹过了，五殿下终于是有些严肃的把心里的疑问说了出来，虽然是皇长孙的束发之年，却也不会让自己那位不问朝政不管子孙死活的皇爷爷放在心上，这又是庆生又是家宴的，其中必有事端要在晚上发生。而五殿下之前的一番作为只是担心这老奸巨猾的李进忠有所保留，故而敲打敲打罢了，李进忠的一顿操作也让五殿下彻底的放了心。

    其实五殿下是多心了，李选侍让自己心腹过来就是为了提醒大殿下，因为别人办事没这么牢靠，但李进忠还没来得及说完就被大殿下给打断了。

    李进忠也是明白了这位小爷的意思，反倒是有些委屈了，不是自己保留，是没得机会说啊，于是他用可怜巴巴的眼神看着这位小爷道“回五爷话，李选侍确有事情交代奴才好生转达。”可是他却不往下说了，而是打眼看了看四周。

    这是朱由校的地盘，看他半天没什么表示，估计是还没反应过来，五殿下只得一挥手道，“都先下去吧。”只留下了李进忠、锦绣和自己兄弟二人。

    见五爷身边的小厮没走，李进忠也明白这人不必忌讳，便接着说道“听传旨的爷们说万岁爷是没打算为大殿下庆生的，一切都是郑贵妃的主意，万岁爷嫌麻烦，是郑贵妃连提了好几次陛下才答应，而且郑贵妃告诉万岁爷大殿下为他老人家做了极为有趣的物件，否则这事也断不能成。”看来大明宫中娱乐匮乏，连皇帝对有趣的事物也是心生向往的。

    李进忠后面有些压低了声音道“奴才听闻郑贵妃还准备借机为大殿下筹备选秀女，并准备在这上面做文章。”

    后面这句话应该是李选侍也不知道的，李进忠之所以会说应该还是五殿下的一番敲打之功，确实如此，李进忠虽然老奸巨猾，但这短短时间的接触却让他对这位十岁的小爷有种妖孽的看法，他对五殿下那句“以后多走动走动，少不了好处”的话是真的信了。
','    说完这些，李进忠便不再言语而是伺立一旁，这些话或许大殿下还需要讲明白些，这位五爷应该是能想的通的。

    换了曾经的十岁朱由检或许不明白这其中的道道，但是现在的五殿下可是不同，那位郑贵妃是当今皇帝陛下的心头肉，宠的不能再宠的妃子，那位怕麻烦的皇帝陛下甚至不惜为了郑贵妃的三皇子也就是现在的福王差点废了自己老子也就是现在的太子爷，于是便有了和朝臣长达十多年的国本之争，最后自己这位皇爷爷实在是不想再这样麻烦下去，索性懒得争了。可是那位郑贵妃却不甘心，应该是又想借机作妖了。

    那乾清宫中所谓皇帝家宴，是皇帝与后宫女眷的宴席，凡成年皇子都是另有席面，所以无论是皇太子还是那位非常得宠的郑贵妃家三皇子福王殿下都是乾清宫中不列席的，因为是皇长孙的庆生宴，五皇孙也在席，所以东西两位李选侍作为二位皇孙的养母都是有幸在席的。但她们仅是太子的选侍，而且还是非常不得皇帝欢心的太子选侍，地位与郑贵妃一个天上一个地下，所以到时即使有些状况，她们也是完全无法出头的。

    “选侍可有说法？”五殿下相信李选侍应该会有所准备，不可能只是抛了个问题给个小孩子。

    “选侍说，百言百当不如一默。”

    看来这位李选侍也是黔驴技穷了，既不知对方如何出招，实力又差距悬殊，只能让大殿下沉默是金了。

    “去回话吧，就说大殿下知悉了。秀儿，你也回去吧，晚上是不能带你去玩了。”五殿下挥了挥手。

    李进忠心里明了，这位小爷让回话特意提到大殿下知悉，是不愿提及自己了，而庆生宴的事这位爷想必也是知道其中难处，仍能面色无波，应该是有了主意。李进忠是打定了主意，这次危机看这位小爷如何化解，若是破局破的巧妙，以后定要誓死追随了。

    李进忠按五殿下交代回话云云不表，这李选侍可以想象朱由校那有些愚鲁的样子不由叹了口气，自己又能指望谁呢？皇太子本就不得宠，自己又只有一女，虽是皇长孙庶母，这出了问题说不定就会连累到太子爷，太子只要一天没继位，那就随时都有风险。

    朱由校、朱由检这对难兄难弟坐在花园中，虽说朱由校大字不识几个没什么学问，可是聪明不过帝王家，这位大殿下还是从李进忠的传话中感受到了浓浓的危机，郑贵妃不是冲着自己而是冲着老爹去的，可是覆巢之下焉有完卵。

    想想一阵头皮发麻，这玩战术的人心都脏，自己还是适合做木匠，到底该怎么办呢？朱由校一声声的唉声叹气。

    屋檐上少许积雪尚未消融，午后的阳光一照还有些刺眼，粼粼银光加上冬月的小风一吹，五殿下的脑瓜稍微清醒了一些。

    郑贵妃提到的有趣玩意应该只是为了引起万历皇帝的兴趣让他同意这次生辰宴，而郑贵妃也不会无的放矢，既然说有，那么必然是知道这些天皇长孙在鼓捣些什么玩意，说明这位皇兄的身边已经被人插了眼了。而到时候最坏的情况也就是拿出的东西没那么有趣，引不起皇爷爷的兴趣让他不快，甚至出些小丑，这些年自己老爹做太子爷出的丑多了，也不在乎再多这么点，虱子多了不痒，无伤大雅。

    那么杀招应该就是这李选侍所不知道的为皇长孙选秀女了，可是郑贵妃到底会如何去操作却不是五殿下现在能想通的了，这选秀女程序之繁琐可不是当场就能做定夺的，除非这位皇兄现场作死，否则应该过的去这一关，真正的难关应该在后面，以后就见招拆招了。

    理清楚了头绪，五殿下握着皇兄的手，大殿下终于停止了唉声叹气，看着自己的皇弟问，“小五，我该怎么办？”

    这位比自己大了五岁的皇兄，站着比自己高了一头，坐着也就差不了多少了，以前都是朱由校保护他不让别人欺负，朱由检揽住朱由校的肩头道“皇兄，以后动脑子的事情交给我吧，有我在，不会让任何人欺负你，老头子也不行。”',10045,10135);

insert into ds_book values(null,10136,'深秋的傍晚下了一天的雨停了，飕飕冷风吹起，吹的‘老黑’根根黑毛阵阵发抖。这‘老黑’是一条骨瘦伶仃的黑毛瘦狗，耷拉着狗耳趴在偏僻小巷中的一个马棚内。马槽下还有些许干草，这就是老黑临时的一个狗窝了。

    正要憨憨睡去，突然狗屁股一疼，老黑唧哇一声被踢飞出去老远。扭头看去，踹自己一脚的是一个满脸尖酸的男人，这男人弯腰抱起干草放入马槽，嘴中还喃喃说道：“哎！这破马真是吃饱了撑的，吃个草撒的满地都是，可惜了啊！”

    失去狗窝的老黑沮丧的对着男人吠了两声。见这男人弯腰去捡石头，吓的瘦狗夹着尾巴赶紧溜之乎。

    突然一阵臭味窜入鼻孔，正肚腹饥饿的瘦狗闻起来却比骨头都香。寻着气味找去，小巷僻静处一个白胖男人正背对老黑，光着屁股蹲在角落大行方便之事，手中还拿本小书看着哼哼着小曲。

    老黑大喜偷偷窜上前去，使劲儿嗅了嗅大口吞咽起来，见白白的大胖屁股还没出货，着急的老黑伸出舌头朝着屁股就舔。

    白胖子顿觉屁股黏糊糊的一阵搔痒，一个激灵蹦起身来。扭头看去，只见老黑傻傻地伸着舌头摇着尾巴，好似还没吃够。

    白胖子眯眼看了看竟然大喜，扔掉小书也不提裤子，退着往后挪了几步，来到摇着尾巴的老黑身前，伸出大手正好掐住狗脖子拽到身前，然后蹲下撅着屁股继续他那未完之事。

    老黑嗷嗷惨叫着，这胖子却是不管，蹲在地上扒拉起狗毛来，嘴中还念叨着：“这狗头没错，全是黑毛。”说罢又反过狗身向着狗肚子摸去：“不错也是黑毛。”就这样白胖子把老黑从头至尾、从上至下找了个遍，别说，这‘老黑’狗如其名可真不是白叫的，一身齐刷刷的黑毛细针一样支棱着。

    “哈哈！真是踏破铁鞋无觅处，得来全不费工夫啊！这下好了，老大定然会对我刮目相看的。黑狗，吃人家东西是要还的哦！”

    说罢抽出麻布腰带捆住了瘦狗脖子，一手拽着老黑，一手提着裤子，满心欢喜地向着巷子外边走去。
','    巷子口一座气派的三层小楼，门口挂着幌子《醉宜居》。进得门来，顿时阵阵酒肉香气飘散过来，本来就已肚腹饥饿的老黑早已口水大长，张着狗嘴不啦不啦怪叫着一个劲儿晃着舌头。

    白胖子拽着老黑爬上三层，人还没到，就听得白胖子大声吆喝道：“哈哈！今天真是撞了大运，出去拉泡屎的功夫，就给老大立了一个大功。”

    三楼靠窗的屏风内顿时安静，探出一个尖头黑脸的脑袋来，狠狠对着白胖子瞪了一眼，轻声说道：“你个‘雪里肉包’吵吵什么？老大正和芦大爷谈事儿，你是怕别人都听不到还是怎么了。”

    这白胖子姓包、名中、江湖诨号‘雪里肉包’。这肉包虽说功夫稀松平常，可轻身功夫在这几人中却是数一数二。

    肉包偷偷看了看四周，发现没人注意自己，对着黑脸男人轻声说道：“你个黑面候三，就知道对我大呼小叫的，瞧瞧我后边是什么玩意儿。”说着炫耀似得拽了拽后边被提拉的喘不过气来的老黑。

    “呦呵！人家都说肉包子打狗有去无回，想不到你这包子还真是包中啊！不过你个肉包也别高兴太早，爷儿几个找了那么多条，可还真没找到，没一根杂毛的。”

    包中撇了撇嘴说道：“切！想我大白包何等人物，还稀罕耍你小猴玩儿？”

    候三顿时来气，可还没等发作，屏风内传出一个沉闷的声音说道：“废话什么，快弄过来让我和芦大爷瞅瞅。”

    包中朝着候三撅了噘嘴，提着裤子来到屏风内，对着身边的候三说道：“猴儿快去给包大爷找条绳子来，好拴狗。”说着拽过老黑，解开它脖上的腰带，把黑狗放到了罗列杯盘的桌上。

    顿时置身于美食中的老黑，也顾不得逃跑，吧唧着狗嘴迫不及待的大口咬食起来。
','    “愣着干什么快去啊！要不这狗跑了拿你这猴儿顶账。”

    桌旁高大壮实的汉子向着候三摆了摆手，这候三握拳朝着包中比划了比划，向着楼下走去。

    再看这屏风内围坐四人，正中高大壮实的汉子就是包中口中的老大，‘大手刘庆’这人右手还算正常，可左手也不知是不是天生，蒲扇般大的可怕。就因这左手擒拿手法甚是了得而且抓力惊人，和人打斗向来都是将对手抓小鸡一般顺手掐来，所以江湖人给送个绰号‘神鬼一把抓’。

    下垂手坐着两人，一个身材消瘦的和尚，双手抓着一根煮的熟烂狗腿，大口咀嚼着。这货其实并非和尚，实乃秃子一个，也正因如此得个外号‘便宜和尚假秃子’名叫贾亮。这秃子说道：“哎！这只还没吃完，你这肉包又寻来一条。不过也好留着明天吃。”

    只听啪的一声，座上蹦出个矬子对着秃子脑门就是一巴掌。说道：“你他妈就是个吃货，整天不停事儿就知道吃，也不知肉都长那儿去了。有本事自己捉来一只给大伙看看。”

    这矬子别看个子小，那秃子却并不敢反抗。便宜和尚也不管满手的油，使劲儿揉了揉秃脑袋傻笑了两下，这下好了本来就够亮的脑袋，这次更是油光锃亮。

    矬子绰号‘土耗子’，外号叫顺了嘴，真名却没人记得了，只知道这土耗子挖土钻坑的手段无人能比，也因手段特殊隐隐成了这个小团伙的二号人物。他们这个团伙一共五人，专干些无本买卖。

    土耗子说罢看着包中又说道：“包哥，没事儿，如果不对咱们再找就是。”

    包中笑了笑，从桌上抓起一只猪蹄啃了一口说道：“耗子兄弟，这回包哥可真没走眼，刚才蹲那儿半天，就差没把狗毛数个遍了。”说罢胖手又抓起一个酒杯滋溜一口。

    大手刘庆另一边，坐着一个长着山羊胡的青衣中年道人。这人其实并非他们一伙，众人也不知道他的名字，只知道姓芦，并不是真正道士，实乃走街串巷，与人占卜吉凶算卦为生的主，这货常说自己有半仙之体，所以也有人称其芦半仙。

    芦半仙抓住老黑的尾巴拽到自己一边，另一只手熟练的抓住了狗嘴，一声不吭的仔细踅摸起来，半晌还没看够。

    大手刘庆说道：“咋样？芦大爷这次能成吧？”

    “嗯！没错的确没有半根杂毛。”说罢又看了看包中说道：“你这肉包可别骗我！如果这狗有杂毛，却被你拔掉了，放这儿来糊弄我，可着实是害了你自己。想那里边极其凶险这黑狗可是保命家伙，可不敢胡乱凑合。”

    “咱大白包能耐是没多少，可绝对不是瞎糊弄的主，不信你问问我们老大。”

    见大手刘庆点了点头，芦半仙顿时开怀大笑：“哈哈！真难得啊！真难得，想来这次咱们定然发达。”说罢抓起酒杯对着众人又说道：“来，为咱们的大事儿碰一个。”',10046,10136);
insert into ds_book values(null,10137,'两个月前，候三发现城内最大的当铺对面，正好有一空铺对外出租。突然坏点子窜头，叫来哥几个商量一番，决定租下铺面，好从地下挖洞到对面洗劫当铺。

    常去当铺的人，一般都是正逢难事才来典当，所以这芦半仙也在当铺边上支了个卦摊，专给这些倒霉人占卜吉凶。

    他这人比较钻研，发现对面空铺虽已出兑，却不知干些什么买卖，并不开门营业。还总有那么几个满身土灰的人蹑手捏脚的出出进进。这些人就是相互说话、打招呼都是轻声细语简单了事。而且总有一个黑脸猴样男人，天天徘徊在店门口左瞅瞅右看看。

    芦半仙顿生疑惑，有事儿没事儿就去候三那儿套近乎。

    时间久了已然明白，这些人是在打当铺注意。可这芦半仙非但不惊却是大喜，绕着弯变相对候三说：“别看这当铺挺大，来当的却大多是些破烂货。哎！可惜我是没帮手，要有人帮，俺知道个发财门路，干一次绝对下半辈子衣食无忧。”

    候三顿时来了兴趣，听这货说话半漏不漏的，好似知道些什么。也怕他走漏了风声，干脆一把把芦半仙拽入屋内。拿把小刀顶着芦半仙，仔细逼问下才听这芦半仙自己说出了原委。

    这事儿要从三年前说起。原来这小城里有个家道中落的秀才，这秀才名叫刘定魁，据说这刘家祖上还曾是营造司的一个官员，而且貌似品阶还不低。所以在小城中算是大户人家，可向来一脉单传的刘家传到他这一辈，家境就大不如前了。但瘦死的骆驼比马大，刘家虽不至大富大贵，却也温饱小康。

    可这家人并不甘心，就盼望着独子刘定魁能一举高中进而光耀门楣。家里省吃俭用供其读书，别说，聪明伶俐的刘定魁年仅十六，第一次应考童试就得中秀才。这下家中更是倾其所有供独子读书了。

    日月更替刘家祖上留下的财富虽已所剩无几，可库中书籍资料图纸却是数不胜数，刘定魁更是如入宝山整天埋没其中。

    本来他只是迷恋于古今之圣贤书籍，可这日，年已十八的小伙子闲暇无事，从万卷资料图纸的夹缝中翻出一本朴实无华的羊皮卷册。这卷册寥寥几页，红色的羊皮封面上只有三个篆字《定神冢》，篆字边上还有一个小小的蓝色图章，上印一个‘子’字。

    翻开第一页就把刘定魁迷住了，只见其上以精谨细腻的工笔，细细描绘出一幅飘逸灵动的美人画像。画中美人嫣然站立在梨树下，圆润透红的粉脸，微微侧向一旁盛开如雪却还透着点点黄斑的满树梨花。曼妙轻盈的身段稍稍前倾，披于背心的乌黑长发上，一根鲜红的丝带轻轻挽住。一袭青衣在白花映衬下更是粲然生光。可仔细看去总觉有什么不对，原来这女子好似悬在空中一般，裙下并没有双脚也不知道是什么在支撑着身体。

    后边几页全是些很难看懂的图纸线条，隐隐可以看出是一处宫殿似的宏伟工程。可这刘定魁并不稀罕，打从有了这本卷册，其人像是变了个样，整天卷不离手傻傻的看着图中美人，书也不读了，甚至忘了饥渴。不住的对着卷册喃喃自语，时而还古怪的笑笑。

    家中老夫妻看在眼中急在心里，见儿子整天盯着画卷，心想：我这儿子也老大不小了，可能是想媳妇了。

    商量一番就四处求人说媒，心想有了媳妇，儿子也就稳住心神了。

    别说这小秀才的名声在外，还真讨来个名叫小莲的漂亮媳妇，这小莲虽不是什么大家闺秀，却也家境殷实温柔恬静。
','    人生大喜的洞房花烛之夜，刘定魁竟不顾床头新人，独自坐在红烛下饮酒，还不忘欣赏着卷册中的美人儿。

    这新媳妇倒也贤惠，久等不见郞来，心中暗暗责怪：这家伙，大喜之日独坐烛台也不来陪伴与我，难道是小莲那点做得不对？或是这丈夫脸皮太薄害羞了？

    想到这里，掀开盖头偷眼瞅去，隐隐可见昏黄的烛火下，丈夫正一手托腮认真的盯着书卷，就像似在思考着。

    无奈的摇了摇头：他都不急，我上杆子岂不更羞，算了，就静静地坐在床头耐心等待吧！

    许久，酒劲儿上头刘定魁，脑袋晃晃悠悠的，只觉得画中美人好似活了一般，飘飘然飞出了卷册独自坐在了床边。

    床上佳人头上蒙着盖头，见丈夫看向自己。娇羞的脑袋低的更低了。偷偷伸出小手，指尖冲着丈夫轻轻勾了勾。

    刘定魁大喜，撇着嘴角的怪笑，终于放下了卷册，踉跄着步子来到床前。急不可耐的一把扯掉了盖头。晃着脑袋凑上前去，揉了揉朦胧的双眼定睛瞅去，心中顿感莫名心道不对，更加使劲儿晃了晃脑袋。

    新娘以为丈夫酒醉脑袋并不清醒，偷偷斜着脑袋瞅了一眼。别说，这刘定魁背直、肩宽还真有一番男子气概。只看了一眼就羞的小莲赶紧躲开了醉眼的直视。稳了稳满心的慌乱，想了想，扭捏着娇躯，轻轻的褪去了红衣。

    刘定魁定了定神，又使劲儿拍了拍脑袋。眯着双眼仔细看去，面前新娘，眉目低垂、羞的满脸通红、虽有紧抱的双臂挡在胸前，却拦不住美妙的身体呈现在愣货眼前。

    可这愣货找毛病一般，睁大了贼眼，上上下下左左右右看了又看瞅了又瞅，换来的却是更加猛烈的摇晃脑袋。

    又觉得神魂好似被画中美人儿拽住一般，拉着刘定魁转身回到桌前，满脸笑意的捧起了卷册。

    愣愣的捧着卷册痴痴笑着看了看，还不忘放在嘴边偷偷亲上两口。又觉得脑袋一阵眩晕，鬼使神差一般，再次被拽住神魂晃晃悠悠的来到了新娘床边。

    低着脑袋却娇羞不敢抬头的新娘，只见丈夫双脚直愣愣站在身前一动不动。忍着嘭嘭直跳的芳心，背过头去慢慢褪去了愣货衣衫。

    这愣货扑棱扑棱脑袋，顿时兽心大起，却还不忘手中的卷册，干脆直接把卷册贴到了新娘脸上，粗鲁的将她按倒在床。

    被卷册捂得难受的小莲，每次想要拨开卷册，却都被这野兽强行撇开。
','    试了几次也不见成效，心中还暗暗琢磨；我这丈夫也真是钻到书眼里了，干这事也不忘认真读书。不过也好，这样用功肯定能夺魁首。想到这里放下了矜持，干脆也不去阻拦，只管让你折腾吧。

    一连半月不管白天黑夜，这刘定魁一来兴致，就把卷册按在小莲脸上，干那羞羞的事儿。

    时间久了，总见丈夫拿着同一本书，就觉不对。可每次想要夺来看看都让丈夫强行拦住，有时惹急了还会被其大骂一顿。

    委屈的小莲更是心生疑惑，跑去询问公婆，可公婆总是吱吱呜呜的不敢说出实情。按他们所想‘儿子也就这样了，总有一天会清醒过来的，不过万幸还能干那事儿，说不定明年就能抱孙子了。’

    满腹委屈无处宣泄的小莲回到屋中，只见丈夫背着自己，仍偷偷的看着卷册痴痴傻笑。

    悄无声息的挪步过去，趁着丈夫不注意，猛地伸手一把夺来。

    正为自己夺书成功而庆幸不已的小莲，翻开了卷册。第一眼就看到了画中美人，顿时满脸惊愕愣在了那里。

    卷册被夺的刘定魁心神一慌，知道媳妇发现了自己的秘密，慌忙间想要夺回。却见小莲紧抓着卷册，正怒目瞪着自己。

    伸手拨开小莲就要强行夺回，却被妻子握成一团，狠命的抱在了胸前。

    唯恐卷册受损，急的刘定魁顿时大怒于心，猛地就是一巴掌甩了过去。

    委屈的眼泪刷拉一下夺眶而出：他竟然忍心打我，小莲竟还比不过一本图卷。

    渐渐的委屈转为愤怒，狠狠地咬牙瞪着刘定魁，嘴角一撇牙一咬，猛地从卷册上撕下了美女图画扔在了地上。

    心神慌乱的刘定魁，哎呀一声，赶紧跑去弯腰捡起了图画，万分爱怜般轻轻抚着并没有沾上半点灰尘的画中美人儿。

    在娘家向来被视若珍宝的小莲，哪受过如此委屈。单手捂着脸，溪水般潺潺流下的泪水，却浇不灭脸上火烧般的炙热。

    憧憬着美满新婚生活的心顿时凉了，可怎么也无法明白，自己好好的一个大姑娘嫁给了他，却还比不过一卷图册。更可气的是，他还要把图册贴到自己脸上干那种事儿。

    抽泣着抹着满脸的泪水跑向屋外，也不管公婆的极力劝阻，行李也不收拾了，满心委屈的跑回了娘家。',10046,10137);
insert into ds_book values(null,10138,' 一连半月，没了老婆的刘定魁，虽还有画中美人相陪，可已吃过情欲甜头的他，却没了能对画中美人发泄情爱之意的对象。整日愣愣的看着图画憋得两眼通红，头上青筋暴起，整个人都如暴躁的公牛一般粗粗的喘着大气。屋中瓶瓶罐罐早已被砸的破烂不堪。

    家中老父母更是着急不已，可不管怎么劝说，那沉迷其中的儿子干脆就是爱理不睬。气的上去给他两个巴掌再踢上两脚，却也只换来儿子古怪的呵呵傻笑。

    老夫妻想了想，实在没有办法，也只能硬着头皮携带重礼来到亲家想要说合说合。但每次还没见到儿媳妇，就被她的哥哥兄弟给毫不客气的打骂出来。

    一连几个月，看着被憋的日渐消瘦心神不定的刘定魁，老夫妻也只有寻些偏门邪法。四处打听，找来些号称能驱凶辟邪的能人来。

    可这刘定魁根本不予配合，弄急了，就认为这些人是要夺了画中美人。进而更加疯狂暴躁，抄起桌椅板凳就要与来人拼命，更有甚者手持菜刀追的来人满院乱跑。时间久了，也就没有那个能人敢来管其闲事了。

    这能人中就有芦半仙。可这被撵出来的芦半仙却并不甘心，天天徘徊在刘家门口，想着一有机会，就能来个顺水摸鱼的活儿。

    自打小莲回娘家一连五个月过去了，这日清晨，三个精壮汉子，簇拥着一顶小轿来到了刘家门口。

    这三个精壮汉子，两个是小莲的哥哥，一个是小她一岁的弟弟，轿中坐的不用问就是小莲自己了。

    三个汉子也不敲门，上来一脚就踹开了半掩的门户。大叫着：“刘定魁你出来，今天舅爷们亲自上门，来找你说道说道。”

    吓的老夫妻赶紧笑脸相拦，三人撇开二老，径直跑向屋内。见刘定魁还愣愣的看着图画傻笑，气得大哥过来就是一脚，把其踹翻在地，二哥想要过去夺过画册，但这刘定魁虽已迷失心智却是不傻，知道自己反抗不了，干脆死死的把画册抱在怀中蜷缩在地，任凭三人拳打脚踢。
','   三弟看着地上的姐夫如此熊样，心中怒火更胜，对着两个哥哥说道：“大哥、二哥，咱把他弄到外边揍他，让街坊邻居们评评理，也让他刘家丢丢人。”

    三人，大哥抱着愣货脑袋，剩余二人各自抓着一脚，抬着刘定魁走出大门，重重的摔在了地上。

    “揍他，今天不把他揍醒，就把他揍死。”

    三弟个子小，叉着腰站在一边看着两个哥哥揍人，嘴却不闲着，对着聚拢而来看热闹的人群大声说道：“乡亲们，认识这熊货吧！我都不好意思说他是我姐夫，这家伙不知坏了哪根筋，趁着家里漂亮媳妇不要，竟迷恋上了画中人。可天下就有这等怪事儿，还偏偏就让我姐姐遇到了。”

    说着来到轿前掀开轿帘又说道：“大伙都来看看，我姐姐那点配不上他了。”

    只见小莲低着头从轿中走出，一手拎着一篮青色的果实，另一只手扶在微微隆起的腹部上。见众人望向自己，红着脸狠狠瞪了三弟一眼。

    平稳了一下心神，径直来到刘定魁旁边。见蜷缩地上疼的哼哼直叫的刘定魁，顿时心中不忍，委屈的眼泪禁不住又流了出来，俯下身子摸了摸丈夫的头说道：“小莲还记得咱爸妈说过，别的孩子小时候爱吃糖葫芦，你却独爱这山楂，就算再酸你也不怕，那时的我还暗暗窃喜，心想世间竟有如此巧事，你我夫妻竟口味相同，定然是前世修来的缘分。小莲我家中看着窗外的山楂开花，又结出了些许果实，就忍不住不去想你。今日起了个早，亲自打下了一篮，虽是青果，却也拿来给你尝尝啊！”说着伸手递给丈夫。

    刘定魁见有人和自己说话，斜着脑袋偷偷看了看自己的妻子。

    小莲擦了擦眼泪，继续说道：“定魁啊！我知道，千错万错都是我的错。我不该跑回娘家的，其实回娘家没过几天，小莲就后悔了，想回来找你。可我这几个兄弟不同意啊！拦住了说是要等你醒来，亲自上门来请才行。可我心中却总是想着你、盼着你，一连几个月天天望眼欲穿的盯着门口等啊！等啊！怎奈却无郞的身影。小莲我真的好想你，今天是铁了心定要回来的，而且我还要郑重的告诉你，不管以前你对我怎样，我也不管你对我是不是真有感情，但是我对你却是当真的，我愿继续陪伴在你的身边，你还能接受我吗？”

    听完这句话的三兄弟更是火冒三丈，上前又是几脚踢在了愣货屁股上。
','    刘定魁抬起头来看了看自己的媳妇，又偷偷瞅了瞅怀中的画像，想起了妻子撕掉图画的一幕，使劲儿摇了摇头。转而又满脸爱怜的把画中美人紧紧抱入怀中，继续蜷缩在地。

    本来还想用真情感化丈夫的小莲，用力的闭上了眼睛，手中的一篮青果瞬间洒落一地。虽然紧紧的闭上了眼睛，却根本闭不住眼中的泪水夺眶而出，重重的砸落在地。

    “揍他，揍死他这不知廉耻的家伙。”三兄弟又起身上去想要下手，却被小莲拽了回来。

    “定魁啊！你不要我没关系，你自己的孩子还能不要吗？我腹中可有你的种啊！”

    刘定魁惊讶的抬起头看了看小莲，根本不假思索的又拼命摇了摇头。

    老夫妻大为所动，老母亲更是泣不成声，跑上前去对着儿子又是拳打又是脚踹，顿时气急晕倒在地上。老父亲上前抱住妻子口中哽咽的说道：“逆子啊！逆子，老天啊！我老刘家啥时候造的这孽啊！”

    一旁小莲泪已流干，狠下心来瞪着眼呲着牙说道：“好你个刘定魁，小莲我一让再让，你自己孩子不要了是吧？你都不要了我还留着干嘛。”说罢双手使劲儿向着腹部锤去，三弟赶紧上前拦住。小莲作势跳起来要往地上摔，又被赶来的大哥抱住。

    此时的街上围满了黑压压的人群，咣咣的急促铜锣声传入耳中，人群被几个手持铜锣长棍的衙役差人硬生生撵出一条通道来。几人来到跟前，当头的大声喊道：“吵吵什么，聚众闹事不成，那个要敢闹事，小心我手中锁链有一个绑一个。”

    三弟沮丧着脸迎上前去：“官差老爷，您给评评理，就地上这人抛妻弃子......”

    还没等说完，当头的差人拦住了他的话，大声说道：“我不管你什么理不理的，有天有地有王法的地方，自然有说理的地方，兄弟们锁上。”说罢一众差人一拥而上锁住了几人，可那刘定魁仍然蜷缩在地一动不动，当头的干脆让三兄弟抬死猪一般拽着向县衙走去。

    黑压压的好奇人群跟着尾随前往，可这芦半仙却趁着人群离去，偷偷的窜入刘家。先前来过几次的他径直跑入刘定魁的屋内，从本就被砸的空剩一床被褥的床上，摸出了被撕掉画像的卷册，满心欢喜的塞入怀中。走的时候还不忘闭好门户，追着人群向着县衙跑去。

    这芦半仙打从第一次来到刘家，就从老夫妻的手中看到了被刘定魁弃之不看的残存卷册。本来也并不知此册有何异样，可回家后躺在床上琢磨了一夜，从书名中悟出些门道来，心想‘看那卷册像是个什么地方的图纸，难不成，就如其书名是个藏有神仙的地方？’

    做他们这行的要说不信鬼神那是胡扯，芦半仙天天做梦都想着成仙得道，要不也不会自称半仙了。又见刘定魁被画中美人迷的心神丧失，就知这书名一定不假。所以就整天徘徊在刘家门口寻思着怎么才能弄来宝卷，正愁无从着落刚好今天得此机会。',10046,10138);

insert into ds_book values(null,10139,'李沁把眼皮睁开了一条细缝。

　　视野昏暗又模糊。

　　他看见墙上的锻铁花纹护栏里有盏熄灭的煤气灯，墙边的桌面上竖着架油腻腻的青灰色银烛台，那支牛油蜡烛快烧到底了，烛焰像团朦胧的影子，左右摇晃，让人内心十分不安。

　　这是哪？

　　他深吸一口气，一股复杂的味道紧跟着冲进鼻腔，烛蜡、霉斑、药品、酒精……这突如其来的袭击呛得他蜷起身子，咳嗽起来。

　　好一会才止住咳嗽，嘴里却泛起了铁锈似的血腥味。他喘息着撑起身子，开始打量四周。

　　身边陌生的环境让他以为自己在做梦。

　　他左手边是一扇木板墙，嵌着扇浑浊的发黄的圆玻璃窗，窗边挂着毡帽、黄铜口哨和木版画，窗外很黑，浓雾把煤气灯的光芒掩盖得很微弱，视线越过杂乱拥挤着的屋顶，隐约可以看到远方高耸的巨大烟囱和钢铁支架。

　　一艘蒸汽飞艇缓缓掠过半空，排气口里偶尔喷出几朵暗沉的橘红色火花，雷鸣般的闷响传出老远。

　　夹着煤烟的寒气从钉死的窗缝里钻进来，打在脸上，他一个激灵，心脏砰砰乱跳起来。

　　一些莫名其妙的记忆碎片浮上脑海。

　　这里是新历973年的冈堡，斐列帝国的首府，全世界工业发展最鼎盛的城市之一。

　　杂乱的画面走马灯般快速闪逝。

　　蒸汽机械、煤烟雾霭、繁荣、肮脏、大麻烟四处弥漫……

　　这不是地球。

　　难不成？

　　李沁张了张嘴，低头展开双手。

　　手指修长，手掌很饱满，他翻过手背，苍白的皮肤衬得青色血管分外明显——这是一双陌生的、年轻人的手，看起来缺乏营养，但还算健康。

　　是真的。

　　他穿越了。

　　“这……”

　　李沁愣了好一会。

　　作为一个被确诊了胰腺癌晚期的海军陆战队军官，他在手术台上有过无数次再活一次的妄想，结果，妄想成真了？

　　他回过神来，狠狠擦了两下鼻子，习惯性的去摸裤兜，却没摸到烟，只好闷声咳嗽了一下，继续观察身边的环境。

　　现在他脑子很乱，压根理不清思绪。

　　这具身体是什么身份？这里安不安全？都是未知数。

　　他面前有张桌子，桌面很大，左半边摆着玻璃瓶、坩埚等器皿，右半边是许多张凌乱堆叠的手稿。中间部分的木书撑上躺着一本书，书封上斑驳褪色的鎏金描绘出双蛇杖的图案。

　　书的边上是脏兮兮的陶杯、茶匙，还有一瓶半开的贴马头商标的墨水瓶。羽毛笔下压着一张莎草纸，纸上是古怪的黑红色的符文和阵图，透着股夹杂了血腥气的墨臭。
','　　阵图上有一行字。

　　这些字？

　　“银白月光照见前路……”

　　李沁艰涩地读懂了纸上的血字。

　　这是大洲上流通的埃蒙语，他却能认出来，是得益于脑袋里那些莫名其妙的记忆。

　　这时，纸上那行暗红色的字迹像虫子一样蠕动了一下。

　　李沁一个激灵，视野突然模糊了一下，又清晰起来。他再定神去看，那些字又恢复了原样。

　　“幻觉？”

　　李沁心里犯起了嘀咕，他眼睛一瞥，在银烛台边看见了一件小臂长短的棕色刀鞘，鞘口雪亮包银的雕饰映着烛光，三颗不知真假的欧泊石色彩瑰丽。一柄樱桃木柄的短刀倒在一旁，刃上还有血迹。

　　李沁突然记起了什么，抬起左手一看——食指肚上有一道伤口，不过已经结痂了。

　　一些断续的画面出现在脑海里：就在刚才，“他”用那柄短刀割开了食指，把鲜血融进墨水，写下了法阵和咒语。

　　“真他妈邪乎。”李沁骂了两声，拿起了短刀。

　　对着烛光，雪亮刀刃的倒影让他目睹了自己的尊容——一个留着黑发年轻人，棱角分明，算得上英俊，虽然皮肤憔悴苍白，却处处透露出黄种人的特征。

　　就在这时，他的意识突然一阵空白，那些凌乱的记忆碎片像是被一双无形的手强行拼凑到一起。关于这张脸的信息，也于刀绞般的剧痛中浮现出来：

　　雷·贝德维尔，伦哥威治教区福利院里的一名孤儿。

　　即使在冈堡，这个鱼龙混杂的大都会，雷的东方血统也不多见，四岁时，他被坚信东方人能带来好运的典当行老板贝德维尔夫妇收养，摆脱了日后成为童工的命运。

　　今年十九岁的雷，是梅迪丽大街警察局的见习警员，三天前，他收到了一份遗产，其中包括一些瓶瓶罐罐，还有一些关于炼金术，甚至涉及到神秘学的书籍。

　　遵从书上的知识，雷布置了仪式。

　　记忆至此断裂。

　　他再次清醒时，就成为了从地球魂穿过来的李沁。

　　李沁又瞥向那张画着暗红色神秘阵图的莎草纸，又把目光移到那本摊开的《月照之路》上。

　　这本书，是独居在梅迪丽大街六十五号的赫本·阿伯特赠予雷的遗产之一。包含那张阵图在内的神秘仪式，都是这本书上的知识。

　　融合了雷的记忆，李沁对这本书印象很深，不过关于这本书的一些细节，他却怎么也想不起来。

　　李沁想了想，在桌上翻找起来，书边凌乱落着许多张手稿，里面除了炼金术学习笔记，还有雷·贝德维尔对日常的记录。

　　李沁找到了他需要的信息：

　　“7月11日；我得珍惜见习警员的工作，虽然戈登没说，但我猜他至少为此付出了五镑以上的代价。”

　　“7月12日；真想拥有一辆汽车啊。”
','　　“8月16日；伍迪终于不再让我端茶送水了，从今天开始，我的工作即将步入正轨。”

　　“8月17日；打牌。”

　　“8月18日；打牌。”

　　“8月19日；打牌。”

　　“8月20日；我的牌技终于不再那么臭了，但我必须停止颓废下去。雷！你忘了戈登的付出了吗！如果不背完《分析机原理与使用》的话，你肯定没法通过转正考核！”

　　“8月21日；打牌。”

　　“8月24日；没钱的日子阴郁又绝望，没什么好记录的了。”

　　“9月12日；炸鱼薯条店的克莱儿不小心把醋洒在我身上，她对我道歉了，让我明天去她家拿洗好的衣服。她八成是故意的。”

　　“9月13日；我喜欢她的嘴唇，比布丁还柔软。”

　　“9月23日；我为赫本先生驱赶了几名非法入侵的小偷。可惜，如果有配枪的话，我不会让他们走得那么轻松的。”

　　“9月25日；可怜的赫本先生，他感染了热病，竟然没有一个亲人来照料！虽然他性格孤僻了点，但不得不说，他是一个睿智而博学的人，我去弗拉奇医院看望他的这几天，他很多话都启发了我。”

　　“9月30日；我到现在还是无法接受，赫本先生，我的朋友，竟毫无征兆的，走到了生命的尽头！”

　　“10月8日；我收到了一份遗产，是来自赫本先生遗嘱指定的赠予。难以置信！赫本先生竟然还有另一重身份，他不仅仅是一名打字员，还是一位神秘的炼金术士！我得好好保守这个秘密。”

　　“10月15日；原来炼金术如此伟大，但其中涉及到神秘学领域的知识却让我忐忑不安。为什么斐列帝国安全法案与教会的异端裁决条例要限制神秘学传播？甚至每年都有私自探究神秘学的不法者被绞死……天哪，就在几天前我还在伍迪警官的命令下焚毁了一批禁忌书籍，而现在，我竟把自己关在阁楼里，日以继夜地沉迷其中！雷！是时候清醒了，这样下去，等待你的将是灰骑士的铁蹄与车轮！”

　　“10月18日；我终究没有抵挡住诱惑，可追索真理又有什么错呢？”

　　“10月19日；我又做了那个梦，月光像水银一样，流淌在林地中，是谁在我耳边低语？”

　　“10月21日；我受够了见习警员的工作！那些黑帮小子知道我没有执法权，甚至敢当面羞辱我！我会找回这场子的！今天下班前，伍迪竟然还骂我没有按时探问街区里那些有案底的潜在罪犯？这头肥猪难道不知道，就是他那些鸡毛蒜皮的事占据了我的时间吗？等着吧，我迟早用他那油腻的胖脸擦鞋！”

　　“10月24日；糟糕的一天，操！连克莱儿这婊子都对我闭门不见！去他妈的，我该考虑换个情人了。”

　　“10月25日；生活不会永远晦暗无光，我终于进入月照之路了。来吧，雷，你将获得真正的力量——耳畔低语越来越清晰了，是你吗？赫本老师。”

　　“10月27日；他们说我最近有点神经质，这群婊子养的！”

　　“10月28日；令人沮丧，竟然连戈登也认为我神经质。雷，冷静下来，你不得不重视这个问题了。该死的，书上的知识不厌其烦地提醒我接触灵界有多危险，可我竟然自大地忽视了这些话！停下来吧，我可不想真的变成疯子，更不想被拖上绞刑架！”

　　“11月……哈，怎能奢望平庸之辈理解我的追求！”

　　越是往后，手稿的字迹和逻辑就越凌乱。

　　把后面的手稿与前面的对比，可以发现，雷的精神似乎的确出现了问题。

　　昏黄烛光下，李沁舔湿手指，翻阅着手稿的同时皱起眉头。

　　从这些日记里，不难发现，雷·贝德维尔本来是个普通人，但那份遗产改变了他的生活轨迹。

　　“月照之路，耳语，幻觉……看起来，探究神秘学会导致不知名的危险。不过他具体怎么死的？”

　　李沁摸着下巴，忽然见到《月照之路》下，还压着一角手稿。

　　把手稿抽出来一看，那上面的字迹尚未干涸，竟然也是用鲜血写就，像一团团暗红色蚯蚓，笔记中透出的癫狂与恐惧令人触目惊心：

　　“赫本老师！放过我！”

　　赫本？那个死了的赫本？。

　　一阵意义不明的呓语在耳边响起，李沁身子突然僵硬起来，后颈一阵发凉，好像有什么东西正趴在他背后呼吸。',10047,10139);
insert into ds_book values(null,10140,'见鬼了！

　　李沁脑子里轰的一下，肾上腺素急剧分泌，他反握短刀，转身的同时向后削去，却扑了个空！

　　身后空无一物。

　　他胸口急剧起伏，呼吸粗重，这不光是因为紧张，这副身体曾被癫狂的精神状态折磨得很虚弱，刚才挥刀的动作有点用力过度了。

　　刚才那是什么？

　　记忆里，雷研究神秘学之后，这种幻觉不是第一次出现，这也是后来让他精神失常的原因之一。

　　“我穿越过来，这些幻觉竟然还在？”

　　李沁握紧了刀柄。这不是幻觉，真有诡异的东西缠住了他。

　　回想起来，雷·贝德维尔此前几度曾想停止作死，但各种诡异现象和耳语缠身，让他根本无法自控。

　　对于这种现象，那本神秘学书籍中解释得很清楚——弱小的灵魂贸然接触灵界，不光会吸引贪食的恶念，还会受到精神污染。

　　麻烦了，贝德维尔的困境竟然延续到了他的身上。如果继续这样下去，他恐怕也会步其后尘。

　　更麻烦的是，摆脱这些麻烦的唯一的办法竟然是继续深入探究神秘，直到让灵魂升华，让自己成为超凡者！

　　“月照之路里说到，灵魂升华后将得到超凡脱俗的力量……这样就能摆脱恶念和精神污染。”

　　李沁梳理着思绪。

　　根据贝德维尔的记忆，这个世界上似乎有超自然现象存在。那些具备超自然能力的人，一般被称呼为“超凡者”，但政府只承认一部分可控的超凡者，并将他们列入编制，但编制外的超凡者，则被当作危险力量严酷镇压。

　　现在的问题是，为了解决麻烦，他必须要想办法成为超凡者，但如果他私自钻研神秘学的事暴露出去，他要么被秘密处决，要么被拖上绞刑架杀鸡儆猴。

　　李沁调整着呼吸，稍微镇定下来，思索时，几乎是下意识地打开抽屉，拿出一个铁皮盒子。

　　铁盒里，马粪纸包着伯顿巷二十七号出售的薄荷味烟草，是雷最爱的莱尔牌——雷的习惯也进入李沁的深层意识了。

　　舀出一匙烟草填入手边的烟草锅，点燃酒精灯，在灯网上加热木炭和水烟壶。木炭燃烧的细微噼啪声和水烟壶里焦油过滤液的咕哝声有出奇的镇定效果。

　　李沁紧接着把发红的木炭压入烟草锅，拿起玻璃烟嘴凑到嘴边深吸一口。滤去焦油后的滚烫烟雾，火辣辣地冲进肺部，他喘了口气，吐出浓浓的烟雾，口腔里还留着薄荷的清凉。

　　穷归穷，还是得享受，这就是包括雷在内的，绝大多数的平民的生活观念。

　　“有意思，我思考的时候，竟然用的是埃蒙语？”

　　李沁发现原主的记忆融合度正迅速增长。

　　这是一件好事，起码之后不用为语言能力担心，保留这些习惯，身边的人也不会发现他穿越的事实。

　　思绪逐渐清晰起来，李沁放下烟嘴，看见阵图边倾倒着一枚拇指大小的棕色玻璃药瓶，捡起来一闻，残留的糖浆甜香里，还夹着一丝类似鱼鳞草的腥涩味。
','　　他脑袋里突然冒出来一段记忆——这是海克拉夫酊剂，常用作医疗镇定止痛剂，但由于同时也兼具致幻作用，所以很受瘾君子的青睐。这玩意还能让人在疼痛中维持平静与信念，所以常被用于研究神秘学。

　　它价值不菲，在非法的购买渠道中，一剂能抵得上见习警员半月的工资。

　　雷的积蓄大多都花在这里面了。

　　李沁捏着玻璃瓶，突然想到了一件事。

　　赫本如果是一位高明的炼金术士，应该能提前预知风险，他为什么没有警告雷，关于精神污染的事？

　　赫本没理由害雷，也许，他在遗产中留下了额外的信息，但雷没有发现？

　　李沁在屋里翻找起来，然后打开了左手边的抽屉。

　　三本封皮发黄的书出现在眼中：《四元素与原子论》、《嬗变之秘》、《格尔坷抄本》，都是炼金术书籍。

　　李沁发现了一个疑点。

　　这本《四元素与原子论》囊括的几乎都是基础入门知识，但后两本书的难度却迅速拔高，这里存在很明显的知识断层。

　　“为什么会这样？如果说连赫本自己都是个蹩脚的炼金术士，那么，他没有让雷提防精神污染也是理所当然，那我也玩完了……”

　　“不过，照这些炼金术士通常的尿性，他们喜欢把知识用假名、指代、隐喻等各种办法来加密……”

　　李沁想到格尔珂抄本里，格尔珂的老师，大贤者帕乌莫斯的一句名言：【我们要把知识传递给配得上的人。】

　　从那以后，炼金术士们的交流和传承就不再直白，变得神秘且晦涩。当下，这种方法不仅被用来筛选聪明人，也是提防帝国政府与教会的重要手段。

　　“如果赫本也隐藏了谜题，这事就还没到绝境。”

　　李沁紧紧抓住眼前的救命稻草。

　　他打开黄铜怀表，时间已经接近凌晨三点。

　　换上新的蜡烛后，他开始重新翻阅赫本遗赠的四本书。

　　原主经常研究神秘学到深夜，为了掩人耳目，刻意没有使用方便的煤气灯，而以光芒昏暗的牛油蜡烛取代，在夹杂着工场浓烟的雾气掩盖下，从外面很难发现窗内有亮光。

　　融合了雷·贝德维尔的记忆，这些书籍对李沁来说不像没开荒的副本那么艰涩，不过也称不上简单。神秘学与炼金术脉络严密，某一个知识点的缺失，会让整节内容都蒙上一层迷雾，仅具备中学文化素养的雷对这些知识的理解十分有限。

　　“这个世界的炼金术，不能完全用我在地球上学到的化学知识生搬硬套……”

　　……

　　三个小时过去。

　　……

　　房间里烟味浓的已经浓到呛人，李沁终于有了重大发现。
','　　最复杂的《嬗变之秘》里，赫本的注释展现出了十分广阔的知识面，他没有受到知识断层的影响！也就是说，他没给雷完整的知识。

　　“果然留了一手啊，赫本。”李沁用力揉着眼睛，忽然想到，自己忽略了一样东西。

　　找了一会，他从抽屉底层抽出赫本的遗嘱，用布满血丝的双眼瞥向遗嘱下方优雅的花体字签名。

　　遗嘱末尾，赫本的话映入眼帘：

　　“亲爱的雷，请原谅我冒昧的赠予，因为这对你来说也许并非幸事。但如果你也不甘平凡，那么，请欣然接受它们。”

　　“一首小诗，希望你能将它镌刻在我的墓碑上：

　　在水晶的王座里，我是崇高的赛露娜涅。

　　银色长袍被洗礼得金碧辉煌。

　　时若青铜般深沉，时为紫色暗影包裹。

　　最后我身披大地，在雨里写下终章。

　　一切于洗礼中呈现。”

　　“祝好运。”

　　李沁一遍又一遍地看着这首短诗。

　　如此明显的隐喻，但在开始的时候被知识不足的雷忽略了。

　　当他有了足以解密的知识，精神污染却让他失去了基本的洞察力。

　　不过李沁还保持着清醒。

　　他仔细看着遗嘱梳理思路：

　　“水晶王座隐喻烧瓶，赛露娜涅……是古代埃灵王朝的月神。

　　“在炼金术中，月亮代表银。银色长袍变成金色，再变为青铜色、暗紫色，最终稳定在棕色，这是银币在硫水中轻微煮沸一小时的反应过程。”

　　“一切于雨中呈现，是要我用硫水处理这份遗嘱？这封遗嘱上应该有跟银有关的信息。”

　　李沁捏起遗嘱，对着蜡烛仔细查看，遗嘱底部，有一线银色斑点映照着烛光，若隐若现。

　　这是银粉书写的字迹，隐藏在白纸上，与硫水反应后，将以棕色显现于世。
',10047,10140);
insert into ds_book values(null,10141,' 凌晨六点半。

　　窗外渐渐明亮起来，第一辆公共马车从街道上驶过。贝德维尔家二楼传出一阵叮当声，是伊迪萨大婶在用银匙敲打牛奶瓶，向家人宣告早餐的开始。

　　二楼的卧室被推开，贝德维尔夫妇的小儿子，十一岁的班快步跑下楼梯。

　　“班！你得先刷牙才能吃早饭！！”伊迪萨大声喊道，紧接着声音变得温柔起来，“早上好，迦娜，你今天还是这么漂亮。”

　　“谢谢，妈妈。”迦娜小声回应，匆匆下楼。

　　紧接着是戈登·贝德维尔浑厚的声音：“雷还没出来？”

　　“我想你该带他去看看医生了。”伊迪萨叹气说。

　　戈登沉默了一会，紧接着，阁楼里的李沁听到了上楼的脚步声，他连忙打开窗户，寒风猛地灌进来，把房间里的烟味冲散了大半。

　　清晨的雾霭依旧未散，但已经是冈堡空气最好的时候。

　　李沁对着窗外深呼吸了一会。

　　硫水的制备和反应过程至少还要几个小时，但马上就要去执勤了，只能等晚上再尝试实验。

　　一定不能让家人发现这些秘密。

　　他走到木质边框的穿衣镜旁，盯着镜中的自己。

　　“雷·贝德维尔……雷·贝德维尔……”

　　“以后，你就是我了。”

　　这时，身后传来敲门声。

　　整理好凌乱的衣领，雷转身打开屋门。

　　门外人是戈登·贝德维尔，雷的养父，他身材魁梧，脸颊上蓄满茶褐色络腮胡，黑色亚麻长裤用皮带扎得十分整齐，三条银表链从白色衬衫前胸的口袋里伸出来，挂在脖子上。

　　冷不丁扑面而来的烟味让戈登猝不及防，他掩了下鼻子，皱眉说：“哦哦！看看，你脸色真是糟糕！”

　　“抱歉戈登。”雷往前站了半步，“我最近都有点失眠，昨晚也没睡好。”

　　“是吗？”戈登目光瞥向屋内，视线却被雷的身体挡住，他皱了下眉，“虽然你成年了，但你如果你遇到了什么困难，我们都很愿意帮助你。说吧，孩子，你最近遇着什么事了？”

　　“我的确遇到了一点小麻烦。不过……”雷笑了，“会好起来的。”

　　“但愿如此吧。”戈登叹了口气，“快换好制服，不然你要迟到了。”

　　他转身下楼。

　　雷看着戈登的背影消失在楼梯尽头，然后来到洗脸架边，掬一捧冰凉的冷水洗了把脸。

　　水溅湿了架子上的靛蓝色油布，他对着镜子整理好了仪容。

　　“这样看起来就精神多了。”

　　他回到阁楼的衣柜旁，取出一套双排扣的黑色呢绒制服。制服领口是滚银边的，右肩有银色流苏肩饰，左臂则贴着黑白盾牌的袖章。这就是见习警员的制服，跟正式警察相比，只缺失了肩章。

　　他又打开抽屉，拿出一枚黄铜胸针。

　　胸针中央錾刻成一朵雏菊，是赫本弥留之际给雷的遗物。
','　　“为什么，我会写下赫本老师放过我？”

　　雷的念头一闪而逝，然后换上制服，夹着帽子锁上门，下楼来到餐桌旁。

　　戈登已经端着他咖啡，阅读今日的冈堡早报。班狼吞虎咽地塞下最后一片白面包，一旁的迦娜捏起班的餐巾，嫌弃地帮他擦去沾满下唇的牛奶。

　　“班！再过一个月你就十二岁了。”

　　“所以我能吃掉你的那一份吗？”

　　班意犹未尽地去拿迦娜的银餐盘。

　　“不行！”迦娜重重打了一下班手背，端着餐盘坐到另一边，又连忙让开，“抱歉，雷，我不是有意占你的位置。”

　　“不是你的错，迦娜。”

　　雷坐下开始享用面前的白面包和大麦茶，还有一块用昨晚剩下的猪腰子做成的馅饼。

　　贝德维尔一家的穿着和饮食标准向来在水平线以上，送班和迦娜读书也不成问题，这一切都归功于银手典当行不低的收入。

　　打起精神，雷吃完早饭，离开家门。

　　贝德维尔家的前屋就是银手典当行，在冈堡，高级的典当行经营者往往自称银匠铺子，像银手典当行这样大胆打出招牌的，便把受众面向社会底层。

　　这从外观就可以看出来，它的招牌落满灰尘，十分邋遢，店里堆积着大量木匠工具，还有床单、毯子等实用品，而贵重品区，仅仅摆着一些昆虫标本般贴着标签的戒指和胸针，一排陈旧的怀表，两串珊瑚和几只鼻烟盒。

　　门里已经出现了几名顾客。

　　一个衣衫不整的男人，头上那顶污秽的纸帽子遮住了半拉眼睛，隔着十几米远，都能隐约闻到他身上的酒气。

　　一个穿粉色丝袜的女人，褪色的绸子长袍单薄又浮艳。

　　戈登已经开始接待这些落魄的人，用毒辣的目光和苛刻的标准完成交易，不过，从戈登一直没有放下那杯凉透了的咖啡这一举动来看，他对这些小打小闹的生意心不在焉。

　　雷知道，时常会有一些特别的人出现在典当行里，他们比老鼠更加警惕，进入典当行后，戈登会慎重地把他们带进暗门，用远低于市价的价格接收他们的赃物。

　　在偷窃猖獗的西部教区，这是贝德维尔家的主要收入来源。

　　“戈登和格伦警司有私交，我也是通过这层关系成为见习警员的。”

　　雷梳理着和自己有关的家庭背景与人际关系，转身离开。

　　街道上，几个把脑袋缩在兜帽里的家伙在巷子里围着一个铁皮桶烧火取暖。

　　工场煤烟四处弥漫，还夹带着若隐若现的臭味，这片街区的公共厕所的建设计划尚在部署，公共马车驶过时会溅起了大片烂臭的泥浆。

　　不远处一辆清运垃圾的卡车经过，发出厚重而有节奏的机械声。这种新型的蒸汽机械使用了粉碎机和带有螺旋输送器、金属齿轮及活塞的垃圾压缩装置，多亏了它的存在，才让梅迪丽大街不至于变成地狱。

　　雷抬头看了一眼雾气中若隐若现的巨大烟囱，竖起衣领，快步穿越街区。

　　穿着油腻围裙的屠夫在路边叫卖黑铁钩上的肉类，小贩在装着半死不活的银刀鱼的木箱边大声吆喝：“看看，清晨刚从翡纳河打捞上来的，最新鲜的渔获！”

　　雷充耳不闻，二十分钟后，一座灰白的建筑出现在眼前，大门上方是梅迪丽大街警察分局的字样。

　　街道尽头突然传来一阵动静。

　　四冲程引擎嚣张的轰鸣声压倒所有喧哗，一辆革顶汽车破开雾气，出现在大街上。

　　在一片羡慕的目光中，这辆汽车停在警察局边，光亮的黑色车身宛如一块打磨完美的黑曜石。
','　　戴森总督查上前打开后座车门，谦卑地脱下帽子，迎接车里的人。

　　“尊敬的劳伦特大人，雾神与你同在。格伦警司正在等您。”

　　“谢谢，戴森。”

　　随着一道冷漠的声音，乌黑发亮的皮靴从车里探出来，带着不容置疑的果断，踩在肮脏的地面上。一个有着灰褐色卷发男人走出汽车，他戴着一尘不染的洁白手套，拂开银灰色斗篷，对戴森命令：“带我过去。”

　　“这是我的荣幸。”戴森低着头，对待跟前这位同时得到帝国议会与教会双方认可的超凡者，戴恩·劳伦特，驻守梅迪丽街区的灰骑士，这样的尊敬并不过分。

　　不远处，雷看着那个披着银灰色华丽斗篷的背影，神情凝重。灰骑士就是官方承认的超凡者，同时隶属于教会异端裁判所与帝国执法机构，他们被教规与法律赋予使用超凡能力的权力，用来抓捕法外的超凡者。

　　戴恩·劳伦特是一只冷酷而敏锐的猎鹰，而现在，雷是他的猎物之一。

　　“尽量不要引起他的注意。”雷谨慎地想。

　　……

　　因为劳伦特的到来，警员们一反往常的摆出精神十足的劲头，心无旁骛地忙活着，就算没事干的，也严肃地开始整理积压下来的那些鸡毛蒜皮的民事案件。

　　雷叫住身边一个见习警员同事：“早上好，安德鲁。”

　　“早安，雷。”同事压低声音，“伍迪警长正在找你，小心点，他看起来很愤怒。”

　　“我有心理准备了。”雷移开话题，“对了，又有什么重大案件，竟然惊动了灰骑士？”

　　“那帮破坏圣像的人，他们今天计划在梅迪丽大街开始游行。”同事看了一眼另一边伍迪所在的警务室，对雷笑了笑，“我得去行动处签到了。好运。”

　　圣像破坏运动？

　　雷想起了这一事件的始末。

　　一个月前，教会中的本源派认为应该将教会所信仰的“无名之雾”去人格化，否定圣像崇拜。这引起了各界的强烈反响，以大多数被各地修道院剥削的贫民为主体，在一些中产阶级与贵族的带领下，人们开始了反对圣像崇拜的游行。

　　游行终于波及到梅迪丽大街了。

　　很好，这样一来，灰骑士的注意力就会被引走。

　　雷盘算着，走进警务室，立刻迎来劈头盖脸的痛骂。

　　“我发誓你是我见过的最蠢的见习警员！”伍迪警长拍着桌子，“看看，昨天让你归档的这些文件，一头猪都做得比你更好！”

　　“您优秀的工作能力从来都是有目共睹的。”雷笑了笑。

　　伍迪显然没听出雷的潜台词，反而面色稍微缓和了一点，哼了一声：“听着，你现在脸色很差，但我劝你别再用没睡好的借口来搪塞我。今天是个重要的日子，劳伦特大人来到了分局视察，如果你做出任何出格的举动，我保证，你这辈子都不会再有机会拿到这份转正通知！”

　　伍迪拿起一份文件，对雷扬了扬。

　　“我的？”雷挑了挑眉。

　　见习警员和警员虽然只差两字，待遇却天差地别，先抛开薪资不谈，在一些紧急情况下，正式警员可是有配枪权力的。

　　成功转正，本来是雷在收到赫本遗产前的最大愿望，不过，一直严苛得过分的考核人伍迪警官，今天是转性了？

　　“事实上，十天前你通过分析机使用考试后，我就拟好了这份通知。”伍迪板着脸他的大饼脸，“但你最近的表现，好几次都让我有种把它扔进碎纸机的冲动。”

　　雷看着那张胖脸，这家伙好像突然变得没那么可恶了？

　　但紧接着伍迪又把转正通知拍回桌面，指着雷的鼻子说：“所以今天给我老实点，不然我真的会剥了你的皮！小崽子。”

　　“谨遵命令，伍迪警官。”雷懒洋洋行了一个举手礼。

　　“很好，从你的语气里，我听出了你的责任感。”伍迪点头，指向门外，“去行动处为所有人准备警械，那帮泥腿子快开始游行了，今天所有的工作，就是和劳伦特大人巡视街区，要上厕所的话，这是最后的机会，赶快！”',10047,10141);

insert into ds_book values(null,10142,'平行时空。

    蓝星。

    ……

    东方诚失恋了，真心付出过的爱情，难过在所难免。

    不过一个成熟的人，会努力走出阴霾迎接新的开始，而不是沉浸在过去的美好中。

    就像东方诚，虽然因此拉跨了三天，昨天晚上还喝了不少酒。

    但是他也已经下定决心了，就当昨晚的酒是最后一次祭奠这过去。

    然后好好睡上一觉，新的一天，重新出发。

    “从今天开始，我是要成为男神的男人！”

    清晨的卧室里，传来一声中二的叫声，反正卧室是自己的地盘，爱怎么嚎怎么嚎。

    【你好，未来的男神！】

    脑海中突然传来的清脆声音，让打着哈欠的东方诚惊了。

    他的嘴巴也定格在了张大的瞬间，就像当初他前女友偶尔的状态，连地点都一致，都是在床上。

    我只是随便嚎一嗓子而已，怎么好像有了些奇怪的东西？

    他紧张的左右看了看，卧室里空无一人。

    东方诚拍拍脑袋，急忙打开手机搜索：幻听了怎么办？

    搜索出的内容，似乎离不开这四个字：精神分裂。

    东方诚甩开手机一脑袋扎进了被窝里，分个破手还能把自己搞精神分裂了？

    真想赏自己一巴掌，要不要这么没出息！

    “宿主，淡定一些，你可以把我当作一款游戏，成为男神的游戏，让我陪着您一起进步吧！”

    东方诚拍了下脸颊，这不是幻觉？

    “这不是幻觉。”

    东方诚顿时一个激灵从床上跳了起来，这东西居然能听到自己内心的声音。

    “没错，我能听到你心里的声音，这个世界上本来就有一些你人类无法理解的事情，淡定。”

    东方诚：“……”

    “从今天开始，我要把你打造成一位身材完美、才华出众、气质迷人、家财万贯、有修养、高情商的男神！”

    东方诚摸着下巴，紧锁眉头沉默着，他在努力消化这件事。

    半晌，东方诚才缓缓开口：“你说得这些，为什么没有颜值？作为男神，这不应该是重点吗？”

    “因为宿主本身的颜值已经不错了，无需系统为此倾注太多精力。”

    东方诚又沉默了一会儿：“所以你的意思是……我现在是身材拉跨，没有才华，没有气质，穷逼，情商掉线……的人？”

    “可以这么理解。”

    “……”东方诚又一次撞进了被窝里。

    “不过也没有宿主说得这么严重，宿主的这些条件都是常人一般水平了。”系统急忙安慰。

    东方诚跳下床，站在镜子前。

    镜子里的人面部轮廓倒是不错，但发型紊乱，眼睛无神，额头上还冒出了个小痘痘，胡渣也已经生起，整个人看起来没什么生气。
','    身材应该是微壮，类似女人的微胖。

    但是男人微胖起来，好像就没女人那么好看。

    至于气质那玩意儿，拿着显微镜在这副尊容上都是找不出来的。

    “你认为作为一个男神，最重要的条件是什么？”系统开口了。

    东方诚愣了一下：“呃……单手……”

    系统：“单手解bras？你只有成为了男神，才有单手解bras的机会。”

    “我不是这意思。”东方诚很无语。

    系统：“再给你一次回答的机会，这个问题的答案十分重要，请谨慎作答，再次提醒，你的答案十分重要！”

    “呃……”东方诚沉思片刻，然后一本正经的口是心非：“我认为是修养。”

    “很好。”系统夸赞了一声：“所谓修养，即是：仁义礼智信，温良恭俭让，忠孝悌慎廉，勤正刚直勇。下面我就优先培养你的修养吧！”

    东方诚：“？？？”

    我要是说钱，你是不是就先给我钱了？

    “我认为钱也很重要的。”东方诚立马道。

    “不需要你认为，所有人都是这么认为的。”

    东方诚：“……”

    “不过你的思想觉悟还是有待提高呀！我们就先从修身养性开始吧！”

    系统的声音落下，东方诚面前便出现了一个透明的蓝色面板。

    【日常任务：暂未发布。

    隐藏任务：暂未触发。

    普通任务：【修身养性】小试牛刀，让我们从捡垃圾开始，去吧骚年！】

    任务奖励：1.专为宿主肤质定制的一揽子护肤化妆品，以及神奇的化妆术。（你真的该为自己的形象负责了。）

    2.未知奖励。

    “捡……捡垃圾？”东方诚人要晕了，已经没心思关注什么奖励：“你确定这真的是什么男神游戏吗？”

    “男神，顾名思义，是对一些优秀的男人或偶像的尊称。”系统解释道：“成为了男神，将来就会有很多人喜欢你崇拜你，勿因善小而不为，你当然应该树立起学习的好榜样，让更多人因你而变得更好。”

    “……”东方诚发现自己好像无法反驳这种毒鸡汤。

    “呵，十分钟前你还在叫着要做男神呢！现在就打退堂鼓了？”系统开始嘲讽。

    “我是要做男神，但不是捡垃圾的男神。”

    “捡垃圾，一样可以做男神，不信你试试？”

    “呵！“东方诚一脸愤怒：“试试就试试！！”

    ……

    洗完头，把胡渣刮干净，看起来总算精神亮堂了许多。

    拎着吹风机在镜子面前吹了个满意的发型，东方诚便出门了。

    下楼后，小区的路上刚好就有根烟头，东方诚便捡起来丢进了垃圾桶：“这就是男神了？”

    系统：“至少你在我眼里的形象，至少伟大了0.1分。”

    东方诚：“……”
','    系统：“相信我，你不会后悔的。”

    “我要捡多少个垃圾才算完成任务？”

    系统：“没有要求，现在就已经完成了，但是捡得越多，相信你会越开心，那种油然而生的满足感，是平常无法体会到的。”

    “……”东方诚不想理它了，这玩意儿好像很喜欢给人灌毒鸡汤。

    捡不捡垃圾先不说，他也想出去走走散散心。

    出了小区后，不远处就是个购物广场。

    大老远的，东方诚便看到广场上有一些丢弃的传单，显然是有人在这里发传单，一些人随手就给丢了。

    东方诚拍了拍手，那就捡一捡吧！

    嗯……城市是我家，文明靠大家！

    刚蹲下身子，东方诚便听到了系统的声音：“不要蹲下，内裤都漏出来了，太不雅观。”

    东方诚赶紧起身提了提牛仔裤，紧紧腰带，环顾四周，没人看到我的银臀吧！

    “作为一个男神，就算是捡垃圾，仪态也要优雅，身子不左倾不右斜，轻轻弯下腰，幅度无需太大，优美流畅的捡垃圾动作就完成啦！”

    东方诚轻“咳”了一声，勉强接受了系统的建议，轻轻弯腰捡起一张传单，好歹姿势是“文明”了许多。

    于是，广场上就这样出现了一位默默捡传单的小伙子。

    旁边一个年轻人随手把传单扔下，但是看到正在埋头捡传单的东方诚后，突然有些不好意思，马上又弯腰悄悄把刚刚丢下的传单捡起来了。

    【叮！恭喜宿主触发第一次隐藏任务：让更多人因你而变得更好。

    奖励：1.男神香水。）

    2.积分：500。】

    东方诚有些懵逼地扬了下头，这怎么就触发隐藏任务了？

    男神香水……可是我并不喜欢用香水啊！

    “这个积分有什么作用？”东方诚问道。

    “积分可以提高游戏等级，另外还可以1：1兑换现金。”

    东方诚乐了，这不就是钱嘛！

    ……

    广场上，有两个戴着口罩的妹子在窃窃私语：“那个捡传单的男生，好像挺不错的。”

    另一个妹子笑道：“这么年轻，不会是环保工人吧！”

    “肯定不是，环保工不是都有制服的嘛！他最多就是个环保志愿者呗！”

    “这么有修养有爱心的男人，有点帅呀！”妹子说着，低头也把脚下的一张传单捡了起来，潜意识里也受到了东方城的影响。

    刚好快要捡到她旁边的东方诚看到了这一幕，二人目光对视，妹子好看的眼睛眯在了一起，大概是笑逐颜开了。

    只是她戴着口罩，东方诚看不到她的表情。

    东方诚回了她一个微笑，一边捏了捏发酸的腰肢。

    我这老骨头啊！是得好好运动一下了。

    手中拿着一摞捡起的传单，看到别人也加入，东方诚的心境确实有了莫名的变化，感觉自己的道德和精神品位突然就升华了，一种美丽而敬仰的感觉从心底里升腾。

    通俗点说，就是自我高潮。

    又过了十来分钟，系统的声音突然再次传来……

    ……',10048,10142);
insert into ds_book values(null,10143,'【爆！恭喜宿主获得一份D级奖励【中级厨艺能力】。（作为一个男神，怎么可以不会一手好厨艺呢！）

    （注：每当有人对宿主的行为举止表示欣赏，称赞，或倾慕时，就有0.1%的几率“爆”出奖励。）】

    我敲（qiāo）……

    果然来捡垃圾是正确的选择啊！系统诚不欺我。

    D级奖励，那肯定还有B级C级吧！

    就是这爆率也太低了，一千分之一。

    放眼望去，此时广场上的传单已经少了很多。

    因为不少路人看到东方诚的举动，手里的传单也不好意思再丢了。

    果然，命令只能指挥人，榜样却能吸引人。

    但是想让广场上一张传单都没有，那也是几乎不可能的，就算东方诚在这捡一天可能都做不到。

    “好了，就捡到这儿吧！”东方诚揉了揉腰身，在心底对系统道：“可以给我奖励了。”

    系统：“确定了吗？”

    “确定了，你总不会要反悔吧！”

    系统：“既然这样，那就给奖励了，我就怕你反悔。”

    “切，我的字典里就没有反悔两个字。”

    【恭喜宿主完成“修养”支线任务，奖励物品如下：

    1.专为宿主肤质定制的一揽子护肤化妆品，以及神奇的化妆术。（你真的该为自己的形象负责了。）

    2.宿主共捡了126个小垃圾，每个20积分，共奖励2520积分。】

    “什么？捡一个20块工资？？”东方诚呆了一瞬：“你怎么不早说，我能捡到你破产！”

    系统：“呵呵，不是说你的字典里没有反悔两个字吗？”

    “没有反悔，但有后悔！”

    系统：“……”

    “呃……能不能让我再捡一会儿？”东方诚试着商量。

    系统：“不行，有奖活动已经结束了。”

    东方诚撇了撇嘴：“不行算了，反正我根本也不想捡了。”
','    系统不甩他这个话题，甩出了一个新任务。

    【普通任务：新造型。（男神就该有男神的样子，先去理个发做个新造型吧！换一副新面貌。）

    完成任务后奖励：1000积分。】

    东方诚想了一下，也觉得可以换个新造型，向昨天的自己说拜拜吧！

    从现在开始，向男神之路出发！

    拍了拍手里的传单，东方诚准备溜达去理发店。

    不过看到面前地上还有一张丢弃的传单时，东方诚没有多想，还是弯腰把它捡了起来。

    没有钱就没有呗！

    咱也不是干啥都为钱啊！

    【叮！恭喜宿主触发隐藏任务【折腰不为五斗米】，奖励1000积分。】

    “……”东方诚人要晕了，说了不给钱还是给。

    这破玩意儿，感觉自己早晚要被它玩坏的。

    系统：“惊不惊喜？意不意外？还有许多隐藏任务等着你去发现呢！加油吧骚年！”

    嗯……其实还是挺有趣的。

    “你还挺有才华的，不为五斗米折腰都出来了。”东方诚笑道。

    系统：“那当然！这不过就是个典故，出自《晋书·陶潜传》：吾不能为五斗米折腰，拳拳事乡里小人邪！”

    “晋书？”东方诚愣了一下：“这不是卫朝的典故吗？”

    系统：“地球上这个典故出自晋朝，你们这里出自卫朝，两个时空的历史有一些区别，不用太在意细节。”

    “地球是什么球？”

    系统：“你没去过，但我去过。”

    东方诚也不跟它絮叨了，这小东西的厉害之处早已经超出了自己的认知。

    不一会儿，东方诚忽然看到了不远处一个正在发传单的妹子。

    原来自己手里的这些东西，都是从她那儿来的啊！

    不过这也不能都怪她，确实是人家的工作，路人把传单扔在哪里，也不是她能管得了的。

    东方诚也没说什么，从她身旁走了过去。
','    妹子本来正背对着他，发觉身边有人经过时，下意识就朝东方诚递出了一张传单。

    “呃……”东方诚顿时愣了一下。

    “呃……”妹子也愣了，因为……两人认识，算是同学。

    只是虽然两人是同专业的，但东方诚是大一，她是大二，算是学姐。

    不过他们两个班的体育课是一起的。

    妹子长得并不漂亮，可能是主要是她的皮肤略黑，平日里也不化妆掩饰。

    平常在学校打扮的也很朴素，看着就觉得她很简朴。

    别人短裙黑丝大长腿，她永远是一身显得过时的长裤长袖。

    哪怕是闷热的夏天，东方诚偶尔遇到她，也从没见她穿过裙子或短裤，很有个性。

    而且这妹子的皮肤还略微黑，和那些皮肤白皙妆容精致的女孩比，真的就是丑小鸭了。

    这样的女孩，丢在人群中是没人注意的。

    不过她有一个好听的名字，任清欢，取自“人间有味是清欢”。

    两个人最多的一次交流，大概是东方诚大一开学时，是被她带着完成新生入学的。

    当时顺便加了她微信，但两人此后就没聊过天了，只是她偶尔会给自己的朋友圈点个赞。

    任清欢连忙收回传单，咬着嘴唇拘谨地低着头，脸上的笑容里也有几分尴尬。

    “我……”她支吾了一声，结果一句话没说出来，脑袋埋得更深了。

    东方诚一时间也不知道该说什么好，被同学撞到在街上发传单，似乎是会有一点小尴尬。

    “呃……”东方诚挠了下后脑勺，一时间也有点短路了。

    “果然情商一点儿都不在线。”系统那恨铁不成钢的声音传了过来：“你应该这么说……”

    “这么巧，一起发啊！”东方诚笑着拍了拍手里的传单。

    这是系统教他的。

    “你也……发这个的吗？”任清欢这才微微抬起头，结果还没和东方诚对视，她就又垂下了脑袋，很腼腆的样子。

    不过她的声音倒是清脆可人，十分动听，这一点……和她的外形气质有一点不搭。

    “这还能有假嘛！”东方诚笑着挥了挥传单：“暑假嘛！自己出来搞些兼职，不能什么都靠父母，我们俩的单子是一样的，不过我接这单子的时候怎么没看到你呢？”

    妹子任清欢闻言，低着头微笑了一声。

    其实她心里知道，东方诚并不是来发传单的，因为刚刚看到东方诚在广场上捡传单了。

    她在这边发，东方诚在那边捡，感觉好像在给他增加负担，怪不好意思的。

    所以她就悄悄走远了一些，没想到东方诚也跑到了这边……

    ……',10048,10143);
insert into ds_book values(null,10144,'任清欢尴尬，主要也不是因为被东方诚撞到她发传单，而是他捡的传单，自己是始作俑者。

    但任清欢的小脑壳显然也挺笨的，东方诚的这个问题她也不知道该怎么接了。

    “我……我也不……知道的。”妹子只能支吾了一下，鬼使神差的把这问题抛给了东方诚：“你知道为什么吗……”

    东方诚心想，我知道个锤子啊！

    “肯定是因为我们俩是不同的时间接的单吧！”系统教的话马上从东方诚口中说了出来。

    “嗯……那应该……是这样的……”任清欢低着头抿着嘴唇，肩膀微微缩着，看起来孤独无助又弱小。

    东方诚见状也无奈了，这妹子可太害羞了，说话都不敢看着自己的眼睛。

    可能是因为她外形不佳，家庭条件也不好的原因，潜意识里有一些自卑。

    “那我去那边发了，咱们一起加油！”东方诚笑了一声。

    “嗯……”任清欢点了点头，深吸口气，似乎是鼓足了勇气，终于抬头直视着东方诚的眼睛：“谢谢你！”

    她的眼睛很清澈，尤其是被那略黑的皮肤衬着，更显得明亮而水灵。

    单说这双眼睛，足以称得上漂亮了。

    上帝给她关了一扇门，但也为她开了个窗户啊！

    “不客气，开学见！”东方诚笑着朝她挥了下手，便继续往前走了。

    任清欢一直目送着东方诚远去，心底暖暖的，为了装得像一些，他还真给路过的人发了张传单。

    自从上了大学以来，就很少有被人善意呵护的感觉了。

    毕竟大家都喜欢白白的漂亮的女生嘛！

    任清欢扁扁小嘴，打开手机相册，输入密码，里面有一些照片。

    照片上的女孩虽不施粉黛，五官依然十分精致俏美，皮肤亦是光滑白皙，一双水灵灵的大眼睛像会说话般动人。

    跟现在这个黑不溜秋的女孩，简直就是两个世界的人。

    任清欢深吸了口气，收起手机望了一眼天空，继续干活了。

    ……

    “就你这情商，到底是怎么交到女朋友的？”系统的语气很轻蔑。

    “是她追的我！”东方诚哼道。

    “哦，当初她瞎了眼，现在她终于看清楚咯！”
','    东方诚气急败坏：“你现在要在我面前！我让你明白花儿为什么那么红！”

    “这可就涉及到专业知识了，因为花儿的细胞液里都含有由葡萄糖变成的花青素，当细胞液是酸性的时，花青素就呈现红色，酸性愈强，颜色自然就愈……”

    “闭嘴！”

    “哟……这就气急败坏了，作为未来的男神，连自己的情绪都管理不好的吗？真是有够好笑呢！”

    东方诚干脆不理它了，也不知道这东西阴阳怪气是跟谁学的，估计是跟哪个狗主播吧！

    系统：“虽然刚刚是我帮的你，但你也比较明事理，还是给你500积分奖励吧！不快谢谢我？”

    “谢了谢了。”东方诚敷衍道。

    “当我们为了他人的幸福和希望而适度地撒一些小谎的时候，谎言即变为理解、尊重和宽容，也让人确定世界上有爱，有善意，有感动。”

    东方诚笑着晃了晃脑袋，这是天天要被洗脑啊！

    不过谁又能说它的话不对呢！

    明是非，懂善恶，做一个心怀善念的人，没有什么不对。

    就在这时，手机突然响了，是表姐沈岚打来的。

    他现在就住在表姐家里，因为失恋了，心情不太好，就跑来找表姐放松一下了，反正也不要钱，还包吃住。

    “醒了没有？”表姐的声音传了过来。

    “早醒了。”

    “那就好，晚上有两个朋友来家里玩，提前跟你说一声，记得好好收拾一下自己。”

    “男的女的？”

    “女的。”

    东方诚当下有些无奈：“我说了暂时真不想找女朋友了。”

    表姐非说什么，忘记前任的最好方法就是来个新欢，现在就非要给自己整一个出来。

    “今天不是给你介绍对象的，就是有朋友来找我玩。”

    “哎哟我真……”东方诚很纠结，她说不是，你以为就真不是了吗？

    “你放心吧！人家也看不上你的。”

    “……”东方诚眉头一皱：“听听，听听这说得还是人话吗？”

    “嘿嘿……晚上六点钟左右哈！拜~~”
','    挂了电话后，东方诚也不管这个问题了，先去理发再说。

    所谓渣男锡纸烫，渣女大波浪。

    到了理发店的东方诚，决定要做个锡纸烫，不过在理发师的建议下，改为了纹理烫。

    理发师在忙活的时候，东方诚查看了下系统面板。

    玩家姓名：东方诚

    游戏等级：lv.1（升级所需经验值4520/10000）

    当前剩余积分：4520

    玩家信息：颜值7.2分，身材6.5分，气质5.8分，情商5.2分……

    ……

    看到这个评分，东方诚有点无语：“我这就7.2分的颜值，你居然还说我的颜值很不错？别告诉我满分是8分！”

    系统：“额头上的痘痘，杂乱的眉毛都是扣分项，最重要的是你略胖了，以致脸型条件也未达到最佳，以你现在的身材状况，如果能减重26斤是最完美的，到时不仅身材评分有大幅度的上升，颜值也会迈向一个新台阶。所以，接下来准备减肥吧！”

    【普通任务：宿主应在40天内减重26斤，已为宿主制定详细的饮食和运动计划，只要宿主严格要求，一定可以在40天内健健康康的完成任务，有没有信心完成？】

    “没有信心！”

    东方诚撇了撇嘴，40天减26斤，开什么玩笑，要人命啊！

    系统：“任务完成后，奖励52000积分。”

    “有信心！！！”

    东方诚当下信心十足，不就是40天减26斤？

    张飞吃豆芽——小菜一碟。

    “对了，这个游戏的等级有什么作用吗？”东方诚问道。

    “游戏等级越高，同样任务下获得的积分越高，【爆】出更好奖励的几率提高。”

    东方诚大概明白了，刚刚爆了个D级物品，等级高了，肯定还有C级B级A级。

    一个多小时后，东方诚的新发型完成了，最直观的改变就是，颜值上升了0.2分。

    果然，发型对颜值的影响无法忽视。

    随后东方诚又让理发师按照他的脸型修了一下杂眉，完成后，颜值又提高了0.1分。

    站在镜子前，此刻素颜7.5分的东方诚，觉得自己老帅了

    因为是平生第一次认真捯饬个发型，第一次修眉毛……这辈子还真的从没这么帅过。

    东方城有些憧憬了，这要是把额头上的痘痘也消下去，再减肥下来……能不能上个8？

    ……',10048,10144);

    insert into ds_book values(null,10145,'“难道我真的就不适合干这一行吗？我当初的选择，难道真的错了吗？”

　　陈伟眼神茫然的坐在电脑前，看着屏幕上那鲜红的（388）数字，沮丧万分。

　　当初带着无限激情与梦想，不顾家人反对，毅然决然的踏入了美股日内交易这一行，本想着一飞冲天，可现实却是无情地敲了他一棍子。

　　一年多了，跟他一同进公司的那几位，早都已经转正了，甚至有几个现在月收入都十几万了，可他还在顶着实习生的帽子。

　　盈利最多的一个月，才挣了不到八百美刀。

　　最近这几个月，更是连续亏损！

　　这个月已经过去大半了，本来挣得就不多，今天又亏了388美刀，不出意外的话，这个月转正又没希望了。

　　公司规定，只有单月盈利超过两千美刀，才能转正。

　　“周哥，厉害啊！今晚又过千了！”

　　旁边周毅的位子上，围了不少人，一片恭维与羡慕声音。

　　陈伟听到这些，心里更不是滋味。

　　周毅进公司比他还晚半年，甚至刚进公司那会儿，还是陈伟带着他做了一段时间，也算是周毅的半个师父了。

　　结果现在倒好，人家周毅早就转正了不说，这个月更是盈利有望突破一万美刀！

　　前些天公司开会，连老总都点名表扬了周毅。

　　“陈伟，你怎么回事？怎么又赔钱了？不说让你谨慎操作吗？”

　　陈伟正出神呢，旁边过来一人，冷声训斥了陈伟一句。

　　正是他们这个交易小组的主管，赵阳。

　　“那支票尾盘跳水了，我不小心被套在里边了。”

　　陈伟一见是赵阳过来了，便赶紧解释了一句。

　　本来他今晚做的还算不错，挣了有两百多美刀，可尾盘那一下，太过突然，让他一点反应都没有，眨眼就赔了六百多。

　　“别给我找什么理由！做了一年多了，到现在还达不到转正水平，还名牌大学金融系毕业，做的还不如人家周毅这个三本的，也不嫌丢人！我告诉你，陈伟，我对你，已经是彻底失望了。这个月如果你还不能转正，那就给我滚蛋！”

　　赵阳说完，不再理会陈伟，拍了拍旁边周毅的肩膀，说了句：“做的不错，好好干，回头再给你加点权限！”

　　“谢谢赵哥！”

　　周毅欣喜的回道。

　　权限越大，那挣得也就越多。
','　　陈伟在一旁更加的苦涩。

　　等赵阳一走，围在周毅旁边的那几个便开始阴阳怪气的议论起来了：

　　“我说周哥，实在不行，你带带陈伟吧，你刚来那会儿，人家不也带过你吗？盘中有好机会，随便给他喊两个，以周哥的水平，随便带带就能让陈伟毕业吧？”

　　“那是肯定的，也不看看咱周哥啥水平！不过话又说回来了，这都做了一年了，还整天赔钱！我也不知道某些人是怎么想的，反正要是我做了一年还不能转正，那我肯定转行了。丢不起这个人啊！”

　　“不懂了吧？人家这叫坚持！万一哪天一不小心挣笔大的，那不就毕业了吗？”

　　“哎哟喂，那得猴年马月才能碰到一笔发财的机会啊！”

　　“行了行了，都少说两句吧，人家陈伟可是名牌大学的毕业生，比咱这些人可厉害多了！人家只不过是运气不好而已，等哪天来了运气，说不定真能一笔发财呢！”

　　“切，啥名牌不名牌的，周哥倒不是啥名牌大学毕业的，照样一个月挣好几万大毛毛。这年头，学历可不等于能力啊！”

　　“这话说的倒也在理。”

　　…………

　　陈伟冷着脸，没有理会大家的嘲讽，关了电脑，一言不发的出了办公室。

　　身后仍传来那帮人肆无忌惮的嘲讽。

　　美股是凌晨四点钟收盘，这会儿也就不到四点半。

　　走在略显空旷的马路上，陈伟心情烦闷。

　　名牌大学又怎样！

　　父母都是普通农民，家中没什么背景关系，一切只能靠自己！

　　当初面试了好几家大公司，连个结果都没有！

　　现在美股交易也没办法转正！难道自己就只能去那种小公司，拿着微薄的工资吗？

　　实在是不甘心啊！

　　陈伟抬头看了眼天空，长叹一口气。

　　做了一年的日内交易，说实话，陈伟已经有了不少心得。

　　正常来说，他其实也能挣不少的，可就是不知道他是跟股票八字不合还是流年不利，动不动就碰到些意外情况。

　　就像今晚这次尾盘跳水，换成是谁遇到了也得赔钱。

　　而这种情况，这一年多的时间里，他已经不知道碰到多少次了。

　　就在陈伟有些心烦意乱的望着天空长吁短叹的时候，视野中，突然出现了一颗很亮很亮的星星。
','　　“流星？”

　　陈伟刚闪过一个念头，眼前一黑，就昏过去了。

　　在彻底陷入昏迷之前，陈伟隐约听到脑海中有个声音：“启动寄宿程序！”

　　…………

　　“帅哥，醒醒！”

　　也不知过了多长时间，陈伟迷迷糊糊的听到有人在叫他。

　　茫然的睁开眼睛，映入眼帘的，是一个漂亮的美女。

　　梳着马尾，穿着一身运动装，额头上还带着细细的汗珠。

　　看样子是在晨跑。

　　“帅哥，没事吧？要不要送你去医院？”

　　美女见陈伟醒来，好心的问了句。

　　“哦，不用，我没事，谢谢。”

　　陈伟晃了晃仍有些晕乎的脑袋，从地上爬起来，对美女客气了一句。

　　可刚说完，整个人就愣住了！

　　他的脑海中，竟然清晰的浮现出了一个类似游戏界面的东西！

　　中间是一个转盘，略显灰色的，转盘上有一根红色指针，还有一圈红色数字，从0到4320。

　　界面的左上角，有几行字：

　　“技能名称：时光回溯”

　　“技能等级：1级”

　　“技能效果：可回溯10秒”

　　界面的右上角，也有几行字：

　　“技能说明：技能冷却时间为十二小时，十二小时之内，可使用三次技能，每次最少回溯十秒钟，且三次技能效果累计不能超过最高回溯时间。系统会根据宿主对过去事件的直接改变程度，计算经验值，经验值达到一定条件，可提升技能等级。”

　　正上方，是一行数字：“00:00:00”

　　下方，是一条经验槽，经验槽的末尾显示着：0/100.

　　陈伟呆呆的“看”着脑海中的这个界面，完全搞不懂这是个什么东西！',10049,10145);
insert into ds_book values(null,10146,' 一开始他还以为自己是摔得脑子出问题了，这些是自己产生的幻觉。

　　可闭上眼睛之后，那个界面却是更加的清晰！

　　陈伟这下有些惊恐了！

　　这到底是个什么玩意儿？

　　陈伟愣愣的站在原地，一会儿睁眼一会儿闭眼，还时不时的晃动几下脑袋。

　　“帅哥，你真没事？”

　　美女再一次关切的问了句。

　　“哦，没事没事，谢谢你啊。”

　　陈伟回过神来，敷衍了美女一句，便离开了。

　　精神恍惚的回到自己的住处，在楼下随便买了几个包子吃了，躺在床上，陈伟仍在研究着自己脑海里的这个玩意儿。

　　那界面倒也不是会一直浮现在他眼前，而是只有当他将注意力集中在脑海中的时候，那页面才会浮现出来，当注意力放在外界的时候，那页面便会消失不见。

　　很怪异，也很奇妙。

　　研究了这么长时间，陈伟大概也研究出一点东西来了。

　　这玩意儿很可能就是之前自己看到的那颗“星星”。

　　虽然还不知道那个星星是个啥玩意儿，是哪里来的，但是这个时光回溯技能，看起来倒是挺玄乎的。

　　技能效果是回溯十秒，难道说，是回到十秒之前吗？

　　只是这个时间也太短了啊？

　　十秒够干什么的？

　　陈伟摇了摇头，心道这技能可真不咋地，但是下一刻，陈伟立马呆住了！

　　十秒钟！

　　十秒钟足够自己干很多事了啊！

　　就比如昨天晚上的那笔亏损，如果在股票跳水的那一刹那，时光回溯到十秒之前，那自己就可以平掉自己的多单，反手进空单啊！

　　如此以来，自己就不是亏六百多了，而是挣六百多，甚至仓位重点，挣的更多！

　　想到这里，陈伟激动的手都哆嗦了！

　　如果这个技能真能让时光回到十秒之前，那可就是太逆天了！

　　自己要发达啊！

　　陈伟蹭的一下就从床上坐了起来，四下扫视一眼，看到床头桌上放着的笔和本子，忙拿了过来。

　　他要试验一下，这个技能系统到底有没有用！
','　　拿着笔，想了想，在本子上写了个一字，然后心神一动，那系统界面便浮现在眼前。

　　只是，看着那个界面，陈伟有些抓瞎了。

　　这技能咋发动呢？

　　也没个发动按钮啥的，除了那几个文字说明，就剩中间这个大圆盘了。

　　圆盘上最外一圈是从0到4320，几千个数字顺时针依次排列。

　　就跟钟表似的。

　　不过0跟4320这两个数字是重叠在一起的。

　　这么多的数字，排列在一个表盘上，彼此之间的间隔是很小的。

　　可是因为这个圆盘是直接显示在陈伟的脑海中的，所以哪怕这些数字再密集、再细小，他也能看的清清楚楚。

　　现在这指针，就指在0的位置上，旁边的那个1，是亮红的，除此之外，其他那些数字，都是暗红。

　　陈伟盯着那转盘，心中在琢磨着这玩意儿该怎么玩。

　　要是个实体的，那他还能用手拨拉一下那指针试试，可这是个虚拟界面，连个鼠标都没有，怎么拨弄那指针呢？

　　正想着怎么拨弄那指针呢，那指针或许是感应到了陈伟的心念，突然，吧嗒一声，动了一下！

　　随即陈伟就觉得一阵恍惚，但是很快就恢复了。

　　而那界面上的指针原本是在零的位置，现在指向了1！

　　陈伟愣住了！

　　自己没动啊！

　　难道说，这指针，是用意念控制的？

　　这么一想还真有可能！

　　现在这指针动了，技能应该是发动了，也就是回到了十秒钟以前！

　　陈伟赶紧低头看了眼手中的本子！

　　就见上面，是空白的！

　　自己刚刚写的那个一字，消失了！

　　准确的说，不是消失了，而是时间回到了十秒钟之前，这个时候，自己还没有写那个一字！

　　“耶，老子发达了！哈哈哈哈！”

　　陈伟顿时激动地在床上蹦了起来！
','　　好一阵，陈伟才平复下来。

　　又看了眼系统界面，发现最上方的那倒计时已经开始了。

　　十二个小时的冷却时间，现在是早上七点，到下午七点技能便会恢复，而美股是晚上九点半开盘，今晚就可以尝试一下用技能做交易了！

　　想到那些嘲笑自己的同事，想到赵阳的诘难，想到女友徐丽丽，想到家中父母，陈伟心中的激荡久久难平，在床上躺了好久才睡着。

　　一觉醒来，外面天已经黑了。

　　看了下时间，晚上八点多了。

　　陈伟先是看了眼系统界面，发现倒计时已经结束，圆盘上的那个数字1又变成了亮红色！

　　技能恢复了！

　　陈伟难抑兴奋，一骨碌从床上爬了起来，胡乱洗了把脸，在楼下包子铺买了俩包子，坐着公交车就来到公司。

　　到公司的时候，还不到八点半，公司里没几个人。

　　陈伟来到自己的座位上，打开电脑，浏览起了盘前新闻。

　　这是他自己养成的习惯。

　　虽然做的是日内，更多的还是靠的技术分析以及盘口来判断股票走势，但是多看看新闻，至少能对当天的大盘走势有个预判。

　　另外一些盘前出了消息的股票，当天的波动也一般都比较大，机会也比较多，盘中可以多关注一下。

　　其他同事陆陆续续的也来了。

　　“哟，还挺用功啊！又早早就来看盘前新闻了？”

　　周毅来了，打开自己的电脑，顺便瞅了眼陈伟的电脑屏幕，不咸不淡的说了句。

　　陈伟嗯了一声，也没多加理会，继续看盘前新闻。

　　随手在本子上记下了几支股票。

　　这几支都是盘前出了消息的股票。

　　周毅在旁边露出几分不屑，说了句：“你现在看这些还有啥用？还是好好考虑考虑找工作的事吧，这个月还有八个交易日，想要转正，难喽！”

　　“八天的时间，足够了。”

　　陈伟淡淡的说了句。

　　“啧啧啧，哎哟喂，还真是大言不惭啊！八天就想挣够两千刀？睡醒了吗？”

　　周毅鄙夷道。

　　被周毅当面鄙视，陈伟也是心下暗怒，不过他也懒得去跟周毅争论什么。

　　八天挣两千，如果对之前的他来说，确实难度相当大，但是现在有了这个逆天技能，别说是两千了，两万都有可能！',10049,10146);
insert into ds_book values(null,10147,'陈伟跟周毅两人之间有些不合。

　　其实也不是什么大事，当初周毅刚进公司那会儿，是陈伟带着他做的，可以说是手把手的教他。

　　陈伟这个人，做什么事情都比较认真，也比较负责，当初赵阳让陈伟带周毅，那陈伟便尽职尽责的带他。

　　美股是九点半开盘，公司对于上班时间并没有明确的要求，一般九点半之前来就行，但是，陈伟却要求周毅九点之前必须到公司。

　　到了之后，看盘前新闻，提前找几只出消息的票。而盘后，也是要求周毅每天都要做总结。

　　也正是在陈伟的严厉要求之下，周毅才进步神速。

　　但是周毅却对陈伟没有多少感激之情，反倒是埋怨陈伟对他的要求太严了。

　　一开始的时候，周毅还没有表现出来，渐渐的，随着周毅越做越好，自然而然的就不怎么听陈伟的话了。

　　也不再九点之前到公司了，收了盘也不总结了，有时候陈伟说他两句，他当场就顶了回去，说陈伟挣的还没他多，瞎逼叨叨什么！

　　就这样一来二去的，两人之间的关系就恶化了。

　　当然了，陈伟在看清楚周毅的为人之后，也就不怎么搭理他了，反倒是周毅时不时的就挑衅挑衅陈伟。

　　而随着周毅做的越来越好，陈伟却是一直没什么成绩，公司里的同事，尤其是一些新来的同事，自然也都是站在周毅那一边，一直对陈伟冷嘲热讽的。

　　再加上主管赵阳也因为陈伟不挣钱而对他不怎么待见，陈伟在公司的人缘就更差了。

　　这会儿周毅一听说陈伟想要八天时间挣够两千美刀转正，也是极尽挖苦，来个人就跟人说：“人家陈伟可是说了，八天的时间挣两千美刀，小菜一碟！”

　　那些同事一听这话，一个个的都面露鄙夷，你一句我一句的嘲讽着陈伟的不自量力、大言不惭。

　　顺便再恭维周毅几句。

　　周毅越发的得意，心情极爽。

　　陈伟对此充耳不闻，自顾自的看着盘前新闻。

　　这时，主管赵阳过来了。

　　“都围在这里干什么，都回到自己的位子上去，马上就要开盘了，今天谁要是给我赔钱，看我不削他！”
','　　赵阳冲那些人训斥了一句。

　　一群人嘻嘻哈哈的回到了自己的位子上，不过还是有人趁机对赵阳说道：“赵哥，刚刚人家陈伟说了，这个月还剩八天时间，他要挣够两千美刀转正呢！”

　　“口气倒是不小！自己什么水平自己不知道吗？还八天挣两千，别给我赔两千就是好的！”

　　赵阳冷笑一声，说道，然后走到陈伟身旁，看着他，又说道：“陈伟，我警告你啊，别给我瞎做，你要是再赔钱，我就让你立马停盘！还有，从今天起，你的进场权限降到十手！”

　　陈伟一听这话，心中大怒！

　　他原本的进场权限是五十手，也就是说，一支股票，他单次最多可以进五十手。

　　可现在赵阳却是将他的进场权限给降到了十手！

　　这是明摆着不想让他挣钱了！

　　“你凭什么给我降权限！”

　　陈伟沉声质问了一句。

　　赵阳冷冷说道：“凭什么？就凭我是主管！想要权限，可以，等你什么时候挣钱了，我再给你加权限也不迟！不过，恐怕是没这个机会了！”

　　赵阳说完，不再理会陈伟，过去拍了拍周毅的肩膀，说了句：“今晚好好做，争取再过千！”

　　“放心吧赵哥，挣一千小意思！”

　　周毅忙说道，然后挑衅似的看了眼陈伟。

　　赵阳嗯了一声，点点头离开了。

　　等赵阳走了之后，周毅又在那阴阳怪气的说了句：“啧啧啧，真可怜，十手权限，还不如个新人多呢！看你还怎么转正！就准备卷铺盖滚蛋吧！”

　　陈伟脸色阴沉，深吸了几口气，压下心中燥怒的情绪，然后看了眼周毅，冷冷说道：“那你就好好看着吧！若是一百手权限挣得还不如我十手权限挣得多，那可就笑话了！”

　　“什么？我会挣的没你多？你开什么玩笑！我一天挣得都赶上你一个月的了！你还真是什么话都敢说呢！”

　　周毅仿佛是听到了天大的笑话一般，一脸鄙夷的说道。

　　陈伟也懒的再跟他做口舌之争，靠在椅背上，默默调整了一下自己的情绪，准备开盘。
','　　做交易，最忌讳的就是带着情绪做盘。

　　激动也好，兴奋也好，愤怒也好，烦闷也好，总之，不管是什么样的情绪，都会影响到对股票的判断。

　　而只要一个判断失误，那就要赔钱。

　　所以，做交易，一定要冷静。

　　周毅也不再说什么，只是心中暗下决心，今晚一定要大挣一笔，到时候，好好羞辱羞辱陈伟！让他知道，什么叫差距！

　　时间一分一秒的过去，九点半一到，美股正式开盘。

　　陈伟快速切换着股票，寻找着进场机会。

　　一般刚开盘这段时间，是股价最暴动的时候，一些高价股几秒钟内上下波动几块钱是常有的事。

　　陈伟只需抓住一次机会，就可以了！

　　办公室里其他人也都忙开了，噼里啪啦一阵敲键盘的声音，夹杂着几声气愤的叫骂。

　　有些交易员在做盘的时候都是很投入的，情绪激昂！

　　一次好机会没把握住，就开口大骂！

　　赔钱了，大骂！

　　挣钱了，也大骂！

　　经常听到某个交易员在那骂的那个狠啊，还以为赔了多少钱，结果过去一看，挣了不少……

　　当然，也不是所有交易员都这样，有不少都跟陈伟似的，做起盘来默不吱声，挣了不喊，赔了也不叫。

　　周毅也在紧紧的盯着电脑屏幕，快速的切换着股票。

　　不多时，貌似找到了一个机会，陈伟就见周毅咔咔的摁了几下回车键，进场了。
',10049,10147);
insert into ds_book values(null,10148,'建邺国际酒店金碧辉煌的包厢里，一群衣冠楚楚的男男女女推杯换盏，喝的面红耳赤。

　　“陈总，以后的生意还请多照顾。”

　　“陈总，我再请您一杯，您随意，我干了。”

　　“陈总，祝您以后财源广进，蒸蒸日上。”

　　······

　　酒桌上的主角叫陈汉升，基本上敬酒或者奉承总和他有关系。

　　“也不知道哪个女人那么好运，能够嫁给陈总这样的男人。”

　　一个脸色酡红的女人端起酒杯，娇滴滴的说道。

　　三十五岁的陈汉升，正是男人精力、阅历、能力处于巅峰的时候，社会地位给予他收放自如的心态，再加上不俗的谈吐，吸引女性目光是常有的事。

　　“张小姐还不知道吧，陈总到现在还没结婚，他可是真正的钻石王老五。”马上就有人唱和起来。

　　“那一定是陈总眼光太高，看不上我们这些胭脂俗粉。”

　　女人笑吟吟回道，然后双手递过来一张名片，目光流转之间要滴出水来，柔媚的说道：“陈总生意做得很大，但是也要在家庭和事业之间找到一个平衡啊。”

　　陈汉升礼貌的接过名片，不过两人触碰的一刹那，他突然觉得手心一痒，原来这位张小姐伸出食指在自己手掌心轻轻滑动，然后含情脉脉的盯着自己。

　　陈汉升洒然一笑，不动声色的坐下。

　　应酬结束后，酒桌上大部分人都有了醉意，姓张的漂亮女人离开时，恋恋不舍的看了一眼陈汉升。

　　陈汉升会意，做出一个打电话的手势，她这才展颜欢笑。

　　下属走过来说道：“陈总，我送您回去。”

　　“不用。”

　　陈汉升摆摆手：“我在对面小区新买了一套房子，自己开回去就行，也就不到100米。”

　　下属离开后，陈汉升才慢慢走回路虎车，仰头靠在真皮座椅上，脸上露出深深的疲倦。

　　每次应酬后除了胃里满满的酒水，心情总是莫名的压抑，甚至还有一种不知所措的空虚。

　　人在江湖，身不由己。

　　“呼。”

　　陈汉升重重呼出一口浊气，如果庸俗的用金钱来评价幸福，其实自己已经比大部分人幸福了，实在不应该多抱怨。
','　　打开车载音响，系上安全带准备发动的时候，陈汉升突然摸到口袋里一个硬物，原来是应酬时那个漂亮张小姐的名片。

　　“张明蓉，名字还不错。”

　　陈汉升笑了笑，然后轻轻一弹，精致的名片在夜色中滑过一道弧线落在地上，接着路虎轮胎毫不留情的碾压过去。

　　成人的名利场总是少不了逢场作戏，谁当真谁就是傻瓜。

　　路虎车里，《离家五百里》的旋律来回飘荡。

　　If  you  miss  the  train  I am  on

　　若你与我的列车交错

　　You  will  know  that  I  am  gone

　　你会知晓我已远走他乡

　　You  can  hear  the  whistle  blow

　　你能听到它气鸣嘶吼

　　A  hundred  miles

　　离开一百里

　　······

　　这首歌的歌词内容与陈汉升现在的生活相去甚远，但是意境却深深地感染了他，频繁使用数词和重复手段，表达了人生路途之艰辛。

　　古今中外，背井离乡讨生活的人们，有的富足，也有的穷困，但无论是富足还是穷苦，心中的离愁却是永远难以磨灭的。

　　“好久没去见老爹老娘了，不如连夜去看看他们吧。”

　　这样一想，在洋酒后劲的作用下，陈汉升居然下意识的转动方向盘。

　　突然，从侧面照射进一阵耀眼的白光，“轰隆”一声重响，陈汉升就什么都不知道了。

　　······
','　　“汉升，快醒醒，公交要到站了。”

　　迷迷糊糊之间，陈汉升被一个声音吵醒，睁眼是耀目的阳光，脑袋是酒后的刺痛。

　　“妈的，下次坚决不能喝这么多酒了。”

　　陈汉升皱着眉头骂道。

　　“昨天是高中最后一场班级聚会，大家都喝了不少，再说你情场失意喝醉也没关系的。”

　　说话的是一个17、18岁左右的少年，身材微胖，肤色黝黑，他又是咧嘴一笑：“我早就劝你别和萧容鱼表白，你非要趁着高考结束尝试一把，结果怎么样？”

　　“喜欢她的那么多，你也就是一个枉死鬼。”

　　黑胖子幸灾乐祸的说完，看到陈汉升眼睛直直的看着自己，他还有些不高兴：“说两句萧容鱼的坏话，你就生气了？”

　　“咱可是一起长大的玩伴，你和她也就做了三年高中同学，我建议把昨晚的事情当成一场回忆，让它随风飘去。”

　　看着他要一直唠唠叨叨下去，陈汉升忍不住打断：“你是谁？”

　　“我！？”

　　这个少年脸色先是惊讶，然后变成了愤怒，车辆到站后，他一把拉起脚步虚浮的陈汉升下了车，大声说道：“失恋又不是失忆，我是你好兄弟王梓博，你会不会忘记自己叫陈汉升了！”

　　“王梓博？”

　　陈汉升的确有个好朋友叫王梓博，可是他目前不在国内。

　　“王梓博不是在伊拉克吗？”

　　“狗日的陈汉升，现在伊拉克那么乱，美国佬正准备打萨达姆，你是不是咒我早点死？”

　　这次陈汉升不说话了，因为他正盯着公交车站台上的反光玻璃怔怔发呆，上面倒影的也是一个青少年，熟悉却又陌生，嘴上还有一点毛茸茸的胡须。

　　天空湛蓝无云，马路还是泥土的，扬起的飞尘在阳光下一粒粒看的很清楚，路边的理发店喇叭放肆的播放着高音喇叭。

　　“陪你去看流星雨落在这地球上，让你的泪落在我肩膀······”

　　结合眼前的场景，再加上大街小巷播放的歌曲，陈汉升脑袋突然有点晕，这俗套的桥段终居然在自己身上发生了，突然胃里又是一阵翻涌，陈汉升忍不住走到路边吐了起来。

　　王梓博也不嫌弃，走过来拍打后背安慰道：“吐完就好了。”

　　胃里的东西全部吐光后，陈汉升神志也逐渐清醒，王梓博现在的形象终于和记忆终于逐渐重叠。

　　“我们现在去哪里？”陈汉升艰难的抬起头。

　　“去学校拿录取通知书啊。”

　　现在王梓博已经不奇怪了，他就当好友的异样来自于昨晚那场有始无终的表白。

　　这样一说，陈汉升还真想起来当初自己是和王梓博去学校拿录取通知书，自己是普通二本，王梓博则是一本。

　　今年也不是2019，它是2002。

　　······',10050,10148);

insert into ds_book values(null,10149,'两人晃晃悠悠来到学校门口，一路上王梓博说的多，陈汉升基本不回应，他正在努力适应十七年前的港城。

　　当年大学毕业后，陈汉升觉得家乡经济发展不好，所以一直留在省会建邺打拼，偶尔回家看看爹娘，也是匆匆的来，匆匆的走，根本没时间留意老家的变化。

　　也只有在醉酒的凌晨，才会从心底涌出莫名的触动和回忆，不过第二天很快就被现实的忙碌所取代。

　　“我这样的人重生有什么意思呢？”

　　陈汉升觉得十分憋闷，2019年的自己有钱有地位，有公司有下属，根本不符合重生人士“头戴绿帽、父母双亡、穷困潦倒、饥寒交迫”的基本条件。

　　“狗几把的，我真没想重生啊！”

　　陈汉升忍不住骂了一句，王梓博正在絮叨昨晚陈汉升喝醉酒不顾阻拦，硬要去萧容鱼面前表白的糗事，他愣了一下：“你到底有没有听我说话？”

　　“哦，听了。”

　　陈汉升随便糊弄道，然后摸了摸口袋，没有钱包，没有手机，也没有快捷支付，他叹一口气对王梓博说道：“你带钱没有，我想去小卖部里买点东西。”

　　“是不是买水？”

　　王梓博倒是善解人意，他知道宿醉后嘴巴会比较干，再加上今天也挺热的。

　　“你喝什么，健力宝还是可乐？”

　　王梓博准备请客。

　　“矿泉水就行，顺便再买包烟。”陈汉升回道。

　　王梓博顿时睁大眼睛，不住的打量陈汉升：“你啥时学会抽烟了，怎么我都不知道？”

　　陈汉升有点不耐烦，以前怎么没觉得儿时好友这么啰嗦，摆摆手说道：“心情不好，抽一根解解闷。”

　　王梓博犹豫了一下，还是听话的去买烟了，小卖部就在“港城一中”门外，陈汉升看着这道宽敞的铁门，心想这就是我高中三年，1000多个岁月的回忆啊。

　　不一会儿，王梓博回来了：“诺，你的烟。”

　　“呵，多久没见的红塔山。”

　　陈汉升忍不住笑了一下，自从工作以后就很少抽这个牌子了，熟练的撕开包装，还递了一根给王梓博：“你抽不？”

　　王梓博纠结一会，最终还是决定陪着自己兄弟抽一根。

　　王梓博还是很典型的学生心态，脸皮也比较薄，不像陈汉升这种饱经社会的摧残，做事的尺度明显就不一样。

　　陈汉升直接把裤腿卷到膝盖，一屁股坐在路牙子上吞云吐雾，眯着眼若有所思的打量过往的学生；

　　王梓博扭扭捏捏，抽烟时还把头转过去，快速吸一口然后把烟蒂藏在身后，然后从嘴里吐出缕缕青烟，跟他妈个鹤嘴壶似的。
','　　王梓博自己抽的是小心翼翼，但是瞅了瞅陈汉升，他又吭哧吭哧的评价道：“小陈，你抽烟的姿势挺潇洒啊。”

　　陈汉升是老烟枪，就连弹烟灰都很有节奏感。

　　“熟能生巧罢了。”

　　陈汉升淡淡的回道，王梓博更加羡慕了，陈汉升此时的表情既装逼又欠揍，不过真的是蛮帅。

　　没等一根烟抽完，不远处就有一群人骑着车过来，王梓博赶紧熄灭烟头，然后提醒陈汉升：“赶快扔掉。”

　　王梓博的举动也把陈汉升吓了一跳：“里面有老师？”

　　“没有老师，全是咱们同班同学。”王梓博解释道。

　　陈汉升本来也差点要扔掉，可是听到这句话，兜了个圈又把动作收了回来，他很尊重老师这个职业，但是高中同学有什么好放在心上，都毕业了还能怎样？

　　这群学生大概也是来拿录取通知书的，带着对大学生活的憧憬和向往，一路上说说笑笑，经过陈汉升和王梓博的时候，他们全部停了下来。

　　陈汉升现在的形象非常邋遢，既有宿醉后的疲乏，也有重生后的迷茫，不修边幅四仰八叉的坐着，嘴上还叼着根烟，如果不是这张18岁的脸，完整的一个中年油腻大叔形象。

　　同班同学都吃惊的看着陈汉升，在港城一中这种教育为主的学校里，女学生都不许留长发，所以抽烟差不多是堕落的表现了。

　　“你们都是去拿录取通知书的吗？”

　　王梓博觉得有必要说点什么了。

　　这群学生都没说话，他们把视线转移到中间一个女孩子的身上。

　　这小姑娘长得真俊俏，碎花过膝的裙摆在傍晚夏风中轻轻飘荡，泛出一股明媚的活泼，她至少有1米67的身高，因为天热的原因，脸色荡漾着淡淡的红晕，挺直的鼻梁，红润的嘴唇，圆润的下颔，浓密睫毛下的眼睛清澈透亮，柔顺的发丝自然垂落到肩膀。

　　少女停下橘黄色小单车走过来的时候，陈汉升甚至能闻道一股淡淡的百合香味。

　　“陈汉升，你怎么可以抽烟！”

　　声音挺好听的，不过有些生气的情绪。
','　　陈汉升根本想不起来她是谁，只能转过头看着王梓博，王梓博没理解意图，也是大眼看小眼的瞪着他，陈汉升没办法，只能开口问道：“你是谁？”

　　“哗。”

　　这群骑车的准大学生发出一阵唏嘘，尤其女孩子更是忍不住摇头，电视剧上说的果然没错，男人变起心来真是快，昨晚还和别人表白呢，只不过被拒绝就能假装不认识。

　　“汉升，你不该这样。”

　　人群里又走出一个男生，高高的个子，笑起来很温暖：“抽烟不是你的作风，希望你能从失恋的阴影中走出来，迎接美好的明天，我们都期待你的上进。”

　　这话听起来好像是安慰和鼓励，但是总有一种虚伪和居高临下的俯视，陈汉升当了那么多年老板，虽然不是嚣张的性子，但是也不乐意别人踩着自己去表现，尤其两人都不熟悉。

　　尽管陈汉升坐在地上，但是他一抬头，一挺胸，眼神平静，默不作声的盯着说话的男生，直到把他看的浑身不自在，这才带着一股审视说道：“你他妈又是谁？”

　　事业有成的男人，既有混不吝的气度，也有厚积爆发的威严，岂是没走上社会的奶娃娃能比的，就算是装逼的境界，大概他也看不到陈汉升的尾气，所以一接触就败下阵来。

　　“你太让人失望了。”

　　男生甩下一句色厉内荏的话，然后对漂亮的女孩子说道：“容鱼，我们走吧，不要管这种人了。”

　　少女没听，又走近几步对陈汉升说道：“你要假装不认识，那我也没办法，但是昨晚我已经说的很清楚了，大学毕业前都不想谈朋友。”

　　“你如果再抽烟，我就去告诉你妈。”

　　陈汉升愣了一下，自己刚刚回到18年前，不愿意用这种方式和父母打招呼，而且今天是拿录取通知书的日子，已经有不少路过的学生驻足观看。

　　陈汉升想了想，顺从的扔掉烟头。

　　女孩微微一笑，还有一丝得意，她又从车篮子里拿出一瓶矿泉水：“洗把脸，一会去拿录取通知书。”

　　“谢谢，我自己有。”

　　陈汉升直接拒绝了。

　　“切，欲擒故纵的老一套，表白失败就假装冷酷。”刚刚的男生不屑的说道。

　　不过女生倒是挺倔强，尽管陈汉升不要，她还是把水放在陈汉升脚边，然后冷哼一声，推起可爱的橘黄色小单车进学校了。

　　直到他们完全离开后，陈汉升突然醒悟：“她就是萧容鱼吧。”

　　“在我面前就别装了。”

　　王梓博有些不满的说道：“我知道你表白被拒绝心里难受，但咱们是好兄弟啊，有什么话可以和我说。”

　　王梓博也以为刚才陈汉升是故意的，目的是挽回面子。

　　陈汉升也不知道怎么解释，只能拍了拍王梓博肩膀：“考上大学就已经是成年人了，独自难受是成年人的优秀品质。”

　　·····',10050,10149);
insert into ds_book values(null,10150,'再次走进熟悉却又陌生的校园，在那些标志性建筑物的刺激引导下，陈汉升的记忆才慢慢苏醒过来。

　　这一路上还碰到很多同学，陈汉升有时候很愿意打个招呼，但是张了张嘴却忘记了名字。

　　不过萧容鱼和刚刚出来装逼的男生，陈汉升已经想起他们是何许人也。

　　萧容鱼据说是港城一中建校几十年以来最漂亮的女学生，昨晚那场高三同学聚会时，陈汉升借着酒劲表白了，也是理所当然的被拒绝。

　　萧容鱼的理由都没什么变化，以前上初中时，她说初中不谈恋爱；上了高中，她又说高中不谈恋爱；好不容易高中毕业，她又换成大学毕业前不谈恋爱。

　　港城很小，说不定哪里就有千丝万缕的联系，所以陈汉升母亲和萧容鱼母亲是认识的，不过萧容鱼爸妈分别在公安局和供电局工作，家庭条件要好一点。

　　当然，陈汉升也从来不是一个屌丝，他成绩中等偏上，长的高高大大，性格也不沉闷，甚至还和学校外面的混混打过架，家庭不算好但也绝对不差，总之从小到大没有因为上学的费用操心过。

　　按理说这样的人实在没有重生价值，不知道为何选中了他，难道是为了惩罚他酒后开车？

　　不过有句话说的好，八岁到十八岁，这中间有十年，十八岁到二十八岁，这中间却有一生。

　　其实即使按部就班的发展，陈汉升以后也能成为千万富翁，但如果努力一把，在个人资产后面多加几个零，顺便改变历史进程都是有可能的。

　　至于刚刚想踩着陈汉升在萧容鱼面前装逼的男生，他叫高嘉良，父亲是港城的地产商人，不过做生意向来是今天赚明天亏。

　　前世十几年后的同学聚会上，高嘉良给陈汉升敬酒时，杯沿都要低三寸。

　　······

　　“老徐，我的录取通知书呢？”

　　陈汉升走进教师办公室，对着一个地中海发型的男老师叫道。

　　老徐叫徐闻，他是陈汉升的高中班主任，平时关系不错，有时候闹开了也能称兄道弟，陈汉升以前刚工作时，回老家还能抽空看看他，不过事情一多就忘记了。

　　后来老徐得了肺癌去世，陈汉升当时都在国外，只能托人带去了白包，自己都没时间回去参加追悼会。

　　所以对“真实”的陈汉升来说，他和老徐其实是阴阳两隔后乍见，心情还真有些兴奋。

　　老徐转过头，看到是陈汉升，笑眯眯的从一叠录取通知书里抽出他的那一份，有些惋惜的说道：“本来以为你能考上一本的。”

　　陈汉升这种学生在学校里属于惹事少，成绩中上，人高马大偶尔还能为班级做点贡献，所以老师纵然不会独特偏爱，但是也没办法讨厌那种。
','　　陈汉升不以为然的拿过录取通知书：“二本就二本吧，我也就这水平了。”

　　王梓博态度就很恭敬了：“徐老师您好，我来拿录取通知书。”

　　趁着老徐找录取通知书的功夫，陈汉升在他办公桌上扫视一眼，看到一包红金陵，红金陵是苏东省销量最好的一种烟，专门针对工薪阶层，陈汉升他爸也抽这种。

　　“老徐，你这烟以后得少抽啊，本来带高三毕业班压力就大，再抽烟你这身体未必受得了。”

　　陈汉升拿起烟说道。

　　徐闻愣了一下，来这里拿录取通知书的学生，说的最多的就是“谢谢”这种客套话，或者“以后我会多来看您”类似空话，只有陈汉升专门提醒自己要少抽烟，语气诚恳的好像多年未见的老朋友。

　　老徐心里有些感动，现在的老师是“一只粉笔，两袖清风，三尺讲台，四季辛劳”，未必都追求“桃李满天下”的境界，但是真的有学生这样关心自己，还是觉得很暖心。

　　徐闻都觉得以前对陈汉升这个帅气的大男生关心太少，很爽快的答应道：“以后一定少抽。”

　　“说可没用。”

　　陈汉升顺手就把红金陵揣在兜里了：“我先替你把关，这包烟就没收了。”

　　老徐顿时哭笑不得，没等到这小子孝敬的果篮，自己先贴进去一包烟，不过他很喜欢这样的相处关系，王梓博那样毕恭毕敬的态度，大家都觉得拘束。

　　办公室里不是只有老徐一个老师，也不是只有陈汉升和王梓博，刚刚那群骑车的同学也在，看到陈汉升把烟放进口袋里，高嘉良不满的说道：“这种人都能上大学，简直拉低我们大学生的平均素质。”

　　马上就有女生反驳了：“陈汉升平时成绩不错的，这次上个二本还算发挥失常了，抽烟可能是因为······”

　　说了一半突然停下来，女同学想说“表白失败的刺激”，但是当事人女主角萧容鱼就在这里。

　　这不提还好，提起来高嘉良更是不爽：“他以前就不是好东西，还和校外的混混打过架。”

　　高嘉良本来还打算继续抹黑，陈汉升居然主动走过来：“你们都在这里。”

　　高嘉良转过头不想搭理陈汉升，陈汉升就和其他人打招呼，看到萧容鱼手上的信封，笑呵呵问道：“萧美女去哪个学校？”

　　“东海大学。”

　　萧容鱼答道，然后又问：“你呢？”

　　“那就巧了，我是你对门的财经学院，以后咱们是邻居，可得多走动。”
','　　陈汉升也没想到萧容鱼原来就在自己对门，想想当年也是蛮可惜的，陈汉升上了大学就放飞自我，财院里美女资源又多，直接忘记萧容鱼这个超级美女了。

　　这时，高嘉良又在旁边不屑的说道：“东海大学是985和211，财院也就是个二本，这个邻居当的太勉强了！”

　　高嘉良这小子也在建邺读书，他是一本的航空航天学院，不过他在另外一个校区，离着萧容鱼几个小时的路程，脸上的飞醋和不满根本掩藏不住。

　　陈汉升“嘿嘿”一笑，心想高嘉良这小子再横的话，老子就把萧容鱼弄上床，到时拍点吻照把他气跳楼，这样一想正好看到萧容鱼手腕上的西门子机械表，陈汉升就问道：“现在几点？”

　　萧容鱼下意识抬起手腕：“5点25。”

　　“挺漂亮的手表，暑假刚买的吗。”

　　陈汉升一把牵起萧容鱼白皙的手背，假装看时间却在偷偷的摸索，高嘉良看的睚眦欲裂：“狗日的陈汉升昨晚表白不成，现在不动口，改直接动手了？！”

　　萧容鱼也一把缩回，怒气冲冲瞪着陈汉升。

　　陈汉升占到了便宜，根本不留恋，直接唤起王梓博离开，只留下面面相觑的一群人。

　　时间正好五点半，学校的喇叭开始放歌，大概考虑到今天是拿录取通知书的日子，广播台特意放了许巍的《蓝莲花》。

　　没有什么能够阻挡

　　你对自由的向往

　　天马行空的生涯

　　你的心了无牵挂

　　······

　　盛开着永不凋零

　　蓝莲花

　　······

　　学校里还有高二补课的学生，走在熙熙攘攘的人堆中，看着一路上年轻的面庞，听着悠扬的民谣，呼吸着畅快的空气，陈汉升觉得心情非常爽朗。

　　“还是高中舒服啊，可惜老子已经毕业了！”

　　······',10050,10150);

insert into ds_book values(null,10151,'沸沸扬扬的校花猝死事件逐渐平息下来。

    可李尧的心情还是很糟。

    那位校花是他的挚友，两人从小一起长大，玩得很好，虽然因为长得漂亮被同学们评为校花，可那家伙的性格却大大咧咧像个汉子，是那种能扎起头发的上场打篮球的女汉子，而且球技还不错！

    成绩也好，待人接物更是给人如沐春风的感觉。

    她本该光芒四射走完大学四年，然后走进社会，拥抱美好圆满的人生。

    可这一切，都在死亡面前戛然而止了。

    死亡……

    李尧抱住脑袋，第一次感受到鲜活生命在面前消逝的痛苦，那种美好被现实无声击碎的惨烈，令人心塞。

    所谓悲剧，大概就是这样吧。

    突然，他的手机震动了一下，屏幕上显示着信息的内容。

    林晓薇：“李尧吗？在不在？快出来！”

    李尧本就很糟糕的心情一下就炸了。

    他拿起手机，眼神阴沉的回复着：“这是我已故朋友的账号，你盗这号……不合适吧？听我一句劝……”

    林晓薇：“我真的死了啊……”

    李尧脖子一梗，你戏还挺多哈！他正准备跟对方讲道理，讲三从四德科学发展观甚至中国梦，好让对方收手，可对方又发了一条信息：“李尧，我知道这不可思议，可我真的是林晓薇，我……穿越了。”

    你咋不说你飞升成仙了呢。

    他瞪着死鱼眼，回复道：“你再这样我报警了啊。”

    也不知道警察叔叔管不管这事。

    林晓薇：“警察叔叔不管这事吧？”

    嘿，你还挺皮！

    他已经准备找计算机系的学长扒一扒对方的ip，给对方搜索出来了，上门给予对方狂风暴雨般的爱了。

    然后，对方说道：“你是李尧，我是林晓薇，我们从小就认识，家在金阳小区，你是8栋301，我是6栋202，我还有个妹妹，我要不要把我之前的身份证号码还有手机号背给你啊？”

    李尧一下子就惊了。

    现在骗子的能耐都这么大了？

    背景信息都调查的那么清楚了？
','   还是说林晓薇那傻缺把这些信息都备注在企鹅号里了？

    所以他回复道：“那你背吧。”

    林晓薇：“……”

    来自林晓薇的负面情绪+666……

    林晓薇：“两年你家里的大花瓶被打碎其实是我干的，不是你家阿花干的。”

    李尧：“林晓薇那傻缺连这事都记在企鹅号里？”

    那当年我岂不是白挨了打？

    阿花是他们家养的一只白胡子加菲猫，弄坏了东西爸妈舍不得拿猫出气就给李尧胖揍了一顿，理由是：谁让你不看好阿花的？你个逆子！

    当时李尧满脸问号，这特么关我什么事啊！

    可没想到真凶原来是林晓薇这货！

    原本糟糕的心情让这事一冲，显得滋味有些复杂。

    李尧沉浸在复杂的情绪里，可对方却不乐意了：“你说谁傻缺呢！弄死你喔！”

    口头禅还学得挺像。

    李尧：“我说朋友，你入戏挺深啊。”

    林晓薇：“你特么怎么就不信我呢！捉急！”

    信你才有鬼了好吧！

    人都去世了，然后灰了半个月的企鹅号跳出来跟我说我是林晓薇，我穿越了……，下面你是不是要说你在异位面发现了宝藏，还缺两百块钱车费，让我给你打过去啊？

    异世界能用人民币吗？

    要不我让马列两位先生给您送过去？顺便镇压下你们这些牛鬼蛇神！

    李尧很气愤，他准备用文字口诛笔伐对方，让对方羞愧而死。

    可就在这时，对方发了一个小视频过来。

    小视频里，一个容貌和林晓薇一模一样的女孩十分气愤的说道：“我特么真是林晓薇，你个狗东西，现在信了吗！发送的小视频消耗能量很大的好吧，妈蛋！”

    李尧愣了。

    这世界上应该不会有为了诈骗还弄个特效视频来忽悠人的吧？至于找个双胞胎来忽悠人……那成本太大了吧？而且图什么呀！

    他李尧家里又没矿！
','    李尧反复的看着那个小视频，视频里的林晓薇……好像变得更漂亮了，只是原本一头黑发变成了暗金色，和皎洁皓白的皮肤交相辉映，显得更加明艳动人，而且她身上的衣服也很奇怪，是一件镶银边的亚麻长袍，衣领和袖子上还绣着奇怪的藤蔓图案。

    李尧有点懵。

    多年建立的世界观在短小的视频面前轰然崩塌，碎裂一地。

    真的穿越了啊……

    还用企鹅号跟我联系了。

    李尧仰面望着天花板，觉得一切都很魔幻，过了好一会儿，他才问道：“狗子，你真穿越了？”

    林晓薇：“真的。”

    李尧：“你咋就穿越了呢？”

    林晓薇：“我特么哪知道……”

    李尧：“那你还能回来吗？”

    林晓薇：“……回来咋搞？你都说我已故了，回去诈尸吓人啊？其实这都不是问题，等我晋升传奇，可以遨游万界的时候，说不定可以找回去。”

    李尧：“那得多久？”

    林晓薇：“保守估计也要个两百年时间。”

    李尧：“辣鸡，都特么穿越了，怎么着身上也套着个主角模板吧？竟然还要两百年！”他很快就进入角色，开始了日常聊天水群的状态。

    林晓薇：“去死吧狗东西，两百年已经很牛逼了好吗！”

    李尧：“算了不提这事，你没联系你家人吗？还是怕吓着他们？”

    虽说李尧和林晓薇关系很好，可她也有好几个比较好的姐妹，难道没联系他们吗？还是说……女人的友谊靠不住？

    想到这里，李尧有点飘飘然~

    林晓薇：“我也怕吓着他们，可还是没忍住联系了，可信息发出去都没回应，只有你回我了。”

    李尧：“……”

    有点扎心啊老铁。

    这感觉美女给自己送了封情书约在操场见面，可真等到去的时候发现整个操场都特么是同学……喔，不对，是去了之后美女告诉你说：“哎妈呀，我给那么多人送了情书，没想到就来了你一个。”

    更扎心了。

    李尧搓了搓脸，终于想到了正事，这他妈现在可是跨世界聊天好吗，咱在这净瞎吹啥牛逼呢？

    所以他连忙问道：“你跨服找我，是不是有很重要的事情？”',10051,10151);
insert into ds_book values(null,10152,' 林晓薇有点不好意思了。

    可她是个实诚人，所以还是耿直的回复道：“没有吧，我就是想家了。”

    李尧：“……”

    真的好想给那货来个拉黑一条龙服务啊。

    可以想到对方孤零零的在异界，然后对自己说想家了，李尧就觉得有些心酸。

    他揉了揉鼻子，回复道：“嗯，没事多联系，要不要把这事告诉叔叔阿姨？”

    林晓薇：“别了吧，万一吓坏了他们。你没事多去我家，给我拍一点家里的小视频就好了。”

    李尧：“没问题！”

    林晓薇：“喔，对了，给你点东西，你看能不能用，能用的话你就能帮得上我了。”

    随后，他收到了几个文档《冥想术详解》、《召唤法阵详解》以及《冥想术的正确导引姿势》、《冥想术常见问题详解》、《召唤师的修养之道》……

    李尧：“？？？”

    什么鬼？

    林晓薇：“《冥想术》是法师的根基，由传奇圣法师塔拉扬发明的，法师这一职业也因此从诸多施法者职介脱颖而出，成为如今大陆的最强大的存在。我给你的那几个文档，都是这么多年后经过诸多传奇法师改良后的加强精品版，也不知道地球那边能不能用。如果能用，你就多研究下那个召唤系的法术和阵法，我差了不少资料，发现地球上不少东西都是这个世界绝迹的宝物，如果能传送过来我特么能在协会赚好多积分！”

    这货啥时候这么财迷了？

    林晓薇继续道：“到时候我把这边的资源也给你传送过去，你很快就能走上人生巅峰，迎娶白富美了！还不快叫爸爸！”

    给你惯的！

    李尧翻了个白眼：“不是，你拿的啥手机啊？还能上传文档？卧槽，不会你那个世界也有电脑吧？”

    林晓薇：“……”

    你关注的点有点奇怪啊铁子！

    我可是你的金手指啊！

    这个时候你不应该欣喜若狂对我纳头就拜，口称爸爸吗？

    我特么现在迫切的想要享受你对我的崇拜感啊！

    林晓薇捏紧了手机：“这手机是跟我一起魂穿过来的，一开始我都没发现，直到我的老师找到我，开始修炼冥想术后才在意识深处看到手机，等我正式晋升成为初阶发时候，才能把手机具现出来……所以，手机可以将我脑海中存储的知识变成文档导出。”

    李尧：“66666！”

    这手机牛逼了啊，做起弊来简直无敌。
','   他突然想到什么，又问道：“那岂不是手机和你的记忆互通？过目不忘有木有！”

    林晓薇：“何止过目不忘？影音存储，文档解读，甚至还能加强我思维意识的运转速率……”

    李尧：“不愧是穿越者，大挂逼！”

    林晓薇：“行了，不跟你扯了，我手机快没电了，跨界聊天真费电！”

    李尧惊了：“卧槽，对啊，你平时都怎么充电的？难道你专精闪电系，魔力发电？”

    林晓薇：“……你脑洞比我还大啊，特么这是我的穿越伴生手机，能量消耗的是我的灵魂能量！”

    李尧尴尬了：“喔喔喔！”

    穿越者果然很彪！

    李尧：“损耗的灵魂能量不会对你有害吧？”

    林晓薇：“没事，冥想术可以恢复灵魂能量，就是时间比较久，要两三天才能充满电。”

    李尧：“那你可真是充电两三天，通话五分钟了……下回推荐你试试国产手机，电量足滴很！”

    他记得林晓薇的手机时苹果x，苹果货果然不耐操。

    林晓薇现在突然有掐死对面那个狗东西的冲动。

    还特么下次！

    有下次吗！

    再说了，老娘爱用苹果，就是有钱！要你管啊！

    林晓薇：“债见，狗东西！”

    说完，她的头像就灰了。

    看着灰下去的头像，李尧突然变得有些怅然若失。

    那种日常灌水聊天的感觉让他觉得林晓薇仿佛还活着……不对，她确实还活着，只是远在异界，遥不可及。

    希望她在那个世界……

    好吧，人家也确实过的很好，都成法师了，还要把自己也变成挂逼……这特么是真爱啊。

    李尧甩了甩头，这都什么乱七八糟的。

    回想刚才，如果不是聊天记录还在，他都觉得这是一场荒诞不羁的梦。

    最他妈神奇的是，他竟然就这么接受了……甚至还有点激动？
','    李尧再度拿起手机，翻到刚才林晓薇传过来的文档，点击打开刹那间，他的手机仿佛漏电了，一股酥麻的感觉从手机上传出，顺着手臂直接冲向他的脑门！

    卧槽！

    李尧觉得眼前一昏，无数幻想从四面八方的虚空当中涌现出来，那感觉好似斯特兰奇博士的灵魂被至尊法师古一一掌轰出体外，刹那间体会到了无穷世界的繁复奥秘。

    过了好一会儿，李尧才猛地回过神，打着响嚏猛甩脑袋。

    刺激！

    真特么刺激！

    嗑冰都没得这么刺激！

    那冰凉磅礴的冲击力堪比建筑工人拿着冲击钻从鼻孔往里插，的给你做脑前额叶切除手术！

    李尧平复着刚才的刺激，开始检阅自己的记忆。

    就在刚刚，冥想术详解的信息就这么烙印在他的记忆里了。

    犹如灌顶。

    这说明林晓薇给的东西确是真货。

    他又看了看下面两个文档……

    有点望而生畏。

    嗯，又有点怀念刚刚那种刺激的感觉。

    他舔了舔嘴唇，猛然点击打开：“啊啊啊啊啊啊……”

    李尧坐在床上，抖得仿佛通了电。

    ……

    晚上，李尧舍友从外面网咖回来，看到盘膝在床上入定冥想的李尧都不由得一愣。

    “他这是咋了？”

    “应该是伤心过度吧，你要是没了校花级别的青梅竹马，你也会这样，整天腻在一起，都是准媳妇了啊。”

    “对啊，你可能还不如他呢。”

    舍友们三言两语的说着，然后钻到自己的桌子上翻开电脑，继续熬夜修仙。

    至于李尧……

    甘霖娘的准媳妇！

    来自李尧的负面情绪+748！！！',10051,10152);
insert into ds_book values(null,10153,'李尧冥想了大概四个小时就没法继续了。

    因为继续下去，会脑阔疼。

    冥想术的运行原理类似于在人的精神世界当中添加一款运行程序，运行这个程序的时候会占据你意识精神的大部分算力，在不断锻炼精神意识的同时，也在拓展着精神意识的极限。

    这个过程缓慢枯燥，还需要长年累月的坚持。

    没有决心毅力，是无法成为伟大的法师的。

    结束冥想的李尧收拾收拾就睡了，第二天的感觉除了精神饱满，神清气爽外，也没有什么特别的变化，喔，就是上课的时候，注意力很容易集中，导师讲的内容很容易就记住了……看来冥想主要是对脑域能力的开发。

    《冥想术详解》中着重解释了冥想术的重要性，这是法师的根基，哪怕是高阶法师都十分注重基础的修行，万万不可懈怠。

    李尧记在心里了。

    之后两天，林晓薇都没有联系李尧，李尧发过去的信息也是泥牛入海，都没冒个泡。

    等到周天放假，李尧干脆收拾行李回了趟家。

    李尧是在本省上的学，家在省城下面的县城，坐车要三个多小时才能到家。

    一路颠簸回到家，李尧和父母吃了饭，聊了会天，说道林家的时候，他们都唏嘘叹息。

    老妈张玉凤叹道：“多好的一个女娃呀，就这么没了，你说你往后可咋办喔。”

    李尧：“？？？”

    这特么怎么就扯到我身上了？

    还我咋办……我俩又不是情侣！

    老爸李建国也搓着下巴的胡茬道：“可不是嘛，大尧啊，你啥时候再找个对象啊？你可不小了啊。”

    呵。

    男人果然都是大猪蹄子！

    刚才还觉得人家林晓薇是儿媳，这转眼就催自己找对象，人家林晓薇才走多久啊？啊！

    等等……

    难道林晓薇那货也是因为家里催得紧，所以才和自己走得比较近？

    很有可能啊！

    李尧外貌条件也是很好的，白净斯文，脸庞清俊，穿白衬衣的时候尤其好看，他和林晓薇在一起的时候，其实不少人都觉得他们是情侣，甚至被问的时候也是笑而不语，你丫猜去吧！

    可实际上私下里两人都挺嫌弃对方的。

    那两人为什么还整天腻歪在一起？

    是友谊吗？

    还是责任？

    不，李尧单纯是因为和妹子玩比较有面儿。

    而林晓薇那货极有可能就是拿李尧当挡箭牌啊！

    李尧心里豁然开朗，决定下回一定找林晓薇好好问问！

    好不容易应付完父母，他逃也似的离开家，去林晓薇家了。

    ……','
    今天是周六，他赶早回到家里，吃了午饭就出门，所以到林晓薇家的时候天色还早，他敲了敲门，门内传出一个女孩的声音：“谁呀？”

    那是林晓薇的妹妹，林晓溪。

    李尧回道：“我啊，李尧。”

    没多会儿，林晓溪从里面把门打开，狐疑的看着李尧：“你来干嘛？”

    不干！

    李尧绷着脸说道：“就……来看看，看看叔叔阿姨。”

    这个理由有点牵强啊。

    可总不能说……你老姐托我常来看看，顺便拍点小视频发给她。

    吓死个人喔！

    又或者李尧会被扭送到青山精神康复院。

    但是林晓溪却仿佛懂了什么似的，点点头：“你还挺有心的，可惜我姐在的时候你不花心思？现在……又何苦呢。”一边说着林晓溪一边回到客厅的沙发上，抱起手机一脸苦闷的划拉着：“自己坐吧，这么熟我就不招待你了。”

    李尧：“……”

    你都脑补了什么剧情啊？

    好像，

    刚刚的只言片语透露出了什么了不得的东西啊！

    李尧瞪着死鱼眼找了个地方坐下，然后拿出手机装作浏览新闻，实际上却在拍视频。

    不得不说，林家姐妹都是美人胚子。

    姐姐林晓薇大长腿，身材丰腴曼妙，可以随意在轻熟知性和活泼青春之间切换。

    妹妹林晓溪虽然干瘦了点，可还是要胸有胸，要屁股有屁股，就是有些古灵精怪，妥妥的少女风。

    可谓各有千秋吧。

    而且……

    腿也很长，很好看。

    李尧看得有些入神。

    林晓溪突然警觉地看向李尧：“喂，你干嘛呢？”

    李尧心里咯噔一跳，脸上却不动声色的放下手机：“没干嘛啊。”

    林晓溪狐疑的审视着李尧：“真的？”

    李尧：“假的。”

    来自林晓溪的负面情绪+222……

    算了，继续玩手机。

    等到晚上林家叔叔阿姨回来后，李尧和他们寒暄了好一会儿，并热情的要留李尧吃饭，毕竟女儿都走了，这小伙子还能来看看二老，心肠还是很不错的。他们也很高兴。李尧反正也常来蹭饭，也就不客气了。

    在叔叔阿姨忙碌的时候，李尧不动声色的拍了一家三口同框的小视频，。

    呼，务任总算是完成了。

    一顿饭后，宾客尽欢，李尧也告辞回家。

    林叔叔一拍林晓溪脑袋：“去，送送你李尧哥，整天就知道玩手机！”
','    林晓溪：[○｀Д○]！

    凭什么让我送他！

    还有手机这么好玩，凭啥不让我玩！

    然而父爱威严，林晓溪最终还是揉着有点红的耳朵，一脸不情愿送李尧下了楼。

    这座小区有些年头了，住的人也挺多。

    夜幕下，许多窗口都亮了起来，不少人影在里面忙碌着，舒缓着一天的疲惫，万家灯火下，一切都很静好。

    李尧心绪很平静。

    他有点喜欢现在的状态。

    林晓溪背着手走在李尧旁边，说道：“我姐走了你很难过吧。”

    李尧：“……嗯。”

    林晓溪：“我和我姐像吗？”

    李尧点点头：“还是挺像的。”

    林晓溪：“但我们是不可能的，你不是我喜欢的款。”

    嗯？！

    这特么都什么跟什么啊？

    他脸当时就黑了，小丫头片子是不是太能给自己加戏了！

    林晓溪望向远方深邃的夜幕，幽幽道：“不是你不好啦，只是我喜欢的不是男孩子。”

    嚯？！

    好像知道了什么了不得的事情啊。

    李尧甩了甩脑袋，什么乱七八糟的！

    他说道：“你……太能给自己加戏了啊，戏精本精吗？我就是来看看你和叔叔阿姨，没别的意思。”

    林晓溪摇摇头：“没事，我懂，希望你能早点走出来，找到更合适你的人。”

    李尧都快疯了。

    我解释不清了是吧！

    他抿了抿嘴唇，强行转移话题：“对了，我看叔叔阿姨好像烦心事挺重，你们家……最近出什么事了吗？”',10051,10153);

insert into ds_book values(null,10154,'【欢迎体验装备大师系统】

    【本系统可将游戏装备具现，虚拟创造现实，游戏改变人生】

    【当前，你可以绑定一款游戏，开始你的新手体验。由于你的等级较低，请先选择一款简单游戏】

    躺在床上的陆白，突然惊醒过来。

    来了！

    它终于来了！

    莫名其妙来到这个灵气复苏的平行世界，他已经过了整整15年的咸鱼生活。

    都说，金手指会迟到，但绝不会缺席。

    可迟到十五年……

    WDNMD！

    老子这个穿越者，也太难了吧。

    陆白感慨一阵后，赶紧问道：“系统，问一下，我如何绑定游戏？”

    系统：念出游戏名，即可绑定。

    “这么随便的？”

    陆白愣了一下后，道：“那我要【英雄联盟】。”

    系统：绑定失败……该游戏不适合新手阶段，请选择其它游戏。

    “【崩坏三】？”

    系统：绑定失败……

    “【魔兽世界】？”

    系统：绑定失败……

    “【王者荣耀】？”

    系统：绑定失败……

    连续报了十几款热门游戏，全部失败后，陆白顿时无奈了，有气无力地道：“这也不行，那也不行，【我的世界】这种小学生游戏总该没问题吧。”

    “叮，绑定成功！”

    来自系统的提示音，让陆白精神一振。

    【我的世界】简称MC，是一款生存冒险类型的建造游戏，在穿越前的地球上，一度非常流行。

    在这个平行世界，却是没有出现过。

    这里的人，最热衷的是修行和野外探险，对宅在家里打游戏，完全不感兴趣。

    那些耳熟能详的游戏，在这个平行世界，通通不存在。

    “MC里面的装备，虽然垃圾了一点，但的确很适合新手。”

    毕竟是穿越大佬，陆白很快就接受了系统设定。

    宿主：陆白

    等级：LV1（0/10）

    已绑定游戏：【我的世界】

    可具现装备：斧（木，石），镐，剑，盾牌，弓……

    ……

    MC中的装备物品，都非常普通。

    在网上，或是杂货店，花点钱就能买到一大堆。

    陆白也不知道，将它们具现出来有何意义。不过，拿来练练手刷刷经验，应该不错。

    他现在是LV1，只能具现一些最简单的装备。
','    只有将等级提升上去了，他才有机会绑定其它游戏，搞出更加强力的装备。

    游戏开始。

    陆白准备先弄出一个木斧，看看效果如何。

    装备具现，并不是凭空出现，而是需要一定的载体。

    譬如，他现在可以制作两种斧头，一种是木斧，另一种是石斧。其中，制作一个木斧，需要消耗三块木板以及两根木棍。

    熟悉的配方，熟悉的味道。

    陆白翻身下床，离开自己的卧室，钻进家里的储物间。

    现在是凌晨两点，父母早已睡熟，他可以放心的造。

    一阵翻箱倒柜后，他找齐了所需的材料。

    三块桦木地板，是以前装修房子剩下的，还有两根木棍。

    虽然都是最烂的材料，但能用就行。

    “是否具现装备【木斧】？”

    “是。”

    光芒一闪，陆白手中的几块破木头，飞快地融合一体，最后变成了一个黑色的木斧。

    装备：木斧

    品质：低劣

    耐久：30

    伤害：0.1

    评价：伐木尚可，砍人不行。

    ……

    “这玩意不能砍人，我没意见，但拿去伐木，真的不是开玩笑的么？”

    陆白打量着手上的木头斧子，一副怀疑人生的表情。

    于是，他决定验证一下。

    小区楼下，种了一些梧桐树。

    陆白拎着木斧，偷偷溜出家门，在楼下小区溜达一圈，发现没人之后，便来到其中一株梧桐树跟前。

    小树只有手臂粗细，还是个孩子……

    “就你了。”

    陆白挥舞木斧，对准小梧桐树的树干，不轻不重地砍了一下。

    咚！

    伴随着一声闷响，梧桐树摇晃了一下，坚硬的树干上出现了一个深深的口子。

    “我哔了狗了，还真能伐木！”

    陆白摸了一下木斧的刃口处，没有任何锋利的感觉，非常迟钝。

    可就是这么一个玩具一样的木头斧子，竟能砍动一棵坚硬的梧桐树。

    不愧是……游戏装备啊。

    咚咚咚！

    陆白兴致起来，挥舞着木斧，连续砍了七八下。

    他手上的木斧毫发无损，只是耐久度降低了一点，从30变成了29。

    梧桐树却是咔擦一声，被拦腰砍断。

    “叮，获得梧桐原木*1。”

    奇怪的事情发生了，梧桐树被砍倒在地后，竟然变成了一块立方体的木头，以及一堆落叶。
','    “这也行？”

    看到这一幕，陆白当时就惊了。

    太牛皮了。

    这玩意儿，简直就是伐木神器啊。

    陆白回过神来，打量着手上的木斧头，脸上露出一抹惊喜的笑容。

    实验大获成功。

    陆白没有继续祸害其它的梧桐树，毕竟这不是打游戏，在现实中瞎鸡儿砍树可是要坐牢的。

    至于地上这块梧桐原木，他准备找地方藏起来。

    一是消灭罪证。

    二是他以后还需要用到很多木料，这块梧桐原木或许用得着。

    如果他没记错的话，距离小区不远有一家废弃家具工厂，将这块梧桐原木藏在那里，应该非常安全。

    陆白搬起足足有数十斤重的梧桐原木，一路摸黑赶到废弃家具工厂，将梧桐原木丢到工厂后院的一片乱草丛后，便赶紧溜之大吉。

    对于普通人来说，晚上活动还是挺危险的。

    在双龙市，已经连续发生了六起凶杀案，都是夜晚户外作案，据说凶手是一名修行者，手段极端残忍。

    陆白虽然胆大，但也不敢太浪，原路返回后，便直接回了家。

    折腾了半宿，迷迷糊糊中，他抱着小木斧睡着了。

    直到早上八点半，才被老妈叫醒。

    老妈李玉琴，准备好了早餐，老爸陆怀生则是已经出门上班去了。

    不用上学的孩子，就是幸福。

    就在上个月，他刚刚考完中考，被附近的一所普通高中给录取了。

    一个月后，他才会开始新的学生狗生活。

    在此之前，他还有大把时间可以宅在家里，当一只幸福而悠闲的咸鱼。

    “儿啊，过两天你姐要从学校回来一趟……”

    李玉琴一边给陆白剥一只水煮鸡蛋，一边说道。

    “咳咳……”

    陆白一听，差点被一口小米粥给呛死，好不容易将喉咙中的小米粥咽下去，赶紧说道：“妈，这两天我准备去同学家住两天……”

    “胡闹！”

    李玉琴瞪了儿子一眼，不满地道：“你姐好不容易回来一趟，你躲着她干嘛。”

    “妈，你是不知道那个女人……我姐有多恶劣。”

    陆白一脸的苦大仇深。

    一个自带弟控属性，并且拥有强大武力的姐姐，到底有多么凶残可怕。

    没有人比他这个做弟弟的，更有发言权了。

    “你姐都是为了你好，每次打电话回来都要问到你。还有那些补品和零食，都是你姐寄给你的。你都这么大了，也该懂事了……”

    李玉琴喋喋不休地数落着。

    “是是。”

    陆白低头吃粥，不做解释。

    咚咚咚！

    就在这时，门外突然传来一阵急促的敲门声。',10052,10154);
insert into ds_book values(null,10155,'不会这么巧吧！

    听到敲门声，陆白和老妈对视了一眼。

    老妈李玉琴喜笑颜开，赶紧跑去开门，陆白则是如坐针毡，一脸晦气。

    门被打开。

    让陆白大松一口气的是，来者不是某个女魔头，而是另有他人。

    听声音，像是小区的物管。

    老妈站在门口，和那人聊了一会儿后，便关上门，重新回到饭桌，嘴里还念叨着：“什么素质啊……”

    “怎么了？”

    陆白随口问了一句。

    “刚才听物管说，小区去年移栽的梧桐树，在昨晚被人偷偷砍走了一棵。物管过来打听消息，昨晚有没有看到什么人，或是听到什么声音。”

    李玉琴毫不掩饰一位中年妇女的鄙视，“你说说，什么人这么缺德，连棵树苗都要偷。”

    “是啊，太不要脸了。”

    陆白面不改色地接了一句后，放下筷子，抹了抹嘴，“妈，我吃饱了。对了，今天我和几位同学约了，想要出去玩一下。”

    “把蛋吃了。”

    李玉琴将剥好的水煮蛋塞到陆白嘴里，叮嘱一句道：“老规矩，无论你怎么玩，都不准出城，还有，天黑之前一定要回家。”

    “唔……知道了。”

    陆白回到自己的卧室，将一瓶水和一些零食塞进背包里，便离开了家门。

    小区里，一群老头老太正围着一个木头桩子指指点点。

    大半夜的，一棵梧桐树离奇被砍，这件事已经引起了不少人的注意。

    陆白一脸悠闲地路过。

    幸好，他昨晚只撸了一棵树，要不然的话，这篓子可就捅大了。

    离开小区，他直奔废弃家具工厂。

    来到目的地，四周空荡荡，路边连只野猫都看不到。

    陆白麻溜的翻进工厂，在后院的草丛里找到了那块梧桐原木。

    接着，他四处观察了一下。

    这间废弃家具工厂，外面有一道围墙，内部的厂房被锁住，唯一的入口是一扇窗户，不知被什么人给撬开了，有一个豁口，可以容人钻进去。

    “不错。”

    陆白满意的点点头。

    在家里，他想做点什么都放不开手脚。

    这间废弃家具工厂，正好可以成为一个秘密基地，让他为所欲为。

    陆白沿着那扇破窗户，顺利地钻进厂房。

    厂房面积很大，借着昏暗的光线可以看到，里面早已被搬空，除了散落在地上的一些废木料，便只有几台锈蚀的金属加工台。

    “宝地啊！”

    陆白看着散落在地上的废木料，顿时乐开了花。

    这下好了，撸树都省了。
','    地上这些废木料，足够他刷出一大堆木头装备，让他尽情地刷经验升级。

    说干就干，很快他就捡到了一堆的木板和木棍。

    “具现装备木锹。”

    “具现装备木镐。”

    “具现装备木剑。”

    “具现装备木锄。”

    ……

    陆白将一百多块废木料，化作了一件件的MC装备。

    他的经验，一口气涨了三点。

    按照这速度，用不了多久，他就可以升到LV2。

    陆白从地上随手捡起一只黑色的木剑，一串信息浮现在他的眼前。

    装备：木剑

    品质：低劣

    耐久：25

    伤害：0.3

    评价：虽是垃圾，也能一战

    “这玩意儿虽然看着跟玩具一样，但伤害可是有0.3，是木斧的3倍，砍人的话，应该很痛吧。”

    陆白把玩着手中的木剑。

    整只木剑，长约半米左右，看上去非常粗糙，一点也不像是一件武器。

    不过。

    昨晚他可是见识过木斧的厉害，这只木剑肯定也不简单。

    陆白不敢以身试法。

    他找到一块非常坚硬而且厚实的木板，以他的力气，无法将之弄断。

    用其来试剑。

    木剑厉害与否，一试便知。

    咔嚓！

    他单手握住木剑，对准木板一劈，木板应声而断，化作两截。

    断口处异常平滑，像是用切割机切出来的一般。

    “果然！”

    陆白咧嘴一笑。

    木头做的装备，那也是装备。牛就一个字，不说第二次。

    接着，他又试验了几次。

    无论是木板，还是板砖，在他的木剑之下，都不堪一击。

    如果砍在人的身上，伤筋断骨都是轻的。

    验证完木剑之后，陆白又体验了一下另外几种MC装备。
','    木锹，可采集泥土沙子等等。

    木镐，可用来开采矿石。

    木锄，可将地面化作耕地。

    ……

    总而言之，都各有奇妙之处。

    陆白稍作休息后，又捡来一堆废木料，继续刷木头装备。

    刷刷喜刷刷！

    一件件木头装备，在他的手上成型。

    “咦！”

    突然，陆白停了下来，脸上露出一丝惊喜的笑容。

    装备：木剑

    品质：精品

    耐久：120

    伤害：1.0

    评价：一柄优秀的木剑

    装备的品质，有低劣，普通，精品和极品四种，品质越好，属性就越高，威力也就越强。

    而装备的品质高低，又和材料相关。

    越是好材料，越容易具现出高品质的装备。

    用烂木头，和用百年铁木具现出来的装备，肯定不一样。

    只可惜。

    陆白身边只有一堆烂木头。

    工厂里的这些废木料，不知放了多久，几乎全部发霉质变，不堪一用。

    然而……

    靠着这一堆烂木料，他硬是‘刷’出了一件精品级别的木剑。

    当真是运气来了，狗屎也挡不住啊。

    “好宝贝！”

    陆白握着精品木剑，仔细打量着，越看越喜欢。

    和之前那些烂货不一样，这柄精品木剑，做工明显上了几个档次，而且重了许多，变得更加趁手了。

    最奇异的是，它虽然是木质的，表面却带着一层淡淡的金属光泽。

    叮叮叮！

    用手指轻敲，还能听到清脆的响声，触感也非常类似于金属。

    “这一剑下去，怕是没几个人扛得住吧。”

    陆白兴奋地挥舞几下之后，将其单独放在一旁，准备带回家作为私人收藏。

    至于其它的木头装备，他决定收工之后一把火烧干净。

    这些装备，若是不小心流落出去，被人发现了秘密，那可就不妙了。

    不管怎样，苟一点总归没错。

    喝了水，吃了一袋饼干后，陆白继续刷起。

    两个小时后。

    他终于刷满十点经验，从LV1升到了LV2。',10052,10155);
insert into ds_book values(null,10156,'宿主：陆白

        等级：LV2（0/100）
    
        已绑定游戏：【我的世界】
    
        可具现装备：斧（木，石，铁，钻石），镐，剑，盾牌，弓……
    
        ……
    
        升级之后，并没有太大的变化。
    
        他现在依然处于新手阶段，也无法绑定新的游戏。
    
        唯一的变化——他解锁了新的姿势……
    
        准确来说，是他解锁了另外两种材料——钢铁和钻石。
    
        MC中的钢铁装备，比木头装备或是石头装备，要强大一大截。
    
        可麻烦的是，钢铁材料不太容易收集。
    
        制作一只木剑，随便找几块木头就行了，而制作一只铁剑，却需要用到铁块。铁这种元素虽然到处都是，但是想弄到足够多的铁块，却也不是那么容易的。
    
        至于钻石装备。
    
        制作一件钻石装备，消耗的钻石，不是论颗的，而是论斤的……
    
        再有钱也不是这么个败法啊。
    
        更何况，他穷。
    
        用一句话来总结：辛辛苦苦升一级，然并卵。
    
        “不慌，升到LV3，绝逼有惊喜。”
    
        虽然有点小失望，但陆白依然充满了激情和乐观。
    
        从LV2升到LV3，需要整整100点经验，这不是短时间就能达成的。
    
        尤其是刷木头装备所涨的经验，变得越来越少了。
    
        不过。
    
        能有一堆白给的废木料，让他免费刷经验，已经很不错啦。
    
        下午三点。
    
        筋疲力竭的陆白，停下手来。
    
        他身前堆成一座小山似的木头装备，就是他辛苦一天的杰作。
    
        只可惜，刷了这么多装备，只刷出一件精品级别的木剑。
    
        其它的，都是垃圾。
    
        时候不早了，陆白也累的够呛，决定收工回家，不过在此之前，他还有一件事要干。
    
        掏出打火机，开始点火。
    
        他捣鼓出来的这些木头装备，非常耐操，在耐久度降为零之前，几乎不会损坏。
    
        唯一的弱点就是怕火。
    
        毕竟是木头做的，耐久再高，也怕火烧。
    
        陆白将一件件木头装备，依次丢入火堆中。
    
        烧了足足一个多小时，才将173件木头装备全部处理干净。
    
        “收工！”
    
        将火堆熄灭后，陆白将那柄精品木剑塞进背包，离开了废弃家具工厂。
    
        “哟，儿砸，今儿怎么早就回来了？”
    
        看到陆白回来，老妈李玉琴颇为诧异，往日里，这小兔崽子哪次不是磨蹭到快天黑了才知道回家。
    ','        “累。”
    
        陆白一脸疲倦地道：“妈，我先睡会了，饭好了叫我。”
    
        “先去冲个澡，看看你，身上弄得这么脏。”
    
        “知道了。”
    
        洗澡，睡觉，吃饭，接着睡。
    
        第二天。
    
        陆白找了个借口，又溜出了家门。
    
        目的地，依然是那座废弃家具工厂，昨天还剩下一些废木料，他决定今天全部刷完。
    
        刷刷刷！
    
        忙活了几个小时，厂房内的废木料，被他横扫一空。
    
        唯一还剩下的，只有一些质量还不错的木料，是他特意挑选出来的。
    
        今天，他打算制作弓箭。
    
        制作一张MC木弓，需要用到木棍和线这两种材料。
    
        其实他昨天就想制作木弓，但因为缺少线这种材料，只能作罢。今天，他特地从家里带来了一卷毛线球，是老妈给他织毛衣剩下的。
    
        用毛线做弓，他也算是开创了一个新的潮流。
    
        “具现装备木弓！”
    
        在陆白的具现大法之下，三根木棍和三根毛线，逐渐融合一体，最后变成了一张小型的白色木弓。
    
        装备：木弓
    
        品质：低劣
    
        耐久：50
    
        伤害：0.5
    
        射程：100米
    
        评价：毛线弓，射毛线
    
        ……
    
        毫不意外，用毛线做出来的木弓，就是个垃圾。
    
        但即便如此，伤害也有0.5，而且最远射程有100米，还算是一件不错的远程武器。
    
        有了弓，就要有箭。
    
        制作箭，稍稍麻烦了一些，就算是最简单的木箭，也需要用到木棍和羽毛这两种材料。
    
        对此，陆白也有准备。
    
        他从背包中取出几只羽毛球，然后将羽毛球上的羽毛全部拔下来，这样的话，制作木箭的材料就凑齐了。
    
        装备：木箭
    
        品质：低劣
    
        耐久：5
    
        伤害：0.7
    
        速度：25m/s
    ','        评价：一支散发出贫穷气息的箭
    
        ……
    
        陆白一口气制作了十三支木箭。
    
        木弓最高伤害0.5，木箭最高伤害0.7，它们的伤害可以互相叠加。
    
        也就是说，射出一箭的最高伤害，理论上可以达到1.2。
    
        “试试。”
    
        陆白一手持弓，另一只手拿起一支木箭，搭在弓弦上。
    
        他曾经学过几节射箭课，虽然技术很菜，但是基本的操作还是懂的。
    
        拉弓……射！
    
        陆白对准前方的一根柱子，咻的一下，木箭破空而出。
    
        动作一气呵成，可惜射歪了。
    
        没有射中柱子，而是射到了一旁的墙壁上。
    
        木箭牢牢钉在石墙上。
    
        陆白走过去，用了很大的力气，才将木箭从墙上取下来。
    
        威力有点可怕！
    
        这一箭若是射在人身上，至少是个血窟窿。
    
        唯一不足的是，木箭属于消耗品，耐久只有5，每使用一次就降低一点耐久度，一支箭最多只能回收使用五次。
    
        崩……咻……崩……咻……
    
        接下来，陆白开始练习射箭。一支支木箭，被他射到报销为止。
    
        他的射术，在稳步提升当中。
    
        从最开始的十箭九空，到最后，命中率至少有一半了。
    
        不过，这只是射柱子，若是换做射人，或是更小的目标，命中率堪忧。
    
        “呼哧！”
    
        将十三支木箭全部报销后，陆白也累得够呛。
    
        休息一会儿后。
    
        他又制作了一批木箭，继续练习射箭。
    
        射箭一时爽，一直射箭一直爽，反正他爱上了这种射之运动。
    
        下午一点。
    
        陆白带来的羽毛球，被他全部用光，木料也所剩无几了。
    
        “唉。”
    
        陆白看着空荡荡的厂房，顿时有些头疼了。
    
        以后，他想要继续‘刷装备’，就只能靠自己去收集材料了，不能再继续白piao了。
    
        罢了。
    
        今天就到此为止吧，至于以后怎么办，以后再说。
    
        回到家。
    
        家里没有人，老爸一大早就出门上班去了，要到晚上才能回来，老妈似乎也出门了。
    
        脱掉鞋，陆白走向自己的卧室。
    
        突然。
    
        他眼皮一跳，整个人隐隐有一种不祥的预感。',10052,10156);
        insert into ds_book values(null,10157,'“砰砰！哦嘿！砰砰！奥本！”

    “砰砰！哦嘿！砰砰！胜利！”

    威势滚滚、雷霆万钧的应援声浪铺天盖地地遮掩过来，氤氲蒸腾的炙热与癫狂在空气之中蔓延开来，牢牢抓住夏天尾巴的美国南方弥漫着挥之不去的潮湿，黏糊糊地附着在皮肤表面，毛孔都无法呼吸，仅仅只是站在户外五分钟就如同从水里捞出来的一般，却依旧无法阻止观众们为球队加油助威的热情，孔雀蓝的夜幕之下，刺眼明亮的灯光勾勒出人山人海的恢弘地平线，仿佛这就是世界的中心。

    “砰砰！哦嘿！砰砰！奥本！”

    “砰砰！哦嘿！砰砰！胜利！”

    脚底隐隐传来细微的震动，如同来自地底深处的吼声，顺着双腿一点一点渗透到血液和骨骼之中，以不可阻挡的声势蹿到头顶，然后整个身体就酥麻起来，紧绷到极致的肌肉几乎就要爆炸，以至于无法动弹，无法逃跑也无法前进，就这样被死死地困在原地，眼睁睁地感受着全场热浪将自己吞噬。

    濒临窒息！

    乔丹-哈利球场（Jordan-Hare-Stadium）的电子比分板之上，“6：23”的比分正在闪烁着，灿烂而刺眼，客队在前，主队在后，鲜明的比分落差正在时时刻刻提醒着客队主教练的失职与狼狈，上半场堪称灾难，跌跌撞撞、磕磕绊绊的比赛根本就无法形成有效对抗，如果不是主队进攻组没有全力以赴，进攻效果差强人意，此时比分差距只怕还会更加险恶。

    “噢，我真心为客队感到遗憾，他们已经承受太多灾难太多压力了，以这样一种方式开启全新赛季，简直就是一场噩梦。我甚至开始可怜那个倒霉的替罪羔羊了，最后时刻接手临时主教练的烫手山芋，他能做的也着实有限，更何况，这才是他职业生涯第一次担任任何一支球队的主教练，然后就面临如此糟糕透顶的局面。上半场站在球场旁边，他看起来就好像是迷途的小鹿，真是一个可怜的家伙。”

    陆一奇，他就是那个可怜的家伙，他就是客队的临时主教练。

    显然，半场落后十七分，这不是他现在需要面对的唯一问题。

    “……做好你的工作！如果不是你出现了掉球，那次进攻就已经完成了！”

    “滚开！你他/妈/地给我滚开！先好好地跑你的路线吧，每次进攻都根本不知道自己到底在干什么！满脑子都塞满了干稻草的家伙！”

    “我早就说了，这场比赛输定了，我们现在只是在丢人现眼而已。全场都没有人知道我们到底应该怎么做。”

    “想弃权，那就弃权，坐在这里说什么鬼话？如果你想要举起双手缴械投降，现在就自己滚出这个更衣室。”

    “自大狂！你除了炫耀自己的肌肉之外，你懂什么？不管不顾地上前，甚至没有意识到对手多么强大，就这样上前，这叫做愚蠢！不叫做英雄！”

    “懦夫！”

    “白痴！”

    “你说什么？”
','    “你这个不要脸的家伙！”

    “草！”

    争吵！争吵！还是争吵！更衣室里的球员们熙熙攘攘地互相争执吵闹着，每个人都沉浸在自己的思绪里，肆无忌惮地宣泄着胸腔里的愤怒与烦躁，似乎只要把责任推卸给其他人，自己就能够得到解脱。

    声音与声音交叠在一起，话语就全部糊弄成为一团，最后只剩下那些嗡嗡声响，就好像成千上万支苍蝇在耳边转圈一般，嘈杂声渐渐演变成为了重锤，狠狠地撞击在耳膜上，整个脑袋都开始晃动起来。

    “砰！”

    一枚橄榄球重重地砸在更衣室的柜子上，邦邦邦的撞击声在整个空间里回荡着，更加可怕的是势大力沉的投掷力量，让椭圆形的橄榄球呈现出不规则的碰撞，毫无规律地砸在了球员身上，引发一片骚乱。

    巨大的轰鸣就在球员之间炸裂开来，周围的球员们都条件反射地开始闪避着，微微的骚乱却在惊雷般的暴戾之中却瞬间掐断，如同乌云压寨一般，所有球员都不可思议地朝着同一个目标投去了目光——

    临时主教练陆一奇。

    就连教练组成员们都不由纷纷望了过去，满脸错愕地注视着陆一奇，似乎没有预料到这突如其来的爆发。

    反而是成为万众瞩目焦点的陆一奇镇定了下来，波澜不惊的表情根本察觉不到任何异样，就这样坦然而平静地迎向了众人的视线，缓缓地环视一周，那锐利而凶猛的视线正在压抑着暗暗涌动的情绪，无法分辨到底是烦躁还是愤怒，却隐隐透露出一股随时都可能爆发的不稳定，如同蓄势待发的火山一般。

    不由自主地，那些倔强的、反叛的、骄傲的、烦躁的、心虚的、不满的视线，就这样悄悄地回避开来。

    “既然你们还懂得愤怒，就意味着你们还懂得耻辱！也意味着你们还懂得自己上半场的表现是多么糟糕！但我更加愿意解读为，你们内心渴望胜利的火焰还没有熄灭！你们依旧正在为如此局面感到烦躁！”

    面对着临时主教练滔滔不绝的怒火和源源不断的气势，更衣室里的球员们都不由低下了自己的脑袋——

    归根结底，他们不过是大学生而已，仅仅是一群假装大人却根本没有长大的孩子，凭借着一股稚气和勇气横冲直撞着，却在真正的困难面前束手无策，然后就开始生气——却不知道到底正在生气些什么。

    “与其坐在这里窝囊地把所有情绪朝着队友发泄，不如走上球场正面迎战对手，因为现在坐在你身边的这些人，他们的目标和你保持一致，他们都在渴望胜利，他们都在拒绝羞辱，你们应该联合起来才对！”

    整个更衣室里只剩下一个声音在久久回荡着，球员们的拳头都不由握紧起来，微微紧绷的肌肉饱含着错综复杂的情绪，却寻找不到宣泄口，只能这样一点一点累积、再累积，整个房间的温度就在不知不觉中开始攀升。
','    “所以，为什么不闭上那些幼稚的嘴巴，集中精力地想一想，下半场应该怎么比赛！又或者是怎么样才可以不要更加丢人现眼！有什么怒气，有什么不满，有什么情绪，朝着球场另一侧的那些家伙发泄出来！至少让电视机前正在观看比赛直播的忠实球迷们能够知道，站在球场上的不是一群行尸走肉！”

    “现在仅仅落后十七分而已，不是世界末日！明白吗？这还不是世界末日！所以，振作起来！精神起来！抗争回去！还击回去！持续战斗！”

    节节攀升的语调显示着，陆一奇的情绪也正在逐渐失去控制，过热的大脑让他暂时丢失了思考能力，怒火如同火山一般源源不断地喷发着，对球员、更对自己，然后，频临窒息的烦闷让他再也无法支撑下去。

    “现在就移动你们那懒惰而愚蠢的屁股，全部都给我滚回赛场上！”

    转身！

    迈步！

    暴风离开！

    重重摔门！

    “砰！”

    更衣室的门板狠狠地撞击起来，然后发出了颤抖的呻/吟声，持续晃动着，只留下一片晃晃悠悠的回音，如同涟漪般激荡开来。

    陆一奇如同风暴一般席卷进入卫生间，然后把所有的负面情绪全部朝着自己释放出来——

    刚刚那些话语，与其说是针对球员们，不如说是针对他自己：那些恨铁不成钢的烦躁与不甘都是对自己的不满。他需要自己清醒起来，他需要自己振作起来，他需要自己重新站起来勇敢地为之战斗！

    “哗啦啦哗啦啦”。

    水龙头打开，奔腾的自来水正在制造开闸洪流，陆一奇整个人趴在洗脸池旁边，那流水的轰鸣声渐渐掩盖了主场球迷的加油应援声，也慢慢掩盖了自己心脏胡乱跳动的嘈杂，然后世界就这样安静了下来。

    他终于寻找到了片刻宁静，打成死结的思绪也终于赢得了些许喘息空间，似乎早就已经停止运转的大脑终于再次看到了转动的曙光，然后，他持续不断地用冷水泼打着脸庞，试图让自己冷静下来平稳下来镇定下来，重新开始思考，但这并不是一件容易的事，乱糟糟的大脑就好像被塞入了一只大象，拥挤得没有剩下多少空间，然后那些战术安排就好像苟延残喘的铁线虫一般，苦苦挣扎、奄奄一息。

    就连他自己都觉得，紧张到脑袋一片空白的自己，如此陌生，又如此窝囊，他甚至不认识上半场站在场边的那个家伙到底是谁。

    原来，小说里的那些主人公们，重活一次就能够轻松大杀四方、龙吟九霄、书写奇迹，全部都是骗人的：即使得到人生重启的机会，有些难关也依旧需要自己一一闯荡、有些道路也依旧需要自己一一开拓。所谓的“人生赢家”，不会因为重活一次就直接水到渠成，事情，终究还是需要一步一个脚印地拼搏争取。

    所以，上半场已经成为了一场灾难，难道下半场也要无法摆脱命运吗？难道比赛真的就要这样输了吗？难道……难道就要这样再次甘于平凡？难道这就是重生的所有意义吗——努力狂奔十年之后遇到第一个难关，然后就直接缴械投降？

    他叫陆一奇，这是他的第二次人生。',10053,10157);
    insert into ds_book values(null,10158,'他叫陆一奇，这是他的第二次人生。

    他出生在华夏南方内陆的一个小乡镇，从小就因为记忆力好和逻辑性强而被老师认为是一个读书的好苗子，这也使得父母对他寄予厚望，期待着他能够成为家族里的第一个大学生，然后能够光耀门楣。

    八十年代末期，南方省份掀起了一股出国淘金热，父母认为这可能成为他用智慧改变人生的转折点，于是，带着他搭上了这班快车，前往太平洋彼岸的北美大陆寻找生活的出路，闯荡出一片新天地。

    但居住在纽约法拉盛的生活，却不是街坊邻居口口相传人人艳羡的“美国梦”，而是蜷缩在厨房后厨的洗碗工和躲藏在干洗房后面的洗衣工人，就连学校生活也不过是别人口中那个“数学很好的亚洲小子”。

    为了融入当地生活，为了考上名牌大学，也为了争取奖学金，在学校执导老师的建议之下，他主动报名参加了学校运动队，然后就懵懵懂懂地加入了橄榄球队——而当时，他甚至不知道橄榄球是什么，应该用手还是用脚，又应该如何得分……所有的一切都是新鲜的，就如同婴儿学步般从头开始。

    出人意料地，他喜欢上了这项智慧与力量结合的运动，甚至开始为之着迷。

    对于大部分门外汉来说，橄榄球就是一项撞击与冲跑的运动，充斥着暴力与血腥，在现代橄榄球规则改进之前，甚至曾经多次出现球员死亡的案例，即使是现在，橄榄球的伤病问题也依旧非常严峻。

    但事实上，橄榄球的战术博弈却堪比围棋般精妙深奥，职业联盟的战术手册拥有超过两万种排列组合，每一位职业橄榄球球员进入联盟加盟球队之前都必须接受智商测试，身体对抗与战术博弈缺一不可，仅仅具备其中一项能力，是无法从中脱颖而出的，橄榄球绝对不是只有撞击与冲跑那么简单。

    凭借着超强的学习能力和出色的比赛阅读能力，再加上平均水准以上的体格，他成功地在球队之中占据了一席之地，主要司职近端锋和进攻锋线。

    更重要的是，橄榄球是一项完完全全的集体运动——也许在其他集体项目之中，一名球员单枪匹马地横空出世，主宰比赛，成为整支球队的盖世英雄，这是可能发生的壮举：篮球可能，足球也可能，但橄榄球却不可能。

    赢取比赛胜利的唯一办法就是，每个位置每个环节的所有球员都必须团结一心，互相配合互相掩护互相支持，任何一个环节的疏忽和遗漏，都可能成为葬送全场比赛的转折点，真实诠释了“集体项目”的终极奥义。

    正是得益于此，他成为球队一员之后，快速融入球队和校园，结交了诸多伙伴，在异国他乡的陌生与慌乱之中，成功站稳了脚步；并且慢慢地、慢慢地开始适应移民二代的全新生活，开启一段计划之外的冒险。

    从高中升入大学，那是生活的又一个转折点。

    凭借着优异的成绩、出色的文书和亮眼的课外活动，他收到了哈佛大学、耶鲁大学和密歇根州立大学的录取通知书。

    事实上，这三所都是全美顶级大学，世界范围耳熟能详的哈佛和耶鲁自然无需赘言，而密歇根州立大学也是全美排名前二十的顶级研究性大学，被誉为是“公立常青藤”，它不仅是美国历史最悠久的研究性大学之一，而且还是全美最优秀的大学之一，七个专业都在全美排名第一，教育学和新闻学是它的名片。

    另外，密歇根州立大学还是全美少数拥有多项橄榄球全国冠军的十六所大学之一，同时是全美第一间开辟橄榄球、冰球、棒球和篮球四大项目的学校，在竞技体育里，与同城死敌密歇根大学不分轩轾。
','    三所大学的录取通知书区别就在于，密歇根州立大学提供了全额奖学金，而哈佛大学和耶鲁大学则是半奖。

    大学选择的决定，成为了他与父母之间最严重也最激烈的一次观点分歧，同时也成为了他人生第一次违背父母意愿做出决定——他们希望他能够前往哈佛大学或者耶鲁大学，即使需要支付昂贵的学费也没有关系；而他则选择前往密歇根州立大学：全奖是一部分原因，还有另外一部分则是他的私心，橄榄球。

    密歇根州立大学斯巴达人的橄榄球近端锋教练帕特-舒尔穆尔（Pat-Shurmur）在球队之中为他提供了一个替补位置。

    他知道，那只是替补位置而已，肯定无法和那些依靠橄榄球赢得奖学金的球员们竞争——他的奖学金是依靠自己的学业争取而来的；他也知道，进入大学还是应该以学习为主，橄榄球应该只是学业之外的附加生活……

    但是他的热忱与激/情都在为橄榄球而燃烧，他无法也不想拒绝内心的召唤，青春期的冲动与热血，就让他如同飞蛾扑火般的选择了密歇根州立大学。

    大学四年生活，痛苦与幸福并存、折磨与快乐齐飞。

    一方面，他越来越喜欢橄榄球，所有的青春与热血都倾注在了这项运动之中，即使是作为替补也依旧能够享受比赛，享受站在球场之上的每分每秒，与斯巴达人体育场共同呼吸，他甚至萌生了尝试成为职业球员的念头。

    另一方面，来自父母的压力始终都不曾消失，怀柔、强硬、争吵、冷战、哭诉，各式各样的手段都经历过，他们强烈反对他花费无数时间在橄榄球之上的行为，只是期待着他能够顺利毕业，找到一份安稳的工作，然后结婚生子。

    更糟糕的是——又或者说，更现实的是，他在球场之上渐渐跟不上队友们的脚步：他的身体天赋还是无法与那些堪称怪兽的球员相比较，即使是作为替补，他们之间的差距也在伴随着时间的推进而逐渐拉大；而伤病更是没有帮上忙，虽然没有长时间缺席训练的严重伤病，但大大小小的伤病也始终不断。

    他必须正视一个残酷现实：也许他的职业球员梦想的确无法实现。

    但他没有轻易放弃。

    他不是那种遇到挫折和困难就随随便便缴械投降的类型，骨子里，他有着一股执拗，就好像当初在学校主动参加体育活动一般地迎接所有困难的挑战，确定目标之后，就一心一意地竭尽全力奔跑。

    如果全力以赴之后依旧无法成功，如果放手一搏之后依旧无功而返，那么他也可以问心无愧地告诉自己：他不后悔。在没有尝试过之前，一切都不作数，这才是竞技体育最核心的精神。

    他尝试了，但他失败了。
','    大四那年，他尝试参加选秀，他尝试参加试训，但依旧没有能够打破局面，没有任何一支球队愿意留下他。

    原本，他还希望前往加拿大和欧洲的职业联盟试训，但来自父母的强大压力让他终究还是没有继续尝试下去，遗憾但理智地亲手关闭了橄榄球梦想的大门，然后把这个梦想悄悄地放进抽屉里锁起来。

    告别橄榄球的他，顺从父母的意愿，在纽约找到了一份工作，顺利成为了一名记者，走上了“常规”的社会生活。

    他曾经以为，自己可能就这样按部就班地走完下半辈子，橄榄球就只是业余爱好而已，梦想在生活的残酷现实面前不得不退居二线，那些热忱、那些激/情、那些冲动，全部都变成了记忆里的点缀。

    一直到某天，坐在曼哈顿苏活区办公室里加班到半夜，整个人昏昏沉沉得非常不舒服，强撑着身体不适完成稿件之后，迷迷糊糊地就趴在办公桌前睡了过去；等一觉醒来再次睁眼的时候，他却发现自己重新回到了大学一年级的时候，趴图书馆书桌之上，为了完成报告而通宵。

    他，回到了自己的十八岁。',10053,10158);
    insert into ds_book values(null,10159,'到底应该如何形容陆一奇的生活呢？

    当他度过自己四十岁生日的时候，他是“纽约每日新闻”的体育版主编，他在布鲁克林拥有一套房产，他一年前刚刚告别了自己的七年婚姻——但没有孩子，他的父母在新泽西开了一间小小的便利店，他每天依旧加班到凌晨时分然后回到自己空无一人的公寓，他依旧是纽约九百万人之中的一名普通上班族成员。

    他不认为自己是什么社会十大优秀青年，但他也可以肯定地说，他的生活远远没有到悲惨可怜的境地，更多应该是……平凡。对，平淡无奇的生活，有些波澜也有些起伏，但整体来说就是日复一日的枯燥日常生活，比上不足比下有余，与世界上成千上万的普通人没有太多区别，置身于茫茫人海之中，就这样被彻底吞噬淹没。

    他依旧狂热地喜爱橄榄球，每个周末都会密切关注职业联盟赛事，就如同千千万万的美国当地人一般——NFL是北美四大体育联盟收视率最高、人气度最高、普及率最广的运动，橄榄球是美国第一大球。

    他曾经想过，不止一次地，如果当初没有选择橄榄球，那会怎么样？又或者说，如果当初没有执念地试图成为职业橄榄球员，而是考虑其他更多可能，比如说，教练，那又会怎么样？如果当初没有离开橄榄球，生活是否会更加精彩、更多波澜、更加惊心动魄？人生，是否能够如同夏花一般绚烂盛开？

    但所有人都知道，世界上没有如果。一直到“如果”真的发生了。

    从2019年十一月十一日回到1997年十一月十一日，他的人生被倒退了二十二年，从四十岁回到了十八岁，他再次成为了密歇根州立大学的大一新生，正在为课程报告赶工——因为橄榄球菜鸟们必须在训练结束之后留下来整理训练场、打扫更衣室，他必须加班加点才能够按时地、优秀地完成学习任务。

    “看来，我早就已经练就了通宵达旦、加班加点的一身本领。”

    清醒过来之后很长一段时间里，他都处于怀疑状态：

    所有的所有就如同梦境一般，有时候真实、有时候虚幻，还有时候介于半梦半醒之间，让人无法确定现实的界线到底在什么位置，唯恐下一秒就会从梦境之中苏醒，然后自己的努力与尝试都化为泡影。

    患得患失的情绪持续到了下一次训练——橄榄球球场之上的一点点走神，就可能演变成为惨烈事故。

    天旋地转的失重感，还有鼻翼底下的血腥味，这让他真正地清醒过来，百分百地确定：自己获得了一次重来的机会。

    那么，机会来临之际，他到底应该如何选择呢？转身离开？继续奋斗？还是……开拓出一条全新道路？

    他知道自己按部就班地选择保守起见，依旧可以拥有一段平稳的生活，甚至是无数人羡慕的安稳生活，但平凡？平静？平坦？这真的是生活吗？亦或者仅仅只是活着？为了活着而活着？没有激/情也没有热血，没有波澜也没有起伏，没有拼搏也没有奋斗，就这样得过且过地数日子，等待着两腿一伸的时刻到来？

    他选择过、尝试过、经历过，但他知道内心深处的那一谭死水，依旧拥有着一颗没有熄灭的火种，正在等待着凤凰般的涅槃。现在，机会来了，再次面临人生岔路口，他应该继续遵循上一世的道路吗？他应该继续按部就班地选择安全牌吗？他应该弥补自己内心深处始终都不曾放下的那个遗憾吗？
','    最终，他选择了第三者：职业教练。

    上一世十八年的体育记者生涯，不仅让他对NFL联盟之内的球员们了如指掌，同时还让他对联盟的战术变革、战术潮流以及战术安排拥有着独特理解，他总是能够清晰解读出教练的临场战术安排以及意图，被誉为是“纽约每日新闻”报社内部的官方解说员，敏锐的比赛解读能力着实得到了诸多赞誉。

    他终究还是无法离开橄榄球，终究还是期待着能够再次热血沸腾一把，终究还是不甘心流于平凡。也许，他无法成为一名职业橄榄球员，但他依旧有可能成为一名职业教练。

    但他也知道，球迷看球的“专业”是一回事，真正走上球场指挥比赛又是另外一回事——球迷们都被称作是“用嘴巴看球”，这一道理似乎在任何一个体育项目领域里都是通用的。

    从专业球迷到专业教练的转变，绝对没有那么简单，甚至可能比想象之中还要更加困难；至于从专业教练到顶级教练的突破与升级，那就将是另外一个截然不同的故事了。

    不过，他现在拥有了第二次机会，那么就一切皆有可能。只有孤注一掷地全力以赴，才能够知道答案，不是吗？

    这一次，父母也没有能够阻止下定决心的陆一奇。

    一方面，他依旧在斯巴达人近端锋教练帕特-舒尔穆尔的手底下打球，孜孜不倦地学习场上战术执行的千变万化；另一方面，他开始专心致志地向主教练传奇名教头尼克-沙班（Nick-Saban）学习战术布置和比赛思路，从基础开始学习成为一名教练。

    其实，橄榄球与足球有着诸多相似之处，同样是一方进攻、一方防守，最后的目标都是踢进球门得分。只是，具体执行起来有着区别。

    一支职业橄榄球队包括五十三名球员，这些球员将划分为进攻组、防守组和特勤组，每个小组都是独立存在，拥有自己的十一名固定球员以及相对固定的替补球员。一般情况下，进攻组球员不会参与防守，因为防守组也拥有自己的固定成员；而特勤组的成分则相对复杂一些，主要以替补成员构成，进攻组和防守组成员都有。

    整个比赛以回合制的方式进行，当主队进攻组上场的时候，那么客队就由防守组登场，展开对垒；反之，当客队进攻组登场的时候，主队则是派出防守组进行比赛。当进攻失败、任意球、重新开球等等其他情况，对阵双方则齐齐派出特勤组上场，进行对决。

    由此可见，进攻战术体系和防守战术体系都是独立存在的，而不像足球一般，只有十一名球员在场，攻防转换全部都在这些球员之间发生，这也使得比赛转换速度更快，教练临场指挥速度不一定能够跟上。

    但橄榄球比赛不同，因为是回合制较量，每一次攻防开始之前都有四十秒战术调整时间，这对教练的临场指挥和战术布置都提出了更高要求；同时也对教练的战术素养提出了严苛要求——两万种战术组合，这是一个非常非常庞大的战术库。

    大学四年，他跟随着尼克-沙班和帕特-舒尔穆尔，专心致志地在进攻组打磨自己；大学毕业，在主教练的引荐之下，他前往NFL的费城老鹰，跟在安迪-里德（Andy-Reid）手底下实习，分别在四分卫组、防守锋线组、防守二线组各自轮换了一年。

    在职业联盟足足呆满三个赛季之后，安迪-里德的推荐信让他得到了自己第一份职业教练的正式工作：
','    返回母校密歇根州立大学，担任四分卫教练。

    在密歇根州立大学停留三个赛季之后，堪萨斯州立大学以充分的诚意和优渥的条件，让他前往曼哈顿担任进攻协调员——那是堪萨斯州的曼哈顿，被称为“小苹果”；于是，去年，也就是2006年的休赛期，他跟随着新任主教练朗-普雷斯（Ron-Prince）一起加盟野猫队，他正式接管了进攻组的教练掌印。

    那已经是一年前的事情了。

    今年休赛期，上赛季比赛成绩依旧没有太多起色的堪萨斯州立大学野猫队早早开始集训，期待着能够以全新面貌迎接全新赛季，无论是高年级学生还是一年级新生，全部都在普雷斯的带领下认真训练，朝着全新目标全力冲刺。

    但是，就在2007赛季揭幕战前的三天前，通宵达旦准备比赛的普雷斯却因为心脏病突发而被送进了医院。

    医生也无法确定普雷斯的状况，还需要进一步观察，但可以肯定的是，缺席揭幕战已经是板上钉钉的事情了。

    匆匆忙忙地，作为进攻协调员的陆一奇就被委任为临时代理主教练，负责指挥揭幕战。

    一切都太过匆忙也太过仓促，所有事情就如同盛夏暴雨一般瞬间倾斜而下，他根本没有思考时间就跟随着普雷斯的战术安排匆匆赶鸭子上架了——他没有时间做出调整，更没有时间推翻原有战术重新安排。坚持原有战术，做一个傀儡临时教练，这就是慌乱状况之下，他唯一能做的。

    但这也不能成为借口。

    上半场，他的临场指挥就是一场灾难。明明可以阅读出对方的战术意图，却瞻前顾后、束手束脚地无法做出针对布置，一片空白的脑袋让他看起来像是一个没有灵魂的牵线木偶，根本不知道自己正在做什么。

    于是，他们就落后了，他丝毫不意外他们会落后，因为现场指挥根本没有能够跟上比赛的节奏变化，死板僵硬的战术无法形成对抗，然后比赛气势和局面就朝着对手的一侧倾斜了。这是理所当然的事情。

    那么，他应该怎么办？

    重活一世，努力了十年、奔跑了十年、奋斗了十年、拼搏了十年，却发现自己似乎再次乱了阵脚？

    然后呢？放弃吗？就好像一个窝囊废一样吗？然后乖乖地放弃梦想，重新回到按部就班的日常生活吗？',10053,10159);

insert into ds_book values(null,10160,'碧波粼粼，山色空蒙。

　　风光秀丽的西子湖畔，有个脸色灰白的灰衣男子，蹲在青石铺就的堤岸边，静静地思考人生。

　　他叫许仙。

　　但他不是那种许仙。

　　这个许仙三天前才刚刚来到这个世界，是的，他穿越了。

　　好好的躺在床上，做着美梦，一觉醒来，就发现周围的一切全变了。

　　苦思冥想两昼夜，最终得出的结论是，再睡一觉，这一定是在做梦！

　　醒了睡，睡了醒，浑浑噩噩两天后，终于被拎着捣衣杵的姐姐许娇容赶出了家门，滚回药铺当伙计去了。

　　药铺是一间小药铺，掌柜是一个老掌柜，每次看到许仙，都会摇两下头，紧接着再叹一口气。

　　许仙只在药铺里待了半天，就不肯再去了，因为他觉得，再待下去，肯定会摊上大事。

　　这抓药可不是随便抓的，尤其是让一个连当归都不认识的小伙子去担任这份工作，是对他人生命安全极不负责任的行为。

　　随便找了个借口溜了出来，或许是无法接受眼前的现实，又或许是对这陌生的世界还没有大概的规划。

　　这才来了西湖边思考人生。

　　既然梦非梦，醒未醒，干脆就这样浑浑噩噩地过一生算了？

　　应该会幸福的吧？

　　什么都不用干，只要做个优雅的美男子，静静地等待那一段命中注定的缘分。

　　等待那个如雪莲般洁白的女子，披着春日的晚霞而来，含羞带笑地把我娶回家？

　　可是这样真的合适吗？

　　真的可以安安静静地做一个草莽英雄？

　　远望游人如织的断桥桥头，似有一青一白两道靓丽的身影翩然而至，回眸间百媚丛生，令人浮想联翩……惊坐起。

　　那可是一条千年的古妖！

　　你可是有理想有抱负的新世纪好青年，怎么可以这样心安理得做小白脸！

　　以前的那个许仙，只是因为与白娘子同乘了一条船，然后就被她拐骗到了荒郊野外。

　　随手一挥，将坟地幻化成了牙床，稀里糊涂的，当天就拜了堂成了亲，把生米煮成了稀粥。

　　那时的他没得选。

　　可现在不一样。

　　他知道她是一条蛇。

　　一条千年古妖幻化的大蛇。

　　所以，即便是一只美若天仙的蛇，也是一只年纪很大的蛇。

　　万一将来生出一只娜迦怎么办？
','　　万一生了个女儿，以后遇到一个种葫芦的老爷爷又怎么办！

　　为什么偏偏是一条蛇呢。

　　如果是一只鱼变的，倒也马马虎虎凑合着过了。

　　或者是一只狐狸，也勉强能接受，再不济也能当成一只猫，有事没事撸一撸，也能愉快地相处。

　　可一条蛇……

　　绝对不会有人指着一条蛇说，哇这条蛇好可爱。

　　想想都能让人发毛。

　　捡起一粒石子，抛向平静的湖面，荡起层层涟漪，许大仙人发出一声长长的哀叹。

　　心咋就那么大呢，那么多的古代爱情故事，偏偏选了一个难度最高，过程最糟，下场最惨的白蛇传。

　　许仙知道，这白蛇传，就是一个民间的传说故事，没有具体年代，没有固定的故事背景。

　　而且版本也有好多个，不知道自己穿越过来的是哪一个版本。

　　想到这里，不由得再次把头探出堤岸，照着水中的倒影，细细打量起自己的容貌来。

　　似乎，好像，真的有那么一点点长得像那个叶阿姨。

　　还好，只是脸蛋长得有点像。

　　如果真的是那个经典版本中的许仙，倒也勉强可以接受，至少那个女人，那个自己命中的羁绊，是很温柔的一个形象。

　　不像早期版本中的那个白蛇，只是因为春天到了的缘故，并不是为了什么传说中的报恩。

　　但总之，不管是哪个版本的许仙，他的结局都是很凄惨的。

　　老婆被一个和尚收走了。

　　自己最后也成了一个和尚。

　　唯一的儿子，最后还被迫娶了他的表妹……

　　这个好像不算悲剧。

　　但不管怎样，既然我不是那种许仙，总是要想个法子与这注定的命运斗上一斗的。

　　“汉文……！”

　　“汉文……你又死哪去了！”

　　姐姐的八度高音自身后传来，刚刚燃起的斗志，也在看到姐姐手中那捣衣杵的刹那，消散于无形。

　　这就是传说中那个很贤惠，很疼爱小弟的姐姐许娇容，然而事实却是，娇容不但没有姣好的容貌，甚至还非常的泼辣。

　　许仙才在家里躺了两天，就被一脚踢出了家门，甚至还扬言，若再敢偷跑出去玩，就打断腿。

　　这一点，光从那八度的女高音就能听得出来，还是带着颤音的那种。

　　你再看，这个许仙的身世也不是很好，自幼父母双亡，家境贫寒，连表妹都没有。

　　只有一个相依为命的姐姐，还是一个泼辣的家庭主妇，暂时在药铺当伙计，没有工钱的那种。
','　　也没有功名，更没有一技傍身，就连那前身记忆，也如那一把握不住的沙，正在迅速的从指缝间溜走。

　　只是短短几天功夫，许仙就已经想不起关于前身的任何点滴，童年的美好回忆，也已经荡然无存。

　　一个连童年都没有的可怜虫，一个被两只蛇妖惦记的许仙，一个在家里混吃的小舅子，呜呼哀哉！

　　“你个兔崽子！”

　　眼前一晃，那捣衣杵就已经架在了许仙的肩膀上。

　　“刘掌柜托人带话来，说你又没去上工，我就知道你又躲这来了！一座破桥，一天到晚的看看看！能看出朵花来！给我死回去。”

　　话音刚落，许仙就觉耳朵一疼，整个人就被姐姐给提了起来。

　　“哎哟哟，姐，疼的很……”

　　“你也知道疼了！”

　　“姐，咱不在这里打成不？”

　　许仙斜眼瞅着许娇容手上提着的那根捣衣杵，悻悻地说道。

　　“我家汉文终于懂事了呢，那好！回家再打。”

　　就因为翘了半天班，就要遭到一顿捣衣杵的招呼，这就是如今这个许仙的生活状态。

　　回到家中，姐姐把捣衣杵往水井边一扔，那顿招呼也就算揭过去了。

　　只是因为姐夫也翘班了。

　　姐夫李公甫，钱塘县县衙捕头，正儿八经的公职人员，在钱塘县，享有李三天的美誉，任何疑难杂症，三日必消，而且还是祖传的手艺。

　　此刻却也是翘班在家，抖着二郎腿，嘬着龙井茶，一脸惬意。

　　看到自家小舅子进来，李大队长将手中茶碗一放，伸手招呼许仙道。

　　“汉文呐，姐夫跟你商量个事。”

　　“姐丈请说。”

　　“汉文在药铺做学徒也有些时日了吧？”

　　“呃……好像是吧。”

　　“那这手艺，也应该学得差不多了吧？”

　　许仙很想告诉他们，自己这抓药的手艺，不但白学了，还全给忘光了。

　　“咱家呢，在北山道口有一间祖上留下来的铺子，最近空出来了。”

　　不等许仙回话，姐夫继续接话道，随即姐姐也在一旁附和道。

　　“是呀汉文，姐当初引荐你去药铺当学徒，其实就是为了日后咱自己也开一家药铺。”

　　“不错，所以呢……明日就叫你姐姐去跟人家刘掌柜打个招呼，咱们汉文这就算出师了。”

　　姐夫一脸运筹帷幄的得意神色。

　　许仙闻言，当下便是一愣。

　　好嘛，这剧情，自己都还没有个具体的规划。

　　姐姐姐夫就已经迫不及待地要把自己往偏路上带了。

　　看来。

　　我果真不是那种许仙。',10054,10160);
insert into ds_book values(null,10161,'也不管在一旁神游天外的小舅子，李公甫继续在那滔滔不绝，跟自家娘子规划着美好的蓝图。

　　“铺子不大，所以咱这药材，也要少整一些。”

　　“对！就备几样常用的，拿手的！”

　　“另外这药铺的招牌，姐夫我也已经想好了。”

　　李公甫一拍大腿。

　　惊醒了一旁神游的许仙。

　　“可是姐夫……”

　　“不用可是了，这事我已经跟你姐商量好了，就这么定下了。”

　　“这就定了？”

　　心说这投资也太盲目了吧？况且是开药铺，连个坐堂大夫都没有，到时血本无归都轻的，搞不好是要出人命的！

　　咱可是连中草药的名字都叫不出来几个，这不瞎整嘛。

　　“汉文！听你姐夫把话说完。”

　　“咳咳，咱这药铺的名字就叫阳春药铺。”

　　“阳春药铺？”

　　这个药铺的名字倒是非常的小清新，但是许仙觉得这招牌似乎挂在面馆门口更合适吧？

　　“没错，就叫阳春药铺，灵隐寺边上就有家阳春面馆，生意好的紧，所以咱这药铺的生意肯定也不会差。”

　　许仙闻言，眼前一阵剧烈的恍惚，想不到姐夫是这样的人才，这热度蹭得，毫无节操啊！

　　“可是姐夫啊……”

　　于是，在家里没有丝毫发言权的许仙，试图再挣扎一下，自己连草药界的名角“当归”，都不认识，如何开得成药铺？

　　“不用可是了，药材的事，你也不用操心，你姐姐磨的藕粉，可是有口皆碑的。”

　　“什么……藕粉？”

　　许仙再次被惊得几乎掉了下巴。

　　心说这藕粉？也是药？

　　“没错没错，去年你姐夫新买的那片藕塘，长势可好了，今年肯定能挖不少。”

　　“对！咱们家的药铺就卖藕粉，铺子是自家的，藕粉也是自家的，到时候药铺的生意，肯定没的说！”

　　姐姐姐夫，一唱一喝，都把许仙给说晕了，心说卖藕粉就卖藕粉好了嘛，为什么一定冠名药铺呢？

　　难道因为自己是许仙，所以才强行剧情？而且姐夫的逻辑，问题似乎也很大呀！

　　“那药铺的事，咱就先这样定下了，现在再来说说这分红的事。”

　　“分红……就不用了吧？”

　　一家人分什么彼此呀，随随便便对半开就行了嘛。
','　　“这事姐夫我也仔细想过，药铺赚的钱，咱们就分成两份。”

　　果然姐夫也是这么想的。

　　“你姐拿一份，咱俩拿一份，你姐辛辛苦苦把你拉扯大，这一份不能少。”

　　此时的许仙，吊着下巴，双眼迷离，已然进入一种迷茫的状态。

　　“嗯！都听姐夫的！”

　　这药铺顶多开俩月就得倒闭，反正就别指望能赚到钱，怎么分都行。

　　于是开药铺的事，就这么愉快地给定了下来。

　　贤惠的姐姐，忠厚老实的姐夫，乖巧懂事的小舅子。

　　其乐融融的一家人。

　　此时的许仙感到很幸福。

　　或许，能成为这样一个许仙，也是一件非常不错的事情。

　　既来之，则安之。

　　趁着那段可怕的缘份还未出现，赶紧把事业搞起来，然后再娶个媳妇，毅然决然地将那一段缘份狠狠错过。

　　我不是那种许仙，我也不想成为一个草莽英雄，我要过正常人的日子。

　　说到正常人，如果这个世界，真的是那种世界，那肯定存在着许许多多被称为神仙的不正常人类。

　　或者……也许……可以……

　　还是算了吧，人家白娘子都修了一千多年，最后还不是说收拾就给收拾了。

　　在雷峰塔下压着，一点法子都没有，再说了，这里的仙人，那是要上天的。

　　据说那里遍地都是漂亮的仙子姐姐，却有一个不准人谈恋爱的规矩。

　　这样的地方。

　　应该不是正常人能忍受的地方。

　　而且听姐姐说，前些年城里有个姓李的员外，他家儿子，就是因为修仙，最后给修傻了。

　　整天疯疯癫癫的，败光了家产，还出家当了和尚，整日举着个酒葫芦，摇着一把破蒲扇。

　　还给自己取了个叫济颠的法号。

　　彻底没救了。

　　现在还能时常看到他在西湖边上要饭，连鞋子都只有一只。

　　身上的灰，比衣服都厚。

　　这就是修仙的下场！

　　所以修仙的事情，暂时不要考虑了，还是人间的花花世界，更适合自己。

　　莫名其妙的穿越，也曾让许仙一度怀疑这一切只是个梦，所以也尝试了几次Kick，但都没有成功。
','　　许是梦境的层次太深，需要嗝屁之后，才能从最后一层梦境中醒来。

　　这明显需要无与伦比的勇气，因此这最后一招，许仙没敢尝试，只能慢慢的等着老死了。

　　“姐姐啊，我今年多大了啊？”

　　“什么……？”

　　“我今年几岁了？”

　　“好你个兔崽子，这日子都过到狗肚子里去了！连这都能忘！”

　　一根异常眼熟捣衣杵出现在姐姐手上，这两天没少挨揍。

　　姐姐其实是很好的人，许仙在家里的时候，过的几乎都是饭来张口，衣来伸手的日子。

　　不管怎样，以后就是一家人了，姐姐是自己唯一的亲人，过两天忙完了药铺的事，得去这辈子的父母坟前磕个头。

　　至于店铺，那是现成的。

　　是姐夫家祖传的产业，位于北山道的断桥桥头，一间铺面还带个小天井，以前开的是山货铺子。

　　有自己的店铺至少不用交房租。

　　这样可以少亏一些。

　　这两天许仙就一直在收拾铺子，隔壁铺子的阿婶是个热心人，每天都过来帮忙。

　　铺子里有几张散发着霉味的旧木柜，擦洗一下还能用，老旧的木柜，更衬托药铺的悠久历史。

　　至于药材，就更不用担心了，姐姐磨了好多好多的藕粉，足够能卖到药店倒闭了。

　　所有事情张罗下来，几乎没花什么钱，就请人打了块招牌花了二两银子。

　　只是这招牌挂上去之后，左看右看都觉得好像哪里有些不对劲，但是到底哪里不对劲，却说不上来。

　　于是，许仙的第一次创业，就在姐姐姐夫的全力支持下，顺顺利利的开张了。

　　开张的第一天，生意竟然好的出奇，顾客们像是约好了的一样，皆是三五成群，结队而来。

　　而且有说有笑，也全都叫得上许仙的名字。

　　不但如此，每个人身上穿的衣服也都是一模一样的，胸口都贴有一个大大的“捕”字。

　　难怪姐夫这么着急的要把铺子给支起来，原来做的都是同事的生意。

　　谁碾玉玲珑，绕磨滴芳液。

　　擢泥本不染，渍粉讵太白。

　　西湖藕粉，其实是这钱塘县的名产，心灵手巧的姐姐还在藕粉里加了一些蜂蜜和干桂花。

　　冲泡之后的藕粉汤，质地细腻，易于消化，又有生津清热，开胃补肺，和养精蓄锐的功能。

　　关键是味道还非常的好喝。

　　许仙自己都忍不住喝了两大碗。

　　看来这假药铺子也不怎么假嘛。

　　如此看来，第一次创业成功的机会还是挺大的。',10054,10161);
insert into ds_book values(null,10162,'西风吹叶满湖边，

　　初换秋衣独慨然。

　　秋意渐浓，梧桐树的落叶点缀在如镜一般的西子湖上。

　　湖岸边的浅滩处，有一少年挽着裤管，弓着腰，手上还拿着一把短柄的铁锹。

　　这个英俊的挖藕少年，就是阳春药铺的大掌柜许仙许汉文是也。

　　来到这个世界已有月余，许仙也渐渐接受了现在的生活。

　　虽偶感清苦，却也活得自在。

　　对这个神话故事中的世界也稍微有了一些了解。

　　这个世界的历史，就连三皇五帝的远古传说，都与记忆中的那个世界存在巨大差异。

　　之后的历朝历代，更是闻所未闻，倒也有诸多相似之处，有汉唐一般的盛世，也有五代之类的乱世。

　　而此时许仙所处的周朝，大概类似于后世的南宋这样一个朝代。

　　几乎是偏居一隅，不过也算得上繁华，边疆也是多年没有战事，百姓也算得上安居乐业，处于一段相对平稳的时期。

　　另外这个世界比之前世那个世界最大的不同，那就是这是一个有神仙，又有妖怪的世界。

　　不过这些事情，对绝大多数人来说，也就是一个奇闻逸事而已，并没有亲眼见过。

　　再者，许仙本人，今年年方十五，一个非常鲜嫩的年纪。

　　想来白娘子应该会等自己养熟一点再下手，不会这么快过来，至少还可以过几年安静的日子。

　　只是别人开药铺，是去山上挖草药，咱许小官人开药铺，却在这西子湖中挖莲藕。

　　一截一截比手臂还要粗的莲藕，不断被从淤泥中打捞出来。

　　挖莲藕即是一门力气活，也是一门手艺活。

　　要保证脆嫩的藕子不被挖断，通常也只有许仙这样心灵手巧的俊小伙子才能做的到。

　　由于挖莲藕的姿势实在太过优美，饱满结实的小屁屁高高翘着。

　　不多时就引来了湖边游人的驻足观看，甚至还能隐约听到有人在吟诗作赋。

　　远看一块石，

　　近看却不是。

　　少年泥中座，

　　疑是大蟾蜍。

　　一首狗屁不通的打油诗，竟然还有人叫好，更可愤的是，竟然还把自己比作了癞蛤蟆，我呸！

　　小心翼翼地挥动铁锹拨开浅水下的淤泥，伸手一掏，一截又长又嫩的莲藕从淤泥中缓缓抽出。

　　伸直有些僵硬的柳腰，抬手擦去额头的细汗，然后就看到那些围观自己的小姐姐们都在惊恐的尖叫。

　　甚至有两个已经当场晕了过去！

　　不是吧……

　　你们这也太热情了。

　　虽然本仙官的确很帅。

　　干活时的样子更帅。

　　但也不用这么激动吧！
','　　“手……手……！”

　　有人抬手指向这里，嘴里哆哆嗦嗦地讲着什么。

　　传到许仙耳中就变成了“蛇……蛇……”

　　蛇！

　　蛇这个字眼在许仙这里可是一级敏感词汇。

　　还以为白娘子这就找上门来了呢，赶紧将手中莲藕一甩，连蹦带跳的往岸边窜出几步。

　　然后，随着那一记奋力的甩手动作，有一条手臂从自己手上飞了出去。

　　不偏不倚，正好砸在一个围观小姐姐的脑门上。

　　被一条手臂砸中的小姐姐当时就两眼一翻，双腿一软晕倒在地。

　　周围的人群也随之轰的一下四散开去，尖叫着捂脸狂奔。

　　自己甩出去的明明是一截莲藕，飞到半空的时候怎么就变成了一截手臂。

　　而且还是一截新鲜细嫩的手臂！

　　这一定是幻觉！

　　而且，挖莲藕怎么可能挖出一截手臂。

　　这果然是一个妖魔横行的世界。

　　挖莲藕都能挖出一截手臂来。

　　好可怕，

　　好想回家。

　　于是，深受打击的许仙想都没想，就踩着淤泥连滚带爬地窜到了岸上。

　　爬到岸上，心绪稍宁。

　　回头再看那倒地昏迷的小姐姐。

　　一截断臂依正好挂在她的胸口处，模样甚是不雅。

　　就这样溜之大吉似乎有些不妥，怎么说她都是惨遭了自己的毒手。

　　况且，这分明是一起耸人听闻的碎尸案呐！

　　好歹毒的凶手。

　　颤颤巍巍上前几步，一脚踢飞了小娘子身上那截断臂。

　　又去摘了两片残荷，把那断臂给盖了起来。

　　四散的人群又渐渐围拢过来。

　　冷静下来之后，感觉腿还是有点软，干脆一屁股坐到了地上。

　　“这位大哥，麻烦你跑趟衙门，告知一下官差可好？”

　　不知是被吓晕还是被砸晕的小姐姐这时也悠悠转醒。

　　坐起身来呆愣了片刻，似乎回想起了刚才那可怕的一幕。

　　小嘴一瘪，俏鼻吸动两下，就抱着膝盖在那哇哇哇的大哭了起来。

　　许仙见状，开口安慰了几句，没有丝毫用处，哭声依旧。

　　过不多时，特别亲切的姐夫领着俩官差急急赶了过来。
','　　“汉文！何故如此狼狈？”

　　“姐丈！”

　　满身污泥的许仙好想抱着姐夫的大腿也大哭一场。

　　围观众人七嘴八舌的向官差讲述了一遍刚才的经过。

　　这位俊俏小哥挖莲藕挖出一截断臂，然后又用挖出来的断臂打晕了这位小娘子。

　　很简单的事情。

　　却是一件很不简单的命案。

　　哭哭啼啼的小娘子被两个妇人搀回了家，可怜的姑娘，估计以后都不敢来这西湖边游玩了。

　　许仙也被姐夫领着，失魂落魄地回了家。

　　那截断臂也被公差捡了回去。

　　一场风波就此草草收场。

　　另一场更大的风波就此酝酿。

　　这钱塘县虽不是一个小地方，却也有好几年没有发生命案了。

　　而且是这样的恶性命案。

　　因此，钱塘县县令也非常重视。

　　除了排查本县失踪人口，还尽遣府中衙役，开始在附近仔细搜寻。

　　连着两天，搜索范围扩大再扩大，搜寻人员增加再增加，却再也没有找到另外的尸块。

　　事情似乎在朝着越来越诡异的方向狂奔。

　　失踪人口倒是很快就被排查了出来，乃是城西萍水街王书生家的娘子。

　　旬日之前，他家娘子回城外李家庄的娘家省亲，就一直没有回来。

　　王书生是个迂人，久不见自家娘子回来，却也不肯往丈人家走上一趟，就闷在家里唉声叹气。

　　直到把娘子临走前烙好的饼啃完了，才趑趄不前的往李家庄走了一趟，却被告知娘子数天前就已经还了家。

　　这下可就慌了神，踉踉跄跄的前去报官，正好与前来排查人口的公差撞了个正着。

　　只是殓尸房里只有一条断臂，要认个尸都是不能。

　　不过这些事情，都不是现在的许仙需要关心的事情。

　　这两天他都躲在家里安抚自己受伤的心灵。

　　药店还没开张几天，就似乎要开到头了，以后再也不敢下河挖藕了，即便是挖来了，估计也没人会来自家药铺买藕粉了！

　　这个凶手，不但坏，而且蠢。

　　这正是挖藕的季节，埋那淤泥中，不得早晚会被人挖到？

　　“汉文呀，你下午去趟卢员外府上，给人家赔个不是。”

　　许娇容拎着两包藕粉，往许仙怀里一塞，让他去卢员外家登个门道个歉。

　　前日那个被打晕的小娘子，乃是浅水街街口卢府卢员外家的独女。

　　虽说这随手一甩，纯属意外，但终究是让人家小娘子受了惊吓。

　　登门赔个不是也在情理之中。

　　“姐，咱们不能拿着藕粉去道歉。”

　　这不是存心要勾起人家的伤心往事嘛。

　　“不要紧的，县衙的仵作说这尸首应该是前两天刚刚埋下去的。”

　　姐姐的逻辑没有丝毫问题，这些藕粉是上个月挖出来的莲藕做的，没沾过晦气。

　　再说了，这藕粉一时半会恐怕也卖不掉了。

　　许仙也没再说话，这月余来也攒下了几个私房钱，等下出门买包桂花糕过去就是。

　　一脚刚刚踏出院门，姐姐的八度高音又从身后传来。

　　“回来别忘了再去灵隐寺烧个香！”',10054,10162);

insert into ds_book values(null,10163,'“张扬，我明天就要飞新加坡了。”一个空灵的声音在电话那头响起。

　　“嗯，我知道，全球巡演第一站嘛，我已经买好票准备去新加坡给你加油。不过，我的航班会稍微晚一点。”张扬微笑道。

　　“面试通过了吗？”空灵的声音又道。

　　“虽然正式通知还没下来，但应该没问题。”

　　“嗯，太好了。”

　　“呃，我去新加坡给你加完油，然后再回国，应该不耽误正式上...”

　　“我们分手吧。”那空灵的声音突然打断张扬的话。

　　张扬：...

　　“我累了，你也累了吧。明明已经快要撑不下去，为什么还非要这么逞强？张扬，你和我心里其实都明白的。我们没有未来，不会有结果。我们分居两地，一年也见不了几次面。我们两家是死对头，我父母也好，你父母也好，都不会认可我们。我们瞒着大家交往这么多年...我，我真的累了。”那个空灵的声音略显疲惫道。78中文首发 https://www.78zw.com https://m.78zw.com

　　“这是你认真思考后的决定吗？”张扬已经尽量在控制情绪了，但他的声音还是有些颤抖。

　　“是的。”

　　张扬没有说话。

　　“对不起，你一定能找到真正属于你的女人。”

　　说完，手机里就传来‘嘟嘟’的忙音。

　　对方把电话挂掉了。

　　张扬躺在床上，手臂遮住他的眼睛，心口有点疼。

　　他其实早就有心理准备的。

　　但这一刻真的到来的时候，他发现，心，还是会痛，很痛。

　　在张扬出租屋的墙壁上贴满了海报，海报上是一个相貌倾城、长发披肩、气质宛如仙女一般的女明星。

　　她叫苏沫沫，今年23岁，她出道于七年前的歌舞选秀大赛。当年，十六岁的她以温柔忧郁的形象和深情空灵的歌声一举夺得冠军。之后，星光大道完全为这个被这个年轻女孩敞开。
','　　第二年，一曲《属于你的我的初恋》以忧伤的音律演奏出的空灵之感火爆整个亚洲，几乎无法复制的TV销量让其迅速成为炙手可热的超级新星。这首苏沫沫的成名曲几乎囊括了当年所有的音乐大奖，风靡一时。

　　此后苏沫沫又相继创作出了《青春的歌》、《秘密交往》、《遗落人间》等流行歌曲，虽然火爆度不及她的成名曲《属于你的我的初恋》，但也都打入了销售排行榜。

　　无论现实中，还是音乐中，苏沫沫给人的感觉就是那种遗落在人间的天使那般，神圣不可亵渎。

　　苏沫沫的负面消息极少，甚至出道七年间几乎没有绯闻传出。

　　这在浮华的娱乐圈简直不敢想象。

　　这个炙手可热的大明星，就是张扬的秘密交往了七年的女朋友，不，准确点说是前女友。

　　无论是成名曲《属于你的我的初恋》，还是后来的《秘密交往》其实都是在说他们两个交往的事情，只不过并没有人知道。

　　只是，在这个交往七年后的这个夏天，一切都结束了。

　　张扬趴在床上，回忆起这七年的点点滴滴，心口就像被撕裂了一般。

　　这时，手机短信铃音突然响了。

　　张扬一跃而起，拿起手机。

　　是一则招聘通知短信。

　　“张扬先生您好，首先非常感谢您来参加我们医院的面试，我们对您的情况非常满意，您也非常的优秀，但是跟我们目前招聘的职位略有偏差，非常遗憾的通知您，您没有通过我们的面试。不过我们会将您的简历存档，日后如果有合适的职位我们会提前跟您联系！再次感谢您对我们工作的支持！”

　　这可能是张扬最近收到的拒绝短信中最委婉的拒绝短信，但结果却是一样的，他被拒绝了。

　　东华市所有大一点的医院都投了简历，结果全部被拒绝了。

　　情场、职场双重失意对张扬打击不小。

　　他整个人看起来都有些浑浑噩噩的，想倒茶，却把茶水打翻在电脑桌上，然后自己手忙脚乱的想用纸巾擦桌子，却没有发现插座漏电。

　　张扬当场被电晕了过去。

　　等他醒来的时候，天已经黑了，打撒在电脑桌上的茶水都已经干了。

　　张扬从地上爬起来，先是检查了一下自己的身体，好像并无大碍。
','　　只是，总感觉哪里有点不对劲。

　　不过，想起跟苏沫沫分手的事，张扬的情绪再次低落下来，也就没心情研究哪里不对劲了。

　　“出去喝酒去吧。”

　　——78中文首发 www.78zw.com m.78zw.com

　　晚上九点。

　　在东华市东辉街，一个戴着大墨镜、留着齐耳短发的女人正急匆匆的行走着，在她身后跟着几个人。

　　在保持着相对距离行走了大约数百米后，这个墨镜女子终于忍无可忍了。

　　她直接摘掉大墨镜露出一张惊艳绝伦的脸蛋。

　　这女人年约二十二三岁，清雅淡然的脸型，吹弹可破的肌肤，无暇圣洁似要把你吃透的眼神，微微现出的小酒窝，美的惊人。

　　这个相貌跟当红大明星苏沫沫几乎一模一样！

　　“啊，果然是苏沫沫！”跟在她后面的一个男人惊呼道，脸上充满兴奋之色。

　　“我艹！”墨镜女怒道：“你们眼瞎吗？苏沫沫是长发，我苏安白是短发！再说了，你们没看新闻吗？苏沫沫今天下午就已经搭乘飞机去新加坡了。你们一群二b。”

　　“真的假的？苏沫沫真的已经去新加坡了？”一个男青年道。

　　另外一个典型宅相的眼镜男用手机查看了一下新闻道：“好像是真的。下午很多粉丝都跑到机场给苏沫沫送行去了。”

　　“那这么说，这个女人真的是苏沫沫的那个双胞胎姐姐苏安白？”

　　“应该是。”

　　“听说这个苏安白说话的声音倒还挺好听的，但一唱歌就跑调极其严重，杀伤力极强。真是搞不懂了，明明是双胞胎，相貌也几乎一样，为什么在歌唱方面差距这么大呢？”

　　“听说双胞胎就是这样，一个优秀，一个笨蛋。不仅如此，据我打探到的消息，虽然是双胞胎，但苏沫沫和苏安白的性格简直天差地别。苏沫沫，性格温柔就像天使。而她的双胞胎姐姐苏安白听说就是一个女汉子，暴力狂...”

　　砰砰砰！

　　话没说完，苏安白已经一拳一个，瞬间就把这几个人全打翻在地。

　　的确相当暴力。

　　打完之后，苏安白还是不解气：“气死老娘了。”

　　随后，苏安白抬头看着公交站牌上苏沫沫的广告海报，幽幽叹了口气。

　　“有个明星妹妹，还真是累啊。”

　　就在这时，突然有人揽住了她的蛮腰，酒气冲天道：“沫沫，你回...回来了啊。太...太好了。”

　　苏安白的脸瞬间黑成了碳。
',10055,10163);
insert into ds_book values(null,10164,'苏安白废话不说，直接双手抓住对方的手腕，一个漂亮的过肩摔将对方摔倒在地。

　　一套手法，行云流水。

　　碰！78中文首发 https://www.78zw.com https://m.78zw.com

　　手摸苏安白蛮腰的男子直接被摔在路边的地上。

　　正是张扬。

　　“这混蛋又趁机占了老娘便宜！从小到大，自己到底被这混蛋占了多少次便宜了？！”

　　苏安白好气。

　　她越想越气，又踹了张扬一脚，然后准备离开。

　　不过，走了几步，苏安白又停下了脚步。

　　她扭头看着躺在地上已经烂醉如泥的张扬，表情极为纠结。

　　最终，苏安白还是回了过去，然后将张扬背起离开了这里。78中文更新最快 电脑端:https://m.78zw.com/

　　——

　　龙园别墅园区，位于东华市的近郊地带，是东华市三大富人区之一。

　　小区一共有六十八栋独栋别墅，每栋别墅的市场价格都在五千万左右。

　　此刻，在三十八栋别墅的院子里，院子里的庭光亮着，灯光下的长椅上坐着一个年约二十五六岁的女人。

　　一张精致脸颊，散发着成熟和醇香，微卷栗色长发盘在脑后。

　　典型的御姐相貌和气质。

　　她带着眼镜，手里拿着一个小本子，翘着二郎腿，女王气场十足。

　　这时，别墅门铃响了。

　　御姐起身来到别墅的栅栏门口。

　　门口站着苏安白，背上背着张扬。

　　眼镜御姐抬头看了张扬一眼，然后道：“换口味了？这小子不像是你喜欢的类型啊。”

　　“喔，蓝姐，你能看出来他不是我喜欢的类型啊？”

　　眼镜御姐面无表情：“毕竟，你很浅显易懂。”

　　苏安白：“我怎么觉得，你这是在嘲讽我呢？”

　　“没有。”

　　“算了。”苏安白顿了顿，又道：“你先把门打开，让我进去。”

　　“那可不行，我们公寓有规定，禁止带男性回来过夜。”

　　“纳尼！你说什么？”苏安白一脸黑线道：“我跟你讲，就我背的这家伙是我苏某白平生最讨厌的家伙，所以你不要乱想！我觉得这是对我的羞辱！”

　　没错。

　　虽然张扬和苏沫沫秘密交往了七年，但他跟苏沫沫的双胞胎姐姐苏安白，关系真的相当差劲，俩人完美继承了祖辈们的恩怨，就差‘情仇’了。

　　“那你既然那么讨厌他，为什么还要把他带回来？”御姐又道。

　　“哎，我是回来的路上遇到这货的。他也不知道受了什么打击，喝的烂醉如泥，我又不知道他住哪，有什么朋友，我总不能眼睁睁看着他醉倒在大街上吧，多危险。你也知道，我这个人就是那种见到‘流浪小狗’就无法不管的人。所以就...”

　　苏安白顿了顿，又道：“喂，蔚蓝警官，你可是人民警察，你不会这么冷漠无情吧？”

　　御姐揉了揉头：“我是无所谓。可是，我们这里是合租公寓，都是住的女人。就算我无所谓，其他人呢？”
','　　她顿了顿，又道：“不过，现在是暑假，一号房的哈佛女博士出差去了，三号房的女大学生和四号房的女高中生都回家了。你们进来吧。”

　　说完，蔚蓝就把别墅大门打开了。

　　苏安白随后把张扬背了进了六号房里，这是一间闲置的客房。

　　她直接把张扬丢到六号房的床上。

　　没错，就是丢。

　　举动相当粗鲁。

　　“安白，你这样粗鲁是找不到男朋友的。”蔚蓝依靠在门上，嘴里噙着一支烟道。

　　“对这家伙完全不用客气！”苏安白道。

　　“唔...”蔚蓝看了床上的张扬一眼，然后咧嘴一笑：“安白，你们俩到底什么关系？”

　　苏安白翻了翻白眼：“反正不是你想的那种关系！”

　　她顿了顿，又淡淡道：“我们是邻居，虽然同年同月同日生，虽然是青梅竹马，但我跟这家伙从小就合不来，所谓的青梅冤家吧。”

　　随后，苏安白又想起什么，粉拳一握，气呼呼道：“蓝姐姐，我跟你讲，张扬这家伙超卑鄙的。我长这么大没谈过恋爱全都是这货的错！”

　　“喔。”蔚蓝眼前一亮：“说来听听。”

　　“就是...”苏安白的话语戛然而止，随后轻哼了声：“切，差点上当，我才不会把自己悲惨的过去告诉你呢。总而言之，我对这家伙恨之入骨！”

　　苏安白顿了顿，又道：“行了，行了。我们出去吧。”

　　说完，苏安白就拉着蔚蓝离开了六号房。

　　——

　　当张扬醒来的时候已经是后半夜了。

　　他的头依然很沉，身体也不是很听使唤。

　　“喝太多了...嗯？这里是？”

　　张扬下了床，然后来到窗口。

　　窗外，月朗星稀，虫鸣蛙叫，一片宁静祥和。

　　“听说新加坡这两天有雨，不知道会不会影响沫沫的演唱会。明明是男朋友却不能在她身边支持...”

　　张扬突然想起什么，脸上拂过一抹淡淡的悲伤。

　　“我差点忘了，我们已经分手了。七年之痒终究还是没有熬过去啊。”

　　想到这里，又是悲由心生。

　　他退回到床上，随手拿起手机。

　　有一条未读微信。

　　张扬一个激灵坐起来，立刻点开微信。

　　然而，并不是苏沫沫发来的微信，而是班长在大学班级群里的@全群。

　　内容是这个周末举办班级毕业聚会。

　　还特意在群里单@了张扬。

　　张扬趴在床上，一点精神都没有。

　　他不知道怎么去参加毕业聚会。

　　班里的同学好像基本上都已经拿到了offer，除了张扬。
','　　“妈蛋，班长那混蛋肯定是故意的。真是莫名其妙，我又没招惹他，怎么感觉他总是跟我过不去？”

　　这时，张扬的肚子里突然翻江倒海起来。

　　想拉肚子。

　　他捂着肚子冲出了房门，然后直奔一楼而去。

　　他并没有来过这里。

　　但刚才在楼上，他就大概判断出，这应该是一个两层独栋别墅。

　　一般来说，这种别墅，一楼都会有卫生间或者洗浴间。

　　张扬捂着嘴，一路狂奔到了楼下。

　　在楼下拐角处的一个房间写着‘卫生间’三个字，不过里面有灯光，还能隐约看到里面有人影。

　　显然，卫生间里有人。

　　张扬只好暂时忍着。

　　可忍了好半天，里面的人还没出来，张扬只好走上前敲了敲门：“那个，请问里面有人吗？”

　　没人回答张扬。

　　张扬渐渐感觉有点不对劲，又敲了敲门：“你好，里面有人吗？”

　　但还是没有人回答。

　　但张扬之前明明看到里面有人影的。

　　一丝不安感冲上心头。

　　“那个，冒昧打扰了，我现在要开门了。”张扬道。

　　他特意停顿了一下，但里面还是没有任何声音。

　　张扬不再犹豫，直接踹开了卫生间的门冲了进来。',10055,10164);
insert into ds_book values(null,10165,'这是一个卫生间带淋浴间的通体设计。

　　卫生间里酒气冲天，一个身材妖孽的女人正躺在浴缸里，脸埋在水里面。

　　张扬瞬间就明白怎么回事了。

　　肯定是喝醉酒想泡澡，结果酒劲上来，晕倒在浴缸里。

　　酒后泡澡是非常危险的。这是最基础的医学常识。

　　喝酒後，人体内储存的葡萄糖会在洗澡时被消耗掉。因而，血糖含量大幅度下降，体温急剧下降。同时，酒精会抑制肝脏的正常活动，阻碍体内葡萄糖存量的恢复。所以，喝酒後马上洗澡有损健康，甚至会危及生命。

　　这只是其一。

　　其二，酒后泡澡有一个非常大的潜在危险，那就是溺水！

　　就像现在张扬看到的这个女人一样。

　　这时，楼梯上传来急促的脚步声。

　　“怎么回事？”苏安白的声音。

　　张扬扭头一看，表情惊讶：“苏安白，你怎么在这里？”

　　苏安白赶紧跑过去，用身体挡在蔚蓝赤果的身体前，瞪了张扬一眼，道：“我还想问你呢！你这混蛋，你，你对蓝姐做了什么？我跟你讲，你完蛋了，她可是警察！”

　　张扬翻了翻白眼，他随后眉头微皱：“起来，让我看看。”78中文首发 www.78zw.com m.78zw.com

　　“张扬，你胆子太大了！”

　　“她溺水了。”张扬无奈道。

　　苏安白吓了一跳。

　　她把手放到蔚蓝的鼻孔下面，瞬间脸色苍白。

　　“没，没呼吸了！”

　　“起来，我来看看。”张扬道：“我是医生。”

　　“哦。”苏安白这才起身。

　　张扬随即走过去，他没有去看蔚蓝妖孽的身材。

　　他简单给蔚蓝检查一下，随即道：“我要做人工呼吸，苏安白，你往后退一点。”

　　“什么？喂喂，张扬，蓝姐可是有男朋友的！”

　　“要不，你来？”

　　“我，我不会。”

　　张扬翻了翻白眼，没再说话。

　　他双手放在蔚蓝的心部进行体外心脏按压，打通气道后，立刻用手捏住蔚蓝的鼻翼，用嘴巴包绕住蔚蓝嘴，连续吹气两次。然后，再去做体外心脏按压。如此反复交替进行。

　　大约一分钟后，蔚蓝身子一挺，突然哇的一声吐了张扬一身。

　　张扬瞅着湿了一大片的前胸衣服，嘴角扯了扯。

　　“我为毛要遭这种罪啊。到底什么情况啊？我在哪？苏安白这女人怎么在这里？”张扬满脑子都是疑问。

　　虽然，他跟苏沫沫秘密交往了七年，但他跟苏沫沫的双胞胎姐姐苏安白的关系真的...相当之差。

　　不过，很显然，现在也并不是询问这个的时候。

　　他收拾下情绪，然后淡淡道：“把你朋友搀扶到房间里去吧，我要洗个澡。”

　　“哦。”
','　　苏安白随后搀扶着蔚蓝回到了二号房。

　　而张扬则脱掉衣服，先上个厕所，然后把衣服上的脏污清洗一下，接着又洗了个澡。

　　只是湿漉漉的衣服让张扬颇为蛋疼。

　　“啊啊，要等什么时候衣服才能干啊？嗯？”

　　这时，张扬突然愣住了。

　　他脑海里像是涌出了什么信息流。

　　足足十分钟，他都没有任何反应。

　　十分钟后，张扬表情露出一丝狐疑，然后看着眼前的湿衣服，集中精力，内心默念：“回到一个小时前。”

　　然后，令人震惊的事情发生了，他的湿衣服瞬间干了。

　　因为一个小时前，他的衣服还没有被蔚蓝吐上，也没有被洗，就是有点脏灰，那是被苏安白在大街上过肩摔沾上的脏灰。

　　他的衣服真的回到一个小时前的状态了。

　　“哇。这个是触电后得到的能力？”

　　之前在出租屋被电晕后醒来时，张扬就感觉身体哪里有点不对劲。

　　但当时，他因为刚失恋心情低落也没有仔细研究。

　　此刻，张扬整个人都亢奋了起来。

　　按照他脑海里涌出来的信息，他能将生命物体最多退回到24小时前，也就是一天前的状态；

　　而非生命物体，最多可以退回到一年之前！

　　这可不得了。

　　别的应用领域，张扬暂时没有多想。

　　但站在他一个医科大学生的角度看，这个能力对专业成绩差、连工作都找不到的他而言简直福音外挂。

　　因为他可以利用这个能力处理紧急医疗事故，譬如车祸、运动受伤等。

　　将病人的受伤的身体退回没有受伤之前的健康状态，这也是一种治愈啊！

　　就譬如，上赛季NBA巨型杜兰特跟腱断裂，需要至少一年的时间康复，还不一定能回到巅峰期。

　　但张扬可以轻松治愈杜兰特的伤病，只需要将他的跟腱恢复到受伤之前的时间点就可以了。

　　当然，这种行为比较招摇，可能会引来一些潜在的危机。

　　张扬很激动。

　　这时，有人敲门，外面响起苏安白的声音。

　　“喂，张扬，还活着不？”

　　“活蹦乱跳呢。”

　　“呵，现在占了女人便宜倒是活蹦乱跳，也不知道谁昨天晚上喝酒喝得跟死狗似的，如果不是老娘碰巧路过，大发慈悲将你带到我这里，你恐怕已经被男同捡尸，拖到胡同巷子里对你开‘花’了。”

　　张扬：...

　　他隐约想起了一些。

　　嘴角微抽。

　　“那个，谢了。”张扬开口道。

　　“不用客气，我遇到流浪的小狗也会把它带回家的。”
','　　张扬嘴角微抽：“苏安白，你单身这么多年，不是没有道理的。就你这女汉子的言行，我觉得你能找到男朋友，一定是奇迹。”

　　“滚！”苏安白大怒：“张扬，你怎么有脸说我？你自己不是一直在打光棍？”78中文首发 https://www.78zw.com https://m.78zw.com

　　“我...”张扬随后轻叹了口气：“好吧，你说的对。”

　　他的语气有些低落。

　　“哎，张扬，你昨天怎么了？喝那么多酒。有什么伤心事说出来让我开心开心。”苏安白又道。

　　“没什么。”张扬显然并不想多谈这个事情，转移话题道：“对了，刚才那位美女姐姐是怎么回事？大半夜的酒后泡澡很危险的。”

　　“这个，我也不是很清楚。不过，听说她和男朋友正在闹别扭。”苏安白道。

　　“哎，人世间情为何物，直教人生死相许啊。”张扬感慨道。

　　苏安白翻了翻白眼：“这话从一个打了二十三年的光棍嘴里说出来怎么感觉那么别扭呢？”

　　她顿了顿，又道：“对了，张扬，你医科五年制，今年毕业季吧。”

　　“嗯。”

　　“进了哪家医院？”

　　张扬微微苦笑：“说来惭愧，全部被拒绝了。”

　　苏安白：...

　　她摸着下巴，一脸沉思：“我老妈真是厉害，很多年前就已经预言过说，隔壁的张扬绝对不会有什么出息。”

　　张扬：...

　　“你呢？女汉子。”张扬没好气道。

　　“嘿嘿，我现在可是电台女主播哦。听说过《泡泡爱情广场》栏目吗？这可是我的专属栏目。”说到这里，苏安白赶紧补充道：“虽然只是周一到周五的上午档，不算什么黄金档，但这可是专门为我打造的节目。”

　　“电台节目主持人么？我记得这是你小时候的梦想啊。也算是实实现你的梦想了，恭喜了。”

　　门外的苏安白一阵沉默。

　　片刻后，苏安白才淡淡道：“你是不是也觉得，我是靠着沫沫的关系才拿到的这份工作？”

　　---

　　ps：新书嘛，就是一棵幼苗，需要大家的爱来浇灌。求收藏，求推荐票。小可乐拜谢。',10055,10165);

insert into ds_book values(null,10166,'“公子，公子~”陈曦模模糊糊的听到有人在自己的耳边唧唧歪歪。

    头好重，陈曦艰难的睁开眼睛，【早知道就不应该喝那么多酒……】

    时间过去了三天，陈曦总算是搞明白了现在的形式，广义的大三国时代，黄巾之乱刚刚被扑灭，一个英豪辈出的时代，也是以前陈曦自己闲得无聊就各种幻想的时代，毕竟不管是白马银枪赵子龙还是智慧化身诸葛孔明后世的粉黑都是无穷大，没办法中国人多，只能这么说。

    他现在的身份是颍川陈家一个支脉的支脉，算是有那么一点点关系，但差不多也就是翘家了都没有人会注意，家里也就一个照顾他的侍女还有一个老管家，属于那种一人吃饱全家不饿的典型。

    看着管家将一柄剑舞的水泼不进，陈曦实在不知道该用什么表情了，难道说这个时代的人都这么强悍，难道历史记载的是对的，古代人的素质完爆现代人十条街，可能吗？反正陈曦是不信的。

    “陈公子近日可好些了。”一个医者打扮的老头探头进来微笑着问道。

    “已经好了很多。”陈曦赶紧一礼，说实在的据他所知就这个时代一个头疼脑热都能要命，像他之前那么重的病，这位老丈能将他拉回来当真已是不易。

    “气色好了不少，陈公子还是多多修习一下内息。”老丈笑了笑说道，“既然如此我也不再久留。”

    “陈老伯。”陈曦回头叫道。
','    管家快速的牵着一匹跑了过来，那速度快的简直不可思议。

    “老丈，曦见您如此急迫想要离开，想必是有急事，此马赠与老丈，作为代步之物，还请不要嫌弃。”陈曦将缰绳硬塞到对方的手中，说来这么久他也不知道对方的名字，对方也不提及自己的名字。

    老头看了看陈曦，略一思考便点头收下了谢礼，他确实有一些急事，有一匹马能省事很多。

    【呼，毕竟是救命之恩，能回报先回报，医者父母心是医者的事，还不还是我的事，马上就是乱世降临了，要是老丈出了意外，以后想回报也没办法回报了。】

    老头离开之后，陈曦将门一关，准备回里屋，对于他来说没有什么比回屋学习这个时期的文字更重要了，虽说有以前陈曦的记忆，但是很明显不算太完整。

    “少爷，那匹马可是老爷在的时候从并州带回来送给少爷的礼物，这样送了别人不好吧。”陈管家在陈曦将门关了之后才开口说道。

    “没什么的，我也用不上那一匹马。对了，给我将书房里面的书全部拿到我的房间，我要重新温习一下。”陈曦摇了摇头说道，他也知道那匹马的宝贵，不过比之救命之恩，他觉得还是值得的，至少心里过的去。

    陈曦的家里并不贫穷，相反还是一个富贵之家，不过后来他父亲陈洛去世之后，陈曦一病不起，吃药治病花了太多的家财，再加上家族内部的排挤，原本一个大富之家，到现在已经落魄了。

    不过对于陈管家来说，只要陈曦病好了，这个陈家就还有崛起的希望，当初因为陈曦一病不起绝大多数的仆人和歌姬都离开了，到现在一个偌大的陈家就剩下了陈管家和歌姬兼职侍女的陈兰。

    对于这种事情陈曦看得很开，离开就离开吧，留下的两个最忠心也算是好事。
','    陈曦自从身体好了之后，整整三个月没有出过陈家的大门，这么长时间他已经将曾经陈曦所学的东西全部掌握了，比方说文字，比方说琴棋书画。当然其中最重要的便是精神力和阵法。

    在温习完这些东西之后，陈曦便已经明白了，这个东汉末年完全不同于自己记忆中的东汉末年了，也许历史会是相同的，但是世界已经完全不同了。

    翻阅着楚汉时代的历史，陈曦默默地记下了一段话，垓下之围，项羽孤身而出，以一人之力击溃刘邦三万精锐，力竭而死，原本可以逃的项羽，宁可战死也不愿意让江东子弟失望，不败的霸王，就算是死了也无人敢近。

    陈曦仔仔细细的查阅了所有的史料，最后确定了一点，那就是历史在四百年前楚汉相争的那个时代便已经发生了变化。

    初一开始的变化来自于一颗陨石，也就是史料上记载的神石，一个落到了中原大地上的神石，一个改变了中原人体质的神石。

    原本能修炼出气强化自身的人，春秋战国七百年寥寥无几，原本能淬练出精神力让天地发生共鸣的人，更是寥寥无几，而那一块石头，让整个中原大地发生了异变，所有人的体质产生了翻天覆地的变化。

    气几乎只要是人就能修炼出了，淬炼精神力的难度也变得大大减少，这也就导致了，楚汉时期武将的实力越发的强大，而项羽恰恰是其中最顶尖的存在。

    力拔山兮气盖世，若是放在原本的历史上像是夸张的话，那么在这个世界则就是当之无愧，巅峰时期的项羽能靠着自己的力量将一座小山拽出来，然后丢出去，能将空气打成液态，凝实的空气能像小导弹一样将地上打一个坑，简而言之那已经不是人类了。

    而随后的汉室四百年，各个武修的流派便出现了，原本在楚汉时期靠着天赋吃饭的武将，逐渐的系统的整理出了一条修炼的道路，以一斩千不再是神话，而是切实存在的现实。

    同样，精神力淬炼也出现了各自的流派，所谓的秘传法术，道术也出现了，同样随着发展也出现了对于那些顶级武将的克制，阵法的出现，让那些顶级武将的斩杀能力大幅度衰竭，当然若是散兵游勇的话那就只有死路一条了。

    四百年的发展，气与精神力可以说是已经普及了，虽说大多数人掌握的都不是什么好东西，但是毕竟都是有资格接触这些东西了，也就是说这个世界的汉末有着各种能将数百斤巨石撇出十几米的农夫……

    至于武将有多强，上面有明确记载的项羽能将山拔出来然后丢出去，那么按照同比例估计，陈曦觉得吕布全力一击能将山打成碎石吧……

    这已经不是历史上的三国时代了，这大概是神话版的三国时代了吧，陈曦默默地想到。',10056,10166);
insert into ds_book values(null,10167,'……

    三个月的修习陈曦也差不多明白了这个世界的诡异，同样也明白了精神力的妙用，不是说精神力强就能如何如何，说真的就陈曦现在从历史上了解到的情况看来，强大的精神力除了防御较好以外，其他方面就算是能和天地引起共鸣实际上也不具备太大的杀伤力。

    想要用雷劈死对面的话，你还是不要想了，做不到啊做不到。虽说战斗力方面一般般，但是不可否认精神力对于思维的加强，可以说精神力越强，思考速度也就越快，思维也就越敏捷，原本一个小时才能弄明白的东西，十分钟就弄明白了，这其中的差距可是很大的。

    如果说是气的存在让武者的战斗力大幅度上升，那么精神力的存在则可以说是让智者的思维大幅度上扬，智与力孰轻孰重很难分辨，但是这两种不同的发展方向则决定了以后每一个人的所走的路。

    当然不可否认有人想要同时修炼气和精神力，在加强自身武力的同时提高自己的思维，不过一般这么做的人都只有死路一条，不可否认天底下确实有兼修两者并且有所成就的人存在，但是想要登顶的话可以说是难之又难了，至少就陈曦现在所了解得历史而言，没有。

    了解到这一些之后，陈曦果断的放弃了自己身体方面的修炼，气什么的以前的陈曦也修炼出来了，不过很少很少，但是由于家学的问题，功法毕竟还是不错的。

    现在陈曦缓过来之后，靠着那么一点气丢丢大石头什么的还是可以做到的，也就是说要是努力锻炼，在战场上厮杀几次，混一个百夫长大概还是有可能的，至于更进一步估计是不大可能了。

    至于说像达到项羽那种凌空虚渡的程度想都不要想了，那绝对不是人类的高度，估摸着按照演义版三国对于武将的记载，撑死那二十四个能达到，至于吕布什么的，陈曦想想都觉得非常带感，简直就是人形弹头！

    既然以前的陈曦是兼修，也就是说精神力也修炼了一些，不过和气差不多都是很弱很弱，估计防御一下没有修炼出气的小孩子的弓箭都有些难度吧……

    好在，两人融合可能刺激了陈曦的大脑，导致这三个月下来陈曦的精神力不断地增长，同样这也算是陈曦比较嘚瑟的一点，毕竟按照他现在的精神力强度，靠着那些什么秘术道法，已经可以做到起起雾，下下雨，防一防弓箭了，按照上面的说法也算是登堂入室了。
','    按照陈曦自己的说法，他现在处于神经病人思维广的程度，思考能力大幅度增长，学习能力不断上升，想当初要是有这记忆力，有这思考速度，早就混到中科院去了，陈曦自己都感觉到自己进化了。

    “啪！”将书简撇在书桌上，陈曦终于看完了自己家里所有的书，重要的基本都背过了，不重要的也有一个大概的印象，精神力的增长也慢了下来，现在的他可以说是一个地地道道的东汉人。

    “公子，您不修习一下精神力吗？”陈兰看着坐在树下百无聊赖的陈曦问道。

    “修无可修了。”陈曦苦笑道，他也是最近才知道，精神力达到他这种层次之后就没有教材可以模仿了，剩下的便是自己的感悟，也许一瞬间发生蜕变，也许一生也就这样了，不过就算是蜕变也只是让精神力变得更纯净，更不容易受到杂念的干扰，也更容易使用。

    “修无可修？”陈兰不解的问道，她并不明白这是什么概念。

    “起风了，我们回去吧，天要下雨了。”陈曦并没有解释，而是转移了一个话题，天又下雨了，他已经完全掌握这个所谓的秘术，加上后世对于雨形成的了解，他使出来比书上说的更容易，范围也更大，消耗也更小。

    “起风了？”陈兰看抬头看了看太阳，还没有辩解，天就阴了。

    陈曦笑了笑将自己这个唯一的侍女拉回了住屋，自己整整一早上的杰作就是这场雨了，覆盖了数十里吧，而且天空中水汽充分下的时间大概会很长，也会很大，估计没有人会猜到这是人为的法术，毕竟陈曦在这其中只是扮演了一个引子的作用。

    “好大的雨啊！”陈兰惊奇的说道。

    “是啊，好大的雨。”陈曦甚是感叹，他已经彻底掌握了书上记载的那几个法术，至于阵法他到现在没弄明白原理，还有所谓的秘术，他是一个都没有。
','    说来陈曦对于秘术挺眼馋的，毕竟在这个世界张角就是靠着黄巾秘术才将数十万无组织无纪律的黄巾打造成了战无不胜的黄巾力士，最后输了的原因也是因为张角挂了，否则的话，谁输谁赢还真是两说。

    据陈曦了解到的情况，张角有一种秘术可以大幅度激发一个人的战斗力，而且一次就能给几千人上buff，然后几千不怕死的黄巾力士，足够将大汉朝所谓的精锐打成狗，足以见这一招的恐怖，要是作为底牌，必要的时候绝对是翻盘的不二神器。

    至于阵法什么的陈曦并不算了解，毕竟到现在他也没有听人说谁谁谁部了一个大阵将对面的优势兵力打成狗什么的事情，不过他在书上也见到过上面有说过，真正的阵法，威力足可以逆转战局形势，不过没见过就是没有见过，陈曦只能表示等自己遇到的时候再说吧。

    至于能不能遇到愿意教自己的人，陈曦也不敢保证，这个时代很多东西都只传给入室弟子，散户什么的只能看脸了，毕竟人家总结出来也不算容易，不传给你也是应该的，不过对于现在的陈曦来说，那些都太遥远了，他要做的是等！等一件事发生。

    黄巾之乱过去了，接下来就是董卓入洛阳，之后就是十八路诸侯讨董，而在这之前有一件事，那就是讨董檄文，这个檄文到底是曹操刺董之后带出来的，还是曹操的矫诏，这中间可是有很大的区别。

    虽说同为矫诏，但是中间的说道大了去了，可以说几乎决定了之后很多的事情。',10056,10167);
insert into ds_book values(null,10168,' 居然还真有人收藏……

    陈曦看着一脸讶然的陈兰，耸了耸肩，他没有什么门户之见，至于自己修习的精神力粹取的方法教给陈兰也没有什么好说的，用他的说法，闲着也是闲着，就当消磨时间了，该学的学了，教导一下别人，也就当做温故而知新了。

    “多谢公子。”陈兰眉目之间出现了一丝跃跃欲试的神情。

    之后的几个月陈兰就跟着陈曦学习，除了精神力的粹取，更多的是看，认认字，一个愿意学，一个愿意教，学的又简单单一，陈兰很快就入门了，至少现在大略的已经能自己看了。

    看着墙上的通缉令，陈曦叹了一口气，时机到了。

    【从某一种时空观点来说这并不是没有可能，不过不管是哪一种观点，至少我现在已经有了自己的资本。】陈曦看了一下通缉令上的曹孟德，心中默默地想到。

    “走了，陈老伯，去繁家。”陈曦对着自己身后的管家说道。

    此话一出，陈管家面色一沉，但是还是点了点头，陈曦现在身体已经恢复了，原本没落的陈家再一次有了希望，那么和繁家的婚事也该说道说道了。

    婚事这件事，陈曦也知道，很小很小的时候订的婚，后来陈曦的父亲去世的时候，繁家还来人了，打算赶紧将繁家二小姐嫁给陈曦，以延续陈家的香火，不过被陈曦以守孝推掉了。

    不过后来陈曦一病不起，繁家来的就慢了，到现在已经很久很久没来了，不过陈曦也很清楚，繁家在陈曦身体好的时候愿意守诺很正常，但是陈曦的身体要是一日不如一日，大概繁家也不愿意将自己的女儿推入火坑。
','    站在繁家的角度想的话，繁家对于陈曦也算是仁至义尽，并没有因为陈家家道中落就此退婚，而且在陈家初一出事的时候更是打算完成当初的诺言，至于后来陈曦一病不起，繁家不来，也怕是将自家女儿推入火坑。

    但这对于陈管家来说简直就是不可饶恕，既然已经订下了婚事，虽说没有三媒六聘，可当初两家老爷子都说好了，让陈曦在十六岁的时候娶小他两岁的繁家二小姐——繁简，而现在老爷子驾鹤西去，少爷已经十七岁了，你们繁家居然改口不提此事，这算什么。

    “陈少爷！”繁家的仆人再见到陈曦的时候先是一愣，随后便是一礼，赶紧通报。

    “我是来找繁伯父的。”陈曦淡然的说道，按照他的估计，繁家基本不可能悔婚，陈曦病重的时候不提婚约这件事并不能说明什么，能在陈曦父亲去世之后提起婚约这件事，足以说明繁家的诚意。

    “陈少爷，里边请，老爷正在正厅等您。”很快繁家管家就跑了过来。

    “嗯。”陈曦点了点头，他现在头疼自己该怎么说，要是人家不愿意嫁给自己还好，可是现在这个情况很明显，繁家压根就不打算毁约。

    “曦儿，来来来，坐这里，伯父最近还一直顾忌你的身体，要是你有个三长两短，我可不好给陈家交代。”繁简的父亲坐在主位上，面上带着一抹喜意。

    之前陈曦守孝的时候，繁良打算让自己女儿过去，就是为了照顾一下陈曦，至于守孝，陈家要是断了后，守不守孝都没有价值了。

    可陈曦拒绝了繁良的打算，之后更是伤心欲绝，一病不起，繁良直接傻了，自己女儿的幸福重要还是兄弟之义重要，卡在中间繁良整个人都凌乱了，最后只能默默地关注这件事，至于女儿的婚事，也按照陈曦的说法押后三年。

    至于三年后，陈曦要还是病怏怏的，繁良也没什么好办法，那个时候只要陈曦开口，繁良也就只有忍着心痛嫁女了。
','    不过还好，半年前，繁良得到消息陈曦病好了，这对于他来说简直就是强心针，终于不用夹在中间受罪了。不过之前拖了又拖，繁良又有些不好意思再提，心道等着陈曦上门来提此事，最多到时候说好的嫁妆再给一倍，这事他做的的确有些不地道。

    “去，叫繁简那个丫头过来。”繁良对着管家招呼道。

    “伯父，不用叫简儿妹妹过来了，我是向您来辞行的，我打算去游历天下，之前一场重病，让我明白了很多事情，一个人要是连自己久居的地方都没有出去过那是多么的可悲，我希望我能出去看看。”陈曦恭敬地说道。

    繁良一愣，犹豫了一下开口说道，“曦儿，之前伯父的确做得有些不地道，但是你还是多加思考一下，这天下可不太平，你父去世之时将你托付给我，要是你有一个三长两短，我可没办法向你父亲交代。”

    “伯父大可放心，曦虽不才，但也略有自保之策。”说着精神微微一震。

    “唉，看来是阻你不得了。”繁良感叹的看着陈曦，眼中多了一抹欣慰，“不过你要走可以，可是必须将婚事订下，繁简那丫头已经不小了。”

    “……”陈曦微微的撇了撇嘴，心道，【给我，我都不敢下手好不，那家伙比我还小两岁好不，让我对十五岁的小妹妹下手，……】

    当然陈曦也知道，在汉代，十五岁的女生已经算是大龄剩女，貌似交的税还要翻倍，当然嫁了人就不用翻倍了……

    “那个伯父，我可以先将婚书写下，等我游学归来之后完婚如何。”陈曦无奈的说道，对于那个小时候一直跟在自己身后叫哥哥的小萝莉，陈曦很清楚自己是躲不过的，要是敢退婚，繁家绝对和陈曦势不两立，再话说结婚这种事对于陈曦来说好像也没有太大影响。

    好吧，这个时候的婚书也就是简简单单的生辰八字，交了这个基本上也就算是完事了，原本两人就是八字相合，现在只不过是陈曦自己写了一份罢了，按说也就是有了法律约束。

    办完一切之后，陈曦乘着马车开始朝着西方行进，传告天下的义士曹操现在正在招兵买马，很明显陈曦想混一下顺风车，毕竟这个时代还是军队安全一点，至于在这个历史上能不能遇到刘备，他就不太保证了。',10056,10168);
    
    insert into ds_book values(null,10169,'“假如老师以每秒十米的速度，追杀一头铁齿狼，后者以每秒九米的速度逃走，爆发潜力后，能达到十二米，但只能维持十二秒，我俩最初距离为五米，请问……”

    讲台上，白羽老师笑盈盈的环顾四周：“这头铁齿狼，肚皮是什么颜色？”

    眉毛一跳，角落里沈哲嘴角抽搐。

    肚皮颜色？

    不应该是……老师几秒钟能够抓住铁齿狼吗？

    一脸无奈，正觉得这道题无法回答时，就发现全班已经有十七、八同学举起手掌。

    学习委员崔霄站了起来。

    “报告老师，铁齿狼一共有五种，其中两种肚皮为灰色，一种白色，一种黑色，以及一种紫色。灰色的，为潮山狼种，速度快，力量强，出没如风，术师和真武二重强者，都不敢正面对抗，老师真武一重，遇上只能逃走，不可能追赶。自然不是！”

    “至于肚皮白色的，是巨狼物种，生活在荆棘山，也就是所谓的‘荆棘有狼，其腹为白’，体型硕大，防御极强，普通人全力进攻，都很难刺破皮毛，而且生性凶恶，遇到危险只会迎面而上，不会逃走。所以，也不是。”

    “现在就只剩下黑色、紫色的，速度差不多都为每秒九米左右，爆发也都能达到十二米，但……黑色的皮毛难看，肉带浓重的腥味，很难出售，紫色皮毛好看，肉也很好吃，市场有价无市……因此，我的答案是……这头狼，为紫色肚皮。”

    崔霄一脸自信。

    “正确！”

    微微中，白羽老师点了点头。

    “这样……也行？”

    眉毛再次一跳，沈哲嘴角抽搐。

    三天了。

    穿越到这个世界，整整三天，一直处于发懵状态。

    他本是地球上的一个患有间歇性强迫症的学渣，眼见马上高考，语、数、外三科加理综，却只考出不足三位数的成绩，不到三位数，他认了，平时学习不好，有此结果，意料之中！

    可是……四门加起来，居然有个0.5！

    啊啊啊！

    不是整数，让他根本没办法接受！

    郁闷之下，跑出去散心，谁知遭遇了车祸。

    车祸就车祸，竟然是辆满是泥泞，多天未洗的比亚迪……最关键的是，被撞的时候，没有丝毫准备，飞起来的姿势太丑，完全无法展示优美的身姿……

    下次有机会，一定要找宾利，在空中摆个帅气的pose……

    不过，已经没机会抱怨了。

    醒来……到了这里。

    本以为，是个修炼武功，不用学习的地方，可以凭借多年的逃课、罚站锻炼出来的强劲体魄、坚定意志，独领风骚，结果，想错了。

    这里不光用学习，而且个个都是学霸！

    无论多难的题，都能轻松解决，百分的试卷，拿不到九十分以上，恨不得立刻跳河……

    就像刚才这题，想要回答，不仅要对铁齿狼的种类了解清楚，还要对它们的力量、速度、秉性，甚至连老师的修为、经济市场，都要知道很多才行……
','    涵盖生物学、经济学、心理学、物理学、地理学、数学、语文……

    一个题，想这么多……心好累！

    至于被魂穿的家伙，也是个倒霉蛋，上学期各科平均九十六，全班、全校倒数第一，受到了学院、家族、老师、同学各方面带来的责难，甚至被暴揍了好几顿。

    最后通牒是，这学期还没有改善，打成重伤是轻的，甚至都可能会被打死。

    没办法，为了活命，开始发奋用功，谁知熬夜太多，再加上伤势未愈，成绩才刚起色，就突然猝死了！

    哎，努力学习只有死路一条……

    只是……死就死吧，孬好给我留点记忆，百分试卷，能考平均九十六，也算不错，这种成绩，前世都不敢想，谁知……啥都没有，脑中空空如也，这……学该怎么上？

    浑浑噩噩混了三天，每天都是这种变态的题目……和听天书没啥区别！

    换做前世，听不懂，早就爬桌子上睡觉或者逃学了，就在有这个打算的时候，亲眼看到一个同学，因为上课回答不出老师问题，被打的当场吐血，回家又被家人揍的面目全非……

    立刻打消了念头。

    前世睡觉，最多挨骂，这里睡觉，会死人的……

    听不懂要装懂，还要时不时点头，一脸的云淡风轻，稳如老狗，实际上，心中早就颤抖不已，生怕被点名……

    现在想想，以前不听课，还能活着回家，真是太幸福了。

    前世上课要钱，这里上课要命！

    每天胆战心惊，学渣做到这个份上，真不容易！

    心中胡思乱想，白羽老师的问题，继续响起：“还是刚才这个问题，老师需要多长时间，能将其击晕？”

    又十几个人举手。

    白羽老师环顾，点名道：“雪茹，你来回答！”

    “报告老师！”

    一个俏生生的身影站了起来，十七、八岁的模样，肤白如雪，看起来稚嫩，却已经展露了美人该有的底子。

    班花，凌雪茹。

    虽然前身没留下记忆，沈哲凭借身体的感应和技能也知道，是他之前暗恋的对象。

    “老师的佩剑，是学院派发，都有铸造坊统一锻造，长三尺三寸，老师身高一米七一，单臂展开，七十二公分，手臂加剑，长一米五二。通过刚才的推断，确定为紫缘铁齿狼，成年体长两米一，老师需要41秒追到跟前。”

    凌雪茹眼中充满了睿智的光芒：“想将其击昏，需要击中狼头上的【岿然穴】，最适合的剑招为【落沙寒雪】，这剑起手和进攻的位置，大概有17°的夹角，老师真武一重后期的实力，剑速加上重力，再加上双方都在前进，需要0.27秒才能击中。再结合狼皮的阻碍，以及剑的锐利程度，还要加上0.08秒的时间，刺到要害。”

    “紫缘狼受伤到昏迷，神经传递讯息还需要0.2秒，结合起来，就是41秒55，也就是说，老师需要这么长时间，才能将这头狼击晕！”

    “很好！”
','    白羽老师再次满意的点头。

    “……”沈哲捂着胸口。

    臂长、夹角、出手速度、修为、招数……

    一切都考虑在内。

    已知条件，啥都没说，竟然能推测出准确秒数，结果在一秒的百分之一之间……

    你们是认真的吗？

    就算是学霸，也不至于这么变态吧！

    他这种听到答案，都稀里糊涂，完全搞不明白，怎么得来的人，就算能够再坚持几天，估计最后依旧要被打死的……

    学霸的世界，学渣真的搞不懂！

    “下面，最后一个问题，也是最难的一个！”

    见两个问题这么快被回答出来，而且全部正确，白羽老师轻轻一笑，再次环顾：“将铁齿狼击昏后，我全力回校，需要大概多久？时间误差在五分钟以内都算对！”

    问题一出，教室立刻沉寂下来，刚才纷纷举手的学霸们，全都不再说话，一个个取出纸张低头计算。

    “这个……比刚才那两道难？”沈哲疑惑的看向同桌王庆。

    这位同桌，上学期平均分99，在班级排名中游以下，不过，比前身强上不少。

    为什么前两道，这么多人很快回答，这个没人敢举手？

    “难的太多了！”

    王庆疑惑的看了一眼，压低了声音：“首先，要判断这头铁齿狼在哪里被发现的，这要牵扯地理、地形，以及了解这种蛮兽的生活范围，误差不超过一公里！这样才能确定和学院的距离。其次，推算老师带着这头狼回来的速度，这个牵扯的更多了，要计算路上可能遇到的河流、山川之类带来的阻碍，要计算老师体内真气储量，能够持续的时间！”

    “中途需不需要休息、以及可能遇到意外、丛林树木的密度……计算量是之前的十倍以上，而且，错一点都不行。好了，不说了，我要快点算，不然被提问，回答不出，可能会被打死……”

    嘴角抽了一下，王庆继续拿起尺子、毛笔，不停计算。

    沈哲：“……”

    这样说的话，这道题，太难了，关键误差不能超过五分钟……谁能做得到？

    根本就不是人类能够完成的好不好？

    沈哲头皮炸开。

    看着其他同学奋笔疾书，不好太过突出，引人注目，他也拿出纸笔，随手画了个佩奇，揉揉眉心，正想听听有没有人将答案做出，就见老师笑盈盈的目光集中过来。

    “沈哲，你来回答！”

    “我？”

    眼睛瞪圆，沈哲懵了。

    自己连佩奇都画的不够圆润，尤其是两个眼睛，不一样大小，让拥有强迫症的他，满是尴尬。

    这点实力，回答这样高难度的问题……

    看样子，活不过第一章了……',10057,10169);
    insert into ds_book values(null,10170,'左右环顾，想要看看能不能从谁的演算纸上找到答案，就见全班的人，全部停下手中的笔，抬头看来。

        显然对于老师提问他，都感到奇怪。
    
        “我……”站起身来，沈哲手足无措。
    
        铁齿狼是什么物种、生活范围在哪、学院有多大、真武一重到底多强……对于隐藏的已知条件，一窍不通，别说计算时间了！
    
        看来一顿毒打免不了了……
    
        “对你，我不做太高要求，只要计算的误差在半天以内，都算对！”
    
        见他这副样子，白羽老师看过来：“不过，回答不出来，或者答案错误，就要接受惩罚，老规矩，挨我一掌……至于，能不能撑住，会不会受伤，就看你这个学期的学习情况了！”
    
        半天？
    
        就算规定在半个月以内，也算不出来啊！
    
        满是着急，沈哲悄悄向同桌王庆看去。
    
        就见他眼观鼻，鼻观心，一副事不关己，高高挂起的模样。
    
        平时“哥们”叫的亲热，关键时刻，一点提示都没有……果然，不靠谱！
    
        “前世好好学习就好了，题目能弄明白，也能和其他人一样计算，这样以来，或许……佩奇的眼睛能画的更圆一些……”
    
        知道无论如何回答，这顿揍肯定跑不掉了，沈哲心中叹息，正想直接光棍的承认，啥都不会，突然眼前一晕，脑中一个洪亮声音轰然而起。
    
        “三年高考，五年模拟！”
    
        “黄冈教学，与名师对话！”
    
        ……
    
        “难道是……天道图书馆？”
    
        双眼放光，沈哲激动不已。
    
        做为学渣，平常没事就是看小说，最喜欢的，是一位“横扫天涯”帅逼写的一本书，其中主人公最厉害的金手指，就是脑海中多出一个图书馆。
    
        自己该不会也一样吧！
    
        要是这样，什么难题，什么不懂……都是浮云！
    
        集中精神，向脑海看去，并未发现巨大的图书馆，而是多出了一本老旧的笔记本，装订处磨损的厉害，和奏折一样，仿佛随时都能扯开，变成一个长长的画卷。
    
        嘴角一抽。
    
        别人给数以亿万的书籍，只给自己一本，同样是穿越众，差别为啥这么大呢？
    
        满是疑惑，将笔记本拿在手心，轻轻翻开，立刻看到了上面，满满写了一页的大字。
    
        富强，民主，文明，和谐，自由，平等，公正，法治，爱国，敬业，诚信，友善……
    
        妥妥的正能量。
    
        看上一眼，灵魂就受到洗礼，散发出圣洁的光芒。
    
        “这是我的课堂笔记？”
    
        沈哲发呆。
    
        他认了出来，这本残破的笔记本，不是别的，正是他中学六年，使用的课堂笔记！
    
        之所以只用一本，不是节省，而是……因为根本没记什么东西！
    
        这么多年，除了无聊写的一些符号、名称之类，几乎啥都没有。
    
        别人用课堂笔记，是学习的，他是用来打发时间的……毕竟一节课四十五分钟，一直睡一个姿势，很累的。
    
        “我当时是带着这本笔记出门的，怎么……进入我脑海了？”
    
        想起出车祸的瞬间。
    
        当时纠结四门加起来的成绩，不够整数，出门的时候，拿的似乎就是这本课堂笔记，人被撞飞的时候，鲜血洒到了书本上……
    
        难道因为这样，跟自己一起穿越了，而且伴随灵魂，进入了脑海？
    
        满是不解，却也知道，现在不是纠结的时候，急忙向第二页翻去。
    ','        第一页，是他抄录的社会主义核心价值观，当成座右铭的。第二页才是真正的笔记，虽不知道脑海多出这东西的用途，但既然此刻出现，或许能对现在的情况，有所帮助。
    
        翻了一下，沈哲皱眉。
    
        空空如也，一个字都没有。
    
        继续向里面翻，却发现，后面的书页，像是被胶水粘住了般，无论如何都打不开。
    
        “怎么个情况？”
    
        又翻了一下，依旧翻不开，搞不清楚怎么回事，沈哲发懵。
    
        给了金手指，没给说明书……
    
        不带这么玩的……
    
        正在疑惑，突然发现，书籍的旁边，平放着一根铅笔。
    
        笔很细，没什么特色，仔细看去，上面歪斜的雕刻着两个小字“好人”。
    
        沈哲抓头。
    
        给个图书馆，能弄清楚怎么回事，一本残破的课堂笔记，一根铅笔……搞什么？
    
        “还没计算出来吗？再说不出答案，就判定你回答不出来了……”
    
        正满是纠结，不知道到底怎么回事的时候，白羽老师淡淡的声音再次在耳边响起，眼前一花，这才发现，依旧站在教室里，全班同学，依旧齐刷刷的看着自己。
    
        刚才的一幕，全部在精神世界发生，外界的人，丝毫都没察觉。
    
        “我……”
    
        知道回答不出来，肯定要挨揍，沈哲咬了咬牙，正打算胡乱说一个，就见班花兼班长的凌雪茹悄悄竖起来四根手指。
    
        松了口气，沈哲眼中满是感激，一脸正色，道：“四个时辰……”
    
        “哈哈！”
    
        满堂哄笑。
    
        所有人都像是看笑话一样的看过来，凌雪茹面皮一抽，捂住额头，嘴巴一张一合：“我说的是……四天！”
    
        她也计算不出准确时间，但能确定范围，在四天左右，老师给与了半天的范围，只要说出来，应该算不会差太多……
    
        可这家伙……竟然说成四个时辰！
    
        十二倍的差距……
    
        这么短时间，还用给你半天的误差吗？
    
        她虽郁闷，却不敢说出声。
    
        “你觉得我四个时辰，能够带着昏迷的铁齿狼，翻越荆棘山，回到学院？”再没了刚才笑盈盈的模样，白羽老师皱眉：“这是你计算的结果？”
    
        “是……”没听到对方的话语，沈哲还以为领会了意思，一脸自信的点头。
    
        事到如今，不管对错，只能咬牙承认……要是不承认，可能当场就被打趴下。
    
        当学渣时间久了，有自己的心得。
    
        作业、试卷，空的地方必须填，必须做，至于对不对，管不了这么多，反正我做了，只是不会做，做错了而已，不然，就是态度不端正，肯定要找家长的。
    
        再说，拥有强迫症的他，看着卷面空着，很难受，就算胡写，肯定也要填满。
    
        “你确定？”
    
        白羽老师脸色越来越冷。
    
        “呃……”沈哲一拍额头，刚才别人回答，都有零有整的，甚至精确到百分之一秒，这样才能显示出，做题做的十分用心，不是胡编乱造。
    
        自己一个要求完美的人，怎么可能只说了整数，就结束了？
    
        想到这，沉吟了一下：“四个时辰，四十四分，四十四秒四四！”
    
        有零有整，不仅看起来计算精确，还丝毫不乱，十分工整，完美！
    
        咔！
    
        气的体内真气滚动，差点炸开，白羽老师掌心的粉笔被捏成两半。
    ','        错的如此离谱，竟然还一脸自信，如释重负，十分开心的模样……
    
        几天没收拾，胆子变肥了？
    
        “你可知，铁齿狼居住的地方，距离这里有多远？”
    
        恨铁不成钢，露出失望之色，不待对方回答，白羽老师接着道：“距离这里最近的紫缘铁齿狼群，直线距离不算太远，但要隔着荆棘山，从最近的道路赶过来，需要绕过三座山脉，一条河流，即便我用尽全力，也需要四天左右……四个时辰！真武二重，都做不到！”
    
        “四天？”
    
        沈哲一呆，急忙看向不远处的凌雪茹，就见她捂着眼睛，慢慢点头。
    
        这才明白，搞了个大乌龙，沈哲尴尬。
    
        “给你半天的宽裕，竟然还计算的误差这么大，站到教室后面，课后到我办公室接受惩罚！”
    
        懒得再做解释，白羽老师手掌一甩。
    
        感受到对方带来的压力，沈哲身体一僵。
    
        身为老师，不可能用出全力，但他刚穿越过来不久，还没适应修炼的力量，就算力气小，一掌下来，最少也要丢半条命，甚至可能会挂掉！
    
        “慢着……”
    
        牙齿一咬，沈哲硬起头皮：“没有实践，谁知道答案正确与否？我计算的结果，是四个时辰……自然有我的道理，除非，老师能证明我错了，那样，我会心甘情愿，接受惩罚！证明不了……就动手惩罚，如何让人信服？”
    
        “你这是在质疑老师计算出来的答案？”
    
        白羽老师冷哼。
    
        “是！”沈哲咬牙。
    
        对方计算的肯定是正确的，但真要实践，一来一回就要八、九天功夫，届时，已经适应了这副身体，被打也能抗住了。
    
        拖！
    
        越久越好，只要现在不挨打，后面总有办法。
    
        “很好，教学这么多年，第一次被人质疑，还是上学期的倒数第一，你胆子够大！”
    
        怒极而笑，白羽老师几步来到讲台，伸手一抓，一本书籍出现在掌心。
    
        “这是学院专门定制的教参，刚才提问的那道题，就在其中，上面的答案，是经过学院术法师验证过的，不可能出错！”
    
        “教参？”
    
        沈哲一呆。
    
        还以为对方随便出的题，需要验证，刚好借机拖延时间，没想到竟然是教参上的内容。
    
        能进入教参，人人信服，就算他想不承认，也没办法。
    
        就和法庭的视频一样，教参的答案，是可以作为证据的，除非……真理被修改。
    
        但既然作为真理，自然是无数人验证过的，又怎么可能如此轻易被改掉？
    
        面皮抖动，沈哲身体发冷。
    
        质疑老师，而且是教参上的答案，等于触犯学院的规章，惩罚很重，就不是简单一掌，能够解决了！
    
        甚至弄不好会被开除！
    
        回答不上问题，都会被揍一顿，开除……还不要被打死？
    
        “我……”
    
        咬了咬牙，沈哲刚想承认，自己根本没去计算，刚才是信口雌黄瞎胡说，就见眼前的白羽老师已经翻开了教参，找到了刚才那个题目。
    
        “题目和答案都在这里，我现在念给你听……将紫缘铁齿狼带回来，需要……”
    
        话音未落，像是看到了什么不可思议的事情，眼前这位白老师秀目一下瞪圆，好像随时都会掉下来：“这怎么可能？”
    
        只见教参上，淡淡的油墨，写了一行清晰的字迹：四个时辰，四十四分，四十四秒四四！
    
        毫秒不差！',10057,10170);
        insert into ds_book values(null,10171,'为了让沈哲能够相信，教参是对向课堂的，不仅白羽老师看到了内容，所有学生也都看了个清楚。

        一瞬间，鸦雀无声。
    
        所有人面面相觑。
    
        沈哲……竟然算对了！
    
        一秒一毫都不差！
    
        怎么可能？
    
        关键的是……他们都计算过，老师最少需要四天才能回来，为何教参上，出现如此离奇的答案？
    
        “这……不可能！”
    
        白羽老师更是娇躯乱颤。
    
        这上面的答案，是她亲自做出来，送到学院校验审核的，四天零两个时辰十七分……怎么会变成了对方说的四个时辰？
    
        难道被偷偷改了？
    
        这个念头一出现，立刻摇了摇头。
    
        教参一直在她手里，别说一个学生，就算院长想要修改，都做不到。
    
        叮铃！
    
        窗外响起了下课的铃声。
    
        脸色铁青，知道继续追究，弄的更加难堪，白羽老师将教参合起：“教参可能有些问题……我现在去教导处查询，沈哲处罚的事，下节课再说……下课！”
    
        说完，转身走出教室。
    
        “你计算出了答案？”
    
        “这答案太离谱了吧……”
    
        “沈哲竟然说的一秒都不差，这家伙啥时候这么厉害了？”
    
        ……
    
        老师一走，教室里立刻炸开。
    
        所有同学，全都像看怪物一样的看过来。
    
        他们经过严密的计算，老师四天都很难回来，对方却说四个时辰，谁看都是胡扯，怎么都没料到，竟然对了！
    
        班级里学习最差的学渣，算对了最难，第一名都难以解决的难题……
    
        难道是……教参错了？
    
        不可能！
    
        这么多年，教参从未出现过错误。
    
        其实，不光众人懵了，沈哲也瞪大眼睛。
    
        他可以百分之百确定，刚才的答案，是胡乱说的……但为啥，和教参的一模一样？
    
        “难道是那个笔记……”
    
        能出现这种情况，只有一种解释，他认为没用的课堂笔记，发挥了作用！
    
        精神一动，再次沉浸脑海，果然看到书本的第二页上，写了一行字迹，正是之前自己说出的答案。
    
        一侧的铅笔，已经短了一大截，只剩下三分之二左右。
    
        心中一震。
    
        笔记本上有字，会不会正是这东西的缘故，才让教参修改了答案？
    
        真要是这样，以后做试卷，是不是随便胡写，都会得一百分？
    
        眼睛亮了，沈哲满是激动。
    
        似乎感受到了他的兴奋，笔记本一声轻鸣，封面上缓缓浮现了两个字“造化！”，随即淡淡隐去，好像从未出现过一般。
    
        ……
    ','        教务处距离教室有一段距离，白羽老师心中焦急，身影快速，不消片刻来到跟前，推门走了进来。
    
        “白老师，什么事，这么急匆匆的！”
    
        教导李主任皱了皱眉。
    
        “李主任，你这里，可还有潜力班的教参？”
    
        白羽老师忙道。
    
        “那里都是……”
    
        李主任一指。
    
        一侧墙角的书架上，摆了十几本还没用过的书籍，整个年级，用的是相同的教参，内容是过一段时间，就需要重新编撰。
    
        白羽老师随手拿出一本，急忙翻到记录刚才问题的一页。
    
        低头看了一眼，脸色再次一变：“怎么会这样？”
    
        又取出一本，连忙翻开。
    
        接连翻了六、七本，都是同样的答案：四个时辰四十四分四十四秒四四！
    
        可……她明明做出的答案，是四天多啊？
    
        再也忍不住，转身看过来：“李主任，以我现在的实力，带着一头昏迷的紫缘铁齿狼回到学院，要用大概多长时间？”
    
        “你？”
    
        李主任沉吟了一下，计算出答案：“大概需要四天零两个时辰！”
    
        “对啊……可为何教参上的答案不对？”
    
        白羽老师将一本书递过来。
    
        李主任疑惑的看了一眼，接过书籍，只看了一眼，同样愣住：“四个时辰怎么可能回得来，就算是我，都做不到，这答案是谁校订的？”
    
        “呵呵！”白羽老师道：“是你……”
    
        嘴角一抽，李主任急忙将多本教参全部翻了一遍，也迷茫起来：“这的确是我校验的，可……为何如此离谱？”
    
        沉思了片刻，道：“这样吧，白老师……你去实践一下，算公差！记得带上记录水晶，确定好准确的时间。计算的再准确，很多时候，也比不上亲自实践。”
    
        白羽老师点头。
    
        对方说的不错，计算的再精确，都不如实践，只有真正走上一趟，才能最有资格确定，到底哪个答案是正确的。
    
        “我现在就动身……”
    
        说完，白羽老师转身离开。
    
        ……
    
        研究了一会，沈哲终于弄明白过来。
    
        脑海中多出的笔记本，的确有着特殊的能力，只要用铅笔，将答案写进去，教参上的正确答案，就会随之更改。
    
        “这是……言出法随？”
    
        真有这种能力，以后还作啥弊，随便写都是正确的，我不生产答案，我却是正确答案的搬运工……
    
        “试试有没有其他能力……”
    
        看向同桌王庆。
    
        刚才被提问，这家伙一点忙都没帮，不讲义气，先拿他开刀……
    
        心中一动，铅笔悬浮起来，很快在上面写了四个字：“王庆是猪！”
    
        呼！
    
        字迹才一出现，就消散的无影无踪，没留下任何痕迹。
    
        转头看去，发现王庆还是王庆，并未变成心中的模样。
    
        “王庆是王八……”
    
        依旧没变。
    ','        “看来，不行……”
    
        又试验了几种动物，发现同桌一直保持本来的容貌，连个猪鼻子都没有，沈哲摇了摇头。
    
        看样子，这玩意没这么大的功效，如果只能更改答案，做个学霸，用处真的就不大了。
    
        王庆看了过来：“一直看我干什么，那道题我也不会做，再说老师就站在跟前，我敢说话吗？反倒是你，答案这么标准，还从来不知道，你有这种能力啊……”
    
        “我还有其他能力，只是没试验成功罢了……”沈哲一笑。
    
        要不是能力不太好使，你早就变成猪了……
    
        闲聊了一会，不知觉一上午过去，伴随一声“叮铃！”，到了放学时间。
    
        伸了伸懒腰，沈哲走出教室，向食堂的方向走去。
    
        他这副身体所在的家族，距离学校不近，通常都是住校，半年才回去一次，至于吃饭，都是在食堂解决。
    
        随便打了份饭，正在细嚼慢咽，一个声音在不远处响了起来。
    
        “这不是从我们【四君子】中退出去的沈哲吗？怎么，学习成绩变好，不想再和我们玩了？”
    
        沈哲抬头，就见三个年纪相仿的青年面带不悦的来到跟前。
    
        “赵辰、王晓峰、刘鹏越！”
    
        沈哲脑中冒出三个名字。
    
        虽然没有前身的记忆，但来到这个世界三天了，身边的朋友以及人际关系，还是打听出来一些的。
    
        学院的潜力班，足有十几个，他和赵辰等人，是其中四个班的倒数第一，学习成绩，包揽了全校倒数前四。
    
        因此，也被誉为：渣渣中的渣渣，学渣中的战斗机！
    
        都是“一渣毁平均，两渣毁所有！”的存在。
    
        每个老师遇到，都头痛不已，恨不得开除。
    
        不仅如此，他们还都是大家族的嫡传子弟，个个身份不弱。
    
        本该风光的家族子弟，居然次次倒数，自然引起了不少人的注意。
    
        而且，因为常年游走在年级排名的最下面，倒数前四名，几人轮番占有，其他人全都望尘莫及，于是惺惺相惜，结成联盟，也就是所谓的“学渣联盟！”，人称“四大学渣”！
    
        当然，他们不喜欢这个名字，渣怎了？
    
        渣就不是人了吗？
    
        渣就要活该要受到歧视吗？
    
        于是，改成了“四君子”。
    
        沈哲本来一直稳居全校倒数第二，结果上学期，本来第二的刘鹏越，不知吃了是什么激素，考试的时候，同样用【抛钱币验算法】，竟然比他多蒙对了一道题，平均成绩96.1……抢占了他的位置！
    
        受到刺激，再加上学校和家族挨揍，这学期回来，努力学习，逐渐就与之玩的少了。
    
        “学习好又怎么样，即便每次都考一百分，术法师，也不是人人都能做的，沈哲，我劝你就别在执迷不悟下去了！你我都不是这块料，我们都心中清楚，何必这样为难自己呢？”
    
        刘鹏越来到跟前，拍着他的肩膀：“我们现在要做只有一条，上课好好睡觉，回答不出问题，争取每次都是倒数第一……然后被开除，回去继承亿万家产，娶上几十、上百房老婆，平平凡凡过一生不好吗？”
    
        “这么累的学习，就只为成为术法师、真武师，实在做不到，成为练体师也行，不求多强的实力，能够自保就够了！学的半条命都没了，何必呢？何苦呢？”
    
        王晓峰也劝慰道。
    
        “重新加入我们，四君子，不能缺少你！”赵辰点头。
    
        同为学渣，他们早就建立了深厚的感情，是有名的铁杆。
    
        “我……”
    
        看到他们热忱的目光，沈哲有些心动，正打算同意，但一想到可能会被打死，满是迟疑的时候，一个声音响了起来。
    
        “沈哲，你不能听他们的！你努力这么久，成绩好不容易有了起色，怎么能够放弃自己？”
    
        淡淡的幽香传来，一个修长的身影，来到跟前。
    
        班长兼班花，上课悄悄给他提示的女孩，凌雪茹！',10057,10171);

insert into ds_book values(null,10172,'我想有一座房子，面朝大海，春暖花开！
　　这是一首诗中描绘的幸福景象，亦是当下很多都市人所追求跟向往的生活。
　　站在长满杂草的院子里，放眼望去便是海天成一色的美景。曾几何时，年少的庄海洋很讨厌看到眼前这些风景。可兜兜转转十余年，他却又主动回到了这里。
　　“湛蓝的天空，洁白的云朵，深蓝的大海，翠绿的椰子树，金黄的沙滩与碧波荡漾。心境不一样，看同一风景的心情也不一样。心安之处即吾家，南山岛，好久不见！”
　　心有感叹的庄海洋，从未想过当年迫不及待离开这里的他，又会带着同样迫切的心情回到这里。只是看到身后荒废的老屋，庄海洋心里多少有些不是滋味。
　　这幢承载着儿时记忆的老屋，荒废十余年依旧坚挺。可斑斑驳驳的石墙，密布着绿葱葱的爬山虎。类似这样的石屋，旁边还有几幢，颇有几分绿野仙踪的韵味。
　　看着生锈的门锁，还有发霉的木门，庄海洋表情无奈又心酸的道：“门也要换了！”
　　当年的钥匙，早就不知丢到什么地方，直接用锤子将锁砸落，推门吱吱作响的木门，一股难闻的潮霉之气扑面而来。捂住鼻子的庄海洋，也只能在门口待上一会。
　　准备进门时，庄海洋想了想道：“把屋子收拾干净，估计也要通风一两天才能住进来。好在把帐篷带来了，这两天就在院子搭个帐篷住两天吧！”
　　说完话转身来到堆放生活物资的地方，庄海洋从一个防水袋中，找出几串鞭炮。点燃一根香烟，拎着鞭炮便走进自家老屋，点燃一串鞭炮扔进老屋的客厅。
　　噼里啪啦的鞭炮声响起，令寂静许久的老屋跟小岛，似乎都变得热闹起来。等鞭炮声结束，闻着充斥老屋的硝烟之气，庄海洋反倒觉得比先前味道更好闻。
　　“虽然不知道有没有用，可还是求个心安吧！冷清这么多年，热闹一下也理所应当。再怎么说，我这也算乔迁之喜，多放几串鞭炮不过份吧！”
　　决定从城里搬回荒废多年的南山岛前，庄海洋也拜访过其它搬迁到镇上的邻居。那些老人虽然也想搬回来，却知道几乎没什么可能。这南山岛荒废许久，如何住人呢？
　　得知庄海洋打算回村住段时间，老人们还是细心叮嘱道：“海洋，没住人的老屋时间长了有邪气，搬进去之前先通通风，多放几串鞭炮驱邪，再去村头的海王庙烧柱香！”
　　邪气是什么，庄海洋自问搞不懂。可他多少知道，久未住人的老屋湿气住，要是不通风消毒干燥一下，人直接搬进去住，还真有可能生病。
　　将老屋每个房间的门窗都打开，实在腐坏不能用的门窗，庄海洋直接拆掉扔院子里。扔了几串鞭炮后，整个老屋也被笼罩在翻滚的硝烟之中。
　　看到这一幕，庄海洋也笑着道：“这一幕，房子看上去更有仙气了！”','　　并未急着进屋打扫，再次来到堆积物资的地方，庄海洋从里面挑出一台割草机，开始清理长满自家院子的杂草。这次搬回来长住，庄海洋还是准备的很充分。
　　齿轮旋转，杂草飞溅，看着清理干净杂草的院子，依旧还残存不少草根。可庄海洋相信，只要院子天天有人走动打理，这些杂草就很难死灰复燃。
　　清理干净院中的杂草，背着割草机的庄海洋，又将自家老屋附近的杂草丛也清理了一遍。将这些杂草堆放在一起暴晒两天，而后再找时间将其烧成草木灰。
　　这些家务杂活，对庄海洋而言还真没多大难度！
　　花费一上午时间，干到浑身冒汗的庄海洋也觉得很痛快。看到身上沾满的草碎跟灰尘，从行李箱中找了两件衣服，庄海洋又来到村后的礁石凹打算洗个澡。
　　相比夜间这里风高浪急，白天礁石凹还是显得风平浪静。站在一个圆形礁石上，庄海洋也觉得这地方很亲切。小时候，他经常坐在这块礁石上钓鱼呢！
　　脱下被汗水浸湿的衣服，穿着一条四角裤衩的庄海洋，略显期待般道：“这么多年没人来这垂钓，想来这礁石凹里应该有不少好货吧！”
　　从小在海边长大，庄海洋水性自不用说。眼前这片面积不大的礁石区，分布着数个大小不等的水坑。早年在这片礁岩区，村民时常钓到龙虾跟石斑鱼。
　　纵身跃入水坑中的庄海洋，也不担心碰到下面的礁石。即便放眼看去，这片礁岩区生长着很多露出水面的礁石。可旁边坑里的水并不浅，尤其那些大小不等的水坑更深。
　　并未佩戴任何潜泳设备跟泳镜的庄海洋，跃入水坑中瞬间有种如鱼得水般的畅快感。潜了几米后，庄海洋睁开眼，开始打量着身边的水坑。
　　换做常人，想看清水下的情况，大多都需要佩戴护目镜。可对庄海洋而言，他却根本不用。当然，如果有旁人在场，他还是会佩戴护目镜，不想让人觉得他很另类。
　　潜入水坑的庄海洋，内心也暗笑道：“小时候，每次钓不到鱼，总好奇坑里到底有没有鱼。这一回，也算圆了小时候的梦，终于能一睹水坑下的世界是什么样了。”
　　十几米深的水坑，对庄海洋而言根本没压力。在别人看来，他独自一人搬回岛上住，似乎有点避世的味道。唯有庄海洋自己清楚，他搬回南山岛的真正原因。
　　失恋给庄海洋留下的创伤虽不少，可对此刻的庄海洋而言，用不着‘三十年’，或许只需两到三年，他就会让那个弃他如草履的女人知道，放弃他是她的遗憾。
　　“钱，也许很重要！可有些东西，钱也未必能买到。”','　　回归南山岛的庄海洋，很清楚凭借他所得到的奇遇，赚钱与他而言并不难。就凭他现在拥有的水性，当个靠海吃海的渔夫，相信也会赚到令人羡慕的财富。
　　如果不是租赁一座岛屿太贵，现阶段根本拿不出这样一大笔钱的庄海洋，真想将这座承载儿时记忆的岛租下来。那样的话，当个岛主应该是件很有面子的事吧！
　　想到定下的这个小目标，庄海洋微微一笑道：“还是先找点什么解决午餐吧！搬家宴，怎么着也要吃点丰盛一点，希望这片礁坑，不要让我太失望才好！”
　　清楚租赁一座岛屿是件很繁琐的事，此番回归的庄海洋突然觉得，即便他不租，相信别人也赶不走他吧！再怎么说，他本就是南山岛土生土长的本地人。
　　现在其它村民都搬走，整座小岛也仅有他一人生活，这跟岛主又有什么区别呢？',10058,10172);
insert into ds_book values(null,10173,'相比沿海渔民经常出海捕捞的海域，南山岛却位于深海区域，距离最近的有人岛屿，都需要航行一个多小时。若去往人更多的海滨小镇，渔船也需航行至少两小时。
　　虽然旁边还有几座小岛，可南山岛距离公海仅有六十海里不到。除岛屿位置距离内陆遥远外，岛屿面积虽不小，可淡水资源并不丰富，以至岛上的村民陆续搬离。
　　此番庄海洋决定搬回南山岛居住，很多搬迁出去的村民，都有些想不明白。可得知庄海洋连买在市里的房子都卖掉了，也终于相信庄海洋是铁了心要回岛上住。
　　别人什么看法，庄海洋真的不怎么在意。昔日的村邻，离开南山岛之后，彼此之间联系也一年比一年少。况且，对此刻的庄海洋而言，他跟孤家寡人没什么区别。
　　一口气潜入礁坑底部的庄海洋，看着从身边游过的海鱼，觉得这片礁坑区的鱼类资源，相比早年确实多了不少。换做早年，隔三差五都有村民往坑里撒网呢！
　　“禁渔十余年，将礁坑做为避风港的鱼虾还真不少。那是老鼠斑吧！好久没尝过这种石斑鱼的味道，有时间过来钓几杆。那条东星斑也不错，野生的真不多见了。”
　　看着在坑底觅食的各种石斑鱼，那怕水性极好的庄海洋，同样很难徒手在水里抓住这种野性十足的石斑鱼。等来到坑底，庄海洋很快看到用来加餐的海鲜。
　　顺着庄海洋的视线看去，布满沙石跟人类垃圾的坑底，几只体型艳丽的大龙虾，正在坑底觅食。相比抓捕野生石斑鱼的难度，庄海洋觉得这种大龙虾更好下手。
　　或许感知到威胁，被庄海洋盯上的大龙虾，很快弹射到礁坑的洞穴之内。好在这些洞穴都不深，钻进洞穴的大龙虾，依旧曝露在庄海洋的视线之中。
　　看到这一幕，庄海洋也暗笑道：“这算龙虾版的掩耳盗铃吗？”','　　潜到自己挑好的龙虾藏身处，庄海洋很小心伸出自己的手。就在大龙虾利用触角，感知着周围的危险时。刚准备逃窜，便被庄海洋直接按在洞**。
　　掐着大龙虾的背壳，庄海洋翻转虾身看了看暗自点头道：“不错！这份量，应该有三斤左右，拿来清蒸蘸点海鲜酱，味道应该不错！”
　　没理会其它受惊的大龙虾，很快浮出水面的庄海洋，将挣扎的大龙虾捏在手里上岸。从脱下的衣服中，掏出随身携带的鱼线将其捆绑好，又重新回到礁坑之中。
　　离开最大的礁坑，庄海洋又把其它的礁坑都检查了一遍，发现生活在这片礁坑区的石斑鱼跟大龙虾真不少。等再上岸时，庄海洋手中又多了两只梭子蟹跟几个大海螺。
　　确认这一顿很丰盛，换上带来的干净衣服，庄海洋再次回到自家院子里。将抓到的龙虾、梭子蟹跟海螺，都放在乘满海水的水箱中，开始架设买来的液化灶。
　　看着临时搭建的厨房，抬头看了看天空，庄海洋想了想道：“吃完饭，下午有必要把厨房收拾出来。真要下雨的话，也只能把灶台搬客厅去做饭了。”
　　上午清理了院子跟父母居住的卧室，剩下堆放杂物的房间，庄海洋还没来的及收拾。考虑到将来姐姐一家，也有可能过来住两天，其它房间也需要收拾出来。
　　至于庄海洋自己，还是决定搬到二楼，自己小时候住过的房间。那些每个房间看上去，需要修补的东西不少。可这趟回来，庄海洋最不缺的也是时间。
　　身为渔家子弟，庄海洋自然知晓如何烹制海鲜。即便条件有些简陋，可架起蒸锅的庄海洋，相信等下蒸出来的海鲜会很好吃。这一顿换做在城市，怕是真不便宜呢！
　　“海鲜，海鲜，刚从海里捞出来的才鲜。往后有时间，再整几块菜地出来。除了粮食要去镇上买，其它的生活物资，其实在岛上也能种出来。”
　　对很多居住在外海的渔民而言，海鲜其实不贵，真正贵的反倒是蔬菜。知道村子以前有片菜地，庄海洋觉得将其重新开垦出来，种些蔬菜自给自足应该够吃。
　　之前让村民搬迁的淡水资源，前番回过村子一趟的庄海洋，已经仔细的观察过。其实在南山岛，淡水资源也不少。只不过，想将其汲取出来相对困难罢了。
　　好在汲取淡水，对此刻的庄海洋而言，应该不存在什么难度！','　　考虑到尚未通电，这两天庄海洋的主食，只能是馒头或面条。南山岛孤悬于外海，庄海洋为解决用电的问题，已经购买了一台家用柴油发电机。
　　等后续有时间，庄海洋也会考虑请人上岛，在自家老屋或旁边装一些太阳能发电板。介时配合柴油发电机一起供电，相信庄海洋也不用担心岛上无电可用。
　　至于网络问题，庄海洋也不可能请人把网络拉到岛上来，只能使用无线网络。好在前番庄海洋试过几次，南山岛这边的无线网络，信号还是蛮强的。
　　想着需要完善的生活设施，庄海洋觉得就算住在这里，似乎也能享受跟城里一样的生活。唯一有所不同的，或许就是一个人住在岛上，就只能自娱自乐了。
　　闻着蒸笼内散发的海鲜香味，已经搭好临时餐桌的庄海洋，也调配好自己爱吃的蘸料。确认可以出锅，便将放在蒸笼里的虾蟹，还有同样清蒸的大海螺端上桌。
　　看到外壳已经变红的大龙虾跟梭子蟹，庄海洋也很陶醉般吸了一口道：“真香！”
　　将同上蒸笼的馒头取出几个，扯掉大龙虾的虾头，冒着热气的肥美虾肉，很快呈现在庄海洋眼前。掰下一块虾肉，往蘸水里滚一滚，再将其扔进嘴里。
　　嚼着嘴里的龙虾肉，庄海洋很满足的道：“鲜、香、嫩滑中还有一丝香甜，这龙虾地道！要是让那帮家伙看到我今天吃的，估计又会说我没事放毒吧！”
　　知足者常乐，懂得满足便能拥有快乐。在别人眼中，庄海洋是躲到南山岛逃避现实。可唯有庄海洋自己清楚，这种自给自足无忧无虑的生活或许才是他所期望的。
　　吃了几口鲜嫩爽滑的龙虾肉，庄海洋又将目光放在两只半斤多的梭子蟹身上。掰开其中一只雌蟹的蟹壳，里面红膏满盖。看到这一幕，庄海洋很是满意的点点头。
　　夹起筷子道：“这蟹黄不错！有机会下次再抓一些，制瓶蟹黄膏做调料，味道应该不错！”
　　早年父母在世时，每到螃蟹上市的时节，都会制作一些蟹黄酱。对庄海洋而言，这即是儿时的味道，更是妈妈的味道。对很多成年人而言，童年或许是最难忘跟回味的记忆吧！',10058,10173);
insert into ds_book values(null,10174,'花费一下午的时间，终于将老屋房间通通收拾了一遍。各个房间破损的门窗，全部被庄海洋给拆掉，等过两天回镇上，再找人订制回来重新安装上。
　　或许因为太久没住人，以至房间早年刷的墙漆也掉了不少，同样将其清理了一遍。把不能用的东西全部扔掉，再重新买些材料回来慢慢装修。
　　那怕一个人住，庄海洋也希望住的舒服惬意一些！','站在自家老屋的二楼阳台，看着被落日染红的海面，庄海洋也觉得这一幕很美。即便这种景致他看过无数次，可今天看风景的心情，跟以前还是有些不一样。
　　“趁着还有时间，去搞点晚上吃的食材。有段时间没直播，那帮家伙估计意见不小。干脆直播一下，也让那帮家伙知道，不是我懒，是真没时间啊！”
　　直播，对当下的年青人而言，已然不是什么新鲜事。之前听人说，户外直播似乎很赚钱，庄海洋也打算尝试一下，最终购买了相应的户外直播设备。
　　相比其它户外主播，大多都搞什么野外生存，庄海洋的直播大多是赶海跟海钓。偶尔的话，庄海洋也会直播一些潜水打捞的视频，反响只能说很一般。
　　好在庄海洋心态还算不错，知道想靠直播赚钱只怕不容易，也就将其做为打发时间的消遣。偶尔跟直播间的观众吹牛扯皮，也能给庄海洋带来一丝生活乐趣。
　　来到楼下，压了两桶井水直接冲洗一下，换了身干净衣服的庄海洋，找出直播设备准备好海钓的工具，很快打开自己在飞龙直播平台注册的直播帐号。
　　尽管这个直播平台名气很大，可对庄海洋这种闲鱼主播而言，他并未跟平台签定专属合约。虽然打赏分成会少一些，但对庄海洋而言其实也不是很在意。
　　况且，看直播的网友，真正舍得大额打赏的并不多。真把直播当职业，对庄海洋而言还是觉得约束性太大。关注他的网友都知道，庄海洋直播主要看他心情。
　　心情好，他能主播几小时。心情不好，他也能几天不直播。如此任性的主播，还想靠直播赚钱，又怎么可能呢？关注他直播间的老用户，大多都清楚他脾气。
　　随着直播间上线，乘着直播间没什么人，庄海洋也调试了一下直播画面。在他调整设备的过程中，几个熟悉的网友名称，很快出现在直播间。
　　几条弹幕闪现，看着弹幕的庄海洋也很无语道：“老铁们，你们很皮哦！什么叫诈尸？前段时间，我不是跟你们说过，我要回老家当岛主吗？今天刚搬回来呢！”
　　“真的吗？渔人，你老家真在岛上啊？”
　　“渔人，你老家那里？岛上风景如何？”','诸如此类的询问弹幕，开始在屏幕上闪现。借助手机撑杆直播的庄海洋，也笑着道：“我老家在祖国最南端，岛上风景只能说一般，一座荒废多年的小岛而已。”
　　说着话庄海洋又继续说道：“看看我一天的成果！这幢老屋的历史，比我年龄还要长一点。荒废十余年，主体结构还算牢固，可屋子内部腐朽的很厉害。”
　　举着撑杆的庄海洋，通过手机展示了一下自己收拾出来的家。透过手机镜头，看着整理后空荡荡的房间，观看直播的网友也知道，这屋子确实很久没住人了。
　　等来到二楼阳台，庄海洋把镜头对准海上，笑着道：“让你们欣赏一下海上日落的美景！这样的风景，我可是从小看到大。每天起床一睁眼，就能看到这样的美景呢！”
　　“握了个草！渔人真在岛上，推开窗就能看到海景，这日子未免太爽了吧！”
　　“是啊！从镜头展现的海景来看，这座小岛看上去面积也不小呢！”
　　“自建海景房，渔人，求收留！”
　　面对这些老用户的调侃，将镜头重新调整过来的庄海洋，却很无奈的道：“先前老屋的情况，相信你们也看到了。就算我自己，今晚也只能在院子里搭帐篷睡。
　　今天把老屋清理一遍，又消了一遍毒。明天的话，还要开船去镇上定制门窗跟买些装修的材料。你们要真想过来玩，还是等过段时间再说吧！”
　　说着话的庄海洋，又将镜头对准旁边荒废的小村。看到那些被爬山虎包围的老屋，其中有几幢屋顶也完全倒塌。放眼望去，确实令人觉得有点不寒而栗。
　　“这么多海景房，竟然都这样荒废了，好可惜啊！”
　　“是啊！看到这些荒废的屋子，我终于相信这是一座荒废的小岛。不过，住在这种小岛上，应该会很刺激吧！有时间，把女票带过来，肯定很有趣！”
　　“渔人这家伙，胆子不小啊！一个人住在这样的荒岛上，真不怕吗？”
　　观看直播的老用户，一边听庄海洋讲解南山岛的历史，一边不断发送着弹幕。偶尔进入直播间的网友，看到不时介绍小岛的庄海洋，也很快被吸引住。
　　看到这些新进的网友，庄海洋也笑着道：“新来的老铁，点波关注，不迷路！虽然我这个主播有点闲鱼跟任性，可我相信每次直播，应该都能让你感受到一丝乐趣。”
　　因为庄海洋直播间取的名字叫‘海洋达人’，后面进来的网友，也能看到他以前直播的一些视频。正如那些老用户所言，庄海洋虽然直播次数不多，却也干货满满。
　　前往后山礁岩区的路上，很多网友通过镜头，首次看到南山岛的一丝真容。虽然看上去有些荒凉，却依然能看到这座小岛，曾经还是居住过不少人。
　　令新进网友意外的是，从进直播间到现在，庄海洋没跟其它主播一样，时不时索要礼物什么的。即便有要求，更多也是希望新网友也点波关注。
　　等庄海洋来到礁岩区，看着比上午明显大了不少的风浪，很快道：“晚餐还没着落！打算趁天黑钓两条鱼做菜，这礁坑上午来看过，里面藏了不少石斑鱼跟龙虾。
　　上午事情太多，就没开直播，在里面抓了只龙虾跟两只螃蟹，摸了几个大海螺做午餐。别说我吹牛，你们要不信的话，等下回去让你们看吃完的壳！”
　　“渔人，你这家伙又开始放毒了！大龙虾，大螃蟹，大海螺，你是想馋死我们吗？”
　　“好奢侈的午餐啊！”
　　“真的假的？主播不会吹牛吧？潜水抓龙虾，吹的吧？”
　　“楼上新来的吧？渔人这家伙虽然直播不靠谱，却很少吹牛。潜水抓龙虾摸螃蟹，对他而言都是小KS。这家伙早年当过海军，潜水很牛的！”
　　老用户看到正在挂饵的庄海洋，也很尽心帮其解释一番，给新用户讲述不少庄海洋的直播往事。真碰到那种杠精，老用户兼职的房管，也会毫不客气将其踢出直播间。
　　这种情形对庄海洋跟关注直播间的老用户而言，都已经习以为常。在庄海洋跟老用户看来，这个直播间也是他们交流的平台，多一个少一个观众，又有什么关系呢？',10058,10174);
insert into ds_book values(null,10175,'昏昏沉沉中，赵昕感觉到自己的身体，重新恢复了知觉。隐约中，耳畔有着木炭燃烧的声音。

　　旋即，浓郁的药味，从鼻端沁入心扉，一个似乎是勺子的物体，撬开了他的嘴巴，将那难闻苦涩之药汤，灌入喉咙里。

　　“咳咳……”

　　于是，他的身体本能的咳嗦起来。

　　“朕……还活着？”赵昕心里想着。

　　可是……

　　活着又如何呢？

　　年已几近五十，登基临朝三十年，终究不过是一事无成。

　　想要改变的，从来没有改变！

　　士绅！文官！祖宗制度！

　　就像三座大山，压在他身上，让他喘不过气来。

　　想做的改革，最终变成了害人害己的恶政，欲做的事情，终究难逃下面大臣的阳奉阴违！

　　到得四十五岁后，身体与意志，终于难以支撑。

　　与他的父祖一般，缠绵于病榻之上。

　　由之，曾经勉强做出的成绩，曾经日以继夜为之奋斗的事业，一夜回到解放前。

　　宰臣与执政们联起手，将他这个官家，关在了皇城的三寸之地。

　　政令不出寝殿，威权止于三步之内。

　　于是，他终于明白了一个真理：读书人救不了大宋！

　　文官士大夫更不能！

　　依靠文官，妄图与士绅、官员妥协，从而进行自上而下的改革，乃是自讨苦吃！

　　甚至可以说是与虎谋皮而已。

　　无论是王安石、吕惠卿，还是欧阳修、司马光。

　　他们其实就是一伙的！

　　本质就是同路人！

　　只要改革触及他们的利益，立刻就会反弹！

　　于是，病榻上的他，终于明白了曾经领袖的教导：革、名不是请客吃饭，不是做文章，不是绘画绣花，不能那样雅致，不能那样从容不迫，文质彬彬……

　　可惜，醒悟之时，已然晚了。

　　恨，只能恨自己。

　　太小资产阶级！

　　怨，只能怨自己，太贪慕虚荣，太追求形象，太在乎世人看法！

　　以至于，完全丢弃了自己的优势，完全将自己的屁股放在了文官，放在士绅们身上。

　　却忘记了，鲁迅说过的话——我翻开历史一查，这历史没有年代，歪歪扭扭的每页上都写着‘仁义道德’四个字，我横竖睡不着，仔细看了半夜，才从字缝里看出字来，满本都写着两个字：吃人！

　　士绅要吃人，文官要吃人，勋贵外戚也要吃人！

　　而他，居然天真烂漫的以为，可以替这些家伙找一块新的肉，让他们不要去吃原来的肉。

　　真是愚蠢！

　　真是幼稚！

　　谁会嫌自己吃的少？
','　　那个会以为自己吃的就够了？

　　人心，本就欲壑难填！

　　人性，本就得陇望蜀！

　　所以，才有升米恩，斗米仇的典故，于是才有得寸进尺之语！

　　休说是这北宋封建时代了，前世的那个世界，身家亿万的巨富们，又何曾肯轻易割肉让利？

　　996的福报，还不够深刻吗？

　　想着这些，赵昕就越发悔恨起来。

　　他不恨别人，只恨自己。

　　恨自己的幼稚与愚蠢，恨自己的软弱与轻视。

　　此刻他想起了一句话，他父亲临终之时，给他的遗训：万方有罪，罪在朕躬！朕躬有罪，无以万方！吾儿，当为尧舜！

　　当时，年少气盛的他，正是满脑子的天真想法，满脑子的幼稚思维。

　　于是，将这遗训完全理解错误。

　　以为，这是老父亲，勉励他发扬民猪之语。

　　兼之，当时他深受曾经看过的小说与电视剧的荼毒，想着只要收集名臣名将，然后王霸之气一发作，天下人就会自动团结到他麾下。

　　但，在现在，经过了三十多年被社会与现实毒打后。

　　他回过头，再次揣摩老父亲的遗训。

　　他才明白老父亲的遗言，根本不是让他发扬什么民猪！

　　更不是让他与士绅文官文人做朋友，搞联谊！

　　那句话，真正的打开方式是：万方有罪，罪在朕躬——故朕乾坤独断！朕躬有罪，无以万方——所有的罪与善，皆朕一人为之，与卿等何干？

　　老父亲的遗言，总结起来就是两个：毒菜！

　　将权力，牢牢的把握在自己手里，将枪杆子死死的抓住！

　　大臣只是贯彻自身意志与政策的工具、棋子。

　　听话就给糖吃，不听话，就去岭南待着！

　　可惜，醒悟之时，已经晚了。

　　一切都已经无法挽回！

　　他只是一个在病榻上，连大小便都需要人伺候的废人。

　　朝政，已经是那些文官士大夫们，围在一起决定的事情了。

　　而他，这个官家，成为了泥塑的雕塑，一个盖章的机器。

　　便是儿子，也轻易见不到。

　　“若是可以重新再来……”赵昕在脑子里想着，旋即就又自嘲起来：“这怎么可能呢？”

　　但，在下一瞬，一个声音，在赵昕耳畔响起：“寿国公，吃药了吗？”

　　“回禀许翰林，奴婢刚刚服侍国公服下汤药……”一个稚嫩的女声答道。

　　“哦……”叫许翰林的男人叹了口气：“已经差不多半个月了，也不知国公能不能撑过来……”

　　“前日曹皇后去了大相国寺，在佛祖面前，亲以身祷，愿折寿一半，以换国公安然度过此劫……”

　　“可是，钦天监却报：昨夜见月掩心前星……”

　　“官家闻之，自晨至今，水米未进……”
','　　说着，他就叹息起来。

　　月掩心前星，从来不是什么吉兆！

　　在正规的道家解释中，此种星相基本上只有一个解释：此主太子薨崩，国无储君！

　　反正，自有观测以来，这个星相出现一次，就要死一个储君！

　　于是，这位翰林再次叹息起来，为国家，为社稷，为天下，忧心忡忡。

　　然而，他却根本不知，此刻，在他前方不过两步的床上，那帷幕与屏风之后躺着的人，内心掀起了怎样的波澜与何等的巨浪！

　　“许希！”

　　“许希！！！！！”

　　赵昕听到那翰林的声音，立刻就辨认出来了！

　　实在是这个声音让他太难以忘怀了！

　　记忆中，从两岁半直到二十五岁，他但凡有点伤寒、感冒，都是这位许翰林亲自诊治。

　　但问题是……

　　许希不是已经死了二十多年了吗？

　　赵昕记得，许希去世后，他还亲自下诏慰勉家属，追授邓州刺史，更令人在太医局中为许希画像纪念。

　　人死还能复生不成？

　　旋即，一个不可思议的念头，在赵昕脑海中浮现。

　　他拼命的挣扎起来，努力的想要睁开自己的眼睛，看一看这个世界。

　　终于，他成功了！

　　双眸睁开，烛光在眼中摇曳，一道珠帘从床前垂下，将世界分为两个。

　　赵昕的眼睛，微微向前看去。

　　他见到了自己的手，小小的，肉呼呼的，白白嫩嫩的。

　　他又看到了盖在自己身上的锦被，是针绣，而非机织。

　　他还看到了床沿边上，那已经掉漆的木槛。

　　“这是……”赵昕心中掀起无边巨浪，暴风骤雨，不断的拍打着他的三观。

　　“想不到，想不到……”

　　“除穿越，朕竟还能重生！”

　　眼前的一切以及方才所闻的事情，已经确凿无误的告诉了他。

　　他回到了一切的原点，故事的开端，自身悲剧的起点。

　　如今，是宋庆暦元年二月，此地是汴京皇城，而他是皇宋官家次子，寿国公、忠正军节度使——一个生下来就有着如此头衔的皇子，也是当今官家，那后世称为宋仁宗的帝王迄今为止唯一存活的儿子！一个本该在历史上早夭，却奇迹般的为一个来自后世的灵魂鸠占鹊巢的可怜人。

　　前世回眸，恍如梦幻。

　　而今再来……

　　“曾经犯过的错误，朕绝不会再犯！”

　　“此生，朕当为尧舜！”

　　尧时，有十日横空，有六凶肆虐，而尧帝尽戮之，而后绝地天通，将鬼神逐出人间，让俗世的归俗世，神明的归神明！

　　舜时，洪水滔天，欲要灭世！

　　舜帝，不求苍天，不求鬼神，率领百姓，直面大洪水。

　　先命鲧治水，九年不能，杀之，复以禹治水，终于疏导江河，将那可怕的大洪水，导入大海，神州于是得以安宁。

　　于是，后人颂曰：尧之封，舜之壤…
',10059,10175);
insert into ds_book values(null,10176,' 激动过后，赵昕就冷静了下来。这是三十多年帝王生涯养成的习惯。

　　特别是晚年，困于病榻的生活，令他习惯了在心中思考问题，一个个步骤的分析。

　　于是，他首先得出了一个确凿无疑的结论：“此生，决不能如前世一般，想着什么猥琐发育……”

　　犹记得，前世穿越之初，也是如今这个时候。

　　而彼时，刚刚穿越，被困于一个不过两岁的婴孩身躯中的他，既不通语言，也不懂局势，满心都是惶恐，于是小心谨慎，努力模仿着正常婴孩的起居，生怕被人察觉他的异常，从而被人视作妖怪。

　　但，事实证明，那是一个巨大的失误。

　　令他错过了一个无与伦比的造势与树立权威的机会，更是他成年后统治生涯之所以悲剧的缘故之一。

　　因为……

　　在这个世界上，哪怕是寻常人家，庸碌无为，也是罪！会被人轻视，会成为宗族叔伯眼里的边缘人，进而悄无声息的湮灭于茫茫人海，连个浪花都翻不起！

　　何况是帝王之子，未来天下的主宰呢？

　　异常？

　　“这天下人最盼望的恐怕就是朕有异常了！”赵昕在心里笑着。

　　位居至尊三十年后，赵昕已经差不多清楚的把握到了这皇宋士大夫与宰臣们的心理。

　　这些人，这些饱读诗书，满腹经纶的文臣鸿儒们，早已经不是第一天在期盼‘天降圣王治世’了。

　　这是儒家的老毛病！

　　祈盼圣君明主，寄希望于贤臣名士。
','　　基本上，所有儒生文臣，都有这样的心理。

　　只不过，现在的时局，让大宋文人士大夫们，尤其渴望天降圣王，尤其期盼再出一位如太祖、太宗一般的雄主而已。

　　没办法！

　　现在的大宋，正值风雨飘摇，内外交困之际。

　　内部，冗官、冗兵、冗费的弊端已然凸显，国家财力渐渐匮乏，国势江河日下，大有一副要和盛唐一样转入衰弱的趋势。

　　而在外部，辽国就不提了，大宋文官们根本不敢和辽人掰手腕，恐辽症患者不知凡几。

　　单单就是一个元昊叛军，如今就已经搞得大宋上下鸡飞狗跳，焦头烂额。

　　去年的三川口之败，更是将大宋朝廷的遮羞布给扯了下来——煌煌大宋，物华天宝之中央之国，竟连一个区区地方叛乱都难以收拾，甚至损兵折将，丧师辱国！

　　故而，在这个时候，大宋上下，比任何时候都渴望‘天降圣主明君’。

　　仿佛只要天上掉下一个‘圣主明君’，这天下立刻就要有救了一样。

　　而可惜的是，前世的赵昕不知道这些。

　　他当时满脑子都是‘狗起来’，‘猥琐发育，别浪’。

　　于是，竟生生的错失了树立威权，建立威信的大好机会。

　　前世晚年，他未尝没有叹息再三，遗憾不已。

　　但现在，有了再一次重来的机会，赵昕自是绝不会再如前世一般谨慎、小心了。

　　想到这里，赵昕就已经有了计划！

　　只见他从病榻上坐起来，小小的身躯，很是勉力，但依旧奋力坐了起来。

　　然后，他咬着牙齿，用出全身力气，支撑起身体，摇摇晃晃的站立起来。
','　　在其床榻之侧侍奉的宫女以及宦官、医官们听到声响，立刻全部惊动。

　　“国公！”宫女们惊呼着：“许翰林！许翰林！寿国公醒来了！寿国公醒来了！”

　　于是，一位穿着青色官服，戴着一顶璞头帽的中年官员，急匆匆的从屏风外快步跑进来，然后他就看到了那位被自己诊断‘病入膏肓’的大宋寿国公，正站立于那病榻之上，小小的身子在珠帘后面站的笔直，莫名的有着一股难以言喻的气势。

　　“臣希拜见寿国公！”许希难掩心中的狂喜，声音都有些颤抖，意识更是因为激动而有些模糊，好在他素来比较沉稳，所以很快就调整了过来，立刻上前拜道：“国公，请容臣为国公把脉！”

　　然而，就在这个时候，许希看到了那珠帘后的病榻上，那小小的身影，忽地盘膝坐下，仿佛一个得道高僧，又似一位隐于山陵的有道之士。

　　下一瞬，所有人都听到了那位大宋寿国公稚嫩的声音缓缓唱咏：“独坐池塘如虎踞，绿荫树下养精神……”

　　小小的人儿，小小的声音，稚嫩而青涩，但不知为何，所有人的心中都生出一种神圣的感觉。

　　仿佛，他们看到的并不是一个不过两岁的稚童。

　　而是一位手持诗书，口含天宪的三代圣主，将要言出法随一般！

　　尧舜禹，三王的意志，在此刻仿佛正从远古的无尽时空长河中回眸。

　　太康、少康、汤武、太甲、盘庚、周文王、周武王、周成王、周宣王……一位位先王的身影，似乎萦绕于那帷幕之后的小小身影之上。

　　下一刻，所有人都只觉得耳膜轰鸣，精神震动，身体更是不由自主的全部跪了下来。

　　“春来我不先开口，哪个虫儿敢作声？”稚嫩的声音，传遍房中内外，带着一股威势，横扫一切，镇压人的心神与胆魄！

　　“国公千秋！”宫女与宦官们，五体投地，大礼参拜，如同膜拜佛祖菩萨，恍如见到道祖金仙！

　　就连许希，也不得不跪地顿首，膜拜不已。

　　此刻，在这寝殿内外，所有人心中，都想起了一个传说：佛祖释迦摩尼出生之后，向四方各走七步，然后一手指天，一手指地，唱咏偈言：天上地下，唯我独尊！

　　如今，寿国公坐而唱诵之诗，与佛祖当年偈语，论意境，论气势，论胸襟胆魄，恐怕只在伯仲之间！

　　于是，殿堂内外，一片鸡飞狗跳。

　　所以，即使那位寿国公今年不过两岁，只是区区稚童。

　　于是，纵然只是听到这四句诗，但人们也无法不震怖，不得不膜拜。',10059,10176);
insert into ds_book values(null,10177,'短暂的失神后，许希立刻想起了自己的职责，于是一边连忙赶紧派人去通知一直守在这殿外的内殿头王守规，一边爬起来，来到那床榻之前，恭身拜道：“国公，臣来为国公把脉了……”“可！”珠帘之后，那稚嫩的声音忽地响起：“有劳翰林！”

　　许希闻言，浑身一震，眼帘里的震撼与敬畏之色，更加浓郁。

　　于是，他蹑手蹑脚的迈步上前，根本不敢抬头，小心翼翼的掀开珠帘。

　　一只小手却在此刻轻轻伸到了他的眼皮子面前。

　　白嫩嫩的小手，热乎乎的，但在许希眼中却不啻撑天之掌！

　　饱读诗书的翰林医官，不由自主的想起了史书上的种种文字描述。

　　“高辛生而神灵，自言其名。普施利物，不于其身。聪以知远，明以察微……”这是史记的记述。

　　“天命玄鸟，降而生商！”这是诗经的描述。

　　自古以来，举凡圣王雄主，大抵都有着类似的记载、描述。

　　这亦是儒家虔信的信条之一：天人感应！

　　这可是真理！

　　不容置喙的真理！

　　于是，许希的手都有些颤抖了。

　　他的心脏更是扑通扑通的跳个不停！

　　“翰林不必拘谨！”赵昕看着这位前世熟悉无比的太医，心中感叹了一声，悠悠开口安慰着。

　　内心之中，他很清楚，自己选的这条道路是正确的。

　　虽是有些作弊。

　　但，欲要做大事，就必须作弊！

　　就必须用这些计谋来给自己造势、建威！

　　如此才能避免重蹈覆辙！

　　想到这里，赵昕的眼神就变得坚定起来，前世君临大宋数十年养成的气势也渐渐散发开来。

　　让在他面前的许希感觉仿佛自己面前的这位小小的稚童，威如大日，难以直视。

　　当然了，这其中大部分是心理作用。

　　他颤抖着将手轻轻放到眼前的小手脉搏上，深深吸了一口气，强迫自己冷静下来，然后闭上眼睛，感知着脉搏，良久许希不可思议的睁开眼睛，看着眼前恍如新生一般的寿国公，终是忍不住跪下来拜道：“国公……您……您……”

　　许希记得很清楚，今天傍晚时分，他才刚刚为这位因重病而不省人事的国公把脉。

　　彼时，国公的脉搏已是微不可查，呼吸微弱，已是残烛之光，油尽之状。

　　但现在……

　　国公脉搏平稳，呼吸平缓，眼神炯炯有光，面色红润……根本不似病入膏肓之人，更不像一个卧床将近半个月，不省人事已数日之久的孩子。

　　恐怕便是正常的两岁孩子甚至三四岁的孩子，也未必比这位国公的身体更健康了！

　　这已经不能用奇迹来形容。

　　只能用神迹来表示！

　　“怎样？”赵昕却是微笑着，故作神秘的问道。

　　“国公千秋！”许希战战兢兢的跪下来，此刻他胸膛虽有千言万语，但话到嘴边，却只剩下这四个字！

　　赵昕微笑着，看着身前的许希，眼中略显得意。

　　许希的反应，完全在他的预料之中，因前世他醒转后就是如此。

　　原本的沉珂，一扫而净，不止如此，原本这具身躯的隐患，也消失不见。

　　这自是引起了一番轰动，成为了这汴京城的传说。

　　可惜，彼时的他，未能把握住这个机会，反倒是亲手将之葬送。

　　为了不引发关注，为了不漏出马脚，他拼命掩饰，拼命的将自己打扮成一个寻常孩童。

　　于是，喧嚣过后，一切回归平静，远离了聚焦的他，却还自也以为得计，以为能够猥琐发育。

　　但他当时哪知道这世界的残酷与无情？

　　这世上连贩夫走卒都知道，宁为鸡头，不为牛尾，何况是帝王之子，未来国家的君王呢？

　　作为皇子，身为君王，平庸就是最大的原罪！

　　平庸意味着无能，无能等于没有人崇拜和畏惧，没有人崇拜，没有人畏惧，就意味着失去了作为君王最大的一个优势！

　　于是待他成年即位，再也无力撼动那沉珂如山的大宋朝堂。
','　　即使是费劲心机，用尽手段，终究也不过缝缝补补罢了，于大局于大势并无补益。

　　纵然是那些夹缝之中做出来的成绩，在他的晚年，也大多成为了一纸空文或反过来变成了害民残民的恶政，一如历史上的王安石变法。

　　如今，重头再来，赵昕自不会重蹈覆辙。

　　天授不取，必遭天谴！

　　此世，赵昕必要将这天下风云与四海焦点，统统聚焦到自己身上。

　　让自身变成一个火炬，一个灯塔。

　　将那万万千的希望，万万千的目光，统统变成他的力量与养分！

　　内心想着这些，赵昕表面却是异常平静。

　　他微微伸手，拉着许希的衣领，问道：“翰林，孤的身体如何？”

　　“臣行医二十载，未尝见有比国公更稳健的脉象！”许希顿首答道：“臣惶恐，为天下而喜！”

　　“自当如此！”赵昕平淡无比的道：“孤来此世，当为尧舜！欲作尧舜，焉能无一个好身体？”

　　许希听着，浑身战栗。

　　而在珠帘外的宫女、宦官们，则已经是趴在地上，连头都不敢抬了。

　　而这正是赵昕想要的结果！

　　一个君王，当有的威慑与威仪！

　　至于会不会被人当成妖怪，送上火刑架？

　　且不谈，他乃是当朝官家的独子，这大宋的唯一国本。

　　便是单论国情、文化，也不必有这个担忧！

　　翻开历史书，就能够理解了。

　　殷契，母曰简狄，有娀氏之女，为帝喾次妃。三人行浴，见玄鸟堕其卵，简狄取吞之，因孕生契——《史记。殷本纪》

　　周后稷，名弃。其母有邰氏女，曰姜原。姜原为帝喾元妃。姜原出野，见巨人迹，心忻然说，欲践之，践之而身动如孕者——《史记。周本纪》

　　其先刘媪尝息大泽之陂，梦与神遇。是时雷电晦冥，太公往视，则见蛟龙於其上。已而有身，遂产高祖——《史记。高祖本纪》

　　便是本朝，也有类似的记载。

　　太祖之生‘赤光绕室，异香经宿不散。体有金色，三日不变！’，而太宗之生‘后梦神人捧日以授，已而有娠，遂生帝于浚仪官舍。是夜，赤光上腾如火，闾巷闻有异香……’。

　　所以呢，根本不必担忧被人送上火刑架什么的。

　　恐怕，当朝宰辅与他的父亲，那位当朝官家，知道了赵昕的这些表现，只会高兴。

　　说不定还会弹冠相庆！

　　特别是那些文人士大夫们，更会泪流满面——自孔子迄今，他们盼了差不多一千五百年，终于天降圣王来拯救他们这些迷途羔羊了！

　　恐怕，接下来这汴京城里的烟花场所的生意要爆棚了！

　　唯一的可虑之处，大抵便在于赵昕的那位祖父了。

　　想起自己的祖父，即使赵昕已两世为人，更当了三十年的帝王，也是忍不住叹息了一声。

　　这天下，只见过坑爹坑祖的败家子。

　　谁见过坑儿坑孙的人？

　　而赵昕的祖父，那位大宋真宗膺符稽古神功让德文明武定章圣元孝皇帝，却是硬生生的将自己的子孙坑了个泪流满面！

　　历史上，就是这位真宗皇帝在位之时，挖了一个巨大的财政与经济、正治大坑，将当今官家以及之后的历代大宋天子坑的泪流满面。

　　北宋的问题，泰半源头都是这位先帝搞出来的。

　　如今，便是赵昕再来一世，想要建立威权，却也难免要面对自家祖父当年挖的另一个坑——天书！

　　因为如今这大宋朝堂上的宰辅们，大抵都是经历过当年的天书运动的打击幸存下来的。

　　对于神神道道的事情，在内心都会不由自主的有疑虑，有怀疑，甚至有抗拒。

　　想着这些，赵昕心中就微不可查的叹了口气。

　　若他真的只是一个两岁的孩子，或者如前世一般，刚刚穿越，可能还有可能被自家祖父坑个泪流满面。

　　但……

　　如今，赵昕心中毫无波澜。

　　三十余年帝王生涯，不止让他成长了起来，也令他胸中满腹经纶，于这大宋内外诸事，更是烂熟于心。

　　在事实上，他已经开挂。
','　　于是，他自信可以凭借自己的表现来说服、威压住那大宋宰辅执政们。

　　毕竟，谁都不会想到，一个两岁的孩子的身体里居然藏着一个君临天下三十多年，又有着来自千年后的人生的老怪物！

　　自然，只能被他拿捏的死死的！

　　唯一的问题只在，如今这朝堂上的宰臣、执政，赵昕都不是太熟。

　　只有些粗浅的印象。

　　这也是没办法，前世，他最初十余年都在埋头装傻，等他终于即位，现在朝堂上还在活跃的宰辅执政，不是致仕便是已然去世。

　　他所能知的，也不过是些名字以及记载的文字而已。

　　“这便需要好好谋划谋划了！”赵昕轻轻托起自己的腮帮子，小小的身体，宛如一个求道高人一般陷入了深思之中。

　　这让看到此情此景的许希与宫女宦官们，内心更加敬畏、震怖，于是连呼吸都不敢大气。

　　“如今的首相，当是申国公、昭文馆大学士吕夷简……”赵昕努力回忆着：“而次相与从相，应该都处于空缺状态……”

　　“至于枢密院，则应是由章得象担任，为知枢密院……”

　　“三司使当是晏殊！”

　　只是简单的回忆了一下，这三位的履历和文字描述，赵昕就感觉自己有些头疼了。

　　因为这三位都不是一般人。

　　任何一个单独捻出来，都足够赵昕喝上一壶的了。

　　“好在，三司使晏殊此时应该不在汴京！”仔细回忆了一下记忆里看过的一些国史后，赵昕终于长舒一口气。

　　三位宰辅里，他最头疼和自认为最麻烦的，就是这位三司使了。

　　但晏殊此刻，应该已经去了陕西，给去年大败的陕西经略安抚使夏守赟擦屁股。

　　这对赵昕而言，无疑是一个好消息。

　　因为晏殊此人聪智灵敏，善于从细微处察知异常，能举一反三，而且不怕讲真话！

　　特别是不怕讲真话这一点，尤其让赵昕棘手！

　　确实，赵昕没有接触过晏殊，在他成年以前，这位名臣就已经病逝了。

　　但赵昕和晏殊的徒子徒孙们可没少打交道。

　　又臭又硬的王安石，脑子和花岗石一样不开窍的富弼，不是是晏殊的门生就是女婿！

　　此外，晏殊的儿子，晏几道也很好的告诉了赵昕什么叫：就算饿死，死外面，也绝不低头的性格。

　　只是……

　　“吕夷简、章得象也非善茬……”赵昕在心里说着：“朕得好好想想，如何慑服这两人！”

　　吕夷简、章得象，此二人虽然在赵昕看来，没有晏殊那么麻烦。

　　但也只是相对而言。

　　而且，也仅仅是因为这两人比晏殊要圆滑一点。

　　不过也圆滑不到那里去！

　　吕夷简当年连章献明肃太后的面子也不给，直接硬怼了那位当时大权在握，如日中天的摄政皇太后。

　　而章得象则是在地方上摸爬打滚数十年，一步一个台阶，爬到如今位置上的。

　　且，正是章得象，开辟了一个时代！

　　在他之前，大宋有祖训：不得以南人为相！

　　在他之后，这个祖宗制度就被破除了。

　　从此福建人、广东人、江西人纷纷拜相。

　　大宋朝堂上，更出现了福建党，吕惠卿、蔡京就是这个团体的代表人物。

　　而北宋的祖宗制度，到底有多么难撼动，赵昕已经用一世来验证过了。

　　想着这些，赵昕内心就越发谨慎。

　　因他知道，这一世能不能有一个好开头，能不能真正的掌握权力，真正的成为至尊，就看他这接下来的表现了。

　　而他很清楚，他的父亲，那位大宋官家，在得知了他醒来和醒来后的表现，一定会带着吕夷简、章得象等宰臣来此。

　　不独是此事事关重大，便是那位官家不想带，以大宋宰辅们的性格，也会死缠烂打，一定来此。

　　更因为，赵昕实在很清楚，自己父亲的性格与为人——他天性耳根子软，不懂拒绝。

　　特别是不懂拒绝宰辅们的要求。

　　垂拱而治，就是其统治生涯的最大特征！

　　正是在其手中，大宋文官集团的权力与力量，才膨胀到未来的那个地步。

　　“朕只能如此了……”赵昕思来想去，终于下定决心：“借祖宗法度一用！”

　　他知道，那必然会给他未来造成麻烦——毕竟，前世他最头疼最棘手的就是‘祖宗家法’这四个字。

　　而他接下来的行为，则可能会给这曾让他头疼不已的四个字注入全新力量。

　　更可能成为未来他子孙的头号麻烦。

　　但……

　　“朕死之后，哪管洪水滔天！”赵昕嘴角冷笑着：“何况，若朕不能成功，大宋王朝注定灭亡！”

　　内心，他更有着一个疯狂的念头：反正，赵家坑儿坑孙是传统了。

　　真宗坑当今，当今坑他，他坑一坑子孙，又有何妨？

　　难道，贫僧摸得，贫道就摸不得了？

　　岂有此理？',10059,10177);
insert into ds_book values(null,10178,'噹——
　　
　　    噹——
　　
　　    悠扬的钟声在云间来回飘荡，作为三千世界的中心，洪荒五部洲也迎来了一日的清晨，太阳星自东天升起，众星隐退于天穹。
　　
　　    东胜神州西北，临近中神州的一处不起眼角落，一座润薄丝滑的大阵宛若倒扣的琉璃碗，将数十座翠峰罩在其中。
　　
　　    阳光照耀下，大阵阵壁折射出淡淡的七彩光芒，一股股肉眼可见的灵气在阵内来回飘荡。
　　
　　    山峦处，仙禽灵兽欢嬉其中；云雾间，偶有几道身形惊鸿一现。
　　
　　    袅袅轻烟起，丝丝弦乐落。
　　
　　    一些林间阁楼旁的空地上，也有不少人影盘坐吐纳、腾飞漫舞，凑成了一幅仙山景图。
　　
　　    伴着晨光，有朵白云自东海边缓缓飘来，径直飞到这座大阵附近。
　　
　　    云上站着一高一矮两道身影，高的是一位头发花白的老道，他带着一名八九岁模样的灵秀女童。
　　
　　    白云悠悠心悠悠，清风伴左何须愁？
　　
　　    便听老道慨声而歌：
　　
　　    “鸿蒙开辟龙凤劫，万元千会弹指过。
　　
　　    不见仙台登临阁，只闻重霄九华歌。
　　
　　    渡人渡己度幽河，笑人笑神消灾祸。
　　
　　    问君何以眷故里，先贤折骨得运落。
　　
　　    灵娥你且听好！
　　
　　    话自上古巫妖大战后，天道大兴人族，我人族炼气士渐渐占据除北俱芦洲之外大多之地，遍布三千大世，无数小千世界，但南赡部洲因是人族气运之所，故限制我等进出。
　　
　　    此地乃东胜神州，三界一等一的修行之地。
　　
　　    灵娥，你瞧前面这些仙山，是不是钟秀慧灵，十分的气派啊。”
　　
　　    那女童乖巧的点点头，满是灵气的眸子轻轻眨着，还有些婴儿肥的脸蛋上带着满是期待的笑意。
　　
　　    她开口应答，声音宛若幼鸟初啼，婉转动听，但总归带着少许怯弱，“嗯，很气派呢！”
　　
　　    “能在接近中神州之地占据一处灵脉，咱们宗门实力那是无比雄厚！”
　　
　　    老道颇为满意的抚须而笑，得意间还不忘甩了下拂尘。
　　
　　    身着莲花小裙的女童小声问：“那师父，咱们为什么不去中神州占一处灵脉呢？”
　　
　　    老道顿时被问住了，讪笑了声，“中神州之地太多厉害人物，在那占灵脉每天都不安生，倒是不如在此地清净自在……
　　
　　    灵娥啊。”
　　
　　    女童像模像样的拱手低头，“徒儿在！”
　　
　　    “今日为师带你进此仙门，今后你要好好修行，不可有半分懈怠，争取早日修炼有成，踏仙途、求长生，得那份逍遥道果！”
　　
　　    女童头一歪，小声问：“可是师父……您成仙了吗？”
　　','　　    “咳！”老道捂住嘴咳嗽了声，“为师早些年修行出了些差错，不过成仙也就在这一二十年间了。
　　
　　    走，且随为师入阵。
　　
　　    你要记住，咱们道承名为【度仙门】，开山祖师乃当今仙神榜上赫赫有名的西昆仑度厄真人，所传道承为【一气正天道】，这是极高深的长生妙法！
　　
　　    可都记住了？这可是你今后的跟脚，不可忘却哦。”
　　
　　    “嗯！徒儿都记住了！”
　　
　　    女童十分认真地点点头，老道甩了甩拂尘，驾着白云朝着前方大阵缓缓靠近，手中也拿出了一只巴掌大小的玉符。
　　
　　    就见玉符闪烁出盈盈绿光，护山大阵便缓缓裂出了一条缝隙，容老道带着女童驾云入内。
　　
　　    这对师徒刚进阵，几只白鹤就从云间低掠而来，其上站着几名身着道袍彩裙的年轻人，正是此时负责巡山的门内弟子。
　　
　　    他们向前与老道见礼打了个招呼，口称‘齐缘师叔’，问过这女童是这老道新收的徒弟之后，便踩着白鹤潇洒离开。
　　
　　    女童那双大眼亮晶晶的，倒映着那两位身姿婀娜的女弟子背影。
　　
　　    “师父，灵娥什么时候能踩着仙鹤御空呀。”
　　
　　    “待你炼出了胸中五气，自可御物而行，”老道齐源抚须笑道，“你见那是仙鹤，其实都是一些法器所化，不要着急，修行要慢慢来才是。
　　
　　    为师先带你回咱们峰上，再为你办理入门诸多事务。
　　
　　    虽说咱们一脉如今只有你我师徒三人，但也在门内独占了一座山头，这着实是莫大的殊荣。”
　　
　　    齐源说到这些时，那张有些布满风霜的老脸上也露出几分傲色。
　　
　　    女童的关注点却根本不在‘独占山头’上，她扳着手指头数了数。
　　
　　    三人？
　　
　　    “师父，可是咱们只有两个人呀。”
　　
　　    “哦？为师这一路上没告诉你吗？瞧为师这记性。”
　　
　　    齐源老道抬头看了看天上飘过的几朵白云，轻飘飘地道了句，“你上面还有一个师兄，为师百年前收的徒弟，现如今，也算是……嗯，能独挡一面的良才了。
　　
　　    就是，呵呵呵……”
　　
　　    女童踮了踮脚，“师父您笑的好奇怪呀。”
　　
　　    “灵娥你一定要记住，”齐源低头看着自己刚从一处大千世界捡回来的宝贝徒弟，面露正色，双目蕴光，脸上的褶皱似乎刚好凑成了两个大字——
　　
　　    严肃。
　　
　　    女童天资出众，也是颇为聪明伶俐，自幼年时便知礼仪、通学识，见师父如此严肃，也立刻打起精神，专注听训。
　　
　　    老道突然又轻轻一叹，像是泄气了一般，低声道：“你大师兄练功，嗯，也出了点问题，经常会胡言乱语，而且还有一些歪门邪道的论调。
　　
　　    你今后可以找他请教修行，但千万千万，不要听他说那些做人的道理！
　　
　　    为人处世方面，为师会着重教你。”
　　
　　    女童眨眨眼，虽然有些不明所以，但还是乖巧地点头应了声：
　　
　　    “嗯！徒儿知道了！”
　　','　　    老道这才稍微松了口气，手中拂尘对着前方轻轻晃了晃。
　　
　　    “瞧，这就是咱们的小琼峰了。”
　　
　　    顺着拂尘飘起的尾尖看去，就见在几座挺拔山峰之间，夹杂着一座有点‘发育不良’的矮山头。
　　
　　    不同于山门内各处‘雕梁画栋藏于林，飞檐宝塔挂尖顶’的景象，这座山头更质朴也更简单，像是一片平日里少有人踏足之地；
　　
　　    茂密的丛林中能见到许多珍禽走兽，仅有的几座建筑物，就是在半山腰小湖旁的两只草庐，以及草庐旁的几处药圃。
　　
　　    老道怡然自得，驾着白云，带女童径直落去了半山腰处，又经过了一层简单的阵法。
　　
　　    这里的阵法只有隔绝外部探查的效果，因度仙门门规限制，护山大阵之内，只有后山禁地设置有防护大阵。
　　
　　    落到茅庐前，白云自行消散。
　　
　　    女童的布靴踩在还沾着露水的短草上，柔柔软软，草木芬芳伴随清风徐来，让她不自觉陶醉在湖光美景之间，粉嫩的小嘴禁不住轻轻的赞叹。
　　
　　    山中日光刚刚落下，小湖上波光粼粼；
　　
　　    水中几条灵鱼带着晶莹的水滴跃出水面，仿佛是在给新来的小炼气士打着招呼。
　　
　　    老道含笑观察着小徒弟的反应，朗声道：“长寿啊，还不出来见一见你师妹？”
　　
　　    女童下意识看向了房门禁闭的茅庐，心底泛起了少许期待。
　　
　　    仙门中修行的师兄，肯定是一位英明神武、风度翩翩的仙人，肯定像极了自己从小听到的传说故事中那些斩妖除魔的英雄豪杰……
　　
　　    然而，茅庐安安静静，其内毫无动静。
　　
　　    老道又喊了声：“长寿？你在屋里躲着作甚？还不好意思了怎么？
　　
　　    奇怪，气息明明是在里面。”
　　
　　    低喃声中，老道拉着女童走向了茅庐，抬手推开两扇木门，一股奇异的药香扑面而来，老道眼一瞪，看到了自己感知到的气息源头——
　　
　　    那是一只摆放在木床上的小纸人！
　　
　　    “哦？”
　　
　　    这一老一小突然开始前摇后晃，老道面色一变，拽着女童就向外急退，又禁不住破口大骂：
　　
　　    “糟了，是长寿配的软仙香！”
　　
　　    女童顿时感觉天璇地转，虽然被师父拉着，但立刻就朝着一旁歪倒。
　　
　　    哗！
　　
　　    水声？
　　
　　    刚要倒地时，女童禁不住循着水声看去；
　　
　　    湖面上，一道修长的身影正呈冲天而起的态势，他只穿着一条黑色长裤，精壮且匀称的肌肉在阳光照耀下闪烁着微弱的亮光，湿漉漉的长发甩出两道亮晶晶的水帘……
　　
　　    阳光刚好，这青年那还算英俊的脸庞映在那女童眼底，让她小脸瞬间蹿红。
　　
　　    但她尚未修行，如何禁得住药力上头，不等完全摔倒就彻底昏了过去，小脸依旧红彤彤。
　　
　　    果然，是自己想象中……
　　
　　    英武的大师兄！',10060,10178);
insert into ds_book values(null,10179,'蓝灵娥做个梦。
　　梦里面她被一位老神仙收做了徒弟，还带回了神仙的住所，见到了一位从水里面跳出来的英俊师兄……
　　呃，好像这不是梦，就是刚刚发生的事。
　　迷迷糊糊间，蓝灵娥又听到了自己师父的嗓音，只是此时的师父有点凶悍，跟自己印象中的慈祥老神仙相差甚远。
　　“混账！翅膀硬了是不是！现在连师父都敢算计了！”
　　然后，蓝灵娥就听到了那温润温雅的嗓音：
　　“师父您消消气，弟子只是防患于未然，又刚好要修行水遁之法，就做了这防贼的布置去了湖中修行。
　　弟子不知师父您今日突然赶回来，没能及时撤掉，还请师父原谅。”
　　师兄说话不急不缓的，让人不自觉就想多听几句呢。
　　紧接着，蓝灵娥又听师父长长的叹了口气。
　　竹床边，老道拍拍手，满是无奈地抱怨着：“我说长寿啊，这是在山门内，你做这种布置有什么用啊？
　　还防贼，咱们小琼峰就差把这个琼字写成穷字了！哪里会有什么贼来光顾咱们！”
　　长寿？
　　师兄就是叫长寿吗？
　　好朴素的道号呢，又透露出了师兄质朴单纯的美好愿望。
　　蓝灵娥突然发现，自己虽然能听到外面的动静，却根本无法睁开双眼，眼皮十分沉重，浑身也没什么力气。
　　师兄又说话了，嗓音好温暖，给自己的感觉，好像母亲大人……
　　“师父此言有失偏颇，山门内并非就没了危险。
　　峰与峰之间近年竞争激烈，山门长老们又不怎么关心这种事，而弟子又是咱们这一脉仅有、哦不，唯二的弟子，必要的谨慎还是需要的。
　　本来我们小琼峰在门内存在感就偏低，也没什么靠山，说不定就会有人想要夺走咱们这一亩三分地，暗施算计。”
　　师兄刚说完，又听老师父埋怨道：
　　“咱们度仙门门规森严，怎可能会有这般事发生？
　　罢了罢了！为师说不得你了！整天这么多歪道理！也不见你修为怎么升！
　　你在此地等灵娥醒过来，拿着为师的令牌，就带她去主峰登录名册，领取正式弟子的身份牌和月供！
　　真是，气煞我也！”
　　老道一扫衣袖，从竹椅上起身，估计是刚才药劲还没过，又是一个踉跄，让这老道老脸一红。
　　“气煞我也！”
　　“师父您慢些。”
　　“哼！为师闭关参悟无上妙道去了！”
　　齐源道长狠狠地一跺脚，身形化作一缕青烟消失在此处草庐；
　　眨眼的功夫，隔壁草庐顿时传来了一阵叮铃哐当的响声，显然是道长解除法术后又是一个重心不稳。
　　“唉……”','　　站在门前的青年轻轻一叹。
　　伴着这声叹息，竹床上躺着的女童双眼睁开了一条缝隙，看到了此时那个低头思索的身影。
　　师兄个头好高呢。
　　“师父的底子还是太弱了些，神魂之力不足，恐怕难以扛过成仙的天劫。”
　　这些话，都是什么意思……
　　倦意再次袭来，蓝灵娥不自觉又轻轻闭上双眼，很快又听到了越发清晰的脚步声。
　　莫看她此时只有九岁，因灵智开的早，又生在一个人族俗世的权贵家，自小学习礼法，对各种事已经懵懵懂懂、一知半解。
　　这般孤男寡女的情形，且一个陌生男人不断靠近自己，这在蓝灵娥看来是不尊礼法的。
　　但如果是自己师兄，以后就是如同亲兄长一般的人，好像，也没什么……
　　“蓝师妹，我是你师兄李长寿。
　　现在我为你缓解软仙香的药力，如果你能听到的话，请不要把我当做变态，我是一个价值观很正的男人。
　　呃，在说什么梦话，她刚开始修行，哪里抵得住这药力。”
　　变态？价值观？
　　这些关于修仙的专用辞藻好难理解……
　　师兄不愧是炼气士！
　　蓝灵娥想努力做出回应，避免在师兄面前太过于失礼，但自己完全没有一丝一毫的力气，只有心念在活动。
　　突然间，她感觉一张大手轻轻放在了自己额头，一缕缕清清凉凉的气息从额头汇入，瞬间流遍全身，让她感觉异常舒适。
　　师兄在为自己疗伤……
　　蓝灵娥心念不知为何有些杂乱，心思飘到了云端，迷迷蒙蒙又真真切切。
　　李长寿看着床上平躺的这个小姑娘，皱眉一阵思索。
　　虽然师父此前就说了很久想再收一个徒弟，自己也做足了心理准备，迎接小师妹或者小师弟的到来，但总归有几件事，他还是颇为在意的。
　　‘趁机查看下她魂魄吧。’
　　李长寿散出一缕清凉的气息，轻轻触碰着蓝灵娥的生灵本源之所在。
　　嗯，魂魄与身体完美融洽，没有丝毫违和感，应该没被夺舍。
　　资质似乎也不错，水与木的相性，就是不知道脾性如何。
　　小师妹这个年纪，性格应该已经成型了，希望不是那种到处惹祸的性子……
　　不过，看长相以后也可能是个美人，自古红颜多祸水，这可能是一个冲突爆发点，要尽力避开才行。
　　‘再检查下是不是藏着魔种之类的东西吧。’
　　嗯，这个也是很有必要的检查，虽然发生的概率很低，但也不能排除这种微小的可能性，防患于未然总归是不差的。
　　与此同时……
　　诶？
　　感受着那只大手离开自己额头，开始在各处缓缓滑过，正昏睡的蓝灵娥，小脸也略微有些发红。
　　师、师兄……','　　这样是不是太……
　　那里不可以！
　　很快，李长寿点点头，经过他缜密的检查，小师妹应该不存在什么问题，没被夺舍，没被种魔，没有被下蛊、下咒，也确实是颗修仙的好苗子。
　　入门检查，正式通过！
　　接下来，就是关于开展对师妹的培训课程了，这个也要好好准备。
　　最好，师妹不是那种喜欢惹是生非的性子，这样自己沾上因果的概率，就能大概跟此时保持一致了……
　　李长寿坐在床边略微有些出神，随后便哑然失笑，低喃道：
　　“不过，大概也理解为什么上辈子有那么多萝莉控了。
　　这么可爱，谁顶得住？”
　　萝莉控？
　　可爱？
　　上辈子？
　　蓝灵娥虽然听不懂，但感觉师父果然没说错，师兄有些怪怪的。
　　可能是那些清凉气息发挥了作用，蓝灵娥周身力气恢复了一丝丝，忍不住想睁开眼，小嘴微微张开，发出了一声轻哼。
　　眼前从模糊变得明亮，蓝灵娥总算近距离见到了师兄，果然是一张棱角分明又越看越俊美的面庞，比自己母亲身边的那几位侍卫都要好看呢。
　　就是，此时这位师兄的表情，有些让人……提心吊胆……
　　师兄的眼神好吓人！
　　咕！
　　蓝灵娥吞了口口水，弱小无助又楚楚可怜。
　　就听床边端坐的这青年修士幽幽地问了句：“你刚才，都听到了？”
　　蓝灵娥顿时有些慌了，颤声回着：“没、没有……嗯……”
　　师兄怎么了？自己有哪里惹师兄生气了吗？师兄这种表情，是对她有什么不满意的地方吗？
　　“师兄……”
　　床边的青年缓缓站起身，低头俯瞰着这个粉雕玉琢的小姑娘，目光有少许犹豫，但很快就用低沉的嗓音道：
　　“看着我。
　　刚才我说的这句话，不要跟任何人提起。”
　　“哦，好，”蓝灵娥小声应着，脸蛋红彤彤的，有些不知所措。
　　随后，她见自己师兄摇了摇头，慢慢站起身来走到窗边，对着窗外一阵出神。
　　他叫李长寿，当年拜师时，也在自己的坚持下，道号保持了长寿二字；
　　跟蓝灵娥猜测的也差不了太多，李长寿就是想着自己能活的更长一些，最好能与天地同寿的那种。
　　此刻，李长寿在回忆着，自己刚才自言自语时透露出去的那些信息。
　　最大的破绽，应该就是‘上辈子’这三个字吧。
　　我去！
　　这一百多年千防万防，没想到竟然在新来的小师妹面前暴露了自己的秘密！也是把秘密藏在心底时间太长了，忍不住就开始自言自语！
　　扭头扫了眼在床上正试着坐起来的小姑娘，李长寿摸了摸下巴。
　　果然还是要杀人灭口吧，杀人灭口！
　　竹床上，已经费力坐起来的蓝灵娥，刚好瞄到了自家师兄那道幽冷的目光，禁不住打了个哆嗦……
　　“师兄？”
　　“刚才我说的话，绝对不要跟任何人提起！”
　　“嗯！灵娥记住了！”
　　“一定不要跟任何人提，包括师父在内！”
　　“好的师兄……”
　　“那好，先发个誓，用无上大道的名义！”
　　“呃？呃……”
　　斜斜的日光中，坐在床上的女童额头渐渐挂满黑线，在旁边技术指导的监督下，抬着小手，开始叙述那长达千字、考虑了各种情况和前提条件的……
　　大道誓言。',10060,10179);
insert into ds_book values(null,10180,'刚才，那真的是关于保密的大道誓言吗？
　　走出草庐的时候，蓝灵娥那双宛若黑珍珠一般的眸子有点失去颜色，整个人也是东倒西歪，脚步都有些虚浮。
　　“喏，”旁边一只手掌凑了过来，掌心托着一颗浅绿色的丹药。
　　李长寿温声道：“培元凝息丹，没有任何毒性，药性也十分温和，尚未修行的凡人也可以用来补补元气。”
　　“谢师兄……”
　　蓝灵娥怯生生地应了句，接过丹药，侧身放到了小嘴中。
　　这丹药触碰到口中津液就瞬间融化，宛若一口甘甜的清泉，让她禁不住发出了一声轻哼，瞬间打起了精神。
　　‘这小师妹确实是挺可爱嘛。’
　　李长寿的大手从旁边探了过来，在她头顶轻轻抚过，温声道：
　　“以后你也是小琼峰的一份子了，我先带你在周围逛逛，熟悉熟悉环境。
　　稍后师父过了药劲，咳，师父打完坐，应该会给你传授入门心法，如果修道有什么不明白的可以随时来问我。”
　　“谢谢师兄，”蓝灵娥背着手，细如蚊声的应着。
　　李长寿背着手走向了湖边，“先来看看湖里面养的灵鱼吧，这可都是好东西，也是咱们小琼峰资产的重要组成部分。”
　　蓝灵娥连忙跟了上去，踩在柔软的草地上，踮脚朝着湖内眺望。
　　湖水异常的清澈，里面那一条条游鱼轻松自在无忧无虑的嬉戏着。
　　“看，”李长寿指着几条有着五彩斑斓鳞片的灵鱼，“漂不漂亮？”
　　“嗯！”蓝灵娥重重的点头，也被这些灵鱼吸引了心神，不断发出轻轻的赞叹声。
　　就听一旁传来自家师兄那温柔的嗓音：
　　“等你练出第一口气了，咱们就开个灵鱼宴，这种五彩鳞片的灵鱼名为鳢鲔，不仅味道鲜美，无论煎、蒸、烤、炸，都是一等一的美味，更难得还能为炼气士提升第一口灵气的质量。”
　　蓝灵娥额头顿时挂了两道黑线，“要、要吃的吗？”
　　“不然养它们做什么？”
　　李长寿左手扬起，袖袍挥舞，撒出去了一把米粒，口中还喊着：“开饭了！”
　　一条条灵鱼从四面八方游了过来，湖边也顿时热闹了起来，看得蓝灵娥双眼一阵放光。
　　“给，”那只大手又递了过来，里面却是一只小巧的布包，“这里面是鱼食，你要喜欢，以后每天喂鱼的使命地交给你了。”
　　“嗯！谢谢师兄！”','　　蓝灵娥开心地应了声，接过布包，在里面倒出了一些米碎，朝着湖面洒了下去；
　　看她那小心翼翼的模样，好似这些鱼食会把灵鱼漂亮的鳞片砸破一样。
　　一旁李长寿淡定的笑了笑。
　　啊，每天又少了点活，可以更多时间用在修行上了……
　　从这个角度而言，有个师妹也是挺不错的。
　　蓝灵娥小手一扬，一把把鱼食撒下去，水里面的灵鱼成群结队地晃来晃去，玩的不亦乐乎。
　　李长寿在旁等了一阵，屈指微弹，湖面炸起了两道小小的水柱，两条鳢鲔被推出水面，又被他凭空摄来，用湖水裹成水球，送入了袖口。
　　旁边蓝灵娥看的呆了下，小声问：“师兄为什么要把鱼放进袖子里？”
　　“送礼，”李长寿淡然道，“别看咱们度仙门是修仙门派，人情世故跟俗世也是差不多的，稍后要带你去登记，总不能空手过去。”
　　蓝灵娥眨眨眼，虽然不是很懂，但也还是乖巧地道了句：“让师兄费心了。”
　　“不碍事，玩够了就来这边吧。”
　　李长寿背着手飘去了不远处的药圃，蓝灵娥看了眼湖边扎堆的这群鱼，对它们轻轻挥了挥手，连忙跟了上去。
　　药圃旁，李长寿简单介绍着里面这数百株灵药的种类和功效；
　　蓝灵娥在旁努力记着，并不知道自己已经被师兄划为新晋园丁的她，听着师兄那温暖的嗓音，不由又想起了一直都是温声细语的母亲……
　　小琼峰上景色不错，却也没太多需要介绍的。
　　李长寿带着新来的小师妹在草庐周围转了两圈，给师妹规划出了建造新草庐的区域，就施法招来一朵白云，驾云带着蓝灵娥飞去了群山之间。
　　蓝灵娥忍不住问道：“师兄也可以踩着仙鹤飞空吗？”
　　“嗯，只要能御物都可以，”李长寿对着脚下白云轻轻一点，白云突然冒出一声轻啼，一只硕大的仙鹤展开双翼，驮着两人向前徐徐飞行。
　　蓝灵娥的大眼顿时亮晶晶的，小手拽着师兄的道袍，低头一阵赞叹。
　　“就是些简单的障眼法罢了，比起这些，以后你要在门内御空，也要记得几件事。”
　　“什么事呀师兄。”','　　李长寿清清嗓子，整理下此前准备好的教学思路，还是决定要从小处出发，从小事开始指导师妹。
　　于是，他语重心长地说道：“首先就是在门内御空的高度，不能太高，也不能太低；高处经常有门内一些前辈高人路过，与他们正面碰到了容易冒犯；
　　师妹你要记住，被这些前辈高人关注到，有五成概率会留下好印象，五成概率会留下坏印象；
　　留下好印象不一定会得到什么好处，留下坏印象必然会留下一些隐患。
　　所以，最好就是不被他们注意到，遇到了就行个礼，做好自己本分的事就够了。”
　　“哦，灵娥记住了！”
　　“还有，也不能飞太低，因为太低了容易飞过一些山峰有建筑的区域。
　　门内虽然表面一片祥和，但暗地里也是有竞争的，还有很多人在意一些无聊的排位，如果飞的太低，又容易被他们针对。
　　所以，经过百年的摸索，本师兄总结出了一个适合的山门内御空高度，就是从咱们的住处出发，升空三十丈到五十丈，这个高度很少遇到同门，更不用说前辈高人……”
　　蓝灵娥听着自己师兄的长篇大论，努力将这些都记在心底，又忍不住仰头看着师兄那张棱角分明的面庞。
　　师兄果然很帅气，考虑事情也十分周到……
　　……
　　伴着师兄一路不断的叮嘱声，蓝灵娥被带到了度仙门的主峰。
　　这座山峰位于度仙门群峰的最中央，也是最为挺拔、最高耸的山峰；若破天之剑，贯入了云霄之中。
　　所以，这里也称之为破天峰。
　　破天峰峰顶有一座仙殿，那是掌门和诸位长老、峰主议事之地，平日里也是禁飞区，门人弟子没有特许不可接近；在破天峰半山腰的位置，有一片依山势而建的楼阁殿宇，这里每日都有诸多人影走动。
　　经过师兄介绍，灵娥也了解到，这里是度仙门处理门内事务的‘办事处’，各峰弟子们都要来这里领每个月的月供，并定期汇报自己的修道进展。
　　走在此地青石路上，蓝灵娥惊奇地发现，自己和师兄仿佛隐身了一般，在此地有形形色色的同门，却没有一道目光会落在他们身上。
　　就算偶然有人视线会看向这边，也都会平滑的掠过……
　　李长寿的嗓音在灵娥耳中响起，依然在孜孜不倦地教诲着：“灵娥你要记住，不被人关注，降低自己的存在感，就是避免沾染因果的最好方式。
　　我改良了一门隐藏自身气息的道术，等你修行入门了就传授给你吧。”
　　“嗯，谢谢师兄。”
　　“不用，这都是师兄应该做的，”李长寿笑眯眯的应了句，带着蓝灵娥从路边走过，去了挂着‘百凡殿’牌匾的殿宇。
　　殿内，蓝灵娥看着自己师兄摸出那两条灵鱼，跟一位负责门内登记的中年道长热络地话着家常，忍不住眨了眨眼。
　　师兄他……
　　好成熟的说。',10060,10180);

insert into ds_book values(null,10181,'“喂，雅菲啊，什么事？”

    “没事啊，就是想你了，我亲爱的莉莉。”

    “你那里怎么这么吵？”

    “我在酒吧呢。”

    “哦，羡慕啊，生活潇洒。”

    “嘿，别提了，对了，这么晚了，你怎么还没睡啊？”

    “睡了怎么接你电话啊。”

    “呵，臭假，你在干嘛呢？”

    “赶报表呢，明儿要交上去。”

    “啧啧，忙工作忙到现在，你这是不要你的皮肤了啊？”

    “皮肤好能当饭吃么，能当房租缴么？再说了，我哪有你那么好的命，家里能找到关系进了银行。”

    “行了行了啊，我家到底是个什么情况你又不是不知道，标准的工人阶级，少在这里给我说风凉话。

    他们呐，以为求爷爷告奶奶地把我弄进银行，逢人就说我女儿现在端上了公家的铁饭碗，觉得我日子过得美着呢。

    实际上，也就是当个柜员，整天赔着笑脸，每个月还有一大堆的摊派任务，事儿多福利少，谁都能欺负你，感觉自己都快被揉捏成一个桂圆了。”

    “日子，不就这么过的么。”

    “我可不想这么过，咱才毕业多久啊，要是照这么个过法，以后再找个男人生个娃这辈子也就这么稀里糊涂地下去了，你说说看，咱女人的青春也就那么几年，我自己都觉得亏得慌。”

    “你和赵阳分手了？”

    “分了，早分了，毕业后没多久就分了，他家里让他回老家去，他还想把我也带回去，我跟他回去干嘛啊？

    要是能跟他回去当少奶奶也就算了，偏偏他家里是个农村的，我孙雅菲难不成还得千里迢迢地陪他回老家和他一起拼搏奋斗给他生娃再做家务陪他供房子？”

    “其实，赵阳那个人，还挺不错的。”

    “你要的话你去联系呗，反正咱俩亲闺蜜，分什么你我啊。”

    “呸，没皮没脸的。”

    “哈哈哈…………哦，我朋友来了，先不聊了啊，下次有空出来聚聚，晚安莉莉，早点睡。”

    “晚安，你也注意安全，这么晚了还在酒吧。”

    “好啦好啦，我挂了啊。”

    ————————

    “喂，莉莉，在干嘛呢？”

    “在吃饭。”

    “这都几点了，夜宵还是晚饭啊？”

    “晚饭。”

    “又加班了？”

    “嗯啊，加不完的班。”

    “有个事，拜托你一下。”

    “说呗。”

    “等两个小时后，你打我电话试试，看我能不能接，如果我没接的话，你就……你就……你就报警吧。”

    “孙雅菲，你要干嘛？”

    “我在春熙路上的四季酒店，你记着啊。”

    “喂，孙雅菲，你到底要去干嘛！！！”

    “嘟…………嘟…………嘟…………”

    ————————

    “喂……”

    “孙雅菲，你终于接电话了，我差点要报警了！”

    “没，没事了，莉莉，没事了，我没事了。”

    “你到底去干嘛了？”

    “呜呜呜…………呜呜呜…………”

    “雅菲，你哭什么，你怎么了？”

    “莉莉，我脏了，我不干净了，我不要脸，我是个不要脸的女人，我为了钱，去陪陌生男人睡了，我真是恬不知耻，我真是个臭XX……”

    “雅菲，你…………”
','    “莉莉，我不服啊，凭什么人家能用好的，穿好的，我就只能每天坐在柜台后面一天到晚地受气，凭什么？

    弄得我前阵子给朋友打电话，她居然开口就说‘我不办ETC’！

    我不比她们差，我真的不比她们差，我也想过那种日子，我也想过…………”

    “雅菲，你冷静一下……”

    “莉莉，好了，我到家了，我去洗澡，我要把自己洗干净，洗干净，你早点休息吧，很抱歉，我这个朋友，让你丢脸了。”

    “没有，不是，雅菲……”

    “嘟…………嘟…………嘟…………”

    ———————

    “喂，莉莉。”

    “雅菲，我在，你还好么？”

    “红牌楼的印象酒店，和上次一样。”

    “这…………”

    “莉莉，我想清楚了，我已经不干净了，反正脏一次也是脏，两次也是脏，都已经脏了，也无所谓了。”

    “我觉得你不该继续下去了，雅菲。”

    “两个小时，给我打电话吧，等结束后我去找你吃宵夜。”

    “雅菲，喂，雅菲……”

    “嘟…………嘟…………嘟…………”

    ——————

    “喂，莉莉，在干嘛呢，放假了吧？”

    “没，假期加班，公司最近忙。”

    “过节还加班呢，你们老板可真没人性，看来资本家都一个鸟样。那么，你能请假不？大不了不要那点儿过节加班费了，我请你去泰国旅游。”

    “不成呢，这个项目已经到关键时候了，不方便请假。”

    “唉，项目项目，工作工作，项目就算成了你又分不了几个钱的奖金，何必在那个公司里继续傻乎乎地苦熬呢。”

    “你呢，辞职了？”

    “辞职，老娘我干嘛辞职啊，你不知道啊，那些男人约了我之后，看着我的工作证再让我穿着在银行上班时的制服，眼睛都放红光的样子，呵呵呵；

    老娘脑子进水了才辞职呢，有这工作在，我一单能比得上人家两三单的，做一单就比你一个月的工资加奖金高了。”

    “雅菲，难道你就打算继续做下去么？”

    “先做着吧，莉莉，说心里话吧，我算是看透了，这社会，没啥都可以，就是不能没钱，你没钱，日子就过不舒坦，你没钱，别人就瞧不起你！”

    “可是，你就不想想以后么？”

    “以后，想那么远干嘛啊，先活在当下呗，老实说，莉莉，你动心了没？在学校里时，你可比我漂亮，追你的男孩子可比追我的多多了。”

    “我…………”

    “别碰这个，莉莉，刚我是开玩笑的，这就是个坑，跳进去后，就爬不出来了，你是个好女孩，我不能带坏你。

    真的，在做了两三次之后，我就知道，我爬不出来了，这来钱太快了，真的太快了，一单的钱加小费什么的，比我辛苦上班赚得多多了。

    我价值观崩溃了，你现在再让我回去好好上班赚那点死工资，我是真的上不了的，真的，回不去了。”

    “雅菲，我真心建议你可以结束了，否则你会越来越沉沦进去的。”

    “不过，我这个和会所里不同的，我这个贵的，能舍得约我的，都是不差钱的主儿，嘿嘿，我每次都装作很生涩的样子，告诉他们我才刚出来做这个，因为爹妈身体不好，看病需要钱。

    男人嘛，就吃这一套，明明自己嘴里全是腥，却还想着吃进自己嘴里的能干净一点儿。

    莉莉啊，已经有人说想包养我了，我还在考虑呢。”

    “包养？”

    “对啊，钱给的不少，就是年纪有点大了，也有家庭了，再看看吧。

    说实话吧，做这行，和相亲没什么区别，而且相亲对象条件比在婚介所得高多了。”

    “雅菲，你还是收手吧，过回正常的生活，我觉得这才是正………”

    “行了，等我旅游回来再联系，我给你带点礼物。”

    ———————

    “喂，莉莉，你看我朋友圈了么。”

    “看见了，那个包。”
','    “十多万呢，我一个客户送的，我托人找关系验证过了，是正品，不是水货。”

    “嗯。”

    “而且人也年轻，就比我大两岁，家里有钱，是个富二代，挺单纯的。”

    “怎么，你对人家有兴趣了？”

    “我跟你说啊，这孩子有点内向，现在对我可迷恋着呢，这个月都约我六次了，我感觉啊，再勾兑几下，就能上手了。”

    “那个，恭喜你了。”

    “是吧，我也觉的，这一行毕竟做不了太长久，也总有年纪大的那一天，就跟《琵琶行》里那样；

    我现在算是清楚了，为什么那帮女明星一个个都拼了命地想嫁进豪门了。”

    “他们家很有钱的话，他的父母…………”

    “我知道的，放心吧，我打算过阵子他再找我时我就在套子里戳几个洞，老娘现在已经把这傻小子迷得神魂颠倒的了，等老娘肚子再大了，做亲子鉴定去，绝对是他的种！

    到时候他爹妈肯定就同意让我入门了，再说了，他也不傻，也不可能把我以前干过什么告诉他爹妈的。

    我还问过他，会不会嫌弃我，你知道他说什么？

    他说，每个人都不容易，我为了赚钱给自己爹妈看病，他很佩服我，也很尊重我，想永远和我在一起。

    哎哟哟，笑死我了。”

    “那看来，他人确实还不错。”

    “好了好了，先不和你说了，我现在要去做个头发，回聊哈。”

    “嗯，回聊。”

    ——————————

    “喂，莉莉，我给你说个事儿，老有意思了。”

    “什么事儿啊。”

    “他说他想让我给他生个孩子，哎哟我去，简直和我想到一块儿去了，弄得我昨晚白白浪费时间拿针去跟套儿较劲去了。”

    “看来人家是真的喜欢上你了。”

    “是啊，唉，我这心里还真有点儿愧疚，这傻孩子被我忽悠得一愣一愣的，铁了心地想要和我在一起，还说过阵子要带我去见他爸妈。”

    “那，恭喜你啦雅菲。”

    “对了，他家好像是做外贸服饰的，你等着，莉莉，等我真的进了他们家，我也给你安排个工作，到时候你就得喊我老板娘了。”

    “呵呵，我就算了，倒是你，雅菲，既然人家真心对你了，你也收收心吧。”

    “想什么呐，我早收心了，现在就他一个了，我可不会傻乎乎到捡了芝麻丢了西瓜。等过阵子，让他陪我去买辆车，以后啊，咱俩一起开车去郊外农家乐散心。”

    “行啊，我等你。”

    ————————

    “喂，莉莉，哈哈哈哈哈…………”

    “什么喜事儿啊，笑得这么开心。”

    “莉莉，你知道么，他刚刚打电话让我去建国路上的那家KTV，还故意搞得神神秘秘的。”

    “这是打算给你一个惊喜吧？”

    “哎呀，现在的小男生啊，就是道行太浅了，还想故意瞒着老娘，我觉得啊，应该是要跟我求婚了，因为昨天晚上在一起时，我看见他钱包里有蛋糕和鲜花的票据。”

    “那恭喜你了，真的要有主了。”

    “我这儿已经到KTV了……喂，你好，请问帝王包往哪里走？那边是吧，好的，谢谢你小哥。”

    “啊哈，给我一杯忘情水，换我一夜不流泪…………”

    “我已习惯，你突然间的自我，挥挥洒洒，将自然看通透…………”

    “吵死了，真是的，求婚为什么要选KTV啊。”

    “你这是在炫耀了对吧，别忘了，我可还是单身着呢。”

    “行了行了，莉莉，别担心，我认识他几个哥们儿，是富二代的圈子，等过阵子我也给你介绍一个，你条件又不差。

    呼……终于找到了，不行，我得装一下什么都不知道，哈哈哈，我要装出被惊喜到的模样；

    哎呀，和小男孩谈恋爱，真的跟当他妈一样，啥都要为他考虑。”

    “吱呀…………”

    “来了，来了！”?

    “哇哦！！！！”

    “欢迎欢迎！！”

    “哇哦！！！”

    “看样子，人还挺多的呢，这是把所有朋友都请来见证了吧雅菲，祝福你。”

    “欢迎加入我们！”

    “欢迎加入我们！”

    “欢迎加入…………艾滋俱乐部！”?',10061,10181);
insert into ds_book values(null,10182,'长椅上，一名身穿着老旧皮夹克的男子将手中的漫画合上，放在了身侧。

    漫画封面是两个正在打电话的女人，一个穿着正装，一个则是略显风尘气息，封面边角位置有泛着血色的雪花飘洒，呈现出了一种类似于葬礼的压抑。

    夹克男掏出一根烟咬在嘴里，点上，吐出一口烟圈后，又抿了抿嘴唇，目光里，带着些许追忆。

    一辆兰博基尼向这边驶来，在即将经过长椅时踩下了刹车，稳稳地停住。

    从车上走下来一个身穿着酒红色西服的男子，男子下车后，和夹克男对视了一眼，应该是认识的，却谁也没急着打招呼。

    西服男从兜里掏出了电子烟，一边给加热棒里塞烟弹一边在周围随意地目光逡巡，最终，落在了长椅上的那本漫画上。

    “是头儿的新作？”西服男问道。

    “嗯。”夹克男点点头，他的头发油压压的，哪怕是这冬日的寒风，都无法撼动其刘海丝毫。

    “味道怎么样？”

    “淡了。”

    西服男闻言，眼睛眯了眯，伸手主动将那本漫画拿起来开始翻阅。

    画工、构图、设计上，都无可挑剔，是头儿的水平。

    尤其是最后一幅画，是左右两面合在一起的大图，可以说，无论是在剧情上还是在画风转变上，都形成了一种巨大的反差冲击。

    最开始的伤痕文学叙述风和都市霓虹的画风在最后形成了双重的反转，好故事，也是好漫画。

    但西服男还是点点头，同意道：

    “确实是太淡了。”

    头儿的作品，他们是知道的，他喜欢追求那种极致的撕裂感，无论是剧情上还是从画面渲染上，都能够给人以极大的压迫，让人看的时候连呼吸都变得小心翼翼。

    而这部漫画，相较于头儿以前的作品，就像是做惯了硬菜的大厨忽然就炒出了一盘西蓝花，佐料仅仅是撒上些许的盐巴。

    “你们来得可真早。”

    马路对面，一男一女正结伴走来。

    他们是一对姐弟，弟弟穿着黑色的羽绒服，戴着帽子和围巾，走路时，缩脖子缩脚，有些哆嗦，显然，对室外的寒冷很不适应。

    姐姐则是一件白色的羽绒服，天蓝色的牛仔裤，不是瓜子脸，有点圆润，但面容也是精致得很，给人一种很清纯的感觉。

    “思瑶，思宇，你们来啦。”

    西服男很开心地打着招呼，尤其是在面对女孩儿时，更显热情。

    “邓歌，快擦擦你的口水。”

    每个弟弟对任何一个企图想当自己姐夫的男人都会带着一种天然的敌意，秦思宇也不例外。

    但每个预备役姐夫往往都会对自己的小舅子带着一种极大的包容；

    当然了，一旦过了预备役之后，就开始提防自己的小舅子以防止自己的妻子成为扶弟魔。

    “思宇啊，你怎么出来了，今儿天凉，小心别感冒了。”

    嘘寒问暖，态度诚恳。

    秦思宇走到长椅边，没再搭理邓歌，而是看向了夹克男，脸上露出了微笑：

    “强哥，你还是单身么？”

    夹克男叫许强，年纪是当初这个圈子里最大的，那时候大家普遍还是大学生或者刚毕业的年纪，但许强已经是叔叔辈了，却一直单身着，所以，他的这方面一直是大家调侃打趣的目标。

    许强摇摇头，伸手抓了抓油腻到可以反光的头发，回应道：“还早。”

    秦思瑶则是从邓歌手中接过了漫画，

    邓歌在一旁有些殷勤地介绍道：

    “这是头儿的新作，看样子，是几个月前画的。”

    秦思瑶开始翻阅这部漫画，漫画很薄，故事也不长，如果不去细细品味画工的话，能看得很快。

    翻到最后以一页后，秦思瑶将漫画放下，抿了抿嘴唇。

    “怎么了，头儿的漫画怎么了？”

    秦思宇从姐姐手里拿过了漫画，翻了一会儿后，有些诧异道：

    “头儿怎么会画这种作品出来？”

    坐在长椅上的许强则是猜测道：

    “可能，头儿是缺钱了吧。”

    如果不缺钱，依照头儿的性格，是不会画这种轻口味的漫画的。

    “头儿也是的，缺钱用，为什么不找我。”邓歌在旁边说道。

    秦思宇没好气地瞪了一眼邓歌，怼道：

    “知道你最近两年搞出了几部大红的动漫大电影，赚了很多钱，但你说你在这里秀有什么意思？”

    “秀什么秀？头儿缺钱的话，我会不给么？当初要不是有头儿接济我早回老家蹲着了。”

    “头儿哪怕再缺钱，也不会开口向我们要的。”许强感慨道。

    当即，邓歌和秦思宇也安静了下来，是的，头儿毕竟是头儿，不管日子过得再怎样艰难，他都不会向自己等人开口伸手的。

    这时，一辆机车开了过来，在众人身旁停下，驾驶机车的是一个女人，紧身的机车服将其完美的身材凸显得淋漓尽致。

    女人掀开自己的头盔护目镜，扫了一眼在场的众人，很平淡地道：

    “都来得挺早啊。”

    “阿秋……”

    “秋姐……”

    邓歌等人很是意外，因为他们没想到过眼前这位也会在今天来到这里。

    “嗯，头儿给我发了讯息。”

    阿秋将头盔摘下，挂在了把手上，下了车，将手机掏出来，念道：

    “A栋3单元701，门锁密码110120。”

    众人聚集的位置，正对着富华小区的大门。

    顺着手机里的提示，很快就找到了那处屋子。

    “头儿是打算办聚会么？”

    邓歌一边准备输入门锁密码一边说道。

    工作室解散已经有三年了，解散后，大家基本也都没有再聚过。

    邓歌进入了一家动漫公司，靠着自己的实力和创意，很快成了该公司的管理层，其亲自把关监制的两部动漫电影成了这两年的知名爆款，无论是收入和身份地位都不可同日而语。

    秦思宇的身体不好，工作室解散后，基本就宅在家里，也没出去工作，至于秦思瑶，则是在一家服装公司做设计师。

    许强则是在一家游戏公司上班，996，享受着福报。

    至于阿秋，离开工作室后，去山区当了两年志愿者，年初时才回来。

    “或许……或许吧。”秦思宇有些不确定地说道，“很久没见过头儿了，真挺想他的。”

    头儿的名字叫郑凡，年纪，比许强小一些，但因为是他牵头组建的工作室，所以是工作室里当之无愧的老大。

    在工作室运营的五年时间里，他付出了最多的心血，哪怕最后工作室解散了，众人也都因为各种各样的原因纷纷离开了，他也依然一个人守着工作室。

    每隔一段时间，头儿都会给他们的邮箱里发电子版的漫画，哪怕，这些漫画基本都不可能出版和发行。

    邓歌输入了密码，门锁解除，门被推开。

    门后面，是客厅，但客厅的墙壁则是被暗色系的墙纸覆盖，给人一种极强的压抑感。

    再加上窗帘的紧闭，所以哪怕是白天，屋子里也依旧是黑黢黢的一片。

    “这里，是头儿的家吧？”

    邓歌伸手摸到了门口墙壁上的开关，打开了灯。

    灯并不是很亮，在上头分为三盏，都只能发出淡淡的熏黄色的光线，但也足以将屋子里照满了。

    “墙壁上挂着的，是…………”

    秦思宇从邓歌身边挤过去，走到了墙壁面前，这上面挂着一幅画。

    画有近两米长，一米宽，像是照片一样，被相框罩着。

    画中，是一个侏儒。

    侏儒的面容有些畸形，双腿和双脚都呈现出一种不成比例的粗壮，在侏儒的后背上，还有一把和其矮小身材极不相符的铁剑，铁剑自然不可能是竖直着的，因为侏儒的身高还没铁剑长，所以，铁剑是横着挂在背上，显得很是滑稽。

    “这是薛三。”

    在看到这幅画时，秦思宇的双手开始了颤抖，因为这幅画中的人物，来自于他的创意，这是他的一部长篇漫画中的主角。

    秦思宇个头不高，这一直是他的一个自卑点，所以他的主角，是一个侏儒，一个邪恶的侏儒，这个侏儒有一个癖好，喜欢将嘲讽自己身高的人当作自己的猎物，且对这些猎物进行“再整理”，嫌高就锯掉一截，嫌矮就拉长。

    这个癖好脱胎于西方的神话故事，但也诠释着一种人性的共通。

    “薛三脚么？”

    邓歌走到秦思宇身后发出了一声调侃。
','    侏儒的名字叫薛三，但有一个绰号，叫薛三脚，是当初的漫画读者对其的戏称，因为侏儒的双脚很短，但夸奖的那活儿却比例正常，而秦思宇又是一个很讲究细节的人，所以，每次漫画中的薛三蹲下来时，可以清楚地看见三个脚。

    “这是头儿画的吧。”许强走过来说道。

    “应该是吧，可惜了，思宇的这部作品，当时的销量太差了，毕竟这主角，很难让读者有代入感啊。”邓歌在感慨着。

    当初工作室还在时，头儿曾让每个人都按照自己的想法去塑造出一个角色来，然后再大家一起帮忙将其漫画做出。

    《侏儒薛三》，就是秦思宇的漫画，只不过市场反应是最差的，毕竟，很少有人能够将自己代入到一个丑陋的侏儒角色中去。

    “都好几年过去了，还提这个，有意思么？”秦思宇有些不满邓歌说话的语气。

    其实，人的脾气和性格，确实会因为其所在社会的层次而发生变化的，尤其是现在的邓歌，无疑是一个成功人士，哪怕他不是故意的，但再见到昔日的“落魄”好友时，有些东西，还是会自然而然地流露出来。

    “不不不，这就叫市场把控，当初我们的工作室就是因为把太多的精力分散出去，没能着重于王牌作品，才导致…………”

    “够了。”秦思瑶开口道。

    邓歌马上闭嘴。

    秦思宇对邓歌的话语充耳不闻，只是默默地盯着面前墙壁上的这张侏儒画像。

    邓歌撇撇嘴，转身，看向了另一侧，当即有些惊喜道：

    “思瑶，快来看，这是你的风四娘。”

    这也是一幅人物画像。

    画像中，一个风姿绰绰的女人依靠在门板边，粉面含春，一身与和服很相似的装束，恰到好处的露出了一部分的肌肤，足以让大部分男性心猿意马。

    秦思瑶走到画像前，看着画中的风四娘，有些出神。

    风四娘，是她的漫画作品，这是一个非人非鬼的角色，因为她没有在漫画里交代过风四娘的背景由来，所以当初的读者也只是猜测风四娘可能曾遭遇过感情的背叛或者家庭出现了什么变故。

    因为漫画故事里的风四娘，是一个做事很不守规矩的女人，她开着一家妓院，不同的系列里，她就是在不同的城市或者是不同的年代开着自己的妓院。

    风四娘喜欢奢华，也喜欢折磨人，她奉行着一种另类的处世规则。

    当初，这部漫画的销量还可以，因为漫画里，有不少香艳的画面，细腻、圆润且充满想象力和视觉冲击力，丝毫不逊于那些国外的此道大师，不少读者就是冲着这类的画面来的。

    但要知道，秦思瑶是在刚上大学时加入的工作室，那时的她，还没谈过恋爱，甚至邓歌可以确定，她那时还是处，但偏偏她笔下的画面，却又是那么的老司机。

    邓歌一度认为，自己之所以当初没能追到秦思瑶，不是因为自己太差劲，而是因为任何活生生的男人都PK不过秦思瑶笔下的二次元。

    “这是，我的樊力。”

    许强走到一幅画前停下了脚步，他有些激动地伸手又抓了抓自己油腻腻的头发，带下来不少头皮屑。

    在其面前的画中，是一个背着木柴的樵夫，樵夫很精壮，看起来也很憨厚。

    他是一个樵夫，一个杀人不眨眼的樵夫，他杀人的频率和他砍柴的频率一样，他不是单纯地以杀人为乐，而是机械地习惯性地去杀人。

    这部漫画的销量，和当初秦思宇的薛三一样，属于工作室内垫底的角色，算是扑街货了。

    原因很简单，当代漫画是一个分工很细致的产业链，画工、脚本、剧情设计人物塑造等等都精通的这种全才，还是太少。

    比如秦思宇和许强，他们的优势更多的还是在于实际操作上。

    许强的这部以砍柴屠夫为主角的漫画，其剧情也和他这个人一样，显得有些太过朴实，朴实得，读者完全看不动。

    “没理由头儿给你们画了却不给我画啊，嘿，找到了，阿铭！”

    邓歌手指着画卷上画着一个身材略显瘦削的男子，男子的嘴角有獠牙若隐若现，整个人呈现出一种病态的苍白。

    他叫阿铭，他是一个吸血鬼，是邓歌设计出来的角色。

    可以说，邓歌现在的成功早在当初还在工作室时就显露出了征兆，他的这部以吸血鬼为主题的漫画，在当时工作室的销量上排行第二，仅次于头儿的《魔丸》。

    东方人面孔的吸血鬼，再加上冰冷肆意的性格，搭配上高节奏的血腥刺激故事，市场反应很不错。

    能够让观众喜欢的角色，加上能够引爆观众热血的故事，才是把握住市场的关键，也正是因为坚信这个准则，邓歌才能在这几年里事业上大红大紫。

    漫画里，阿铭的性格也是那种绝对的癫狂，无论面对任何的对手，都是直接掀桌子就上去干。

    同时，阿铭又是孤独的，他不认为自己是吸血鬼，同时也确实不是人类了，他没有什么朋友，每一次疯狂之后，剩下的，是能够让人心疼的清冷。

    也因此，这个角色，有很多的女粉丝。

    阿秋默默地从众人身后走过，

    她似乎有些畏惧，却又有些期待。

    但该来的，还是来了。

    她看见了一幅画，画中是一个面色略微发青的男子，男子蹲在地上，在其身旁，是一片尸骸狼藉。

    他叫梁程，他是一头僵尸。

    他嗜血如命，他残忍绝情。

    他从上古一直活到了现代，时间，带给他的，是一种和世界越来越剧烈的疏离感。

    而他的名字，和他的作者，一样。

    梁程……

    秦思瑶这时已经将注意力从风四娘身上转移了过来，在看见阿秋和其面前的画后，她不由得也沉默了。

    工作室，当初有七个人。

    分别是，头儿，自己和弟弟思宇，邓歌、许强、阿秋，还有，梁程。

    梁程和阿秋，曾是一对情侣，他们进工作室时就已经在一起了，不过在三年多前，梁程死于一场车祸。

    工作室的解散，可以说是起源于梁程的死，但并不是主要的原因。

    梁程的死，让阿秋对很多事情都心灰意懒了，但一个七个人的工作室，离开了两个人，并非不能继续运营下去。

    主要原因是因为工作室一直主打的是恐怖血腥的漫画风格，本就比较小众，且加上政策上的限制和严打，让工作室的生存开始越发地艰难。

    等到工作室人气最高销量最好的《魔丸》系列和《吸血鬼阿铭》系列都被封杀之后，工作室一下子陷入到了一种前途迷茫的窘境。

    邓歌在当时曾强烈建议过工作室应该迎合市场，画一些比较正能量至少是不那么血腥恐怖的题材，这样一来生存环境会更好一些同时更大的受众也能带来更高的收入。

    但当时的头儿，却直接否决了这个建议。

    头儿说大家当初因为喜欢恐怖血腥的题材才聚集在一起的，他不想玷污了大家的初心。

    也因此，工作室的运营，彻底陷入了瘫痪。

    先是邓歌退出，进入了一家动漫公司，开始了自己的事业新起航。

    接下来是秦家姐弟，秦家的家庭条件一般，父母都是工人，秦思宇的身体不好，每年的疗养费都是一个难题，所以秦思瑶不得不选择退出重新选择了行当。

    最后走的，是许强，在其他人都离开了之后，他默默地收拾好了自己的东西，给头儿下了一碗小面后，去了一家游戏公司。

    当年，因为兴趣爱好相投而聚集在一起，并肩走过了五年风风雨雨，最终却敌不过现实的没有不散之宴席的定律。

    在僵尸梁程的身边，靠得很近的地方，还有一幅画，这是阿秋的漫画主角，却不是一个女性角色，而是一个眼眶空洞的男性。

    他叫北，是一个瞎子，擅长弹钢琴，杀人时，喜欢双手放在身前，一边于空气中弹奏着钢琴旋律一边让自己的猎物被虐杀致死。

    这部漫画的主笔是阿秋自己，画风上十分写实，但是在剧情上很薄弱，在不少系列里，往往一开始北就在杀人，似乎整部漫画就是为了杀人而杀人。

    这让当初喜欢恐怖主题的读者也有些受不了，毕竟大家还是需要一些剧情调剂的。

    不过似乎是因为女性视角的独特性，导致北这个角色也吸引了不少铁杆粉丝，所以，使得其销量，还是在侏儒薛三和阿力的上面一点。

    《瞎子北》这部作品，其主角的特性，估计还是和阿秋的家庭背景有关，她的父亲当初就是因公殉职，死在一个罪犯的手上。

    客厅的两侧墙壁，分别挂着三幅画。

    而对门的墙壁上，则单独挂着一幅。

    众人在看完了自己的漫画主角后，很默契地聚集到这幅画面前，画中是一个婴儿，一身戾气，凶焰滔滔。

    这是头儿的漫画，叫《魔丸》，以一个婴儿作为角色。

    无论是在剧情上还是在画面上，都近乎是无可挑剔，可以说，以纯粹的恐怖扭曲的本质，吸引了当初的一大批受众，连邓歌的《吸血鬼阿铭》在热度上都被《魔丸》压在了下面。

    “魔丸，和头儿一样倔啊。”邓歌有些唏嘘道。

    他认为自己是优秀的，但同时，他也认为，头儿是一个比自己更优秀的人。

    只可惜，头儿很倔强，和其笔下的角色一样，明明稍微改变一下，明明稍微适应一下，就能有更好的发展，但头儿却偏偏头铁地继续执拗着。

    说埋怨，还真没有，毕竟，大家可以说都背离了初衷，但唯有头儿，却一直坚守着本心。

    大家心里更多的，还是对头儿的佩服吧。

    “头儿人呢？”秦思宇开口问道。

    客厅里的这七幅画是头儿画的这毋庸置疑，但邀请众人在三年后再聚首的头儿呢？

    许强推开了一侧卧室的门，发现里面亮着灯。

    卧室的床上没有床单，上头整齐地堆叠着所有人的作品系列，有些，是出版了的，有些，则没办法出版而是自己印刷出来的，可以算得上是非法出版物了。

    这上面，是工作室存在的那五年里的记忆堆积，例如《吸血鬼阿铭》《砍柴人》《侏儒薛三》等等这些，在工作室解散之后，众人都会每隔一段时间在邮箱里收到头儿发来的电子稿，是头儿还在默默地继续为大家续画着后面的故事。

    在床下，也有很厚的一叠漫画。

    众人走过去，将下面的漫画捡起来，发现基本上都是和那部两个女人打电话为主题的漫画风格类似的作品。

    头儿一直在坚持着工作室的初衷，但头儿应该是缺钱了，所以画了不少可以变现的作品赚钱。

    在见到这些作品后，邓歌的眉头皱得更厉害了，他有些不满，原本他认为头儿一直是坚守着原则，不忘初心，哪怕赚不到什么钱也无法出名也在所不惜。

    但既然头儿已经在画这些作品赚钱了，证明头儿已经想开了，既然如此，头儿为什么不来找自己？

    难不成，是因为不好意思么？

    邓歌觉得，如果头儿是这样想的话，那真的是玷污了那五年多来大家的情谊。

    就在这时，邓歌的手机响了，标注为“头儿”的微信账号发来一则视频。

    “是头儿的消息？”秦思宇问道。

    邓歌点了点头，同时将手机举起。
','    其余人都站到了邓歌的身后，大家真的很关心头儿现在过得如何，且也很好奇，头儿把大家聚集到这里来是要做什么。

    视频画面中，一开始只有一把椅子，镜头则是有些晃动，应该是头儿在调整手机摄像头角度。

    很快，

    一个背影从镜头中出现，正在向椅子走去。

    这个人穿着暗红色的卫衣，步履很慢，似乎走得很吃力。

    等到视频中的人走到椅子跟前，转过身，面对摄像头时，

    邓歌以及邓歌身后的众人脸上都露出了惊愕之色。

    “好久不见了……大家。”

    视频中的人，确实是头儿，这做不得假。

    但让众人不敢置信的是，此时坐在椅子上的头儿，他的脸，已经瘦得凹陷了下去，露出袖口的手臂也只剩下了皮包骨头，且还在极为清晰地抽搐着。

    “头儿怎么变成这个样子了！”邓歌惊呼道。

    三年前，大家散伙时，头儿看起来也仅仅是因为长时间的伏案创作而显得有些亚健康罢了，这对于现代人来说，根本不算什么。

    但此时头儿的模样，却已然是一具骨架的即视感。

    这是，病了？

    最为纯澈的关系，才最值得回忆，无论现在大家成就高低，混得好坏，谁也无法去抹杀在那个五年的时光里大家意趣相投的情谊。

    “邓歌，你还怪我么？”

    郑凡（头儿）的声音已经很沙哑了，说话时，艰难得如同是在推动着两具生锈的齿轮在摩擦。

    “对不起…………”

    郑凡的声音很是虚弱。

    邓歌咬了咬牙。

    “邓歌，原谅我当初没听你的建议，否则，大家可能不会散伙的，工作室，也应该还在。”

    “我们现在也过得不错。”邓歌自言自语着。

    “我是不想变了，有些东西，有些口味，既然喜欢了，就只想一门心思地一直喜欢下去，不想变，也懒得去变了。

    因为，我本来就没有多久好活了。

    所以，邓歌，所以，大家，请原谅，请原谅我的自私。”

    郑凡似乎是打算站起身，给大家鞠躬致歉，但刚站起来，却又像是力有不逮，又坐了回去，最后，只能坐在椅子上低下了头。

    “五年前，我就检查出了得了一种罕见的绝症，全球，可能也就只有一百多个人患有这个病，在医学上无解。所以，在那个时候，我就知道………知道自己活不了多长了。”

    说到这里，郑凡自嘲式地笑了起来，转而引起了自己的咳嗽，似乎每咳一次，都宛若要背过气一样。

    “抱歉了，为了赚钱，画了一些不是我风格的漫画，其实，感觉还不错。

    那些漫画，我也挺喜欢的，不过，的确不是我最钟情的风格和类型。

    但我当发现自己的身体状况正在不断地恶化且已经预感到了自己最终会瘫痪在病床上苟延残喘的结局时，我决定，去荷兰接受安乐死。

    这些漫画，是我为了凑到去荷兰进行安乐死的款项而画的。

    当你们看到这则视频时，我应该已经在荷兰了吧，呵呵。

    思宇啊，你得注意保护自己的身体，你的身体素质，真的太弱了，呵……当然，我也没资格说你身体差了。

    思瑶，眼光不要那么高了，也是时候找一个伴儿了，嗯，邓歌就别选他了。”

    “…………”邓歌。

    “强哥，你走的那天，给我最后做的那一碗面，味道，我一直没忘。”

    “邓歌，你的电影，我都看了，做得很不错，画面很好，真的很好，可惜了，我们当初的那些作品，估计是没机会漫改了，也不可能上荧幕了。”

    “阿秋，梁程的事，你也该学会放下了，对了，阿秋，在桌子抽屉里，有我留下的遗书，遗产证明也做过公证了，我不剩多少钱了，就剩这间房子，我知道在梁程走后，你一直在做慈善，帮我把这房子卖了，卖的钱，也做做慈善吧。

    画了这么多年的恶魔，临到头，总得留下点什么，所以，我一直没有选择把自己唯一的一套房子卖了筹钱去荷兰。”

    “我的身体，真的已经不行了，说心里话，我不想自己生命的最后一段路，是躺在病床上度过的，所以，今天，是我选择拿来告别的一天。

    真的很高兴，很高兴能够再见到大家。

    很高兴在那五年里，有大家的陪伴，很高兴能和大家一起创造出那么多精彩的故事和角色，我，会想你们的。

    祝愿你们事业有成，身体健康。”

    ……………

    一间病房内，郑凡坐在床边，其目光，在床榻周围摆放着的七本漫画作品上缓缓地扫过。

    《魔丸》《砍柴人》《吸血鬼阿铭》《瞎子北》《风四娘》《侏儒薛三》《僵尸的血》

    当一个人的生命快要走到尽头时，往往最喜欢做的事情，就是回首。

    就像是垂暮老人，躺在靠椅上，一边晒着太阳一边眯着眼。

    “开始吧。”

    郑凡对站在自己面前的一名医生和两名护士说道。

    紧接着，

    他自己也躺到了床上，那张，四周被漫画所包围的病床。

    “郑先生，确认不需要牧师在场么？”出于职业素养，这名医生大卫还是又询问了一遍，同时补充道：“他可以让您的灵魂，在天堂得到安息。”

    郑凡很平静地摇摇头，道：“大卫，我信奉的是魔鬼，我也不会去天堂。”

    大卫耸了耸肩，点点头，示意自己的助手上前开始。

    郑凡缓缓地闭上了眼，

    感知着自己手臂位置有一根冰凉的针刺入了进来。

    呼，

    要结束了么……',10061,10182);
insert into ds_book values(null,10183,'我，

    死了么……

    郑凡认为，自己应该已经死了。

    然而，湿润，温热，久违的暖意，在自己的身上慢慢地游走。

    一开始，这种感觉仅仅是淡淡的、轻微的，很难以捕捉，但渐渐的，感官上的刺激，开始越来越清晰。

    这是，死去的感觉么？

    似乎，

    也不是那么的让人难以接受；

    甚至，

    还有一点舒服。

    神经的输入，像是一条干涸的水渠被重新引入了活水，从滋润龟裂的土地再到润湿最后再到蓄水，这是一个循序渐进的过程。

    伴随着这一切的展开，郑凡对外界的感知，开始越来越敏感。

    他能感受到自己的双手，自己的双脚，以及，自己胸口位置滴落下来的温热液体。

    一股怪异的念头开始自其意识中浮现，

    郑凡开始怀疑，

    自己，

    真的死了？

    没人知道人死后是怎样的局面，哪怕当初工作室的小伙伴们虽然创作过很多关于鬼怪的恐怖故事，但毕竟只是臆想罢了。

    说到底，死去的人，没办法像小学生一样写一份几百字的心得体会再传回来了。

    郑凡开始尝试去做点什么，最先做的，是睁开眼。

    这时的他，有种在愚公移山的感觉，一边是身体各个部分的感知正在快速地恢复着一方面则是无论自己如何努力，都无法睁开。

    像是陷入了一种鬼压床的状态，想反抗，却只能剩下徒劳的挣扎。

    “哐当！”

    响动传来，

    随即是一泼热浪浇面。

    在这一股刺激之下，郑凡终于睁开了眼。

    视线，一开始是模糊的，能感知到些许的光亮，却无法成像。

    紧接着，一片阴影袭来，开始不断地擦拭自己的脸同时也将自己的视线一次次地阻断开。

    如同是刚醒的人，拿着热毛巾洗了一把脸，确实是能获得一段时间的神清气爽。

    郑凡的视线，开始越来越清晰了。
','    首先，他看见的是一张脸，一张年纪大概在十四五岁的少女的脸。

    少女身上穿着一件朴素的长裙，一只手提着铜质脸盆另一只手拿着一条毛巾，正一脸忐忑地看着自己。

    所以说，

    自己刚刚是被这少女失手一下一盆热水泼醒的？

    而自己先前感受到的温热舒适感是她在给自己擦拭身子？

    少女很惊恐，因为自己的疏忽将一盆热水泼在了贵人身上，而这个贵人，是妈妈千叮万嘱要她好好照顾的。

    这半年来，她的工作一直是伺候他，哪怕他一直昏迷着没有苏醒，但她没敢有丝毫的懈怠，最明显的证据就是这个男人卧床半年了，身上连褥疮都没有一个。

    真正照顾过卧床病人的人才清楚，病人身上没有褥疮，得意味着多大的付出。

    但少女却一点怨言都没有，而且还对这份差事很是感激。

    换句话来说，这个男人就是她的命，要是自己出了什么差错，依照妈妈的性子，很可能直接把她一脚踹到勾栏里的红帐子里去，去接待那些身上臭烘烘的客人。

    妈妈的脾气，可不好，而且是非常的不好。

    要是让妈妈知道自己的失误发现床上的湿漉，自己……

    少女的失神并没有持续太长的时间，因为她忽然发现，这个男人的眼睛，竟然睁开了！

    少女眨了眨眼，

    郑凡眨了眨眼，

    4.5秒的沉默，

    “啊！！！”

    少女发出了一声尖叫，

    这叫声让刚刚苏醒的郑凡脑壳一阵抽搐，近乎要被再叫昏过去，这个少女不去练女高音，真的是可惜了。

    “妈妈，他醒了，他醒了！！！”

    少女转身，一边高声呼喊一边向房间外跑去。

    房间里，终于安静了，只剩下郑凡一个人。

    郑凡尝试着催动自己的手脚，一开始还有些麻痹感，但很快就找到了支撑点，有些艰难地从床上爬起，双手撑着床榻下了床。

    双腿有些软，好在事先有准备保持住了平衡才没有直接摔倒在地上。

    就这样喘了一会儿粗气，郑凡才重新释放自己的双手，让自己完全站在了地上，只是背有些弯曲，重心略微下蹲，还在有些小心地维系着稳定。

    整个过程，有点像是新生婴儿重新学习走路一样，这身子，似乎有点过度虚弱了，已然是虚汗淋漓。

    到了这会儿，郑凡才有心思打量起这个房间，木质结构，有些陈旧，房间里的陈设也很复古，角落里有一个梳妆台，上面有一面铜镜。

    “我这是…………”

    根据自己现在所处房间的布置，如果排除那种自己现在被送到横店附属医院的荒唐可能的话，

    自己这是，
','    穿越了？

    作为一名创作者，郑凡对“穿越”这个词自然不会陌生，只不过是真的没想到会发生在自己身上罢了。

    有些踉跄地移步到了梳妆台前，目光，看向那面铜镜。

    几乎没有人没听说过铜镜，但切切实实地亲眼见过和用过的应该不多，毕竟早就是淘汰多少年的东西了，但当郑凡站在镜子面前时，也被铜镜的效果稍稍惊讶到了。

    虽然肯定比不过后世的玻璃镜子，但比自己想象中的效果要好多了。

    郑凡一边看着镜子一边伸手摸了摸自己的脸，镜子里的，是自己的脸，唔，看来，不是魂穿……

    而且，镜子里的这张脸，和自己死时有着一些区别，自己在安乐死前，因为疾病的折磨，已经瘦成皮包骨头了，但现在，似乎脸上多出了一些肉，虽然依旧有些瘦削和苍白，但已经属于正常人可接受程度。

    低下头，郑强这才注意到，自己身上竟然光溜溜的，不光是没有上衣。

    只不过先前醒来时，真的一时没注意到这个。

    人一旦身上没有衣服，就容易没有安全感，尤其是在这个陌生的环境中，这种不安会更加强烈。

    现在想来，那个少女就是在给自己擦着身子？

    郑凡不知道的是，这半年来，那个少女几乎每天都会帮他擦拭身子。

    还是少女失手将一盆水泼自己脸上。

    梳妆台右侧，有一张椅子，椅子上放着一套衣服。

    这套衣服，很熟悉，是一套卫衣，主色调是黑色，其中夹杂着些许暗红，同时，在椅子下面，还有一双靴子。

    这是郑凡自杀时身上所穿的衣服，他喜欢这种款式的衣服，曾经自己设计订做过好多套，因为他觉得，卫衣，能够给自己带来安全感，尤其是当自己把卫衣的帽子放下来遮盖住自己大半张脸时，可以给予自己所需要的安宁。

    有些艰难地将衣服和靴子穿上，郑凡已经累得只能坐在椅子上靠着梳妆台不停喘气了，刚苏醒来的身子，确实太虚弱了，但不管怎样，比自杀时自己那具病躯，已经好了太多太多，最起码，这具身体再静养调理一段时间，应该能复原不少。

    就在这时，郑凡忽然察觉到门口出现了一道人影，还在喘息的他马上抬头看过去。

    一时间，

    郑凡整个人如遭电击，

    房间门口，站着的是一个妇人，年纪在三十五六的样子，此时穿着一身蓝色的长裙，头戴凤簪，唇红荡漾，媚眼天成，这是一个*****的年纪，且这位妇人，有着气质上的优雅又兼具身段上恰到好处的丰腴。

    当然，这个妇人再怎么好看再怎么体格风骚，都不是重点，也不足以让郑凡惊讶成这样，让郑凡真正的震惊的一点在于，

    他，

    认识这个女人！

    而且，

    他曾经亲手画过这个女人！

    “风…………风四娘？”

    郑凡觉得自己是在做梦，难不成，人一旦死了，就会进入一场无休止的梦境之中？

    那这样子看来，似乎死亡，也不再是什么可怕的事情了，反而是一种追求自由的解脱。

    妇人看着站在自己面前的郑凡，

    嘴巴微张，眼眸里竟然有晶莹闪烁，一时间，红唇轻启是在笑，泪水滴落是在哭，已然是失态到了极点。

    到最后，

    妇人干脆双手放于小腹前，双膝弯曲，

    泣声道：

    “主上，您终于醒了！”',10061,10183);
insert into ds_book values(null,10184,' 这是一个靠近沿海城市的小镇，道路两旁还有一些贴满了广告便签的老式电线杆，说明这个小镇并不是靠近经济大城市。

    此时正值春季，街道边的农田一片绿意，还算忙碌的人群，来去匆匆，有朝气蓬勃的学生，骑着老式自行车的上班族，开着小轿车的中产，衬托出这是一个平凡的小镇。

    就在此时，一记惊雷划过天空，轰隆作响，紧接着从远处天边开始，天空变的乌云密布，电闪雷鸣。

    街道上的行人不由加快步伐，匆匆赶路回家或者上班，因为他们知道，接下来就要下雨了，有些人早上走的匆忙，可没有随身携带雨具的习惯。

    “滴嘟，滴嘟，滴嘟！”一阵阵急促的警车声响起，只见警车在小镇的马路上飞驰，看他们前进的目标，是小镇唯一一栋六层的小楼房。

    当这些警车来到楼房底下时，就看到这里已经有一辆警车停在楼下，在警车中还坐着一个青年警察。

    从后来的警车上更是陆陆续续下来十来位身穿制服的人，为首一名男子面色刚毅，身材高大，看其年纪差不多在四十岁上下。

    “赵大队长！”青年警察此时看见来人，当下走出警车立正行礼道。

    来人可不得了，那可是他们这一片区的警队大队长，在他们警队素有威名。

    “上面什么情况，快说！”这位赵大队长是雷厉风行，开口带有一丝质问语气。

    “行凶者是本地一位高三学生，此时他挟持了一名同学在楼顶天台上与我们的人对峙，”青年警察知道事情轻重，当下是直接把楼顶的情况与赵大队长讲了出来。

    “走，我们也上去，边走边说！”赵大队长看了一眼乌云密布的天空，此时已经是下起了淅淅沥沥的小雨，而他直接一挥手，对着身后手下说道。

    “是！”身后众位警察异口同声的回到，接着他们就随着自家大队长走上了这楼梯内。
','    楼房楼顶，天台上。

    此时，一名年约十八岁的青年此时正拿着一把带血的短刀，短刀的刀剑微微刺入被他挟持的另一名青年的脖颈位置，带起了丝丝血痕。

    拿着刀的青年，皮肤黝黑，长相普通，若不是此时手拿短刀，神色狰狞，没人会将他和杀人凶手联系在一起，反倒是更像一个淳朴的农家孩子。

    而被他挟持的青年，皮肤苍白，神色萎靡，如果仔细观察，可以看到，这青年的双手只有肉掌而且一直在流血，原来是他的十根手指全都被人砍断了。

    在两名青年的正前方，则是站着一男一女两名警察，此时这两人全都手持手枪，瞄准着那皮肤黝黑的青年。

    “小兄弟，不要冲动，放下刀，有什么事情咱们好好说，”其中一名警察男子，一边想要靠近，然后一边劝说道。

    “啊！”回答他的则是被挟持青年的一身惨叫，只见黝黑青年一刀刺入被挟持青年的大腿位置，然后拔出短刀继续抵在手上人质的脖颈处。

    “我说过，你们上前一步他就遭殃，全都退回去，不许靠近！”黝黑青年见到警察靠近后，是直接发难，然后恶狠狠的警告道。

    “好好好，我退回去，不要伤害人质！”警察男子没有办法，只能回退到天台入口位置。

    一阵急促的脚步声传来，天台入口处陆陆续续走出数十名警察，当先一人就是那位赵大队长。

    “赵队！”见到赵大队长过来，一男一女两名警察就像是见到主心骨一般，马上敬礼。
','    “不要挡路！”赵大队长可没有空管这些事，直接推开两人后，就双手高举，然后走到了皮肤黝黑的青年面前。

    “你叫雷洛是吧，你为什么要这么做，都是同学，何必要如此残忍？”赵大队长直接开口说道，声音铿锵有力，中气十足。

    “残忍！他开车撞死我父母，他仗着自己父亲有权有势就颠倒黑白，他们一家更是买通一帮地痞流氓逼死我的爷爷奶奶，这样难道不算残忍吗！”被叫做雷洛的青年，此时直接咆哮起来。

    只听得他刚说完，那把短刀又是在挟持青年的大腿上连扎数刀，扎的青年惨嚎不已，原本还有些帅气的脸庞此时更是扭曲变形起来。

    “没想到吧，袁显栋，你这狗杂碎仗着老爹作威作福，完全不把人命当回事，你老妈更是买通黑社会，打死我爷爷奶奶，今日我也要了你全家的命！”雷洛此时对着挟持着的青年缓缓说道，声音饱含怒气，说道最后几个字时更是有一股咬牙切齿的疯狂。

    “雷小兄弟，这些事情只是你初步怀疑而已，没有任何证据能够证明这些事情是他们做的，现在你已经杀了人家父母，难道还要继续错下去吗？”赵大队长见雷洛居然如此残忍，一言不合就动刀子，完全不把人质当回事，忍不住语气一缓，苦苦劝道。

    “我怀疑？人家随便找了一个地痞流氓出来顶包认罪，他们蛇鼠一窝，你叫我这种平民老百姓与他们斗，你觉得还有公道可言？”雷洛此时突然大吼道，接着仿佛是点燃了他心中的怒火一般，直接拿刀连续出刺，刺在了这叫袁显栋的青年腰腹位置。

    此时，这叫袁显栋的青年，从腰腹开始流出大量的鲜血，将他的整个衣服全都染红，再加上此时天空下着小雨，只见他的脚下一片雨水中，全都被他流出的血液染红。

    “雷洛，我能理解你的心情，但是凡事都需要讲究法律，如果你相信我，我来给你家主持公道，不要再继续危害他人了！”赵大队长见袁显栋此时失血过多，快要出现休克现象了，连忙苦劝道。

    “当初我爷爷奶奶就是被那帮以法律为借口的骗子忽悠出去的，结果没想到那帮人都是畜生，与那些地痞流氓都是同伙，我恨今天只杀了他们一家，没有把那帮地痞流氓，衣冠禽兽一起宰了！”雷洛此时神色依旧狰狞，对着赵大队长吼道。

    “雷洛，我以片区警队大队长的身份保证，一定给你家主持公道，你，等等，住手！”赵大队长还想要再继续劝导雷洛，突然，他突然看到雷洛的行为，整个人挥手惊叫道。

    只见雷洛丝毫不相信对方的话，大吼一声后，就将手中短刀刺入袁显栋的脑袋中，接着用力一搅，手中的人质就双眼泛白，全身抽搐颤抖起来。

    “今日我仇已报，最该死之人我一个都没放过！”看着手中的罪魁祸首失去生机，青年面露决绝道。

    接着雷洛大力一脚蹬在了袁显栋的尸体上，将对方踢向赵大队长，然后整个人借着反作用力飞速后退，冲着屋顶边缘处高高一跃，跳下了天台。

    “不好！”赵大队长连忙接住了袁显栋的尸体，不过当他看着雷洛用力一跃，眨眼之间消失在了他眼中后，连忙怒吼道。

    就在此时，天边有数道雷电划过，给这个染血的天台增添了几分悲壮的气息。',10062,10184);
insert into ds_book values(null,10185,'这是一片无尽的星空，周边星星点点闪烁着光点，有大有小，有暗有亮，在这片星空中，有几颗“流星”划过天空。

    这几颗“流星”速度极快，前面一颗是带有金色光芒，而在这一颗后面，则是跟着几颗不同颜色的“流星”。

    这些“流星”的飞行光芒各不相同，居然是红色，蓝色，绿色都有，而且他们时快时慢，好像在追逐着最前面金色的那一颗一样。

    这样的追逐持续了一段时间后，在一片星空和漆黑的虚空交汇处的边上停了下来。

    “凌老怪，前面就是虚空界碑，你已经没有退路了，还是乖乖束手就擒吧，”一丝中正的声音传来。

    “念你修行不易，本宗可以给你网开一面，只要你交出怀中之物，本宗就放你兵解，重入轮回，也不至于落得个生死道消，说不定将来还有一丝可能重新修得道，”后面的光芒中，飞在最前面的一个红色光团中，居然开口说道。

    仔细一看，这些五颜六色的光团，居然不是流星，而是一个个人，他们在星空之中，居然能够凌空而立。

    而刚才开口的红色光团中，是一个一身白袍，留有黑髯，眼睛纯白没有瞳孔的中年男子。

    最前面的那一个金色光团，也就是所谓的凌老怪，知道自己今天是大劫将至，无路可退，也停止了飞行，站立在虚空中。

    此时可以看到此人是一个耄耋老者，脸上布满皱纹，身上穿着一件古代汉服一般的衣服，多有破损，估计是经过一场恶战，此时回头恶狠狠地看着后面的追兵。

    “好，很好，老夫以为准备了这么诸多手段，可以骗过当时你们在场的所有人，没想到是老夫自欺欺人了，你们还是做了南阳仙宫的走狗”这名被叫做凌老怪的老者开口道。

    “也只有你们寻天问道宗的“天算之术”能够算到老夫的下落，不过老夫自问做了诸多手段，谋划了数万年之久，光是抵挡卜算之术的准备，就不下数十种手段，岳天睿，我想你们天算的献祭品，怕是搭上了大半个宗派吧。”凌老怪更是讥讽道
','    “难道就不怕宗派实力大减，最后引狼入室，我想你们开派祖师在天之灵，怕是也不会瞑目吧，”凌老怪自知今天怕是不得有一场恶战，而且多半是躲不过这个劫难了，干脆放开了口角。

    “这个就不劳烦道友操心了，等本宗拿到了你手中之物，借此宝参悟大道，本宗在仙宫的地位自然是水涨船高，到时候本宗门人弟子，也能在福荫下得到庇护，何来引狼入室之说。”被称呼为岳天睿的黑髯男子听了凌老怪的讽刺之后，脸上丝毫没有波动，冷声说道。

    “什么！仙宫会放你留下这件宝物让你也参悟，此宝可是关系能够参悟天地至尊法则之一的！”一声惊呼传来。

    凌老怪突然又想到了什么突然惊讶道“不对，仙宫的人不知道古界里面的具体宝物数目，这次你是自己带人来抢宝，好好好，想不到我一开始以为你是条仙宫的狗，想不到你居然是只狼。”

    “好了，本宗的耐心也是有限的，既然你不肯乖乖就范，那说不得也只能让你今天陨落在这虚空界碑旁了，到时候从你身上取也是一样，动手!布封禁大阵，”岳天睿说道。

    他身后的几人突然从原地消失，在凌老怪面前出现，将凌老怪呈半圆之势围住，彼此之间相隔数十丈。

    站定之后，岳天睿双手掐诀，他的门下弟子也随之行动，每人身上飞出一件宝物，有钟、玺、鼎、古灯等样式。

    飞出的宝物和主人之间仿佛有一丝联系，这些宝物发出一阵阵光芒波动，照射到凌老怪身上。

    凌老怪感觉自己的周身空间像变成了泥浆一样，变的比刚才飞遁来时粘稠了数百倍之多，哪怕自己移动一步，感觉抬脚都是十分的困难。

    而岳天睿此时飞身到凌老怪前方，身上也发出阵阵波动，与宝物之间的波动有些共同之处，他就像是不受禁锢限制一般，慢慢靠近凌老怪。

    此时岳天睿左手拿着一个碧绿玉佩，右手则手握一把黑色古剑，一边缓缓靠近，眼睛则死死盯着凌老怪，以防他有什么后手。

    “其实你们也不必如此小心了，老夫已经油尽灯枯，既然此宝与老夫无缘，那就送给你吧”说完此话，也不见凌老怪有什么动作，其身上就有一个金色圆球飞出，缓缓飘在其身前三尺处。

    此宝居然不受周围禁锢阵法的影响，还微微旋转着。
','    此金色圆球，大小不过成年人拳头般，一只手就可抓取，表面雕刻着几个怪物图案，栩栩如生。

    但是这些怪物在场的几位都没有见识过，有头生独眼的狰狞巨人，有三头六臂背后帯翅的三目魔人，还有一个带着两只羽翅的巨大眼珠。

    绕是岳天睿此等身份和见识，也是站在原地驻足不前的观察起来。

    对于此宝的来历和威能，尚不清楚，但是此宝能在古界深处中如此多年，依旧未被人取得，就可知必定不是凡物，加上天算之术仅仅只是算到此宝神通的一丝皮毛，就花费了巨大代价，他望向此金球的目光就越发炽热起来。

    “怎么，想夺宝的是你，现在宝物就近在眼前，岳宗主怎么又犹豫不决了，”看到岳天睿在此宝出现之后，不仅没有飞身上前，而是停留在原地，凌老怪又是出言讽刺道。

    “凌老怪，休得聒噪，此宝你到手时日不多，怕是还来不及祭炼吧！”岳天睿早已用神识查看了此宝和凌老怪数遍，可没有发现任何异常，神秘金球依旧在微微旋转。

    此时两边都保持着一个很微妙的静止，几息之后，大概是知道凌老怪已经是经过几次大战，压箱底的手段也是用了不少，岳天睿觉得自己太多心了。

    此时宝物在前，只有拿到手里才是最关键的事。

    想到此处，他将左手玉佩向前一抛，玉佩在空中寸寸碎裂开来，化为一团绿色光点，飘散在凌老怪和金球上，然后他右手黑色古剑也是同时飞出，朝着凌老怪笔直飞去，岳天睿紧随在飞剑之后，朝金球飞去。

    “岳宗主血祭修罗剑的大名，老夫还是有所耳闻的，如果是其他宝物，我还真就束手无策了，”看到黑色古剑笔直朝自己飞来，凌老怪居然没有露出丝毫慌张神色。

    只见凌老怪在禁锢之中身形未动，嘴里却念念有词起来，突然，浑身黑光大放，尽与黑色古剑隐隐有一丝共鸣出现，黑色古剑在飞到凌老怪身前两尺远处就停了下来。

    古剑周身也放出黑色光芒，黑芒中略带红光，然后黑色古剑化为一道黑光，朝周边岳天睿的弟子们飞射出去，大有脱离主人的掌控之势。

    “不可能，你居然能够操控本宗炼制的修罗剑，难道！你是数百万年前覆灭的血神宫余孽！”像是想到什么一般，岳天睿突然大惊道。

    黑色古剑的炼制和操控之法，乃是其根据数百万年前参与剿灭的一处远古宗派-血神宫的传承炼制而来，按理说血神宫当时已经覆灭，之后仙界各大势力对其余孽也扫荡了数十万年之久，不应该有人能够存活下来。',10062,10185);
insert into ds_book values(null,10186,'岳天睿全身上下突然红中带紫，脸上七窍也同时流出鲜血，并且身上血气越来越旺盛，隐隐有几道血光破开身体，冲出皮肤。

    像是察觉到什么一般，右手用力一挥手中古剑，朝着凌老怪飞刺而去，妄图杀死施术者来结束秘术的进行。

    黑色古剑在飞到凌老怪眼前时，凌老怪胸口黑光浮现，黑色古剑就一闪而入没入其胸口

    岳天睿见到此景，也顾不得其他，之间其胸口处一道金光破体飞遁而出，速度极快的就欲朝远处飞去，金光中隐隐看到是一个金色小人，同样是白袍黑髯，只不过小人皮肤是纯金之色，和岳天睿十分相似。

    就在此时，岳天睿的身体上几道血光破体而出，在空中变成几道血色锁链，竟快金光一步的缠绕住了金色小人，任凭小人朝四周如何冲撞，始终挣脱不开。

    金色小人看到本体浑身上下气血之力逸散而出，身躯更是膨胀起来，仿佛预感到什么一般，大喊一声“不”，本体瞬间爆裂开来，一大片血色气浪从本体爆炸而出，顷刻间吞噬了周边一切。

    这一切发生的太快，从血人出现到金色小人飞出，再到血色锁链出现，都只是几个呼吸之间的事情，等到周边的人发觉情况不对时，只能看到一股血色气浪迎面而来。

    顾不得法阵施展，全都祭出防御手段，想要抵挡一二，不过血色气浪携带毁天灭地之势，没有受到任何阻隔的就吞噬了周边一切。

    在爆炸血色气浪之中，隐隐看到有一个金色光点，借着血色气浪的爆炸威力，冲入了那一片没有星辰的无尽虚空之中，进入虚空之后就瞬间消失不见，血色气浪紧随而至，瞬间淹没了此处。

    良久之后，此地变的空无一人，仿佛刚才的大战没有出现过一般。

    虚空中，一道金色流光在无尽的黑暗中一闪而过，仿佛撞到什么一般，突然消失不见，只有在消失的地方荡起了一丝丝涟漪。

    依旧是那个靠近沿海城市的小镇，小镇午夜时分，星空中突然像是有什么碎裂开来一般，在虚空中冲出一道金色流星，飞快朝着地面坠落，伴随着“流星”出现，夜空中突然出现一大片雷云，并且雷云气势汹汹，瞬时间几道雷电就携带毁天灭地之势朝着“流星”劈去。

    “不可能，此界为何没有天地灵气，界面压制之力竟会有如此之大，这里难道不是在仙域了吗？”从虚空中出现的金色流星隐约可以看见是一个金色小人。

    小人虽然通体上下有金色光辉缠绕，但是每次雷电劈打到小人身上，都会使其气息衰弱几分，而且其看到天上的雷云聚而不散，下落的雷电一次比一次强大，小人脸上居然露出几分绝望神色。

    天上的雷云，仿佛也是见到金色小人迟迟没有消散，就好像是自己的天威受到了挑衅一般，雷云深处雷霆之力变得比之前更加狂暴，从雷云之中同时出现数十道雷电。
','    然后这些雷电合数为一，变成一道银白色雷电，此雷所过之处，虚空都仿佛被烧灼一般。

    金色小人看到银白色雷电形成，就知道大事不妙，再看到雷电朝自己急速呼啸而来，就知道今日怕是十有八九要陨落在此，之前连续大战，法宝神通都已经消耗殆尽，为了灭杀大敌，连全身气血都几尽抽空，就算是全盛时期要挡住这个天威一击，也要付出极大代价，更何况如今。

    “难道今日，老夫要命丧于此，不，老夫不甘心啊，不甘心，”金色小人仿佛是用尽了最后一丝气力一般，抬起小手虚空一抓，一朵黑色火焰出现在手中，然后变成一把黑色古剑，另一只手拿着一个金色圆球。

    金色小人就这样一手握剑，一手握球，朝着天空中的银白色雷电迎面飞上，大有一往无前的气势。

    银白色雷电呼啸而过，速度极快，雷光中仿佛有什么东西被汽化了一般，雷电过去之后，只在刚才的地方留下了一个金色圆球，在圆球的表面沾上了一块黑色仿佛木炭一样的东西，上面隐隐有烧焦的痕迹。

    就在此时，异变突生，金色圆球表面的妖怪图案中，那个带羽翅的巨大眼珠仿佛活了过来一般，从金球表面脱落出来，然后迎风而长，渐渐变成一个数米高的虚影。

    此虚影将金色球体包裹住，然后巨大的眼珠朝着四周看了几眼，当看到天空中雷云依旧未散，仿佛新一轮的雷电之力要朝着金球和自身汇聚而来时，眼珠表面浮现出一丝凝重神色。

    然后就认定了一个方向一般，双翅煽动就带着金球朝着一个方向急射而去，看飞去的方向，好像是一栋六层小楼。

    此时天空中雷电汇聚，又一道银白色雷电朝下劈来，巨眼虚影仿佛感应到一半，眼珠朝着雷电落下来的方向用力一睁，一道金色光芒从眼珠中射出，射向银白色雷电。

    令人意想不到的事情发生了，银白色雷电就好像放慢了数百数千倍的速度一般，依旧是朝着虚影劈落而来，但是速度却还没有虚影的飞行速度快。

    巨眼虚影带着金色球体飞到小楼之时，仿佛是用尽了力气般，身体渐渐淡化消散，金球表面的巨眼图案又重新出现，金球化为一道金色光点，没入小楼前在半空中下落的青年眉心处。

    然后青年连同周围，时间就仿佛停止一般，只有天空中的银白色雷电因为巨眼虚影的消失，又重新朝着刚才的方向劈来，眨眼之间银白色雷电就淹没了青年。
','    “这里是哪里，我在什么地方，这里是天堂吗，还是地狱呢，我难道没有死吗，”雷洛睁开眼睛，朝四周看去，就看见自己站在一个巨大的金色半圆形建筑物中，这个建筑物很大很大，他就站在这个建筑物正中间。

    这个建筑物可以看做是一个大殿，大殿顶端的圆顶是模糊一边的金黄色光芒，朝上看去，眼睛居然有微微的刺痛感，这些金光使得整个大殿金碧辉煌，大殿的四周环形墙壁上，有几片壁画和一些类似篆文一般的金色大字。

    这些壁画描绘的都是一些怪物，这些怪物仿佛是纯金雕刻在墙壁上一般，巨大异常，好不狰狞。

    雷洛就站在这个金色宏伟大殿的正中心处，朝四周望去，整个大殿就只有他一个人，抬脚向前走了数十步或者数百步距离，然后继续朝四周观望，他发现整个大殿依旧和刚才看到的一模一样，感觉自己离周边墙壁的距离没有丝毫变化一般。

    “这里到底是哪里，在记忆中自己从来没有来过或者听说过，自己的国家有这么个地方，”雷洛发现自己一时半会也无法走出去，就站在原地喃喃自语道。

    突然，大殿的圆顶上一道金色霞光直落而下，照耀在雷洛身前，这道霞光差不多有三米多粗细，将大殿圆顶和地面仿佛链接在了一起一般

    这道霞光出现的很突然，使雷洛也大吃一惊，不过令他更加吃惊的是，就在霞光落下之时，壁画中的一个巨眼怪物，仿佛活了过来一般，从墙壁上缓缓脱离，然后朝着雷洛慢慢飞了过来。

    这只巨眼怪物十分巨大，光一个眼睛就有一百多米高，眼睛旁有两只金色羽翅，背后还有一条金色骨架一般的尾巴，飞到雷洛身前后，就在空中缓缓漂浮着。

    巨眼怪物一开始也是环视四周，当看到雷洛之后，巨大眼睛也就不再移动，接着整个眼珠就突然一凝，像是打量着宝贝一般，盯着雷洛。

    此时，雷洛就感觉一股排山倒海般的风浪迎面而来，让他抬手遮挡住面孔，整个人在这个风浪中摇摇欲坠，好在这个风浪来得快去的也快，当他放下手的时候，就看到一个浑身金光闪闪的巨大眼睛与之对视

    但是巨眼瞳孔晶莹剔透，隐隐有流光闪动，雷洛看了一眼后就被其深深吸引，沉迷其中，之前看到这个巨眼怪物的害怕也随之消散。

    突然，巨眼怪物眼珠微动，雷洛感觉自己仿佛被人电击一般，身体一麻。

    看到此处，巨大眼睛中露出一丝和人类一般的嘲笑神色，随着巨眼的神色，一股从未有过的重压袭来，雷洛只感觉自己无法呼吸议一般，双手重压住胸口，然后慢慢躬身倒地，压力一直未散，呼吸也越来越困难，一会儿之后，雷洛就斜到在了地上。

    看到雷洛倒地，巨眼怪物仿佛玩累了一般，掉头准备飞回壁画中，又仿佛想到什么一般，羽翅一扇，雷洛就在失去意识的情况下，被羽翅带起的风刮进了金色霞光之中。',10062,10186);
insert into ds_book values(null,10187,'大魏武威三十一年，八月十五，中秋。

    申时刚过，天色逐渐低沉了下来，大魏都城安邑内早早燃起了灯火，星星点点的火光逐渐开始交汇成一条河流，缓缓延伸向天边那最后一抹余晖。

    我卸下肩头的麻袋，驻足停在一面刻着“风月最盛”四个大字的巨大牌坊之下，凝视着眼前熙攘的人流。

    此刻脚下的砂石路已经走到了尽头，取而代之的是一条宽敞整洁的青石板路从牌坊处向内延伸开来，一眼看不到头。

    眼前的牌坊背后，就是天下闻名的浣纱大街了，这里是安邑城，乃至整个大魏一切喧嚣的源头。

    放眼望去，道路两侧数不清的青楼酒肆、茶馆商铺交织林立。

    贩夫走卒、才子佳人、青楼名妓，各色各样的人物昼夜不停地穿梭其中。

    叫卖声、调笑声、推杯换盏声此起彼伏，终日不绝于耳。

    在不远处那条蜿蜒流淌的浣纱河河畔，又有数十艘造型雅致的画舫停泊其中，船上小厮高高挂起灯笼，略略看去连成一片，宛如火龙游弋。

    画舫艺伎则端坐于船舱之内，弹奏着各色乐器，将一声声丝竹清韵缓缓递向岸边。

    市井与风月，这一俗一雅两幅场景在这里交替上演，看似格调不同，却都能达到同一个目的——掏空你的钱囊。

    今年是我在浣纱大街讨生活的第三个年头了，虽然我对这条街道的认知已经从起初的惊叹转为了如今的麻木，但我还是不得不承认，那面牌坊上刻着的“风月最盛”确实是对这里的最佳注解。

    此刻我已经连续走了两三里路，疲累的感觉不断向我侵袭，但在牌坊下这人流最密集的地方驻足休息始终不算太过明智的选择。

    果不其然，在路人几番催促下，我只好放弃了休息的念头，咬了咬牙再次扛起麻袋，被人潮裹挟着踏过了牌坊

    四周的繁华景致不断从我身边掠过，我却浑然不觉，只是自顾自地闷头赶路。

    这倒不是说我境界觉悟有多么高，主要原因还是因为囊中羞涩。

    说来惭愧，其实我的出身实在不能说太差，家中世代经商，做的是绸布生意，到了我父亲这一辈已经可以算作不大不小的富户了，而且大魏不同于别国，商人地位不算低下，因此如果一切顺遂的话如今我倒也是有条件在这里花天酒地的。

    可惜老父亲不争气，染上了耍钱的恶习，短短几年间家产就被各种宝局、当铺吸的一干二净。

    后来他好不容易被母亲逼得戒了赌，却再也提不起心气儿了，整日里浑浑噩噩借酒浇愁。

    三年前我行冠礼前一日，父亲和以往一样，晃晃悠悠地提着酒壶离开了家，临走前他鬼使神差般特意拉过我的手，语重心长地嘱咐道

    “许君文，你记住了，人生在世岂能事事尽如你意？又岂能事事无愧于心？”

    留下这没头没脑的一句话他便推门而出，再也没有回来。

    等我再见着他时，他已经醉死在了雪地里

    尽管父亲糊涂了一辈子，但他临死前总算是说了句明白话，我后来的生活也确实如他所言——事事不尽人意。

    老丈人理所当然地立刻退了亲，母亲则更是深受打击，至今仍卧病在床。

    而我呢，虽然识得几个字，但从小就对文章诗词提不起兴趣，没本事博个功名，为了照顾母亲与尚未出嫁的妹妹，我只得到这鱼龙混杂的浣纱大街里来讨生活。

    这三年来虽然没饿死，但始终也没混出什么名堂，到如今只好感叹一句“丈夫贫贱应未足，今日相逢无酒钱”了。
','    我一边忆苦思甜一边向前走着，没过多久就顺利到达了目的地——青旗酒肆，也就是我目前干活的所在。

    熟门熟路地推开酒肆边门，绕到后院的杂物间，我迅速将麻袋撂下，准备抓紧时间休息一会。

    这点运动量对寻常伙计来说可能并不算什么，但搁在我身上就要了命，饶是近年来粗活干得不少，体格多少强健了些，如果放在三年前，此刻我已经累得昏死过去了。

    我从小身子骨就偏弱，粗活重活完全干不了，因此初到浣纱大街之时没有店家愿意收留我。幸好这家酒肆掌柜的看我读过几年书，人又还算机灵，才给了我个堂倌的活计勉强撑到今天。

    缓了大约两炷香的时间，我感觉体力恢复得七七八八了，于是赶紧换了身行头快步往酒肆的大堂走去。

    “得嘞！二两烧刀子，半斤牛肉，马上来！”

    “实在对不住，客爷稍等片刻，酒水马上，马上给您续上！”

    今天酒肆的生意格外火爆，整个大堂内已经人满为患了，大家伙都忙的焦头烂额，一两个年轻些的店小二已经慌了神，连吆喝声都磕磕绊绊的。

    我悄悄地绕到店门口账台后边，来到一个正在飞速拨弄着算盘的富态中年人身后，伸手拍了拍他的肩膀笑道

    “老王，我回来了。”

    老王被我拍得吓了一跳，扭过头来刚要骂人，见来人是我，原本紧锁的眉头才微微舒展了开来。

    他推了我一把笑骂道

    “臭小子，差点给老子吓个半死，怎么这么半天才回来？是不是又躲哪里偷偷看兵书去了？你也不撒泡尿照照自己，像个将军样儿吗？还愣着干嘛，赶紧招呼客人去，我这儿都揭不开锅了！”

    我对老王的言语挖苦毫不在意，笑嘻嘻冲他假装抱怨道

    “我说王爷，真不是我偷懒，您让我跑那么老远搬沙子，就我这小身子骨怎么受得了啊。”

    老王继续骂道

    “少给我来这套！王爷？我还太子呢！快走快走，别影响老子记账！一会儿还要准备论兵的物件呢！”

    “好勒，这就去，您老也别总算账啦，该休息休息了，再算下去头发可就要全落光啦。”

    老王对我的嬉皮笑脸已经习以为常了，也不真生气，摸了摸自己的头发嘟囔了几句，就又转过身自顾自打起了算盘。

    别看我和老王说话如此随便，其实他可是这酒肆一人之下万人之上的大堂管事，寻常小厮都对他畏惧着呢。不过他倒是和我私交不错，对我一直特别看重，也正是在他的栽培提拔下，我今年才意外成为了管事助理，如今也算是个高级店小二了。

    见老王不再搭理我，我只好悻悻然地拿起账台边的一块抹布，随手搭在了肩头，开始和往常一样招呼起客人来

    _______________________________________________________________________________

    青旗酒肆分为上下两楼，虽不及动辄三四楼的大酒楼，但相较于其他寻常酒肆，已经可以说颇为宽敞了。

    一般来说，两层以上的酒肆或酒楼，一楼基本是散座，负责接待寻常客人，二楼以上则多为雅间，招待熟客与贵客。

    但青旗酒肆却不一样，一楼二楼皆是散座，且不设雅间。
','    这主要是因为这家酒肆常年生意火爆，从不愁散座坐不满人，因此对掌柜的来说能腾出地方多摆张桌子就是多份收入。

    不过区别对待多少还是需要有一些的，围着二楼栏杆处的十数张寻常方桌就被掌柜拎了出来单独标价，美其名曰“雅座”。

    雅座与其他座位并无不同，但价格却要平白贵上个三四成，饶是如此还是会有客人出于种种原因抢着订座。

    这可能就是所谓的生意经吧。

    此刻有两位身着青衫的年轻男子就坐在楼梯附近的雅座上饮酒闲聊，只见其中一人缓缓开口道

    “苏宪，我们这几日游遍了安邑城，说说看，有何感想？”

    说话这人莫约二十五岁上下，生的剑眉星目，身材匀称，手中一柄折扇半合不合，在胸前微微晃动，颇有几分雍容气度。

    桌子另一边叫苏宪的男子则是另一番完全不同的光景，虽然同样身着青衫，却没有半点儒雅气质。

    此人身材异常魁梧，一张将军肚挺得老大，两只胳膊上也是肌肉鼓胀，险些就要将不那么合身的长衫撑裂开来。那张国字脸上的五官如同刀削斧凿一般，两条眉毛十分厚重，就好像海参一样贴在额头上，四方大嘴边围着圈浓密的络腮胡，是标准生人勿进的面相。

    听到年轻公子的问话，苏宪赶忙放下手中酒杯，思索了片刻低声回答道

    “国额，李公子，属下原先觉得这安邑城地处魏国腹地，是贯通南北的要冲之地，理应城防牢固，但这几日观察下来”

    苏宪话还没说完，就见李公子轻轻摆了摆手，打断道

    “不谈军务，只说对魏国民间的感受。”

    苏宪挠了挠头，又想了片刻，苦恼地答道

    “这个安邑城确实比咱们北平繁华许多，额，至于其他的我也说不上来了。”

    李公子点了点头笑道“安邑确实繁华，就比如这条称不亚秦淮的浣纱河，原是仿照南唐秦淮河开凿而成的，昔日里还被南唐士子挖苦为东施效颦，但近几年南唐日益积弱，魏国却国力强盛，如今单论盛世气象，恐怕这里还要更胜一筹。”

    话说到一半，李公子略微顿了顿，脸上的笑意开始变得有些苦涩，他端起酒杯一饮而尽，随后叹息道

    “近年来魏帝多次颁下求贤令，主张唯才是举，重用寒门士子，严惩豪阀贪腐，朝堂政治之清明高效自古罕有。于此同时魏国又敞开国门，在民间鼓励南北通商，纳各国文化精韵化为己用。魏国这两条国策齐头并进，到如今已然逐见成效，有了海纳百川、博采众长的大气象，确实担得起大魏二字。方才你提到城防，诚然，我齐国数十年来北御匈奴、南抗魏国，靠的正是城防坚实，攻守一体，在这点上魏国远远不如。可惜我齐国城防固然坚实，心防却同样顽固。数十年来闭关自守，与他国几无交流，庙堂又多被前朝门阀掌控，长此以往，就如荒岛孤悬海外，只能静待魏国兼并了。”

    听完李公子的话，苏宪眉头紧皱，颓然地问道

    “如公子所言，咱们齐国真就没有击败魏国的机会了么？”

    李公子缓缓吐出一口浊气，稍稍平复心情，眯起眼淡淡道

    “呼那就要看这次和二掌柜的买卖效果如何了。”

    “哈哈，是了，是了。”

    苏宪听到“二掌柜”三个字后压抑的心情顿时好转了不少，他咧着嘴站起身，打算给李公子再斟上一杯酒。

    一提起酒壶晃了晃，才发现了酒水已经见底，随即扭过头对着楼下嚎了一嗓子。

    “小二！再拿壶酒来！”

    也不知怎的，并没有人回应他，苏宪只得加大嗓音又叫了几声

    。',10063,10187);
insert into ds_book values(null,10188,'我正一边在大堂招呼客人，一边指挥着其他的店小二，忽听得二楼有人在大声喊叫便抬头寻声望去。

    见是雅座的客人讨酒喝，我立即看向了一旁负责招呼雅座的伙计张三。

    张三正从一个大酒缸中往酒坛里打酒，已经忙的晕晕乎乎了，听到了楼上的叫喊后他无奈冲我说道

    “君文哥，麻烦您替我去一下，我这儿实在干不过来了。”

    我也没多说什么，赶忙大声冲上边应了一声，提起一坛酒水三步并作两步就往楼上跑去。

    蹬、蹬、蹬

    没用多少功夫我就来到了李公子二人身边，我看他们的样貌陌生，似乎不是常客，于是一边往酒壶内添酒一边带着歉意与二人搭话道

    “二位久等了，今日本店客人实在太多，招呼不周请多包涵。小的看二位公子面生的很，想必不是本地人吧？”

    见我颇为面善，李公子也丝毫不端着架子，随口笑答“我二人是北齐行商，此番是相约一道来大魏采办商货的。”

    我对李公子的说辞感到有些疑惑，大魏和北齐边疆这段时间冲突不断，传闻骠骑将军韩立已经提兵五万驻扎巨鹿，大战随时可能一触即发，怎么这会儿还有北齐商人会来安邑采办货物呢？

    不过我也没多想，出于好意提醒道

    “原来二位是北齐人士，小的多嘴一句，眼下两国边疆局势紧张，二位初到大魏，还需处处小心谨慎为好。”

    李公子摆了摆手道“店家说笑了，商人逐利，并无国界之分，何况我二人身家清白，做的只是寻常生意，想来无需这般小心。”

    虽然李公子的回答明显是托词，但我也不想继续追问，毕竟我只是一个身份低微的店小二，在这乱世之中只需要做好自己的本职工作就行，至于其他的，还是不要多管闲事为好。

    于是我随口敷衍了一句，就要转身离去。

    “是是，确实是小的多心了，那二位客爷且慢饮，小的就先告退了。”

    我一躬身，刚打算离开，却又被李公子叫住了。

    “留步。”

    “客爷有何吩咐？”

    “听闻今夜在这青旗酒肆要办一场论兵，我等是慕名而来。说来惭愧，此前在故国从未听闻过这个说法，到现在我也还是一知半解，还劳烦店家介绍一二。”
','    李公子口中的“论兵”确实是我们酒肆的招牌之一，我们大魏以武立国，国人尚武，因此在民间不乏有许多兵法爱好者，论兵这项活动正好能满足这部分人的需求，故而这个活动一经推出，酒肆的生意又上了一节台阶。

    眼下见李公子问起，我赶忙放下酒坛朝他解释道

    “客爷无需如此客气，说起来这论兵也是安邑城近些年才流传开来的民间娱乐，客爷不知道也是正常。

    论兵简单来说就是将兵马将帅化作棋子，置于沙盘之上，对局双方互为攻守，分别拟定战事方略，最后由评判按照方略推演战局，分出胜负。当然，对局之时双方也可根据实际情况随时调整方略，只不过所下达的指令也会按照真实的传递速度送达前线。”

    一旁喝酒的苏宪挑了挑眉，扬声道

    “不就是沙盘推演么？有甚好看的？”

    我见此人比起李公子来颇为粗鲁，生怕一个不小心惹出事端来，只好陪着笑脸耐心答道

    “确是类似军中的沙盘推演，不过也略有不同，论兵是有预设战局的，类似戏子们的台本，所选战局皆是古往今来的知名战局，不论地形地貌、兵力多寡、辎重配给，甚至是部将的心性，士卒的士气都完全还原当时情形。既是古代名局，那么胜负就早有定论，如若能通过种种妙手反败为胜，了却先人遗憾，也不失为一大看点。可惜纸上谈兵终究不过是儿戏，因此也有不少人将这论兵称作兵戏。”

    李公子刷地一声合拢折扇，笑道“早听闻魏人尚武不亚于北齐，想不到竟连世俗百姓都对军略如此痴迷，好一个纸上谈兵，倒也有趣，不知何时开始呢？”

    李公子的话音刚落，楼下突然传来了一阵铜锣声，紧接着二楼散座的客人就开始纷纷离席，朝楼下走去。

    我探头向下看了看，朝李公子笑道“客爷您瞧，这就要开始了。”

    ———————————————————————————————————————

    此时的酒肆大堂，几名店小二已经将大堂最里边的桌椅向外挪了挪，预留出了一片空地。

    “各位客官，让一让，小心了！”

    数个小厮吆喝着分开众人，从后院小心翼翼地将一面硕大的圆台抬到了这处空地上。

    这圆台四周用竹制围栏围了起来，围栏内则铺满了一层厚重黄沙，正是一会儿论兵所用到的沙盘，而里面的那些黄沙就是我今天千辛万苦扛回来的。

    接着这些小厮又不知从那儿抱来了数块雕琢成山脉模样的青石，按照事先确认的位置依次放置在沙盘之上。

    青石落定，两个账房先生模样的人怀抱着一只硕大木匣信步来到了沙盘一侧。

    他们从木匣中取出了五花八门的小巧物件，依照手中地图将面前的沙盘细细布置了起来。

    这样的工作二人早已得心应手，霎时间山川、林地、城寨、栈道等等战场跃然于沙盘之上，一幅颇为逼真的战场地形图就展现在了众人面前。
','    见沙盘布置的差不多了，大堂王管事站了出来，笑着冲酒肆内众人连连抱拳拱手，朗声道

    “诸位，诸位，还请稍安勿躁。”

    他一开口，四周众人纷纷都止住了窃窃私语声，静待他接下来的话语。

    见大家颇给面子，王管事满意地点了点头，捻须道

    “诸位久等了，鄙姓王，是这青旗酒肆的管事，今日的论兵不才就由在下主持。”

    话音未落，有些捧场的老主顾已经开始叫起好来，一时之间大堂内的气氛热烈了起来。

    “承各位客官抬爱，本店的论兵操演至今已举办了近百场，期间名局数不胜数，想必今日也不会例外，那么话不多说，首先请出我们的对局双方，赛诸葛、小淮阴！！”

    王管事言罢，伸手向旁一指，众人目光立马随他手指方向望去，只见两名男子一前一后从不远处缓步而来。

    为首的那人手持白毛羽扇，头系纶巾，身上青衫长摆离地寸许，显得飘然出尘，一看就知道是诸葛武侯的铁杆仰慕者。

    正是已经连续十二场不败的赛诸葛。

    “好！好！好！”

    赛诸葛一出场，就伴随着人群中一阵剧烈的欢呼声，甚至还不乏有许多女子的尖叫声掺杂其中。

    这并不奇怪，论长相，眼前的赛诸葛确实称得上是翩翩佳公子，他身材修长，面白无须，一双丹凤眼时刻闪烁着精光，也怪不得会受到妙龄少女的青睐。

    不过赛诸葛却对周身的欢呼尖叫不以为意，他只是微笑着来到王管事身边站定，朝着众人略一拱手，顿时就又引来叫好声一片。

    如果说这赛诸葛是气度不凡，人中龙凤的话，那么他身后的小淮阴则只能用“艳俗”两字来形容。

    只见他身着一件艳丽长衫，上边绣满了数十种或叫得出名或叫不出名的花卉，那花卉之密集，甚至已经看不清他长衫的底色了。这还不算，他发间还别着一朵盛开着的硕大月季，与身上长衫前后呼应，整个人远远看去如同一团行走的花圃一般。

    如果是对密集之物恐惧的人看见他，恐怕当场就要呕吐起来。

    更要命的是，此人一身行头如此花俏，长相却平平无奇，两相对比之下越发令人不敢恭维。

    果不其然，待小淮阴站定后，酒肆之内已经是笑声、嘘声响作一团了。

    我身侧的苏宪此时已经笑得前仰后合了，一边喘着粗气一边哽咽道

    “这，这是什么打扮？哈哈哈~~~~”

    一旁的李公子也微笑道

    “赛诸葛，小淮阴，这是孔明遇上了韩信，想必此二人交锋会十分精彩。”

    我对李公子的说法不置可否，只是偷偷瞟了一眼苏宪那高高隆起的将军肚，暗自翻了个白眼，心说您这个造型比起楼下那位也好不到哪儿去呀。

    酒肆内的笑声持续了许久，那小淮阴却丝毫不觉尴尬，反而似乎很享受众人调笑的目光，站在王管事身边频频朝众人挥手。

    王管事到底是见过世面的人，很快就回过神来，他用力清了清嗓子示意众人稍安勿躁，随即朗声道

    “既然对局双方都已就位，那么就由我宣布本次论兵的主题。”

    “本次论兵的主题为，诸葛武侯首次北伐！攻方为蜀汉诸葛武侯，守方为曹魏魏明帝，最终以蜀汉军能否攻克长安并坚守十日以上，或夺取陇右诸郡为胜负标准，现在有请二位先进行抽签决定攻守。”',10063,10188);
insert into ds_book values(null,10189,'抽签的结果很快就出来了，小淮阴抽到了蜀汉一方，而赛诸葛则是抽到了曹魏一边。

    这个结果令赛诸葛颇有些哭笑不得，他自幼对武侯就十分崇拜，故而来参加青旗酒肆的论兵才用了赛诸葛这个化名，此刻反而要扮演心中偶像的死敌，不由得要感叹一句造化弄人。

    不过在场围观的人群却对这个结果很是满意，纷纷又叫起好来。

    他们本就一边倒的支持赛诸葛，眼下看到他抽到曹魏一方，心中更是越发的欢喜。

    这主要还是因为在座的都是大魏人，下意识里总是希望本国能获得胜利，虽然此魏非彼魏，但毕竟国相同，多少算讨了个好口彩。

    抽签完毕，店内小厮立即撤去了签筒，转而将两张摆着纸笔墨砚的小方桌搬到了沙盘两侧，接下来对局双方就要在这桌上写出各自的用兵方略了。

    我此时依旧待在李公子他们这桌旁边，倒不是说存心想要偷懒，主要是因为酒肆负责论兵操演的除了主持王管事之外还另有一拨小厮，此时楼下一切都已准备妥当，我再下去也只是添乱，索性就选择待在楼上，以便能随时照应雅座的客人。

    不过我终究是想多了，此时二楼除了雅座客人之外其他人都已经去了楼下，而剩下的人也正热÷书精会神地盯着大堂的情况，根本没人理会我，如此一来反而让我感到有些无所适从。

    正当我百无聊赖之际，一旁的李公子和苏宪开始讨论起了楼下的战局。

    反正闲着也是闲着，于是我便竖起耳朵偷听起他们的对话来。

    只听那李公子率先开口问道

    “苏兄，我记得你对兵法颇有涉猎，不知对今日论兵所选的主题有何看法？”

    苏宪原本正在闷头饮酒，听到李公子的问话后他表情一下古怪了起来。

    他思索片刻回答道

    “唔李兄，以在下拙见，这武侯北伐的议题选的还算不错，对局双方攻守态势相对均衡。昔日武侯首次北伐之时，蜀汉与曹魏虽然看似国力相差巨大，但曹魏的防御重心全在东吴，长安以西则兵力空虚，且无名将驻守，对蜀汉的突然进攻事先毫无防备。反观蜀汉此时与东吴重修旧好，东线已经无虞，可以安心举全国之力北伐。如此一来，此消彼长，两国国力上的差距在这场战役中已经被拉平，甚至蜀汉在兵力上还稍占上风。因此战事一起，蜀汉立即稳占上风，陇右五郡顷刻之间反了三郡，一时关中震动。可惜后来马谡大意失了街亭才最终功亏一篑。若是蜀汉当初能牢牢守住街亭，掐断曹魏援军的必经之路，整个陇右便唾手可得，陇右既得则长安危矣，北伐也就成功了大半。”

    李公子微微颔首。
','    “不错，蜀汉国力虽弱，但胜在北伐出其不意，曹魏虽然防备不足但依旧坐拥地利，今日论兵选这个主题确实对攻守双方都很公平。不过我倒觉得，这题出的极妙，最妙的倒还不是选题本身，而是这胜负的判定标准。”

    苏宪对这话似乎有些不解，他疑惑地问道

    “这胜负的判定又有何玄机呢？”

    李公子笑答

    “你看，今日的对局是以蜀汉能否全取陇右或夺取长安坚守十日来分出胜负的，若只是单纯以夺取陇右为判定标准，则对阵双方就会如你方才所言，将焦点完全汇热÷书在街亭之上，反之也是亦然，如此一来对局虽然也颇有看点，但终究只不过是一城一地的得失。而这出题之人此时将两条判定标准一同抛出，既考验了双方对战役细微处的把控，同时也考验了双方对战略大方向的理解。由此可见这出题之人对兵法研究颇深。”

    听完这话苏宪频频点头，显然对李公子的分析深以为意。

    随后李公子继续问道

    “苏兄，若你是那小淮阴，会如何进兵呢？”

    苏宪又思虑了片刻，直言不讳地答道

    “诸葛武侯从汉中出兵北伐，可供选择的路线大致有四条，一是走最为平坦的大路出祁山直击陇右，二是走古道取陈仓转进陇右，三是出斜谷取郿城进逼长安，第四条最为凶险，就是分兵出子午谷直取长安。若然按照那胜负条件选择进兵路线，这二三两条应当首先排除，因为首次北伐之时陈仓古道的栈道还尚未修缮，山路崎岖难行，不利于大军通行，而出斜谷取郿城虽然可行但却需要花费较多时日，曹魏大军有足够时间回防长安。如此一来较为可行的应该是出祁山夺陇右或出子午谷直击长安。至于选哪个方向进攻嘛在下还是倾向于依照史实，走大路出祁山，相对稳妥些。毕竟”

    “铛铛铛铛铛~~”

    苏宪还没说完，一楼大厅又传来阵阵了铜锣声，此时攻守双方都已书写完了各自方略。

    王管事接过双方递来的方略，宣布论兵正式开始。

    由于武侯北伐由蜀汉方面率先进攻，因此酒肆小厮首先按照小淮阴的方略将蜀汉方面的兵马棋子摆放了起来。

    待到众人看清棋子的摆放位置之后顿时就是一片哗然，只因小淮阴并没有采用历史上诸葛武侯的出兵路线，相反还与之差异极大。
','    他竟然安排魏延领一万兵马走子午谷直插长安，诸葛武侯则是自领九万大军出斜谷进军郿城，对长安采取包夹之势。

    众人都没想到这小淮阴会拟定出如此大胆激进的方略，于是纷纷四下议论起来

    “子午谷奇谋？！”

    “大哥，何为子午谷奇谋？”

    “老弟你有所不知，这子午谷奇谋是昔日里武侯北伐之初，大将魏延所提出的偷袭长安之议案，按照魏延当时的想法，他亲自领一万兵马，其中五千精兵五千劳力，沿子午谷一路急行，不出十日就可至长安城下，而当时的长安守将夏侯楙是魏武帝女婿，才干平平又不通兵法，见蜀军突然兵临城下必定大惊失色弃城而走，魏延夺取长安后武侯率大军再与之汇合共同守住潼关，至此关中就顷刻间落入蜀汉手中，与当年韩信的明修栈道暗度陈仓之计有异曲同工之妙。不过武侯认为此计过于凶险，当时并没有采纳。想不到今日这小淮阴竟会不按常理出此险招，看来赛诸葛一边可要危险了。”

    “是啊是啊，那可如何是好，今日我在赛诸葛身上可是押了整整五两银子呐，这这这”

    见众人议论纷纷，场上的小淮阴此刻颇觉有些得意，他起身离席，步履轻巧地来到众人面前大笑道

    “哈哈哈，诸位不必如此大惊小怪，昔日司马懿曾评价诸葛亮志大而不见机，多谋而少决，好兵而无权。我以为这个评价极其精准！都说那诸葛孔明用兵如神，计谋百出，本少爷却只觉他言过其实，与韩信张良之流差了千万里！试想当初蜀汉北伐，本就是以小博大，以弱攻强，若仍旧如他这般优柔寡断，不愿兵行险着，那结局也只能落得个六出祁山而不得了！”

    此言一出，人群之中瞬间就炸开了锅，在座众人都对诸葛武侯敬重有加，岂会受得了有人当面诋毁心中偶像，有那鲁莽些的看客此时已经难掩心中激愤，朝小淮阴大骂出声了。

    不过众人愤慨归愤慨，一时之间却也对他的言论无从反驳，只能任由小淮阴在一篇谩骂声之中怡然自得地回到了自己的座位。

    此时我正在二楼冷眼观瞧楼下情况，见那小淮阴此刻小人得志的模样便是心中冷笑连连。这道诸葛武侯北伐的论兵议题原本就是我拟定的，之所以要将坚守长安十日这一目标加入胜负判定也是为了想要看看会不会有蠢人去采用魏延的方略，妄图直接攻下长安。没想到这小淮阴还真就选择了出兵子午谷。于是我压抑不住心中讥讽，轻声嘟囔了一句

    “真是蠢货年年有，今日特别多。”

    这句话原本说的极轻，也不知怎得，竟然被一旁的李公子听了去。

    他立即扭过头寻声望来，在确定出声之人是我以后便开始用一种玩味的眼神上下打量起我来。

    我感觉自己被人盯着，也同时看向了一旁，正好与他的目光交汇在了一起。

    李公子的目光极为犀利，虽然他嘴角始终挂着微笑，但那对眸子里却丝毫不见笑意，漆黑的眼瞳中仿佛藏有着直指人心的可怕魔力。

    四目相对间我很开就败下阵来，一时只觉得全身汗毛直立，心中所藏之事皆被一眼洞穿。

    我对这种感觉十分厌恶，于是立刻偏过头不再看他

    。',10063,10189);

insert into ds_book values(null,10190,'2018年，圣诞节后的第一个周末。香江市中环维港海滨赛道上，一阵高亢的v8引擎轰鸣声打破了黎明的宁静，一辆奔驰c级和一辆bmwm3改装赛车一前一后疾驰而过。两辆车犹如电脑计算一样精确地冲过每一个弯道，尾灯的残影如幽灵的眼睛一闪而过，划破了微亮的夜空，轮胎与赛道摩擦发出的刺耳“滋滋”声扣动着大家紧张的神经。

    在一个夹角弯，伴随着引擎在极限转速下发出的嘶吼声，m3忽然以不可思议的速度和极其精确的角度切进内线，与c63并行。辆车相持之下，c63不得不被迫让出位置，m3又一次实现了超越。

    看台上的车队经纪人和车手们一阵惊呼，面面相觑。在今天这场没有挤擦、顶撞和压制战术，纯粹的速速比拼中，这个神秘人已经第4次超越了前面的车。他们非常好奇，坐在m3赛车里的人到底是经历了什么样的训练才能在今天的比赛中屡次实现超越。

    站在赛道旁边的韩龙和赵二虎两人却相视一笑，他们都很清楚，坐在m3里的他根本就没有把这场当做一场较量，又或者是一场比赛。极速驾驶，只不过是他多年来在执行任务后，缓解压力、安慰灵魂和释放内心压抑的一种方式。

    此时的他并没有想要赢过任何人，只是在跟命运发泄着他的不满。只不过，在这种发泄中，他更喜欢自己一个人而已。

    杨凡紧握着方向盘，不停地修正车身的动态，双眼紧盯前方的赛道，凌厉的目光似乎是要将前方的距离一口气吞噬掉，可他饱经风霜的脸上却没有丝毫波动。

    一个人，要经历多少磨难才能在赛车冲出弯道带来的强大g值压力下表现得如何淡定从容，眼前极速闪过的场景似乎与座椅上的他没有任何关系。眉骨上若隐若现的伤疤暗示着他不止一次与死神擦肩而过，面对危险和死亡早已成为他多年来习以为常的事。

    也许，这种程度的刺激还无法在他的内心挑起任何波澜。

    杨凡已经习惯了冒险，习惯了刺激，也习惯了征服一个又一个目标。命运将让他成为了这样的一个人，而他也能够淡然接受了这一切。2公里，10个弯道成为了他眼下要征服的目标。

    熟练的操控技巧、精确的判断和近乎杂技般的驾驶技术使他的圈速不断被刷新。第5圈，他的速度已经无限接近于赛道上的另一位车手，职业车手。
','    试车结束，杨凡在通过终点线后继续开了一段距离，将车刹停在韩龙和赵二虎身旁。他摘下头盔，放到了一旁，把头沉在方向盘上，并没有着急下车。

    车队经纪人程越一脸兴奋地飞奔而来。他站在车旁，看到杨凡此刻的状态，显得有些不知所措。他不知道杨凡此刻的心情是和自己一样的激动，还是仅仅想暂时休息一下。总之，程越觉得还是不要去打扰他比较好。

    也只有韩龙和赵二虎知道，杨凡又陷入到过去的回忆当中。又化身为那个让人胆寒的蓝色幽灵，又在回忆着过去几年当中经历的所有欢乐、痛苦和无奈。他们没有打扰他，因为同样的回忆大家都有。而且他们也都清很楚，除非自己想要走出来，否则没有任何人能够改变他，哪怕是影响分毫。

    过了好一会，杨凡慢慢得抬起头。太阳已经爬出地平线，一束光照射到他的脸上，好像又打开了他内心的深处原本已经放下的结。

    这些年，他一直要掌握自己的命运，并且为此付出了许多。今天，他突然明白，人生就像赛车一样，我们穷尽一生的努力，换来的只不过是让我们能够更快地征服每一个弯道，但我们却始终疾驰在别人设计好的圈子里。握住了方向盘并不等于掌控了生命，因为当你认为自己耗尽心力终于能够决定了要去哪里的时候却早已忘记了自己曾经想去哪。

    命运要远比我们想象得强大。我们付出了可能自己都无法承担的代价想要去改变命运，换来的只不过是看到了命运中本不该被我们看到的东西，那些一旦被看透就会让原本还过得去的生活变得残破不堪的东西。那些妄图追求自由和掌控命运的人是悲哀的，因为追求就是执著，执著就不会自由，掌控就是索取，如果你向命运索取，也必将被命运所奴役。

    其实，那些从一开始就知道自己为什么而活的人是幸福的，即便他们可能活得艰难，可他们每天都在向着自己的目标前行，他们在这个过程中总会收获到自己想要的满足。更多的人根本不知道自己想要的是什么，他们在错误的追求上越走越远，到头来只能糊里糊涂地承认自己追求的就是自己起初想要的，这种人也算是快乐的，起码在他们自己的世界中是快乐的。而还有的人是为了自认为对的目标艰难地挣扎着，努力过后却发现那并不是自己想要的，而自己真正想要的已经被他们当做不得不付出的代价给舍弃掉了，这种人是悲惨的。在任何人眼里都是。

    杨凡就是最后一种人。可他足够强大，强大到命运都要向他妥协，不得不在他挣扎和付出一切的过程中给他安排一些无论如何都不会抛弃他的人。

    杨凡不禁感慨，如果时间能回七年前，他可能会重新选择自己的路。他宁愿放弃现在拥有的一切，去尝试过另外一种生活，一种大家都会过的那种生活，哪怕那种生活没有他想象得那么自由。他很想看一下在不同人生面向下的另一个自己是什么样子，或许那个才是真正的自己。

    可现在，他唯一能做的，仅仅过好当下的自己并且珍惜命运为他安排在身边的这些对他不离不弃的亲人。

    杨凡深呼一口气，推开车门，走下车，冲着一直站在赛道旁的两人招了招手，微笑着说道：“韩龙、虎子我们走吧。今天是周日，她应该不上班的。”
','    两人相互对视，会心一笑，韩龙低声说道：“哎，他终于想明白了，终于下定决心要去开始新的生活了”。

    赵二虎微微一笑，搭上韩龙的肩膀，两人快步跟上杨凡，一起向出口走去。

    车队经纪人程越上前几步，喊道：“杨凡先生，你不必着急做决定！想明白了随时联系我！”

    杨凡只是背对着他挥了挥手，并没有回头，三人很快消失在安全通道当中。',10064,10190);
insert into ds_book values(null,10191,'卷首语：职场之所以会乌烟瘴气，并不是因为那里有很多没本事的人，而是因为那些没本事的人还要去争他们配不上的东西。

    华夏，京城市的一个小区的六楼的一间公寓中。杨凡正躺在自己卧室的床上，捧着一本边角磨得发白的暗绿色大学毕业纪念册，翻看着每一页上同学的留言。

    纪念册中有些的人样貌他已经完全想不起来，甚至有些人完全消失在了他的记忆中。不过，他却总能够从这些自己都几乎能够背下来的，充满着语病的留言和那一张张稚嫩天真的脸上感到最真挚的感情。

    那种感情，是杨凡离开校园之后再也没有体会过的。

    离开学校的时间越久，就越怀念校园的生活。这句话一定都没有错，至少，杨凡此刻感同身受。

    “哈哈……呵呵……”杨凡看着纪念册中的内容，回想着大学时期他们做过的一件件“傻事”，不时发出阵阵傻笑。

    2011年8月，杨凡从工业大学心理学专业毕业2年了。经过养父杨林的推荐和介绍，他这两年来一直在京城市一家大型的生物制药集团做人力资源的工作，作为该集团核心的基因研发中心的hrbp，负责整个基因研发中心的人力资源管理工作。这家制药集团隶属于华夏某央企集团，杨林是那家集团总部的工会的副主席。也正是因为这个关系，杨凡有机会才进入现在制药公司供职。

    杨林一家都是滨海市的人。杨凡的姐姐杨艳在京城市某师范学院上的大学，毕业后就留在学校做了美术教师。加上杨林和杨凡的工作也都在京城，为了工作方便，杨林决定搬到京城市生活。杨凡的养母刘文早早地从一家事业单位退休，为了照顾他们爷俩也跟着搬到了京城。杨林在公司附近租了一套三室一厅的房子，一家四口在这里生活了2年多了，京城市也成了他们的第二个家。

    杨凡和杨林的性格很像。有可能是习武的原因，这爷俩都是直来直去的脾气，也都有一腔热血，想要做一番实业。可职场并不想杨凡想象的那样美好，两年多的工作让杨凡明白了很多的道理，那些都是大学校园里体会不到的，也是大学老师也绝不会告诉你的。

    这些道理中，令杨凡印象最深的一个体会是，才华和热情远没有臆想中那么重要。进入职场之前，杨凡一直觉得才华是成功的基础，热情是成功的催化剂。有了才华，再加上激情，就一定能够做出一番事业来。

    进入职场之后他却发现，才华其实是负担，而热情，是毒药。

    学校和职场是完全不同的两个世界，也有着截然不同的生存法则。在学校里，你可以尽情地表现自己，你的才华或许不会得到所有人都的认可，但至少不会伤害到别人。而在职场，“木秀于林，风必摧之”才是永恒的潜规则，“和谐”显得尤为重要。当然，大家更喜欢将“和谐”称为“团队精神”。

    在这个世界上，无论是哪一个行业，优秀的人都是少数，所以在这种“和谐”理念的导向下，职场就注定是平庸人的天下。职场中，大部分人都不愿意看到身边的人超过自己。才华，远不如势力重要。热情，远不如关系实在。也正是因为这样，大多数职场中，势力都掌握在平庸的人手里。

    对于杨凡所在的华夏央企，更是如此。

    两年来，杨凡从未在职场里感觉到什么温暖。他很有才华，却不能充分地展示，因为你不知道才华给你带来的是发展的资本，还是同事的嫉妒。他也很热情，却要把自己伪装成一个得过且过的样子，因为只要那样你才能勉强融入到环境中。

    才华和热情不仅没有给杨凡赢得做一番事业的机会，反而带来委屈和压力。按照他的脾气，他早就想辞职离开。可在刘文苦口婆心的劝诫下，他又不忍心让养父和养母担心。可以说，他的日子都在忍耐和压抑种度过。每当他不高兴的时候，他就喜欢拿起大学时的纪念册，回忆着那无忧无虑的生活。

    “哈哈……哈哈哈哈。”看着纪念册理想职业那一栏，几乎一半的人写的“做个有钱人”的时候，杨凡总是忍不住发笑。那时候的他自己也是这么想的，他们就是如此天真和幼稚。站在山脚下的人，往往只能看到山顶那些人的光辉，只有距离山顶不远的人才能看到站在顶端的人付出了多少努力。
','    “咚-咚咚”他的房门被敲响，刘文推开门，招呼道：“小凡，傻笑什么呢？快出来，快出来……明天那么重要的会面，别总不当回事，赶紧出来跟你爸商量商量。”

    “好嘞！妈。这就来！这就来！”杨凡以一个类似鲤鱼打挺的动作从床上坐了起来，随手将纪念册放在了抽屉中，出门来到客厅，坐到了沙发上，拿出手机看着自己感兴趣的nba新闻。

    今天注定是忙碌的一天，因为明天一早父子两人就要去见他们共同的领导，集团总部的一位主管人事行政的副总裁，李士朋。这可能是他们父子俩事业的一个转折点，全家人都很重视。

    客厅里，杨林坐在沙发上闭目养神，他眉头紧皱，应该在思考着什么事情。刘文则拿出两套西装，为杨林和杨凡准备明天会面要穿的衣服。

    刘文将一套藏青色的西装挂到了挂烫机上，认真地整理着衣服，瞥了一眼坐在沙发上的杨林，说道：“老杨，明天你见了你们领导态度可要好好的，别总犯你那个牛脾气。人家是领导，你别总像在家里和平常工作中一样摆出一副总要教训人的样子。有些事你得忍忍，更得认命。人家怎么说也是掌握着你和小凡未来前途的人，特别是小凡，你一定要注意！”

    杨林摆了摆手，不耐烦地说道：“知道了，知道了，你个老婆子唠叨我几十年了。每次都是一样的话，烦不烦！”说完，他随手拿起了今天的报纸，不愿意再继续这个几十年都没有争论明白的话题。

    “你又不耐烦了，不耐烦我也要说啊！你平时就是眼睛里容不得沙子，工会里大大小小那么多人，就属你铁面无私。做什么事都那么较真，这些年，你说你得罪了不少人了！你自己也就罢了，黄土埋了半截身子的人了，但是你这样也会影响咱们小凡！咱们儿子能力多强，人缘也不错，为什么得不到重用？！还不是因为有你这么个不近人情的老爸。”刘文一脸抱怨地说着，手里的活却没有停下。

    杨林放下手里的报纸，看着刘文，阴沉着脸，说道：“那你让我怎么办？！我是党员，企业也是国家的企业！难道你让我放弃原则、放弃脸面，去低三下四地跟那些只顾个人利益的小人们同流合污吗？”说完又将报纸拿起了，挡住了自己的脸，觉得不看，不听，就能结束这个话题了一样。

    “妈，我爸那是正义！习武之人怎么能没点血性呢！腰板那么软，怎么对得起咱们杨家内家功夫传人的身份啊！是吧，爸？”在一边摆弄着手机的杨凡忽然接话道。

    杨林得到了杨凡支持好像立刻来了精神，将报纸放在一边，挺起胸膛，说道：“对，儿子说得对！咱们练武的人，练得不单单是身体，要保持一颗正义的心，这可是老祖宗定下的宗旨！”杨林这番话说得正义凌然，声音也高了许多。然后扭头看向杨凡，问道：“对了，你今天的呼吸运行练了吗？这可是内家功夫的基础，不能间断！还有，今天的闭气练了吗？”

    “哦……练了，练了……”杨凡忽然觉得引火上身，还好今天没偷懒。

    “爸。今天我的闭气是3分28秒，稳步上升啊！。”杨凡慌忙补充道。

    杨林点了点头，一脸欣慰地说道：“嗯，还不错！练了这几年就达到这个水平，说明你真的很有这方面的天赋。”说完后又拿起报纸，直直地看着报纸发呆，可今天的报纸上明明没有他感兴趣的内容。

    “3分38秒就有什么了不起的，我今天已经超过4分钟了！”随着一个温柔的女声，“咯吱”一声，家里的门被打开了。

    三人闻声看去，杨艳手里拎着一个挎包走了进来，这会已经在玄关那更换拖鞋了。杨艳走到杨林身边，将包仍在茶几上，自己也像自由落体一样地瘫坐到了沙发上。

    “哎呦，今天可累死我了！”杨艳揉了揉自己的腰。然后扭过头，冲着杨凡抬了一下额头，那意思是我的闭气功夫比你强。
','    杨凡耸了耸肩，脸上一副无所谓的表情。

    “是丫头回来了！今天怎么这么早？吃饭了吗？”刘文停下手里活，一脸关切地问道。

    “吃过了，妈。我知道我爸和弟弟明天去见他们大领导，这么重要的时刻，我就知道你们搞不好又得互相吵起来，所以提前下班回来解围了。”

    “你这丫头，别总瞎说！我才懒得跟那个老头子吵呢，如果吵管用的话，你爸早就不是现在的职务了！”刘文一边嗔怒，一边将整理好的衣服挂好。又拿出一套黑色的西装，开始整理杨凡明天要穿的衣服。

    杨林没有接刘文的话茬，将报纸叠起来放好，对杨艳说道：“丫头，你比小凡大两岁。练习咱们家传武功也比小凡早，闭气时间比他长是正常的。咱们家的功夫以太极为基础，是实打实的内家拳，你爷爷结合了当代搏击技术重新改良了一下，大大提高了它的实战能力。我呢，又仔细研究了咏春拳和截拳道的特点，在招式上做了一些优化，现在这门功夫可以说在防守反击和近身短打上无懈可击。

    不过，内家功夫，易学难精。而且需要长年累月的不间断苦练，你弟弟在这方面的天赋真的比你好。哎，要不是他身体偏弱，我准备让他去当搏击运动员了。你入门早，闭气和呼吸吐纳比你弟弟强是正常的。但不能骄傲，4、5分钟算不了什么，连高手的边都沾不上呢。”

    “行了。老头子，你自己能闭气多长时间？我看人家吉尼斯世界纪录20多分钟呢！你行吗？”刘文忽然打断杨林的话，因为一般谈论武术这个话题，就是他们爷仨的事情，刘文一般就插不上嘴了。

    杨林立刻换上一副严肃的表情，好像是自己引以为豪的东西遭真的到了质疑一样，厉声说道：“那能比吗？纪录有什么用？那都是提前经过科学测量的。什么环境、温度、人体状态都得达到最佳，还有一个团队在背后支持，才能有这么个结果，这能有什么用啊！”

    刘文看着杨林又要发飙，就默默地继续做手里的活，懒得再跟他纠缠。

    “行了，弟弟的武术天赋是比我好，谁叫咱弟弟天生聪明呢！对吧。你那个引以为豪的两极刀法，咱弟弟不也很快就领悟了嘛。而且，弟弟的美术天赋也不比我差，他要是学美术，我可能就没办法评上我们美术学院的优秀教师了。”杨艳总是能敏锐地察觉到家里谈话氛围的变化，适时地转移话题。

    杨艳瞥了杨凡一眼，杨凡冲着姐姐比划了一个胜利的手势。这种转移话题的伎俩，两人再默契不过了。

    杨林也收起那份要跟人拼命的表情，沉声说道：“两仪刀法本来就是实战的，不难学。这是你体校的陈叔叔跟我一起研究出来的，一套专门应对突发事件和无声战斗的刀法，这与咱家武术注重一招毙敌的理念相同。小凡有基础，学起来自然很快。

    听说你陈叔叔在咱们军区特战旅教授这门刀法的时候，还很受欢迎呢。这刀法的看似简单，但要懂咱们家的内家功夫才能真正体会招数中的变化，陈叔叔教的也都是一些基础招式。你这个丫头别酸，这个刀法不是不教你，是一个女孩子真的不适合。”

    “知道了，老爸。这么霸道的东西我也不想学，我练武就是为了强身健体和自保，又不想做大侠。”杨艳坐直了身体，一脸严肃地问道：“对了，爸。明天的见面，您觉得会怎么样？您的那个武术交流推广项目有希望吗？还有弟弟的职务有没有可能再进一步？”
',10064,10191);
insert into ds_book values(null,10192,'杨林轻轻叹息了一声，说道：“谁知道呢，事在人为吧。你们年轻人不总说‘理想是丰满的，现实是骨感的’嘛。这么多年了，强迫不来。哎，为什么想做事的人总是要这么辛苦得争取做事机会？而那些不想做事的人手里却握着权利，握着资源！这是什么世道！哎。”

    杨林双手揉了揉太阳穴，闭上眼，靠在沙发上，再次皱起了眉头。

    杨凡起身坐到杨林旁边，说道：“爸，您也不用太担心。您说得对，有些事我们强迫不来。我们没有能力改变他们，但是他们也改变不了我们。这，就是死结，是没办法的事。

    爸，咱们也不要抱太大的希望，虽然李士朋的秘书说这次要提拔我们，可我觉得好事不会这么轻易地落到咱们头上。话说回来，爸，只要他能同意你的武术交流项目就行，我的职位无所谓。我还年轻，机会多得是。实在不行我就跳槽去别的公司呗！树挪死，人挪活嘛！”

    听到这，刘文立刻放下手里的活，看向杨凡，一脸急切地说道：“小凡，你可不许胡说！现在外面经济形势不好，你又不是不知道！你这个央企人力资源的位置很多人垫着呢！什么死结？你们爷俩怎么还互相安慰上了！你们的脾气就不能都改改吗？就喜欢顶撞领导！领导再不好，那也是领导啊！他们可掌握着你们的前途呢！这点道理，你还不明白吗？”

    杨凡看见刘文有些着急了，慌忙解释道：“我知道，我知道……妈。我不会那么冲动的！我说的那都是最坏的打算，不到万不得已我不会那么做的。但是……，妈，您能不能别说什么能当领导的人肯定有过人之处的话了，这种话……我都听腻了！”

    杨艳凑近刘文身边，挽着她的胳膊，劝说道：“对啊，妈。弟弟是有分寸的，好多事确实就是矛盾的。有时候你再怎么想，再怎么着急也解决不了，还是顺其自然的好，咱们一家子再怎么也不至于到活不下去的田地。妈，您呀，就别太着急了。”

    刘文长出了一口气，叹息道：“哎，你说你们爷俩脾气怎么那么像呢！小凡啊，你也别怪吗唠叨。大家都这么说，那就肯定有道理啊。现在都兴拉关系那一套，咱家没有关系，可现在又是这么个世道，咱不就得随大流嘛！”

    随后，她点指着杨林，埋怨道：“都怪你，死老头子，早知道就不该让小凡练武！底气足了，脾气就犟！”

    说完，又拾起了杨凡的衣服继续熨烫着，挂烫机发出阵阵水雾。

    听到刘文说到自己，杨林立刻坐直了身体，一本严肃地说道：“哎，我说老婆子，你怎么越说越远！这跟练武有什么关系，咱家小凡就是一身正气！随我，有什么不好！这个社会还是需要有正气的人，光靠法律行吗！

    先别说那么多人能无视法律，就算法律面前人人平等。那总有法律管不到的地方吧，还要靠人间的正气！”

    杨凡看到杨林要发飙，赶紧傻笑着解围，说道：“妈，我就是这个脾气。这不赖爸爸，可能就是缘分吧。要不当年在福利院，你们怎么就一眼看中了我，把我领养了呢。哈哈哈哈哈。”

    提到领养这个话题，杨林立刻换上了一副略显紧张的表情，刘文也放慢了手上的动作，杨艳也扭过头看着杨凡，沉默不语。

    这件事，在杨凡大学毕业的时候，一家人经开诚布公得说过了。杨凡非常理解杨林和刘文，甚至更加感激他们，一家人的感情没有受到任何影响。2年来，杨凡从来没提起过，今天杨凡当做一个笑话一样说出来，杨林和刘文还是感到有些诧异。
','    刘文扭过头，看着杨凡，假意嗔怒道：“你这孩子，尽瞎说！这怎么扯上关系呢！不过，要说当年，领养你，还真是我的主意。你呀，在那些男孩中，身体条件算是比较差的，却是最聪明的！我就动了个心眼，既然你身体不好，你爸就不会强迫你练武了。再有就是，那时候你太可爱了……自打我们进门，你的一双大眼睛就一直盯着我们，眨啊眨的……谁看了能不爱啊！哎呀，这都是缘分，是缘分呐！”

    刘文说着说着，眼圈就红了。她赶紧加快动作，将杨凡的西装整理好，挂到了一边，擦了擦手，坐到沙发对面的椅子上。

    杨艳则站起身，搬了一把椅子坐在了刘文的身边，挽着刘文的胳膊，将头靠在她的肩膀上。

    刘文轻轻拍打了杨艳的后背，皱起眉头，说道：“你这样丫头，都快嫁人的年纪了！怎么还跟着小孩似的！”

    “什么嫁人？我还小，还小……”杨艳撒了个娇，继续黏在刘文身上。

    刘文轻声叹了口气，捋了捋杨艳额头前的头发。

    杨林此刻却坐直了身体，一本正经地质问道：“呦，老婆子！原来你是这么想的，还有这么个小心思！这么多年我都还不知道呢！”

    刘文白了杨林一眼，没有搭理他。

    杨凡鬼魅地一笑，说道：“妈，那要是这样，你看这不就说明咱们更有缘分了嘛！缘分这东西，就是这样。不管你怎么挑、怎么选、有多少理由，该遇到的还是会遇到。说到底，咱们注定就是一家人。这缘分，要比那个冷冰冰地血缘关系重要得多了！还有……妈，难道我现在就不可爱，不聪明了吗？”

    “你这孩子！妈哪有这个意思！都是被那个死老头子气的。”刘文说这些的时候，虽然一脸微笑，可眼睛又有些红了。

    看到这情况，杨林也没再继续说什么。他也知道老婆的性子，这些年没少为了这些事在角，他们一家是谁也说服不了谁。杨凡受杨林影响很大，爷俩脾气也像，总是站在一个阵营。他们对面的阵营呢，就是刘文。杨艳总是充当和事佬，当两边争论不下的时候在其中调解。

    不过，杨林和杨凡一致认为，他们一家四口中，刘文付出得最多。她为了这个家，为了他们父子俩，真的是操碎了心。

    气氛缓和了下来，刘文忽然扭头看向杨凡，问道：“对了，小凡。你跟那个薛晴怎么样了？听说她们家条件不错，你这个时候就别大男子主义了。人家姑娘肯定也是喜欢你的，不然也不会在家里大人都反对的情况下还坚持跟你在一起。你啊，得把握住啊，知道吗？别想太多，在这个社会，你就得服软。要是真的能用上关系，不是还能少走点弯路嘛。

    你别听你爸那套。什么正义啦、义气啦、侠气啦，那些都是老掉牙的理儿了。只要咱们心地善良，没有害人之心就行了。妈不指望你们都能大富大贵，你看那些富人们，每天忙得焦头烂额，还都担心这个融资、那个合作，活得多累啊。妈就希望你们都快快乐乐的，有一份稳定的工作，有一个能作伴的人，然后平平安安地一辈子，生活不就该是这样嘛！听妈的，别放不下面子，啊，去主动找找薛晴。”

    杨凡放下手机，每次提到这个话题，他都不愿意多说什么。毕竟两代人的观念差异太大，但他又不能直接回绝，总是尽量找一些话题搪塞过去。可尴尬的事，最好的话题刚刚都说完了。

    杨凡犹豫了一下，直接说道：“额，妈。你看，时间也不早了。我得先去睡了。那个，为了明天的会面，我得养好精神。”

    说着，杨凡站了起来，故意很是夸张地伸了个懒腰，打着哈欠向卧室走去。

    刘文无奈地摆了摆手，说道：“你这孩子！一问这些你就烦，妈还不是为了你好嘛。行了，行了，行了，你早点休息吧。记住了，你跟你爸不一样，他都这个岁数了，过两年就退休了。你可得为了你的未来多想想，你还这么年轻，未来的路还长着了，也得改改你这个性子。”刘文忍不住又嘱咐了几句。
','    杨凡站在自己的卧室里，从虚掩着的门缝里探出半个身子，说道：“好嘞！妈，我知道了！晚安啦，爸。晚安啦，姐。”说完，轻轻关上了门。

    “哎，小凡。睡觉前不要忘记再做一次呼吸吐纳，内家拳练的就是一口气，不能断，明天早晨起来闭气和晨练也不能偷懒！”杨林冲着杨凡卧室的方向喊道。

    “遵命，老爸。”杨凡在卧室里大声答道。

    杨艳拉了拉刘文的手，压低声音说道：“妈，小凡其实对那个薛晴挺好的，他跟我私下说过他们之间的事。那个薛晴，其实也一直再犹豫。我听小凡说，她背着小凡跟家人介绍的男孩去相亲呢。这个事，您还真不能总催他，我觉得小凡自己应该也在犹豫。这会，他也挺难受的，咱们就别给他压力，让他自己决定吧。毕竟，小凡和薛晴之间的事，他自己最清楚。”

    “对啊，老婆子。她们家条件好是她们家的事。如果她对小凡不上心，以后结了婚，受气还不是咱们小凡嘛。你觉得以咱小凡的脾气，能受得了那个嘛？俗话说得好，这强扭的瓜，它不甜！”杨林在一旁补充道。

    刘文忽然站起来，指着杨林，埋怨道：“哎，你这老头子，你还说！还不是都怪你！小凡要就是因为天天围着你学功夫，搞得很崇拜那你似的，最后弄得跟你一样的脾气嘛！你……你们爷俩，没一个让我省心的。”完后，刘文起身甩手走进了卧室，背过身去的时候还擦了擦眼角的泪水。

    看着刘文进了卧室，杨艳耸了耸肩，叹息道：“哎。家里就这么几个人，比我那班上几十个人管起来还麻烦。爸，我也先去睡了。今天有个老师请假，说是去参加弟弟的婚礼，让我代课。我整整站了一天，可累死了。”

    说完，杨艳也站起身，准备去卧室休息。走到一半又停下脚步，转过头，对杨林说道：“爸，你说你跟妈都多少年了。妈的脾气你也知道，你就让着我妈点呗。我妈就是那么个爱着急的性子，从小到大都是把我和小凡捧在手心里养大的，为了这个家可也没少操心！”

    “行了，丫头，我知道了。你也早点歇着吧，工作上别太较真了，还是身体重要。你妈妈的事，我心里有数。去睡吧。”杨林说道。

    杨艳点点头，走进了卧室。

    杨林独自在客厅待了一会，他从不吸烟，遇到烦心事的时候就会给自己泡一壶绿茶。他一个人在客厅里喝着茶，想着明天的会面，发现绿茶也不能让自己平静下来，索性就站起来，关上了客厅的灯，也走进了卧室。
',10064,10192);

insert into ds_book values(null,10193,'潇尘的意识在无尽的黑暗中飘荡着，也不知道过了有多久，终于静止下来，黑暗中一团若有若无的火光在闪着，慢慢的那团火光燃烧起来，让他渐渐地恢复了一丝神智。

    “咦？这是哪里？我不是死了吗？”

    “我怎么还会有意识？”

    火光在黑暗中继续燃烧着，不断的温暖着潇尘，让他的意识越来越清醒，越来越强大。

    一种强烈的痛苦和无边的愤怒，在灵魂中燃烧起来，潇尘突然产生一种强烈的冲动，想要冲破这黑暗。

    他想要跃起，想要睁眼。

    似乎感应到他的这股强烈的意念，黑暗中那团温暖的火光突然暴炸，一道门户出现在黑暗里，门户里是无边的光明。

    潇尘的意识猛的冲入了那片光明中，下一刻，潇尘终于睁开了眼睛……

    古色古香的房间，柔和的光亮中，这是……

    出于本能，下意识手掌往身边一撑，想借力坐起……

    手刚落下，触电般的酸痛传来，一阵无力。

    竟然无法将身体撑起……

    这……我怎么会这么虚弱？！我可是九天的王者！

    “尘儿，你终于醒了。”

    耳边传来一阵温柔的女声。

    潇尘看到了一身体柔弱的美妇人出现在潇尘的眼中，她坐在床边，微蹙着眉头，正一脸担忧和自责的看着自己。

    妇人有这一张精致的面孔，年纪大约在三十岁，乌黑的头发上插着一只碧玉簪子，完全可以用倾国倾城来形容她，长长的睫毛上，还挂着点点泪珠，似乎刚刚哭过。

    怎会这样？

    呼……我不是在九天之巅峰被他们给斩杀了吗？

    难道只是一个梦，潇尘长舒了一口气，用衣袖擦拭了一下额头的汗水。

    真的是梦吗？

    不！

    潇尘的脑海里，涌入一段熟悉的回忆……

    这不是梦！当时发生的一切怎么可能是梦！

    一切那么真实！又怎么可能是梦！

    潇尘，是九天天域这片星空下的王者之一，九天十帝之一！

    可惜，被一生中最重要的兄弟跟挚爱背叛，联手无数高手斩杀于九天之巅，诸神峰上。

    为什么？！

    潇尘怎么也没有想到，他和她竟然联合他们对他出手！死在他们阴谋的剑下。

    当时的诸神峰上，当潇尘看到一个个人影出现在阵法外。

    潇尘就明白。

    这是一个阴谋，针对自己的阴谋……

    自己被最信任的人出卖了！

    要不然，以他的精明，还有实力，他们的阴谋不会得逞。

    直到被乱剑刺穿胸膛，被狂暴的灵力崩碎肉身，割裂灵魂而死，潇尘还是想不通。

    相依为命多年的兄弟，还有挚爱，为何要出卖他！

    没想到，我潇尘纵横一生，最后栽在了自己最信任的兄弟跟挚爱手上。

    可笑，真是可笑！

    “尘儿，你终于醒了……吓坏娘了。”

    温柔的声音传来，充满了焦急。

    脑海里一阵混乱……

    他无比肯定，他不认识这个美妇人，可是又感觉又那么熟悉！

    她看自己的眼神，却好像是在看至亲一样，没有任何虚伪，充满了真诚。
','    她是谁？叫我尘儿，还自称“娘”……

    娘是能随便叫的吗！

    突然看着刚擦拭掉汗水的手，白嫩细腻，在看这具身体……

    这是？我的身体？

    就在潇尘懵懵的时候。

    一股陌生的记忆，涌入了脑海……

    啊！

    整个身子如遭雷击，彻底呆住，好像被点了穴一样。

    我……

    我没死！不，准确的说是我的肉身以毁，仅剩一缕残魂存世，也对，在那等攻击之下，就是神也会陨落，我没有形神具灭已是万万幸了。

    我的残魂竟然附身这具身体转世重生？！

    “哈哈哈，我又活下来了！天都舍不得我，你能耐我何！！！”

    “当日之恨，刻骨铭心，今日若尔等还在，比当承受我今生怒焰。”

    “你们等着！代我重修几栽，必定杀上九天，你们讲承受我的怒炎，将你打落万丈深渊！让你万劫不复！永世不得轮回！”

    我……竟以一缕残魂状态穿越到九天天域之下的世界，九州大陆。

    而且是百年之后！附身到同样叫潇尘的家伙身上。

    不过也太不幸了，在融合这段陌生记忆的过程中，潇尘也知道了“潇尘”重伤躺在床上的原因。

    潇尘，十四岁，潇家家主独子。

    眼前这个美妇人，林素弦就是他的母亲，不过记忆里关于父亲的信息……零零碎碎。

    今天一早，潇家五长老小儿子潇万鑫骂潇尘是有娘生没爹教的野种。

    潇尘大怒，直接动手……

    只是，连淬体都没有完成的他，又怎么会是淬体境四重的潇万鑫的对手，直接被潇万鑫重伤，奄奄一息。

    “潇尘”的记忆就如回放一般在潇尘的脑海里涌过，原来就在“潇尘”灵魂叹出最后一口气的时候，潇尘的残魂穿越，接下“潇尘”的一切。

    他知道，这一刻起，他将以潇尘的身份融入这个世界。

    从今以后，他就是潇尘，潇尘就是他，包括潇尘的身体、记忆、情感。

    上一世，潇尘从未见过自己的生母，据说在生下潇尘三天后她便去世了……

    看着眼前的美妇人，没想到自己重生在这具身体里面竟然多了一位娘亲，更让潇尘从妇人眼里感受到了母爱的温暖。

    “你安心去吧，以后我会帮你好好照顾你娘。”

    “娘……”

    潇尘心里一暖，看着眼前的美妇人眼神柔和起来，微微一笑。

    这一声‘娘’，叫得亲切，没有任何不自然。

    美妇人单薄的身上披着一件雪白的连帽貂裘，看着身材瘦弱脸色苍白的潇尘，轻轻叹了一口气，双手合十喃喃道：“谢天谢地，还好我的尘儿没事。”

    坐在床边抚摸着潇尘的额头，担心道：“可吓坏娘了。”

    外面，响起一阵急促又凌乱的脚步声。

    “你们干什么！这里是潇家家主私人宅院，你们干什么！”

    一个容貌娇美的侍女，想要拦住闯进来的几名青年，却被走在最前面的那一个流里流气的青年重重一推，啪叽摔倒在几米之外。

    这青年是五长老家三公子的头号跟班，林亮，他可是淬体境第四重的武者，一拳打出可是有三牛之力，一牛之力就有一千斤！

    这侍女也就百斤之重，猛地一推后，重重衰落在地，就听那侍女惨一声哀痛的惨叫，“咔嚓”一声，左手手臂被摔断。

    接着，一身锦衣，身体健硕，步伐沉稳的五长老家三公子，潇聪走进了别苑，冷眼盯着地上的侍女，不屑说道：“哼，你个奴婢也敢挡本公子的道，找死！”

    三公子的身后，跟着六个身穿青色劲装的侍卫，身躯高大威猛，显然是武力高强的武道修士，这几人属于三公子的贴身侍卫。

    几人皆是怒目圆睁的盯着摔倒在地的侍女，侍女脸色苍白不敢言语……

    林素弦听到外面的动静，安抚了潇尘后边起身出去，关好门。

    林素弦盯着外面的林家潇聪，微微蹙眉，道：“潇聪公子，这是我的别苑，你这样闯进来，不好吧！”
','    林聪抬头看着站在台阶上的林素弦，唇角一撇，道：“家主夫人，从今天起，这别苑就是我五长老一脉的了，怪就怪你们主脉后继无人啊，哎呀呀，你们母子，就去那西南小院吧。”

    林素弦的脸色一变，五长老一脉要撕破脸皮了吗？

    林素弦摇摇头，怅然一笑，道：“五长老既然这么快就要赶我们母子出别苑，我们孤儿寡母的也拧不过那大腿，那好吧，我们明天就搬去小院。”

    潇聪嘿嘿一笑，眼神阴翳道：“本公子今天就要入住别苑，你们现在就搬！”

    林素弦知道潇尘体弱多病，这刚醒来，经不起折腾，带着几分哀求的语气，说道：“潇聪，你也知道你表弟他体弱多病，身子骨差，这就快黑天了，这天寒地冻的，万一……”

    潇聪冷冷一笑，不带一丝感情毫不客气说道：“这世上体弱多病的人多了，可怜的很，但是，并不是所有人都值得可怜。”

    “呵呵，既然表弟体弱多病，还活着干嘛，浪费我潇家粮食和资源。”

    “你们可是表兄弟！”

    林素弦还想再说什么，吱呀，身后的房门被推开，潇尘出现在门外。

    潇尘的身子虚弱，那两个家伙下手是在是重，只能依靠在门框上才勉强站立。

    盯着不远处的潇聪，他看似弱不经风的身子里像是蕴含着强大的不屈的意志，道：“不用求他们，我们现在就搬走。”

    林素弦赶忙上前扶住潇尘，怕他的身体在着了风寒变的雪上加霜，“尘儿，你怎么下床了？外面天气寒冷，还不快回屋里去。”

    潇尘固执的摇摇头，道：“娘，我们不需要求任何人，这里本来就不属于我们，给他们又何妨？”

    “我们的东西就算是易主，迟早有一天他们连本带利还回来！”

    感受着潇尘的情绪，看着潇尘坚定的眼神，或许是受到了潇尘不屈意志的感染，林素弦没有再说什么，泪眼婆娑的点点头。

    林素弦扶着潇尘，一步一步走出别苑，除了被摔断胳膊的侍女，剩下两名名侍女没有一个跟着离开别苑。

    所有人都看得出来，五长老已经对他们母子动手了，潇家再也没有他们的立足之地。

    这两个侍女本来就是幽兰别苑的仆人，谁是主人伺候谁，现在最明智的选择就是全力去讨好五长老一脉，家主失踪多年，五长老俨然已经成为了潇家家主。

    潇家西南小院，是个堆放杂物的地方，有五间小屋，这个地方一般没有人住，偏僻，满地落叶。

    入夜，寒风凛冽。

    潇尘看着窗外的星空，坐在冰凉的石凳上，身上披着一件厚厚的外衣，瘦弱的身子依旧觉得寒冷。

    弱，太弱了，这具身体弱到了至极。

    在这个世界，武者横行，强者为尊。

    只要你足够强大，任何权势在你面前都需要俯首，包括至高无上的皇权。

    只有修炼武道，才能强大，才能保护娘亲，不受人摆布。

    既然重生在这具身体，无论是找他们报仇，还是保护娘亲都必须足够强大。

    今日受的毒打，还有侮辱冷漠，都是因为自己太弱，弱小到没法反抗，就是因为不够强大，甚至连住的地方被强占，都保不住……

    要想被别人尊重，有一个舒适温暖的生活环境，那就要有震慑他人的力量，首先第一步，就要成为一个武者！

    在九州大陆，想要成为一名武者，就得引灵，引灵入体，强魂，然后淬体，成为一名武者。

    若是不能引灵，无法和天地灵气共鸣，那么就永远无法成为一个真正的武者。

    潇尘今年十四岁，由于体弱多病一直没有引灵成功，过了十四岁便是错过了最佳的引灵年龄，就算日后引灵成功，其武道一途的成就也不会太高……

    虽然潇尘是家主独子，可若是引灵成功达到淬体四重，也不会被人给打成这样，潇聪也不会如此嚣张。

    “只要能引灵成功，那我就能淬体，凝元，修炼《九天玄元决》。以《九天玄元决》的玄妙，就算错过最佳的引灵年纪，我依旧能追上别的天才，成为绝世强者。”

    引灵不是说坐在地上五心朝天就能引灵，得靠灵石结阵，借住阵法激发灵石里的灵力，形成一个玄妙的循环触发天道圣灵然后从九天之上落下一颗种子，进入体内。

    只要这种子在淬体境后期能发芽蕴含出灵力，那就真正踏入了武道修炼之途。

    引灵阵，每个家族都有，每隔半月开启一次，明天就是开启之日。

    林素弦看潇尘还没有睡，“尘儿，早些休息吧！”

    “娘，我明天想去引灵阵试试。”

    林素弦深深的看了潇尘一眼，心头轻轻一叹了，她对潇尘引灵根本不抱任何希望，毕竟试了不止一次了，已经十四岁几乎没有引灵成功的机会了。

    但是，作为母亲，必须给潇尘鼓励，给他信心。

    “嗯！娘相信你！”',10065,10193);
insert into ds_book values(null,10194,'躺在冰冷、坚硬的木床上，潇尘思索着引灵入体的事。

    这具身体的原主人，十几年里多次引灵，还是没有引灵成功，实在是反常，在潇尘残魂穿越之时也查探过这具身体，除了体弱没有什么问题，天赋也在中等，怎么就不行呢？

    天赋越高之人，引灵入体越早，对日后的修炼也有更好的帮助。

    上一世的潇尘，还在胎腹中的时候，就引灵入体，靠先天胎气淬炼身体，可谓是天纵奇才。

    我该怎么做，才能让他有更大的机会顺利的引灵入体呢？

    潇尘无法入睡，从床上做起，现在的潇尘就相当于是抱着金山银山进了青楼，有钱有姑娘，可惜本身却是个伺候皇帝的太监……

    这等极端的郁闷事生在自己身上，倒霉……

    碰到这种情况也真是无奈至极，空有一肚子的修炼经验，满脑袋的顶级功法……此刻居然一点也用不上，一点也不能修炼。

    牢骚归牢骚，不过办法还是要想的。

    鬼使神差下伸手从怀里掏出一块玉佩，整个造型像是一个宫殿，晶莹剔透，没有一丝杂质。

    在手中捏了捏一股清凉的触感让潇尘一颤，这才拿出来不久，这天气虽然寒冷也不至于瞬间就变凉啊！

    有古怪！

    这东西“潇尘”一直佩戴，不过关于这东西的来历“潇尘”却没有半点记忆。

    这一夜，桃源城下起了大雪。

    第二日清晨，整个桃源城，被大雪覆盖，一座座阁楼，亭台，全都裹上了一层晶莹的雪衣。

    潇尘来到潇家演武广场，广场上有不少少年少女演练着拳脚。

    广场傍边有个石块围起来的区域，中间有一个凸起的圆形石台，上面刻画着一个六角星芒，六角星芒里连着几条刻画着奇异符号的纹路，每个纹路相交的地方有一个凹陷的洞，这便是一座大型的引灵阵。

    潇尘走向引灵阵引起了几个少年的注意。

    “哏哏！我说这大清早的起来就不舒服呢，原来碰上这么个废物了啊！”潇聪背着双手，冷峻一笑。

    潇聪身边站着的潇万鑫，抱着胳膊冷着一张脸，说道：“呦呵！没看出来啊！这才一天一夜，你就能下床了！看来给你的教训不够啊！哼哼……”

    潇尘看着这个冷脸少年，暗道，“就是他把你害这么惨的么？放心，我会给你报仇。”

    喃喃自语一声，也不知道潇尘在跟谁说话。

    周围的潇家子弟指指点点议论纷纷。

    “这个废物，这么大了还没有引灵成功，还活着干嘛！怎么不去死！”

    “就是，给我们潇家丢人，怎么还有脸活着！”

    ……

    都说帝王家的亲情最单薄，可这世俗百姓的亲情又厚到哪里去？这些人之中有不少跟潇尘是表亲……

    哒哒哒……

    潇尘默默地往前走着，并不理会林聪和林万鑫。

    在没有足够的实力之前，任何的口舌之争，都没有用，那只会让看不起你的人，更加看轻你。

    潇尘走到引灵阵前，看着这个阵法，心头轻叹一口气……

    “前来引灵的子弟，都站过来。”地气十足的声音传来，一个青色劲装虎背熊腰的男子走过来。

    引灵阵前，呼啦聚集了十来个孩子，大都在五到十一岁之间，潇尘在这群孩子里算是鹤立鸡群了。

    青色劲装男子看着站在那里很是突兀的潇尘，眉头一皱，冷冷的说道：“你也来引灵？”

    潇尘点点头没有说话。

    “哈哈哈，我认识他，他都十四岁了还没有引灵成功，我娘说他这辈子都不可能成功了。”留着鼻涕的小男孩腆着脸指着潇尘跟傍边的小伙伴说道。

    “嗯，我爹也说过，我要是十四岁之前不能引灵，那就是废物，他就不要我了……”

    “是不是就因为他没有引灵成功？他爹不要他了？”

    ……
','    潇尘，一直是潇家的笑柄。

    潇尘袖中拳头紧握，骨节捏的发白，指甲刺入掌心，没有力量，连小孩子都瞧不起……

    这些话说的有些过了，不过在场的人却不以为然。

    林素弦在远处，看着倍受排挤的潇尘，心痛不以，但是，却一点办法也没有。

    青色劲装男子咳嗽一声，朗声道：“别废话了，上阵台，引灵！”

    十来个孩子纷纷闭嘴乖乖地走上阵台盘腿坐下，劲装男人从身后的袋中拿出十二块灵石，嗖嗖嗖，纷纷打入引灵阵中凹陷的地方。

    接着，男子指尖闪过一道白芒，打入引灵阵的阵眼。

    “哗——”

    浓郁的灵力，化成一根粗壮的光柱，直冲天穹，将云层击碎，冲入浩渺的苍穹。

    突然，“咻——”

    一点光芒从天外飞落下来，落入其中一个小男孩的眉心，与小男孩融为一体。

    人群中，发出一声惊呼，“七长老的小儿子，才五岁就引灵入体了！”

    “太厉害了，这么小的年纪，将来前途不可限量！”

    引灵入体的年龄就能看出一个人的天赋，六岁之前是天才，十岁之前中等，十三岁之前一般，到了十四岁，基本上就看不出什么天赋了，能成功引灵就是祖上积德了。

    所有人都用羡慕的目光，盯着那个五岁的小男孩。

    五岁就引灵入体，堪称天之骄子，将来的成就绝对不低。

    七长老容光焕发，摸着胡子，哈哈大笑，兴奋不已，“好啊！不愧是潇我林平的儿子，今晚醉仙楼，摆宴，各位可一定要赏光，哈哈哈！”

    “哗——”

    天空之上，又飞下来几道光芒，落入一位位少年，少女的眉心，化为一个个潜在的种子。

    引灵成功的孩子中七八岁的多，十一岁的两个人里只有一个成功，六岁之下的孩子没有一个成功。

    这次引灵最让人记忆深刻的，就是七长老的儿子，五岁就引灵成功，让所有人都望尘莫及。

    引灵入体的孩子都莫名兴奋，从这一刻起，他们就能踏上武道之路了。

    没有引灵成功的孩子都十分失落，有的更是破涕大哭，可谓是几家欢喜几家愁。

    眼看着引灵阵的灵力就要消耗完了，但是，潇尘还是没有成功引灵。

    十四岁还没有成功引灵，几乎是不可能再引灵入体了，今后只能做一个平庸的普通人了。

    所有人都将他忽视，就像空中的一粒尘埃，没有人在关注。

    林素弦最开始还抱有一丝幻想，希望自己的孩子能创造奇迹，引灵入体。哪怕不能成为强者，至少能淬炼身体，不在受病魔缠身。

    随着引灵阵灵力的消散，林素弦的希望，再次变成失望，甚至是绝望。

    在潇尘都以为自己无法引灵入体的时候，他脖上戴的玉佩，微微亮了一下。

    在阵法灵力消散前的那一刹那，一粒光芒，从天而落，落到潇尘的眉心里，一个灵力种子在里面扎根。

    “哗啦啦——”

    一股灼热感，从眉心传来，旋即传遍全身成，那股灼热感瞬间消逝。

    成功了！

    潇尘无比兴奋，终于引灵入体了！

    只要引灵入体就行，管他是在几岁，潇尘丝毫不在乎。

    本来没人注意潇尘，但是，在潇尘引灵入体的那一瞬间，却吸引了所有人的目光。

    “那不是潇尘吗！他都十四岁了！而且体弱多病，多次引灵都未成功，这次居然能成功！”

    这也行？

    ……
','    很多人以一种不可置信的眼光看着潇尘，觉得不可思议。

    站在一边等着看潇尘笑话的潇聪、潇万鑫也瞪大了眼睛，张着大嘴，满脸惊讶的神色。

    这怎么可能！

    走****运了？

    林素弦向着潇尘小跑过来，看着潇尘眉心的光点之后，欣喜的落下两行眼泪，立刻冲到潇尘面前，紧紧地抱住潇尘的身体，“尘儿，我的儿，你做到了，终于做到了！”

    ……

    一个仆人走到，林素弦面前，恭恭敬敬笑盈盈的说道：“恭喜夫人，恭喜潇少爷引灵入体！五长老请潇少爷过去，他要亲自检测潇少爷的引灵是否算是成功，毕竟……”

    “五长老？”

    林素弦的笑容马上僵住，有些紧张的将潇尘护在身后，脸色苍白。

    潇尘察觉着母亲情绪上的变化，心中暗道，看来这个长老不是善类，得多加小心。

    “娘，我们去见五长老吧。”

    五长老的小院就在广场北边，一白眉老者端坐在大厅里的正位，品着香茗，两侧各坐着一个中年男人，潇尘认识，是指导潇家子弟修行的老师。

    哒。

    五长老放下茶杯，看着李牧，一咂嘴，道：“族长未归，潇家大小事物有我代管，潇尘引灵成功，是件喜事，毕竟是族长之子，必须得重视。”

    “林师，你看看潇尘是不是真的引灵入体了。”

    林师走向潇尘，右手伸出二指按在潇尘的眉心前，片刻后摇了摇头，“灵力种子实在是太弱小了，几乎没有孕育灵力的可能。”

    什么？

    啊~

    “啧，既然林师这么说，那就算引灵成功，恐怕将来的成就也是十分有限呐。”五长老一脸不甘道。

    潇聪和潇万鑫此也来到了房间里。

    潇聪抱着胳膊鄙夷，道：“表弟已经十四岁了，错过了最佳的修炼年龄，就算他引灵成功了，那灵力种子也不可能酝酿出灵力，废物就是废物！”

    五长老抿了一口茶，道：“聪儿说的不错，就算引灵入体了吧，不过已经十四岁了，为了节省资源，就去领一份淬体液吧。”

    林素弦脸色一变，道：“五长老，引灵入体后的第一年是最主要的一年。当年潇冲引灵入体之后，得到了二十四份淬体液，一个月可以淬炼两次。为何我儿，只有一份？”

    砰！

    五长老重重的将茶杯放到桌上，冷声道：“潇冲三岁引灵入体，岂是潇尘可比！”

    “潇冲哥可是潇家二代最有才情的武者，整个潇家有谁能与之相比？潇家的强大系在冲哥的身上。”潇万鑫道。

    潇聪接过话，道：“我说句你们不爱听的，冲哥的一根头发，都比潇尘的性命值钱百倍，千倍，万倍，根本没有可比性。”

    林素弦贝齿紧咬嘴唇，继续为潇尘争取，道：“可潇聪，潇万鑫引灵入体的时候，也得到过十份淬体液。”

    “天赋越高，得到的资源越多，潇尘天赋……最低，得到的资源自然少。”

    “可是……”

    五长老不耐烦的沉声道：“我已经做了决定了，妳想反抗吗！林素弦，妳若敢再多说一句，信不信连一份也得不到！”

    什么？再次！

    林素弦听着大夫人的话之后，身子微微一颤，脸色煞白，立马闭上嘴巴。

    这时，仆人将一份淬体液拿送来，递到潇尘手上。

    潇尘接过淬体液，便走到林素弦的身边，转过身余光扫了一眼坐在上座的五长老，扶起林素弦，道：“娘，我们走。”

    林素弦轻轻的抿了抿嘴，点点头，“嗯！”

    潇万鑫看着潇尘离开的背影，讥讽道：“一个月之内，你可一定要完成洗经伐髓，别浪费了这宝贵的淬体液。”

    潇聪不屑的声音响起，“哏哏！以潇尘表弟的资质，就算在给他十份淬体液，也不可能在一个月内完成。我当年进入淬体境都用了半年时间，潇尘表弟嘛，估计得一年以上，才有可能。”

    哈哈哈！

    潇尘没有理会身后的耻笑，袖中的拳头紧握，心中信念坚定，“你们就等着瞧吧，绝对不会让你们失望！”',10065,10194);
insert into ds_book values(null,10195,'回到房间，潇尘便迫不及待的将房门关起来，立刻准备修炼。

    虽然那个什么狗屁林师说灵力种子弱小，但是，只要有这么个种子，就一定可以孕育出灵元气，成为一个武者。

    想要成为武者，就得让这颗种子发芽，孕育出灵元气。

    首先，第一步，淬体。

    所谓淬体，就是洗经伐髓练皮沸血。

    简单来说就是淬炼身体，使得自己的身体逐渐的强化，并且最后由外至内，当体内筋骨骨髓强化到一定层次时，引灵种下的种子就会孕育出一丝灵元，只而有当人体出现这一丝灵元力时，他方才能够真正的成为一名修炼者。

    潇尘现在的身子虚弱的很，淬体带来的痛苦不只是肉体，还有神魂方面，若是这具身体的原主人肯定受不了。

    不过，现在的潇尘已经不是原来的潇尘。神魂变得异常强大，淬体的痛苦基本可以忽视。

    那么，接下来就就进行第一步，淬体。

    潇尘取出那一只装着淬体液的小玉瓶，用鼻子轻轻的嗅了嗅，确定是真的淬液之后，脱掉衣服，直接将整瓶洗髓液倒在身上。

    淬体液擦在体表之后，十分冰凉，但是，仅仅只是过去一个刹那，那一股冰冷便消失不见，取而代之的是一股滚烫的高温。

    就像有一团火焰，在体内燃烧！

    一丝丝火焰，钻进潇尘的全身的每一处毛孔，然后可以清晰地感觉到浑身上下传来的灼热之感。

    渐渐的，这灼热之感变轻，紧跟着传来一种想万虫蚀骨的感觉，潇尘拳头紧握，身上青筋暴突，豆大的汗珠从体表滚落。

    就是这个时候！

    他知道，这淬体液的药液融入了他的体内，正在改变他的体质。

    嗬嗬……

    强忍着想要冲破喉咙的哀嚎声，吃的苦中苦，方为人上人。

    忍！

    潇尘现在还做不到内视，并不知道引灵种下的种子在闪闪发亮。

    大约有三个小时，擦在体表的淬体液全被潇尘吸收，疼痛感渐渐消失，一股前所未有的舒爽传遍全身。

    蓦的，潇尘睁开眼睛，一道精光乍现，潇尘握了握拳头，感受着身体的变化。

    这变化让潇尘大吃一惊，这一份淬体液的药力竟然吸收了九分！

    要知道，用淬体液淬体，能吸收六分就已经是极限了，潇尘吸收了九分怎能不惊讶。

    要是再有几分淬体液，今夜一定能进入淬体境。

    潇尘心头轻轻一叹，以现在的情况，林家根本不可能在给一份淬体液，就是去买都买不起……

    噗通，躺倒床上，一脸郁闷。

    这具身体从小体弱多病，想要完成淬体，步入淬体境，成为武者，简直比登天还难！

    现在，好不容易引灵入体，修炼资源却被大夫人生生掐断，这不就是把人往死里逼吗！

    潇尘心里暗骂。

    “哏哏！”

    就在这时，一连串阴森的沙哑笑声，突然在潇尘脑海里响起。

    “什么人？”

    潇尘脸色大变，猛地从床上仰起。

    “哏哏！”

    “小子，今天就是你的死期！”

    “咦？不对！你不是那小子，你是什么人？！该死，你竟敢抢占本尊夺舍的身体，死！！！”

    沙哑的声音，到得后来，突然一变，充满了暴戾和愤怒。

    夺舍！！！

    潇尘瞬间反应过来。','
    这叫什么事儿！我这刚重生一天，就遇上夺舍！运气也太差了吧！

    若是前世，只要一个念想就可以将这神魂从这世界抹杀，可现在的潇尘，根本就没有凝练过神魂，遇上这夺舍凶多吉少……

    “死！！”

    愤怒的咆哮，陡然在潇尘脑海中炸开。

    瞬间，潇尘只感觉一阵刺痛传来，七窍流血，让他差点就昏死过去。

    刺痛来自于灵魂深处，让潇尘的身体都开始颤抖起来……

    “不……不可能！什么东西！啊……我不甘心……不甘心！！！”

    沙哑撕裂的声音突然一变，好像遇到了什么让他惊恐难信的事。

    短暂咆哮过后，那声音彻底消失，就好像从来没有出现过一样。

    脑海中刺痛的感觉消失，潇尘回过神来。

    “怎么回事？”

    柔和的光线照进房间，看着周围熟悉的环境潇尘松了一口气，轻拍胸脯，喃喃自语，“还好，还好……”

    “哗！”

    一道白芒，从胸口射出，击在墙上，潇尘一怔，随即扯开衣服，只见胸前佩戴的玉佩表面，浮现这犹如水波一样的光亮。

    太古怪了！这玉佩变得不一样了……

    就在这时，一段浩瀚而复杂的陌生记忆，冲进了他的脑海，被他据为己有。

    识海里，潇尘接受着这段记忆，这……

    饶是潇尘两世为人，也让这记忆给惊呆了。

    这份记忆，乃是十万年前九州天域封号大帝之一的“羽龙丹帝”。

    封号大帝是乃是天域的神，自帝落时代以来天域再也没有出现过封号大帝，他们都已成传说。

    羽龙丹帝，虽是以炼丹封帝，不过他同时也将铭文之术研究到极致。

    一次炼制神丹之时发生意外陨落天域，一缕残魂意外进入这个玉佩，几经然后几经流转，这玉佩就到了潇尘手里。

    “原来，这一丝残魂经过十万年的温养已经回复了一点点神志，这一次他是准备击溃潇尘的灵魂，夺取他的身体，以秘法重生！”

    “不过，我的出现，让他的计划彻底粉碎！在他击溃潇尘灵魂的刹那，我的一缕穿越而来，先一步融合了潇尘的灵魂取得了身体的掌控权。”

    “原来，多年前他就已经隐藏在潇尘的体内，伺机抢夺身体……潇尘的身体这么弱，也是他在搞鬼，他担心潇尘强大起来，会影响他进行夺舍。”

    “这一次潇尘重伤，生死一线，被他找到了机会，谁知最后关头，我的出现，让他的一切努力彻底白费。”

    命啊，这就是命！

    “可惜，最后关头，因为我这个来自潇尘之外的灵魂，让你功亏一篑。反倒成全了我，你所有炼丹药、铭纹之术的心得，如今都成为了我记忆的一部分。”

    “我还真是要好好谢谢你，雪中送炭！”

    哈哈哈……

    潇尘笑了。本来还在烦恼这副虚弱的身体如何继续淬体修炼，羽龙大帝就给他送了一份大礼。

    唉，好像少了点什么，低头一看，胸口处的玉佩不见了！

    就在潇尘还十分不解的时候，胸口表面浮现出一团光晕，化为一个漩涡。

    漩涡不断变大，包裹住潇尘的身体。

    潇尘只感觉一阵天旋地转，下一刻，他便来到一个密闭的空间，重重的摔落到坚硬的地面上。
','    短暂的失神之余，潇尘迅速恢复镇定，游目四顾，却见在一片白云缭绕之中，赫然有一座巨大的宫殿巍然屹立！

    宫殿的正下方，乃是两块巨大白玉做成的大门，上面空空如也，平滑如镜！

    潇尘一怔，这个宫殿好熟悉！玉佩！跟玉佩上的样子一模一样！

    今天是怎么了！怎么奇怪的事情接二连三的找上门来！

    潇尘地上爬起来，活动了一下疼痛的筋骨，开始观察四周的空间。

    吱呀！原本紧闭大门轰然而开！

    一股浓郁到了极点的白雾，就这么喷涌而出！

    白雾之后，却是一条长长的通道。

    潇尘走在通道上，只见空旷的大殿上方，有一处奇异的区域，凝神看去。

    竟然有一个石桌，桌上有……有个蛋！

    我的天呐！

    潇尘仔细的观察着这个蛋，这个蛋不一般，上面有着奇异的纹路，触手一股清凉的感觉，让潇尘心魂一震，一股舒适的感觉传遍全身。

    砰，潇尘的房门被撞开，林素弦一脸担忧的冲到潇尘床前，抓着潇尘的手，抚摸着潇尘的脸颊，道：“尘儿，你没事吧？”

    潇尘看着这关爱的眼神，摇摇头说道：“娘，我没事。”

    林素弦有点不相信潇尘的话，“没事你会撕心裂肺的喊？”

    “娘，我们还有钱吗？”

    林素弦一愣，道：“还有，尘儿你要买什么东西吗？”

    潇尘下床写出一份药材。

    “娘，我需要这些药材。”将手里的纸张递给林素弦。

    林素弦看了看药方，虽然不懂炼药，但还是认出了这些药材。

    “尘儿，这是增强体质的药材，你以前也用过，没有效果啊。”

    “娘，我想试再试。”潇尘一脸倔强和坚持。

    林素弦点点头，现在的尘儿已经引灵成功，说不定这药方能帮助尘儿修炼。

    半个小时后，林素弦拿着一包药材回来。

    “尘儿，需要我去找大长老帮你配药吗？”

    “娘，不用，妳给我吧。”

    潇尘接过药材转身回了房间。

    林素弦看着关上发房门，心头暗道，“难道尘儿要自己调配？”

    潇尘准备的药材有九种，都是比较常见的，准备配制“九草淬体液”。

    这“九草淬体液”是羽龙丹帝在一处秘境找到的，这东西潇尘根本就没有听说过，按照那份记忆，这东西在中古就已经绝迹了。

    依照比例潇尘废掉多分药材，终于配出来了。

    配药液，只要知道药材和比例就可以，炼丹则不同，只有能凝聚出丹魂火入了等级的炼药士才能炼药。

    配好药液后，潇尘去准备了浴桶和热水。

    一切就绪后，将药液倒入浴桶，搅匀后脱掉衣服盘坐在里面，清晰的感觉到浑身上下传来一寒冷刺骨又灼热的感觉。

    这比淬体液来的还要猛！潇尘知道现在这药液已经在淬炼身体了。

    闭上双眼，承受这冰火两重天……

    一桶药浴，在潇尘贪婪的吸收下，里面的药液很快就用完了。

    一天一夜。

    “哗啦啦~~”

    从浴桶里走出，感受着看着这具身体的变化，潇尘笑了。

    淬体境第一重！

    仅仅是一天，潇尘就完成淬体进入淬体境，这一步，潇聪用了半年时间。

    我们现在是寄人篱下，想不看人脸色，必须要证明自己的实力！

    就算不为了自己，为了那一位疼爱，关心，无微不至照顾自己的娘亲，也必须有强大的力量。',10065,10195);

insert into ds_book values(null,10196,'第一章上学要迟到了！

    美妙的异世界，或许对于很多人来说都是向往地方。那里有着年轻人向往的冒险，奇珍异兽，可爱的女孩子，各种各样的幻想。

    年纪稍长的或许会选择在那里过着自己想要的生活，经营着小酒馆小餐厅，过着没有现实各种压力的事情。

    不要以为老人也不会对那种事情幻想哦，我曾经采访过两位老年夫妇，老爷爷可是自信满满的说道，如果去那里一定要变成青年时期好好走一次人生。

    老奶奶虽然不喜欢乱来的一切，不过愿意做个小本生意，搞搞草药和那里的稀有小动物和友善的异界居民打好关系，背后支持着她的老顽童。

    “但是啊，这种的异世界也太过无趣了啊，不好好欺负一下各位远道而来的穿越者，实在对不起未来的幸福生活啊！”

    男人望着摆在桌面上的宇宙真主身份证明卡，露出一丝诶嘿嘿的傻笑。好不容易获得这个资格，不好好快乐一番，岂不是很无聊？

    友情，爱情，权利，金钱，这些不知在何时已经麻木，都是些毫无用处的杂乱。

    男人眼前的屏幕上有着一位毫无灵魂的虚拟人物，只见伴随着他手指的滑动，人物的眼睛随之变大，变小。

    “很好，这样最完美了。”男人按下确认键，长叹一声躺倒在椅子上。

    “真主大人，初始目标定位于地球。性别男，16岁。家里蹲，废人一个，思想开发lv∞，相貌平凡，不过历练过后，或许会有意外产生。请核对一下人物信息。”男人的身后传来了甜美的声音。

    “啊，对，就将他送进有九个小天才的宇宙吧。”

    “了解，真主大人。”穿着正装的白发女孩面对着满屏幕的代码敲打着键盘。

    “呵呵，去创造一场又一场的故事吧！掌控所有人的人生！来发现吧，寻找我，反抗我，“异世界的穿越者”

    最后，

    用尽你的全力，让我死去吧……”

    “002宇宙，目标地球。16年后，进入目标世界eternal世界。目标人物加载，姓名，刘小铭！”

    ——爆炸声轰烈的响起，两股强大的能量汇聚在一起产生出黑洞，把激烈战斗的一男一女吸入了进去。片刻后黑洞消失，森林如往常一样阴森寂静。

    ——“呜啊，累死了，居然真的混上去了，哈哈”

    电脑前一位少年打着哈欠，抻着懒腰，盯着屏幕上的‘恭喜您以成功的晋升最强王者段位’说道。

    “截个图，等下去学校炫耀去，哇!快下午了，得赶紧去学校上课了，再不去宋老师又该催我了”

    关闭时，电脑屏幕突然弹出一个窗口。少年仔细一瞧，花花乱乱的样子，还有着几个建模贼丑的人物，并在最上方展现出四个大字。

    “永恒灵域？哈？这么low的名字，满满的页游风，拜托这种垃圾东西不要再出现了啊，看来又要杀毒了，啊！不好不好，快迟到了啊!！”

    说完少年飞快的闭上电脑穿上衣服跑到楼下车棚去拿自行车，为了上这个游戏王者，已经请假了一周的时间，今天得到老师通知下午必须来上课。

    要不然，滚蛋休学去吧！！

    噔噔！滴滴滴滴滴———手机响起了来电显示。

    “喂，刘小铭同学，已经到了我们约定的时间了，再不来休怪老师无情了！”

    电话里传来了老师低沉的嗓音。听语气来看她已经生气了。废话！

    “老师啊，英雄都是千钧一发之际登场的，没有人会责怪他，所以迟到既正义！”

    “你要是不想死的话，就继续给我杠下去。我说你啊，真是无药可救了。为了破游戏不上学？你是笨蛋吗！打的好也就算了，你看看你的辅助，老娘为了带你整整一周坐在电脑前，整整一周都没有好好保养，已经三十岁了，再不好好保养……呜…”

    电话另一头的老师说着说着传来了哽咽的声音，少年无奈叹息回想起老师样貌，那副管理严格，曲线完美的身材，让人第一眼便心动的样貌。

    （那么完美的女人，说到底，为何没有人会娶她呢）少年内心吐槽着。

    “老师，您的素颜已经很完美了”

    “唔！是，是嘛”

    “嗯，我从不说谎。”（呵，这女人现在绝对心动了，大龄女人就是好应付）

    “哼，你要是能把花言巧语对同年龄的女孩子说何必每天打游戏写烂文。高中就是要享受青春邂逅爱情啊，臭小子，骑车注意点。“

    “是是是，你是我的老妈子吗，唉”

    少年挂断了电话，打着懒散的哈欠，享受着春风拂面吹过推动着自行车向前行进，嘴角露出淡淡的微笑。

    “笨蛋女教师，有你在我怎么可能有女人缘呢。唉，好困啊，明明没用什么太大的精神，居然还这么累。定个目标吧，今天早点睡觉”

    虽然自己从来没有实现过每一次制定的目标的说。

    少年懒散的视线望向天空，突然一声巨响轰然响起，将刘小铭基本咪成缝隙困倦的眼睛吓得巨大。
','    “我靠，外国人打进来了？！”

    因为最近经常有那些恐怖的谣言使得少年吓得扔了车子就往旁边的假山后面钻去。

    他小心翼翼移动着并竖直了自己的耳朵确定了响声是在花园里面传来后，鼓起勇气探出头瞧去，结果被花园里出现的一阵阵闪光吓得倒吸一口凉气。

    “难道是外星人入侵？话说这么大响声怎么没人听见？”

    正当刘小铭还在思考这些问题时，里面又传来了人类的叫喊声，听起来大概有俩人，其中还有女性的声音。

    “大胆外星人，刚下来就去抢妹子，嚣张的很啊！”

    少年皱起眉头，表面上带着勇敢凶狠的眼神，正义感爆棚。但是他的歪心思可不是这些，刘小铭弯下腰偷偷摸摸的往花园里摸去，手里还拿出手机点开相机功能，准备拍下来发到网上，大赚一场。

    突然老师生气的影像回响在脑海中，吓得少年一屁股坐在地面。

    “抱歉老师，你什么要求我都会答应，不过这可是千年一遇的事情，录下来我绝对可以大赚一笔啊，到时候请您环游世界哦”刘小铭内心燃起邪恶的小火苗，一步步的靠近花园。

    随着亮光越来越近，还有打斗的噼里啪啦的声音出现，刘小铭发觉有些不对劲，但是钱财的欲望给了他巨大的勇气。

    他躲到一丛草丛后，向外望去，只见一位穿着白色类似法师袍的蓝发女性和一位身穿黑色铠甲的骑士战斗着。

    （呃！这是，神仙打架啊，我是不是应该溜了）

    对于死宅来说这种场景并不是没有想象到过，但是出现在现实亲身经历的话，感觉应该还是先撤为妙，虽然心里这样想着，可是少年却不由自主的被两人战斗所吸引。

    只见蓝发少女向前甩出九个光球，纷纷朝着黑骑士飞来。黑骑士手中漆黑阴冷的黑剑将光球全部弹开。本想冲刺，但是由于蓝发少女的远程攻击，限制在原地无法突进。

    可能意识到战况不利，黑骑士紧接着放出一阵迷雾，只见迷雾中瞬间飞出七个身影，每一个都杀气冲天直奔少女。

    暗处观望的少年却突然瞪大双眼，迷雾处他亲眼见识到一个黑骑士偷偷闪到不远处的二层楼上隐藏杀意准备找好时机一击必胜。

    （那家伙！）

    这一幕被刘小铭尽收眼底，虽然知道黑骑士准备干什么，但是由于人类本能的畏惧不敢作声。

    （这个事情不妙啊，法师姐姐）

    眼前蓝发少女渐渐抵挡不住分身这一轮番的攻击，无关系的少年眼神中充满着担忧与畏惧。

    黑骑士在房子上慢慢站起，刘小铭慌忙转过视线注视着黑骑士的一举一动。现在，已经完全可以想象如果自己不告诉那位蓝发少女，她之后就会被剑斩杀。

    （女人！！自己的小命！！！！见死不救？！可爱的少女！！！）这几个词反复从刘小铭的脑内出现刺激着他的信念。

    “不管了！”

    并没有经历社会磨练现实摧残的少年选择了遵循正义，他要救下这个女孩。

    刘小铭深吸一口气，咬着牙起身站起朝着蓝发少女的方向大声喊话，此时黑骑士刚准备冲出，听到突如其来的声音快速转头头盔下猩红的眼神放出凶光调转目标愤怒的冲向这位无知的少年。

    “喂！小心房...”

    话没说到一半，一把大剑贯穿了刘小铭的身体。愤怒的黑骑士如同看待杂虫般嫌弃的拔出大剑，紧接着怒吼着冲向少女。

    少女看到这一幕后，眉头紧锁，严厉的神情下，她取出一张金色卡片，轻声说出：

    “天罚”

    天空光芒耀眼，立刻多道光束劈下，黑骑士在冲刺的半途中直接被那耀眼神圣的光束劈成灰烬。

    刘小铭奄奄一息的躺倒在地面，看到蓝发少女打败了黑骑士内心终于放下。可是自己却……

    （有这么强的招数怎么不早用啊，我也不至于被刺了，啊，不甘心啊。抱歉啊，老师，不能实现约定了，这是我最后一次迟到了……再见了，这个世界，生我养我的家人们，再见了，你们的孩子是为了正义光荣献身的！）

    （诶？话说回来，我身上应该买了很多保险吧。唔！这么说来，我挂了还能让家里得了一笔钱，这也算的上功劳一件了吧，阎王爷爷应该会送我去天堂吧，毕竟我这么善良。）

    （唔，想着想着突然不痛了诶，难道我要活了，诶！诶！等一下，视线怎么模糊了，喂！喂！啊，我要死了）

    少年七嘴八舌丰富的内心戏十足，尽管对着自己仓促的死法感到不甘，但是伤势已经足以让他失去知觉失去意识，他无能的选择接受现实，缓缓的闭上了双眼。

    战斗结束后的蓝发少女意识到了刚刚声音的存在立刻走来查看，发现地上的男孩还有一口气在，轻声呢喃：

    “感谢你，平民。用自己低贱的生命换回了我的胜利”少女冷漠的说着视线轻蔑的扫视着他的衣着，一眼便被刘小铭手中紧紧攥着的手机所吸引。

    此刻少女突然意识到了什么，紧张的环顾四周，随后闭目思考后，突然，她睁开那双蓝水晶般的眸子，嘴角微微上扬俯下身，凝视着奄奄一息的少年。

    “看起来，我来到了另一个世界了呢。小子，遇见我你倒了八辈子霉了哦”

    少女的右手轻轻按在刘小铭的身体，突然他便化作一道光飞入女孩腰间的微小包中。
','    女孩取下脖子上的红色十字架项链，口中念念有词，随后她的面前出现了一面金色大门，紧接着踏入大门内虚无的世界。

    “小子，你可别让我失望啊”少女微弱的声音伴随着大门的关闭带着少年无声无息的消失在这座花园。

    ———————

    故事发生在天选大陆，国名为星灵的强盛国家立于大陆之东。在这王国美丽豪迈的宫殿侧面有一座美丽花园，那里建立了一个豪华的三层别墅，透过窗口看去，里面有着一位蓝发少女望着着床上正在熟睡的少年，露出唯美温柔的笑容。

    少年正是当时奄奄一息的刘小铭。

    “真能睡啊，都三天了还没醒呢”

    少女无聊吐槽着，不过意外的是，女孩在说完的几秒后，少年却缓缓的睁开了双眼。

    （这陌生的天花板，这就是天堂吗！还是说这是火化前一秒灵魂出窍了？）

    刘小铭紧张的开始胡思乱想。下意识向右一看，当时的那名蓝发少女正在一脸看傻子的表情看着自己。

    俩人就这么对视了半秒钟，少年率先开口

    “早上好啊，你居然也死了呀，这是天堂吗？”

    “蠢货，你才死了呢，我可怜你把你救活了，守了你三天，居然起来第一句话咒我死了！？”蓝发少女气愤的说道

    “对不起，抱歉！我以为我在天堂呢，不过谢谢你救了我。爷爷告诉我一定要报答他人的恩情，既然你救了我，我也没什么好给到了，所以，我刘小铭发誓会一生会服从你，我的命以后就是你的，让我做什么就做什么！”少年的眼神露出坚定的目光。

    （呵，这里是别人的地盘，咱的小命好不容易留下，为了避免不出太大的事情，让你见识下我在社交圈中学会的绝技！）

    没错，选择向女孩低头，将自己的身份降到最低，并用花言巧语拍着马屁！

    “哦？”

    “请您相信我，虽然我是条咸鱼废物，但也是有些用处的。那个，冒昧的问一下，为了尽全力服侍您，请告诉我，美丽的天使啊，我应该怎么称呼您呢？”

    “我的名字？问别人的名字时是不是应该先报上自己的名字尊敬一些，天使什么的还是算了吧，我叫冰灵曦，给我记住了，臭小鬼”

    “好的，曦姐姐，小铭记住了!”

    “姐姐？”

    冰灵曦听到刘小铭这样叫自己娇俏的脸蛋上泛起了红晕，她还是第一次听到男性这么叫自己，而且又是从刘小铭那老实乖巧的样子下说出，顿时对眼前这位少年的好感度稍微增加了一点。

    （不过，这孩子的眼神好像一种动物!）少女凝视着，突然脑内灵光一现。

    （啊！是小狗！）冰灵曦内心惊喜，面前的少年就像是一个小狗一样，乖巧听话，眼神真挚！忠诚又可爱!

    见识到冰灵曦如此反应，少年立刻反应过来，继续保持着刚刚装傻卖萌的形式问道：

    “曦姐姐，这里什么地方呀？”

    “这里是我生活的世界，这个大陆名字叫做天选大陆，咱们所在的国家名字叫做星灵国，你现在就在我的床上躺着，懂了吗？”

    “是！但是，我还能回去吗？”

    “回到捡到你的世界是不可能的了，因为我当时也不知道怎么就跑到你所生活的世界里。随后，也莫名其妙误打误撞的回来了。好了，看你恢复的差不多了，我去做饭，你就简单的熟悉一下这吧，臭小鬼”

    少女不知为何，并没有和少年诉说事情的真相，或许她也有她的苦衷吧。

    说完冰灵曦就起身向门外走去。

    目送着女孩出门，孤独的少年随后叹着气看着窗外，内心百感交集。

    “这是穿越到异世界了吗，我，也要变成异世界男主闯荡江湖了？开玩笑的吧！呵，异世界啊，呵呵，唉……”少年面部的表情十分微妙，最后的苦笑也化为了沉重无奈的叹气。

    但是很快他便调整好了心态，虽然不知是真是假，但也使他阳光了许多。

    “管他呢，走一步看一步吧。冒险，战斗，混出名堂，好不容易从零开始可要好好珍惜啊，我可不想再继续那嘴硬废柴的生活了……”

    (可是，我真的可以做到吗……)少年何尝不知道自己的内心，望着窗外的世界，痴痴地看着，表情渐渐陷入沉思。

    此时一道亮光划过天空，反射下来的光线恰好照射在少年的眼中。

    “啊！！我的眼睛！要被阳光刺瞎了！”
    少年用手遮挡着光线，立即离开了窗前，无奈的叹着气。殊不知自己的存在和‘命运’的安排已经被彻底记录下来。

    黑暗狭隘的小房间中，一只手停留在屏幕上，粗大的手指轻点着屏幕中的少年，随后黑暗的屋内响起了悠远神秘的声音。

    “呵呵哈哈哈哈，开始你的表演吧。小子，你是多么的幸运啊，不要让我失望啊……”

    随着画面的缩小，黑暗的房间外，则是一座巨大华丽沁人心脾的宫殿，在宫殿之外则是那浩瀚神秘不可捉摸的宇宙………
',10066,10196);
insert into ds_book values(null,10197,'阳光过于刺眼，放弃了屋外的美景，刘小铭决定在屋子里无聊的参观，仔细想想这还是他第一次待在女孩子的房间里，心里莫名的兴奋了起来。

    “不愧是女孩子的房间，房间整洁，还有一股淡淡的花香，哦？这个是？”

    刘小铭此刻盯着面前大概是衣柜的家具。

    （要不要打开看看呢）

    心里虽然在纠结可是自己的手却毫不思索的打开了柜门，也就在这个瞬间，冰灵曦回来了。

    “喂，过来吃饭了”

    少女好心叫他来吃饭，结果刚刚进门便看到少年一脸憨笑的站在自己的衣柜前，俩个人尴尬的四目相对，下一刻冰灵曦又羞又怒大声吼着

    “你这个变态，居然翻女孩子的衣柜！”

    少女生气的拿起手里饭勺愤怒冲出

    “不赖我呀，是你让我简单的了解一下的啊！”刘小铭急忙辩解，赶忙向床的方向跑去，就这样俩个人就绕着床跑了好几个来回。

    “曦姐姐，听我解释啊，原谅我吧，我不是故意的啊！”

    “好啊，我原谅你了”

    “诶??”刘小铭听到后，非常诧异，为什么突然原谅他了？

    他转头看到冰灵曦坐在床上，只见她面带微笑和善的说道：

    “小色鬼，来姐姐这，跪在地下认错就算原谅你了”

    （唔？这是？阴谋？！）

    刘小铭虽然感到不对劲，但还是乖乖的跪倒面前低头认错

    “曦姐姐，我错了，原谅我吧！”

    面对着少年的道歉，冰灵曦姐眉头紧皱四周燃烧着黑暗的焰火，翘起的右脚慢慢抬起随后使劲的踩着他的头按到在地板。

    “仔细想了一下，还是不能就这么原谅你呢，不把这股怨气好好发泄出去，会变老的啊”

    冰灵曦说完手里多出来一条不知道从哪里拿出的鞭子。刘小铭在看到鞭子后整个人心惊肉跳，急忙求着请。

    “姐姐，你真的舍得鞭打我这位救命恩人，这么忠心耿耿，这么可怜，这么善良乖巧的弟弟吗？”刘小铭摆出委屈脸可怜巴巴的样子，尝试萌混过关。

    “我可爱的弟弟啊，难道你就忍心让姐姐因为怨气发泄不出去，而变成老太婆吗？”说完举起鞭子就向刘小铭抽去。

    “no！！！！！”

    之后屋里传来了杀猪般的惨叫声。

    -——饭桌上，相识不久的姐弟俩享受着餐点，气氛和谐温馨。

    滴答——

    一滴液体滴落在饭桌，仔细看去那液体来自少年。眼中打转的泪水顺着他的脸颊滴落在饭桌。

    可是，少女的听觉格外的敏感，眼泪滴落的瞬间双眼释放出强悍的眼压凝视着少年。

    “唔！”

    刘小铭被这一瞪害怕的发出丢人的嗓音，身体冷颤着憋回了泪水，拾起桌上的勺子大口大口的享受着美食，眼泪又一次不自主的出现却不敢滴落。
','    “嗯？是姐姐烧的饭菜太美味被感动到了么？”冰灵曦露出温尔优雅（凶神恶煞）的笑容询问道。

    （这个女人是恶魔啊！恶魔！）

    刘小铭的内心苦不堪言，但寄人篱下只能屈服。

    “嗯，姐姐的饭菜太好吃了”

    硬生生熬过这紧张的气氛，终于结束午餐时光。少年卑微的清洗着碗筷眼神偷偷的看向女孩。

    （这女人平常都是那副安安静静与世无关的样子吗，果然女人不说话时是最美的啊）

    洗完了碗筷，刘小铭没再得到女孩下一步的指示无可是事的他默默坐在少女的对面，一言不发。

    气氛逐渐尴尬，刘小铭胆小的目光不敢直面女孩只好四处张望环视房间的构造试图为自己找找事情。

    突然，前方传来一声清脆的声响将少年的思绪拉回在眼前。只见一杯不知在何时泡好的暖茶来到了面前。

    “这是……”

    “喝吧。没有下毒哦”

    “呃，是”抱着必死的决意饮下茶水，不过味道却意外的美味。

    “我说你啊，就没有想说的嘛，和我。”冰灵曦率先放下了架子合上手中的书籍，轻松说道。

    “说，说些什么……”(一时半会我真的想不出什么啊）

    “唉，比如这个大陆，我的身份，乱七八糟的什么”

    “哦，那，曦姐姐，你是魔法师吗？看你战斗时放出了光球之类的”

    回想起两人相遇那一刻，冰灵曦与黑骑士的战斗让他印象深刻。

    “恩，差不多，只不过我们这里叫做魔灵使，使用着灵力做想做的事情。”

    （这设定，不愧是异世界啊）

    “那，还有其他的选择吗”

    “我们的大陆是有成为魔灵使和骑士俩种选择的。选择骑士的话，修行时间可能会大量用于练习格斗武技。

    骑士分为五个阶段，灵气六段时便可报名参加青训兵，七段就可以成为最普通的士兵。八段可以上战场，九段有机会升职士兵长干部级别，到达十段，也是最顶端。如果拥有自己一套强大的元素灵术招式可以成为最强的灵术骑士!

    成为骑士很简单的哦，不需要考试，立下一些功劳便可轻轻松松享受贵族的生活咯。”

    少女轻松的诉说着骑士的好处。但是刘小铭的内心却不这样想。

    （骑士？战场杀敌？算了吧，我还是老老实实的呆在后方吧。小说里有的是穿越之后成为奶妈，炼丹师的角色）

    “那个，姐姐，魔灵使之类的呢？”刘小铭为自己的将来询问着。

    “想成为魔灵使的话就很难了，灵气七段才能入学，入学后你们这些初学者统称白灵。八段就要参加一场考试。除了笔头上的考试，实战必须要过关，两者缺一不可。

    考试成功后，会给成功的人安排在一些前辈魔灵使成为学徒跟随着他们战斗，修炼。期限为两年，这两年间就看个人造化了。

    有的成功到达九段，成为魔灵使。可以到处闯荡，做做王国任务领着酬金开开心心的过日子。也可以加入王国魔灵使队伍，跟随军队出征，扫荡。

    如果很有造化升段到达十段，便可晋升为灵法神。据我看来，灵法神和灵术骑士不同，他们的实力要更为强大，足以毁灭一座城市。灵术骑士不过是在前线会使用灵术打架的人而已”
','    “这，看起来不是很轻松吗？”少年说出了让人意外的话语。

    “轻松？想要成为魔灵使的人基数很大的。国家资源有限，想要在这庞大的人数里脱颖而出得到认可，可不是一个简单的事情。

    魔灵使是一个烂大街的职业，没有硬实力没人愿意要你，自身也无法做好高酬金的任务，唯一的去路便是去国家军队充当杂兵，拿着微薄的收入混吃等死”

    （唔，好可怕）刘小铭内心颤动。（这种感觉就像是原来世界不好好学习读书的孩子只好去餐厅充当服务人员的感觉。）

    “姐，那，你说的什么几段几段是什么意思？”少年好奇的问道。

    “等级的体现则是取之于你体内的灵力之石，在这个大陆上每个人体内都会有一块汇聚灵力的石头。每当灵石内的灵力到达极限后，便会突破提升一段。灵石的提升是没有限制的哦。

    运气好的话说不定可以飞升成神呢。可惜，姐姐我一直保持在九段多半的实力，怎么也提升不上去了。

    不过不管选择成为那种，都要付出很大的代价的，这条路没有想象的那么纯洁，达到我这种等级时身上的血都已近沾的差不多了。”

    说道这句话时冰灵曦眼神黯淡，不愿去回想过去的往事，她低下头静静的等待着刘小铭的回话。

    然而刘小铭只是回答了几句家常便走出了房门出去溜达了，冰灵曦看着刘小铭出门的背影，内心小小的期待也随之消失。

    “亏我还期待了一下呢，果然还只是一名小鬼头啊~”

    ——花园旁的一座小山上，刘小铭坐在山坡上望着花园美丽的风景，叹着气

    “还是头一次听到她说那么多话呢，嗓音甜美直击人心就算啰嗦多久我也愿意洗耳恭听啊。可是，她那几句话明示想让我去当魔灵使啊。我果然是被抓来当工具人使唤的嘛？”

    清纯16岁的未成年少年如释重负般叹了一口气躺倒在草地。

    (在考虑到尚未存在主角光环的我，才不要选择哪种会挂掉的道路呢）

    “接下来，还是去找些乐子吧”

    自身的意志还没有达到那种程度，魔灵使什么的暂时抛之脑后。刘小铭选择慢悠悠的向山中走去散散心。

    沿着山上遮天蔽日的林间小道，隐约的还能闻到森林特有的气味，那是一种淡淡的，令人神清气爽的甜味。

    刘小铭发现森林里的动物和原来世界的动物有些不太一样，并且散发出一种特殊的气场。正当自己仔细观察的时候，上空中飞下来一只类似于麻雀的鸟直冲自己，少年急忙闪躲。

    “区区一只小麻雀，也敢凶我？看我把你抓住烤来吃！”

    刘小铭说完拿起石头就向麻雀扔去，然而麻雀双翅展开，两道风刃向他飞去，还好少年反应极快的躲到了石头后面，可惜石头并没有想象中的坚挺在被风刃击中后的瞬间，砰的一声破碎。

    “我透！麻雀还有这种操作的?”

    刘小铭心中一惊，玩命似得向山下跑去，还好麻雀只是追了一会见刘小铭跑的太快便放弃了追赶。

    山坡处，刘小铭逃脱了麻雀的追赶，正坐在山坡上大口的喘着气，他的目光无意间向山下撇去，只见一个大广场上有大概2000来号人的队伍，每人都穿着白色的西式制服，又看到高台上有几位年龄很大的人在讲话。

    因为跑的太猛现在耳朵还在嗡嗡的响，什么也听不清，但是刘小铭看到了下面的人们年龄大部分与自己相仿，而且女孩子们每一个都长得貌如天仙，如仙女下凡一般。

    （这在原来的世界里每一个都可以成为大明星偶像出道啊。）刘小铭一边寻找着里面的佼佼者，一边陷入自己无耻的幻想中。

    傍晚，刘小铭回到家中，见到冰灵曦正在做晚饭，看到这一幕刘小铭瞬间觉得自己是多么的幸福，每天家里有这么漂亮贤惠的大姐姐照顾她，是多少男人梦寐以求的事情啊。

    吃晚饭时，刘小铭突然问道

    “姐，今天广场上那些人是干什么的啊？”

    “哦？你看到了啊，那些人是咱们学院的学生，是贵族学生们为了成为魔灵使的入学式。”

    刘小铭听到后，思考了起来，想起自己被森林里的小麻雀欺负成那个样子，自己不报仇简直心痒。

    （最重要的是学院里的女孩子们都长的那么漂亮，随便抱走一个都是赚了。我这个愿望没错吧，青春期的男孩子都是有这样的梦想对吧。）

    带着这样的欲望他终于下定了决心。抓住冰灵曦的肩膀，认真的说道

    “姐！我要当魔灵使！！”',10066,10197);
insert into ds_book values(null,10198,' “噗！”

    冰灵曦听到刘小铭这一句话，一口将刚刚喝进的水吐到了他的脸上。

    “哈哈哈，什么嘛，原来你还是很有骨气的嘛，恩，毕竟你是敢勇于自我牺牲吸引敌人暴露位置的男人嘛”冰灵曦一边笑着一边拍着刘小铭的肩膀说道。

    刘小铭哭笑不得，内心想着（要不是看你长得有几分姿色，兴许英雄救美就能抱得美人归，要不然怎么可能去出去送死？等以后一定找机会征服你。）

    “喂，脑子里想什么呢，小色鬼，还不赶紧擦一擦。”

    冰灵曦发觉刘小铭的眼神突然变得让她浑身发冷，就知道这个家伙到底在想些什么，但是看到被自己喷了一脸水的可怜样又忍不住发动自己的姐姐本能去帮他擦拭。

    少年终于从自己的幻想当中走出，意识到冰灵曦与自己距离非常的近，害羞的向后挪了一步，拿起毛巾说道：

    “我自己擦就好了，不用劳烦姐姐大人，其实姐姐大人这种沉鱼落雁闭月羞花倾国倾城的美女，吐出来的圣水说不定会滋润我的皮肤，让我变越来越帅气。”

    不忘记拍马屁的刘小铭干咳了一声继续说道“回归正题，没错，我要当魔灵使，因为我听到了台上那几位至高无上的大人的讲话，让我内心热血沸腾，我觉得这个国家需要我这样的人才，我一定会保卫好这个国家，保护好这片大陆，因为我的梦想是成为正义的伙伴啊！”

    少年一口气说完这一套流利的宣言，并自己提了一杯水。

    “不愧是你呢，居然可以一本正经说出这么羞耻的台词呢”

    “喂，既然知道很羞耻，居然还要吐槽我，不愧是姐姐大人您呢。”

    “这条路可不是那么好走的哦，我可不会管你的生死，想去成为魔灵使也不是不可以，可是你的身份特殊只能进入平民班级学习，进入那些贵族的上层班级只能用你的实力证明了，这样你愿意吗？”

    “我愿意！”刘小铭毫不犹豫的回答道。

    （当然愿意了，成为魔灵使体验生活顺便在撩到几个小妹妹什么的。嘿嘿嘿，打打杀杀什么的交给别人就可以了。）

    少年将唯美的未来安排的明明白白，这可是用了三个小时才决定的计划呢。

    “那就早早休息吧，过几天我就去把你安排到平民班级去上课”

    “谢谢姐姐大人的恩情，小铭日后……”

    “好啦，收拾碗筷去吧，等下别忘记洗澡”

    冰灵曦立刻打断了刘小铭那脱口成章令人肉麻的话。踢着他的屁股赶走了他。明明他们才认识不过一天而已，两人的对话如同生活了很久的亲人朋友。

    “哎，这孩子……说不定可以打包成艺人出道呢。比如搞笑艺人。”

    ——夜晚到来，刚刚为这个家的新成员收拾出空闲房间的少女疲惫的躺倒在座椅。

    “唉，那个小子……嗯？”冰灵曦还想再说些什么，眼神飘向一旁的许久没有打开的日记本。

    女孩起身翻开日记，阅读着从前的文章嘴角不经意间流露出笑容。

    “好怀念啊，过去的事情。”

    感叹着过去，凝视着日记，少女拾起附近的朱雀羽毛笔。

    “哼，久违的写一篇吧”

    星1023年4.15日

    （命运让我们俩人相识，他是个油嘴滑舌没心没肺的臭小子，胆小好色……)

    “曦姐姐！！！！”楼下突然传来少年的声音。

    “诶？！怎么了！？”
','    “屋子里有蜘蛛啊！！快来救命啊！”

    “呃，真是个笨蛋!”

    两个时辰后，成功清理完蜘蛛任务并附加完成了哄孩子睡觉的任务后，少女心累的走出房间，在关上房门的刹那她瞧见少年偷偷动了一下。

    （这小子还没有睡着吗？老娘的故事都白讲了吗！）

    冰灵曦留出缝隙，透过门缝悄悄看去，只见刘小铭从被子中钻出坐起身靠在床头，望着窗外，胸脯上下浮动深深叹了一口气。

    （嗯？）

    “啊，果然睡不着啊。好想家啊，家里人知道我消失心里肯定会不好受吧……爷爷奶奶那么大岁数了……爸爸妈妈……”

    说到这里，少年的脸颊闪过一道泪光。片刻，他擦拭了眼角的泪水重新躺回了温暖的被窝，尝试融入着陌生的世界。

    （他……想家了啊）

    ——星1023年4.15日天气晴

    （命运让我们俩人相识，他是个油嘴滑舌没心没肺的臭小子，胆小好色……不过实际上却是位心思细腻十分敏感脆弱的孩子。不过为了我的安危选择牺牲了自己，还是值得称赞的嘛。

    我们的相遇既是缘分，是我改变了他的生活，改变了他的世界。所以，绝对要负责到底。

    对于我，对于未来，他还有更大的作用呢）

    放下笔，合上日记，少女望着皎洁的月光深情附魔着挂在脖颈上的红色十字架项链，

    ————等待入学消息的日子中，每当夜晚降临，躺在床上的少年，便会强忍着伤感，虽然想要在这里重新开始，但原来世界的回忆不断的浮现在脑海，那难忘的回忆和亲情冲击着自己的内心，这种不安感令他十分痛苦。

    最终他选择独自一人扛了下来。这些天，令他意外的是，这位大姐姐很是通情达理，似乎能看破自己的内心。

    每当那种无力的失落感涌出时，冰灵曦都会在自己的身边，与他相互扯着闲话，拌嘴。

    这些天，少女都会亲自叫少年起床，为他做饭，带他闲逛介绍一切。这些举动也让少年内心有了不少温暖。彻底填补了他不安的内心，让他感受到了短暂的亲情。

    “真是个可爱的姐姐啊……”望着女孩的背影，少年笑着说道。

    ——终于上学的日子到了。早上，刘小铭早早的起了床，整个人精神焕发的就坐在饭桌上等待着冰灵曦的投食。

    “喂，至于吗，头一次看到你这么精神，还有现在这个场景怎么好像家里养的小狗在等待着主人的喂食一样。”冰灵曦看到刘小铭忍不住的吐槽道。

    “汪汪汪”刘小铭笑嘻嘻的叫着。

    “哼，吃完早饭就赶紧滚吧，省的你这只废狗在这里白吃白住。”

    两人吃完饭，刘小铭简单的收拾了一下行李，就随着冰灵曦去上学了。

    大概过了一个时辰，俩个人到达了学校的大门口。

    只见前方有一座看起来就像王国宫殿的缩小版一样的学校矗立着，周围是郁郁葱葱的树木，五颜六色的花儿甚至比王宫主城附近的都要美上十倍。

    “喂，怎么不说话了”冰灵曦意外的感到刘小铭此时居然没有发表感想。

    “你把我眼睛蒙上，还把揍了我一顿，让我怎么敢说话啊！”刘小铭愤怒的说道。

    “谁让你路上眼睛一直盯着那些女人看，有我这样倾国倾城的美女在旁，居然还敢偷看别的女人，难道之前说过的话都是骗我的嘛？”

    “没有！没有！没有！”刘小铭听到后慌忙的解释

    看到刘小铭慌张的样子，冰灵曦忍不住笑出声，并把套在刘小铭眼睛上的布取了下来，重见光明的少年立刻看到的是那矗立在眼前的宫殿...下的一位位女学生。
','    “哇，好多漂亮的妹子，呸！好宏伟的学院啊！”刘小铭被学院震慑到，发出感想。

    冰灵曦懒得吐槽对着刘小铭解释着“这个是贵族的学院，你们平民的学校是在这个的后面。”说着拉着他的手带着他走向城堡的后面。

    一路上看到了许多向冰灵曦亲切打招呼的学生们，但是看到后面的刘小铭并且正被冰灵曦牵着手，不管男生女生每一位都恶狠狠的盯着刘小铭，吓得他拿起背包挡在脸上。

    “你们等着，早晚有一天我会骑在你们这群人头上！”

    明明胆子小的很，但是对于这种校园歧视必须要恶狠狠的立下誓言。这是少年目前立下的做人原则。

    终于俩个人到达了贵族学院后面的平民学校，只见前方有五座三层旧别墅，附近有着普通的不能在普通的花园，里面还种着各种各样的农作物。

    面对这种乡村类型的风格刘小铭心想也罢，虽然和宫殿城堡差了点，但是这种乡村田园生活他已经向往很久了。

    走近大门，嘱咐过后终于到了离别一刻，两人沉默无言心里似乎都不愿意告别离去。

    “曦姐……”

    “小子……”

    “唔，曦姐姐您先说”

    “啊，哦。我想说的是，这个印记交给你。”冰灵曦说着将一枚印着一片冰花的印章交给了少年。

    “这个是？”

    “佩戴上它就可以证明你是我家族的人，这样省的被那些平民孩子欺负什么的。老师也会对你态度好一点，嘛，我能帮的就这么多了，你可要好好努力哦”

    刘小铭楞了一下，他万万没想到冰灵曦会想的那么周到。被这突然的关切使这位孤僻少年心里一暖。

    “曦姐姐，谢谢你，我这辈子……”

    “好了好了，别废话了，去吧”

    告别时，刘小铭（演技逼真）激动的看着冰灵曦远去的背影喊道“曦姐姐！我一定不会辜负你的期待，成为魔灵使的！”少年眼含泪花，迈着坚定的步伐向着学院里走去。

    “小笨蛋，以后的路就看你怎么走了，是如你所愿成为正义的伙伴还是踏上修罗炼狱之路呢”

    女孩表情充满着怜悯，回头望着少年远去的背影感叹道。

    刘小铭进入学校后并没有直奔校长室，而是先参观了一下整个学校，虽然内心自己也不清楚为什么这样做，但自己的直觉告诉他日后一定会有用处的。

    参观（调查）完毕后，来到校长室会见了校长，校长生得一张反派脸，阴险的眼神，尖尖的下巴，贼吓人，与他和善的性格产生了强大的违和感。

    刘小铭心想赶紧完事，脱离这个校长室，迅速的递给了校长介绍信，校长看了看立刻大惊失色，急忙说道：

    “你就是冰院长介绍来的学生？”

    听到这句话刘小铭心里非常的吃惊，没想到冰灵曦居然还是院长！他快速回应道“是的，我就是，敢问您说的院长是怎么回事？”

    “哦？你原来不知道吗，冰灵曦可是整个贵族学院的副院长啊”此时上课的钟声响起，为了不耽误刘小铭的第一节课校长立即和善的与他告别。

    “没时间解释了，快到上课时间了，我让你的班主任在门口等待你了，啊，对了，我叫做韩立群，以后叫我韩校长就可以了。”

    少年恭敬简单回复了几句后拿着学生证件出了屋子。韩校长意味深长的看了看刘小铭出去的身影，此时他桌旁的水晶球上浮现出种种画面。

    校长瞪大了双眼，轻抚着自己的胡须，叹着气躺倒在座椅上，紧闭双眸嘴中喃喃

    “刘小铭……这个孩子的未来居然如此之乱啊，冰灵曦啊，你还真是带回来一个，一个小灾难啊……”',10066,10198);

insert into ds_book values(null,10199,'接到电话时，凌云正在上课。

    何芝龙教授是国际上知名的教授，凌云不想错过他的任何一堂课，然而，就在他准备把电话按掉的时候，来电提醒上那个孤零零的横杠让他不禁一个激灵，心里升起一丝不详的预感。

    他记得很清楚，这是年前父亲临出门时在自己手机里存进的号码，并且很严肃地告诉自己，这是在紧急情况下联系他的方式！

    怀着不安的思绪，凌云跑出教室按下接听键。没等开口，熟悉的声音就冲了出来。

    印象中，父亲一向刻板严肃，做事一丝不苟，他从来没有见过父亲用这么急促的口气说话。

    “马上回家，书房书柜第五层，资治通鉴和史记中间有一个暗格，里面有一张存折和一个盒子，带上它去小时候我带你去的那个唐时庙宇地下空间躲起来，存折密码是你的生日……”

    “爸！出什么事了？”

    电话那头传来剧烈的咳嗽。

    “没时间解释。儿子，你现在的处境非常危险，爸会安排人去找你，快去！晚了就来不……”

    一句话还未说完，声音戛然而止，只余下空洞的嘟嘟声。

    凌云慌了神，连忙手忙脚乱地回拨电话。

    “您好，您拨打的号码是空号，请核实后再拨。”

    没有任何感情的机械提示音仿佛在挑战凌云的神经警戒线。

    不仅如此，就连父亲的常用电话也同样变成了空号！

    出事了！真的出大事了！

    凌云额头沁出一层冷汗，无意识地原地乱转。

    父亲是一名地质堪探员，他的身手足以应对绝大多数危险，他甚至从来都没有想过父亲会出事。

    很显然，年前爸爸出门的时候很可能就感觉到会出事，所以才会留下一个紧急联系的号码。但是，为什么在电话挂掉之后，连同原本使用的号码都变成了空号？

    难道说……爸不想让人知道他打了这个电话？

    结合电话里的内容，凌云只感觉脊椎上冒出一丝淡淡寒意。

    他想到自己这个家庭的诡异之处。

    妈在生我的时候就走了，爸是这么说的，但是，我从来都没有看到过一张妈妈的照片，连结婚照都没有。爸妈就像是从石头缝里蹦出来的一般，没有爷爷奶奶三叔六婶，也没有外公外婆大舅二姨，逢年过节时，没有任何亲戚上门，也不需要出门去拜年，这个家仿佛是一个被世界遗忘的角落。

    带着暗格里的东西躲起来？

    所以……爸一直藏

    着什么东西？因为那东西的缘故这些年来一直都隐姓埋名，不与任何亲朋好友联系。而现在肯定发生了一些事暴露了，有人想得到那暗格里的东西！所以，我的处境很危险！

    凌云倏然顿住步子，机伶伶地打了个寒战。

    他想到了一个至关重要的问题。
','    爸并没有让我报警！

    是警察无法处理，还是不能让警察知道？

    他不敢再想下去了，连假都没请，当天就买了回老家的车票，由于他所在的大学与老家之间几乎横跨了半个炎黄国，尽管凌云一路马不停蹄，到家时已是第三天的凌晨三点四十分。

    父亲的书房摆设非常简单，靠窗一张书柜，书柜前方一张书桌，几本书在桌角堆叠得整整齐齐。

    “资治通鉴和史记中间……”

    两本书的中间的板没有任何异状，用指头敲了敲，隐约能听到淡淡的空洞回音。

    凌云没心思去找什么机关，翻身取来羊角锤，两三下就砸开那块板。

    一个大约半指深手掌宽的粗陋暗格露了出来，里面静静地躺着一张存折和一个精致的黑盒子。

    就是这东西？

    凌云探手拿起盒子，不料，就在指尖接触到盒子的瞬间，一股诡异的感觉汹涌而来。凌云触电般收回手，惊疑不定地盯着盒子。

    怎么回事？

    那绝不是幻觉！

    那是一种极其沧桑古朴的气息，短短一瞬就仿佛随之徜徉在历史洪流中看遍沧海桑田，随之而来的是一种血浓于水羁绊。

    心头没来由地就升起一个诡异念头。

    里面的东西和自己有很深的关系！

    无法抑止的冲动汹涌袭来，他很想很想打开这盒子。

    就看一眼，就看一眼……

    凌云额头鼻尖渗出一层细密的汗珠，牙关一咬，掀开盒盖。

    就在盒盖打开的瞬间，那种诡异的感觉陡然就强烈上了无数倍，凌云甚至能够听到灵魂都在疯狂颤抖。

    渴望着将这东西吞进体内！

    见鬼！

    凌云猛地闭上双眼，狠狠地甩了甩头，直到那股可怕的欲望被彻底压下去时，才睁开眼。

    如果说之前还有疑惑的话，现在，凌云已经肯定自己那个模糊的猜测就算不完整距离真相也不远！

    仅从能够影响正常人的心神这一点就能够看出这东西绝不像它外表那么普通！
','    这是一块古旧斑驳的铜片，约半个巴掌大小，带着微小弧度，边角残缺不全。由于父亲

    的工作缘故，从小耳濡目染，凌云一眼就看出这是某件大型青铜器破碎后的残片之一。

    铜片表面没有任何铜绿，遍布人工雕琢而成的细纹，隐隐构成一幅残缺不全的应龙纹。铜片的下方贴着一块标签，上面是父亲笔迹，父亲很喜欢柳公权的字，经常临摹，他的字非常好认。

    凌云心中默念了一遍，眸子陡然瞪得滚圆，不可置信地脱口而出。

    “龙坑第三样本：寒武纪青铜片？”

    凌云只感觉脑袋轰地一声炸了。

    以父亲严肃刻板的性子，如果这块青铜残片只是假货，根本不会将那块标签留着，更不会煞有介事地将之藏在谁也发现不了的暗格里！

    但是……这怎么可能？

    寒武纪！在那个还是显宇宙刚刚开始的年代，在那个所有生命都还在初始阶段的年代，怎么可能会有青铜器？

    打小就翻烂的进化论在这一刻被这块青铜残片扯得七零八落。

    寒武纪生命大爆发本就是进化论亟需补完的一个大漏洞，从达尔文写出物种起源一直到现在，无数古生物学家始终没能补完这个天大的漏洞，而这块青铜残片则从最根本的源头上否定了进化论。

    早在寒武纪生命大爆发之时，世界上就已经有人类的存在了！

    这种东西只要一件，就足以改变人类当前所有已知的未知的历史！

    但是，为什么爸并没有把它上交给国家，反而是将之藏在不见天日的暗格里？

    握着残片，凌云脑海中陡然跳出父亲的一句话。

    “有些东西注定不能存在，却又注定无法掩藏……早知如此，当初何苦那么做？”

    那是在两年前自己挑灯夜战备战高考的时候，夜里上洗手间经过书房时偶然听到父亲在书房里的喃喃自语。

    当时，他以为父亲只是看了某本书后的感叹之言，现在，凌云可以肯定父亲说的就是这块残片！

    为什么它不应该存在？什么东西又无法掩藏？

    也许这就是父亲根本没让我报警的原因所在？

    脑海中父亲熟悉的背影渐渐地模糊了起来。

    凌云不知道父亲是从哪里弄到的这东西，更不知道龙坑是什么地方，在这一刻，他只知道父亲这些年的工作绝对不止地质堪探这么简单！

    冥冥中，他感觉一些事正以无法阻挡的态势汹涌而来，而那些事，将彻底改变自己的人生，自己的未来。

    就在此时，凌云陡然察觉手里的青铜残片似乎有了一丝淡淡的热度！
',10067,10199);
insert into ds_book values(null,10200,'凌云觉得自己一定是紧张过度了。

    青铜片怎么可能会有热度？

    就在他准备将之重新放回盒子时，右手触电般一缩。

    是真的！不是幻觉！

    这块残片真有热度，而且……热度还在缓缓提升！

    细细看去，但见残片深处陡然出现了一些之前并不存在的淡红纹路，凌云不禁揉了揉眼眶，倏然汗毛倒竖，抬手将残片甩到桌上，一个箭步闪出两米开外。

    他看得非常清楚！

    那些细纹并不是死物！它在残片内部以一种缓慢又恒定的速度向表面延伸。

    几乎就在残片落到桌上的瞬间，原本暗金色的铜片缓缓变成淡红，它所在的桌面飘出淡淡青烟。

    紧随其后，细密的淡红纹路缓缓蔓延至铜片表面，残片的颜色也开始急剧变化。

    橘红，亮红，深红……一连串的颜色变幻在不到一秒间完成，最后定格在紫红上。

    空间仿佛都颤抖了一下，一片耀目紫光自残片深处席卷而出，紫滟煌煌，光芒所到之处，与之无关的任何光线全部消失不见，整个书房仿佛置在一个没有任何物体，只有紫色的世界里。

    紫光来得快，去得更快，只是一瞬的时间，充斥书房的紫色潮水般缩回残片中央一点，一股仿佛来自远古洪荒的古老气息如猛兽一般从残片冲出。

    危险！极度危险！

    仿佛只要多呼吸一口气就将魂归九泉的可怖感觉汹涌而来，凌云想也不想，脚猛一蹬地身形如离弦之箭般直窜门口。

    他敢发誓，自从八岁起父亲硬逼着自己跟着他练武的这十几年时间里，自己的爆发速度从未有过这么快！脚刚离地，人已扑到门口，还未来得及拉门，背后一股从未感觉过，也无法形容的气息闪电扑来。

    来不及！

    凌云扭头，视线中的景象仿佛慢镜头回放一般。

    桌子在缓缓倾倒，桌上的书本划着抛物线徐徐下落，那块铜片悬在半空，紫光一吐，淡白波纹涟漪般荡开。

    无比纯粹的白。
','    明明正对着窗户，却是什么也看不见，这

    个飞速扩大的白圈仿佛是不属于这个世界的东西被强行塞了进来。无论什么东西只要碰触到白色涟漪都是瞬间化为灰烬。自己的动作与涟漪荡开的速度相比就如同蜗牛与喷气式飞机的区别。

    事实上，在凌云刚做完扭头的这个动作时，涟漪就已经冲到眼前不到半米。

    如果被涟漪扫到，毫无疑问，与那凭空化为灰烬的桌子是一样的下场。

    要挂在这里了！

    凌云脑海里升起一种明悟，第一时间闪过的念头并不是这块残片的诡异之处，而是……

    老爸！别人家的儿子是坑爹，你这是坑儿啊！不带这么玩的！

    就在淡白色涟漪即将触到莫愁鼻尖之时，蓦然，残片表面浮出一个奇形字符，涟漪如同破碎的镜子一般崩为漫天碎片消失得无影无踪，紧随其后，异变陡生！

    残片化为一团紫光，以迅雷不及掩耳之势直奔凌云而来。如同落入湖水中的石头，一闪就消失在眉心深处。空中仅余那张标签缓缓飘落。

    凌云脑袋猛地向后一仰，感觉热流自眉心渗入，一部分热流流通四肢百骸，彻底散入周身，另一部分热流凝聚在胸口。诡异感觉持续不到一秒，凌云眨了眨眼睛，一声怪叫，冲向一楼洗手间。

    镜子里映出一张少年的脸，眉清目秀，一米七四的个头，淡蓝格子短袖T恤，藏青色工装裤，由于打小练武的缘故，身材匀称。

    凌云凑近了镜子，死死地盯着眉心。

    没有任何异状，观察半晌，又扯开领口，一看之下，眼睛就瞪圆了，连忙脱下短袖T恤，对着镜子认真观察。

    但见心口一点隐约有一片淡淡的，大约食指指尖大小的黑晕，仿佛生而带来一般，在肌肉深处隐约勾勒出一个奇形符号。

    凌云脸色发白，倒退几步，靠在冰凉的墙上。

    这到底怎么回事？那块残片居然钻进我的脑袋里，然后又在我胸口留下了这个鬼玩意。

    如果说身体感觉不适的话，凌云还会感觉好点，至少，可以用某些诅咒啊，什么灵异事件啊，来解释。

    然而诡异的是自己偏偏就没有任何不

    适感。

    那可是一个会冒出诡异光圈的残片啊！要是哪天它不开心了，在我胸口里来上一道光圈，那我岂不是尸骨无存？
','    就在凌云失神的时候，一阵声嘶力竭的马达轰鸣声远远传来，初时还在远方，不过一息间就呼啸而至，随后，一声尖厉刹车，夜空死寂！

    凌云，下意识摸出手机看了眼时间。

    凌晨四点十五分！

    这个时间点，用得着这么拼命赶路？

    嗯？等等，不太对劲。

    听这停车的位置，好像在我家门口？

    凌云小心翼翼地透过洗手间的帘子缝隙往外看。

    只一眼，凌云的心脏就缩紧了！

    但见一辆黑色越野车冒着黑烟停在自家门口，门开，跨出来一道黑影。

    他想起父亲的那通电话。

    很显然，危险来了！

    如果是普通人恐怕第一时间就慌不择路瞎跑，或者掩耳盗铃式地藏在房子的某个角落，凌云不同。

    父亲由于工作的关系一年到头都难得回家一趟，他早已习惯了一个人的生活，再加上父亲一直有意无意地培养他独立自主的性格，打小就经常带着他到附近的地方探险，所以，他比其它同龄人更自立。在面对一些突发状况时仍然能够保持思绪冷静。

    隔着门帘，凌云小心地观察着那道黑影。

    第一眼的感觉就是这个人非常矫健，一举一动就仿佛一只即将出击的猎豹。

    黑影先是打量了一眼房子，蹲下身观察了一下四周，然后绕到房子的侧面。

    跑出去？肯定不现实。

    唯一可行的办法只有……出其不意，把这个家伙搞定！

    打八岁起就跟着父亲习武，他对自己的身手还是有信心的，一对一单挑，不虚任何人。

    凌云轻手轻脚地摸到了楼梯底下，深吸了一口气，呼吸渐渐变得悠长低缓。

    楼梯尽头是一个拐角，客厅右边以及楼梯底下都是那个位置的死角，下楼肯定要先看清楚被墙角挡住的客厅右半边，一旦对方这么做，他就会给对方一个永生难忘的教训。',10067,10200);
insert into ds_book values(null,10201,'一片寂静中，二楼传来一声极细微的喀嚓声，这是窗户打开的声音。

    来了！

    凌云闭上眼睛聆听楼上的动静。

    来人显然很是小心，脚步落地的声音轻到几乎听不见。也就是在这寂静的夜里，若是白天，根本不会听出任何动静。

    他绕着二楼走了一圈，在书房里停顿了半晌后，脚步声陡然急促了些，冲到楼梯旁顿住了。

    那张原本贴在青铜残片上的标签！

    这人一定是看到了掉在地板上的那张标签才会变得急躁，他确实就是冲着那块残片来的！

    随着脚步与楼梯间的轻微摩擦，凌云暗中估算着楼梯数，身体仿佛绷紧的弦。

    轻影摇动，拐角处冒出一身淡黑色外套，就在凌云准备冲出去的瞬间，他看到来人缓缓抬起了右手，那一瞬间，凌云只感觉头皮发炸，浑身冰凉，原本绷紧的身躯瞬间失去所有力量。

    来人右手握着一柄装了消声器的手枪！

    在这个连猎枪都要审批的国度，竟然有人拿着枪闯了进来？

    凌云脸色煞白，大气也不敢喘。

    怎么办？

    短暂的慌乱之后，纷乱的思绪在死亡危胁面前彻底冷静了下来。

    一个玩枪的人绝对不是普通人，眼下贸然冲出去就是自寻死路。

    只有逃！

    是了……洗手间！

    眼下他注意力大部分都在拐角挡住的右边上，等他探头查看的时候，就是逃脱的最后机会。洗手间距离这里不远，窗户外还有一条排水管道！

    凌云额头沁出几滴冷汗，掌心不知不觉湿透，双眼死死地盯着来人拖到楼梯旁倒影的动作。

    正如凌云所算，来人注意力全在右边，周身肌肉处在随时爆发的边缘。

    他很清楚房里有人，刚才在外围他就已经观察过了，只有进去的脚印，并没有出来的脚印。

    然而，自己停车那么大的声音，直到从二楼窗户进来到此，整个房子没有半点动静。
','    要么是藏起来了，要么，就是打算伏击我！而最有可能伏击的地方就在二楼和大厅。

    想到此，来人嘴角露出一丝冷笑。

    如果凌天河亲在的话，那老子还得小心翼翼，可惜……

    他紧靠着墙小心翼翼地侧出一点视线，右边客厅一览无遗，连个躲藏的角落都没有。

    藏起来了？藏在哪里？

    就在他脑中刚刚转过这个念头的瞬间，几声快速脚步声后，伴随着的是一声巨大的关门声。

    卫生间！

    男子马上反应过来，身影如鬼魅一般直扑洗手间，人未到，两声连续枪响，紧闭着的门锁生生打出两个小洞。一脚飞起，门应声而开，视线所及是一扇洞开的窗户。

    跑了……不对！

    男子身体还保持着冲向窗户的动作，想也不想，反手就是一枪。子弹出膛的同时，只感觉右腕一股大力传来，枪拿捏不住，脱手飞出窗户。

    凌云没有沿着窗户逃走，在最关键的时候，他想到一个问题。

    不管是从窗户里跳出去还是爬管道终归是需要时间的，而窗户外头就是一片宽阔的菜地，对方就是一头猪，此时也该冲到了窗边，而那时，自己就将置身于对方的枪口之下。

    这不是电影，主角处在枪林弹雨中都能毫发无伤的奇迹根本不可能发生，最大的可能就是自己被对方一枪毙命。

    人急智生，凌云心一横，踢开窗户后就躲在门边夹角伺机偷袭。

    千钧一发之际，终于成功将对方的枪解决掉，饶是如此，凌云还是惊出一身冷汗，这人反应出奇的快，若是自己动作稍稍慢上半拍，那反手一枪就能在自己身体上开个窟窿。

    不能给他喘息的时间！

    一脚踢飞手枪，脚还未落地，手在墙上一撑，另一只脚腾空剪向来人的脑袋。

    这是父亲教他的一种腿法，有个很好听的名字叫蝴蝶翦水，只要踢实，轻则昏迷，重则致命。

    但见男子前冲之势未止竟然还能动作，一低头，加速冲向墙壁，洗手间本就不大，这一加速，脚直接踏上墙壁，身体腾空旋了一圈，顺势一脚从上而下砸向尚在空中的凌云。

    呯！

    一声闷响，凌云眼一黑，险些闭过气去，直接被一脚踹得倒飞出洗手间，力道之大，身体还在地上滑行了足有一米。
','    男子闪电般冲出房间，看清凌云模样后，一声冷笑。

    “原来是凌天河的儿子？很不错，够胆色！”

    这名男子竟然是

    一名三十多岁的外国人，身材高大，灰发褐眼，黑色外套下肌肉充满了爆炸性的力量，即便站着不动也仿佛一头猛虎。

    凌云越发查觉事情不同寻常了。

    连外国人都牵扯了进来，那块残片到底有什么秘密？

    “东西在哪里？”

    男子声音极为冷冽，对着凌云伸出手，他的国语说得相当流利，若是闭上眼听的话就是活脱脱的中国人。

    凌云紧抿着嘴，仅仅从刚才那短暂的交手他就非常清楚，这老外的身手高出自己太多，但是，骨子里的坚韧让他不愿就此放弃抵抗，脑袋一边急速转动一边沉声道：“什么意思，我听不懂。”

    男子摇了摇头，身形暴起，欺身就是一记飞膝，势大力沉，凌云微一侧身，让过膝盖，正欲反击，却见对方飞膝变后弓步，身体一矮，原地一记扫腿迅若奔雷。

    无可奈何，凌云只得腾身跃起借势踹向对方。

    男子一声冷笑，手下不停，扫腿顺势转了半个身，一手肘顶上凌云脚底。腾空的身体直接被轰得向后倒飞，蹬蹬蹬连退四步，还未来得及缓过劲来，眼前一暗，男子弓着腰出现眼前，下一秒，肚子仿佛被狠狠抡了一锤，眼前一黑，喉咙一甜，身躯弓成了虾米。

    男子直起身子冷冰冰地道：“东西在哪里！”

    擦掉嘴角鲜血，凌云死死盯着男子。

    这人目的很清楚，就是残片，而那残片，或许能成为我的保命符。

    思绪急速转动，凌云倏然咧嘴笑了：“东西我藏起来了，你一辈子都别想找到！”

    是的，如果我不说，谁会知道，那块残片居然钻进我的身体里？

    男子闻言微皱眉头，随即古怪地笑了笑：“你觉得把东西藏起来，我就拿你没办法了？这个世界有很多种办法可以掏出人脑袋里藏着的秘密，而那些办法，每一种都能让你生不如死！”

    说罢，手腕一抖，一柄手术刀幻出一层寒芒罩向凌云。

    刚才那一拳让凌云连直起身都非常困难，面对这层寒芒，根本无力躲闪，只能眼睁睁地看着森寒的刃芒仿佛恶狼尖吻一般狠狠噬来。

    就在这个瞬间，凌云陡然感觉胸口深处冒出一阵非常古怪的悸动。

    他想起了那道可怕的白色光圈。',10067,10201);
    insert into ds_book values(null,10202,'2049年，正是VR技术高速发展阶段。由国际灵境联盟牵头的虚拟世界拼接计划已经顺利落幕。','','',10068,10202);
    insert into ds_book values(null,10203,'易回心思一转，脚下油门使劲一踩，车头瞬间转向左前方，只能走急救干道了。交警叔叔正要拦截已经来不及了。','','',10068,10203);
    insert into ds_book values(null,10204,'易回沿着乡间的小路，走过白杨树林，趟过小河，绕过山坳。对面一道熟悉的身影的出现，易回呆愣住，那不是夏茜茜，不对不对，温静怡。','','',10068,10204);

    insert into ds_book values(null,10205,'‘嗯，这间仓库已经没有食物了,这应该是我最后的画面了’

　　‘如果有一天，人类战胜了末日浩劫，捡到了我这个DV的内存卡...’

　　‘那么，希望我能对末日后人类的历史填充，贡献上我的一份力量...’

　　‘如你们所见，坚持了24天，食物已经没了，我已经到了极限，我的名字叫陈天赐...再见了，朋友们...再见了，我的末日记录，最终话end’

　　穿的破破烂烂，手握DV的少年，说完最后一段独白，将DV关机，然后闭上了双眼，静待着着死亡的到来

　　黑云遮蔽着天空，连看见太阳光都成为了奢侈,遍地的尸体，遍地的废墟，整个地球，千疮百孔，满目狼藉....

　　2025年，5月2日，美国HSD的一家医院里，一位感染了最新疾病埃拉NSS9的垂死病人突然双眼流出血液，口中也吐出大片的鲜血，身上爆出青筋，随后在周围医护与病人的尖叫声中站起，朝着旁边的护士一口咬下去....随后,被咬后的护士过了两分钟也颤巍巍的站了起来...

　　同样的事件发生在了全球各地，同年6月份，全世界已经大半数人类变为了‘行尸走肉’，ZF机构宣布瘫痪，社会制度分崩离析，文明社会逐渐消失，男人像原始人一样会为了一块面包大打出手，女人会为了活下去选择成为玩物，老弱病残纷纷被无情抛弃......

　　同年8月份，世界人口骤减至不足三分之一，剩下的人们，将5月2日后称为‘末日历’.......

　　疫情爆发的时候，陈天赐正和父母在商城开心的购置晚餐需要准备的时蔬，当成为行尸走肉的业务员冲向他的时候，陈天赐正在用DV拍摄父母和谐友爱的VLOG，他的父母推开了他.....陈天赐听到的最后一句话就是爸爸妈妈一起喊的：“快走，不要回头”

　　这是他在超市存货的仓库其中一间待的第二十四天，十天前手机的电量变为0，仓库里的食物前天已经吃完了，陈天赐中间有几次想出去，但是过道那些‘行尸走肉’传来的似动物般的呜咽声，让他放弃了这个想法，毕竟，做个人死也比做具行尸走肉无止境的闲逛要好得多

　　‘叮’——世界的秩序已经乱至极点，人类存活量低至三分之一！宿主获得末世求生系统

　　“？？”已经闭上眼睛，准备安静的在睡梦中迎接死亡的陈天赐，被脑海里传来一个系统女声给惊醒了

　　“人类文明不该毁灭，本系统在还活着的人类里随机选择，摇到了宿主，现在请用意念选择进入系统空间”

　　“......系统空间”不知道自己是不是出现幻觉了，不过在当前这种情况下，求生欲还是激发陈天赐按照着脑子里那个女声的指引做了

　　下一秒，陈天赐的眼前就出现了一半透明的屏幕

　　看着眼前的屏幕，陈天赐再三确认自己不是出现了幻觉之后，狂喜至极！

　　末日历前，网络小说陈天赐还是看过很多的，系统啊！自己被系统选中了啊！起码是死不了了吧！

　　“系统，我是不是不用死了！然后你会赐予我超能力，让我来拯救世界？”

　　本系统要纠正你不切实际的想法！本系统只能辅助你去改变自己的处境，并不会赐予你“无敌”之类的属性，如果宿主本身不努力，或者宿主是个白痴，依然会死！到时候本系统会再次选择宿主，直至文明重生或者人类全部灭亡！

　　“噗...”看着系统一本正经的教育自己，陈天赐赶忙摆正心态，做出一副乖宝宝的样子
','　　本系统现在将详细介绍系统使用功能，请宿主认真倾听！

　　【末世求生系统】

　　宿主：陈天赐

　　A：体力LV1(0/200)【增加体力可以提升近战格斗术/刀战术/抗击打能力分支技能】

　　B：视力LV1（0/200）【增加视力可以提升洞察力/瞄准精度/远视观察力分支技能】

　　C：敏捷LV0（0/100）【增加敏捷可以提升移动速度/身法分支技能】

　　D：制造LV0（50/100）【缝缝补补又一年，所有图纸的基础选项就是制造】

　　物品栏：5格（可成长）

　　技能栏：体力分支：基础格斗（已学习）基础械斗（已学习）基础忍耐（已学习）

　　视力分支 ：基础洞察（已学习）枪械瞄准（已学习）明视距离（极限距离500m）

　　新手大礼包：1

　　技能点数：0

　　抽奖次数：1（可以获得图纸、人员、点数、垃圾）

　　当前人物评级：普通人中的弱鸡

　　当前人物状态：极度虚弱（需补充食物，水分）

　　每击杀一只丧尸获得1点自由点数，击杀特种丧尸，完成大型事件均可获得大量点数，每次有属性升级时可以获得抽奖次数！希望系统的选择没有错，愿宿主在末世中披荆斩棘，带领人们走向黄金文明时代！

　　‘额.....系统的评级还真是一针见血呢...大学军训时学过军体拳和自卫术，闲暇时还宿舍里的富二代基友去打过实弹射击，只可惜大学还没毕业就遭遇了末世浩劫..就是那50的制造经验来的有点莫名其妙，大概是因为自己玩过的模拟装车游戏？’陈天赐观察着意念空间，仍然稍稍觉得有些不太真实，不过既然有了生存的希望，不管如何，自己要坚持下去，做到最好
','　　‘选择打开新手大礼包’陈天赐试探性的说到，既然有了系统傍身，先看看能给什么东西吧！

　　‘叮’——打开新手大礼包，获得初始道具

　　M9手枪X1

　　9MM子弹X45

　　塑包矿泉水X24瓶/1箱

　　118g压缩饼干X15/包

　　尼/泊/尔战术长刀X1

　　有吃的！靠！！

　　陈天赐赶紧查看系统的储存空间，一包矿泉水和一箱压缩饼干连带着三件装备，刚好把他的储存空间填满，意念一动，全部取出

　　退出空间后，看着地上的装备和食物，陈天赐也不知道哪里来的力量，一把撕开矿泉水的塑包袋，拧开矿泉水盖，咕嘟咕嘟的往嘴里灌，一瓶水那么两三下就灌下去了，接着又撕开一包压缩饼干，不管三七二十一，就往嘴里塞......

　　“咳...咳咳”被压缩饼干呛到的陈天赐又拧开了一瓶水，灌了两口缓解了一下噎感，宝贝的吧瓶盖拧好，慢慢的咀嚼嘴里剩下的残渣，随着喉咙的蠕动，一同往被咽下去的不只有食物，还有陈天赐的眼泪：“我，.....活下来了.......”

　　一番整理恢复过后，看着系统评价自己的状态从极度虚弱到基本正常，陈天赐满意的把食物和水收进了储物空间中，把枪上好子弹，别到腰间紧住，拔下充着电的DV装到双肩包里，背上包，然后紧握住尼泊尔军刀，已经有了自卫实力的他，准备离开这个地方

　　‘哦，对了’正准备出门的陈天赐好像想起了什么来，又一次进入了系统...

　　抽奖次数：1

　　果然啊...之前打开礼包以后太激动了，忘记了还能抽一次奖，陈天赐连忙意念默念抽奖，看看系统初始送的东西还能给自己带来什么好东西吧！

　　眼前的界面转化为一个画着问号的筛子，开始不停地转动，时不时就会有各种光芒闪过，看起来应该是高级的东西

　　‘神器，神器，神器！给爷来个神器！’陈天赐在心里摇旗呐喊

　　‘叮——恭喜宿主，抽中图纸

　　【M4Aone卡/宾/枪】

　　M4one卡宾枪的衍生型，被用作特别作战用途，主要装备美军各常规部队及特种部队，装备5.56MM常规子弹，M4Aone有值得夸耀的射程和杀伤力！以及不俗的射击速度！

　　制造条件：制造等级：LV3及以上 铁X10 钢X5

　　”之前系统介绍图纸的时候还有点纳闷，原来图纸是这样用的！”陈天赐恍然大悟，不过需要制造等级LV3，看来只能放在系统里先让他‘吃灰’了

　　意念退出空间后，陈天赐再次走到了门口，在脑海里简单的规划了一下路线，记忆中出门以后是一条直直的过道，走到尽头就是楼梯，只需要爬一层就能到达一楼的超市，至于超市里也不知道什么情况，所以不管咋样，得先上去再说，深呼吸了一口气，陈天赐拧开了仓库的大门

　　“咔吧”

　　在空荡的的过道里开门声显得是那么刺耳....陈天赐毅然决然的推开门向着楼道走了出去

　　“不管结果如何，没有回头的路了！奥利给！”',10069,10205);
insert into ds_book values(null,10206,'黑暗的过道，头顶的白炽灯不知道连着开了多久了，现在已经接触不良，一闪一闪的昏暗灯光下，5只丧尸慢慢转过头，看向了从库房出来的陈天赐

　　最靠近陈天赐的是一个穿貂的大叔，手腕上的劳力士诉说着他生前也是个枯燥的体面人！紧接着是穿短裙的靓妹，长腿欧巴，秃顶大爷还有...广场舞大妈！不过，现在的他们，破烂的衣裳，红色的眼睛，亦或是只剩个空壳的眼眶，浑身发绿的皮肤，嘴里的尖牙和血迹都在告诉陈天赐——‘着装都是浮云，现在的我，只是一具行尸走肉’

　　陈天赐只能小心翼翼的对着楼道里的五只丧尸摆好架势，随时准备攻击，而五只丧尸中为首的貂叔，直接张牙舞爪的朝着陈天赐奔跑了过来

　　“特娘的，先下手为强！犹豫！就会败北！”

　　陈天赐往前一跃，扬起手直接对着貂叔脖子来了一刀！

　　“咔嚓”

　　手起刀落，头身分利，尼泊尔不愧是最具有力学原理的武器，倾注力量后锋利无比，貂叔就这么直挺挺的倒在了地上，咕噜咕噜的脑袋滚到了一边，发臭的血溅了陈天赐一身

　　“叮”——宿主击杀低阶丧尸，自由点数+1

　　砍一只丧尸，就有一分可以拿！积少成多嘛

　　握紧了因为砍‘人’变得微微颤抖的手，陈天赐定了定神，抹掉脸上沾的血，提刀走向了下一只丧尸，准备继续稳步收割

　　但是剧情总是不按照套路发生，剩下的四只丧尸并没有上演‘葫芦娃救爷爷’，而是直接一拥而上，一起对着陈天赐冲了过来...

　　“尼玛的，果断就会白给吗？”

　　直接一刀剁在跑的最快的短裙妹脑袋上，随后抬起一脚踹到长腿欧巴的胸口，连带着秃顶大爷和广场舞大妈一起倒飞出去，拔出插在短裙妹脑袋上的尼泊尔，飞快的掷向长腿欧巴的脑袋，然后掏出腰间的手枪，拉好枪栓，两枪打出，完美收场....

　　当然，以上都是陈天赐设想，实事是刀虽然剁到了短裙妹的头上，但是一脚下去，摔倒的不是长腿欧巴，而是陈天赐自己....

　　“我，我草，怎么这么硬”望着陈天赐张牙舞爪扑下来的长腿欧巴，陈天赐顺势一滚，让长腿欧巴扑了个空，然后抱着长腿欧巴的大腿，用尽吃奶的劲把它掀翻在地，掏出腰间的M9，对着长腿欧巴的头就是一枪，长腿欧巴的脑花和血浆一起爆出，划出了‘优美’的一条曲线

　　“幸好提前解开了保险，还剩两个，呼呼”忍着肚子里的恶心，陈天赐喘了一大口气，撂倒这些行尸走肉，需要的力气不是末世前打架用的力能比的，这些‘大哥’们，实在太硬了，陈天赐发誓，升了级一定先把体力点满

　　‘嗷嗷！’

　　双手紧握手里的枪，瞄准朝着陈天赐扑来的剩余两只丧尸，‘砰砰’两枪解决了战斗，这种狭小的空间，没有任何空枪的理由，秃顶大爷脑袋是永远不会秃顶了，因为他的脑袋直接被打烂了半个

　　‘呕.......’

　　解除了危险以后，陈天赐终于忍不住吐了出来，毕竟活了二十年，连只鸡都没杀过，自己都不知道刚才自己怎么下得去手的，难道这就是人面对生死时的本能吗？

　　冷静下来以后，陈天赐意念翻看了一下自己的战斗记录系统，除了杀丧尸给的5点自由经验外，甚至还有体力和视力的加成

　　宿主使用了近身格斗：体力经验+25
','　　宿主使用了枪械瞄准： 视力经验+30

　　累死累活的才给了五点点数，什么都点不了，就是有系统傍身，在末世行走，也不是一件简单的事啊！捡回尼泊尔军刀，擦干净上边的血，活动了下筋骨，举起枪进入备战状态，陈天赐向着一楼的超市走去......

　　老实说，如果进入超市以后什么都没有陈天赐能接受，有一堆丧尸冲过来陈天赐也做好了准备，但是眼前的景象，陈天赐真的惊了

　　超市的货架货物摆放的井然有序，遍地都是丧尸的尸体！而且丧尸的‘死状’基本都是一样的，头部和身体分离，脖子的切割口非常整齐，都是毫不拖泥带水的一刀切，除此以外，没有任何多余的打斗痕迹，而且地上几乎没有洒到四处都是的血迹，仅有的出血痕迹，都存留在尸体的旁边......

　　陈天赐根本无法想象这里发生过什么，丧尸竟然被屠杀？就算是有军队清场，也不可能用刀割头啊？双手紧握住枪，打起十二分的精神，往超市的出口慢慢走去

　　在移动过程中经过食品饮品区的时候，陈天赐发现这里的吃的喝的一点也没有了，而其余的地方，只有日化用品的地方少了部分产品。

　　‘被屠杀的丧尸，死一般的寂静’一个手握砍刀的大壮汉身影出现在陈天赐的脑海中来

　　“难道有超级英雄？算了，还不如信我自己能靠系统变成超级英雄......”

　　想着想着，就走到了服装区，陈天赐看了看自己身上这身破破烂烂的‘乞丐服’还是决定去驴友装备区撸点装备出来

　　从驴友装备区挑了一身黑蟒纹的作战服，然后又拿了一双号码正合适的作战靴，一副战术手套；又把自己的学生双肩包，换成了登山包，整装完毕后照了照镜子，作战服紧贴着身体，轻便又修身，完美！

　　可就在这时候，一道清冷的声音从陈天赐的后边突兀的传来

　　“听见枪声过去找，没找到人，没想到你还挺悠哉的嘛”

　　“！”

　　陈天赐心里一紧，赶紧掏出手枪向后转去，可就在他转身的那一瞬间，一道白光闪过，陈天赐的手被震得生疼，m19被打飞，一把长刀闪着幽幽的寒光，已经架在了陈天赐的脖子上........

　　“如果不是看你傻乎乎的，你的脑袋已经搬家了...”

　　陈天赐看着眼前的女人，大概明白被屠的丧尸是怎么回事了，这应该就是那个砍刀壮汉了吧！

　　想到那些丧尸的‘惨’样，两滴汗顺着陈天赐的脸颊流了下来

　　眼前握着刀的女人跟壮没有一点关系，相反的是属于完美的那种类型，168的个子，手里握着一把唐刀，闪着寒光的刀刃上纹着雷电的纹路，一头黑色长发如爆瀑一样随意的散下来，一双丹凤眼里充满着英气，作战手套下的手如柔荑，蓝色的裙摆下一双美腻的肉丝大长腿，蹬着一对略旧的黑色骑士靴，唯一美中不足的可能就是衬衣下的胸部有点平平无奇.....

　　“额...我想咱们之间是不是有什么误会..我就是从这超市路过，来挑几件衣服，大家都是在末世中求生的人，就不用这样了吧...”

　　说罢还用指头尝试性的推了推刀尖，可惜，推不动....

　　“你是儿童剧里的男主角吗？”
','　　“？？啥，我长得很像那部剧的明星吗？”

　　女人笑了笑，把刀收了起来，对着陈天赐说到：“你那蠢样让人怀疑你是儿童剧里某个角色,天真的像刚出生三岁小孩子一样”

　　‘靠，合着哥们在这挨骂呢’

　　陈天赐苦笑，开口说到：“我叫陈天赐...搁这超市的仓库待了24天，断了物资，今天准备出去碰碰运气的，敢问....阁下尊姓大名？”

　　“顾千青”

　　“额...”陈天赐想了想，试探性的问到:“那个...顾美女，这超市里边的丧尸都是你解决的吗？”

　　“没有回答你问题的必要”说完顾千青把刀收进了刀鞘，转过头去离开了

　　理都懒得理自己就离开了，陈天赐见状只好捡起了地上的枪，重新插到后背的腰间，看着那曲线完美的背影，听着靴子的踢踏声渐渐变远.....

　　“咕咕~”

　　在针落可闻声的安静环境下，顾千青走掉的方向传来一声与环境格格不入的响声，眼瞅着顾千青的背影明显一颤，陈天赐差点笑出声来

　　仔细思索了一下，用意念从系统空间拿出了一瓶水和一袋饼干，对着顾千青的背影招了招手，喊道：“唉！我这有吃的，不介意的话，来一点吧”

　　顾千青转过头来，眼睛死死的盯着陈天赐，似乎是想用眼神看透这个人脑袋里装的到底是什么，不过现实还是打败了一切，随着又一声咕咕叫，顾千青最后还是走过来一把抓过饼干，撕开口袋咀嚼了起来

　　“说真的，今天如果你在别人面前拿出食物和水来，你一定会死的”

　　陈天赐倒是摸了摸头，有些憨厚的说到：“我的手机是10天前没电的，政府系统还没有宣布彻底瘫痪的时候，就看到过报道，人们因为一包方便面就可以杀人，但是在这种环境下，就算得到了全世界的物资，只剩下自己一个人，那不也挺无聊的吗？”

　　“......”顾千青这次倒是没有开口嘲讽陈天赐，有些嫌弃的看了看陈天赐说到：“我不想和你讨论幼稚的问题，接下来你有什么打算？”

　　“我家是W市当地的，这一片我很熟，先去南边3KM的租车公司搞一辆合适的交通工具，然后再去海天市场弄点物资，最后再去市特警大队补充点装备，就上高速吧，毕竟之前网没断的时候新闻里里还讲过，现在燕京市是华国安全点，被军队守护着，既然如此，怎么也得去看看”

　　陈天赐赶忙有条不絮的说出了自己的计划，因为他觉得，如果可行的话，顾千青应该是有意和他一起行动，这种隐藏型大腿，那不得牢牢抱稳？

　　于是说完之后接着问道：“要不要一块行动，我这的吃的如果省着点，可以够咱吃几天”

　　果然，顾千青犹豫了一下，还是点了点头：“暂时先一起行动吧，就当是对你的食物感谢！”

　　‘叮’——系统提示

　　恭喜宿主暂时获得体力LV6敏捷LV6的强力队友，获得经验自由经验200点！

　　我擦嘞？LV6的猛人!再加上系统赠送的点数，这饼干送的不亏啊！',10069,10206);
insert into ds_book values(null,10207,'获得了200点自由经验，陈天赐选择先拿出了175点把体力给升到了LV2，不管咋样，有劲才是硬道理!

　　叮——

　　系统提示：宿主素质体力提升至LV2（0/400）基础耐力替换为低级耐力，力量大幅度增加；基础格斗晋升为低级格斗，增加招式警用擒拿术，基础械斗替换为低级械斗，增加技能空手夺白刃

　　警用擒拿术：攻防结合的一门综合性实用技术，具有非常有意义的实战用途

　　空手夺白刃：可以用华丽的技巧将普通人的武器卸下，但是如果强行使用，你会被揍得很惨

　　宿主属性升级，获得抽奖机会一次！

　　“抽奖！”

　　意念再次进入抽奖空间，盯着不断晃动筛子，辣鸡和神器的产出不确定性，陈天赐觉得最刺激的果然还是抽奖环节~

　　恭喜宿主：抽中垃圾！

　　雪花啤酒勇闯天涯1群/12瓶

　　记住了，不是你给谁一瓶雪花，谁都会陪你勇闯天涯

　　卧槽....

　　抽中个辣鸡你恭喜个毛啊...

　　陈天赐退出系统空间，在心中骂了系统一顿，接着舒展了一下有些发酸的胳膊，下一秒，陈天赐脸上就露出了古怪的表情

　　我靠...自己胳膊上这肌肉哪来的啊...只不过是在系统空间了点了几下?哥们这肌肉就长出来了？这不科学！...嘛，算了，好像系统这玩意本来就不怎么科学来着

　　抖了抖胳膊上的肱二头肌，掀看上衣瞅了瞅，陈天赐嘴里不自觉嘴角上扬，发出了一声：“nice~”有腹肌的感觉，那实在是太美妙了~

　　在超市落地门前蹲着的顾千青转过头来看着掀衣服的陈天赐，一脸嫌弃的说到：“你有病吗？赶紧过来帮忙把门掀开，这玩意得两边用力才能抬起来”

　　“嘿嘿...来了，来了”陈天赐尴尬的把衣服放了下来，走到门另一边抬口阀，把手伸进去，微微用力

　　“3”

　　“2”

　　“1”

　　“抬！”

　　随着顾千青的一声娇喝，陈天赐咬紧牙关，费劲九牛二虎之力的一顿输出，终于把防弹级合金卷帘门抬了起来，没想到的是门刚抬起了一半，三只丧尸就张牙舞爪的要从下半部要爬进来！

　　我擦嘞！陈天赐一脚踹到踩到距离他最近的丧尸头上，却突然觉得肩膀上一沉，顾千青那边松手了！

　　“撑一下”
','　　留下了这么一句话，顾千青抽出了长刀，挽了个刀花，一刀把陈天赐脚下的丧尸头给砍了下来，然后一个滑铲从超市门里滑了出去

　　系统提示：队友击杀低阶丧尸一只，宿主获得自由经验1点

　　还能这样呢？陈天赐苦笑不得，笑的是跟着美女大腿，以后积分少不了拿，哭的是肩上越来越沉，这LV2的小体格，不知道能顶多久啊！

　　轮不得陈天赐分心，只好咬牙使上吃奶的劲抗，不知道坚持了多久，只能听着外边刀在空气中切动产生的风声和顾千青的娇喝yy发生了什么，系统提示顾千青杀到第6只得时候，陈天赐终于是到了临界点，对着门外大喊道：“大姐，我不行啦！”

　　“叮！”

　　一把刀从门的右边伸进来抵在了卷临门的下部，陈天赐就觉的肩上的力量轻了几分，然后往地上顺势一滚，在卷临门落下来的一瞬间，滚到了门外

　　“弱鸡”顾千青鄙视的看了陈天赐一眼，用裙子角擦了擦刀上的血，收进了刀鞘中

　　‘靠，看在你是美女的份上，不跟你吵架’陈天赐敢怒不敢言，只能在心里默默给自己助威，希望自己能早日到LV6，到时候一定翻身把歌唱！

　　看了看手腕上带着的从商场专柜里撸来松拓X9，现在刚好是中午12点，但是天是阴的，灰蒙蒙的天空投不进太阳光，柏油路上都是龟裂的纹路，四周建筑被震碎的玻璃和弹孔彰显着曾经反抗的痕迹。丧尸的尸体，废弃的汽车随意的在马路中间停靠着，不乏玛莎拉蒂，保时捷这种豪车，可是不知道他们的主人如今身在何方，是死是活呢？

　　“怎么样，租车公司往哪边走？”

　　顾千青双手抱在胸前，把陈天赐从无尽的遐想中拉了回来，陈天赐抬手指向东边，开后说到：“三个路口，然后往南路西就是”

　　“那赶紧走吧，我们要在天黑之前上到高速上”说完顾千青头也不回的往前走去，陈天赐也赶紧跟上，没办法，谁让人家是大腿呢？

　　“那个...我能问下你为什么这么厉害吗？你是基因改造人什么的吗”陈天赐怕路上气氛太尴尬，主动挑起话题

　　“......”顾千青露出来嫌弃的眼神：“我说，你怎么会有这么大的脑洞？你真的是成年人嘛？怎么像个白痴”

　　“很正常的提问好不好？因为普通人怎么可能像你一样屠杀丧尸？”

　　“我从小练习武，宰杀这种像你一样的弱鸡丧尸不会有压力”

　　“？？”

　　“丧尸病毒一直在不停地变异，这种慢吞吞的弱鸡丧尸，爆发初始是很厉害，但是在政府军出动了军队进行灭杀后，他们其中一些个例就发生了进化，不然如果都是这种弱鸡的话，早就被消灭了，不过我现在还没有见过进化后的丧尸”说罢，顾千青随手挽了个刀花就把一只正在啃汽车后视镜的丧尸头给削了下来，陈天赐也很努力用尼泊尔军刀削掉了一只丧尸的半个脑袋

　　这点顾千青说的对，升至LV2以后，丧尸们的速度好像看起来确实没那么快了，如果是以LV2开局，陈天赐觉得以现在的力量，可以将当初的长腿欧巴一脚踹倒，要是全都是这种丧尸，肯定早就被军队压制了，毕竟坦克大炮不是闹着玩的

　　“对了，你怎么会在超市里的呢？合金防弹卷帘门是左右两边才能抬起的，你怎么可能自己进去的...”

　　“......本来里边有十几个人，有人隐瞒了自己被丧尸咬过的实事，半夜大家休息的时候那人变异了，除了我都被感染了”

　　俩人就这么有一搭没一搭的边聊边往租车公司走，路上顾千青还把一些注意事项逐一告诉了陈天赐，再三叮嘱千万不能犯错，比如说不到紧急时刻一定不能乱开枪啦，因为有很多丧尸都藏在暗处，枪声会把他们都引来，陈天赐也再三保证自己虽然实力弱了点，但是不是没脑子，让她放心，最终在顾千青怀疑的眼神里，他们终于到了租车公司的门口

　　诺大的院子里各种车辆应有尽有，从神车五菱宏光到宾利飞驰，各种豪车数不胜数，车身上边基本都落满了灰尘，甚至还有一些年份过久的老爷车外壳已经开始生锈，不过最可惜的是，这里的车应该都再也没有上路的机会了

　　跟顾千青大致在车群里转了一下，陈天赐来之前订的理想车型悍马H2和乔治巴顿都没有，略微有些失望，不过逛着逛着，眼前一亮！没想到国内租车公司居然还能碰到这种车型：早已停产的中东版兰德酷路泽5700

　　5.7的排量，最大284千瓦的输出功率，最大输出543牛米的扭矩，绝对可以适应后边的大部分未知路况，相信稍微加点‘配件’它就能变成一辆碾压僵尸的杀人机器，想到这里，陈天赐兴奋地对着顾千青说到：“就他了，不过还得稍微改改，租车公司是有自己的修车间的，咱们先去他们公司里找找车钥匙”
','　　顾千青摇了摇头拉住了陈天赐对着他说到：“太浪费时间了，晚上的丧尸会聚集性的出现，我们要在白天干完你说的事，分头行动吧，你去车间先收拾工具和物件，我去找车钥匙，只要小心点，你一个人应该不会有问题”

　　“也行，那就祝你好运咯~”陈天赐嘿嘿一笑

　　“你祝自己好运吧，看在食物的份上，你死了我会砍下你的头，不会让你变成丧尸游荡的”

　　我靠,要不要总是这么怼我！陈天赐摸了摸脖子，看着顾千青离去的背影，狠狠地比了个中指，顺着提示牌的指引，来到了修车间的入口

　　推开修车间半掩的门，一股潮味带着灰尘扑面而来，把陈天赐好一顿呛，进去以后大致看了一下，东西都摆放的很整齐，找齐需要的道具不会太费劲，试了试拉开屋里的灯，还好，没有停电，到时候电焊就可以了，能省下不少事

　　把需要的东西整理好后，也不知道是不是陈天赐的错觉，从进来大院到现在，竟然一直丧尸都没有遇到，简直匪夷所思，整个车间针落有声，安静的可怕.....

　　‘刺啦...刺啦...’

　　像是有铁器拖地滑行的声音传来，陈天赐谨慎的把m/9手枪打开保险，左手将尼泊尔战术军刀握紧，右手抬枪指向声音传来的方向，做好战备状态！

　　随着声音的接近，一只拖着大型开口扳手的丧尸一瘸一拐的朝着陈天赐走来，看外装病变前应该是这里的维修工人，整只又高又壮的，呲着满口的尖牙，血红色的眼睛已经看不到一点眼珠的痕迹，浑身的鲜血看起来应该是祸害了不少人，不知道是不是错觉，总感觉他的身上若有若无的散发着一丝丝黑气

　　‘叮！’——

　　系统警告：出现L2变异级丧尸，请宿主小心应对！！！

　　L2变异级丧尸：没有人类可噬咬之后，吞噬低级丧尸变异而成！

　　我靠？连顾千青都没有碰见过的变异丧尸？就这么出现在了我的面前？还带个大扳手，你妹的，我愿称你为顶级扳手哥！

　　陈天赐不敢大意，保险起见，直接用枪瞄准了丧尸的头部，也是给顾千青一个预警信号，这边有危险了！

　　‘砰！’

　　一声枪响，子弹破膛而出，但是由于距离有点远，并没有命中头部，而是打烂了丧尸的半块嘴巴，就在陈天赐想要继续瞄准射击的时候，扳手哥直接拎着扳手狂奔着朝陈天赐冲来，那速度简直是找人要急支糖浆的豹子，陈天赐不敢犹豫，直接连续射击，可惜，扳手哥的速度太快，射了三枪，空了两枪，只有一枪击中了扳手哥的胸口，拖延了一下扳手哥的进冲刺速度

　　“嗷嗷！”冲到陈天赐面前的扳手哥一声怒吼，一扳手把陈天赐手里的M9抡飞

　　”靠，震的爷手疼！”

　　骂归骂，看着把脖子暴露出来的扳手哥，本来打算打个滚跑出去拖延时间的陈天赐狠下心决定搏一搏

　　“你他娘的，犹豫就会败北！干了”

　　左手用尽全力，一刀穿透了扳手哥脖子，鲜血直接溅了陈天赐一脸，只需要再一划，就能削下扳手哥的脑袋来，可就在陈天赐要用力的时候，扳手哥怒吼着用另一只手抓住了陈天赐握刀的手，特妹的，一点力也用不上了...

　　“完了....果断就会白给”',10069,10207);




#创建个人书架表
create table ds_shujia(
	sid int primary key auto_increment,
	tid int,#图书编号
	tKind varchar(30)  not null,#图书的种类  现代言情
	tname varchar(50) unique not null,#图书名称
	author varchar(20) not null,#图书作者
	tStatus varchar(8) not null,#图书是否完结 1已完结  0连载中
	uid int#用户的id
);

#后台管理员登录表
create table back_user(
    bcid int primary key auto_increment,
    bcname varchar(8) not null,#管理员账户
    bcpwd int not null#管理员密码
);
insert into back_user values(1,'tom',123456);
