﻿import { get, post, download } from '@/scripts/request';
import tools from "@/scripts/tools";

const controllerName = "admin/SysDataAuthority";

export default {
    /**
     * 查询列表
     * 
     * @param {一页显示多少行} rows 
     * @param {当前页码} page 
     */
    findList(rows, page, search = {}) {
        return post(`${controllerName}/findList/${rows}/${page}`, search, false);
    },
    /**
     * 删除数据
     * 
     * @param {要删除的id 数组} ids 
     */
    deleteList(ids) {
        console.log(ids);
        if (ids && ids.length === 0) {
            return tools.message("请选择要删除的数据!", "警告");
        }
        return post(`${controllerName}/deleteList`, ids, false);
    },
    /**
     * 获取表单数据
     * 
     * @param {*} id 
     */
    findForm(id) {
        return get(`${controllerName}/findForm${(id ? '/' + id : '')}`);
    },
    /**
     * 保存表单
     * 
     * @param {表单数据} vm 
     */
    saveForm(vm) {
        if (vm.id) {
            return post(`${controllerName}/update`, vm);
        }
        return post(`${controllerName}/create`, vm);
    },
    /**
     * 导出 excel
     * @param {*} search 
     */
    exportExcel(search) {
        return download(`${controllerName}/exportExcel`, search);
    },

    /**
     * 获取数据权限 根据角色id
     * @param {*} roleId 
     * @returns 
     */
    getDataAuthorityByRoleId(roleId) {
        return get(`${controllerName}/getDataAuthorityByRoleId/${roleId}`);
    }
};