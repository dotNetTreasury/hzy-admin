﻿using System.Threading.Tasks;
using HZY.Admin.Objects.Dto;
using HZY.Admin.Services.Framework;
using HZY.Framework.Controllers;
using HZY.Framework.Model;
using Microsoft.AspNetCore.Mvc;

namespace HZY.Admin.Controllers.Framework
{
    public class LoginController : AdminBaseController<SysUserService>
    {
        private readonly AccountService _accountService;

        public LoginController(SysUserService defaultService, AccountService accountService) : base(defaultService)
        {
            _accountService = accountService;
        }

        [HttpGet(nameof(Index))]
        public IActionResult Index()
        {
            return View();
        }

        /// <summary>
        /// 退出登录
        /// </summary>
        /// <returns></returns>
        [HttpGet(nameof(Out))]
        public IActionResult Out()
        {
            this._accountService.RemoveToken();
            return RedirectToAction(nameof(Index));
        }

        /// <summary>
        /// 检查帐户并获取 token
        /// </summary>
        /// <param name="authUserDto">Dto</param>
        /// <returns></returns>
        [HttpPost("Check")]
        public async Task<ApiResult> CheckAccountAsync([FromBody] AuthUserDto authUserDto)
        {
            var token = await this.DefaultService
                .CheckAccountAsync(authUserDto.UserName, authUserDto.UserPassword, authUserDto.LoginCode);

            const string tokenType = "Bearer ";

            return this.ResultOk(new {token, tokenType});
        }
    }
}