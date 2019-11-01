using RTBcms.Web.Plugin.OnlineService.BLL;
using RTBcms.Web.UI;
using System;
using System.Data;

namespace RTBcms.Web.Plugin.OnlineService
{
	public class online_service : BasePage
	{
		protected override void ShowPage()
		{
		}

		public DataTable get_online_service_list(int top, string strwhere)
		{
			string text = "is_lock=1";
			if (!string.IsNullOrEmpty(strwhere))
			{
				text = text + " and " + strwhere;
			}
			return new RTBcms.Web.Plugin.OnlineService.BLL.online_service().GetList(top, text).Tables[0];
		}
	}
}
