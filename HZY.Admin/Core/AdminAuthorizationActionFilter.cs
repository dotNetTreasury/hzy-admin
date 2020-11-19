﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using HZY.Admin.Services.Framework;
using HZY.Framework;
using HZY.Framework.Attributes;
using HZY.Framework.Model;
using HZY.Toolkit;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Newtonsoft.Json;

namespace HZY.Admin.Core
{
    /// <summary>
    /// 后台 权限 管理 控制
    /// </summary>
    public class AdminAuthorizationActionFilter : IActionFilter
    {
        private readonly SysMenuService _sysMenuService;
        private readonly AccountService _accountService;

        public AdminAuthorizationActionFilter(SysMenuService sysMenuService, AccountService accountService)
        {
            _sysMenuService = sysMenuService;
            _accountService = accountService;
        }

        /// <summary>
        /// Action 执行前
        /// </summary>
        /// <param name="context"></param>
        public virtual void OnActionExecuting(ActionExecutingContext context)
        {
            var controller = (Controller) context.Controller;

            //获取 class 上面所有的 自定义 特性
            var customAttributes = controller.GetType().GetCustomAttributes();
            //处理 控制器 class 上面 带有 AdminApiDescribeAttribute 标记
            var adminApiDescribeAttribute = (AdminAuthorizationAttribute) customAttributes
                .FirstOrDefault(w => w is AdminAuthorizationAttribute);

            if (adminApiDescribeAttribute == null) return;

            var httpContext = context.HttpContext;
            var routeValues = context.ActionDescriptor.RouteValues;
            //var areaName = routeValues["area"];
            var controllerName = routeValues["controller"];
            var actionName = routeValues["action"];

            var menuId = adminApiDescribeAttribute.MenuId.ToGuid();
            var functionName = adminApiDescribeAttribute.FunctionName;

            #region 检查是否登录 授权

            if (this._accountService.GetAccountInfo() == null)
            {
                const string unAuthMessage = "未授权,请先登录授权!";
                if (httpContext.IsJsonRequest())
                {
                    var data = ApiResult.ResultMessage(ApiResult.ApiResultCodeEnum.UnAuth, unAuthMessage);
                    context.Result = new JsonResult(data);
                }
                else
                {
                    var alert = $@"<script type='text/javascript'>
                                        alert('{unAuthMessage}');
                                        top.window.location='Admin/Login/Index';
                                    </script>";
                    context.Result = new ContentResult
                    {
                        Content = alert,
                        ContentType = "text/html;charset=utf-8;"
                    };
                }

                return;
            }

            #endregion

            #region 检查页面权限信息

            if (httpContext.IsHtmlRequest())
            {
                //判断是否 查找带回
                var isFindBack = httpContext.Request.Query.ContainsKey("findBack");
                var findBack = httpContext.Request.Query["findBack"];
                Dictionary<string, object> power;
                if (menuId == Guid.Empty)
                {
                    power = this._sysMenuService.GetFindBackPower(findBack, false).Result;
                }
                else
                {
                    if (isFindBack)
                    {
                        //收集用户权限
                        power = this._sysMenuService.GetFindBackPower(findBack).Result;
                    }
                    else
                    {
                        //收集用户权限
                        power = this._sysMenuService.GetPowerStateByMenuId(menuId).Result;

                        if (!power["Have"].ToBool())
                        {
                            context.Result = new ContentResult()
                            {
                                Content = "您无权访问!",
                                ContentType = "text/html;charset=utf-8;"
                            };
                            return;
                        }
                    }
                }

                controller.ViewData["power"] = JsonConvert.SerializeObject(power);
                controller.ViewData["isFindBack"] = isFindBack ? 1 : 0;
            }

            #endregion

            LogUtil.Write("OnActionExecuting");
        }

        /// <summary>
        /// Action 执行后
        /// </summary>
        /// <param name="context"></param>
        public virtual void OnActionExecuted(ActionExecutedContext context)
        {
            // LogUtil.Write("OnActionExecuted");
        }
    }
}