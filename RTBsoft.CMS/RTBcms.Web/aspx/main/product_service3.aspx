<%@ Page Language="C#" AutoEventWireup="true" Inherits="RTBcms.Web.UI.Page.article_list" ValidateRequest="false" %>
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
	const string channel = "product_service";
	const int pagesize = 20;

	templateBuilder.Append("<!DOCTYPE html>\r\n<html>\r\n<head>\r\n    <meta charset=\"utf-8\" />\r\n    <title>转运管理系统，进口管理系统</title>\r\n    <meta name=\"keywords\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.seokeyword));
	templateBuilder.Append("\" />\r\n    <meta name=\"description\" content=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.seodescription));
	templateBuilder.Append("\" />\r\n    <link rel=\"icon\" type=\"image/png\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo-16-16.png\" sizes=\"16x16\">\r\n    <link rel=\"icon\" type=\"image/png\" href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/logo-32-32.png\" sizes=\"32x32\">\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css?v=1.2\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <link type=\"text/css\" rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("css/validate.css\" />\r\n    <link type=\"text/css\" rel=\"stylesheet\" href=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/ui-dialog.css\" />\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-3.3.1.min.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n<body  id=\"productService\">\r\n    ");

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


	templateBuilder.Append("\r\n\r\n    <div class=\"main\">\r\n        <div class=\"top-banner\">\r\n            <img src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/p1.png\">\r\n            <span class=\"top-txt\">\r\n                <i>转运管理系统</i>\r\n                <em>Transfer management system</em>\r\n            </span>\r\n        </div>\r\n        <div class=\"content pt100\">\r\n            <div class=\"top-title\">\r\n                <h3>系统概述</h3>\r\n                <p class=\"d-info\">跨境转运管理系统是海外物流公司为中国海淘客户及跨境电商服务的电商化物流系统，用以实现境外收寄、国际运输、清关、国内配送的全面信息化管理支持，为海淘客户提供高效便捷的服务。</p>\r\n            </div>\r\n            <div class=\"wrap\">\r\n                <img class=\"pro-img\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pro6.png\" alt=\"转运管理系统\">\r\n            </div>\r\n        </div>\r\n        <div class=\"on-bg s-bg2\">\r\n            <div class=\"content\">\r\n                <div class=\"top-title\">\r\n                    <h3>转运管理系统业务流程</h3>\r\n                    <p class=\"d-info\">系统提供用户注册平台，用户在进行注册登陆后可获取专属的海外仓地址，用户在海外购物网站填报收货地址为对应的系统海外仓地址，同时将对应包裹快递单号提交到后台进行包裹预报，并填报相关的包裹品名、类别、重量等明细信息（自动生成行邮税费和报关资料），待海外仓人员收到包裹进行称重扫描入库之后，系统将自动发送短信通知客人当前包裹已经入库，系统后台提示客人可以进行相应的分箱合包操作和确认国内收货地址以及收货人信息，当客人确认信息无误后完成在线支付，系统将自动预分配国内快递单号并提示打印电子面单进行换单操作，最后海外仓库人员进行包裹称重扫描出库完成发货，系统后台实时更新通关状态和流转状态（可进行海关接口对接或物流承运商系统数据嵌入），并在国内快递投递之前提醒客人注意查收。</p>\r\n                </div>\r\n                <div class=\"wrap\">\r\n                    <img class=\"pro-img\" src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/images/pro8.png\">\r\n                </div>\r\n            </div>\r\n        </div>\r\n        <div class=\"bg-white\">\r\n            <div class=\"content pt170 pb170\">\r\n                <div class=\"nav-wrap\">\r\n                    <span class=\"sel\">转运后台管理功能参数</span>\r\n                    <span>转运前台管理功能参数</span>\r\n                    <span>预约演示</span>\r\n                </div>\r\n                <div class=\"cont-list\">\r\n                    <div>\r\n                        <table class=\"table-contrl\">\r\n                            <tr>\r\n                                <td class=\"title-n\" colspan=\"2\">模块</td>\r\n                                <td class=\"title-n\">功能描述</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"one-n\" rowspan=\"6\">转运后台管理</td>\r\n                                <td class=\"two-n\">快递到货</td>\r\n                                <td>转运业务电商平台发货到快递包裹到达公司时做扫描登记之用</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">快递单查询</td>\r\n                                <td>查看所有公司到货的快递包裹信息,并可以手工上架绑定库位</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">包裹上架</td>\r\n                                <td>对需要滞留在公司的包裹进行上架扫描</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">下架单打印</td>\r\n                                <td>客户货物到齐后系统才能生成下架单,打印下架单后根据指示完成下架操作</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">库存包裹盘点</td>\r\n                                <td>对滞留在公司已上架的包裹进行盘点</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">订单打包签入</td>\r\n                                <td>订单打包确认操作，称重打印派送标签等</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"one-n\" rowspan=\"7\">系统设置</td>\r\n                                <td class=\"two-n\">员工管理</td>\r\n                                <td>员工的新增、修改，员工通过工号进行登陆</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">组织机构</td>\r\n                                <td>维护公司的组织机构点，分公司等</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">员工分组</td>\r\n                                <td>建立员工的层级归属关系，如组长与组员的关系</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">角色管理</td>\r\n                                <td>将系统功能进行整合，绑定到不同的角色，方便分配到具体员工</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">权限分配</td>\r\n                                <td>将员工工号与具体的角色绑定，以快速分配相应的功能权限</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">国家资料维护</td>\r\n                                <td>可以自行维护系统中不存在的国家信息</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">城市资料维护</td>\r\n                                <td>可以自行维护系统中不存在的城市信息</td>\r\n                            </tr>\r\n                        </table>\r\n                    </div>\r\n                    <div class=\"display-none\">\r\n                        <table class=\"table-contrl\">\r\n                            <tr>\r\n                                <td class=\"title-n\" colspan=\"2\">模块</td>\r\n                                <td class=\"title-n\">功能描述</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"one-n\" rowspan=\"10\">转运前台管理</td>\r\n                                <td class=\"two-n\">登陆页面</td>\r\n                                <td>用于客户输入账号密码登陆</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">新增包裹</td>\r\n                                <td>适用于票件较少的客户进行单个录入</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">批量导入</td>\r\n                                <td>适用于平台或自主商城导出的订单表格批量导入</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">我的包裹</td>\r\n                                <td>客户查看所录包裹的详细信息</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">问题包裹管理</td>\r\n                                <td>对库存操作过程中产生的问题件进行回复</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">我的海外仓库</td>\r\n                                <td>客户查看公司开放的海外收件地址</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">收货地址管理</td>\r\n                                <td>客户管理自己的真实收件地址</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">账户收支管理</td>\r\n                                <td>查看个人账户流水情况</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">个人信息管理</td>\r\n                                <td>查看个人信息，修改基础资料</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">包裹认领</td>\r\n                                <td>对无主包裹或无信息包裹进行认领，补充信息</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"one-n\" rowspan=\"4\">账户设置</td>\r\n                                <td class=\"two-n\">发件人资料管理</td>\r\n                                <td>维护客户的常用发件人资料信息</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">API设置</td>\r\n                                <td>系统提供公共的订单API接口，客户可自行对接</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">用户中心</td>\r\n                                <td>用户可以增加子账号和分配子账号权限</td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td class=\"two-n\">密码修改</td>\r\n                                <td>修改账号的登陆密码</td>\r\n                            </tr>\r\n                        </table>\r\n                    </div>\r\n                    <div class=\"display-none\">\r\n                        <form class=\"from-cont\" style=\"margin-top:0;\" id=\"feedback_form\" name=\"feedback_form\" url=\"http://service.ruantongbao.com/SystemService.ashx?method=SaveInterestedBuyers\">\r\n                            <input type=\"hidden\" id=\"system\" name=\"system\" value=\"TMS\" />\r\n                            <p class=\"f-row\">\r\n                                <label class=\"label-name must-control\">公司名称：</label>\r\n                                <input class=\"f-control\" id=\"company_name\" name=\"company_name\" type=\"text\" datatype=\"*1-50\" nullmsg=\"请输入公司名称！\" errormsg=\"\" sucmsg=\" \" />\r\n                            </p>\r\n                            <p class=\"f-row\">\r\n                                <label class=\"label-name must-control\">姓名：</label>\r\n                                <input id=\"name\" name=\"name\" class=\"f-control\" type=\"text\" datatype=\"*1-20\" nullmsg=\"请输入姓名！\" errormsg=\"\" sucmsg=\" \" />\r\n                            </p>\r\n                            <p class=\"f-row\">\r\n                                <label class=\"label-name must-control\">联系电话：</label>\r\n                                <input id=\"phone\" name=\"phone\" class=\"f-control\" type=\"text\" datatype=\"*1-25\" nullmsg=\"请输入联系电话！\" errormsg=\"请输入正确的联系电话\" sucmsg=\" \" />\r\n                            </p>\r\n                            <p class=\"f-row\">\r\n                                <label class=\"label-name must-control\">所在城市：</label>\r\n                                <input class=\"f-control\" id=\"city\" name=\"city\" datatype=\"*1-50\" errormsg=\" \" nullmsg=\"请输入所在城市！\" sucmsg=\" \" type=\"text\" />\r\n                            </p>\r\n                            <p class=\"f-row clearfix\">\r\n                                <label style=\"top:-4px;\" class=\"label-name must-control\">意向产品：</label>\r\n                                <label class=\"checkbox\"><input name=\"model\" value=\"国际物流\" type=\"checkbox\">国际物流</label>\r\n                                <label class=\"checkbox\"><input name=\"model\" value=\"海外仓储\" type=\"checkbox\">海外仓储</label>\r\n                                <label class=\"checkbox\"><input name=\"model\" value=\"转运进出口\" type=\"checkbox\" datatype=\"*\" nullmsg=\"至少选择一个意向产品！\" sucmsg=\" \">转运进出口</label>\r\n                            </p>\r\n                            <p class=\"f-row\">\r\n                                <label class=\"label-name must-control\">系统预算：</label>\r\n                                <select class=\"select-contrl\" name=\"reserved_field1\" id=\"systemBudget\" datatype=\"*\" nullmsg=\"请选择系统预算金额！\" sucmsg=\" \">\r\n                                    <option value=\"\">请选择</option>\r\n                                    <option value=\"3-5万\">3-5万</option>\r\n                                    <option value=\"5-10万\">5-10万</option>\r\n                                    <option value=\"10+万\">10+万</option>\r\n                                </select>\r\n                                <span class=\"hint-info\">\r\n                                    <i>适合国际快递、邮政小包、专线为主的普通代理商</i>\r\n                                    <i>适合运营自主专线的跨境物流商</i>\r\n                                    <i>适合定制开发需求较多的大型跨境物流商</i>\r\n                                </span>\r\n                            </p>\r\n                            <p class=\"f-row\">\r\n                                <label class=\"label-name must-control\">验证码：</label>\r\n                                <input class=\"f-control\" id=\"txtCode\" name=\"txtCode\" type=\"text\" placeholder=\"验证码\" style=\"width:100px;\" datatype=\"*\" nullmsg=\"请输入验证码\" sucmsg=\" \" />\r\n                                <a id=\"verifyCode\" href=\"javascript:;\" onclick=\"ToggleCode(this, '/tools/verify_code.ashx');return false;\"><img src=\"/tools/verify_code.ashx\" width=\"80\" height=\"30\" style=\"vertical-align:middle;\" /> 看不清楚？</a>\r\n                            </p>\r\n\r\n                            <p class=\"f-row f-bottom\">\r\n                                <input id=\"btnSubmit\" name=\"btnSubmit\" class=\"submit-btn\" type=\"submit\" value=\"提交预约\" />\r\n                            </p>\r\n                        </form>\r\n                        <input id=\"turl\" type=\"hidden\" value='");
	templateBuilder.Append(linkurl("product_service2"));

	templateBuilder.Append("' />\r\n                    </div>\r\n                </div>\r\n            </div>\r\n        </div>\r\n    </div>\r\n\r\n    ");

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


	templateBuilder.Append("\r\n\r\n    <script>\r\n        $(function () {\r\n            $(\".nav-wrap span\").click(function () {\r\n                $(this).addClass(\"sel\").siblings().removeClass(\"sel\");\r\n                $(\".cont-list >div\").hide().eq($(this).index()).fadeIn();\r\n            });\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery.form.min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/Validform_v5.3.2_min.js\"></");
	templateBuilder.Append("script>\r\n    <script type=\"text/javascript\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/artdialog/dialog-plus-min.js\"></");
	templateBuilder.Append("script>\r\n    <script>\r\n        //切换验证码\r\n        function ToggleCode(obj, codeurl) {\r\n            $(obj).children(\"img\").eq(0).attr(\"src\", codeurl + \"?time=\" + Math.random());\r\n            return false;\r\n        }\r\n\r\n        /*表单AJAX提交封装(包含验证)\r\n        ------------------------------------------------*/\r\n        function AjaxInitForm(formObj, btnObj, isDialog, urlObj, callback) {\r\n            var argNum = arguments.length; //参数个数\r\n            $(formObj).Validform({\r\n                tiptype: 3,\r\n                callback: function (form) {\r\n                    $(form).ajaxSubmit({\r\n                        beforeSubmit: formRequest,\r\n                        success: formResponse,\r\n                        error: formError,\r\n                        url: $(formObj).attr(\"url\"),\r\n                        type: \"post\",\r\n                        dataType: \"jsonp\",\r\n                        timeout: 60000,\r\n                        jsonp: \"callbackparam\"\r\n                    });\r\n                    return false;\r\n                }\r\n            });\r\n\r\n            //表单提交前\r\n            function formRequest(formData, jqForm, options) {\r\n                $(btnObj).prop(\"disabled\", true);\r\n                $(btnObj).val(\"提交中...\");\r\n            }\r\n\r\n            //表单提交后\r\n            function formResponse(data, textStatus) {\r\n                if (data.status == 1) {\r\n                    $(btnObj).val(\"提交成功\");\r\n                    //是否提示，默认不提示\r\n                    if (isDialog == 1) {\r\n                        var d = dialog({ content: \"预约演示提交成功，我们尽快与您联系！\" }).show();\r\n                        setTimeout(function () {\r\n                            d.close().remove();\r\n                            if (argNum == 5) {\r\n                                callback();\r\n                            } else if (data.url) {\r\n                                location.href = data.url;\r\n                            } else if ($(urlObj).length > 0 && $(urlObj).val() != \"\") {\r\n                                location.href = $(urlObj).val();\r\n                            } else {\r\n                                location.reload();\r\n                            }\r\n                        }, 2000);\r\n                    } else {\r\n                        if (argNum == 5) {\r\n                            callback();\r\n                        } else if (data.url) {\r\n                            location.href = data.url;\r\n                        } else if ($(urlObj)) {\r\n                            location.href = $(urlObj).val();\r\n                        } else {\r\n                            location.reload();\r\n                        }\r\n                    }\r\n                }\r\n\r\n            }\r\n\r\n            //表单提交出错\r\n            function formError(XMLHttpRequest, textStatus, errorThrown) {\r\n                dialog({ title: '提示', content: '状态：' + textStatus + '；出错提示：' + errorThrown, okValue: '确定', ok: function () { } }).showModal();\r\n                $(btnObj).prop(\"disabled\", false);\r\n                $(btnObj).val(\"再次提交\");\r\n            }\r\n            return false;\r\n\r\n        }\r\n\r\n        $(document).ready(function (e) {\r\n            //初始化发表评论表单\r\n            AjaxInitForm('#feedback_form', '#btnSubmit', 1, '#turl');\r\n\r\n            //选择系统预算显示提示\r\n            $(\"#systemBudget\").change(function () {\r\n                var val = $(this).val();\r\n                var hintInfo = $('.hint-info i');\r\n                hintInfo.hide();\r\n                if (val == \"3-5万\") {\r\n                    hintInfo.eq(0).show();\r\n                }\r\n                if (val == \"5-10万\") {\r\n                    hintInfo.eq(1).show();\r\n                }\r\n                if (val == \"10+万\") {\r\n                    hintInfo.eq(2).show();\r\n                }\r\n            })\r\n        });\r\n    </");
	templateBuilder.Append("script>\r\n\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
