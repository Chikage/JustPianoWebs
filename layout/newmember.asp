<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎</title>
<style type="text/css">
body {
	background-image: url(../assets/drawable/welcome.png);
	text-align: center;
}
.centre {
	font-family: "Microsoft YaHei UI";
}
.centre {
	color: #FFF;
	text-align: center;
}
.path {font-family: "Microsoft YaHei UI";
	color: #FFF;
	font-size: 16px;
.email {
}
.centre1 {
	font-family: "Microsoft YaHei UI";
}
.centre1 {
	color: #FFF;
}
</style>
</head>
<embed src="../assets/sound/welcome_new.mp3" width="0" height="0" autostart="true" loop="false"></embed>
<body>
<align="left"><span class="path">当前位置：主页&gt;联网对战&gt;欢迎</span></p>

<table width="" height="100%" align="center">
  <tr>
　　 <td width="1112">
<div align="center">
  <table width="200" height="139" border="0">
  <tr>
    <td>&nbsp;</td>
    <td><img src="../assets/drawable/logo.png" width="300" height="80" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
 </table>
<table width="428" border="0">
  <tr>
    <td colspan="2" class="centre">热烈欢迎新玩家<font color="#ECECEC"><%=session("player")%></font>加入对战平台！</td>
    </tr>
  <tr>
    <td colspan="2" class="centre">请牢记本帐号的注册时间以修改和找回密码！</td>
  </tr>
  <tr>
    <td colspan="2" class="centre">注册时间：<%=request.QueryString("time")%>(纯数字！)</td>
  </tr>
  <tr>
    <td colspan="2" class="centre">现在你可以：</td>
  </tr>
  <tr>
    <td colspan="2" class="centre">&nbsp;</td>
    </tr>
  <tr>
    <td width="192" class="centre"><a href="olmainmode.asp?player=<%=request.QueryString("player")%>">进入对战平台</a></td>
    <td width="198" class="centre"><a href="adinfo.asp?player=<%=request.QueryString("player")%>">完善个人信息</a></td>
  </tr>
</table>
<p>&nbsp;</p>

</div>
  </tr>
　　 </table>
</body>
</html>
