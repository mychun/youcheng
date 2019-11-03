<%@ Page Language="C#" AutoEventWireup="true" Inherits="RTBcms.Web.UI.Page.article_list" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="RTBcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by RTBcms Template Engine at 2019/11/2 23:58:07.
		本页面代码由RTBcms模板引擎生成于 2019/11/2 23:58:07. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);
	const string channel = "about";
	const int pagesize = 20;

	templateBuilder.Append("<!DOCTYPE html>\r\n<html>\r\n<head>\r\n    <meta charset=\"utf-8\" />\r\n    <title>关于我们 - 深圳市友程电子科技有限公司</title>\r\n    <meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.seokeyword));
	templateBuilder.Append("\" />\r\n    <meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.seodescription));
	templateBuilder.Append("\" />\r\n    <link rel=\"icon\" type=\"image/png\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo-16-16.png\" sizes=\"16x16\">\r\n    <link rel=\"icon\" type=\"image/png\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo-32-32.png\" sizes=\"32x32\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css?v=1.1\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-3.3.1.min.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n<body  id=\"about\">\r\n    ");

	templateBuilder.Append("<div class=\"header\">\r\n    <div class=\"content clearfix\">\r\n        <span class=\"logo\"><a href='");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("'><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.weblogo));
	templateBuilder.Append("\" alt=\"友程科技\" /></a></span>\r\n        <div class=\"fl nav\">\r\n            <ul class=\"clearfix\">\r\n                <li><a class=\"p-index nav-list\" href='");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("'>智能开关</a></li>\r\n                <li>\r\n                    <a class=\"p-productService nav-list\" href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("'>产品中心</a>\r\n                </li>\r\n                <li><a class=\"p-news nav-list\" href='");
	templateBuilder.Append(linkurl("news_list",87));

	templateBuilder.Append("'>新闻资讯</a></li>\r\n                <li><a class=\"p-about nav-list\" href='");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("'>关于我们</a></li>\r\n                <li><a class=\"p-case nav-list\" href='");
	templateBuilder.Append(linkurl("case_list",84));

	templateBuilder.Append("'>渠道合作</a></li>\r\n            </ul>\r\n        </div>\r\n        <div class=\"right-top\">\r\n            <nofollow><a href=\"http://tool.ruantongbao.com\" class=\"pro-down\" target=\"_blank\"><i class=\"product-icon\"></i>APP下载</a></nofollow>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<script>\r\n    $(function () {\r\n        $(\".nav ul li\").hover(function () {\r\n            $(this).find(\".son-nav\").stop().slideDown();\r\n        }, function () {\r\n            $(this).find(\".son-nav\").stop().slideUp();\r\n        });\r\n    })\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n\r\n    <div class=\"main\">\r\n        <div class=\"top-banner\">\r\n            <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/p1.png\">\r\n            <span class=\"top-txt\">\r\n                <i>关于我们</i>\r\n                <em>About Us</em>\r\n            </span>\r\n        </div>\r\n        <div class=\"content pt100\" id=\"contact\">\r\n            <div class=\"top-title\">\r\n                <h3>联系我们</h3>\r\n            </div>\r\n            <div class=\"contact-info clearfix mt60\">\r\n                <div class=\"info-cont\">\r\n                    <p class=\"f-blue\">深圳市友程电子科技有限公司</p>\r\n                    <p>总部热线：");
	templateBuilder.Append(Utils.ObjectToStr(config.webtel));
	templateBuilder.Append("</p>\r\n                    <p>义乌分部：13065987667</p>\r\n                    <p>联&nbsp;系QQ：543981157、41340112</p>\r\n                    <p>联系邮箱：");
	templateBuilder.Append(Utils.ObjectToStr(config.webmail));
	templateBuilder.Append("</p>\r\n                    <p>联系地址：深圳市宝安区西乡后瑞地铁站西部硅谷B座C区509-510</p>\r\n                </div>\r\n                <div class=\"info-map\">\r\n                    <div id=\"l-map\" style=\"width:577px; height:386px;\"></div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"content pt170\">\r\n            <div class=\"top-title\">\r\n                <h3>公司简介</h3>\r\n            </div>\r\n            <dl class=\"company-info clearfix\">\r\n                <dt>\r\n                    <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/b3.jpg\">\r\n                </dt>\r\n                <dd>\r\n                    <p>深圳市友程电子科技有限公司，成立于2015年，致力于跨境物流和货代业务管理系统研发与实施，为货代企业和跨境物流服务商在企业经营和业务管理上提供高效、可靠的系统服务。旗下友程科技是公司自主研发的跨境物流综合管理系统 ，涵盖了跨境运输、海外仓储、国际转运等多个应用场景。</p>\r\n                    <p>核心研发团队均有10年以上跨境物流业务实操经验，实施过4PX、圆通国际、申通国际等多家大型跨境物流企业，是目前业内经验最为丰富技术团队之一。经过多年的努力付出，公司目前取得国家高新认证、深圳高新认证、国家双软认证等12个知识产权证书，以及300多家客户、业务覆盖30多个国家和地区，累计服务发送包裹180,000,000+。</p>\r\n                </dd>\r\n            </dl>\r\n        </div>\r\n        <div class=\"bg-group\" style=\"margin-bottom:170px;\">\r\n            <div class=\"content\">\r\n                <div class=\"top-title\">\r\n                    <h3>发展历程</h3>\r\n                </div>\r\n                <div class=\"history mt60\">\r\n                    <div class=\"line\"></div>\r\n                    <div class=\"time-info clearfix\">\r\n                        <dl class=\"time-flow\">\r\n                            <dt></dt>\r\n                            <dd>\r\n                                <h3>2015年</h3>\r\n                                <p>\r\n                                    5月 公司成立，开始研发国货运代理系统<br />\r\n                                    8月 与公司第一个客户建立合作关系<br />\r\n                                    9月 人员扩招，公司办公地址迁移至国汇通商贸中心\r\n                                </p>\r\n                            </dd>\r\n                        </dl>\r\n                        <dl class=\"time-flow\">\r\n                            <dt></dt>\r\n                            <dd>\r\n                                <h3>2016年</h3>\r\n                                <p>\r\n                                    4月 海外仓储管理系统正式上线<br />\r\n                                    6月 获得2016SR142712、2016SR143550国家知识产权证书<br />\r\n                                    12月 圆通速递完成系统上线\r\n                                </p>\r\n                            </dd>\r\n                        </dl>\r\n                        <dl class=\"time-flow\">\r\n                            <dt></dt>\r\n                            <dd>\r\n                                <h3>2017年</h3>\r\n                                <p>\r\n                                    3月 跨境转运进口业务管理系统正式上线<br />\r\n                                    8月 中国邮政操作模式升级<br />\r\n                                    11月 公司深圳总部办公地址迁移到西部硅谷\r\n                                </p>\r\n                            </dd>\r\n                        </dl>\r\n                        <dl class=\"time-flow\">\r\n                            <dt></dt>\r\n                            <dd>\r\n                                <h3>2018年</h3>\r\n                                <p>\r\n                                    3月 华东分公司正式成立 ...\r\n                                </p>\r\n                            </dd>\r\n                        </dl>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        \r\n    </div>\r\n\r\n    ");

	templateBuilder.Append("<div class=\"footer\">\r\n    <div class=\"content clearfix\">\r\n        <dl class=\"wrap-cont\">\r\n            <dt>快速链接</dt>\r\n            <dd>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("'>货代管理系统</a></p>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("?pro=0#appCase'>国际小包系统</a></p>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("?pro=1#appCase'>国际快递系统</a></p>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("?pro=2#appCase'>国际专线系统</a></p>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("case_list",84));

	templateBuilder.Append("'>客户合作</a></p>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("bespeak"));

	templateBuilder.Append("'>预约演示</a></p>\r\n            </dd>\r\n        </dl>\r\n        <!--<dl class=\"wrap-cont\">\r\n            <dt>友情链接</dt>\r\n            <dd>\r\n                ");
	DataTable txtList = new RTBcms.Web.Plugin.Link.link().get_link_list(5, "");

	foreach(DataRow dr in txtList.Rows)
	{

	templateBuilder.Append("\r\n                <p><a class=\"link\" target=\"_blank\" href=\"" + Utils.ObjectToStr(dr["site_url"]) + "\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></p>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n            </dd>\r\n        </dl>-->\r\n        <dl class=\"wrap-cont\">\r\n            <dt>联系方式</dt>\r\n            <dd>\r\n                <p>联&nbsp;系QQ：  543981157、41340112</p>\r\n                <!--<p>手机号码： 17722631710</p>-->\r\n                <p>总部热线： ");
	templateBuilder.Append(Utils.ObjectToStr(config.webtel));
	templateBuilder.Append("</p>\r\n                <p>义乌分部： 13065987667</p>\r\n                <p>联系邮箱： ");
	templateBuilder.Append(Utils.ObjectToStr(config.webmail));
	templateBuilder.Append("</p>\r\n                <p>联系地址：");
	templateBuilder.Append(Utils.ObjectToStr(config.webaddress));
	templateBuilder.Append("</p>\r\n            </dd>\r\n        </dl>\r\n        <div class=\"foot-gzh\">\r\n            <h3>微信公众号</h3>\r\n            <p><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/gzh.jpg\"></p>\r\n        </div>\r\n    </div>\r\n    <div class=\"content bottom-t\">\r\n        ");
	templateBuilder.Append(Utils.ObjectToStr(config.seocopyright));
	templateBuilder.Append("&nbsp;&nbsp;<a target=\"_blank\" href=\"http://www.miitbeian.gov.cn\">");
	templateBuilder.Append(Utils.ObjectToStr(config.webcrod));
	templateBuilder.Append("</a>\r\n    </div>\r\n\r\n    <!--右侧客服和返回顶部-->\r\n    <div class=\"right-active\">\r\n        <ul>\r\n            <li class=\"return-top display-none\"><div class=\"icon-wrap\"><i class=\"right-icon icon-up\"></i></div></li>\r\n        </ul>\r\n    </div>\r\n</div>\r\n\r\n<script type=\"text/javascript\">\r\n    //顶部主菜单滚动\r\n    window.onload = function () {\r\n        $(window).scroll(function () {\r\n\r\n            var st = $(this).scrollTop();\r\n            //当滚动条的位置处于距顶部500像素以下时，显示返回顶部按钮\r\n            if (st > 500) {\r\n                $(\".right-active\").show();\r\n                $(\".return-top\").slideDown();\r\n            }\r\n            else {\r\n                $(\".return-top\").slideUp();\r\n            }\r\n        });\r\n\r\n        //当点击跳转链接后，回到页面顶部位置\r\n        $(\".return-top\").click(function () {\r\n            $('body,html').animate({ scrollTop: 0 }, 100);\r\n        });\r\n    }\r\n\r\n</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append(Utils.ObjectToStr(config.webcountcode));


	templateBuilder.Append("\r\n\r\n    <script type=\"text/javascript\" src=\"http://api.map.baidu.com/api?v=2.0&ak=1L1f9uwQDnerPzNYhiMjvSsSAYcyDtN4\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n        var mapZoom = 19,\r\n		winInfo = \"深圳市友程电子科技有限公司\",//输入的内容作为JS的字符串需要调用这个方法 by jser\r\n		mapX = 113.844383,\r\n		mapY = 22.631628,\r\n		overlayX = 113.844383,\r\n		overlayY = 22.631628;\r\n\r\n        var map = new BMap.Map(\"l-map\"); // map实例\r\n        var point = new BMap.Point(mapX, mapY); 			 // 坐标点\r\n        map.centerAndZoom(point, mapZoom);\r\n\r\n        var oPoint = new BMap.Point(overlayX, overlayY);\r\n        var marker = new BMap.Marker(oPoint);\r\n\r\n        map.enableScrollWheelZoom();				// 启用滚轮放大缩小\r\n        map.disableDoubleClickZoom();				// 禁止双击放大\r\n        map.addOverlay(marker);						// 添加一个小圆点\r\n        //marker.enableDragging(true);				// 设置标注可拖拽\r\n        var bMapNavigation = new BMap.NavigationControl();\r\n        map.addControl(bMapNavigation);										// 添加一条鱼骨	\r\n\r\n        initInfoWindow(marker, winInfo);//添加信息窗\r\n\r\n        function initInfoWindow(mMarker, infomation) {\r\n            if (!infomation) { return }\r\n            //设置为0可以高度自适应\r\n            var infoWindow = new BMap.InfoWindow(infomation, { width: 236, height: 0, title: '', enableAutoPan: false });						// 创建信息窗口对象\r\n            mMarker.openInfoWindow(infoWindow);\r\n            mMarker.addEventListener('click', function (e) {\r\n                if (infoWindow.isOpen()) {\r\n                    this.closeInfoWindow();\r\n                } else {\r\n                    this.openInfoWindow(infoWindow);\r\n                }\r\n            });\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
