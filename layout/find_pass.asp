<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>找回及修改密码</title>

<style type="text/css">

.title {
	text-align: center;
	font-size: 22px;
	color: #FFC;
}
.sheet {
	font-family: "Microsoft YaHei UI";
	font-size: 16px;
	color: #FFC;
	text-align: center;
}
.tag {
	font-family: "Microsoft YaHei UI";
	color: #F0F;
}
.note {
	font-size: 14px;
	font-family: "Microsoft YaHei UI";
}
.but{
	font-family: "Microsoft YaHei UI";
	font-size: 16px;
	color: #0000FF;
	text-align: center;
}
.res{
	font-family: "Microsoft YaHei UI";
	font-size: 16px;
	color: #FF00CC;
	text-align: center;
}
.reg {
	font-family: "Microsoft YaHei UI";
	font-size: 16px;
	color: #000;
}
body {
	background-image: url(../assets/drawable/reg_bgx.jpg);
	text-align: center;
}

.path {	font-family: "Microsoft YaHei UI";
	color: #FFF;
	font-size: 16px;
}

.noti {	
    text-align: center;
    font-family: "Microsoft YaHei UI";
	color: #E10;
	font-size: 14px;
}
a:link {
	color: #FFF;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #FFF;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
</style>
</head>

<body>
<form action="../action/modi_pass.asp" method="post" name="form1" id="form1" >
  <div align="left"><span class="path">当前位置：<a href="main_mode.html">主页</a>&gt;<a href="login.asp">联网对战</a>&gt;找回及修改密码</span>　　
  </div>
  <table width="760" height="100%" align="center">
　　 <tr>
　　 <td><p>&nbsp;</p>
  <div align="center">
  <table width="200" border="0">
    <tr>
      <td><img src="../assets/drawable/logo.png" width="300" height="80" /></td>
      </tr>
    </table>
  <p>&nbsp;</p>
  <table width="321" border="0"  cellspacing="1" cellpadding="1" >
    <tr>
      <td height="34" colspan="4" background="src/imgres/reg_bgx.jpg" class="title">找回及修改密码</td>
    </tr>
    <tr>
    <td height="27" colspan="4" background="src/imgres/reg_bgx.jpg" class="noti"><%=request.QueryString("EM")%></td>
    </tr>
  <tr>
    <td height="24" colspan="2"  class="sheet">玩家邮箱：</td>
    <td colspan="2"><label for="Nickname"></label>
      <input name="email" type="text" class="reg" id="email" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px   solid   #384B4A" background="imgres\reg_bgx.jpg" onfocus="return txtFocus();" onblur="return checkmail();"/></label></td>
  </tr>
  <tr>
    <td colspan="2" class="sheet">注册时间：</td>
    <td colspan="2"><input name="time" type="password" class="reg" id="time" onblur="return checkMail();"style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px   solid   #384B4A" background="imgres\reg_bgx.jpg"/></td>
  </tr>
  <tr>
    <td colspan="2" class="sheet">输入密码：</td>
    <td colspan="2"><label for="pass"></label>
      <input name="pass" type="password" class="reg" id="pass" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px   solid   #384B4A" background="imgres\reg_bgx.jpg" maxlength="16" onfocus="return txtFocus();" onblur="return checkpass();"/></td>
  </tr>
  <tr>
    <td colspan="2" class="sheet">确认密码：</td>
    <td colspan="2"><label for="repass"></label>
      <input name="repass" type="password" class="reg" id="repass"style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px   solid   #384B4A" onfocus="return txtFocus();" onblur="return checkrepass();" maxlength="16" background="imgres\reg_bgx.jpg"/></td>
    </tr>
  <tr>
    <td height="31" colspan="4" class="sheet"><label for="time"></label><font color="red"></td>
    </tr>
  <tr>
    
    <td width="64" >&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td width="48" ><input type="submit" name="Reg" id="Reg" value="提交" class="but"/></td>
    <td width="80" >&nbsp;</td>
    <td width="116" ><input name="button" type="reset" class="res" id="button" value="清空" /></td>
  </tr>
</table>
 </div>
　　 </td>
　　 </tr>
　　 </table>

</form>



<script language="javascript">
  
  
 function checkMail(){
  var check=document.form1.email.value;
    if(check.length==0){
    alert("请输入邮箱名");
    document.form1.email.focus();
    document.form1.email.select();
    return false;
   
 }
 if(check.indexOf("@",0)==-1){
    alert("邮箱名格式不正确");
    document.form1.email.focus();
    document.form1.email.select();
    return false;
   
 }
 if(check.indexOf(".",0)==-1){
    alert("邮箱名格式不正确");
    document.form1.email.focus();
    document.form1.email.select();
    return false;
   
 }
 return true;
  }
  function cls(){
     if(document.form1.email.value=="请在此输入您正确的邮箱名!"){
     document.form1.email.value="";
  document.form1.email.style.color="#000000"
  }
  }
  
  function checkpass(){

  var check=document.form1.pass.value;
    if(check.length<6){
    alert("密码应至少为6位!");
    document.form1.pass.focus();
    document.form1.pass.select();
    return false;
   
 }
  return true;
  }
  
 function checkrepass(){

  var check=document.form1.pass.value;
  var recheck=document.form1.repass.value;
    if(check!=recheck){
    alert("两次密码输入不同!");
	document.form1.repass.value="";
    document.form1.pass.focus();
    document.form1.pass.select();
    return false;
   
 }
  return true;
  }
    
  
  
  </script>



</script>
<script type="text/javascript">

<!--
    function txtFocus() {
       var e = window.event;
       var obj = e.srcElement;  
       obj.style.background = "#ffff99";

    }

    function txtBlur() {
       var e = window.event;
       var obj = e.srcElement;
       obj.style.background = "#66ffcc";
    }
-->

</script>


</body>
</html>

