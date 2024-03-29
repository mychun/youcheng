﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Data.OleDb;
using RTBcms.DBUtility;
using RTBcms.Common;

namespace RTBcms.DAL
{
	/// <summary>
	/// 数据访问类:频道站点
	/// </summary>
	public partial class channel_site
	{
        private string databaseprefix; //数据库表名前缀
        public channel_site(string _databaseprefix)
		{
            databaseprefix = _databaseprefix;
        }

        #region 基本方法================================
        /// <summary>
        /// 得到最大ID
        /// </summary>
        private int GetMaxId(OleDbConnection conn, OleDbTransaction trans)
        {
            string strSql = "select top 1 id from " + databaseprefix + "channel_site order by id desc";
            object obj = DbHelperOleDb.GetSingle(conn, trans, strSql);
            if (obj == null)
            {
                return 0;
            }
            else
            {
                return int.Parse(obj.ToString());
            }
        }

        /// <summary>
		/// 是否存在该记录
		/// </summary>
		public bool Exists(int id)
		{
			StringBuilder strSql=new StringBuilder();
            strSql.Append("select count(1) from " + databaseprefix + "channel_site");
			strSql.Append(" where id=@id");
			OleDbParameter[] parameters = {
					new OleDbParameter("@id", OleDbType.Integer,4)};
			parameters[0].Value = id;

			return DbHelperOleDb.Exists(strSql.ToString(),parameters);
		}

        /// <summary>
        /// 查询生成目录名是否存在
        /// </summary>
        public bool Exists(string build_path)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select count(1) from " + databaseprefix + "channel_site");
            strSql.Append(" where build_path=@build_path ");
            OleDbParameter[] parameters = {
					new OleDbParameter("@build_path", OleDbType.VarChar,100)};
            parameters[0].Value = build_path;

            return DbHelperOleDb.Exists(strSql.ToString(), parameters);
        }

		/// <summary>
		/// 增加一条数据
		/// </summary>
		public int Add(Model.channel_site model)
		{
            using (OleDbConnection conn = new OleDbConnection(DbHelperOleDb.connectionString))
            {
                conn.Open();
                using (OleDbTransaction trans = conn.BeginTransaction())
                {
                    try
                    {
                        //添加主表信息
			            StringBuilder strSql=new StringBuilder();
                        strSql.Append("insert into " + databaseprefix + "channel_site(");
			            strSql.Append("title,build_path,templet_path,[domain],[name],logo,company,address,tel,fax,email,crod,copyright,seo_title,seo_keyword,seo_description,is_default,sort_id)");
			            strSql.Append(" values (");
			            strSql.Append("@title,@build_path,@templet_path,@domain,@name,@logo,@company,@address,@tel,@fax,@email,@crod,@copyright,@seo_title,@seo_keyword,@seo_description,@is_default,@sort_id)");
			            OleDbParameter[] parameters = {
					            new OleDbParameter("@title", OleDbType.VarChar,100),
					            new OleDbParameter("@build_path", OleDbType.VarChar,100),
					            new OleDbParameter("@templet_path", OleDbType.VarChar,100),
					            new OleDbParameter("@domain", OleDbType.VarChar,255),
					            new OleDbParameter("@name", OleDbType.VarChar,255),
					            new OleDbParameter("@logo", OleDbType.VarChar,255),
					            new OleDbParameter("@company", OleDbType.VarChar,255),
					            new OleDbParameter("@address", OleDbType.VarChar,255),
					            new OleDbParameter("@tel", OleDbType.VarChar,30),
					            new OleDbParameter("@fax", OleDbType.VarChar,30),
					            new OleDbParameter("@email", OleDbType.VarChar,50),
					            new OleDbParameter("@crod", OleDbType.VarChar,100),
					            new OleDbParameter("@copyright", OleDbType.VarChar),
					            new OleDbParameter("@seo_title", OleDbType.VarChar,255),
					            new OleDbParameter("@seo_keyword", OleDbType.VarChar,255),
					            new OleDbParameter("@seo_description", OleDbType.VarChar,500),
					            new OleDbParameter("@is_default", OleDbType.Integer,4),
					            new OleDbParameter("@sort_id", OleDbType.Integer,4)};
			            parameters[0].Value = model.title;
			            parameters[1].Value = model.build_path;
			            parameters[2].Value = model.templet_path;
			            parameters[3].Value = model.domain;
			            parameters[4].Value = model.name;
			            parameters[5].Value = model.logo;
			            parameters[6].Value = model.company;
			            parameters[7].Value = model.address;
			            parameters[8].Value = model.tel;
			            parameters[9].Value = model.fax;
			            parameters[10].Value = model.email;
			            parameters[11].Value = model.crod;
			            parameters[12].Value = model.copyright;
			            parameters[13].Value = model.seo_title;
			            parameters[14].Value = model.seo_keyword;
			            parameters[15].Value = model.seo_description;
			            parameters[16].Value = model.is_default;
			            parameters[17].Value = model.sort_id;
                        DbHelperOleDb.ExecuteSql(conn, trans, strSql.ToString(), parameters);
                        //取得新插入的ID
                        model.id = GetMaxId(conn, trans);
                        //添加导航菜单
                        new DAL.navigation(databaseprefix).Add(conn, trans, "sys_contents", "channel_" + model.build_path, model.title, "", model.sort_id, 0, "Show");
                        trans.Commit();
                    }
                    catch
                    {
                        trans.Rollback();
                        return 0;
                    }
                }
            }
            return model.id;
		}

		/// <summary>
		/// 更新一条数据
		/// </summary>
        public bool Update(Model.channel_site model, string old_build_path)
		{
            using (OleDbConnection conn = new OleDbConnection(DbHelperOleDb.connectionString))
            {
                conn.Open();
                using (OleDbTransaction trans = conn.BeginTransaction())
                {
                    try
                    {
                        //修改主表信息
			            StringBuilder strSql=new StringBuilder();
                        strSql.Append("update " + databaseprefix + "channel_site set ");
			            strSql.Append("title=@title,");
			            strSql.Append("build_path=@build_path,");
			            strSql.Append("templet_path=@templet_path,");
			            strSql.Append("[domain]=@domain,");
			            strSql.Append("[name]=@name,");
			            strSql.Append("logo=@logo,");
			            strSql.Append("company=@company,");
			            strSql.Append("address=@address,");
			            strSql.Append("tel=@tel,");
			            strSql.Append("fax=@fax,");
			            strSql.Append("email=@email,");
			            strSql.Append("crod=@crod,");
			            strSql.Append("copyright=@copyright,");
			            strSql.Append("seo_title=@seo_title,");
			            strSql.Append("seo_keyword=@seo_keyword,");
			            strSql.Append("seo_description=@seo_description,");
			            strSql.Append("is_default=@is_default,");
			            strSql.Append("sort_id=@sort_id");
			            strSql.Append(" where id=@id");
			            OleDbParameter[] parameters = {
					            new OleDbParameter("@title", OleDbType.VarChar,100),
					            new OleDbParameter("@build_path", OleDbType.VarChar,100),
					            new OleDbParameter("@templet_path", OleDbType.VarChar,100),
					            new OleDbParameter("@domain", OleDbType.VarChar,255),
					            new OleDbParameter("@name", OleDbType.VarChar,255),
					            new OleDbParameter("@logo", OleDbType.VarChar,255),
					            new OleDbParameter("@company", OleDbType.VarChar,255),
					            new OleDbParameter("@address", OleDbType.VarChar,255),
					            new OleDbParameter("@tel", OleDbType.VarChar,30),
					            new OleDbParameter("@fax", OleDbType.VarChar,30),
					            new OleDbParameter("@email", OleDbType.VarChar,50),
					            new OleDbParameter("@crod", OleDbType.VarChar,100),
					            new OleDbParameter("@copyright", SqlDbType.Text),
					            new OleDbParameter("@seo_title", OleDbType.VarChar,255),
					            new OleDbParameter("@seo_keyword", OleDbType.VarChar,255),
					            new OleDbParameter("@seo_description", OleDbType.VarChar,500),
					            new OleDbParameter("@is_default", OleDbType.Integer,4),
					            new OleDbParameter("@sort_id", OleDbType.Integer,4),
					            new OleDbParameter("@id", OleDbType.Integer,4)};
			            parameters[0].Value = model.title;
			            parameters[1].Value = model.build_path;
			            parameters[2].Value = model.templet_path;
			            parameters[3].Value = model.domain;
			            parameters[4].Value = model.name;
			            parameters[5].Value = model.logo;
			            parameters[6].Value = model.company;
			            parameters[7].Value = model.address;
			            parameters[8].Value = model.tel;
			            parameters[9].Value = model.fax;
			            parameters[10].Value = model.email;
			            parameters[11].Value = model.crod;
			            parameters[12].Value = model.copyright;
			            parameters[13].Value = model.seo_title;
			            parameters[14].Value = model.seo_keyword;
			            parameters[15].Value = model.seo_description;
			            parameters[16].Value = model.is_default;
			            parameters[17].Value = model.sort_id;
			            parameters[18].Value = model.id;
			            DbHelperOleDb.ExecuteSql(conn, trans, strSql.ToString(),parameters);

                        //检查旧导航是否存在
                        if (new DAL.navigation(databaseprefix).GetModel(conn, trans, "channel_" + old_build_path) != null)
                        {
                            //修改导航菜单
                            new DAL.navigation(databaseprefix).Update(conn, trans, "channel_" + old_build_path, "channel_" + model.build_path, model.title, model.sort_id);
                        }
                        else //需要添加新导航菜单
                        {
                            new DAL.navigation(databaseprefix).Add(conn, trans, "sys_contents", "channel_" + model.build_path, model.title, "", model.sort_id, 0, "Show");
                        }

                        trans.Commit();
                    }
                    catch
                    {
                        trans.Rollback();
                        return false;
                    }
                }
            }
            return true;
		}

		/// <summary>
		/// 删除一条数据
		/// </summary>
		public bool Delete(int id)
		{
            string build_path = GetBuildPath(id);
            if (string.IsNullOrEmpty(build_path))
            {
                return false;
            }
            //取得要删除的所有导航ID
            string navIds = new navigation(databaseprefix).GetIds("channel_" + build_path);

            using (OleDbConnection conn = new OleDbConnection(DbHelperOleDb.connectionString))
            {
                conn.Open();
                using (OleDbTransaction trans = conn.BeginTransaction())
                {
                    try
                    {
                        //删除导航
                        if (!string.IsNullOrEmpty(navIds))
                        {
                            DbHelperOleDb.ExecuteSql(conn, trans, "delete from " + databaseprefix + "navigation where id in(" + navIds + ")");
                        }
                        //删除站点
			            StringBuilder strSql=new StringBuilder();
                        strSql.Append("delete from " + databaseprefix + "channel_site ");
			            strSql.Append(" where id=@id");
			            OleDbParameter[] parameters = {
					            new OleDbParameter("@id", OleDbType.Integer,4)};
			            parameters[0].Value = id;
                        DbHelperOleDb.ExecuteSql(conn, trans, strSql.ToString(), parameters);

                        trans.Commit();
                    }
                    catch
                    {
                        trans.Rollback();
                        return false;
                    }
                }
            }
            return true;
		}

		/// <summary>
		/// 得到一个对象实体
		/// </summary>
        public Model.channel_site GetModel(int id)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select top 1 id,title,build_path,templet_path,[domain],[name],logo,company,address,tel,fax,email,crod,copyright,seo_title,seo_keyword,seo_description,is_default,sort_id");
            strSql.Append(" from " + databaseprefix + "channel_site");
            strSql.Append(" where id=@id");
            OleDbParameter[] parameters = {
					new OleDbParameter("@id", OleDbType.Integer,4)};
            parameters[0].Value = id;

            Model.channel_site model = new Model.channel_site();
            DataSet ds = DbHelperOleDb.Query(strSql.ToString(), parameters);
            if (ds.Tables[0].Rows.Count > 0)
            {
                return DataRowToModel(ds.Tables[0].Rows[0]);
            }
            else
            {
                return null;
            }
        }

        /// <summary>
        /// 得到一个对象实体
        /// </summary>
        public Model.channel_site GetModel(string build_path)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select top 1 id,title,build_path,templet_path,[domain],[name],logo,company,address,tel,fax,email,crod,copyright,seo_title,seo_keyword,seo_description,is_default,sort_id");
            strSql.Append(" from " + databaseprefix + "channel_site");
            strSql.Append(" where build_path=@build_path");
            OleDbParameter[] parameters = {
					new OleDbParameter("@build_path", OleDbType.VarChar,50)};
            parameters[0].Value = build_path;

            Model.channel_site model = new Model.channel_site();
            DataSet ds = DbHelperOleDb.Query(strSql.ToString(), parameters);
            if (ds.Tables[0].Rows.Count > 0)
            {
                return DataRowToModel(ds.Tables[0].Rows[0]);
            }
            else
            {
                return null;
            }
        }

		/// <summary>
		/// 获得前几行数据
		/// </summary>
		public DataSet GetList(int Top,string strWhere,string filedOrder)
		{
			StringBuilder strSql=new StringBuilder();
			strSql.Append("select ");
			if(Top>0)
			{
				strSql.Append(" top "+Top.ToString());
			}
			strSql.Append(" id,title,build_path,templet_path,[domain],[name],logo,company,address,tel,fax,email,crod,copyright,seo_title,seo_keyword,seo_description,is_default,sort_id");
            strSql.Append(" from " + databaseprefix + "channel_site");
			if(strWhere.Trim()!="")
			{
				strSql.Append(" where "+strWhere);
			}
			strSql.Append(" order by " + filedOrder);
			return DbHelperOleDb.Query(strSql.ToString());
		}

        /// <summary>
        /// 获得查询分页数据
        /// </summary>
        public DataSet GetList(int pageSize, int pageIndex, string strWhere, string filedOrder, out int recordCount)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select * FROM " + databaseprefix + "channel_site");
            if (strWhere.Trim() != "")
            {
                strSql.Append(" where " + strWhere);
            }
            recordCount = Convert.ToInt32(DbHelperOleDb.GetSingle(PagingHelper.CreateCountingSql(strSql.ToString())));
            return DbHelperOleDb.Query(PagingHelper.CreatePagingSql(recordCount, pageSize, pageIndex, strSql.ToString(), filedOrder));
        }
		#endregion

        #region 扩展方法================================
        /// <summary>
        /// 返回站点名称
        /// </summary>
        public string GetTitle(int id)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select top 1 title from " + databaseprefix + "channel_site");
            strSql.Append(" where id=" + id);
            string title = Convert.ToString(DbHelperOleDb.GetSingle(strSql.ToString()));
            if (string.IsNullOrEmpty(title))
            {
                return "";
            }
            return title;
        }

        /// <summary>
        /// 返回站点名称
        /// </summary>
        public string GetTitle(string build_path)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select top 1 title from " + databaseprefix + "channel_site");
            strSql.Append(" where build_path=@build_path");
            OleDbParameter[] parameters = {
                    new OleDbParameter("@build_path", OleDbType.VarChar,100)};
            parameters[0].Value = build_path;
            string title = Convert.ToString(DbHelperOleDb.GetSingle(strSql.ToString(), parameters));
            if (string.IsNullOrEmpty(title))
            {
                return "";
            }
            return title;
        }

        /// <summary>
        /// 返回站点的生成目录名
        /// </summary>
        public string GetBuildPath(int id)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select top 1 build_path from " + databaseprefix + "channel_site");
            strSql.Append(" where id=" + id);
            object obj = DbHelperOleDb.GetSingle(strSql.ToString());
            if (obj != null)
            {
                return Convert.ToString(obj);
            }
            return string.Empty;
        }

        /// <summary>
        /// 返回站点对应的导航ID
        /// </summary>
        public int GetSiteNavId(int id)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("select N.id from " + databaseprefix + "navigation as N," + databaseprefix + "channel_site as S");
            strSql.Append(" where 'channel_'+S.build_path=N.name and S.id=" + id);
            object obj = DbHelperOleDb.GetSingle(strSql.ToString());
            if (obj != null)
            {
                return Convert.ToInt32(obj);
            }
            return 0;
        }

        /// <summary>
        /// 修改一列数据
        /// </summary>
        public bool UpdateField(int id, string strValue)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update " + databaseprefix + "channel_site set " + strValue);
            strSql.Append(" where id=" + id);
            int rows = DbHelperOleDb.ExecuteSql(strSql.ToString());
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 修改一列数据
        /// </summary>
        public bool UpdateField(string build_path, string strValue)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("update " + databaseprefix + "channel_site set " + strValue);
            strSql.Append(" where build_path=@build_path");
            OleDbParameter[] parameters = {
                    new OleDbParameter("@build_path", OleDbType.VarChar,100)};
            parameters[0].Value = build_path;
            int rows = DbHelperOleDb.ExecuteSql(strSql.ToString(), parameters);
            if (rows > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 将对象转换为实体
        /// </summary>
        public Model.channel_site DataRowToModel(DataRow row)
        {
            Model.channel_site model = new Model.channel_site();
            if (row != null)
            {
                if (row["id"] != null && row["id"].ToString() != "")
                {
                    model.id = int.Parse(row["id"].ToString());
                }
                if (row["title"] != null)
                {
                    model.title = row["title"].ToString();
                }
                if (row["build_path"] != null)
                {
                    model.build_path = row["build_path"].ToString();
                }
                if (row["templet_path"] != null)
                {
                    model.templet_path = row["templet_path"].ToString();
                }
                if (row["domain"] != null)
                {
                    model.domain = row["domain"].ToString();
                }
                if (row["name"] != null)
                {
                    model.name = row["name"].ToString();
                }
                if (row["logo"] != null)
                {
                    model.logo = row["logo"].ToString();
                }
                if (row["company"] != null)
                {
                    model.company = row["company"].ToString();
                }
                if (row["address"] != null)
                {
                    model.address = row["address"].ToString();
                }
                if (row["tel"] != null)
                {
                    model.tel = row["tel"].ToString();
                }
                if (row["fax"] != null)
                {
                    model.fax = row["fax"].ToString();
                }
                if (row["email"] != null)
                {
                    model.email = row["email"].ToString();
                }
                if (row["crod"] != null)
                {
                    model.crod = row["crod"].ToString();
                }
                if (row["copyright"] != null)
                {
                    model.copyright = row["copyright"].ToString();
                }
                if (row["seo_title"] != null)
                {
                    model.seo_title = row["seo_title"].ToString();
                }
                if (row["seo_keyword"] != null)
                {
                    model.seo_keyword = row["seo_keyword"].ToString();
                }
                if (row["seo_description"] != null)
                {
                    model.seo_description = row["seo_description"].ToString();
                }
                if (row["is_default"] != null && row["is_default"].ToString() != "")
                {
                    model.is_default = int.Parse(row["is_default"].ToString());
                }
                if (row["sort_id"] != null && row["sort_id"].ToString() != "")
                {
                    model.sort_id = int.Parse(row["sort_id"].ToString());
                }
            }
            return model;
        }
        #endregion

    }
}

