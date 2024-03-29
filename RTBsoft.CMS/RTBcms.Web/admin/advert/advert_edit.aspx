﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="advert_edit.aspx.cs" Inherits="RTBcms.Web.admin.advert.advert_edit" ValidateRequest="false" %>
<%@ Import namespace="RTBcms.Common" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,initial-scale=1.0,user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<title>广告管理</title>
<link href="../../scripts/artdialog/ui-dialog.css" rel="stylesheet" type="text/css" />
<link href="../skin/default/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" charset="utf-8" src="../../scripts/jquery/jquery-1.11.2.min.js"></script>
<script type="text/javascript" charset="utf-8" src="../../scripts/jquery/Validform_v5.3.2_min.js"></script>
<script type="text/javascript" charset="utf-8" src="../../scripts/artdialog/dialog-plus-min.js"></script>
<script type="text/javascript" charset="utf-8" src="../../scripts/webuploader/webuploader.min.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/uploader.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/laymain.js"></script>
<script type="text/javascript" charset="utf-8" src="../js/common.js"></script>
<script type="text/javascript">
    $(function () {
        //初始化表单验证
        $("#form1").initValidform();
    });
</script>
</head>

<body class="mainbody">
<form id="form1" runat="server">
<!--导航栏-->
<div class="location">
  <a href="advert_list.aspx" class="back"><i></i><span>返回列表页</span></a>
  <a href="../center.aspx" class="home"><i></i><span>首页</span></a>
  <i class="arrow"></i>
  <a href="advert_list.aspx"><span>广告管理</span></a>
  <i class="arrow"></i>
  <span>编辑广告</span>
</div>
<div class="line10"></div>
<!--/导航栏-->

<!--内容-->
<div id="floatHead" class="content-tab-wrap">
  <div class="content-tab">
    <div class="content-tab-ul-wrap">
      <ul>
        <li><a class="selected" href="javascript:;">广告设置</a></li>
      </ul>
    </div>
  </div>
</div>

<div class="tab-content">
  <dl>
    <dt>广告位名称</dt>
    <dd>
      <asp:TextBox ID="txtTitle" runat="server" CssClass="input normal"></asp:TextBox>
    </dd>
  </dl>
  <dl>
    <dt>类型</dt>
    <dd>
      <div class="rule-multi-radio">
        <asp:RadioButtonList ID="rblType" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
                         <asp:ListItem Selected="True" Value="1">文字</asp:ListItem>
                         <asp:ListItem Value="2">图片</asp:ListItem>
                         <asp:ListItem Value="3">幻灯片</asp:ListItem>
                         <asp:ListItem Value="4">动画</asp:ListItem>
                         <asp:ListItem Value="5">FLV视频</asp:ListItem>
                         <asp:ListItem Value="6">代码</asp:ListItem>
                         <asp:ListItem Value="0">其他</asp:ListItem>
          </asp:RadioButtonList>
      </div>
    </dd>
  </dl>
  <dl>
    <dt>备注说明</dt>
    <dd>
       <asp:TextBox ID="txtRemark" runat="server" maxlength="255" TextMode="MultiLine" CssClass="input"></asp:TextBox>
    </dd>
  </dl>
  <%--<dl>
    <dt>宽度</dt>
    <dd>
      <asp:TextBox ID="txtViewWidth" runat="server" CssClass="input small" datatype="n" sucmsg=" "></asp:TextBox>
    </dd>
  </dl>
  <dl>
    <dt>高度</dt>
    <dd>
      <asp:TextBox ID="txtViewHeight" runat="server" CssClass="input small" datatype="n" sucmsg=" "></asp:TextBox>
    </dd>
  </dl>--%>
  <dl>
    <dt>链接目标</dt>
    <dd>
      <div class="rule-multi-radio">
        <asp:RadioButtonList ID="rblTarget" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow">
        <asp:ListItem Value="_blank" Selected="True">新窗口</asp:ListItem>
        <asp:ListItem Value="_self">原窗口</asp:ListItem>
        </asp:RadioButtonList>
      </div>
    </dd>
  </dl>
</div>

<!--/内容-->

<!--工具栏-->
<div class="page-footer">
  <div class="btn-wrap">
    <asp:Button ID="btnSubmit" runat="server" Text="提交保存" CssClass="btn" onclick="btnSubmit_Click" />
    <input name="btnReturn" type="button" value="返回上一页" class="btn yellow" onclick="javascript:history.back(-1);" />
  </div>
</div>
<!--/工具栏-->
</form>
</body>
</html>
