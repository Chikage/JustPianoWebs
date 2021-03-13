<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查找玩家</title>
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
<span class="path">当前位置：<a href="main_mode.html">主页</a>&gt;<a href="ol_users_page.asp?player=<%=request.QueryString("player")%>">联网对战</a>&gt;<a href="ol_users_page.asp?player=<%=request.QueryString("player")%>">个人信息</a>&gt;搜索玩家</span>
<form id="form1" name="form1" method="post" action="../action/ac_search_player.asp?player=<%=request.QueryString("player")%>">
  <table width="" height="100%" align="center">
  <tr>
　　 <td>
<div align="center"> 
  <table width="369" border="0">
    <tr>
      <td width="13">&nbsp;</td>
      <td width="346"><img src="../assets/drawable/logo.png" width="300" height="80" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td class="player">当前玩家：<%=request.QueryString("player")%></td>
      </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <table width="380" height="178" border="0">
  <tr>
    <td colspan="2" class="login">    
        输入其他玩家的 
        <label>
          <input name="search4" type="radio" id="search4_0" value="nickname" checked="checked" />
          昵称</label>
      
        <label>
          <input type="radio" name="search4" value="email" id="search4_1" />
          邮箱</label>
      
      </td>
    <td width="10">&nbsp;</td>
    
  </tr>
  <tr>
    <td colspan="2" class="login">一秒钟找到你要的TA~</td>
    </tr>
  <tr>
    <td width="283" class="login"><label for="search">
      <input name="search" type="text" class="email" id="search" style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px   solid   #384B4A" />
    </label></td>
    <td width="73" class="login"><input name="but" type="submit" class="submit" id="but" value="搜索" /></td>
    </tr>
  <tr>
    <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;</td>
  </tr>
</table>
</div>
  </tr>
　　 </table>
</form>
</body>
</html>
