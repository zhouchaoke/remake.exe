/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : liferestart

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 24/11/2022 20:33:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for academy
-- ----------------------------
DROP TABLE IF EXISTS `academy`;
CREATE TABLE `academy`  (
  `id` int(11) NOT NULL,
  `academy_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `academy_type` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `event_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `major_list` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of academy
-- ----------------------------
INSERT INTO `academy` VALUES (1, '计算机学院', '工', '141 142 143 144 145', '人工智能,信息安全,数据科学与大数据技术,计算机科学与技术,软件工程');
INSERT INTO `academy` VALUES (2, '建筑学院', '工', '146 147 148 149 150', '建筑学,城乡规划,园林设计');
INSERT INTO `academy` VALUES (3, '电气学院', '工', '151 152 153 154 155', '电气工程及其自动化,自动化,智能电网信息工程,储能科学与工程');
INSERT INTO `academy` VALUES (4, '机械学院', '工', '156 157 158 159 160', '机械设计制造及自动化,车辆工程,材料成型与控制,机器人工程');
INSERT INTO `academy` VALUES (5, '数统学院', '理', '161 162 163 164 165', '数学,统计');
INSERT INTO `academy` VALUES (6, '物信学院', '理', '166 167 168 169 170', '通信工程,电子信息工程,电子科学与技术,光电信息工程,微电子,应用物理学,数字媒体技术,物联网工程,集成电路设计与系统集成');
INSERT INTO `academy` VALUES (7, '化学学院', '理', '171 172 173 174 175', '化学,制药工程');
INSERT INTO `academy` VALUES (8, '生工学院', '理', '176 177 178 179 180', '生物工程,食品科学与工程,生物医学工程');
INSERT INTO `academy` VALUES (9, '外国语学院', '文', '181 182 183 184 185', '英语,日语,德语');
INSERT INTO `academy` VALUES (10, '经管学院', '文', '186 187 188 189 190', '工商管理,市场营销,会计学,财务管理,财政学,金融学,经济学,国际经济与贸易,信息管理与信息系统,电子商务,物流管理,物流工程,行政管理,公共事业管理,工业工程');
INSERT INTO `academy` VALUES (11, '法学院', '文', '[191 192 193 194 195]', '法学');

-- ----------------------------
-- Table structure for achievement
-- ----------------------------
DROP TABLE IF EXISTS `achievement`;
CREATE TABLE `achievement`  (
  `id` int(11) NOT NULL,
  `event_need` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `property_need` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rarity` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of achievement
-- ----------------------------
INSERT INTO `achievement` VALUES (1, '6', '0 0 0 0 0 0', '你是智障', '普通');
INSERT INTO `achievement` VALUES (2, '55', '0 0 0 0 0 0', '舔狗本尊', '普通');
INSERT INTO `achievement` VALUES (3, '', '1 1 1 1 1 1', '资质平平', '普通');
INSERT INTO `achievement` VALUES (4, '', '0 0 0 1 0 0', '有点小钱', '普通');
INSERT INTO `achievement` VALUES (5, '74', '0 0 3 0 0 0', '有点帅啊兄弟', '普通');
INSERT INTO `achievement` VALUES (6, '', '0 0 0 0 8 0', '运气爆棚', '普通');
INSERT INTO `achievement` VALUES (7, '183', '0 0 0 0 0 0', '成功毕业', '普通');
INSERT INTO `achievement` VALUES (8, '30', '0 0 0 0 0 0', '速通玩家', '普通');
INSERT INTO `achievement` VALUES (9, '5', '0 0 0 0 0 0', '上当了', '普通');
INSERT INTO `achievement` VALUES (10, '51', '0 0 0 0 0 0', '迷信', '普通');
INSERT INTO `achievement` VALUES (11, '21', '0 0 0 0 0 0', '南方小清华', '普通');
INSERT INTO `achievement` VALUES (12, '60', '0 0 0 0 0 0', '老司机', '普通');
INSERT INTO `achievement` VALUES (13, '42', '0 0 0 0 0 0', '福大五星上将', '普通');
INSERT INTO `achievement` VALUES (14, '101', '0 0 0 0 0 0', '锒铛入狱', '普通');
INSERT INTO `achievement` VALUES (15, '78', '0 0 0 6 0 0', '草/花样年华', '普通');
INSERT INTO `achievement` VALUES (16, '53', '0 0 0 0 0 0', '无所谓，我会出手', '普通');
INSERT INTO `achievement` VALUES (17, '150', '0 0 0 0 0 0', '无所谓，我会无所谓', '普通');
INSERT INTO `achievement` VALUES (18, '160', '0 0 0 0 0 0', '福大锦鲤', '普通');
INSERT INTO `achievement` VALUES (19, '63', '0 0 0 0 0 0', '根正苗红', '普通');
INSERT INTO `achievement` VALUES (20, '143', '0 0 0 0 0 0', '爱上只因', '普通');
INSERT INTO `achievement` VALUES (21, '153', '0 0 0 0 0 0', 'v我50', '稀有');
INSERT INTO `achievement` VALUES (22, '', '0 8 0 0 0 0', '杰哥夸你行', '稀有');
INSERT INTO `achievement` VALUES (23, '104', '0 0 0 0 0 0', '有块劳力士', '稀有');
INSERT INTO `achievement` VALUES (24, '1', '\"0', '0', '0');
INSERT INTO `achievement` VALUES (25, '169', '0 0 0 0 0 0', '我润你别劝 我劝你也润', '稀有');
INSERT INTO `achievement` VALUES (26, '48', '0 0 0 6 0 0', '海王', '稀有');
INSERT INTO `achievement` VALUES (27, '65', '0 0 0 0 0 0', '纯路人', '稀有');
INSERT INTO `achievement` VALUES (28, '4', '0 0 0 0 0 0', '网瘾少年', '稀有');
INSERT INTO `achievement` VALUES (29, '75', '\"0', '0', '0');
INSERT INTO `achievement` VALUES (30, '144', '\"0', '0', '0');
INSERT INTO `achievement` VALUES (31, '20', '0 0 0 0 0 0', '赢麻了', '史诗');
INSERT INTO `achievement` VALUES (32, '145', '0 0 0 0 0 0', '浮舟大学', '史诗');
INSERT INTO `achievement` VALUES (33, '34', '0 0 0 0 0 0', '阳了个阳', '史诗');
INSERT INTO `achievement` VALUES (34, '129', '0 0 0 0 0 0', '心脏骤停', '史诗');
INSERT INTO `achievement` VALUES (35, '', '\"10', '10', '10');
INSERT INTO `achievement` VALUES (36, '123', '0 0 0 0 0 0', '至尊法师', '传说');

-- ----------------------------
-- Table structure for lifeevent
-- ----------------------------
DROP TABLE IF EXISTS `lifeevent`;
CREATE TABLE `lifeevent`  (
  `id` int(11) NOT NULL,
  `content` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `achievement_id_list` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `property_change` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `img_url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `event_type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stage_id` int(11) NULL DEFAULT NULL,
  `no_happen_list` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `happen_list` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gameover` enum('0','1') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of lifeevent
-- ----------------------------
INSERT INTO `lifeevent` VALUES (1, '你没有考上福州大学', '24', '0 0 0 0 0 0', '', '智力1类', 17, '', '1', '1');
INSERT INTO `lifeevent` VALUES (2, '你上课根本听不懂', '', '0 0 0 0 0 -1', '', '智力1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (3, '你发现你越来越不想上课了', '', '0 0 0 0 0 0', '', '智力1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (4, '你沉迷于各种大型游戏', '28', '0 0 0 0 0 0', '', '智力1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (5, '开学第一天你被学长骗了身无分文饿死了', '9', '0 0 0 0 0 0', '', '智力1类', 17, '', '1', '1');
INSERT INTO `lifeevent` VALUES (6, '你进入了弱智吧并成为了吧主', '1', '0 0 1 0 0 0', '', '智力1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (7, '你今天的形策课翘课了 仿佛打开了某个开关 更经常翘课了', '', '0 0 0 0 0 0', '', '智力1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (8, '你参加大学生互联网+', '', '0 0 0 0 0 0', '', '智力1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (9, '你下课后经常问老师自己不懂的问题', '', '0 0 0 0 0 0', '', '智力1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (10, '你参加了英语竞赛', '', '0 0 0 0 0 0', '', '智力2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (11, '你英语竞赛没得奖', '', '0 0 0 0 0 -1', '', '智力2类', 0, '10', '', NULL);
INSERT INTO `lifeevent` VALUES (12, '你英语竞赛拿了一等奖', '', '0 0 0 0 0 1', '', '智力2类', 0, '10', '', NULL);
INSERT INTO `lifeevent` VALUES (13, '你偶尔会去去图书馆 只是偶尔', '', '0 0 0 0 0 0', '', '智力2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (14, '你上课会坐在4-6排听课', '', '0 0 0 0 0 0', '', '智力2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (15, '你自认为学习和生活双重兼顾 然并卵', '', '0 0 0 0 0 0', '', '智力2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (16, '你加入了校内的ACM队 每天都在实验室里训练', '', '0 0 0 0 0 -1', '', '智力2类', 0, '16', '', NULL);
INSERT INTO `lifeevent` VALUES (17, '你在福建省ACM程序设计大赛中获奖', '', '0 0 0 0 0 0', '', '智力2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (18, '你常常思考狗狗为什么每天都很开心', '', '0 0 0 0 0 0', '', '智力2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (19, '老师看上了你的才华 你进入了实验室', '', '0 0 0 0 0 0', '', '智力3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (20, '你炉石登顶了', '31', '0 0 1 0 0 0', '', '智力3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (21, '你学完了整个大学期间的课程', '11', '0 0 0 0 0 0', '', '智力3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (22, '你参与了sci一作的发表 声名远扬', '', '0 0 0 0 0 0', '', '智力3类', 71, '', '', NULL);
INSERT INTO `lifeevent` VALUES (23, '你敏锐地观察出了数字货币的运作原理 并借此赚了第一桶金', '', '0 0 0 1 0 0', '', '智力3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (24, '在你的带领下 你的导师夺得了诺贝尔奖', '', '0 0 1 0 0 0', '', '智力3类', 95, '', '', NULL);
INSERT INTO `lifeevent` VALUES (25, '你报名参加了最强大脑 获封“脑王”', '', '1 0 0 0 0 0', '', '智力3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (26, '你参加黑客比赛Pwn2Own 成功攻破了苹果的桌面操作系统 荣获冠军', '', '1 0 0 0 0 0', '', '智力3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (27, '你参加挑战杯 获得省奖', '', '1 0 0 0 0 0', '', '智力3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (28, '通宵打游戏你猝死了', '', '0 0 0 0 0 0', '', '体质1类', 0, '4', '1', '1');
INSERT INTO `lifeevent` VALUES (29, '医生告诉你 你身患绝症', '', '0 0 0 0 0 -1', '', '体质1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (30, '你不治身亡', '8', '0 0 0 0 0 0', '', '体质1类', 0, '29', '1', '1');
INSERT INTO `lifeevent` VALUES (31, '你很少早起吃早餐', '', '0 0 0 0 0 0', '', '体质1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (32, '你经常感觉到疲惫', '', '0 0 0 0 0 0', '', '体质1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (33, '你经常熬夜学习到两点', '', '1 -1 0 0 0 0', '', '体质1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (34, '你成为了小阳人 周围人对你避之不及', '33', '0 0 -1 0 0 0', '', '体质1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (35, '你由于身体情况闭门不出 无意间撞见小偷偷外卖', '', '0 0 0 0 0 0', '', '体质1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (36, '你的体育考试挂科了', '', '0 0 0 0 0 -1', '', '体质1类', 8, '', '', NULL);
INSERT INTO `lifeevent` VALUES (37, '你加入了福大游泳校队', '', '0 0 0 0 0 0', '', '体质2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (38, '你的人鱼线若隐若现', '', '0 0 0 0 0 0', '', '体质2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (39, '你的身体素质在常人中是很不错的', '', '0 0 0 0 0 0', '', '体质2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (40, '你体测的成绩为75分', '', '0 0 0 0 0 0', '', '体质2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (41, '你更喜欢在闲暇时间去健身', '', '0 0 0 0 0 0', '', '体质2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (42, '你可以自如地应付各项体育考试了', '13', '0 0 0 0 0 0', '', '体质2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (43, '你觉得你有成为健美冠军的潜力', '', '0 0 0 0 0 0', '', '体质2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (44, '你经常夜跑', '', '0 1 0 0 0 0 ', '', '体质2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (45, '你接种三针新冠疫苗', '', '0 0 0 0 0 0', '', '体质2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (46, '你能够硬拉好几个引体向上', '', '0 0 0 0 0 0', '', '体质3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (47, '你的身材在福州大学是数一数二的', '', '0 0 1 0 0 0', '', '体质3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (48, '健身时 总会有同性不自觉拍拍你的身材', '26', '0 0 0 0 0 -1', '', '体质3类', 0, '41', '', NULL);
INSERT INTO `lifeevent` VALUES (49, '有人跟踪了你 你感到毛骨悚然', '', '0 0 0 0 0 0', '', '体质3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (50, '你发现跟踪者原来是个医生 在找上好的人体材料进行实验', '', '0 0 0 0 0 0', '', '体质3类', 0, '48', '', NULL);
INSERT INTO `lifeevent` VALUES (51, '你每天练习唱跳rap篮球 你感觉身体素质变强了', '10', '0 0 0 0 0 0', '', '体质3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (52, '你在今年的福建省运会游泳比赛中获得金奖', '', '0 0 0 0 0 0', '', '体质3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (53, '你在公交车上发现有人偷东西 你和众人抓住小偷', '16', '0 0 0 0 0 0 ', '', '体质3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (54, '你能用一根手指抬起一个大象 成为了世人口中的超人', '', '0 0 1 0 0 0', '', '体质3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (55, '你在图书馆遇见你恋人 并且你成为舔狗', '2', '0 0 0 -1 0 0', '', '魅力1类', 0, '13', '', NULL);
INSERT INTO `lifeevent` VALUES (56, '你在你们班级里面并不起眼', '', '0 0 0 0 0 -1', '', '魅力1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (57, '大家并不吃你的颜', '', '0 0 0 0 0 0', '', '魅力1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (58, '你由于长相问题 被大家所排挤 你感到很难过', '', '0 0 0 0 0 -1', '', '魅力1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (59, '你幡然醒悟 既然改变不了大家 就改变自己 你开始健身 体质日渐增长', '', '0 1 0 0 0 0', '', '魅力1类', 0, '58', '', NULL);
INSERT INTO `lifeevent` VALUES (60, '你套皮出道 收获了一批奇怪的粉丝', '12', '0 0 1 0 0 0', '', '魅力1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (61, '你捡到校园卡还给失主', '', '0 0 0 0 0 0', '', '魅力1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (62, '你抽电子烟只抽悦刻五代', '', '0 0 0 0 0 0', '', '魅力1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (63, '你最喜欢的科技是：5g 你最爱看的电影是：战狼1和2 你的手机品牌是华为  你最喜欢的歌曲是《我和我的祖国》', '19', '0 0 0 0 0 0', '', '魅力1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (64, '你在图书馆遇到了和你五五开的恋人', '', '0 0 0 0 0 0', '', '魅力2类', 0, '13', '', NULL);
INSERT INTO `lifeevent` VALUES (65, '你和kunkun是一个颜值的', '27', '-1 0 0 0 0 0', '', '魅力2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (66, '你的自拍在朋友圈无人问津', '', '0 0 0 0 0 0', '', '魅力2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (67, '你开始容貌焦虑 学习了如何打扮自己', '', '0 0 1 0 0 0', '', '魅力2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (68, '在网络世界里 你发表了自拍 但并没有人注意你', '', '0 0 0 0 0 -1', '', '魅力2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (69, '你在网上攻击丁假 你嫉妒他的出众颜值', '', '0 0 0 0 0 0', '', '魅力2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (70, '你因为颜值在抖音上很火 很多人找你合影', '', '0 0 0 0 0 1', '', '魅力2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (71, '你在不三不四湖参加音乐会 你因为唱歌好听被发到表白墙上', '', '0 0 1 0 0 0', '', '魅力2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (72, '你当上了班长', '', '0 0 1 0 0 0', '', '魅力2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (73, '你在图书馆遇到了舔狗式的恋人', '', '0 0 0 1 0 0', '', '魅力3类', 0, '13', '', NULL);
INSERT INTO `lifeevent` VALUES (74, '别人见你就夸是吴彦祖刘亦菲二代', '5', '0 0 0 0 0 0', '', '魅力3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (75, '你有丁真一样纯真的笑容', '29', '0 0 0 0 0 0', '', '魅力3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (76, '你成为了全世界的珍珠', '', '0 0 1 0 0 0', '', '魅力3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (77, '由于你过于耀眼 你被一些坏人盯上了 你难逃一劫', '', '0 0 0 0 0 0', '', '魅力3类', 0, '76', '', NULL);
INSERT INTO `lifeevent` VALUES (78, '星光为你开路 世界为你祈福 你是整个宇宙的珍宝', '15', '0 0 0 0 0 0', '', '魅力3类', 0, '77', '', NULL);
INSERT INTO `lifeevent` VALUES (79, '你在B站上传了你连续看十小时鸡你太美的视频 因此大火', '', '0 0 0 0 0 0', '', '魅力3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (80, '你拍了美美的照片 想要发给朋友看 不料发到班群里 两分钟后不能撤回', '', '0 0 0 0 0 0', '', '魅力3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (81, '你下课想着赶快回去吃饭 开宿舍门的刹那高呼“你爹/妈来喽“ 不料走错宿舍了 又是社死的一天', '', '0 0 0 0 0 0', '', '魅力3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (82, '你没有钱吃饭 所以你死了', '', '0 0 0 0 0 0', '', '财富1类', 0, '', '1', '1');
INSERT INTO `lifeevent` VALUES (83, '因为想赚钱 你走上了诈骗的途径', '', '0 0 0 1 0 0', '', '财富1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (84, '你顿顿吃泡面 偶尔只能噌噌舍友的饭', '', '0 0 0 0 0 0', '', '财富1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (85, '富哥v我50已经成为了你的口头禅', '', '0 0 0 0 0 0', '', '财富1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (86, '有的富婆看上了穷酸的你 你明白了世界运行的道理', '', '0 0 0 1 0 0', '', '财富1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (87, '即使身无分文 你也不愿偷外卖 你为自己感到自豪', '', '0 0 0 0 0 1', '', '财富1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (88, '你去校外学生街买了一辆二手的电动车', '', '0 0 0 0 0 0', '', '财富1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (89, '你的二手电动车缝缝补补后总算还是能用', '', '0 0 0 0 0 0', '', '财富1类', 0, '88', '', NULL);
INSERT INTO `lifeevent` VALUES (90, '你的电动车轮胎被钉子戳破了 只能找人维修', '', '0 0 0 0 0 0', '', '财富1类', 0, '88', '', NULL);
INSERT INTO `lifeevent` VALUES (91, '你的衣食住行还算过得去', '', '0 0 0 0 0 0', '', '财富2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (92, '你目前不敢谈恋爱 因为没有多余的生活费', '', '0 0 0 1 0 0', '', '财富2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (93, '偶尔吃顿混凝土拌意大利面对于你来说是困难的', '', '0 0 0 0 0 0', '', '财富2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (94, '你时常羡慕舍友经常出没高级餐厅', '', '0 0 0 0 0 0', '', '财富2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (95, '你虽然不算有钱 但也超过了全中国六亿人', '', '0 0 0 0 0 0', '', '财富2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (96, '你没有多少存款 你开始为毕业以后的工作问题而焦虑', '', '0 0 0 0 0 -1', '', '财富2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (97, '世界杯开赛了 你拿明天的饭钱赌东道主卡塔尔赢 不料爆冷了', '', '0 0 0 0 0 0', '', '财富2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (98, '你和舍友打了一晚上斗地主 输麻了', '', '0 0 0 0 0 0', '', '财富2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (99, '你抓住美元汇率上升的时机 狠狠地赚了一笔', '', '0 0 0 0 0 0', '', '财富2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (100, '因为你的笑容 所以你晋级成为百万富豪', '', '-1 0 0 0 0 0', '', '财富3类', 0, '75', '', NULL);
INSERT INTO `lifeevent` VALUES (101, '你很有钱 但是被警察抓了', '14', '0 0 -1 0 0 0', '', '财富3类', 0, '83', '', NULL);
INSERT INTO `lifeevent` VALUES (102, '你很有钱 你同学出于嫉妒在你的水里加了砒霜 你死了', '', '0 0 0 0 0 0', '', '财富3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (103, '你收购了b里巴巴 感叹也不过如此', '', '0 0 0 0 0 1', '', '财富3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (104, '十块钱的手表和一百万的劳力士 时间都是一样转的 你选择了劳力士', '23', '0 0 0 0 0 0', '', '财富3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (105, '虽然你收获了财富 但你也失去了烦恼', '', '0 0 0 0 0 0', '', '财富3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (106, '你经常去紫荆园吃麦当劳', '', '0 -1 0 0 0 0', '', '财富3类', 0, '', '1', '1');
INSERT INTO `lifeevent` VALUES (107, '你真的是凭亿近人的典范', '', '0 0 0 0 0 0', '', '财富3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (108, '泡面加蛋加肠你挥手就加', '', '0 0 0 0 0 0', '', '财富3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (109, '你出门经常踩到狗屎', '', '0 0 0 0 1 0', '', '运气1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (110, '你踩到了舍友放在地板上的香蕉皮 重度脑震荡', '', '0 -1 0 0 0 0', '', '运气1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (111, '你经常找异性要微信 但没人给', '', '0 0 0 0 0 0', '', '运气1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (112, '你掉进了家门口的井里 支付了巨额的医药费', '', '0 0 0 -1 0 0', '', '运气1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (113, '你看着别人的爆率 感受到了世界的参差', '', '0 0 0 0 0 -1', '', '运气1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (114, '这段时间没有事件发生 对你来说已经是来之不易的事', '', '0 0 0 0 0 0', '', '运气1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (115, '你不小心拿错了别人的外卖 赔了一笔钱', '', '0 0 0 0 0 0', '', '运气1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (116, '你的外卖被别人偷走了', '', '0 0 0 0 0 -1', '', '运气1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (117, '你的电脑出了故障 得去找人维修', '', '0 0 0 0 0 0', '', '运气1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (118, '最近没有什么事情发生', '', '0 0 0 0 0 0', '', '运气2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (119, '你常在操场上看见好看的异性', '', '0 0 0 0 0 0', '', '运气2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (120, '你爱上了永嘉的彩票贩卖机 并且中了十块钱', '', '0 0 0 0 0 1', '', '运气2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (121, '你感到运气回来了 不多 但够用', '', '0 0 0 0 0 0', '', '运气2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (122, '稀疏平常的运气充斥着你的人生 你顿悟了 决定出家当和尚', '', '0 0 0 0 0 0', '', '运气2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (123, '经过多年修炼 你成为了古一法师 你对宇宙有了新的理解', '36', '0 0 0 0 0 0', '', '运气2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (124, '三体人来进攻地球 你身为至尊法师 必须迎战.......你败北了', '', '0 0 0 0 0 0', '', '运气2类', 0, '123', '', NULL);
INSERT INTO `lifeevent` VALUES (125, '三体人来进攻地球 你身为至尊法师 必须迎战.......你击败了三体人', '', '0 0 0 0 0 0', '', '运气2类', 0, '123', '', NULL);
INSERT INTO `lifeevent` VALUES (126, '\"身为至尊法师 你却受到黑暗法典的蛊惑', '你想要消灭地球人\"', '', '0 0 0 0 0 0', '', 0, '', '125', '1');
INSERT INTO `lifeevent` VALUES (127, '医生之前的判断是误诊', '', '0 0 0 0 0 1', '', '运气3类', 0, '29', '', NULL);
INSERT INTO `lifeevent` VALUES (128, '你买彩票中了1000元', '', '0 0 0 1 0 0', '', '运气3类', 0, '120', '', NULL);
INSERT INTO `lifeevent` VALUES (129, '最近屡屡发生好事 你高兴的心率跟不上 然后你死了', '34', '0 0 0 0 0 0', '', '运气3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (130, '你成为了福州大学里的超高校级的幸运 要将希望带给世间每一个人', '', '0 0 0 0 0 0', '', '运气3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (131, '你每门成绩都能跨过及格线 尽管你一次作业都没有交', '', '0 0 0 0 0 0', '', '运气3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (132, '你总是能卡在最后一名拿到一等奖学金', '', '0 0 0 1 0 0', '', '运气3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (133, '你抽中了益合堂的运气王，免单一次', '', '0 0 0 0 0 0', '', '运气3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (134, '圆圆食杂铺最后一杯免费酸奶被你抢到了', '', '0 0 0 0 0 0', '', '运气3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (135, '你绕不三不四湖跑圈捡到了100块钱', '', '0 0 0 0 0 1', '', '运气3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (136, '校外出现了新冠患者 全校封校不得外出 你的外出计划泡汤了', '', '0 0 0 0 0 -1', '', '心情1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (137, '你喜欢的明星因为强奸罪进了监狱 你感到难过', '', '0 0 0 0 0 0', '', '心情1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (138, '你最近心情有点糟', '', '0 0 0 0 0 0', '', '心情1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (139, '你听着《晴天》 期望着晴天', '', '0 0 0 0 0 0', '', '心情1类', 0, '138', '', NULL);
INSERT INTO `lifeevent` VALUES (140, '你听着《下雨天》 抱怨着雨天', '', '0 0 0 0 0 0', '', '心情1类', 0, '138', '', NULL);
INSERT INTO `lifeevent` VALUES (141, '你抑郁了 不得不服药控制病情', '', '0 -1 0 0 0 0', '', '心情1类', 0, '', '1', NULL);
INSERT INTO `lifeevent` VALUES (142, '你听着《阴天》对阴天哭泣', '', '0 0 0 0 0 0', '', '心情1类', 0, '138', '', NULL);
INSERT INTO `lifeevent` VALUES (143, '舍友的一首《只因你太美》让你哇哇大哭', '20', '0 0 0 0 0 0', '', '心情1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (144, '你很懊恼舍友的《铁山靠》为什么不标准', '30', '0 0 0 0 0 0', '', '心情1类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (145, '你刚要出门便猝逢暴雨', '32', '0 0 0 0 0 0', '', '心情2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (146, '你偶尔会喝一喝贡茶', '', '0 0 0 0 0 0', '', '心情2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (147, '有机会你就会绕着不三不四湖走两圈', '', '0 0 0 0 0 0', '', '心情2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (148, '生活总是教室宿舍两点一线 但你也能在这之中找到乐趣', '', '0 0 0 0 0 1', '', '心情2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (149, '你的抑郁病情有所康复', '', '0 1 0 0 0 0', '', '心情2类', 0, '141', '', NULL);
INSERT INTO `lifeevent` VALUES (150, '现实中接二连三的打击令你对生活有点失望', '17', '0 0 0 0 0 -1', '', '心情2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (151, '你发现食堂阿姨有点手抖', '', '0 0 0 0 0 0', '', '心情2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (152, '你和舍友去学生街吃鸡公煲/特色煲仔饭/烧烤', '', '0 0 0 0 0 0', '', '心情2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (153, '这礼拜疯狂星期四 你的好兄弟v了你50', '21', '0 0 1 0 0 0', '', '心情2类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (154, '你时常和朋友们聚餐', '', '0 0 0 -1 0 0', '', '心情3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (155, '你学习效率最近提高了不少', '', '1 0 0 0 0 0', '', '心情3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (156, '你太高兴了 出门不长眼 直接栽在了井里 医生没抢救过来', '', '0 0 0 0 0 0', '', '心情3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (157, '你理所应当的成为了同学们的小太阳', '', '0 0 1 0 0 0', '', '心情3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (158, '由于你的乐观 你的学习效率翻倍了', '', '1 0 0 0 0 0', '', '心情3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (159, '你的日常生活总是晴天 你的身体素质不自觉地好了起来', '', '0 1 0 0 0 0', '', '心情3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (160, '你成为了福大锦鲤', '18', '0 0 0 0 0 0', '', '心情3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (161, '你在图书馆自习 发现对面的女孩子/男孩子入自己的眼', '', '0 0 0 0 0 1', '', '心情3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (162, '圆圆食杂铺的一块钱豆花就可以让你很快乐', '', '0 0 0 0 0 0', '', '心情3类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (163, '刚入学 你竞选班委失败了', '', '0 0 0 0 0 -1', '', '阶段类', 19, '', '', NULL);
INSERT INTO `lifeevent` VALUES (164, '你竞选了辅导员助理 被辅导员一票否决', '', '0 0 0 0 0 -1', '', '阶段类', 19, '', '', NULL);
INSERT INTO `lifeevent` VALUES (165, '你参与了教师资格证的考试 只是走个过场', '', '0 0 0 0 0 0', '', '阶段类', 68, '', '', NULL);
INSERT INTO `lifeevent` VALUES (166, '你马马虎虎第一次参加英语四级考试', '', '0 0 0 0 0 0', '', '阶段类', 23, '', '', NULL);
INSERT INTO `lifeevent` VALUES (167, '你以424分的成绩成为四级头号输家', '', '0 0 0 0 0 -1', '', '阶段类', 4, '', '1', NULL);
INSERT INTO `lifeevent` VALUES (168, '你考虑就业 海投了无数公司', '', '0 0 0 0 0 0', '', '阶段类', 92, '', '', NULL);
INSERT INTO `lifeevent` VALUES (169, '刚入学 你和舍友不和 两个人上演了一场1v1真男人大战', '25', '0 0 0 0 0 -1', '', '阶段类', 18, '', '', NULL);
INSERT INTO `lifeevent` VALUES (170, '你竞选部门部长失败了', '', '0 0 0 0 0 -1', '', '阶段类', 42, '', '', NULL);
INSERT INTO `lifeevent` VALUES (171, '你军训的成绩表现不错', '', '0 1 0 0 0 0', '', '阶段类', 1, '', '', NULL);
INSERT INTO `lifeevent` VALUES (172, '毕业季 你经常在宿舍和舍友抱头痛哭', '', '0 0 0 0 0 0', '', '阶段类', 83, '', '', NULL);
INSERT INTO `lifeevent` VALUES (173, '你由于高考成绩优异拿到了新生奖学金', '', '0 0 0 1 0 0', '', '阶段类', 17, '', '', NULL);
INSERT INTO `lifeevent` VALUES (174, '运动会上 你夺得了第一 同学们重新认识了你', '', '0 0 1 0 0 0', '', '阶段类', 23, '', '', NULL);
INSERT INTO `lifeevent` VALUES (175, '运动会上 你夺得了倒一 同学们重新认识了你', '', '0 0 -1 0 0 0', '', '阶段类', 23, '', '', NULL);
INSERT INTO `lifeevent` VALUES (176, '你没有资格参加运动会 你感到些许失望', '', '0 0 0 0 0 -1', '', '阶段类', 23, '', '', NULL);
INSERT INTO `lifeevent` VALUES (177, '你荣幸地出现在奖学金获取名单里', '', '0 0 0 1 0 0', '', '阶段类', 7, '', '', NULL);
INSERT INTO `lifeevent` VALUES (178, '你成功挂掉了每一次考试 收到学业危机预警', '', '0 0 0 0 0 0', '', '阶段类', 2, '', '', NULL);
INSERT INTO `lifeevent` VALUES (179, '由于你再接再厉的挂科次数 你收到了劝退通知', '', '0 0 0 0 0 0', '', '阶段类', 26, '', '', NULL);
INSERT INTO `lifeevent` VALUES (180, '你跟不上学业 被退学了 你开始了一段崭新的人生', '', '0 0 0 0 0 0', '', '阶段类', 50, '', '', NULL);
INSERT INTO `lifeevent` VALUES (181, '刚入学时 由于舍友打呼噜 你患上了睡眠障碍', '', '0 0 0 0 0 0', '', '阶段类', 17, '', '', NULL);
INSERT INTO `lifeevent` VALUES (182, '毕业季总是来得那么快 你回想起四年来的大学生活 感叹着流沙般的时间', '', '0 0 0 0 0 0', '', '阶段类', 83, '', '', NULL);
INSERT INTO `lifeevent` VALUES (183, '你毕业了', '7', '0 0 0 0 0 0', '', '阶段类', 83, '', '', NULL);
INSERT INTO `lifeevent` VALUES (184, '你渴望拥有一个超大的屏幕来方便审视代码', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (185, '张栋当上了院长', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (186, '各种error和bug有时让你眼花缭乱', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (187, '你的头发数量日渐稀少', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (188, '你觉得学院的吉祥物程序猿有点丑', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (189, '院楼前面设计的植物时常被你吐槽', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (190, '你发现院楼的专业教室时常灯火通明', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (191, '你因为一张一张的画图而感到苦恼', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (192, '你在专业教室学习被锁只能从厕所小窗翻出来', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (193, '你抱怨土木建筑分院时土木划走了大部分院楼', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (194, '你觉得恶人紫不适合你们作为你们的学院色', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (195, '建筑电气智能化专业的废弃让你觉得很开心', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (196, '你怀疑爬一爬电线杆会不会是你以后的常态', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (197, '学院的篮球赛成绩让你感到很骄傲', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (198, '学院体育蔚然成风让你对体育多了几分热爱', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (199, '你发现身边的人已经开始做小车了', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (200, '打几个螺丝对你来说轻而易举', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (201, '常有人对你说“没事的 越老越吃香”', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (202, '你在彭志科教授的讲座上玩手机', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (203, '看着院里的人拿着厦航奖学金你很羡慕', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (204, '你抱怨数计学院分院时计算机学院刮走了大部分资产', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (205, '周勇教授的课让你昏昏欲睡', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (206, '你拒绝了同学抛出数学建模竞赛的邀请', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (207, '院楼门口的喷泉失灵会朝人喷水', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (208, '你的头发数量日渐稀少', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (209, '你焊接电路板是因为虚焊太多只能重新焊接', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (210, '你在PCB设计时打印总不能打印到一页纸张上', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (211, '你在模电课设中了解了程控放大器的原理，体会了工程实践的不易', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (212, '你参加集创赛获得了一等奖', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (213, '你觉得林丽群老师的课很有趣', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (214, '你使用旋蒸仪的时候不小心把产物倒在了旋蒸锅当中不得不把整锅的水给旋蒸掉，浪费了一下午', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (215, '你做分析实验烧马弗炉的时候误引燃了纸张导致实验室失火', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (216, '你被被师兄拉去过柱子，在过柱子的时候不小心让洗脱剂流干了，半天工作白干', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (217, '你辛苦一学期发表angew文章被导师夸奖被给予丰厚稿费', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (218, '你物理化学实验时发现实验仪器降温很慢，在器材标签上评价其为“老必灯‘', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (219, '你做了一个又一个的切片', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (220, '你参加了生物安全培训', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (221, '你参与了实验室安全性检查的活动', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (222, '你品尝了学姐亲自做的蛋白质', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (223, '在显微镜下你觉得绿藻很可爱', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (224, '你作为语言服务类志愿者，参加了数字中国建设峰会', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (225, '你参加外语演讲比赛，获得了一等奖', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (226, '你经常与外国友人交流', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (227, '你经常尝试练习翻译一些外国文学作品', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (228, '你很喜欢冯寿农博士对外文的研究', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (229, '你对组织行为学在房地产开发项目的应用深感兴趣', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (230, '你参加校队在MBA案例分析大赛中获奖了', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (231, '你发现csgo市场整体是一场”庞兹骗局“，对先来者许以重利，用后来者的资金弥补先来者', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (232, '你学习完微观经济学后，悟透了人生，你做的每一件事都是”经济学“', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (233, '你和舍友讨论发现相同的物品对于人们来说，喜爱度是逐渐下降的', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (234, '你在模拟法庭上担任法官的角色', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (235, '你和朋友在院楼石狮前面留下了珍贵的合影', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (236, '“尚法明理，厚德笃学”是你们学院的口号', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (237, '你觉得李智教授的课很有趣', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);
INSERT INTO `lifeevent` VALUES (238, '你经常在图书馆法学分馆流窜', '', '0 0 0 0 0 0', '', '学院类', 0, '', '', NULL);

-- ----------------------------
-- Table structure for talent
-- ----------------------------
DROP TABLE IF EXISTS `talent`;
CREATE TABLE `talent`  (
  `id` int(11) NOT NULL,
  `name` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rarity` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `property_change` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `talent_event_id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of talent
-- ----------------------------
INSERT INTO `talent` VALUES (1, '学会意大利面拌42号混凝土', '普通', '-1 0 0 0 0 0', '');
INSERT INTO `talent` VALUES (2, '你是云南的', '普通', '0 0 0 0 0 0', '');
INSERT INTO `talent` VALUES (3, '我来这只办三件事', '普通', '0 0 -1 0 0 0', '');
INSERT INTO `talent` VALUES (4, '没说就是零卡', '普通', '0 -1 0 0 0 0', '');
INSERT INTO `talent` VALUES (5, '驻足古田路88号', '普通', '0 -1 0 0 0 0', '');
INSERT INTO `talent` VALUES (6, '爱上铁山靠', '普通', '0 0 0 0 0 0', '');
INSERT INTO `talent` VALUES (7, '你就是波澜哥', '普通', '0 0 -1 0 0 0', '');
INSERT INTO `talent` VALUES (8, '王宝钏附体', '普通', '0 0 -1 0 0 0', '');
INSERT INTO `talent` VALUES (9, '你怎么睡得着', '普通', '0 0 0 0 0 0', '');
INSERT INTO `talent` VALUES (10, '热爱去码头整点薯条', '普通', '0 0 0 0 0 0', '');
INSERT INTO `talent` VALUES (11, '急了急了', '普通', '0 0 0 0 0 0', '');
INSERT INTO `talent` VALUES (12, '白金爷', '普通', '0 0 0 1 0 0', '');
INSERT INTO `talent` VALUES (13, '健康饮食', '普通', '0 0 0 0 0 0', '');
INSERT INTO `talent` VALUES (14, '现在是幻想时间', '普通', '0 0 0 0 0 0', '');
INSERT INTO `talent` VALUES (15, '非人哉', '普通', '0 -1 0 0 0 0', '');
INSERT INTO `talent` VALUES (16, '好奇心', '普通', '0 0 0 0 0 0', '');
INSERT INTO `talent` VALUES (17, '社交悍匪', '普通', '0 0 0 0 0 0', '');
INSERT INTO `talent` VALUES (18, '社交恐惧症', '普通', '0 0 0 -1 0 0', '');
INSERT INTO `talent` VALUES (19, '纯路人', '普通', '0 0 0 0 0 0', '');
INSERT INTO `talent` VALUES (20, '雪糕刺客', '普通', '0 0 0 0 0 0', '');
INSERT INTO `talent` VALUES (21, '社交小龙虾（聋瞎）', '普通', '0 0 0 0 0 0', '');
INSERT INTO `talent` VALUES (22, '”寄“汤来喽', '普通', '0 0 -1 0 0 0', '');
INSERT INTO `talent` VALUES (23, '你是海青的神', '稀有', '0 0 1 0 0 0', '');
INSERT INTO `talent` VALUES (24, '碧桂园五星上将', '稀有', '0 1 0 0 0 0', '');
INSERT INTO `talent` VALUES (25, '参与奥斯卡搏击之夜', '稀有', '0 1 0 -1 0 0', '');
INSERT INTO `talent` VALUES (26, '下赛季你防詹姆斯', '稀有', '0 1 0 0 0 0', '');
INSERT INTO `talent` VALUES (27, '燕子没你我怎么活', '稀有', '0 0 -1 1 0 0', '');
INSERT INTO `talent` VALUES (28, '紫色转盘:', '稀有', '0 0 0 0 0 0', '');
INSERT INTO `talent` VALUES (29, '天生神童', '稀有', '0 1 1 0 0 0', '');
INSERT INTO `talent` VALUES (30, '孤勇者', '稀有', '0 0 0 0 0 0', '');
INSERT INTO `talent` VALUES (31, '卷王', '稀有', '0 1 0 0 0 0', '');
INSERT INTO `talent` VALUES (32, '沉浸式单身', '稀有', '0 0 0 0 0 0', '');
INSERT INTO `talent` VALUES (33, '无所谓我会出手', '史诗', '-1 1 1 0 0 0', '');
INSERT INTO `talent` VALUES (34, '你行的细狗', '史诗', '0 1 1 0 0 0', '');
INSERT INTO `talent` VALUES (35, '你让杰哥不要了', '史诗', '0 3 0 0 0 0', '');
INSERT INTO `talent` VALUES (36, '恶魔的交易', '史诗', '0 0 0 0 0 0', '');
INSERT INTO `talent` VALUES (37, '迷信', '史诗', '0 0 0 0 0 0', '');
INSERT INTO `talent` VALUES (38, '大发明家', '传说', '1 1 1 1 1 1', '');
INSERT INTO `talent` VALUES (39, '蓝色妖姬', '传说', '1 1 1 1 1 1', '');
INSERT INTO `talent` VALUES (40, '至尊法师', '传说', '1 1 1 1 1 1', '');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL,
  `achievement_done` varchar(4096) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cnt` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for vacation
-- ----------------------------
DROP TABLE IF EXISTS `vacation`;
CREATE TABLE `vacation`  (
  `id` int(11) NOT NULL,
  `content` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `property_change` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `vacation_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of vacation
-- ----------------------------
INSERT INTO `vacation` VALUES (1, '坚持运动', '0 1 0 0 0 0', 0);
INSERT INTO `vacation` VALUES (2, '躺平摆烂', '0 0 0 0 0 1', 0);
INSERT INTO `vacation` VALUES (3, '家务全包', '0 0 0 0 0 0', 0);
INSERT INTO `vacation` VALUES (4, '做做家教', '0 0 0 1 0 0', 0);
INSERT INTO `vacation` VALUES (5, '志愿活动', '0 0 1 0 0 0', 0);
INSERT INTO `vacation` VALUES (6, '四处旅游', '0 0 1 -2 0 0', 0);
INSERT INTO `vacation` VALUES (7, '好好学习', '2 0 0 0 0 0 0', 0);
INSERT INTO `vacation` VALUES (8, '早睡早起', '0 1 0 0 0 0', 0);
INSERT INTO `vacation` VALUES (9, '熬夜战神', '0 -2 -1 0 0 3', 0);
INSERT INTO `vacation` VALUES (10, '电视剧达人', '0 0 0 0 0 2', 0);
INSERT INTO `vacation` VALUES (11, '上分王者', '-1 0 0 0 0 2', 0);
INSERT INTO `vacation` VALUES (12, '进修茶道', '0 0 1 0 0 0', 0);
INSERT INTO `vacation` VALUES (13, '购物狂魔', '0 0 0 -2 0 2', 0);
INSERT INTO `vacation` VALUES (14, '谈情说爱', '0 0 1 -1 0 0', 0);
INSERT INTO `vacation` VALUES (15, '网络巨人', '1 0 -1 0 0 0', 0);
INSERT INTO `vacation` VALUES (16, '修身养性', '0 1 1 0 0 -1', 0);
INSERT INTO `vacation` VALUES (17, '实习精神', '1 1 0 1 0 -2', 0);
INSERT INTO `vacation` VALUES (18, '普度众生', '0 0 1 0 0 1', 0);
INSERT INTO `vacation` VALUES (19, '孤独摇滚', '0 0 1 0 0 -1', 0);
INSERT INTO `vacation` VALUES (20, '日夜奖励', '0 -1 0 0 0 2', 0);
INSERT INTO `vacation` VALUES (21, '访亲拜友', '0 0 0 0 0 1', 0);

SET FOREIGN_KEY_CHECKS = 1;
