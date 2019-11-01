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
    public partial class bar_list : Web.UI.ManagePage
    {
        protected int aid;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.aid = DTRequest.GetQueryInt("aid");
            if (this.aid < 1)
            {
                base.JscriptMsg("传输参数不正确！", "back");
            }
            else if (!new BLL.advert().Exists(this.aid))
            {
                base.JscriptMsg("广告位不存在或已删除！", "back");
            }
            else
            {
                this.LitTitle.Text = new BLL.advert().GetTitle(this.aid);
                if (!this.Page.IsPostBack)
                {
                    ChkAdminLevel("manager_advert", DTEnums.ActionEnum.View.ToString()); //检查权限
                    this.RptBind("aid=" + this.aid);
                }
            }
        }

        #region 数据绑定=================================
        private void RptBind(string _strWhere)
        {
            BLL.advert_banner bll = new BLL.advert_banner();
            this.rptList.DataSource = bll.GetList(_strWhere);
            this.rptList.DataBind();
        }
        #endregion

        //保存排序
        protected void btnSave_Click(object sender, EventArgs e)
        {
            ChkAdminLevel("manager_advert", DTEnums.ActionEnum.Edit.ToString()); //检查权限
            BLL.advert_banner bll = new BLL.advert_banner();
            for (int i = 0; i < rptList.Items.Count; i++)
            {
                int id = Convert.ToInt32(((HiddenField)rptList.Items[i].FindControl("hidId")).Value);
                int sortId;
                if (!int.TryParse(((TextBox)rptList.Items[i].FindControl("txtSortId")).Text.Trim(), out sortId))
                {
                    sortId = 99;
                }
                bll.UpdateField(id, string.Format("sort_id={0}", sortId));
            }
            AddAdminLog(DTEnums.ActionEnum.Edit.ToString(), "保存站点排序"); //记录日志
            JscriptMsg("保存排序成功！", "bar_list.aspx");
        }

        //批量删除
        protected void btnDelete_Click(object sender, EventArgs e)
        {
            ChkAdminLevel("manager_advert", DTEnums.ActionEnum.Delete.ToString()); //检查权限
            int sucCount = 0;
            int errorCount = 0;
            BLL.advert_banner bll = new BLL.advert_banner();
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
            AddAdminLog(DTEnums.ActionEnum.Delete.ToString(), "删除广告内容成功" + sucCount + "条，失败" + errorCount + "条"); //记录日志
            JscriptMsg("删除成功" + sucCount + "条，失败" + errorCount + "条！", "bar_list.aspx");
        }
    }
}