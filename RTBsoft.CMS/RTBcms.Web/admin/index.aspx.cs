﻿using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RTBcms.Common;

namespace RTBcms.Web.admin
{
    public partial class index : Web.UI.ManagePage
    {
        protected Model.manager admin_info; //管理员信息

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                admin_info = GetAdminInfo();
            }
        }

        //安全退出
        protected void lbtnExit_Click(object sender, EventArgs e)
        {
            Session[DTKeys.SESSION_ADMIN_INFO] = null;
            Utils.WriteCookie("AdminName", "RTBcms", -14400);
            Utils.WriteCookie("AdminPwd", "RTBcms", -14400);
            Response.Redirect("login.aspx");
        }

    }
}