import{d as r,r as n,l as c,b as d,o as t,m as i,c as l,x as m,A as _,B as p,q as f}from"./vendor-621951b9.js";import{_ as u,c as g}from"./index-7aa787f9.js";const v=r({name:"swagger",setup(){const e=n(!0),o=n(g.domainName);return c(()=>{let a=document.getElementById("iframe_swagger");a!=null&&(Object.prototype.hasOwnProperty.call(a,"attachEvent")?a.addEventListener("onload",()=>{e.value=!1}):a.onload=function(){e.value=!1})}),{loading:e,domainName:o}}}),w=["src"];function B(e,o,a,h,y,N){const s=d("a-spin");return t(),i("div",null,[e.loading?(t(),l(s,{key:0})):m("",!0),_(f("iframe",{src:e.domainName+"/swagger",frameBorder:"0",id:"iframe_swagger"},null,8,w),[[p,!e.loading]])])}var E=u(v,[["render",B],["__scopeId","data-v-342da4bc"]]);export{E as default};
