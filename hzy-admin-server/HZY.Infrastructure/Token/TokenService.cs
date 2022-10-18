﻿using HZY.Infrastructure;
using HzyScanDiService;
using Microsoft.AspNetCore.Http;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace HZY.Infrastructure.Token;

/// <summary>
/// token 服务
/// </summary>
public class TokenService : ITransientSelfDependency
{
    private readonly AppConfiguration _appConfiguration;
    private readonly HttpContext _httpContext;

    public TokenService(AppConfiguration appConfiguration, IHttpContextAccessor httpContextAccessor)
    {
        _appConfiguration = appConfiguration;
        _httpContext = httpContextAccessor.HttpContext;
    }

    /// <summary>
    /// 根据 id 创建token
    /// </summary>
    /// <param name="id"></param>
    /// <returns></returns>
    public string CreateTokenByAccountId(Guid id)
    {
        return JwtTokenUtil.CreateToken(id.ToString(), this._appConfiguration.Configs.JwtIssuerSigningKey, this._appConfiguration.Configs.JwtValidIssuer, this._appConfiguration.Configs.JwtValidAudience);
    }

    /// <summary>
    /// 检查是否有Token字符串
    /// </summary>
    /// <returns></returns>
    public bool HasTokenString()
    {
        if (this._httpContext == null)
        {
            return false;
        }

        var tokenName = this._appConfiguration.Configs.AuthorizationKeyName;

        if (!this._httpContext.Request.Headers.ContainsKey(tokenName))
        {
            return false;
        }

        var token = this.GetTokenString();

        return !string.IsNullOrWhiteSpace(token) || token.Length > 10;
    }

    /// <summary>
    /// 获取 token 字符串
    /// </summary>
    /// <returns></returns>
    public string GetTokenString()
    {
        if (this._httpContext == null)
        {
            return string.Empty;
        }

        var tokenName = this._appConfiguration.Configs.AuthorizationKeyName;

        return this._httpContext.Request.Headers[tokenName].ToString();
    }

    /// <summary>
    /// 获取 token 并得到 id
    /// </summary>
    /// <returns></returns>
    public Guid GetAccountIdByToken()
    {
        if (this._httpContext == null) return Guid.Empty;

        if (!this.HasTokenString())
            return default;

        var token = this.GetTokenString();

        if (string.IsNullOrWhiteSpace(token)) return default;

        var claims = JwtTokenUtil.ReadJwtToken(token);

        var id = claims?.FirstOrDefault(w => w.Type == ClaimTypes.Name)?.Value;

        if (string.IsNullOrWhiteSpace(id)) return default;

        return id.ToGuid();

        //一下方式 header 里面 AuthorizationKeyName 必须是 Authorization

        // if (this._httpContext.User.Identity == null)
        // {
        //     return default;
        // }

        // return this._httpContext.User.Identity.Name.ToGuid();
    }

    /// <summary>
    /// 是否刷新token
    /// </summary>
    /// <returns></returns>
    public bool IsRefreshToken()
    {
        if (_httpContext == null)
        {
            return false;
        }

        if (!this.HasTokenString())
            return default;

        var token = _httpContext.Request.Headers[_appConfiguration.Configs.AuthorizationKeyName].ToString();

        if (string.IsNullOrWhiteSpace(token)) return false;

        //if (_httpContext.User.Identity == null) return false;
        //var claims = _httpContext.User.Claims;
        var claims = JwtTokenUtil.ReadJwtToken(token);

        var expired = claims.FirstOrDefault(w => w.Type == ClaimTypes.Expired)?.Value;

        if (string.IsNullOrWhiteSpace(expired)) return false;

        var totalMinutes = (Convert.ToDateTime(expired) - DateTime.Now).TotalMinutes;

        return totalMinutes >= 0 && totalMinutes <= TokenValidationParameters.DefaultClockSkew.TotalMinutes;
    }

    /// <summary>
    /// 刷新Token
    /// </summary>
    /// <returns></returns>
    public string RefreshToken()
    {
        if (!this.IsRefreshToken())
        {
            return default;
        }

        var id = this.GetAccountIdByToken();

        return this.CreateTokenByAccountId(id);
    }

    /// <summary>
    /// 是否过期
    /// </summary>
    /// <returns></returns>
    public bool IsExpire()
    {
        if (_httpContext == null)
        {
            return false;
        }

        if (!this.HasTokenString())
            return default;

        var token = _httpContext.Request.Headers[_appConfiguration.Configs.AuthorizationKeyName].ToString();

        if (string.IsNullOrWhiteSpace(token)) return false;

        //if (_httpContext.User.Identity == null) return false;
        //var claims = _httpContext.User.Claims;
        var claims = JwtTokenUtil.ReadJwtToken(token);

        var expired = claims.FirstOrDefault(w => w.Type == ClaimTypes.Expired)?.Value;

        if (string.IsNullOrWhiteSpace(expired)) return false;

        var totalMinutes = (DateTime.Now - Convert.ToDateTime(expired)).TotalMinutes;

        return totalMinutes > 0;
    }



}