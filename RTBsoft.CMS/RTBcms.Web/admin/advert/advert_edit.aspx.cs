using System;
using System.Data;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RTBcms.Common;

namespace RTBcms.Web.admin.advert
{
    public partial class advert_edit : Web.UI.ManagePage
    {
        private string action = DTEnums.ActionEnum.Add.ToString(); //操作类型
        private int id = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            string _action = DTRequest.GetQueryString("action");

            if (!string.IsNullOrEmpty(_action) && _action == DTEnums.ActionEnum.Edit.ToString())
            {
                this.action = DTEnums.ActionEnum.Edit.ToString();//修改类型
                this.id = DTRequest.GetQueryInt("id");
                if (this.id == 0)
                {
                    JscriptMsg("传输参数不正确！", "back");
                    return;
                }
                if (!new BLL.advert().Exists(this.id))
                {
                    JscriptMsg("记录不存在或已被删除！", "back");
                    return;
                }
            }
            if (!Page.IsPostBack)
            {
                ChkAdminLevel("manager_advert", DTEnums.ActionEnum.View.ToString()); //检查权限
                if (action == DTEnums.ActionEnum.Edit.ToString()) //修改
                {
                    ShowInfo(this.id);
                }
            }
        }

        #region 赋值操作=================================
        private void ShowInfo(int _id)
        {
            BLL.advert bll = new BLL.advert();
            Model.advert model = bll.GetModel(_id);
            this.txtTitle.Text = model.title;
            this.rblType.SelectedValue = model.type.ToString();
            this.txtRemark.Text = model.remark;
            //this.txtViewWidth.Text = model.view_width.ToString();
            //this.txtViewHeight.Text = model.view_height.ToString();
            this.rblTarget.SelectedValue = model.target;
        }
        #endregion

        #region 增加操作=================================
        private bool DoAdd()
        {
            Model.advert model = new Model.advert();
            BLL.advert bll = new BLL.advert();
            model.title = this.txtTitle.Text.Trim();
            model.type = int.Parse(this.rblType.SelectedValue);
            model.remark = this.txtRemark.Text.Trim();
            //model.view_width = int.Parse(this.txtViewWidth.Text.Trim());
            //model.view_height = int.Parse(this.txtViewHeight.Text.Trim());
            model.target = this.rblTarget.SelectedValue;
            model.add_time = DateTime.Now;
            if (bll.Add(model) > 0)
            {
                AddAdminLog(DTEnums.ActionEnum.Add.ToString(), "添加广告:" + model.title); //记录日志
                return true;
            }

            return false;
        }
        #endregion

        #region 修改操作=================================
        private bool DoEdit(int _id)
        {
            bool result = false;
            BLL.advert bll = new BLL.advert();
            Model.advert model = bll.GetModel(_id);

            model.title = this.txtTitle.Text.Trim();
            model.type = int.Parse(this.rblType.SelectedValue);
            model.remark = this.txtRemark.Text.Trim();
            //model.view_width = int.Parse(this.txtViewWidth.Text.Trim());
            //model.view_height = int.Parse(this.txtViewHeight.Text.Trim());
            model.target = this.rblTarget.SelectedValue;

            if (bll.Update(model))
            {
                AddAdminLog(DTEnums.ActionEnum.Edit.ToString(), "修改广告:" + model.title); //记录日志
                result = true;
            }

            return result;
        }
        #endregion

        //保存
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (action == DTEnums.ActionEnum.Edit.ToString()) //修改
            {
                ChkAdminLevel("manager_advert", DTEnums.ActionEnum.Edit.ToString()); //检查权限
                if (!DoEdit(this.id))
                {
                    JscriptMsg("保存过程中发生错误！", "");
                    return;
                }
                JscriptMsg("修改广告信息成功！", "advert_list.aspx");
            }
            else //添加
            {
                ChkAdminLevel("manager_advert", DTEnums.ActionEnum.Add.ToString()); //检查权限
                if (!DoAdd())
                {
                    JscriptMsg("保存过程中发生错误！", "");
                    return;
                }
                JscriptMsg("添加广告信息成功！", "advert_list.aspx");
            }
        }

    }
}