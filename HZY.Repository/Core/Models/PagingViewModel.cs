﻿using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;

namespace HZY.Repository.Core.Models
{
    public class PagingViewModel
    {
        /// <summary>
        /// 列信息
        /// </summary>
        public List<TableViewColumnHead> Columns { get; set; } = new List<TableViewColumnHead>();

        /// <summary>
        /// 转换后数据
        /// </summary>
        public List<Dictionary<string, object>> Result { get; set; } = new List<Dictionary<string, object>>();

        /// <summary>
        /// 总数
        /// </summary>
        public int Counts { get; set; }

        /// <summary>
        /// 总页数
        /// </summary>
        public int PageCount { get; set; }

        /// <summary>
        /// 一页显示多少条
        /// </summary>
        public int Rows { get; set; }

        /// <summary>
        /// 页码
        /// </summary>
        public int Page { get; set; }
    }
}