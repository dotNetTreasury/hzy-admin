import{d as w,P as B,A as R,T as E,b as L,y as U,p as d,s as V,r as v,o,e as l,w as _,u as t,c as p,j as K,F as y,l as T,f as k,t as x,m as j}from"./index-294e8e84.js";import{_ as g}from"./AppIcon.vue_vue_type_script_setup_true_lang-a041bba6.js";import{_ as M}from"./LayoutMenuSub.vue_vue_type_script_setup_true_lang-e5e72a02.js";import{M as A,E as D}from"./MenuStore-c553f891.js";const q=w({__name:"LayoutMenu",setup(F){var h,C;B(m=>{var n,s,a,e;return{"00ea79d0":(n=t(u).menuCustomThemes[t(u).state.menuCustomThemesIndex])==null?void 0:n.backgroundColor,"0b8128b9":(s=t(u).menuCustomThemes[t(u).state.menuCustomThemesIndex])==null?void 0:s.textColor,"6fe7458a":(a=t(u).menuCustomThemes[t(u).state.menuCustomThemesIndex])==null?void 0:a.activeBgColor,e52fbbda:(e=t(u).menuCustomThemes[t(u).state.menuCustomThemesIndex])==null?void 0:e.activeTextColor}});const u=A(),f=R();E();const S=L(()=>j.genTreeData(f.state.userInfo.menus,null)),c=U({defaultSelectedKeys:[(h=d.currentRoute.value.meta.menuId)!=null?h:""],selectedKeys:[(C=d.currentRoute.value.meta.menuId)!=null?C:""],openKeys:b()});V(()=>d.currentRoute.value,m=>{var n;c.selectedKeys=[(n=m.meta.menuId)!=null?n:""]});function b(){let n=d.currentRoute.value.meta.levelCode;if(!n)return[];var s=[];if(n.indexOf(".")>-1)for(var a=n.split("."),e=0;e<a.length-1;e++){var r=a[e];s.push(parseInt(r))}return s}function I(m){var s,a;const n=f.state.userInfo.menus.find(e=>e.id==m.key);d.push({path:(a=(s=n==null?void 0:n.jumpUrl)!=null?s:n==null?void 0:n.router)!=null?a:"/404"})}return(m,n)=>{const s=v("a-menu-item"),a=v("a-menu");return o(),l(a,{theme:t(u).themeType(),mode:"inline",onSelect:I,selectedKeys:c.selectedKeys,"onUpdate:selectedKeys":n[0]||(n[0]=e=>c.selectedKeys=e),openKeys:c.openKeys,"onUpdate:openKeys":n[1]||(n[1]=e=>c.openKeys=e)},{default:_(()=>[t(u).state.menuMode!=t(D).default?(o(!0),p(y,{key:0},K(t(f).state.subMenus,e=>{var r;return o(),p(y,null,[!e.children||((r=e.children)==null?void 0:r.filter(i=>i.show).length)==0&&e.type==2?(o(),l(s,{key:e.id,title:e.name},{default:_(()=>[e.icon?(o(),l(g,{key:0,name:e.icon},null,8,["name"])):T("",!0),k("span",null,x(e.name),1)]),_:2},1032,["title"])):(o(),l(M,{key:1,"menu-info":e},null,8,["menu-info"]))],64)}),256)):(o(!0),p(y,{key:1},K(t(S),e=>{var r;return o(),p(y,null,[!e.children||((r=e.children)==null?void 0:r.filter(i=>i.show).length)==0&&e.type==2?(o(),l(s,{key:e.id,title:e.name},{default:_(()=>[e.icon?(o(),l(g,{key:0,name:e.icon},null,8,["name"])):T("",!0),k("span",null,x(e.name),1)]),_:2},1032,["title"])):(o(),l(M,{key:1,"menu-info":e},null,8,["menu-info"]))],64)}),256))]),_:1},8,["theme","selectedKeys","openKeys"])}}});export{q as _};
