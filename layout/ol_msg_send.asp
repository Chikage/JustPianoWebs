<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>发送私信</title>
<style type="text/css">
body {
	background-image: url(../assets/drawable/welcome.png);
	font-family: "Microsoft YaHei UI";
}
.login {
	color: #333;
	font-size: 16px;
	text-align: center;
}
.submit {
	font-family: "Microsoft YaHei UI";
	font-size: 16px;
}
.reg {
	font-size: 12px;
}
.path {
	font-family: "Microsoft YaHei UI";
	color: #FFF;
	font-size: 16px;
}
.email {
	font-family: "Microsoft YaHei UI";
	font-size: 18px;
    color: #333;
}

.em {
	font-family: "Microsoft YaHei UI";
	font-size: 14px;
    color: #F0F;
}

.player {
	text-align: center;
	font-size: 18px;
	color: #333;
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
<embed src="../assets/sound/msg_send_FX.mp3" width="0" height="0" autostart="true" loop="false"></embed>
<body>
<span class="path">当前位置：<a href="main_mode.html">主页</a>&gt;<a href="olmainmode.asp?player=<%=request.querystring("player")%>">联网对战</a>&gt;<a href="ol_users_page.asp?player=<%=request.querystring("player")%>">个人信息</a>&gt;发送私信</span>
<form id="form1" name="form1" method="post" action="../action/send_msg.asp?player=<%=request.QueryString("player")%> &recv=<%=request.QueryString("recv")%>">
  <table width="" height="100%" align="center">
  <tr>
　　 <td>
<div align="center"> 
  <table width="369" border="0">
    <tr>
      <td width="36">&nbsp;</td>
      <td width="323"><img src="../assets/drawable/logo.png" width="300" height="80" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td class="player">当前玩家：<%=session("player")%></td>
      </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <table width="440" height="234" border="0">
  <tr>
    <td class="login">收信人：</td>
    <td colspan="2" class="login"><%=request.QueryString("recv")%></td>
    </tr>
  <tr>
    <td class="login">发信时间：</td>
    <td class="login"><%=now()%> </td>
    </tr>
  <tr>
    <td width="283" height="128" class="login"><input name="but" type="submit" class="submit" id="but" value="发送" /></td>
    <td width="73" class="login"><label for="msg"></label>
      <textarea name="msg" cols="40" rows="5" id="msg" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:0px   solid   #384B4A"></textarea></td>
    </tr>
  <tr>
    <td height="20" colspan="2" align="center"><font class="em"><%=request.QueryString("EM")%></td>
  </tr>
</table>
</div>
  </tr>
　　 </table>
</form>
</body>
</html>
