<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Searching...</title>
<style type="text/css">
body {
	background-image: url(../assets/drawable/msg_bgx.jpg);
}
.player {	font-family: "Microsoft YaHei UI";
	color: #eee;
	font-size: 16px;
}
.player {	text-align: center;
	font-family: "Microsoft YaHei UI";
	color: #222;
}
.path {	font-family: "Microsoft YaHei UI";
	color: #FFF;
	font-size: 16px;
}
.cont {	text-align: center;
    font-family: "Microsoft YaHei UI";
	color: #222;
	font-size: 14px;
	
}

.reply {	text-align: center;
    font-family: "Microsoft YaHei UI";
	color: #00C;
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
	color: #333;
}
</style>
</head>
<embed src="../assets/sound/msg_FX.mp3" width="0" height="0" autostart="true" loop="false"></embed>
<body>
<span class="path">当前位置：<a href="../layout/main_mode.html">主页</a><a href="main_mode.html"></a>&gt;<a href="../layout/olmainmode.asp?player=<%=request.QueryString("player")%>">联网对战</a>&gt;<a href="../layout/ol_users_page.asp?player=<%=request.QueryString("player")%>">个人信息</a>&gt;查找附近玩家</span>
<p>&nbsp;</p>


<table width="657" height="" align="center">
　　 <tr>
　　 <td width="661"><table width="200" border="0" align="center">
  <tr>
      <td width="1">&nbsp;</td>
      <td><img src="../assets/drawable/logo.png" width="300" height="80" /></td>
      <td width="1">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td class="player">当前玩家：<%=session("player")%></td>
      <td>&nbsp;</td>
    </tr>
</table>
  <p style="text-align: center"><span style="font-family: 'Microsoft YaHei UI'; font-size: 14px; text-align: center; color: #F5026C;">TIPS：点击玩家昵称可查看详细个人信息</span></p>
  <p>&nbsp;</p>
  <table width="651" border="1">
    <tr>
      <td width="122" class="player">玩家昵称</td>
    <td width="355" class="player">玩家地址</td>
    <td width="152" class="player">操作</td>
    </tr>
  <tr>
    <td colspan="3"><div align="center">
<!--#include file ="..\assets\database\usrdb\conn_usrdb.inc" -->
<%


objrs.open "usrInfo",objconn,1,3

kw=left((request("province")&request("location")),2)
 
Do while not objrs.Eof
  location=(objrs("province")&objrs("location"))
 
  IF InStr(location,kw)= 0 or objrs("nickname")=session("player") or objrs("privacy")="1" then 
  Else
  Read_player_nearby
  End if
  objrs.movenext
Loop
 
 function Read_player_nearby()
      response.Write "<tr><td class='cont'>"&"<a href=r_nearbyplayerinfo.asp?srh="& objrs("nickname") & "><Font color='#FF00AA'>"& objrs("NIckname")&"</td>"
      response.Write "<td class='cont'>" & "<Font color='#FF00AA'>"&location&"</td>"
      response.Write("<td class='reply' align='center'>" & "<a href=../layout/ol_msg_send.asp?player="& r &"&recv="&objrs("nickname")&"><font color='#FF00AA'>发送私信</a>")
	  response.Write("&nbsp;&nbsp;&nbsp;&nbsp;")
	  response.Write("<a href=><font color='#FF00AA'>加为好友</a></td></tr>")
	  response.Write("&nbsp;&nbsp;&nbsp;&nbsp;")
	  
 End function


%>
<!--#include file ="..\assets\database\cls_db.inc" -->
    </div></td>
    </tr>
</table>
  <p style="font-family: 'Microsoft YaHei UI'; font-size: 12px; text-align: center;">&nbsp;</p>
　　 </td>
　　 </tr>
　　 </table>
</body>
</html>
