-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-06-04 12:12:28
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yoo`
--

-- --------------------------------------------------------

--
-- 表的结构 `picture`
--

CREATE TABLE `picture` (
  `id` int(11) NOT NULL COMMENT '图片id',
  `title` varchar(500) NOT NULL COMMENT '图片标题',
  `pic` varchar(500) NOT NULL COMMENT '图片'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `picture`
--

INSERT INTO `picture` (`id`, `title`, `pic`) VALUES
(1, '专题 端午节5.21-6.7', '[{"title":"专题 端午节5.21-6.7","src":"../img/ff2.jpg"}]'),
(2, '儿童节30-6.1', '[{"title":"儿童节30-6.1","src":"../img/ff4.jpg"}]'),
(3, '专题 6月穿搭画册21-31', '[{"title":"专题 6月穿搭画册21-31","src":"../img/ff1.jpg"}]'),
(4, '百强热销榜-蓝色', '[{"title":"百强热销榜-蓝色","src":"../img/ff3.jpg"}]'),
(5, '专题 得体送礼大赏', '[{"title":"专题 得体送礼大赏","src":"../img/ff5.jpg"}]'),
(6, '专题 十元店25-31-红', '[{"title":"专题 十元店25-31-红","src":"../img/ff6.jpg"}]'),
(7, '专题 夏日新品发布28-22', '[{"title":"专题 夏日新品发布28-22","src":"../img/ff7.jpg"}]');

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL COMMENT '商品id',
  `title` varchar(300) NOT NULL COMMENT '商品标题',
  `price` float NOT NULL COMMENT '商品价格',
  `num` varchar(30) NOT NULL COMMENT '商品库存',
  `pic` varchar(500) NOT NULL COMMENT '商品图片',
  `details` varchar(500) NOT NULL COMMENT '商品详情'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `title`, `price`, `num`, `pic`, `details`) VALUES
(10001, '小林漫画：人间治愈术精选集（全二册当当独家印章版，平和的你，才最美丽+生得再平凡，也是限量版）', 91, '有货', '[{"title":"comic book","src":"http://img3m8.ddimg.cn/27/14/27849618-2_u_6.jpg"}]', '<ul><li>开 本：32开</li><li>纸 张：轻型纸</li><li>包 装：平装-胶订</li><li>是否套装：是</li><li>国际标准书号ISBN：9787535497833</li><li>所属分类： <a href="#">图书</a>><a href="#">动漫/幽默</a>><a href="#">大陆动漫</a>><a href="#">其他大陆动漫</a></li> </ul>'),
(10002, '硅谷工程师爸爸的超强思维导图课：塑造儿童学习型大脑', 50.4, '有货', '[{"title":"硅谷工程师爸爸的超强思维导图课：塑造儿童学习型大脑","src":"http://img3m7.ddimg.cn/52/29/26923597-1_w_5.jpg"}]', '<ul><li>开 本：16开</li><li>纸 张：胶版纸</li><li>包 装：平装-胶订</li><li>是否套装：否</li><li>国际标准书号ISBN：9787512716889</li><li>所属分类：\r\n<a href="#">图书</a>><a href="#">亲子/家教</a>><a href="#">家教方法</a></li> </ul>'),
(10003, '王阳明传：知行合一的心学圣人', 45.1, '有货', '[ {"title":"王阳明传：知行合一的心学圣人","src":"http://img3m3.ddimg.cn/41/21/26492243-1_w_5.jpg"} ]', '<ul><li>开 本：16开</li><li>纸 张：胶版纸</li><li>包 装：平装-胶订</li><li>是否套装：否</li><li>国际标准书号ISBN：9787505745551</li><li>所属分类： <a href="#">图书</a>><a href="#">传记</a>><a href="#">历史人物</a></li> </ul>'),
(10004, ' 今天玩什么：全6册', 111.7, '有货', '[{"title":"今天玩什么：全6册","src":"http://img3m8.ddimg.cn/19/13/27862678-1_u_6.jpg"}]', '<ul><li>开 本：12开</li><li>纸 张：胶版纸</li><li>包 装：精装</li><li>是否套装：是</li><li>国际标准书号ISBN：9787556088560</li><li>所属分类： <a href="#">图书</a>><a href="#">童书</a>><a href="#">绘画/图画书</a>><a href="#">精装图画书</a>><a href="#">日韩</a></li> </ul>'),
(10005, ' 埃及四千年（破解四千年王朝兴衰秘密的里程碑式巨作）', 104.9, '有货', '[{"title":" 埃及四千年（破解四千年王朝兴衰秘密的里程碑式巨作）","src":"http://img3m9.ddimg.cn/12/30/26917419-1_u_3.jpg"}]', '<ul><li>开 本：16</li><li>纸 张：胶版纸</li><li>包 装：精装</li><li>是否套装：否</li><li>国际标准书号ISBN：9787533954482</li><li>所属分类： <a href="#">图书</a>><a href="#">历史</a>><a href="#">世界史</a>><a href="#">大洋洲史/非洲史</a></li> </ul>'),
(10006, '斯坦福极简经济学（当当全国独家精装升级版）', 45.5, '有货', '[{"title":"斯坦福极简经济学（当当全国独家精装升级版）","src":"http://img3m5.ddimg.cn/66/3/24010635-1_w_6.jpg"}]', '<ul><li>开 本：32开</li><li>纸 张：胶版纸</li><li>包 装：精装</li><li>是否套装：否</li><li>国际标准书号ISBN：24010635</li><li>所属分类： <a href="#">图书</a>><a href="#">经济</a>><a href="#">经济学理论</a>><a href="#">其他经济学理论</a></li> </ul>'),
(10007, '得力修正带涂改带改正带150m超大容量改错带批发韩国可爱学生用品', 39.8, '有货', '[{"title":"得力修正带涂改带改正带150m超大容量改错带批发韩国可爱学生用品","src":"http://img3m7.ddimg.cn/37/3/1188215857-1_u_1.jpg"}]', '<ul><li>品牌：得力</li><li>型号：8169</li><li>所属分类： <a href="#">文化创意用品</a>><a href="#">文化用品</a>><a href="#">学生文具</a>><a href="#">修正带/修正液/修正贴</a></li> </ul>'),
(10008, '2件3折价:191 伊芙丽2018新款中长款a字裙子初恋裙复古仙女网纱蕾丝连衣裙女夏', 634, '有货', '[{"title":"2件3折价:191 伊芙丽2018新款中长款a字裙子初恋裙复古仙女网纱蕾丝连衣裙女夏","src":"http://img3m0.ddimg.cn/57/17/1414495920-1_u_1.jpg"}]', '<ul><li>品牌：伊芙丽</li><li>型号：1180393194511</li><li>风格：其他</li><li>季节：夏季</li><li>材质：其他</li><li>种类：其他</li><li>所属分类： <a href="#">女士服装</a>><a href="#">少淑装</a><br/><a href="#">女士服装</a>><a href="#">连衣裙</a></li> </ul>');

-- --------------------------------------------------------

--
-- 表的结构 `sub_pic`
--

CREATE TABLE `sub_pic` (
  `id` int(11) NOT NULL COMMENT '图片id',
  `dt` varchar(300) NOT NULL COMMENT '图片大标题',
  `title` varchar(300) NOT NULL COMMENT '图片标题',
  `pic` varchar(300) NOT NULL COMMENT '商品图片'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `sub_pic`
--

INSERT INTO `sub_pic` (`id`, `dt`, `title`, `pic`) VALUES
(1, '春夏换新', '夏凉热卖', '[{"title":"夏凉热卖","src":"../img/1.png"}]'),
(2, '春夏换新', '主题床品', '[{"title":"主题床品","src":"../img/x1.png"}]'),
(3, '春夏换新', '主题床品', '[{"title":"主题床品","src":"../img/x2.png"}]'),
(4, '家纺床品', '床垫', '"title":"床垫","src":"../img/2.png"'),
(5, '家具家装', '客餐厅家具', '"title":"客餐厅家具","src":"../img/3.png"'),
(6, '收纳日用', '收纳', '"title":"收纳","src":"../img/4.png"'),
(7, '厨房用品', '锅具', '"title":"锅具","src":"../img/5.png"'),
(8, '餐具水具', '餐具', '"title":"餐具","src":"../img/5.png"');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL COMMENT '用户id',
  `username` varchar(30) NOT NULL COMMENT '用户名',
  `phone` varchar(11) NOT NULL COMMENT '用户手机号',
  `password` varchar(30) NOT NULL COMMENT '用户密码',
  `email` varchar(30) NOT NULL COMMENT '用户邮箱',
  `information` varchar(6) NOT NULL COMMENT '验证码',
  `sex` tinyint(2) NOT NULL COMMENT '用户性别',
  `age` tinyint(3) NOT NULL COMMENT '用户年龄'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `phone`, `password`, `email`, `information`, `sex`, `age`) VALUES
(10004, 'Marry', '13458946574', '894576', '14259584@qq.com', '1a1a1a', 1, 16),
(10005, 'momo', '15578945684', '123456', '3594779794@qq.com', '564hkk', 1, 19);

-- --------------------------------------------------------

--
-- 表的结构 `yoo_product`
--

CREATE TABLE `yoo_product` (
  `id` int(11) NOT NULL COMMENT '商品id',
  `title` varchar(300) NOT NULL COMMENT '商品标题',
  `price` float NOT NULL COMMENT '商品价格',
  `num` varchar(30) NOT NULL COMMENT '商品数量',
  `pic` varchar(300) NOT NULL COMMENT '商品图片',
  `details` text NOT NULL COMMENT '商品详情'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `yoo_product`
--

INSERT INTO `yoo_product` (`id`, `title`, `price`, `num`, `pic`, `details`) VALUES
(10001, '日本制造 头皮护理发根滋养液', 95, '618', '[{"title":"日本制造 头皮护理发根滋养液","src":"http://127.0.0.1:8080/1903-lina/test/src/img/hear1.png"}]', '<ul><li><span>保质期</span><span>3年</span></li><li><span>产地国家</span><span>日本</span></li><li><span>品牌属性</span><span>网易严选推荐选品，本产品为柳屋品牌，由株式会社柳屋本店生产制造。</span></li><li><span>使用方法</span><span>1. 建议每天2-3次，取适量头皮营养液用于头皮<br>2. 以向上抓取头发的手势，用手指对头皮轻轻按摩<br>3. 洗发后使用，请务必将头发上的水分擦干后涂抹</span></li></ul>'),
(10002, '常温 低脂纯牛奶 250毫升*24盒', 88, '618', '[{"title":"常温 低脂纯牛奶 250毫升*24盒","src":"http://127.0.0.1:8080/1903-lina/test/src/img/milk1.png"}]', '<ul><li><span>品名</span><span>低脂纯牛奶</span></li><li><span>配料表</span><span>生牛乳</span></li><li><span>保质期</span><span>6个月</span></li><li><span>规格</span><span>250毫升*24盒</span></li><li>产地</span><span>河北省保定市</span></li><li><span>储存条件</span><span>常温密闭储存，避免阳光直晒及高温</span></li><li><span>温馨提示</span><span>1、网易严选出售的食品，除明确质量问题外均不接受退换货<br>2、乳糖不耐受者不宜食用</span></li></ul>'),
(10003, '全价猫粮', 88, '618', '[{"title":"全价猫粮","src":"http://127.0.0.1:8080/1903-lina/test/src/img/7.png"}]', ' <ul><li><span>原材料资质说明</span><span>针对产品所涉及的主要原材料，我们将公示其安全性的相关资质证明。原料包含：三文鱼（国产）、鲣鱼（国产）、金枪鱼（国产）、沙丁鱼（国产）、鳕鱼（进口）、鳀鱼（国产）、青鱼（国产）、鸡肉（国产）、脱水鱼粉（进口）、脱水鸡肉粉（进口）；公示资质包含：进出口登记证、外检报告、第三方检测报告、检验检疫证明。相关材料将在“质检报告”模块进行公示。</span></li><li><span>商品名称</span><span>全价猫粮</span></li><li><span>适用猫龄</span><span>全期</span></li><li><span>净含量</span><span>1.8KG</span></li><li><span>保质期</span><span>12个月</span></li><li><span>生产商</span><span>宣城市福贝宠物食品有限公司</span></li><li><span>产地</span><span>安徽省宣城市</span></li><li><span>配料表</span><span>原料组成：冻肉（三文鱼、鲣鱼、金枪鱼、沙丁鱼、鳕鱼、鳀鱼、青鱼、鸡肉）、脱水鱼粉、脱水鸡肉粉、鸡油、马铃薯、木薯、豌豆、啤酒酵母、全蛋粉、奶酪粉、甜菜纤维、燕麦草、鱼油、胡萝卜、苹果、蔓越莓、海藻、丝兰提取物<br>添加剂组成：卵磷脂、牛磺酸、氯化胆碱、DL-蛋氨酸、L-赖氨酸、复合维生素及螯合矿物质、迷迭香、果寡糖、益生菌等</span></li><li><span>营养分析保证值</span><span>粗蛋白质≥41%； 粗脂肪≥16%； 粗纤维≤5.0%； 粗灰分≤10%； 水分≤10%； 钙≥1.1%； 总磷≥1.0%； 水溶性氯化物（以Cl-计）≥0.3%； 牛磺酸≥0.2%</span></li><li><span>贮存条件</span><span>请于阴凉干燥处保存，为保持良好的风味和新鲜度，开袋后请及时封口。如发现霉变等异常现象，请勿喂食。</span></li><li><span>温馨提示</span><span>1.为了您爱宠的肠胃健康，请根据换粮提示科学换粮。<br>2.片状原料为脱水鱼肉片，可提高产品适口性，猫咪可安心食用。<br>3.产品包装无需使用其他工具，请按照包装提示撕开包装密封条。使用刀剪可能会破坏密封条结构导致密封条失效。</span></li></ul>'),
(10004, '茅台镇的酒 珍藏12 500毫升', 288, '618', '[{"title":"茅台镇的酒 珍藏12 500毫升","src":"http://127.0.0.1:8080/1903-lina/test/src/img/win.png"}]', ' <ul>\r\n        <li><span>品名</span><span>茅台镇的酒</span></li>\r\n        <li><span>产品类型</span><span>酱香型高度白酒</span></li>\r\n        <li><span>产地</span><span>贵州省仁怀市茅台镇</span></li>\r\n        <li><span>酒精度</span><span>53%Vol</span></li>\r\n        <li><span>配料</span><span>高粱、小麦、水</span></li>\r\n        <li style="width: 100%; border-bottom: none;"><span>温馨提示</span><span>1、网易严选出售的食品，除明确质量问题外均不接受退换货。<br>2、未成年人请勿购买。妊娠期妇女、儿童、酒精过敏者等人群请勿饮酒。<br>3、适度饮酒怡情，过度饮酒伤身。<br>4、请勿酒后驾车。</span></li>\r\n    </ul>'),
(10005, '红豆薏米丸', 39, '618', '[{"title":"红豆薏米丸","src":"http://127.0.0.1:8080/1903-lina/test/src/img/hongduo1.png"}]', ' <ul>\r\n        <li><span>品名</span><span>红豆薏米丸</span></li>\r\n        <li><span>净含量</span><span>100克</span></li>\r\n        <li><span>配料</span><span>红小豆、红豆沙（白砂糖、红小豆、水、食用盐）、薏米、腰果、花生、麦芽糖醇、核桃、蜂蜜、红枣、山药、茯苓</span></li>\r\n        <li><span>产地</span><span>浙江杭州</span></li>\r\n        <li><span>保质期</span><span>180天</span></li>\r\n        <li><span>贮存条件</span><span>阴凉干燥通风处、防潮或冷藏</span></li>\r\n        <li><span>品牌属性</span><span>本产品为胡庆余堂品牌，由杭州万隆果干食品有限公司生产制造</span></li>\r\n        <li><span>温馨提示</span><span>1、网易严选出售的食品，除明确质量问题外均不接受退换货；<br>2、红豆薏米丸有少量出油属于正常现象。</span></li>\r\n    </ul> -->'),
(10006, '无籽夏黑葡萄 3斤装', 69, '618', '[{"title":"无籽夏黑葡萄 3斤装","src":"http://127.0.0.1:8080/1903-lina/test/src/img/putao1.png"}]', '  <ul >\r\n        <li><span>品名</span><span >无籽夏黑葡萄</span></li>\r\n        <li><span>规格</span><span>3斤装</span></li>\r\n        <li ><span>产地</span><span >云南</span></li>\r\n        <li><span >温馨提示</span><span>1、生鲜食品下单后无法修改收货地址，请在下单前确认收货地址正确；<br>2、生鲜食品一经售出非质量原因，不予退货；<br>3、生鲜食品不支持任何形式的拒签，因客户原因如联系方式有误、电话停机、不接电话、无理由拒收等造成快件无法正常签收的情况，不在赔付范围内；<br>4、水果类产品，收到后请尽快食用。</span></li>\r\n    </ul>'),
(10007, '小龙虾6-8钱 3斤', 129, '618', '[{"title":"小龙虾6-8钱 3斤","src":"http://127.0.0.1:8080/1903-lina/test/src/img/xia.png"}]', '<ul>\r\n        <li><span>品名</span><span>小龙虾</span></li>\r\n        <li><span>净含量</span><span>1.5kg/盒,净虾1kg,6-8钱/只</span></li>\r\n        <li><span>配料表</span><span>香辣味：小龙虾、饮用水、植物油、香辛料、白砂糖、食用盐、辣椒、味精、鸡精调味料；<br>十三香：小龙虾、饮用水、植物油、食用盐、白砂糖、味精、鸡粉调味料、郫县豆瓣酱、生姜、大蒜、洋葱、香辛料；<br>蒜泥味：小龙虾、饮用水、植物油、香辛料、白砂糖、食用盐、大蒜、味精、鸡精调味料。</span></li>\r\n        <li><span>保质期</span><span>18个月</span></li>\r\n        <li><span>贮存条件</span><span>-18℃以下贮存</span></li>\r\n        <li><span>产地</span><span>湖北省潜江市</span></li>\r\n        <li><span>致敏物质提示</span><span>本产品原料含有甲壳纲类动物、麸质的谷类、大豆及其制品、生产此食品的生产线及配套设施也处理鱼类及其制品</span></li>\r\n        <li><span>温馨提示</span><span>1、生鲜食品一经售出非质量原因，不予退货；<br>2、生鲜食品不支持任何形式的拒签，因客户原因如联系方式有误、电话停机、不接电话、无理由拒收等造成快件无法正常签收的情况，不在赔付范围内；<br>3、为保证龙虾紧致弹润的口感，常温自然解冻最佳，切忌热水快速解冻；<br>4、虾钳、虾壳坚硬，儿童、老人请在监护下食用；<br>5、请在食用时自行剔除虾线，虾腮、虾肠、虾壳切勿食用；<br>6、对虾肉过敏者慎用！<br>7、顺丰发货，具体可送达地区参考详情页下部说明</span></li>\r\n        <li><span>食用备注</span><span>1、宿疾者、正值上火之时不宜食虾;<br>2、患过敏性鼻炎、支气管炎、反复发作性过敏性皮炎的老年人不宜吃虾;<br>3、虾为动风发物,患有皮肤疥癣者忌食；<br>4、食用龙虾后，1小时内不要食用冷饮、西瓜等食品，以免刺激肠胃；<br>5、建议小龙虾热透后食用，避免冷食；<br>6、微波加热不当，易导致中间热了外面没热，外面热了中间就过了，影响口感，有条件尽量锅中加热。</span></li>\r\n    </ul>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `picture`
--
ALTER TABLE `picture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_pic`
--
ALTER TABLE `sub_pic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yoo_product`
--
ALTER TABLE `yoo_product`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `picture`
--
ALTER TABLE `picture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片id', AUTO_INCREMENT=8;
--
-- 使用表AUTO_INCREMENT `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id', AUTO_INCREMENT=10009;
--
-- 使用表AUTO_INCREMENT `sub_pic`
--
ALTER TABLE `sub_pic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '图片id', AUTO_INCREMENT=9;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id', AUTO_INCREMENT=10006;
--
-- 使用表AUTO_INCREMENT `yoo_product`
--
ALTER TABLE `yoo_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品id', AUTO_INCREMENT=10008;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
