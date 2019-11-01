using System;
using System.Text;
using System.Data;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RTBcms.Common;

namespace RTBcms.Web.admin.advert
{
    public partial class advert_list : Web.UI.ManagePage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ChkAdminLevel("manager_advert", DTEnums.ActionEnum.View.ToString()); //检查权限
                RptBind("id>0");
            }
        }

        #region 数据绑定=================================
        private void RptBind(string _strWhere)
        {
            BLL.advert bll = new BLL.advert();
            this.rptList.DataSource = bll.GetList(_strWhere);
            this.rptList.DataBind();
        }
        #endregion

        //批量删除
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            ChkAdminLevel("manager_advert", DTEnums.ActionEnum.Delete.ToString()); //检查权限
            int sucCount = 0;
            int errorCount = 0;
            BLL.banner bll = new BLL.banner();
            for (int i = 0; i < rptList.Items.Count; i++)
            {
                int id = Convert.ToInt32(((HiddenField)rptList.Items[i].FindControl("hidId")).Value);
                CheckBox cb = (CheckBox)rptList.Items[i].FindControl("chkId");
                if (cb.Checked)
                {
                    //删除成功后对应的目录及文件
                    if (bll.Delete(id))
                    {
                        sucCount += 1;
                    }
                    else
                    {
                        errorCount += 1;
                    }
                }
            }
            AddAdminLog(DTEnums.ActionEnum.Delete.ToString(), "删除广告成功" + sucCount + "条，失败" + errorCount + "条"); //记录日志
            JscriptMsg("删除成功" + sucCount + "条，失败" + errorCount + "条！", "advert_list.aspx");
        }

        protected string GetTypeName(string typeId)
        {
            switch (typeId)
            {
                case "1":
                    return "文字";

                case "2":
                    return "图片";

                case "3":
                    return "幻灯片";

                case "4":
                    return "动画";

                case "5":
                    return "视频";

                case "6":
                    return "代码";
            }
            return "其它";
        }
    }
}