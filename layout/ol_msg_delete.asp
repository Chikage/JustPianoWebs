<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>删除私信</title>
<style type="text/css">
.email {	font-family: "Microsoft YaHei UI";
	font-size: 18px;
    color: #333;
	text-align: center;
}
.login {
	color: #333;
	font-size: 16px;
	text-align: center;
	font-family: "Microsoft YaHei UI";
}
.player {
	text-align: center;
	font-size: 18px;
	color: #333;
	font-family: "Microsoft YaHei UI";
}
.submit {	font-family: "Microsoft YaHei UI";
	font-size: 16px;
}
.path {	font-family: "Microsoft YaHei UI";
	color: #FFF;
	font-size: 16px;
}
body {
	background-image: url(../assets/drawable/msg_bgx.jpg);
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
<span class="path">当前位置：<a href="main_mode.html">主页</a>&gt;<a href="olmainmode.asp?player=<%=request.QueryString("player")%>">联网对战</a>&gt;<a href="ol_users_page.asp?player=<%=request.QueryString("player")%>">个人信息</a>&gt;<a href="../action/read_msg.asp?player=<%=request.QueryString("player")%>">信箱</a>&gt;删除私信</span></p>
<table width="" height="100%" align="center">
  <tr> 　　
    <td><div align="center">
      <table width="369" border="0">
        <tr>
          <td width="13">&nbsp;</td>
          <td width="346"><img src="../assets/drawable/logo.png" alt="" width="300" height="80" /></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td class="player">当前玩家：<%=session("player")%></td>
        </tr>
      </table>
      <p><%=request.QueryString("EM")%></p>
      <form id="form1" name="form1" method="post" action="../action/del_msg.asp?player=<%=session("player")%>&counter=<%=request("msg_counter")%>">
     
      <p>&nbsp;</p>
      <table width="391" height="176" border="0">
        <tr>
          <td colspan="2" class="login">删除私信</td>
          <td width="6">&nbsp;</td>
        </tr>
        <tr>
          <td colspan="2" class="login" style="color: #FF1317">此操作不可撤销，请确认后再进行删除！ </td>
        </tr>
        <tr>
          <td colspan="2" class="login">下面是你将要删除私信的信息</td>
        </tr>
        <tr>
          <td height="36" colspan="2" class="login">&nbsp;</td>
          </tr>
        <tr>
          <td height="36" class="login">编号：</td>
          <td class="login"><%=request("msg_counter")%></td>
        </tr>
        <tr>
          <td class="login" height="36">发信人：</td>
          <td class="login"><%=request("msg_sender")%></td>
        </tr>
        <tr>
          <td class="login" height="36">发送时间：</td>
          <td class="login"><%=request("msg_time")%></td>
        </tr>
        <tr>
          <td class="login" height="36">私信标记：</td>
          <td class="login"><%=request("msg_ifread")%></td>
        </tr>
        <tr>
          <td width="114" class="login" height="36">私信内容：</td>
          <td width="246" class="login"><%=request("msg_text")%></td>
        </tr>
        <tr>
          <td colspan="2" align="center">&nbsp;</td>
        </tr>
        <tr>
          <td colspan="2" align="center"><span class="login">
            <input name="but" type="submit" class="submit" id="but" value="删除" />
            <br>
          </span></td>
        </tr>
      </table>
       </form>
    </div></td>
  </tr>
  
</table>
</body>
</html>
