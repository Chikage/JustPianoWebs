<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查找附近玩家　</title>
<style type="text/css">
body {
	background-image: url(../assets/drawable/reg_bgx.jpg);
	text-align: center;
}
.path {	font-family: "Microsoft YaHei UI";
	color: #FFF;
	font-size: 16px;
}
a:link {
	color: #FFFFFF;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #FFFFFF;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
.but {	font-family: "Microsoft YaHei UI";
	font-size: 16px;
	color: #0000FF;
	text-align: center;
}
</style>
</head>

<body>



<div align="left"><span class="path">当前位置：<a href="main_mode.html">主页</a><a href="../layout/main_mode.html"></a>&gt;<a href="olmainmode.asp">联网对战</a>&gt;<a href="ol_users_page.asp">个人信息></a>查找附近玩家</span></div>
<table width="760" height="100%" align="center">
  
  <tr>

　　 <td>
 
  <p>&nbsp;</p>
  <div align="center">
  
   <p>&nbsp;</p>
   <p><img src="../assets/drawable/logo.png" alt="" width="300" height="80" /></p>
   <p style="font-family: 'Microsoft YaHei UI'; font-size: 18px; color: #EDE0E0;"><span style="font-family: 'Microsoft YaHei UI'; color: #FFFFFF;">当前玩家：</span><%=session("player")%></p>
   <form id="form1" name="form1" method="post" action="../action/srh_player_nearby.asp">
   <table width="262" border="0">
    <tbody>
      <tr>
        <td style="font-family: 'Microsoft YaHei UI'; color: #FFFFFF;">&nbsp;</td>
        <td width="155" align="center">&nbsp;</td>
        </tr>
      <tr>
        <td width="97" style="font-family: 'Microsoft YaHei UI'; color: #FFFFFF;">玩家位置：</td>
        <td align="center"><input name="Location"  type="text"  id="Location" readonly="readonly" Value=<%=request("location")%> style="text-align:center">
        </td>
        </tr>
      <tr>
        <td height="22" style="font-family: 'Microsoft YaHei UI'; color: #FBF5F6; font-size: 14px;"><div align="right"></div></td>
        <td style="font-family: 'Microsoft YaHei UI'; color: #FBF5F6; font-size: 14px;"> <div align="right"></div></td>
        </tr>
      <tr>
        <td height="31" align="center"><input type="submit" name="sub" id="sub" value="查找" class="but"/></td>
        <td height="31"><span style="font-family: 'Microsoft YaHei UI'; font-size: 14px; color: #FFFCFC;">位置有变？&gt;&gt;<a href="set_player_location.asp">更正位置</a></span></td>
        </tr>
      <tr>
        <td colspan="2" align="center">&nbsp;</td>
        </tr>
    </tbody>
  </table>
  </form>
   </div>
　　 </td>
　　 </tr>
　　 </table>
</body>
</html>
