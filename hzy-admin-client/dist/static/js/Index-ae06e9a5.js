import{d as Y,y as U,a4 as q,C as E,q as K,m as A,r as u,o as i,e as p,w as a,a as e,u as r,i as d,l as c,c as D,t as b,ah as M,f as P}from"./index-294e8e84.js";import{_ as y}from"./AppIcon.vue_vue_type_script_setup_true_lang-a041bba6.js";import{S as h,_ as R}from"./Info.vue_vue_type_script_setup_true_lang-1fd79d81.js";import{_ as G}from"./PageContainer.vue_vue_type_script_setup_true_lang-b0c3a0a7.js";import{_ as H}from"./TableCurd.vue_vue_type_script_setup_true_lang-c21e52c1.js";import"./AppIconList-369b0ab6.js";import"./_plugin-vue_export-helper-c4cb8a60.js";const J={key:0},Q={key:1},W=["onClick"],X=["onClick"],Z=P("a",{class:"text-danger"},"\u5220\u9664",-1),ee=Y({name:"system_menu"}),le=Y({...ee,setup(te){const n=U({search:{state:!1,vm:{name:void 0},sort:[]},loading:!1,page:1,size:10,total:100,columns:[],data:[]}),l=q(),B=E(),F=E(),w=E();K(()=>{f()});async function f(){try{n.loading=!0;const _=await h.getAll(n.search.vm);if(n.loading=!1,_.code!=1)return;n.data=A.genTreeData(_.data,null)}catch{n.loading=!1}}async function S(_){var g,k;let o=[];if(_?o.push(_):o=(k=(g=B.value)==null?void 0:g.getSelectedRowKeys())!=null?k:[],o.length==0)return A.message.error("\u8BF7\u9009\u62E9\u8981\u5220\u9664\u7684\u884C!");try{n.loading=!0;const x=await h.deleteList(o);if(n.loading=!1,x.code!=1)return;A.message.success("\u5220\u9664\u6210\u529F!"),f()}catch{n.loading=!1}}function z(){h.exportExcel(n.search.vm,n.search.sort)}return(_,o)=>{const g=u("a-input"),k=u("a-form-item"),x=u("a-col"),v=u("a-button"),N=u("a-space"),O=u("a-row"),V=u("a-form"),$=u("a-popconfirm"),j=u("a-menu-item"),I=u("a-menu"),L=u("a-dropdown"),m=u("a-table-column"),T=u("a-divider");return i(),p(G,null,{default:a(()=>[e(H,{ref_key:"refTableCurd",ref:B,config:n,onChange:o[7]||(o[7]=t=>{var s,C;n.page=(s=t.pagination.current)!=null?s:1,n.size=(C=t.pagination.pageSize)!=null?C:n.size,n.search.sort=t.sorter instanceof Array?[...t.sorter]:[t.sorter],f()}),onShowSizeChange:o[8]||(o[8]=({current:t,size:s})=>{n.page=t==0?1:t,n.size=s,f()}),"is-pagination":!1},{search:a(()=>[r(l).search?(i(),p(V,{key:0,ref_key:"refSearchForm",ref:w,model:n.search.vm},{default:a(()=>[e(O,{gutter:[16,0]},{default:a(()=>[e(x,{xs:24,sm:12,md:8,lg:6,xl:6},{default:a(()=>[e(k,{class:"mb-0",name:"name",label:"\u83DC\u5355\u540D\u79F0"},{default:a(()=>[e(g,{value:n.search.vm.name,"onUpdate:value":o[0]||(o[0]=t=>n.search.vm.name=t),placeholder:"\u83DC\u5355\u540D\u79F0"},null,8,["value"])]),_:1})]),_:1}),e(x,{xs:24,sm:12,md:8,lg:6,xl:6,class:"text-right"},{default:a(()=>[e(N,{size:8},{default:a(()=>[e(v,{onClick:o[1]||(o[1]=t=>{var s;n.page=1,(s=w.value)==null||s.resetFields(),f()})},{default:a(()=>[d(" \u91CD\u7F6E ")]),_:1}),e(v,{type:"primary",onClick:o[2]||(o[2]=t=>{n.page=1,f()})},{default:a(()=>[d(" \u67E5\u8BE2 ")]),_:1})]),_:1})]),_:1})]),_:1})]),_:1},8,["model"])):c("",!0)]),"toolbar-left":a(()=>[r(l).search?(i(),p(v,{key:0,onClick:o[3]||(o[3]=t=>n.search.state=!n.search.state)},{default:a(()=>[n.search.state?(i(),D("div",J,[e(y,{name:"UpOutlined"}),d("\xA0\xA0\u6536\u8D77")])):(i(),D("div",Q,[e(y,{name:"DownOutlined"}),d("\xA0\xA0\u5C55\u5F00")]))]),_:1})):c("",!0),r(l).insert?(i(),p(v,{key:1,type:"primary",onClick:o[4]||(o[4]=()=>{var t;return(t=F.value)==null?void 0:t.open()})},{icon:a(()=>[e(y,{name:"PlusOutlined"})]),default:a(()=>[d(" \u65B0\u5EFA ")]),_:1})):c("",!0),r(l).delete?(i(),p($,{key:2,title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664?",onConfirm:o[5]||(o[5]=t=>S()),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:a(()=>[e(v,{type:"primary",danger:""},{icon:a(()=>[e(y,{name:"DeleteOutlined"})]),default:a(()=>[d(" \u6279\u91CF\u5220\u9664 ")]),_:1})]),_:1})):c("",!0)]),"toolbar-right":a(()=>[e(L,null,{overlay:a(()=>[e(I,null,{default:a(()=>[e(j,{key:"1",onClick:o[6]||(o[6]=t=>z())},{default:a(()=>[d("\u5BFC\u51FA Excel")]),_:1})]),_:1})]),default:a(()=>[e(v,null,{default:a(()=>[d(" \u66F4\u591A "),e(y,{name:"ellipsis-outlined"})]),_:1})]),_:1})]),"table-col":a(()=>[e(m,{title:"\u540D\u79F0","data-index":"name"}),e(m,{title:"\u56FE\u6807","data-index":"icon"},{default:a(({record:t})=>[e(y,{name:t.icon},null,8,["name"])]),_:1}),e(m,{title:"\u7F16\u53F7","data-index":"number"}),e(m,{title:"\u7EC4\u4EF6\u540D\u79F0","data-index":"componentName"}),e(m,{title:"\u7EC4\u4EF6\u5730\u5740","data-index":"url"}),e(m,{title:"\u8DEF\u7531\u5730\u5740","data-index":"router"}),e(m,{title:"\u66F4\u65B0\u65F6\u95F4","data-index":"lastModificationTime"},{default:a(({record:t})=>[d(b(r(M)(t.lastModificationTime).format("YYYY-MM-DD")),1)]),_:1}),e(m,{title:"\u521B\u5EFA\u65F6\u95F4","data-index":"creationTime"},{default:a(({record:t})=>[d(b(r(M)(t.creationTime).format("YYYY-MM-DD")),1)]),_:1}),r(l).update||r(l).delete||r(l).insert?(i(),p(m,{key:0,title:"\u64CD\u4F5C","data-index":"id"},{default:a(({record:t})=>[r(l).insert?(i(),D("a",{key:0,href:"javascript:void(0)",onClick:s=>{var C;return(C=F.value)==null?void 0:C.open(null,t.id)}},"\u65B0\u5EFA",8,W)):c("",!0),e(T,{type:"vertical"}),r(l).update?(i(),D("a",{key:1,href:"javascript:;",onClick:()=>{var s;return(s=F.value)==null?void 0:s.open(t.id,t.parentId)}},"\u7F16\u8F91",8,X)):c("",!0),e(T,{type:"vertical"}),r(l).delete?(i(),p($,{key:2,title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664?",onConfirm:s=>S(t.id),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:a(()=>[Z]),_:2},1032,["onConfirm"])):c("",!0)]),_:1})):c("",!0)]),_:1},8,["config"]),e(R,{ref_key:"refInfo",ref:F,onSuccess:()=>f()},null,8,["onSuccess"])]),_:1})}}});export{le as default};
