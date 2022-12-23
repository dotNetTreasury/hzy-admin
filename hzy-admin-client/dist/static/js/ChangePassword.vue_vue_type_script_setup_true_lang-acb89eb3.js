import{d as w,C as c,y as F,r as o,o as C,e as P,w as r,u as E,a as e,i,m as _}from"./index-294e8e84.js";import{P as x}from"./PersonalCenterService-c3a4033f.js";const b=w({name:"system_change_password"}),k=w({...b,setup(y){const n=c(),s=F({vm:{oldPassword:"",newPassword:"",qrPassword:""}}),f={oldPassword:[{required:!0,message:"\u8BF7\u8F93\u5165\u65E7\u5BC6\u7801",trigger:"blur"},{min:3,max:20,message:"\u957F\u5EA6\u5728 3 \u81F3 20 \u4E4B\u95F4",trigger:"blur"}],newPassword:[{required:!0,message:"\u8BF7\u8F93\u5165\u65B0\u5BC6\u7801",trigger:"blur"},{min:3,max:20,message:"\u957F\u5EA6\u5728 3 \u81F3 20 \u4E4B\u95F4",trigger:"blur"}],qrPassword:[{required:!0,message:"\u8BF7\u8F93\u5165\u786E\u8BA4\u65B0\u5BC6\u7801",trigger:"blur"},{min:3,max:20,message:"\u957F\u5EA6\u5728 3 \u81F3 20 \u4E4B\u95F4",trigger:"blur"}]};function v(){var d;(d=n.value)==null||d.validate().then(()=>{if(s.vm.newPassword!=s.vm.qrPassword)return _.message.warning("\u4E24\u6B21\u5BC6\u7801\u4E0D\u4E00\u81F4!");x.changePassword(s.vm).then(u=>{u.code==1&&_.message.success("\u64CD\u4F5C\u6210\u529F!")})})}return(d,u)=>{const m=o("a-input"),t=o("a-form-item"),l=o("a-col"),p=o("a-button"),B=o("a-row"),g=o("a-form");return C(),P(g,{layout:"vertical",ref_key:"refForm",ref:n,model:s.vm,rules:E(f)},{default:r(()=>[e(B,{gutter:[16,0]},{default:r(()=>[e(l,{xs:24},{default:r(()=>[e(t,{label:"\u65E7\u5BC6\u7801",name:"oldPassword"},{default:r(()=>[e(m,{value:s.vm.oldPassword,"onUpdate:value":u[0]||(u[0]=a=>s.vm.oldPassword=a),type:"password",placeholder:"\u65E7\u5BC6\u7801"},null,8,["value"])]),_:1})]),_:1}),e(l,{xs:24},{default:r(()=>[e(t,{label:"\u65B0\u5BC6\u7801",name:"newPassword"},{default:r(()=>[e(m,{value:s.vm.newPassword,"onUpdate:value":u[1]||(u[1]=a=>s.vm.newPassword=a),type:"password",placeholder:"\u65B0\u5BC6\u7801"},null,8,["value"])]),_:1})]),_:1}),e(l,{xs:24},{default:r(()=>[e(t,{label:"\u786E\u8BA4\u65B0\u5BC6\u7801",name:"qrPassword"},{default:r(()=>[e(m,{value:s.vm.qrPassword,"onUpdate:value":u[2]||(u[2]=a=>s.vm.qrPassword=a),type:"password",placeholder:"\u786E\u8BA4\u65B0\u5BC6\u7801"},null,8,["value"])]),_:1})]),_:1}),e(l,{xs:24},{default:r(()=>[e(t,{"wrapper-col":{span:14}},{default:r(()=>[e(p,{type:"primary",onClick:u[3]||(u[3]=a=>v())},{default:r(()=>[i("\u63D0\u4EA4")]),_:1}),e(p,{style:{"margin-left":"10px"},onClick:u[4]||(u[4]=()=>{var a;return(a=n.value)==null?void 0:a.resetFields()})},{default:r(()=>[i("\u91CD\u7F6E")]),_:1})]),_:1})]),_:1})]),_:1})]),_:1},8,["model","rules"])}}});export{k as _};
