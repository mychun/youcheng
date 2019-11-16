<%@ Page Language="C#" AutoEventWireup="true" Inherits="RTBcms.Web.UI.Page.article_list" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="RTBcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by RTBcms Template Engine at 2019-11-14 9:43:51.
		本页面代码由RTBcms模板引擎生成于 2019-11-14 9:43:51. 
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

	templateBuilder.Append("'>智能开关插座</a></li>\r\n                <li><a class=\"p-productService nav-list\" href='");
	templateBuilder.Append(linkurl("product_service_list",90));

	templateBuilder.Append("'>产品中心</a></li>\r\n                <li><a class=\"p-news nav-list\" href='");
	templateBuilder.Append(linkurl("news_list",87));

	templateBuilder.Append("'>新闻资讯</a></li>\r\n                <li><a class=\"p-about nav-list\" href='");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("'>关于我们</a></li>\r\n                <li><a class=\"p-cooperation nav-list\" href='");
	templateBuilder.Append(linkurl("cooperation"));

	templateBuilder.Append("'>渠道合作</a></li>\r\n            </ul>\r\n        </div>\r\n        <div class=\"right-top\">\r\n            <nofollow><a href=\"about.html#contact\" class=\"pro-down\" target=\"_blank\"><i class=\"phone-icon\"></i>联系我们</a></nofollow>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<script>\r\n    $(function () {\r\n        $(\".nav ul li\").hover(function () {\r\n            $(this).find(\".son-nav\").stop().slideDown();\r\n        }, function () {\r\n            $(this).find(\".son-nav\").stop().slideUp();\r\n        });\r\n    })\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n\r\n    <div class=\"main\">\r\n        <div class=\"top-banner\">\r\n            <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/p1.png\">\r\n            <span class=\"top-txt\">\r\n                <i>关于我们</i>\r\n                <em>About Us</em>\r\n            </span>\r\n        </div>\r\n        <div class=\"content pt100\" id=\"contact\">\r\n            <div class=\"top-title\">\r\n                <h3>联系我们</h3>\r\n            </div>\r\n            <div id=\"contact\" class=\"contact-info clearfix mt60\">\r\n                <div class=\"info-cont\">\r\n                    <p class=\"f-blue\">深圳市宝安区中图晶华电子经营部</p>\r\n                    <p class=\"p-row\"><span>联系电话：</span>13332969249（微信同号）<br />\r\n                        13316814641</p>\r\n                    <p class=\"p-row\"><span>联系邮箱：</span>xiehua@jinghuajingying.com<br />\r\n                                ghy@jinghuajingying.com</p>\r\n                    <p class=\"p-row\"><span>联系地址：</span>深圳市宝安区银田工业区36栋合欢商业中心610</p>\r\n                </div>\r\n                <div class=\"info-map\">\r\n                    <div id=\"l-map\" style=\"width:577px; height:386px;\"></div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"content pt170 pb170\">\r\n            <div class=\"top-title\">\r\n                <h3>公司简介</h3>\r\n            </div>\r\n            <dl class=\"company-info clearfix\">\r\n                <dt>\r\n                    <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/about.png\">\r\n                </dt>\r\n                <dd>\r\n                    <p>中图晶华成立于2007年，主营智能开关插座，如触摸开关、wifi开关、无线开关、智能按键开关、涂鸦app智能控制开关、智能语音控制开关、智能计量插座、智能多孔插座，支持wifi、蓝牙等无线网连接。现有员工近百人，旗下设研发部、品质部、业务部、市场部、财务部，在东莞拥有自己的代加工厂，拥有雄厚产品研发实力和充足的货源，欢迎各位友朋咨询订购！</p>\r\n                </dd>\r\n            </dl>\r\n        </div>        \r\n    </div>\r\n\r\n    ");

	templateBuilder.Append("<div class=\"footer\">\r\n    <div class=\"content clearfix\">\r\n        <dl class=\"wrap-cont\">\r\n            <dt>快速链接</dt>\r\n            <dd>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("product_service_list",90));

	templateBuilder.Append("'>产品中心</a></p>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("news_list",87));

	templateBuilder.Append("'>新闻资讯</a></p>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("'>关于我们</a></p>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("cooperation"));

	templateBuilder.Append("'>渠道合作</a></p>\r\n            </dd>\r\n        </dl>\r\n        <dl class=\"wrap-cont\">\r\n            <dt>联系方式</dt>\r\n            <dd>\r\n                <p>联系热线： ");
	templateBuilder.Append(Utils.ObjectToStr(config.webtel));
	templateBuilder.Append("</p>\r\n                <p>联系邮箱： ");
	templateBuilder.Append(Utils.ObjectToStr(config.webmail));
	templateBuilder.Append("</p>\r\n                <p>联系地址：");
	templateBuilder.Append(Utils.ObjectToStr(config.webaddress));
	templateBuilder.Append("</p>\r\n            </dd>\r\n        </dl>\r\n    </div>\r\n    <div class=\"content bottom-t\">\r\n        ");
	templateBuilder.Append(Utils.ObjectToStr(config.seocopyright));
	templateBuilder.Append("&nbsp;&nbsp;<a target=\"_blank\" href=\"http://www.miitbeian.gov.cn\">");
	templateBuilder.Append(Utils.ObjectToStr(config.webcrod));
	templateBuilder.Append("</a>\r\n    </div>\r\n\r\n    <!--右侧客服和返回顶部-->\r\n    <div class=\"right-active\">\r\n        <ul>\r\n            <li class=\"return-top display-none\"><div class=\"icon-wrap\"><i class=\"right-icon icon-up\"></i></div></li>\r\n        </ul>\r\n    </div>\r\n</div>\r\n\r\n<script type=\"text/javascript\">\r\n    //顶部主菜单滚动\r\n    window.onload = function () {\r\n        $(window).scroll(function () {\r\n\r\n            var st = $(this).scrollTop();\r\n            //当滚动条的位置处于距顶部500像素以下时，显示返回顶部按钮\r\n            if (st > 500) {\r\n                $(\".right-active\").show();\r\n                $(\".return-top\").slideDown();\r\n            }\r\n            else {\r\n                $(\".return-top\").slideUp();\r\n            }\r\n        });\r\n\r\n        //当点击跳转链接后，回到页面顶部位置\r\n        $(\".return-top\").click(function () {\r\n            $('body,html').animate({ scrollTop: 0 }, 100);\r\n        });\r\n    }\r\n\r\n</");
	templateBuilder.Append("script>\r\n");
	templateBuilder.Append(Utils.ObjectToStr(config.webcountcode));


	templateBuilder.Append("\r\n\r\n    <script type=\"text/javascript\" src=\"http://api.map.baidu.com/api?v=2.0&ak=ND9ku9ZQATIsNKAzZ2luMOUpVVY6HPg6\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\">\r\n        var mapZoom = 19,\r\n		winInfo = \"深圳市宝安区中图晶华电子经营部\",//输入的内容作为JS的字符串需要调用这个方法 by jser\r\n		mapX = 113.895382,\r\n		mapY = 22.579818,\r\n		overlayX = 113.895382,\r\n		overlayY = 22.579818;\r\n\r\n        var map = new BMap.Map(\"l-map\"); // map实例\r\n        var point = new BMap.Point(mapX, mapY); 			 // 坐标点\r\n        map.centerAndZoom(point, mapZoom);\r\n\r\n        var oPoint = new BMap.Point(overlayX, overlayY);\r\n        var marker = new BMap.Marker(oPoint);\r\n\r\n        map.enableScrollWheelZoom();				// 启用滚轮放大缩小\r\n        map.disableDoubleClickZoom();				// 禁止双击放大\r\n        map.addOverlay(marker);						// 添加一个小圆点\r\n        //marker.enableDragging(true);				// 设置标注可拖拽\r\n        var bMapNavigation = new BMap.NavigationControl();\r\n        map.addControl(bMapNavigation);										// 添加一条鱼骨	\r\n\r\n        initInfoWindow(marker, winInfo);//添加信息窗\r\n\r\n        function initInfoWindow(mMarker, infomation) {\r\n            if (!infomation) { return }\r\n            //设置为0可以高度自适应\r\n            var infoWindow = new BMap.InfoWindow(infomation, { width: 236, height: 0, title: '', enableAutoPan: false });						// 创建信息窗口对象\r\n            mMarker.openInfoWindow(infoWindow);\r\n            mMarker.addEventListener('click', function (e) {\r\n                if (infoWindow.isOpen()) {\r\n                    this.closeInfoWindow();\r\n                } else {\r\n                    this.openInfoWindow(infoWindow);\r\n                }\r\n            });\r\n        }\r\n    </");
	templateBuilder.Append("script>\r\n\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
