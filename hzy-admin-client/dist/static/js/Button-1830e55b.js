import{a as d,c as _,j as i,d as u,f as t,w as e,n as o,U as p}from"./index-cf6b0133.js";const f=o("Primary"),m=o("Default"),h=o("Dashed"),y=o("Danger"),g=o("\u6309\u94AE"),b=o("\u6309\u94AE"),v=o("Link"),x=o("Success"),k=o("Info"),w=o("warning"),B={name:"ButtonCom"},j=Object.assign(B,{setup(C){const c=d("hello"),n={onHello(){p.success(c.value)}};return(D,a)=>{const s=_("a-button"),l=_("a-config-provider");return i(),u("div",{class:"text-center",onClick:a[0]||(a[0]=(...r)=>n.onHello&&n.onHello(...r))},[t(s,{type:"primary"},{default:e(()=>[f]),_:1}),t(s,null,{default:e(()=>[m]),_:1}),t(s,{type:"dashed"},{default:e(()=>[h]),_:1}),t(s,{type:"primary",danger:""},{default:e(()=>[y]),_:1}),t(l,{"auto-insert-space-in-button":!1},{default:e(()=>[t(s,{type:"primary"},{default:e(()=>[g]),_:1})]),_:1}),t(s,{type:"primary"},{default:e(()=>[b]),_:1}),t(s,{type:"link"},{default:e(()=>[v]),_:1}),t(s,{class:"btn-success"},{default:e(()=>[x]),_:1}),t(s,{class:"btn-info"},{default:e(()=>[k]),_:1}),t(s,{class:"btn-warning"},{default:e(()=>[w]),_:1})])}}});export{j as default};
