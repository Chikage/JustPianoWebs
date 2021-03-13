<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户登录</title>
<style type="text/css">
body {
	background-image: url(../assets/drawable/welcome.png);
	font-family: "Microsoft YaHei UI";
}
.login {
	color: #222;
	font-size: 18px;
}
.submit {
	font-family: "Microsoft YaHei UI";
	font-size: 16px;
}
.reg {
	color: #222;
	font-family: "Microsoft YaHei UI";
	font-size: 12px;
}
.path {
	font-family: "Microsoft YaHei UI";
	color: #FFF;
	font-size: 16px;
}
.email {
	font-family: "Microsoft YaHei UI";
	font-size: 16px;
}
a:link {
	color: #FFF;
	text-decoration: none;
}
a:visited {
	color: #FFF;
	text-decoration: none;
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

<span class="path">当前位置：<a href="main_mode.html">主页</a>&gt;联网对战&gt;登录</span>
<p></p>
<p></p>
<p></p>
<form id="form1" name="form1" method="post" action="../action/check.asp">
  <table width="" height="100%" align="center">
  <tr>
　　 <td>
<div align="center"> 
  <p>&nbsp;</p>
  <table width="303" border="0">
    <tr>
      <td width="297" colspan="2"><img src="../assets/drawable/logo.png" width="300" height="80" /></td>
    </tr>
    </table>
  <p>&nbsp;</p>
  <table width="380" height="168" border="0">
    <tr>
    <td colspan="4" class="login">注册邮箱：
      <label for="UID"></label>
      <label for="email"></label></td>
    <td colspan="2" class="login"><input name="email" type="text" class="email" id="email"style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px   solid   #384B4A" onblur="return checkMail();" size="24" background="imgres\reg_bgx.jpg"/></td>
    </tr>
  <tr>
    <td colspan="4" class="login">输入密码：
      <label for="pass"></label></td>
    <td class="login"><input name="PASS" type="password" class="email" id="PASS" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px   solid   #384B4A" size="24" background="imgres\reg_bgx.jpg"/></td>
    </tr>
  <tr>
    <td height="19" colspan="5" class="login"><label for="PASS"><span class="reg">&nbsp;</span></label></td>
    </tr>
  <tr>
    <td width="77" rowspan="2" align="center"><span class="reg"></span>      <input name="button" type="submit" class="submit" id="button" value="登录" /></td>
    <td width="12" rowspan="2" align="center">&nbsp;</td>
    <td colspan="2" rowspan="2" align="center"><span class="reg">
      <input name="button2" type="reset" class="submit" id="button2" value="重置" />
    </span></td>
    <td width="204" height="32" align="center"><span class="login"><span class="reg" >还没有帐号？ <a href="reg.asp"><font color="#0000FF">注册</a><a href="reg.asp"></a></span></span></td>
  </tr>
  <tr>
    <td height="31" align="center" class="login"><span class="reg">忘记了密码？ <a href="find_pass.asp"><font color="#0000FF">点此</a></span></td>
  </tr>
</table>
<font color="red"><%=request.QueryString("EM")%>
 </div>
  </tr>
　　 </table>
</form>
<script language="javascript">
  function checkMail(){
  var check=document.form1.email.value;
    if(check.length==0){
    alert("请输入邮箱名");
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
  </script>
</body>
</html>
