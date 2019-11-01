using RTBcms.BLL;
using RTBcms.Model;
using RTBcms.Web.Plugin.OnlineService.DAL;
using RTBcms.Web.Plugin.OnlineService.Model;
using System;
using System.Data;

namespace RTBcms.Web.Plugin.OnlineService.BLL
{
	public class online_service
	{
		private readonly RTBcms.Model.siteconfig siteConfig = new RTBcms.BLL.siteconfig().loadConfig();

		private readonly RTBcms.Web.Plugin.OnlineService.DAL.online_service dal;

		public online_service()
		{
			this.dal = new RTBcms.Web.Plugin.OnlineService.DAL.online_service(this.siteConfig.sysdatabaseprefix);
		}

		public bool Exists(int id)
		{
			return this.dal.Exists(id);
		}

		public int Add(RTBcms.Web.Plugin.OnlineService.Model.online_service model)
		{
			return this.dal.Add(model);
		}

		public void UpdateField(int id, string strValue)
		{
			this.dal.UpdateField(id, strValue);
		}

		public bool Update(RTBcms.Web.Plugin.OnlineService.Model.online_service model)
		{
			return this.dal.Update(model);
		}

		public bool Delete(int id)
		{
			return this.dal.Delete(id);
		}

		public RTBcms.Web.Plugin.OnlineService.Model.online_service GetModel(int id)
		{
			return this.dal.GetModel(id);
		}

		public DataSet GetList(string strWhere)
		{
			return this.dal.GetList(strWhere);
		}

		public DataSet GetList(int Top, string strWhere)
		{
			return this.dal.GetList(Top, strWhere);
		}

		public DataSet GetList(int pageSize, int pageIndex, string strWhere, string filedOrder, out int recordCount)
		{
			return this.dal.GetList(pageSize, pageIndex, strWhere, filedOrder, out recordCount);
		}
	}
}
