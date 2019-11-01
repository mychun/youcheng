<%@ Page Language="C#" AutoEventWireup="true" Inherits="RTBcms.Web.UI.Page.index" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="RTBcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by RTBcms Template Engine at 2018/10/29 13:49:31.
		本页面代码由RTBcms模板引擎生成于 2018/10/29 13:49:31. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html>\r\n<html>\r\n<head>\r\n    <meta charset=\"utf-8\" />\r\n    <title>");
	templateBuilder.Append(Utils.ObjectToStr(config.seotitle));
	templateBuilder.Append("</title>\r\n    <meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.seokeyword));
	templateBuilder.Append("\" />\r\n    <meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.seodescription));
	templateBuilder.Append("\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/css/swiper.min.css?v=1.1\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/css/style.css?v=1.1\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-3.3.1.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/js/idangerous.swiper.min.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n<body id=\"index\">\r\n    ");

	templateBuilder.Append("<div class=\"header\">\r\n    <div class=\"content clearfix\">\r\n        <span class=\"logo\"><a href='");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("'><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.weblogo));
	templateBuilder.Append("\" alt=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webcompany));
	templateBuilder.Append("\" /></a></span>\r\n        <div class=\"fl nav\">\r\n            <ul class=\"clearfix\">\r\n                <li><a class=\"p-index nav-list\" href='");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("'>首页</a></li>\r\n                <li>\r\n                    <a class=\"p-productService nav-list\" href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("'>解决方案</a>\r\n                    <div class=\"son-nav\">\r\n                        <span class=\"triangle\"></span>\r\n                        <div>\r\n                            <a href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("'>跨境物流TMS管理系统</a>\r\n                            <a href='");
	templateBuilder.Append(linkurl("product_service2"));

	templateBuilder.Append("'>跨境仓储管理系统</a>\r\n                            <a href='");
	templateBuilder.Append(linkurl("product_service3"));

	templateBuilder.Append("'>跨境转运管理系统</a>\r\n                        </div>\r\n                    </div>\r\n                </li>\r\n                <li><a class=\"p-news nav-list\" href='");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("?category_id=3'>资讯中心</a></li>\r\n                <li><a class=\"p-about nav-list\" href='");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("'>关于我们</a></li>\r\n                <li><a class=\"p-case nav-list\" href='");
	templateBuilder.Append(linkurl("case"));

	templateBuilder.Append("'>客户合作</a></li>\r\n                <li><a class=\"p-bespeak nav-list\" href='");
	templateBuilder.Append(linkurl("bespeak"));

	templateBuilder.Append("'>预约演示</a></li>\r\n            </ul>\r\n        </div>\r\n        <div class=\"contact-we\">\r\n            <a href=\"about.aspx#contact\" target=\"_blank\"><i class=\"phone\"></i>联系我们</a>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<script>\r\n    $(function () {\r\n        $(\".nav ul li\").hover(function () {\r\n            $(this).find(\".son-nav\").stop().slideDown();\r\n        }, function () {\r\n            $(this).find(\".son-nav\").stop().slideUp();\r\n        });\r\n    })\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n    \r\n    <div class=\"main\">\r\n        <div class=\"swiper-container\" style=\"height:440px;\">\r\n            <div class=\"swiper-wrapper\">\r\n            </div>\r\n            <!-- Add Pagination -->\r\n            <div class=\"swiper-pagination\"></div>\r\n            <!-- Add Arrows -->\r\n            <div class=\"swiper-button-prev\"></div>\r\n            <div class=\"swiper-button-next\"></div>\r\n\r\n            <div class=\"search-wrap\">\r\n                <a href=\"search_budget.aspx\">运算预算</a>\r\n                <a href=\"search_order.aspx\">包裹查询</a>\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"content pt100\">\r\n            <div class=\"top-title\">\r\n                <h3><img class=\"iconf\" src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/images/t1.png\">我们的服务</h3>\r\n                <p>支持多种业务模式，为客户提供信赖的解决方案</p>\r\n            </div>\r\n            <div class=\"server clearfix\">\r\n                <div class=\"fl-img fl\"><img src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/images/server.png\"></div>\r\n                <div class=\"server-list fl\">\r\n                    <ul class=\"server-ul clearfix\">\r\n                        <li>\r\n                            <h3>邮政小包</h3>\r\n                            <p>支持全球邮政小包操作模式。面单设计、API对接、预报打单、库内简易操作...</p>\r\n                        </li>\r\n                        <li>\r\n                            <h3>国际快递</h3>\r\n                            <p>支持国际快递代理操作模式，客户在线下单、提货服务、仓库操作、财务结算...</p>\r\n                        </li>\r\n                        <li>\r\n                            <h3>国际专线</h3>\r\n                            <p>支持空+派自助专线操作模式。解决FBA头程、国内报关、海外清关、末端派送等一系列专线类问题....</p>\r\n                        </li>\r\n                        <li>\r\n                            <h3>空运管理</h3>\r\n                            <p>支持代理空运到港、空运到门操作模式，在线生成委托书、货物操作、订舱、生成提单等。</p>\r\n                        </li>\r\n                        <li>\r\n                            <h3>进口管理</h3>\r\n                            <p>支持全程、半程进口方式（即头程+清关+派送 和 清关+派送）。</p>\r\n                        </li>\r\n                        <li>\r\n                            <h3>国际转运</h3>\r\n                            <p>支持进出口直运、集运操作模式。满足转运客户各种个性需求。</p>\r\n                        </li>\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"content pt170\">\r\n            <div class=\"advantage\">\r\n                <div class=\"top-title\">\r\n                    <h3><img class=\"iconf\" src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/images/t2.png\">我们的优势</h3>\r\n                </div>\r\n                <div class=\"advantage-list\">\r\n                    <dl>\r\n                        <dt><img src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/images/l1.png\"></dt>\r\n                        <dd>\r\n                            <h3>研发</h3>\r\n                            <p>30多人研发团队，保证产品及时迭代升级，满足更多的业务需求</p>\r\n                        </dd>\r\n                    </dl>\r\n                    <dl>\r\n                        <dt><img src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/images/l2.png\"></dt>\r\n                        <dd>\r\n                            <h3>实施</h3>\r\n                            <p>拥有五年以上实施经验的项目经理带队，保证项目按时交付</p>\r\n                        </dd>\r\n                    </dl>\r\n                    <dl>\r\n                        <dt><img src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/images/l3.png\"></dt>\r\n                        <dd>\r\n                            <h3>售后</h3>\r\n                            <p>提供7*12小时售后技术支持，及时响应客户问题</p>\r\n                        </dd>\r\n                    </dl>\r\n                    <dl>\r\n                        <dt><img src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/images/l4.png\"></dt>\r\n                        <dd>\r\n                            <h3>售前</h3>\r\n                            <p>丰富的跨境物流业务管理经验，为客户提供可靠产品解决方案</p>\r\n                        </dd>\r\n                    </dl>\r\n                </div>\r\n            </div>\r\n        </div>\r\n \r\n        <div class=\"content pt170\">\r\n            <div class=\"top-title\">\r\n                <h3><img class=\"iconf\" src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/images/t3.png\">合作伙伴<a href=\"/case.aspx\">更多<i class=\"more-r\">&gt;</i></a></h3>\r\n            </div>\r\n            <div class=\"partner\">\r\n                <div class=\"clearfix\">\r\n                    <a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/images/h1.png\"></a>\r\n                    <a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/images/h2.png\"></a>\r\n                    <a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/images/h3.png\"></a>\r\n                    <a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/images/h4.png\"></a>\r\n                    <a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/images/h5.png\"></a>\r\n                    <a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/images/h6.png\"></a>\r\n                    <a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/images/h7.png\"></a>\r\n                    <a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/images/h8.png\"></a>\r\n                    <a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/images/h9.png\"></a>\r\n                    <a href=\"#\"><img src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/images/h10.png\"></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"content pt170 pb170\">\r\n            <div class=\"top-title\">\r\n                <h3><img class=\"iconf\" src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/images/t4.png\">资讯中心</h3>\r\n            </div>\r\n            <div class=\"news clearfix\">\r\n                <div class=\"news-fl-img\"></div>\r\n                <div class=\"news-list custom-list\">\r\n                    <h3>新闻资讯<a href='");
	templateBuilder.Append(linkurl("news"));

	templateBuilder.Append("?category_id=3'>更多<i class=\"more-r\">&gt;</i></a></h3>\r\n                    <ul class=\"list-ul\">\r\n                        ");
	DataTable newsList = get_article_list("news", 0, 7, "status=0");

	int newdr__loop__id=0;
	foreach(DataRow newdr in newsList.Rows)
	{
		newdr__loop__id++;


	templateBuilder.Append("\r\n                        <li>\r\n                            <a title=\"" + Utils.ObjectToStr(newdr["title"]) + "\" href='");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newdr["id"])));

	templateBuilder.Append("'>" + Utils.ObjectToStr(newdr["title"]) + "</a>\r\n                            <span class=\"cont-time fr\">");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(newdr["add_time"])).ToString("yyyy-MM-dd"));

	templateBuilder.Append("</span>\r\n                        </li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n                <div class=\"news-list\">\r\n                    <h3>最新公告</h3>\r\n                    <ul class=\"list-ul\">\r\n                        ");
	int newdr1__loop__id=0;
	foreach(DataRow newdr1 in newsList.Rows)
	{
		newdr1__loop__id++;


	templateBuilder.Append("\r\n                        <li>\r\n                            <a title=\"" + Utils.ObjectToStr(newdr1["title"]) + "\" href='");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newdr1["id"])));

	templateBuilder.Append("'>" + Utils.ObjectToStr(newdr1["title"]) + "</a>\r\n                            <span class=\"cont-time fr\">");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(newdr1["add_time"])).ToString("yyyy-MM-dd"));

	templateBuilder.Append("</span>\r\n                        </li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    ");

	templateBuilder.Append("<div class=\"footer\">\r\n    <div class=\"content clearfix\">\r\n        <dl class=\"wrap-cont\">\r\n            <dt>快速链接</dt>\r\n            <dd>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("'>关于我们</a></p>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("'>解决方案</a></p>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("case"));

	templateBuilder.Append("'>客户合作</a></p>\r\n                <p><a class=\"link\" href='");
	templateBuilder.Append(linkurl("bespeak"));

	templateBuilder.Append("'>预约演示</a></p>\r\n            </dd>\r\n        </dl>\r\n        <dl class=\"wrap-cont\">\r\n            <dt>友情链接</dt>\r\n            <dd>\r\n                ");
	DataTable txtList = new RTBcms.Web.Plugin.Link.link().get_link_list(5, "");

	foreach(DataRow dr in txtList.Rows)
	{

	templateBuilder.Append("\r\n                <p><a class=\"link\" target=\"_blank\" href=\"" + Utils.ObjectToStr(dr["site_url"]) + "\" title=\"" + Utils.ObjectToStr(dr["title"]) + "\">" + Utils.ObjectToStr(dr["title"]) + "</a></p>\r\n                ");
	}	//end for if

	templateBuilder.Append("\r\n            </dd>\r\n        </dl>\r\n        <dl class=\"wrap-cont\">\r\n            <dt>联系方式</dt>\r\n            <dd>\r\n                <p>联&nbsp;系QQ：  651923</p>\r\n                <!--<p>手机号码： 17722631710</p>-->\r\n                <p>联系电话： ");
	templateBuilder.Append(Utils.ObjectToStr(config.webtel));
	templateBuilder.Append("</p>\r\n                <p>联系邮箱： ");
	templateBuilder.Append(Utils.ObjectToStr(config.webmail));
	templateBuilder.Append("</p>\r\n                <p>联系地址：");
	templateBuilder.Append(Utils.ObjectToStr(config.webaddress));
	templateBuilder.Append("</p>\r\n            </dd>\r\n        </dl>\r\n        <div class=\"foot-gzh\">\r\n            <h3>我们的公众号</h3>\r\n            <p><img src=\"");
	templateBuilder.Append("/templates/ruantongbao1");
	templateBuilder.Append("/images/gzh.jpg\"></p>\r\n        </div>\r\n    </div>\r\n    <div class=\"content bottom-t\">\r\n        ");
	templateBuilder.Append(Utils.ObjectToStr(config.seocopyright));
	templateBuilder.Append("&nbsp;&nbsp;<a target=\"_blank\" href=\"http://www.miitbeian.gov.cn\">");
	templateBuilder.Append(Utils.ObjectToStr(config.webcrod));
	templateBuilder.Append("</a>\r\n    </div>\r\n\r\n    <!--右侧客服和返回顶部-->\r\n    <div class=\"right-active\">\r\n        <ul>\r\n            <li class=\"return-top display-none\"><div class=\"icon-wrap\"><i class=\"right-icon icon-up\"></i></div></li>\r\n        </ul>\r\n    </div>\r\n</div>\r\n\r\n<script type=\"text/javascript\">\r\n    //顶部主菜单滚动\r\n    window.onload = function () {\r\n        $(window).scroll(function () {\r\n\r\n            var st = $(this).scrollTop();\r\n            //当滚动条的位置处于距顶部500像素以下时，显示返回顶部按钮\r\n            if (st > 500) {\r\n                $(\".right-active\").show();\r\n                $(\".return-top\").slideDown();\r\n            }\r\n            else {\r\n                $(\".return-top\").slideUp();\r\n            }\r\n        });\r\n\r\n        //当点击跳转链接后，回到页面顶部位置\r\n        $(\".return-top\").click(function () {\r\n            $('body,html').animate({ scrollTop: 0 }, 100);\r\n        });\r\n    }\r\n\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n\r\n    <script>\r\n        $(function () {\r\n            //幻灯片内容\r\n            $.ajax({\r\n                type: \"post\",\r\n                url: \"/plugins/advert/advert.ashx?id=39\",\r\n                dataType: \"json\",\r\n                success: function (data) {\r\n                    var html = \"\";\r\n                    for (var i = 0; i < data.length; i++) {\r\n                        html += '<div class=\"swiper-slide\" style=\"background-image:url(' + data[i].file_path + ')\">' + data[i].content + '</div>';\r\n                    }\r\n                    //添加html，触发幻灯片插件\r\n                    $(\".swiper-wrapper\").append(html);\r\n\r\n                    //幻灯片插件\r\n                    var swiper = new Swiper('.swiper-container', {\r\n                        autoplay: 3000,\r\n                        loop: true,\r\n                        speed: 1500,\r\n                        pagination: \".swiper-pagination\",\r\n                        paginationClickable: true\r\n\r\n                    });\r\n                    $(\".swiper-button-prev\").on('click', function () {\r\n                        swiper.swipePrev()\r\n                    });\r\n                    $(\".swiper-button-next\").on('click', function () {\r\n                        swiper.swipeNext()\r\n                    });\r\n                    $(\".swiper-container\").hover(function () {\r\n                        swiper.stopAutoplay();\r\n                    }, function () {\r\n                        swiper.startAutoplay();\r\n                    });\r\n                }\r\n            });\r\n        })\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
