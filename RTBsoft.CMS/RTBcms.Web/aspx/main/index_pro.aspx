<%@ Page Language="C#" AutoEventWireup="true" Inherits="RTBcms.Web.UI.Page.article_show" ValidateRequest="false" %>
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
	const string channel = "product_service";

	templateBuilder.Append("<!DOCTYPE html>\r\n<html>\r\n<head>\r\n        ");
	string category_title = get_category_title(model.category_id,"产品服务");

	templateBuilder.Append("\r\n    <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"/>\r\n    <title></title>\r\n    <meta charset=\"utf-8\" />\r\n    <link href=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/css/style.css?v=1.1\" rel=\"stylesheet\" type=\"text/css\" />\r\n    <script type=\"text/javascript\" charset=\"utf-8\" src=\"");
	templateBuilder.Append(Utils.ObjectToStr(config.webpath));
	templateBuilder.Append("scripts/jquery/jquery-3.3.1.min.js\"></");
	templateBuilder.Append("script>\r\n</head>\r\n<body style=\"min-width:100%;\">\r\n<div class=\"prc-cont clearfix\">\r\n    <img src=\"");
	templateBuilder.Append(Utils.ObjectToStr(model.img_url));
	templateBuilder.Append("\" class=\"prc-img\" />\r\n    <ul class=\"prc-info\">\r\n        <li class=\"prc-title\">");
	templateBuilder.Append(Utils.ObjectToStr(model.title));
	templateBuilder.Append("</li>\r\n        <li class=\"son-row\">\r\n            <h4 class=\"son-txt\">" + Utils.ObjectToStr(model.fields["site_pro_type"]) + "</h4>\r\n            <div class=\"o-txt\" id=\"site-spec\"><input type=\"hidden\" value=\"" + Utils.ObjectToStr(model.fields["site_spec"]) + "\" /></div>  \r\n        </li>\r\n        <li class=\"son-row\">\r\n            <h4 class=\"son-txt\">安装注意事项</h4>\r\n            <div class=\"o-txt\" id=\"notice\"><input type=\"hidden\" value=\"" + Utils.ObjectToStr(model.fields["site_notice"]) + "\" /></div>  \r\n        </li>\r\n    </ul>\r\n</div>\r\n<script src=\"");
	templateBuilder.Append("/templates/main");
	templateBuilder.Append("/js/pro.js?v=1.0\"></");
	templateBuilder.Append("script>\r\n</body>\r\n</html>\r\n");
	Response.Write(templateBuilder.ToString());
}
</script>
