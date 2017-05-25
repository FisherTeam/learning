<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
    <%@ include file="/common/taglibs.jsp" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="utf-8">
            <title>【汽车贷款】{贷款产品介绍} _汽车之家</title>
            <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
            <link rel="icon" href="http://x.autoimg.cn/j/images/favicon.ico" mce_href="http://x.autoimg.cn/j/images/favicon.ico" type="image/x-icon">
            <meta name="renderer" content="webkit">
            <meta name="keywords" content="汽车之家,AUTOHOME,汽车之家车贷,车贷计算器,车贷流程,车贷首付,贷款买车,车贷,买车,北京贷款买车,北京买车,汽车贷款,车辆贷款,分期购车">
            <meta name="description" content="汽车之家汽车金融平台是汽车之家倾力打造的金融专业平台，为用户提供全面的线上金融服务，为金融机构提供精准的互联网运营平台； 
我们在解决用户购买新车、二手车贷款、保险等金融需求基础上，致力于发挥互联网平台优势，打造综合性汽车金融服务平台。">
            <link rel="stylesheet" href="//x.autoimg.cn/mall/j/css/css/detail-de848.css" />
        </head>

        <body>
            <%@ include file="/header-min-black.html" %>
                <div class="cd-header">
                    <div class="cd-logo">
                        <a href="${ctx}/loan/index" title="汽车之家-贷款"><img src="http://x.autoimg.cn/j/css/img_hd/cd_logo.png" /></a>
                    </div>
                    <input type="hidden" id="hidden" />
                    <input type="hidden" id="cString" value="${cacheStr}" />
                    <div class="cd-selectcity">
                        <div class="cd-selectcity-value" hidefocus="true"><span id="city_show">${city}</span><i class="cd-icon cd-icon-arrowdown1 mr20"></i><span class="cd-tips j-tips" style="display: none;"><i class="cd-icon cd-icon-arrowleft"></i>我们的车贷产品还没有覆盖到您所在的城市<a class="ml10" href="javascript:void(0);" id="known">知道了</a></span></div>
                        <div class="pop pop01 citypop" id="drop">
                            <div class="pop-content">
                                <h3 style="display:none;">
                                    <!--城市名称搜索开始-->
                                    <div class="citypop-search">
                                        <input type="text" value="请输入城市名" />
                                    </div>
                                </h3>
                                <div class="pop-content-info">
                                    <div class="citypop-nb">
                                        <a href="javascript:void(0)">A</a>
                                        <a href="javascript:void(0)">F</a>
                                        <a href="javascript:void(0)">G</a>
                                        <a href="javascript:void(0)">H</a>
                                        <a href="javascript:void(0)">J</a>
                                        <a href="javascript:void(0)">L</a>
                                        <a href="javascript:void(0)">N</a>
                                        <a href="javascript:void(0)">Q</a>
                                        <a href="javascript:void(0)">S</a>
                                        <a href="javascript:void(0)">X</a>
                                        <a href="javascript:void(0)">Y</a>
                                        <a href="javascript:void(0)">Z</a>
                                    </div>
                                    <div class="citypop-scity">
                                        <dl class="dlbg-top">
                                            <dt><span class="tx">直辖市：</span></dt>
                                            <dd>
                                                <a href="#" id="j-bj">北京</a>
                                                <a href="#">上海</a>
                                                <a href="#">天津</a>
                                                <a href="#">重庆</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="tx">安徽：</span><span class="nu">A</span></dt>
                                            <dd>
                                                <a href="#">合肥</a>
                                                <a href="#">芜湖</a>
                                                <a href="#">蚌埠</a>
                                                <a href="#">淮南</a>
                                                <a href="#">马鞍山</a>
                                                <a href="#">淮北</a>
                                                <a href="#">铜陵</a>
                                                <a href="#">安庆</a>
                                                <a href="#">黄山</a>
                                                <a href="#">滁州</a>
                                                <a href="#">阜阳</a>
                                                <a href="#">宿州</a>
                                                <a href="#">巢湖</a>
                                                <a href="#">六安</a>
                                                <a href="#">亳州</a>
                                                <a href="#">池州</a>
                                                <a href="#">宣城</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="tx">福建：</span><span class="nu">F</span></dt>
                                            <dd>
                                                <a href="#">福州</a>
                                                <a href="#">厦门</a>
                                                <a href="#">莆田</a>
                                                <a href="#">三明</a>
                                                <a href="#">泉州</a>
                                                <a href="#">漳州</a>
                                                <a href="#">南平</a>
                                                <a href="#">龙岩</a>
                                                <a href="#">宁德</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="tx">广东：</span><span class="nu">G</span></dt>
                                            <dd>
                                                <a href="#">广州</a>
                                                <a href="#">韶关</a>
                                                <a href="#">深圳</a>
                                                <a href="#">珠海</a>
                                                <a href="#">汕头</a>
                                                <a href="#">佛山</a>
                                                <a href="#">江门</a>
                                                <a href="#">湛江</a>
                                                <a href="#">茂名</a>
                                                <a href="#">肇庆</a>
                                                <a href="#">惠州</a>
                                                <a href="#">梅州</a>
                                                <a href="#">汕尾</a>
                                                <a href="#">河源</a>
                                                <a href="#">阳江</a>
                                                <a href="#">清远</a>
                                                <a href="#">东莞</a>
                                                <a href="#">中山</a>
                                                <a href="#">潮州</a>
                                                <a href="#">揭阳</a>
                                                <a href="#">云浮</a>
                                            </dd>
                                            <dt><span class="tx">广西：</span></dt>
                                            <dd>
                                                <a href="#">南宁</a>
                                                <a href="#">柳州</a>
                                                <a href="#">桂林</a>
                                                <a href="#">梧州</a>
                                                <a href="#">北海</a>
                                                <a href="#">防城港</a>
                                                <a href="#">钦州</a>
                                                <a href="#">贵港</a>
                                                <a href="#">玉林</a>
                                                <a href="#">百色</a>
                                                <a href="#">贺州</a>
                                                <a href="#">河池</a>
                                                <a href="#">来宾</a>
                                                <a href="#">崇左</a>
                                            </dd>
                                            <dt><span class="tx">贵州：</span></dt>
                                            <dd>
                                                <a href="#">贵阳</a>
                                                <a href="#">六盘水</a>
                                                <a href="#">遵义</a>
                                                <a href="#">安顺</a>
                                                <a href="#">铜仁</a>
                                                <a href="#">黔西南</a>
                                                <a href="#">毕节</a>
                                                <a href="#">黔东南</a>
                                                <a href="#">黔南</a>
                                            </dd>
                                            <dt><span class="tx">甘肃：</span></dt>
                                            <dd>
                                                <a href="#">兰州</a>
                                                <a href="#">嘉峪关</a>
                                                <a href="#">金昌</a>
                                                <a href="#">白银</a>
                                                <a href="#">天水</a>
                                                <a href="#">武威</a>
                                                <a href="#">张掖</a>
                                                <a href="#">平凉</a>
                                                <a href="#">酒泉</a>
                                                <a href="#">庆阳</a>
                                                <a href="#">定西</a>
                                                <a href="#">陇南</a>
                                                <a href="#">临夏</a>
                                                <a href="#">甘南</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="tx">海南：</span><span class="nu">H</span></dt>
                                            <dd>
                                                <a href="#">海口</a>
                                                <a href="#">三亚</a>
                                                <a href="#">五指山</a>
                                                <a href="#">琼海</a>
                                                <a href="#">儋州</a>
                                                <a href="#">文昌</a>
                                                <a href="#">万宁</a>
                                                <a href="#">东方</a>
                                                <a href="#">定安</a>
                                                <a href="#">屯昌</a>
                                                <a href="#">澄迈</a>
                                                <a href="#">临高</a>
                                                <a href="#">白沙</a>
                                                <a href="#">昌江</a>
                                                <a href="#">乐东</a>
                                                <a href="#">陵水</a>
                                                <a href="#">保亭</a>
                                                <a href="#">琼中</a>
                                                <a href="#">西沙群岛</a>
                                                <a href="#">南沙群岛</a>
                                                <a href="#">中沙群岛的岛礁及其海域</a>
                                            </dd>
                                            <dt><span class="tx">河南：</span></dt>
                                            <dd>
                                                <a href="#">郑州</a>
                                                <a href="#">开封</a>
                                                <a href="#">洛阳</a>
                                                <a href="#">平顶山</a>
                                                <a href="#">安阳</a>
                                                <a href="#">鹤壁</a>
                                                <a href="#">新乡</a>
                                                <a href="#">焦作</a>
                                                <a href="#">濮阳</a>
                                                <a href="#">许昌</a>
                                                <a href="#">漯河</a>
                                                <a href="#">三门峡</a>
                                                <a href="#">南阳</a>
                                                <a href="#">商丘</a>
                                                <a href="#">信阳</a>
                                                <a href="#">周口</a>
                                                <a href="#">驻马店</a>
                                                <a href="#">济源市</a>
                                            </dd>
                                            <dt><span class="tx">湖北：</span></dt>
                                            <dd>
                                                <a href="#">武汉</a>
                                                <a href="#">黄石</a>
                                                <a href="#">十堰</a>
                                                <a href="#">宜昌</a>
                                                <a href="#">襄阳</a>
                                                <a href="#">鄂州</a>
                                                <a href="#">荆门</a>
                                                <a href="#">孝感</a>
                                                <a href="#">荆州</a>
                                                <a href="#">黄冈</a>
                                                <a href="#">咸宁</a>
                                                <a href="#">随州</a>
                                                <a href="#">恩施</a>
                                                <a href="#">仙桃</a>
                                                <a href="#">潜江</a>
                                                <a href="#">天门</a>
                                                <a href="#">神农架</a>
                                            </dd>
                                            <dt><span class="tx">湖南：</span></dt>
                                            <dd>
                                                <a href="#">长沙</a>
                                                <a href="#">株洲</a>
                                                <a href="#">湘潭</a>
                                                <a href="#">衡阳</a>
                                                <a href="#">邵阳</a>
                                                <a href="#">岳阳</a>
                                                <a href="#">常德</a>
                                                <a href="#">张家界</a>
                                                <a href="#">益阳</a>
                                                <a href="#">郴州</a>
                                                <a href="#">永州</a>
                                                <a href="#">怀化</a>
                                                <a href="#">娄底</a>
                                                <a href="#">湘西</a>
                                            </dd>
                                            <dt><span class="tx">河北：</span></dt>
                                            <dd>
                                                <a href="#">石家庄</a>
                                                <a href="#">唐山</a>
                                                <a href="#">秦皇岛</a>
                                                <a href="#">邯郸</a>
                                                <a href="#">邢台</a>
                                                <a href="#">保定</a>
                                                <a href="#">张家口</a>
                                                <a href="#">承德</a>
                                                <a href="#">沧州</a>
                                                <a href="#">廊坊</a>
                                                <a href="#">衡水</a>
                                            </dd>
                                            <dt><span class="tx">黑龙江：</span></dt>
                                            <dd>
                                                <a href="#">哈尔滨</a>
                                                <a href="#">齐齐哈尔</a>
                                                <a href="#">鸡西</a>
                                                <a href="#">鹤岗</a>
                                                <a href="#">双鸭山</a>
                                                <a href="#">大庆</a>
                                                <a href="#">伊春</a>
                                                <a href="#">佳木斯</a>
                                                <a href="#">七台河</a>
                                                <a href="#">牡丹江</a>
                                                <a href="#">黑河</a>
                                                <a href="#">绥化</a>
                                                <a href="#">大兴安岭</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="tx">吉林：</span><span class="nu">J</span></dt>
                                            <dd>
                                                <a href="#">长春</a>
                                                <a href="#">吉林</a>
                                                <a href="#">四平</a>
                                                <a href="#">辽源</a>
                                                <a href="#">通化</a>
                                                <a href="#">白山</a>
                                                <a href="#">松原</a>
                                                <a href="#">白城</a>
                                                <a href="#">延边</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="tx">江西：</span></dt>
                                            <dd>
                                                <a href="#">南昌</a>
                                                <a href="#">景德镇</a>
                                                <a href="#">萍乡</a>
                                                <a href="#">九江</a>
                                                <a href="#">新余</a>
                                                <a href="#">鹰潭</a>
                                                <a href="#">赣州</a>
                                                <a href="#">吉安</a>
                                                <a href="#">宜春</a>
                                                <a href="#">抚州</a>
                                                <a href="#">上饶</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="tx">江苏：</span></dt>
                                            <dd>
                                                <a href="#">南京</a>
                                                <a href="#">无锡</a>
                                                <a href="#">徐州</a>
                                                <a href="#">常州</a>
                                                <a href="#">苏州</a>
                                                <a href="#">南通</a>
                                                <a href="#">连云港</a>
                                                <a href="#">淮安</a>
                                                <a href="#">盐城</a>
                                                <a href="#">扬州</a>
                                                <a href="#">镇江</a>
                                                <a href="#">泰州</a>
                                                <a href="#">宿迁</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="tx">辽宁：</span><span id="L" class="nu">L</span></dt>
                                            <dd>
                                                <a href="#">沈阳</a>
                                                <a href="#">大连</a>
                                                <a href="#">鞍山</a>
                                                <a href="#">抚顺</a>
                                                <a href="#">本溪</a>
                                                <a href="#">丹东</a>
                                                <a href="#">锦州</a>
                                                <a href="#">营口</a>
                                                <a href="#">阜新</a>
                                                <a href="#">辽阳</a>
                                                <a href="#">盘锦</a>
                                                <a href="#">铁岭</a>
                                                <a href="#">朝阳</a>
                                                <a href="#">葫芦岛</a>
                                                <a href="#">北宁</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="tx">内蒙古：</span><span class="nu">N</span></dt>
                                            <dd>
                                                <a href="#">呼和浩特</a>
                                                <a href="#">包头</a>
                                                <a href="#">乌海</a>
                                                <a href="#">赤峰</a>
                                                <a href="#">通辽</a>
                                                <a href="#">鄂尔多斯</a>
                                                <a href="#">呼伦贝尔</a>
                                                <a href="#">巴彦淖尔</a>
                                                <a href="#">乌兰察布</a>
                                                <a href="#">兴安盟</a>
                                                <a href="#">锡林郭勒盟</a>
                                                <a href="#">阿拉善盟</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="tx">宁夏：</span></dt>
                                            <dd>
                                                <a href="#">银川</a>
                                                <a href="#">石嘴山</a>
                                                <a href="#">吴忠</a>
                                                <a href="#">固原</a>
                                                <a href="#">中卫</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="tx">青海：</span><span class="nu">Q</span></dt>
                                            <dd>
                                                <a href="#">西宁</a>
                                                <a href="#">海东</a>
                                                <a href="#">海北</a>
                                                <a href="#">黄南</a>
                                                <a href="#">海南</a>
                                                <a href="#">果洛</a>
                                                <a href="#">玉树</a>
                                                <a href="#">海西</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="tx">陕西：</span><span class="nu">S</span></dt>
                                            <dd>
                                                <a href="#">西安</a>
                                                <a href="#">铜川</a>
                                                <a href="#">宝鸡</a>
                                                <a href="#">咸阳</a>
                                                <a href="#">渭南</a>
                                                <a href="#">延安</a>
                                                <a href="#">汉中</a>
                                                <a href="#">榆林</a>
                                                <a href="#">安康</a>
                                                <a href="#">商洛</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="tx">四川：</span></dt>
                                            <dd>
                                                <a href="#">成都</a>
                                                <a href="#">自贡</a>
                                                <a href="#">攀枝花</a>
                                                <a href="#">泸州</a>
                                                <a href="#">德阳</a>
                                                <a href="#">绵阳</a>
                                                <a href="#">广元</a>
                                                <a href="#">遂宁</a>
                                                <a href="#">内江</a>
                                                <a href="#">乐山</a>
                                                <a href="#">南充</a>
                                                <a href="#">眉山</a>
                                                <a href="#">宜宾</a>
                                                <a href="#">广安</a>
                                                <a href="#">达州</a>
                                                <a href="#">雅安</a>
                                                <a href="#">巴中</a>
                                                <a href="#">资阳</a>
                                                <a href="#">阿坝</a>
                                                <a href="#">甘孜</a>
                                                <a href="#">凉山</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="tx">山东：</span></dt>
                                            <dd>
                                                <a href="#">济南</a>
                                                <a href="#">青岛</a>
                                                <a href="#">淄博</a>
                                                <a href="#">枣庄</a>
                                                <a href="#">东营</a>
                                                <a href="#">烟台</a>
                                                <a href="#">潍坊</a>
                                                <a href="#">济宁</a>
                                                <a href="#">泰安</a>
                                                <a href="#">威海</a>
                                                <a href="#">日照</a>
                                                <a href="#">莱芜</a>
                                                <a href="#">临沂</a>
                                                <a href="#">德州</a>
                                                <a href="#">聊城</a>
                                                <a href="#">滨州</a>
                                                <a href="#">菏泽</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="tx">山西：</span></dt>
                                            <dd>
                                                <a href="#">太原</a>
                                                <a href="#">大同</a>
                                                <a href="#">阳泉</a>
                                                <a href="#">长治</a>
                                                <a href="#">晋城</a>
                                                <a href="#">朔州</a>
                                                <a href="#">晋中</a>
                                                <a href="#">运城</a>
                                                <a href="#">忻州</a>
                                                <a href="#">临汾</a>
                                                <a href="#">吕梁</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="tx">新疆：</span><span class="nu">X</span></dt>
                                            <dd>
                                                <a href="#">乌鲁木齐</a>
                                                <a href="#">克拉玛依</a>
                                                <a href="#">米泉</a>
                                                <a href="#">吐鲁番</a>
                                                <a href="#">哈密</a>
                                                <a href="#">昌吉</a>
                                                <a href="#">博尔塔拉</a>
                                                <a href="#">巴音郭楞</a>
                                                <a href="#">阿克苏</a>
                                                <a href="#">克孜勒苏</a>
                                                <a href="#">喀什</a>
                                                <a href="#">和田</a>
                                                <a href="#">伊犁</a>
                                                <a href="#">塔城</a>
                                                <a href="#">阿勒泰</a>
                                                <a href="#">石河子</a>
                                                <a href="#">阿拉尔</a>
                                                <a href="#">图木舒克</a>
                                                <a href="#">五家渠</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="tx">西藏：</span></dt>
                                            <dd>
                                                <a href="#">拉萨</a>
                                                <a href="#">昌都</a>
                                                <a href="#">山南</a>
                                                <a href="#">日喀则</a>
                                                <a href="#">那曲</a>
                                                <a href="#">阿里</a>
                                                <a href="#">林芝</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="tx">云南：</span><span class="nu">Y</span></dt>
                                            <dd>
                                                <a href="#">昆明</a>
                                                <a href="#">曲靖</a>
                                                <a href="#">玉溪</a>
                                                <a href="#">保山</a>
                                                <a href="#">昭通</a>
                                                <a href="#">丽江</a>
                                                <a href="#">普洱</a>
                                                <a href="#">临沧</a>
                                                <a href="#">楚雄</a>
                                                <a href="#">红河</a>
                                                <a href="#">文山</a>
                                                <a href="#">西双版纳</a>
                                                <a href="#">大理</a>
                                                <a href="#">德宏</a>
                                                <a href="#">怒江</a>
                                                <a href="#">迪庆</a>
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt><span class="tx">浙江：</span><span class="nu">Z</span></dt>
                                            <dd>
                                                <a href="#">杭州</a>
                                                <a href="#">宁波</a>
                                                <a href="#">温州</a>
                                                <a href="#">嘉兴</a>
                                                <a href="#">湖州</a>
                                                <a href="#">绍兴</a>
                                                <a href="#">金华</a>
                                                <a href="#">衢州</a>
                                                <a href="#">舟山</a>
                                                <a href="#">台州</a>
                                                <a href="#">丽水</a>
                                            </dd>
                                        </dl>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%--<a class="jr-zx jr-zx-online fn-right" target="_blank" id="index_zx" class="jr-zx fn-right" href="http://qiao.baidu.com/v3/?module=default&controller=im&action=index&ucid=7675641&type=n&siteid=5514042"></a>--%>
                        <!--a class="jr-zx jr-zx-qa fn-right mr20" href="#"></a -->
                        <a class="jr-zx jr-zx-online fn-right" id="kefu_sidebar" href="javascript:;"></a>
                </div>

                <div class="cd-maincontainer">
                    <div class="cd-content">
                        <div class="cd-breadnav">
                            您的位置：<a href="${ctx}/loan/index">首页</a>&gt;申请贷款&gt;产品详情
                        </div>
                        <div class="cd-banner-step cd-banner-step-style1 mb20">
                            <dl class="cd-step">
                                <dt class="cd-step-tit">申请流程：</dt>
                                <dd class="cd-step-item cd-step-active"><b class="cd-step-num">1</b><span class="cd-step-txt">产品选择</span></dd>
                                <dd class="cd-step-item"><b class="cd-step-num">2</b><span class="cd-step-txt">提交申请</span></dd>
                                <dd class="cd-step-item"><b class="cd-step-num">3</b><span class="cd-step-txt">审核批复</span></dd>
                                <dd class="cd-step-item"><b class="cd-step-num">4</b><span class="cd-step-txt">放款</span></dd>
                            </dl>
                        </div>
                        <div class="cd-datalist cd-datalist-style1 cd-productdetail-list mb20">
                            <div>
                                <div class="datalist-bank datalist-bank-detail">
                                    <img class="datalist-pic" src="${logo}" width="80" height="60" />
                                    <p class="datalist-bankname">
                                        <b id="bname">${bname}</b>
                                        <span id="pname">${pname}</span>
                                    </p>
                                    <ul class="fn-clear">
                                        <li class="datalist-item-1">
                                            <div class="select select-noborder fn-left" data-toggle="select">
                                                <div class="select-selected">
                                                    <span>首付比例</span><i class="cd-icon cd-icon-arrowdown2"></i>
                                                </div>
                                                <div class="select-option">
                                                    <dl id="dd1">
                                                        ${dropDown1}
                                                    </dl>
                                                </div>
                                            </div>
                                            <p class="datalist-banktotal"><span class="datalist-banknum2" id="dp">${downPay}%</span></p>
                                        </li>
                                        <li class="datalist-item-2">
                                            <div class="select select-noborder fn-left" data-toggle="select">
                                                <div class="select-selected">
                                                    <span>贷款期限</span><i class="cd-icon cd-icon-arrowdown2"></i>
                                                </div>
                                                <div class="select-option">
                                                    <dl id="dd2">
                                                        ${dropDown2}
                                                    </dl>
                                                </div>
                                            </div>
                                            <p class="datalist-banktotal"><span class="datalist-banknum2" id="m">${month}</span>个月</p>
                                        </li>
                                        <li class="datalist-item-3">
                                            <p>总成本</p>
                                            <p class="datalist-banktotal"><span class="datalist-banknum1" id="lixi">￥${lixi}</span>万</p>
                                        </li>
                                        <c:if test="${balanceRatio!=null&&balanceRatio!='0'}">
	                                        <li class="datalist-item-4">
	                                            <p>尾款比例<i class="cd-icon cd-icon-qa ml5" data-title="气球贷产品由首付、月供、弹性尾款三部分组成，弹性尾款到期一次性偿还。" data-placement="top" data-toggle="tip" id="wenhao"></i></p>
	                                            <p class="datalist-banktotal"><span class="datalist-banknum1" id="lixi">${balanceRatio}%</span></p>
	                                        </li>
                                        </c:if>
                                        <li class="last datalist-item-5">
                                            <p>其他费用</p>
                                            <p class="datalist-banktotal"><span class="datalist-banknum2" id="other">￥${other}</span>万</p>
                                        </li>
                                    </ul>
                                </div>
                                <div class="datalist-bank datalist-bank-detail datalist-bank-nopic">
                                    <div class="fn-clear">
                                        <p class="datalist-bankname1 fn-left">
                                            <span id="cx">${chexing}</span>
                                        </p>
                                        <div class="datalist-bankchange fn-left">
                                            <a class="ml15" href="javascript:void(0)" data-target="#drop1" data-trigger="click" data-toggle="overlay">更换车型<i class="cd-icon cd-icon-arrowdown2 ml5"></i></a>
                                            <div class="selectpop ass-items carshow-change-list" id="drop1" style="display:none;">
                                                <div class="selectpop-box fn-clear">
                                                    <div class="selectpop-box-prov" data-type="third">
                                                        <h4 class="title-prov">请选择车型</h4>
                                                        <div class="selectpop-prov-cont fn-clear">
                                                            <div class="selectpop-cont-main prov-width-01 cd-select-type">
                                                                <dl class="town-con-dl town-tit-dl">
                                                                    <dd class="town-btn" id="cl">
                                                                        ${chexingList}
                                                                    </dd>
                                                                </dl>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <ul class="fn-clear">
                                        <li class="datalist-item-1">
                                            <p>裸车价格</p>
                                            <p class="datalist-banktotal"><span class="datalist-banknum2" id="price">￥${price}</span>万</p>
                                        </li>
                                        <li class="datalist-item-2">
                                            <p>首付金额</p>
                                            <p class="datalist-banktotal"><span class="datalist-banknum2" id="dpMoney">￥${dpMoney}</span>万</p>
                                        </li>
                                        <li class="datalist-item-3">
                                            <p>贷款金额</p>
                                            <p class="datalist-banktotal"><span class="datalist-banknum2" id="daiMoney">￥${daiMoney}</span>万</p>
                                        </li>
                                        <c:if test="${balanceAmount!=null && balanceAmount!='0.00'}">
	                                        <li class="datalist-item-4">
	                                            <p>尾款金额<i class="cd-icon cd-icon-qa ml5" data-title="气球贷产品由首付、月供、弹性尾款三部分组成，弹性尾款到期一次性偿还。" data-placement="top" data-toggle="tip" id="wenhao"></i></p>
	                                            <p class="datalist-banktotal"><span class="datalist-banknum1" id="lixi">￥${balanceAmount}</span>万</p>
	                                        </li>
                                        </c:if>
                                        <li class="last datalist-item-5">
                                            <p>月供</p>
                                            <p class="datalist-banktotal"><span class="datalist-banknum1" id="monthPay">￥${monthPay}</span>元</p>
                                        </li>
                                    </ul>
                                </div>
                                <div class="datalist-handle datalist-handle-detail">
                                    <a href="#" class="cd-btn cd-btn-orange apply">申 请</a>
                                </div>
                            </div>
                        </div>
                        <h2 class="cd-title1 cd-title1-darkgray productintroduce-origin mb20 fn-clear">产品介绍</h2>
                        <h3 class="cd-title mb10">贷款方案明细:</h3>
                        <div id="tableString">
                            ${tableString}
                        </div>
                        <div id="detailString">
                            ${detailString}${merchantInfoString}
                        </div>
                    </div>
                </div>
                <div class="cd-footer">
                    <div class="cd-footer-links">
                        <a href="${ctx}/business.html" target="_blank">商务合作</a><a href="${ctx}/aboutUs.html" target="_blank">关于我们</a><a href="${ctx}/qa.html" target="_blank">常见问题</a><a href="${ctx}/agreement.html" target="_blank">免责声明</a>
                    </div>
                    <div class="cd-copyright">
                        <span>&copy;2004-2017 www.autohome.com.cn All Rights Reserved.</span> 汽车之家 版权所有
                    </div>
                </div>
                <div class="cd-productintroduce-clone">
                    <div class="cd-content">
                        <h2 class="cd-title1 cd-title1-darkgray mb20 fn-clear"><a class="cd-btn cd-btn-orange cd-btn-large fn-right mt5 apply" href="#">申 请</a>产品介绍</h2>
                    </div>
                </div>
                <!--返回顶部开始-->
                <div class="layer fn-hide cd-alertlayer" id="layer2">
                    <div class="cd-layertxt">
                        <table align="center">
                            <tr>
                                <td align="top"><i class="cd-icon cd-icon-no"></i></td>
                                <td align="left" class="layertxt-con">此款车贷产品还没有覆盖到您所在的城市</td>
                            </tr>
                        </table>
                        <a href="javascript:void(0)" class="cd-btn cd-btn-orange" data-dismiss="layer">确 定</a>
                    </div>
                </div>
                <!--返回顶部结束-->
                <script type="text/javascript" src="http://x.autoimg.cn/j/js/jquery-1.10.2.js"></script>
                <script src="http://x.autoimg.cn/j/js/im.js"></script>
                <!--广告浮层开始-->
                <%@ include file="activity.html" %>
                    <!--广告浮层结束-->
                    <!-- start ASS化JS引用 -->
                    <script type="text/javascript" src="http://x.autoimg.cn/as/js-2.0.5/sea.js"></script>
                    <script type="text/javascript">
                        seajs.config({
                            version: "1390874651561"
                        });
                        var canGo = !0;
                        seajs.use(["jquery", "citypop", "dropdownlist", "select", "tip", "overlay", "gotop", "layer"], function($) {
                            function changeCity(t) {
                                $.ajax({
                                    url: "${ctx}/loan/city/detailVeriCity",
                                    type: "POST",
                                    data: {
                                        city: t
                                    },
                                    success: function(t) {
                                        "1" == t ? ($(".cd-tips").hide(), canGo = !0) : ($(".cd-tips").show(), canGo = !1)
                                    },
                                    error: function() {},
                                    complete: function() {},
                                    async: !0
                                })
                            }

                            function getData(p1, p2) {
                                var param_month = "",
                                    param_sf = "",
                                    param_cid = "",
                                    cString = $("#cString").val();
                                "1" == p1 ? param_sf = p2 : "2" == p1 ? param_month = p2 : "3" == p1 && (param_cid = p2), $.ajax({
                                    url: "${ctx}/loan/detail/getChange",
                                    type: "POST",
                                    data: {
                                        cString: cString,
                                        param_month: param_month,
                                        param_sf: param_sf,
                                        param_cid: param_cid
                                    },
                                    success: function(data) {
                                        var obj = eval("(" + data + ")");
                                        $("#dp").html(obj.downPay), $("#m").html(obj.month), $("#lixi").html("￥" + obj.lixi), $("#other").html("￥" + obj.other),  $("#price").html("￥" + obj.price), $("#dpMoney").html("￥" + obj.dpMoney), $("#daiMoney").html("￥" + obj.daiMoney), $("#monthPay").html("￥" + obj.monthPay), $("#tableString").html(obj.tableString), $("#cx").html(obj.chexing), $("#cString").val(obj.cString), "更换车型" != $("#chexingtitle").html() && ($("#chexingtitle").html(obj.chexingtitle), $("#chexing a").each(function() {
                                            $(this).html() == obj.chexingtitle ? $(this).addClass("selected") : $(this).removeClass("selected")
                                        })), $("#cl").html(obj.cl), $("#cl a").click(function() {
                                            var t = $(this).attr("data-c");
                                            $("#hidden").click(), getData("3", t)
                                        })
                                    },
                                    error: function() {},
                                    complete: function() {},
                                    async: !0
                                })
                            }

                            function getBackData() {
                                $.ajax({
                                    url: "${ctx}/loan/detail/getBackData",
                                    type: "POST",
                                    data: {},
                                    success: function(data) {
                                        var obj = eval("(" + data + ")");
                                        $("#dp").html(obj.downPay), $("#m").html(obj.month), $("#lixi").html("￥" + obj.lixi), $("#other").html("￥" + obj.other), $("#price").html("￥" + obj.price), $("#dpMoney").html("￥" + obj.dpMoney), $("#daiMoney").html("￥" + obj.daiMoney), $("#monthPay").html("￥" + obj.monthPay), $("#tableString").html(obj.tableString), $("#cx").html(obj.chexing), $("#cString").val(obj.cString), "更换车型" != $("#chexingtitle").html() && ($("#chexingtitle").html(obj.chexingtitle), $("#chexing a").each(function() {
                                            $(this).html() == obj.chexingtitle ? $(this).addClass("selected") : $(this).removeClass("selected")
                                        })), $("#cl").html(obj.cl), $("#cl a").click(function() {
                                            var t = $(this).attr("data-c");
                                            $("#hidden").click(), getData("3", t)
                                        })
                                    },
                                    error: function() {},
                                    complete: function() {},
                                    async: !0
                                })
                            }

                            function setCookie(t, i) {
                                var c = 30,
                                    a = new Date;
                                a.setTime(a.getTime() + 24 * c * 60 * 60 * 1e3), document.cookie = t + "=" + escape(i) + ";expires=" + a.toGMTString() + ";path=/"
                            }

                            function getCookie(t) {
                                var i, c = new RegExp("(^| )" + t + "=([^;]*)(;|$)");
                                return (i = document.cookie.match(c)) ? unescape(i[2]) : null
                            }

                            function positionImg() {
                                $(window).width() <= 1380 ? ($("#popautoapp").addClass("gotop-opacity"), $("#gotop").addClass("gotop-opacity")) : ($("#popautoapp").removeClass("gotop-opacity"), $("#gotop").removeClass("gotop-opacity"))
                            }

                            function initActivity() {
                                var t = $("#popautoapp > a");
                                null != t && t.attr("href", "http://j.autohome.com.cn/loan/activity#pvareaid=105142")
                            }
                            $(".citypop").citypop({
                                input: 'input[type="text"]',
                                container: ".cd-selectcity-value",
                                hidemode: "click"
                            }), $(".citypop-scity a").click(function() {
                                $("#city_show").text($(this).text()), setCookie("jCity", $(this).text()), $("#drop").hide(), changeCity($(this).text())
                            });
                            var city = getCookie("jCity");
                            (null == city || "" == city) && (city = "${city}"), $(".citypop-scity a").each(function() {
                                $(this).text() == city && ($(this).addClass("current"), $("#city_show").text($(this).text()), changeCity($(this).text()))
                            }), $("#known").click(function(t) {
                                var t = t || window.event;
                                $(this).parents(".cd-tips").fadeOut(200)
                            }), $(".j-tips").click(function(t) {
                                return t.stopPropagation(), !1
                            }), $("#gotop").gotop();
                            var cloneBar = function() {
                                $(".cd-productintroduce-clone").show();
                                var t = $(".productintroduce-origin"),
                                    i = $(".cd-productintroduce-clone"),
                                    c = function() {
                                        t[0].getBoundingClientRect().top > 10 ? i.css("visibility", "hidden") : i.css("visibility", "visible")
                                    };
                                c(), $(window).on("scroll", function() {
                                    c()
                                })
                            };
                            cloneBar(), $('[data-toggle="dropdownlist"]').dropdownlist(), getBackData(), $("#dd1 a").click(function() {
                                var t = $(this).text();
                                $("#hidden").click(), getData("1", t)
                            }), $("#dd2 a").click(function() {
                                var t = $(this).text();
                                $("#hidden").click(), getData("2", t)
                            }), $("#cl a").click(function() {
                                var t = $(this).attr("data-c");
                                $("#hidden").click(), getData("3", t)
                            }), $("#pinpai a").click(function() {
                                var t = $(this).text();
                                setCookie("jPinpai", t), $.ajax({
                                    url: "${ctx}/loan/car/getChexi",
                                    type: "POST",
                                    data: {
                                        pinpai: t
                                    },
                                    success: function(t) {
                                        $("#chexi").html(t), $("#chexi a").click(function() {
                                            var t = $(this).text();
                                            setCookie("jChexi", t), $.ajax({
                                                url: "${ctx}/loan/car/getChexing",
                                                type: "POST",
                                                data: {
                                                    chexi: t
                                                },
                                                success: function(t) {
                                                    $("#chexing").html(t), $("#chexing a").click(function() {
                                                        var t = $(this).text(),
                                                            i = $(this).attr("data-key");
                                                        $("#cx").html(t), getData("3", i)
                                                    })
                                                },
                                                error: function() {},
                                                complete: function() {},
                                                async: !0
                                            })
                                        })
                                    },
                                    error: function() {},
                                    complete: function() {},
                                    async: !0
                                })
                            }), $(".apply").click(function() {
                                if (canGo) {
                                    var t = $("#cString").val();
                                    setCookie("jFApply", t);
                                    var i = "${merchId}";
                                    window.location.href = "4" == i ? "${ctx}/loan/apply/cmbc?f=d" : "${ctx}/loan/apply?f=d"
                                } else $("#layer2").layer("show")
                            }), $(document).ready(positionImg), $(window).resize(positionImg), initActivity()
                        });
                    </script>
                    <script language="javascript" type="text/javascript">
                        var pvTrack = function() {};
                        pvTrack.site = 51;
                        pvTrack.category = 523;
                        pvTrack.subcategory = 2966;
                        pvTrack.object = 0;
                        pvTrack.series = 0;
                        pvTrack.type = 0;
                        pvTrack.typeid = 0;
                        pvTrack.spec = 0;
                        pvTrack.level = 0;
                        pvTrack.dealer = 0;
                    </script>
                    <%@ include file="/common/pv.inc" %>
        </body>

        </html>