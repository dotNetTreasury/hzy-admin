import{a as r,c as _,j as i,d as u,f as e,w as t,n as o,$ as p}from"./index-4fa9c7f3.js";const f=o("Primary"),m=o("Default"),h=o("Dashed"),y=o("Danger"),g=o("\u6309\u94AE"),v=o("\u6309\u94AE"),b=o("Link"),x=o("Success"),k=o("Info"),w=o("warning"),B={name:"ButtonCom"},j=Object.assign(B,{setup(C){const c=r("hello"),n={onHello(){p.success(c.value)}};return(D,a)=>{const s=_("a-button"),l=_("a-config-provider");return i(),u("div",{class:"text-center",onClick:a[0]||(a[0]=(...d)=>n.onHello&&n.onHello(...d))},[e(s,{type:"primary"},{default:t(()=>[f]),_:1}),e(s,null,{default:t(()=>[m]),_:1}),e(s,{type:"dashed"},{default:t(()=>[h]),_:1}),e(s,{type:"primary",danger:""},{default:t(()=>[y]),_:1}),e(l,{"auto-insert-space-in-button":!1},{default:t(()=>[e(s,{type:"primary"},{default:t(()=>[g]),_:1})]),_:1}),e(s,{type:"primary"},{default:t(()=>[v]),_:1}),e(s,{type:"link"},{default:t(()=>[b]),_:1}),e(s,{class:"btn-success"},{default:t(()=>[x]),_:1}),e(s,{class:"btn-info"},{default:t(()=>[k]),_:1}),e(s,{class:"btn-warning"},{default:t(()=>[w]),_:1})])}}});export{j as default};
