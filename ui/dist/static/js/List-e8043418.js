import{K as k,a as _,c as o,j as J,d as N,L as P,M as S,l as s,f as e,w as t,J as l,e as $}from"./index-4fa9c7f3.js";const B={style:{overflow:"hidden",height:"calc(100vh - 250px)",display:"initial"}},j={props:{tableData:Object},emits:"onChange",setup(m,{expose:f,emit:h}){const b=m,a=k(()=>b.tableData),c=_(null),v=_([10,20,50,100,500,1e3]),x=n=>{h("onChange",n)};return f({table:c}),(n,r)=>{const p=o("a-card"),u=o("a-space"),d=o("a-col"),w=o("a-row"),g=o("vxe-column"),y=o("vxe-table"),z=o("vxe-pager"),C=o("a-spin");return J(),N("div",null,[P(e(p,{class:"mb-15"},{default:t(()=>[l(n.$slots,"search")]),_:3},512),[[S,s(a).search.state]]),e(p,{bodyStyle:{paddingBottom:0}},{default:t(()=>[e(w,{gutter:[15,15]},{default:t(()=>[e(d,{xs:24,sm:24,md:12,lg:12,xl:12},{default:t(()=>[e(u,{size:15},{default:t(()=>[l(n.$slots,"toolbar-left")]),_:3})]),_:3}),e(d,{xs:24,sm:24,md:12,lg:12,xl:12,class:"text-right",style:{display:"inline-flex","justify-content":"end"}},{default:t(()=>[e(u,{size:15},{default:t(()=>[l(n.$slots,"toolbar-right")]),_:3})]),_:3})]),_:3}),e(C,{spinning:s(a).loading},{default:t(()=>[$("div",B,[e(y,{class:"mt-15",ref_key:"table",ref:c,"auto-resize":"",height:"auto",border:"",stripe:"",data:s(a).data,"row-config":{isCurrent:!0,isHover:!0},"column-config":{isCurrent:!0,resizable:!0},"checkbox-config":{highlight:!0}},{default:t(()=>[l(n.$slots,"table-col",{},()=>[e(g,{type:"seq",width:"50"}),e(g,{type:"checkbox",width:"50"}),l(n.$slots,"table-col-default")])]),_:3},8,["data"])]),e(z,{background:"","current-page":s(a).page,"onUpdate:current-page":r[0]||(r[0]=i=>s(a).page=i),"page-size":s(a).rows,"onUpdate:page-size":r[1]||(r[1]=i=>s(a).rows=i),total:s(a).total,"page-sizes":v.value,layouts:["PrevJump","PrevPage","JumpNumber","NextPage","NextJump","Sizes","FullJump","Total"],onPageChange:x},null,8,["current-page","page-size","total","page-sizes"])]),_:3},8,["spinning"])]),_:3})])}}};export{j as default};
