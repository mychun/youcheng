using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using RTBcms.Common;

namespace RTBcms.Web.UI
{
    public partial class BasePage : System.Web.UI.Page
    {
        #region 列表标签======================================
        /// <summary>
        /// 文章列表
        /// </summary>
        /// <param name="channel_name">频道名称</param>
        /// <param name="top">显示条数</param>
        /// <param name="strwhere">查询条件</param>
        /// <returns>DataTable</returns>
        protected DataTable get_channel_list(int top, string strwhere)
        {
            DataTable dt = new BLL.channel().GetList(top, strwhere, "sort_id asc").Tables[0];
            return dt;
        }
        #endregion
    }
}
