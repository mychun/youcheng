using System;
namespace RTBcms.Model
{
    /// <summary>
    /// banner
    /// </summary>
    [Serializable]
    public partial class banner
    {
        public banner()
        { }
        #region Model
        private int _id;
        private string _title = string.Empty;
        private string _href_url = string.Empty;
        private string _href_target = string.Empty;
        private string _img_src = string.Empty;
        private string _bg_color = string.Empty;
        private int _is_lock = 0;
        private int _sort_id = 99;
        private DateTime _add_time = DateTime.Now;
        private string _site_path = string.Empty;

        /// <summary>
        /// 自增ID
        /// </summary>
        public int id
        {
            set { _id = value; }
            get { return _id; }
        }
        /// <summary>
        /// 标题
        /// </summary>
        public string title
        {
            set { _title = value; }
            get { return _title; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string href_url
        {
            set { _href_url = value; }
            get { return _href_url; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string href_target
        {
            set { _href_target = value; }
            get { return _href_target; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string img_src
        {
            set { _img_src = value; }
            get { return _img_src; }
        }
        /// <summary>
        /// 
        /// </summary>
        public string bg_color
        {
            set { _bg_color = value; }
            get { return _bg_color; }
        }
        /// <summary>
        /// 
        /// </summary>
        public int is_lock
        {
            set { _is_lock = value; }
            get { return _is_lock; }
        }
        /// <summary>
        /// 排序数字
        /// </summary>
        public int sort_id
        {
            set { _sort_id = value; }
            get { return _sort_id; }
        }
        /// <summary>
        /// 添加时间
        /// </summary>
        public DateTime add_time
        {
            set { _add_time = value; }
            get { return _add_time; }
        }
        public string site_path
        {
            set { _site_path = value; }
            get { return _site_path; }
        }
        #endregion Model

    }
}