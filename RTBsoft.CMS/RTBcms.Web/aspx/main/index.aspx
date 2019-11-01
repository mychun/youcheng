<%@ Page Language="C#" AutoEventWireup="true" Inherits="RTBcms.Web.UI.Page.index" ValidateRequest="false" %>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Text" %>
<%@ Import namespace="System.Data" %>
<%@ Import namespace="RTBcms.Common" %>

<script runat="server">
override protected void OnInit(EventArgs e)
{

	/* 
		This page was created by RTBcms Template Engine at 2019/8/6 17:55:30.
		本页面代码由RTBcms模板引擎生成于 2019/8/6 17:55:30. 
	*/

	base.OnInit(e);
	StringBuilder templateBuilder = new StringBuilder(220000);

	templateBuilder.Append("<!DOCTYPE html>\r\n<html>\r\n<head>\r\n    <meta charset=\"utf-8\" />\r\n    <title>");
	templateBuilder.Append(Utils.ObjectToStr(config.seotitle));
	templateBuilder.Append("</title>\r\n    <meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.seokeyword));
	templateBuilder.Append("\" />\r\n    <meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.seodescription));
	templateBuilder.Append("\" />\r\n    <link rel=\"icon\" type=\"image/png\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo-16-16.png\" sizes=\"16x16\">\r\n    <link rel=\"icon\" type=\"image/png\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo-32-32.png\" sizes=\"32x32\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/swiper.min.css?v=1.1\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css?v=1.1\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-3.3.1.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/idangerous.swiper.min.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n<body id=\"index\">\r\n    ");

	templateBuilder.Append("<div class=\"header\">\r\n    <div class=\"content clearfix\">\r\n        <span class=\"logo\"><a href='");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("'><img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.weblogo));
	templateBuilder.Append("\" alt=\"速递管家\" /></a></span>\r\n        <div class=\"fl nav\">\r\n            <ul class=\"clearfix\">\r\n                <li><a class=\"p-index nav-list\" href='");
	templateBuilder.Append(linkurl("index"));

	templateBuilder.Append("'>速递管家</a></li>\r\n                <li>\r\n                    <a class=\"p-productService nav-list\" href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("'>解决方案</a>\r\n                    <div class=\"son-nav\">\r\n                        <span class=\"triangle\"></span>\r\n                        <div>\r\n                            <a href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("'>货代管理系统</a>\r\n                            <a href='");
	templateBuilder.Append(linkurl("product_service2"));

	templateBuilder.Append("'>仓储管理系统</a>\r\n                            <a href='");
	templateBuilder.Append(linkurl("product_service3"));

	templateBuilder.Append("'>转运管理系统</a>\r\n                        </div>\r\n                    </div>\r\n                </li>\r\n                <li><a class=\"p-news nav-list\" href='");
	templateBuilder.Append(linkurl("news_list",87));

	templateBuilder.Append("'>资讯中心</a></li>\r\n                <li><a class=\"p-about nav-list\" href='");
	templateBuilder.Append(linkurl("about"));

	templateBuilder.Append("'>关于我们</a></li>\r\n                <li><a class=\"p-case nav-list\" href='");
	templateBuilder.Append(linkurl("case_list",84));

	templateBuilder.Append("'>客户合作</a></li>\r\n                <li><a class=\"p-bespeak nav-list\" href='");
	templateBuilder.Append(linkurl("bespeak"));

	templateBuilder.Append("'>预约演示</a></li>\r\n            </ul>\r\n        </div>\r\n        <div class=\"right-top\">\r\n            <nofollow><a href=\"http://tool.ruantongbao.com\" class=\"pro-down\" target=\"_blank\"><i class=\"product-icon\"></i>产品下载</a></nofollow>\r\n            <nofollow><a href=\"about.html#contact\" class=\"contact-we\" target=\"_blank\"><i class=\"phone-icon\"></i>联系我们</a></nofollow>\r\n        </div>\r\n    </div>\r\n</div>\r\n\r\n<script>\r\n    $(function () {\r\n        $(\".nav ul li\").hover(function () {\r\n            $(this).find(\".son-nav\").stop().slideDown();\r\n        }, function () {\r\n            $(this).find(\".son-nav\").stop().slideUp();\r\n        });\r\n    })\r\n</");
	templateBuilder.Append("script>");


	templateBuilder.Append("\r\n    \r\n    <div class=\"main\">\r\n        <div class=\"swiper-container\" style=\"height:600px;\">\r\n            <div class=\"swiper-wrapper\">\r\n            </div>\r\n            <!-- Add Pagination -->\r\n            <div class=\"swiper-pagination\"></div>\r\n            <!-- Add Arrows -->\r\n            <div class=\"swiper-button-prev\"></div>\r\n            <div class=\"swiper-button-next\"></div>\r\n        </div>\r\n\r\n        <div class=\"bg-earth\">\r\n            <div class=\"content\">\r\n                <div class=\"top-title\">\r\n                    <h3><img class=\"iconf\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/t1.png\">速递管家</h3>\r\n                    <p>支持多种业务模式，为客户提供信赖的解决方案</p>\r\n                </div>\r\n                <div class=\"server clearfix\">\r\n                    <div class=\"fl-img fl\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/server.png\" alt=\"跨境物流系统\"></div>\r\n                    <div class=\"server-list fl\">\r\n                        <ul class=\"server-ul clearfix\">\r\n                            <li>\r\n                                <h3><a href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("?pro=0#appCase'>国际小包系统</a></h3>\r\n                                <p>支持全球邮政小包操作模式,面单设计、API对接、预报打单等。</p>\r\n                            </li>\r\n                            <li>\r\n                                <h3><a href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("?pro=1#appCase'>国际快递系统</a></h3>\r\n                                <p>支持国际快递代理操作模式，客户在线下单、提货服务、财务结算等。</p>\r\n                            </li>\r\n                            <li>\r\n                                <h3><a href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("?pro=2#appCase'>国际专线系统</a></h3>\r\n                                <p>支持空+派自助专线操作模式。解决FBA头程、国内报关、海外清关、末端派送等一系列专线类问题....</p>\r\n                            </li>\r\n                            <li>\r\n                                <h3><a href='");
	templateBuilder.Append(linkurl("product_service1"));

	templateBuilder.Append("'>空运管理系统</a></h3>\r\n                                <p>支持代理空运到港、空运到门操作模式，在线生成委托书、货物操作、订舱、生成提单等。</p>\r\n                            </li>\r\n                            <li>\r\n                                <h3><a href='");
	templateBuilder.Append(linkurl("product_service2"));

	templateBuilder.Append("'>仓库管理系统</a></h3>\r\n                                <p>一键代发、入库、出库、上架、打包发货等一系列仓库操作。</p>\r\n                            </li>\r\n                            <li>\r\n                                <h3><a href='");
	templateBuilder.Append(linkurl("product_service3"));

	templateBuilder.Append("'>国际转运系统</a></h3>\r\n                                <p>支持进出口直运、集运操作模式,，满足转运客户各种个性需求。</p>\r\n                            </li>\r\n                        </ul>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"bg-area\">\r\n            <div class=\"content\">\r\n                <div class=\"advantage\">\r\n                    <div class=\"top-title\">\r\n                        <h3><img class=\"iconf\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/t2.png\">我们的优势</h3>\r\n                    </div>\r\n                    <div class=\"advantage-list\">\r\n                        <dl>\r\n                            <dt><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/l1.png\"></dt>\r\n                            <dd>\r\n                                <h3>适用业务广泛</h3>\r\n                                <p>适用各类货代业务管理，如：国际专线、国际小包、国际快递、空运管理、FBA头程、COD等。</p>\r\n                            </dd>\r\n                        </dl>\r\n                        <dl>\r\n                            <dt><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/l2.png\"></dt>\r\n                            <dd>\r\n                                <h3>多种解决方案</h3>\r\n                                <p>根据不同公司的业务情况匹配不同的软件版本，更贴合业务要求！</p>\r\n                            </dd>\r\n                        </dl>\r\n                        <dl>\r\n                            <dt><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/l3.png\"></dt>\r\n                            <dd>\r\n                                <h3>可拓展性强</h3>\r\n                                <p>既能满足中小规模企业的业务发展需要，也可满足大型企业个性化需求，让软件不再成为发展的瓶颈！</p>\r\n                            </dd>\r\n                        </dl>\r\n                        <dl>\r\n                            <dt><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/l4.png\"></dt>\r\n                            <dd>\r\n                                <h3>专业实施团队</h3>\r\n                                <p>我们有行业中最专业的实施团队协作软件上线，优化业务流程！</p>\r\n                            </dd>\r\n                        </dl>\r\n                        <dl>\r\n                            <dt><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/l5.png\"></dt>\r\n                            <dd>\r\n                                <h3>金牌售后服务</h3>\r\n                                <p>我们有充足的售后资源，7*24提供服务，不再担心系统掉链子！</p>\r\n                            </dd>\r\n                        </dl>\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"content\">\r\n            <div class=\"top-title\">\r\n                <h3><img class=\"iconf\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/t3.png\">合作伙伴<a href='");
	templateBuilder.Append(linkurl("case_list",84));

	templateBuilder.Append("'>更多<i class=\"more-r\">&gt;</i></a></h3>\r\n            </div>\r\n            <div class=\"partner\">\r\n                <div class=\"clearfix\">\r\n                    <a href=\"javascript:void(0);\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/h1.png\"></a>\r\n                    <a href=\"javascript:void(0);\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/h2.png\"></a>\r\n                    <a href=\"javascript:void(0);\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/h3.png\"></a>\r\n                    <a href=\"javascript:void(0);\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/h4.png\"></a>\r\n                    <a href=\"javascript:void(0);\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/h5.png\"></a>\r\n                    <a href=\"javascript:void(0);\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/h6.png\"></a>\r\n                    <a href=\"javascript:void(0);\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/h7.png\"></a>\r\n                    <a href=\"javascript:void(0);\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/h8.png\"></a>\r\n                    <a href=\"javascript:void(0);\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/h9.png\"></a>\r\n                    <a href=\"javascript:void(0);\"><img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/h10.png\"></a>\r\n                </div>\r\n            </div>\r\n        </div>\r\n\r\n        <div class=\"content pt170 pb170\">\r\n            <div class=\"top-title\">\r\n                <h3><img class=\"iconf\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/t4.png\">资讯中心</h3>\r\n            </div>\r\n            <div class=\"news clearfix\">\r\n                <div class=\"news-fl-img\"></div>\r\n                <div class=\"news-list custom-list\">\r\n                    <h3>新闻资讯<a href='");
	templateBuilder.Append(linkurl("news_list",87));

	templateBuilder.Append("'>更多<i class=\"more-r\">&gt;</i></a></h3>\r\n                    <ul class=\"list-ul\">\r\n                        ");
	DataTable newsList = get_article_list("news", 87, 7, "status=0");

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
	DataTable newsList1 = get_article_list("news", 86, 7, "status=0");

	int newdr1__loop__id=0;
	foreach(DataRow newdr1 in newsList1.Rows)
	{
		newdr1__loop__id++;


	templateBuilder.Append("\r\n                        <li>\r\n                            <a title=\"" + Utils.ObjectToStr(newdr1["title"]) + "\" href='");
	templateBuilder.Append(linkurl("news_show",Utils.ObjectToStr(newdr1["id"])));

	templateBuilder.Append("'>" + Utils.ObjectToStr(newdr1["title"]) + "</a>\r\n                            <span class=\"cont-time fr\">");	templateBuilder.Append(Utils.ObjectToDateTime(Utils.ObjectToStr(newdr1["add_time"])).ToString("yyyy-MM-dd"));

	templateBuilder.Append("</span>\r\n                        </li>\r\n                        ");
	}	//end for if

	templateBuilder.Append("\r\n                        \r\n                    </ul>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    ");

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


	templateBuilder.Append("\r\n    <script>\r\nvar _hmt = _hmt || [];\r\n(function() {\r\n  var hm = document.createElement(\"script\");\r\n  hm.src = \"https://hm.baidu.com/hm.js?f6a2de90fbd93cec4c1deee6147f6188\";\r\n  var s = document.getElementsByTagName(\"script\")[0];\r\n  s.parentNode.insertBefore(hm, s);\r\n})();\r\n    </");
	templateBuilder.Append("script>\r\n\r\n    <script>\r\n        $(function () {\r\n            //幻灯片内容\r\n            $.ajax({\r\n                type: \"post\",\r\n                url: \"/plugins/advert/advert.ashx?id=39\",\r\n                dataType: \"json\",\r\n                success: function (data) {\r\n                    var html = \"\";\r\n                    for (var i = 0; i < data.length; i++) {\r\n                        html += '<div class=\"swiper-slide\" style=\"background-image:url(' + data[i].file_path + ')\">' + data[i].content + '</div>';\r\n                    }\r\n                    //添加html，触发幻灯片插件\r\n                    $(\".swiper-wrapper\").append(html);\r\n\r\n                    //幻灯片插件\r\n                    var swiper = new Swiper('.swiper-container', {\r\n                        autoplay: 3000,\r\n                        loop: true,\r\n                        speed: 1500,\r\n                        pagination: \".swiper-pagination\",\r\n                        paginationClickable: true\r\n\r\n                    });\r\n                    $(\".swiper-button-prev\").on('click', function () {\r\n                        swiper.swipePrev()\r\n                    });\r\n                    $(\".swiper-button-next\").on('click', function () {\r\n                        swiper.swipeNext()\r\n                    });\r\n                    $(\".swiper-container\").hover(function () {\r\n                        swiper.stopAutoplay();\r\n                    }, function () {\r\n                        swiper.startAutoplay();\r\n                    });\r\n                }\r\n            });\r\n        })\r\n    </");
	templateBuilder.Append("script>\r\n</body>\r\n</html>");
	Response.Write(templateBuilder.ToString());
}
</script>
