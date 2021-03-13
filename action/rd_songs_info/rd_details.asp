<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>歌曲列表</title>
<style type="text/css">
body {
	background-image: url(../../assets/drawable/user_info_bgx.jpg);
}
.player {	font-family: "Microsoft YaHei UI";
	color: #eee;
	font-size: 16px;
}
.player {
	text-align: center;
	font-family: "Microsoft YaHei UI";
	color: #333;
	font-size: 14px;
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

<span class="path">当前位置：<a href="../layout/main_mode.html">主页</a><a href="main_mode.html"></a>&gt;欣赏&gt;选择歌曲</span></p>
<p>&nbsp;</p>


<table width="932" height="" align="center">
　　 <tr>
　　 <td width="842"><table width="200" border="0" align="center">
  <tr>
      <td width="1">&nbsp;</td>
      <td><img src="../../assets/drawable/logo.png" width="300" height="80" /></td>
      <td width="1">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td class="player">TIPS:点击歌曲名可进行试听下载</td>
      <td>&nbsp;</td>
    </tr>
</table>
  <p>&nbsp;</p>
  <table width="200" border="0" align="center">
    <tr>
      <td height="24" align="center" style="font-size: 18px; font-family: 'Microsoft YaHei UI';">当前分类：<%=request.QueryString("vsrt")%><font color="#FF0066"></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <table width="904" border="1">
    <tr>
      <td width="69" class="player">编号</td>
    <td width="211" class="player">歌曲名称</td>
    <td width="165" class="player">歌手</td>
    <td width="152" class="player">专辑</td>
    <td width="116" class="player">更新时间</td>
    <td width="80" class="player">音轨数</td>
    <td width="65" class="player">音符数量</td>
    <td width="65" class="player">歌曲时长</td>
  </tr>
  <tr>
    <td colspan="8"><div align="center">

<!--#include file ="../../assets/database/songsdb/conn_songsdb.inc" -->
<%
    s=cstr(request.QueryString("sort"))
    objrs.open s ,objconn,1,3
	
	  objrs.movelast
	  
	  do while not objrs.bof
	  d=objrs("ad_year")&"-"&objrs("ad_month")&"-"&objrs("ad_day")
	  t=objrs("ti")
	  response.Write "<tr><td class='cont'>" & "<Font color='#FF0066'>"& objrs("ID")&"</td>"
      response.Write("<td class='cont'><a href=rd_songs_tolisten.asp?ti="& t &"&sort="&s&"&vsrt="&request.QueryString("vsrt")&"><font color='#FF1100'>"&t&"</a></td>")
	  response.Write "<td class='cont'>" &  "<Font color='#FF0066'>"& objrs("ar")&"</td>"
	  response.Write "<td class='cont'>" &  "<Font color='#FF0066'>"& objrs("al")&"</td>"
	  response.Write "<td class='cont'>" &  "<Font color='#FF0066'>"& d &"</td>" 
	  response.Write "<td class='cont'>" &  "<Font color='#FF0066'>"& objrs("track") &"</td>" 
	  response.Write "<td class='cont'>" &  "<Font color='#FF0066'>"& objrs("note") &"</td>"
	  response.Write "<td class='cont'>" &  "<Font color='#FF0066'>"& objrs("duration") &"</td></tr>" 
	  objrs.moveprevious
	  loop
	
%>
<!--#include file ="..\..\assets\database\cls_db.inc" -->
  </div></td>
    </tr>
</table>
  <p style="font-family: '微软雅黑'; text-align: center;"><a href="../select_jp.asp?sort=<%=cstr(request.QueryString("sort"))%>">随机选歌</a></p>
　　 </td>
　　 </tr>
　　 </table>
</body>
</html>
