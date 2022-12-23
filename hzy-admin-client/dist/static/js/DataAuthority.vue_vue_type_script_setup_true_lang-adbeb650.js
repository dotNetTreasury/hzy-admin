var b=Object.defineProperty;var B=(d,s,i)=>s in d?b(d,s,{enumerable:!0,configurable:!0,writable:!0,value:i}):d[s]=i;var g=(d,s,i)=>(B(d,typeof s!="symbol"?s+"":s,i),i);import{R as m,d as $,y as L,r,o as A,e as w,w as l,a as o,i as u,c as F,f as E,l as P,m as S}from"./index-294e8e84.js";import{S as T}from"./SysOrganizationService-55bb5f83.js";class v{static findList(s,i,e={},h=[]){return m.post(`${this.urlPrefix}/findList`,{page:s,size:i,search:e,searchSort:h})}static deleteList(s){return m.post(`${this.urlPrefix}/deleteList`,s)}static findForm(s){return m.get(`${this.urlPrefix}/findForm${s?"/"+s:""}`)}static saveForm(s,i){return m.post(`${this.urlPrefix}/${s?"update":"create"}`,i)}static exportExcel(s={},i=[]){return m.download(`${this.urlPrefix}/exportExcel`,{page:-1,size:-1,search:s,searchSort:i})}static getDataAuthorityByRoleId(s){return m.get(`${this.urlPrefix}/getDataAuthorityByRoleId/${s}`)}}g(v,"urlPrefix","/api/admin/SysDataAuthority");const z={key:0},H={class:"mb-15"},R={style:{"max-height":"280px","overflow-y":"auto"}},N=$({__name:"DataAuthority",props:{onSuccess:{type:Function}},setup(d,{expose:s}){const i=d,e=L({vm:{id:"",form:{sysDataAuthority:{},sysDataAuthorityCustomList:[]}},visible:!1,loading:!1,tree:{data:[],expandedKeys:[],selectedKeys:[],checkedKeys:[],allKeys:[],allExpandedKeys:[]},selectAll:!1,expandedAll:!1});s({open:(p="")=>{e.visible=!0,e.visible&&(e.vm.id=p),e.loading=!0,v.getDataAuthorityByRoleId(p).then(async t=>{if(e.loading=!1,t.code!=1)return;e.vm.form.sysDataAuthority=t.data.sysDataAuthority,e.vm.form.sysDataAuthorityCustomList=t.data.sysDataAuthorityCustomList;let n=(await T.sysOrganizationTree()).data;e.tree.data=n.rows,e.tree.expandedKeys=n.expandedRowKeys,e.tree.allKeys=n.allKeys,e.tree.allExpandedKeys=n.expandedRowKeys;var f=e.vm.form.sysDataAuthorityCustomList;for(let c=0;c<f.length;c++){const x=f[c];e.tree.checkedKeys.push(x.sysOrganizationId)}e.selectAll=e.tree.checkedKeys.length==e.tree.allKeys.length,e.expandedAll=e.tree.expandedKeys.length==e.tree.allExpandedKeys.length})}});async function h(){if(e.vm.form.sysDataAuthority.permissionType===1){var p=e.tree.checkedKeys;e.vm.form.sysDataAuthorityCustomList=[];for(let y=0;y<p.length;y++){const n=p[y];e.vm.form.sysDataAuthorityCustomList.push({sysOrganizationId:n})}}else e.vm.form.sysDataAuthorityCustomList=[];e.loading=!0,(await v.saveForm(e.vm.id,e.vm)).code==1&&(S.message.success("\u64CD\u4F5C\u6210\u529F!"),i.onSuccess(),e.visible=!1)}function K(){e.selectAll?e.tree.checkedKeys=e.tree.allKeys:e.tree.checkedKeys=[]}function C(){e.expandedAll?e.tree.expandedKeys=e.tree.allExpandedKeys:e.tree.expandedKeys=[]}return(p,t)=>{const y=r("a-button"),n=r("a-radio"),f=r("a-radio-group"),c=r("a-divider"),x=r("a-checkbox"),k=r("a-tree"),_=r("a-spin"),D=r("a-modal");return A(),w(D,{visible:e.visible,"onUpdate:visible":t[11]||(t[11]=a=>e.visible=a),title:"\u6570\u636E\u6743\u9650\u8BBE\u7F6E",centered:"",onOk:t[12]||(t[12]=a=>e.visible=!1),width:400},{footer:l(()=>[o(y,{type:"primary",loading:e.loading,onClick:t[0]||(t[0]=a=>h())},{default:l(()=>[u(" \u63D0\u4EA4")]),_:1},8,["loading"]),o(y,{onClick:t[1]||(t[1]=a=>e.visible=!1)},{default:l(()=>[u("\u5173\u95ED")]),_:1})]),default:l(()=>[o(_,{spinning:e.loading},{default:l(()=>[o(f,{value:e.vm.form.sysDataAuthority.permissionType,"onUpdate:value":t[2]||(t[2]=a=>e.vm.form.sysDataAuthority.permissionType=a)},{default:l(()=>[o(n,{style:{display:"flex",height:"30px",lineHeight:"30px"},value:1},{default:l(()=>[u("\u81EA\u5B9A\u4E49\u6743\u9650")]),_:1}),o(n,{style:{display:"flex",height:"30px",lineHeight:"30px"},value:2},{default:l(()=>[u("\u67E5\u770B\u6240\u6709\u6570\u636E")]),_:1}),o(n,{style:{display:"flex",height:"30px",lineHeight:"30px"},value:3},{default:l(()=>[u("\u4EC5\u67E5\u770B\u672C\u7EC4\u7EC7")]),_:1}),o(n,{style:{display:"flex",height:"30px",lineHeight:"30px"},value:4},{default:l(()=>[u("\u4EC5\u67E5\u770B\u672C\u7EC4\u7EC7\u548C\u4E0B\u5C5E\u7EC4\u7EC7")]),_:1}),o(n,{style:{display:"flex",height:"30px",lineHeight:"30px"},value:5},{default:l(()=>[u("\u4EC5\u67E5\u770B\u672C\u4EBA")]),_:1})]),_:1},8,["value"]),e.vm.form.sysDataAuthority.permissionType===1?(A(),F("div",z,[o(c,null,{default:l(()=>[u("\u81EA\u5B9A\u4E49\u6570\u636E\u6743\u9650")]),_:1}),E("div",H,[o(x,{checked:e.selectAll,"onUpdate:checked":t[3]||(t[3]=a=>e.selectAll=a),onChange:t[4]||(t[4]=a=>K())},{default:l(()=>[u("\u5168\u9009/\u5168\u4E0D\u9009")]),_:1},8,["checked"]),o(x,{checked:e.expandedAll,"onUpdate:checked":t[5]||(t[5]=a=>e.expandedAll=a),onChange:t[6]||(t[6]=a=>C())},{default:l(()=>[u("\u5C55\u5F00/\u6298\u53E0")]),_:1},8,["checked"])]),E("div",R,[o(k,{expandedKeys:e.tree.expandedKeys,"onUpdate:expandedKeys":t[7]||(t[7]=a=>e.tree.expandedKeys=a),checkedKeys:e.tree.checkedKeys,"onUpdate:checkedKeys":t[8]||(t[8]=a=>e.tree.checkedKeys=a),onCheck:t[9]||(t[9]=a=>e.selectAll=a.length==e.tree.allKeys.length),onExpand:t[10]||(t[10]=a=>e.expandedAll=a.length==e.tree.allExpandedKeys.length),checkable:"","tree-data":e.tree.data},null,8,["expandedKeys","checkedKeys","tree-data"])])])):P("",!0)]),_:1},8,["spinning"])]),_:1},8,["visible"])}}});export{N as _};
