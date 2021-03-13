<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>信箱</title>
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

<span class="path">当前位置：<a href="../layout/main_mode.html">主页</a><a href="main_mode.html"></a>&gt;<a href="../layout/olmainmode.asp?player=<%=request.QueryString("player")%>">联网对战</a>&gt;<a href="../layout/ol_users_page.asp?player=<%=request.QueryString("player")%>">个人信息</a>&gt;信箱</span></p>
<p>&nbsp;</p>


<table width="850" height="" align="center">
　　 <tr>
　　 <td width="842"><table width="200" border="0" align="center">
  <tr>
      <td width="1">&nbsp;</td>
      <td><img src="../assets/drawable/logo.png" width="300" height="80" /></td>
      <td width="1">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td class="player">当前玩家：<%=request.QueryString("player")%></td>
      <td>&nbsp;</td>
    </tr>
</table>
  <p>&nbsp;</p>
  <table width="200" border="0" align="center">
    <tr>
      <td align="center"><font color="#FF0066"><%=request.QueryString("EM")%></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <table width="846" border="1">
    <tr>
      <td width="60" class="player">编号</td>
    <td width="96" class="player">发信人</td>
    <td width="96" class="player">发送时间</td>
    <td width="272" class="player">私信内容</td>
    <td width="60" class="player">状态</td>
    <td width="108" class="player">操作</td>
    <td width="108" class="player">标记为</td>
  </tr>
  <tr>
    <td colspan="7"><div align="center">
<!--#include file ="..\assets\database\usrdb\conn_usrdb.inc" -->

<%

	r=cstr(session("player"))
    objrs.open r ,objconn,1,3
    
	if objrs.eof then
	response.redirect("../layout/ol_users_page.asp?player="& request.QueryString("player")&"&EM=用户当前没有私信~")
	
	Else
	
	 objrs.MoveLast
	 
     Do while not objrs.bof
       msg_IFread
	   objrs.moveprevious
     Loop
   End IF
   
   function msgread()
      response.Write("<td class='reply' align='center'>" & "<a href=../layout/ol_msg_send.asp?player="& r &"&recv="&objrs("msg_sender")&"><font color='#222'>回复</a>")
	  response.Write("&nbsp;&nbsp;&nbsp;&nbsp;")
	  response.Write("<a href=read_msgtodel.asp?player="& r &"&counter="&objrs("msg_counter")&"><font color='#222'>删除</a></td>")
      response.Write("<td class='reply' align='center'>" & "<a href=mark_msg.asp?player="& r &"&counter="&objrs("msg_counter")&"&mark=未读><font color='#222'>未读</a>")
	  response.Write("&nbsp;&nbsp;&nbsp;&nbsp;")
	  response.Write("<a href=mark_msg.asp?player="& r &"&counter="&objrs("msg_counter")&"&mark=重要><font color='#222'>重要</a></td></tr>")
   end function
   
   function msgunread()
      response.Write("<td class='reply' align='center'>" & "<a href=../layout/ol_msg_send.asp?player="& r &"&recv="&objrs("msg_sender")&"><font color='#FF0066'>回复</a>")
	  response.Write("&nbsp;&nbsp;&nbsp;&nbsp;")
	  response.Write("<a href=read_msgtodel.asp?player="& r &"&counter="&objrs("msg_counter")&"><font color='#FF0066'>删除</a></td>")
      response.Write("<td class='reply' align='center'>" & "<a href=mark_msg.asp?player="& r &"&counter="&objrs("msg_counter")&"&mark=已读><font color='#FF0066'>已读</a>")
	  response.Write("&nbsp;&nbsp;&nbsp;&nbsp;")
	  response.Write("<a href=mark_msg.asp?player="& r &"&counter="&objrs("msg_counter")&"&mark=重要><font color='#FF0066'>重要</a></td></tr>")
   end function
   
    function msgimp()
     
	  response.Write("<td class='reply' align='center'>" & "<a href=../layout/ol_msg_send.asp?player="& r &"&recv="&objrs("msg_sender")&"><font color='#FF1100'>回复</a>")
	  response.Write("&nbsp;&nbsp;&nbsp;&nbsp;")
	  response.Write("<a href=read_msgtodel.asp?player="& r &"&counter="&objrs("msg_counter")&"><font color='#FF1100'>删除</a></td>")
	  response.Write("<td class='reply' align='center'>" & "<a href=mark_msg.asp?player="& r &"&counter="&objrs("msg_counter")&"&mark=未读><font color='#FF1100'>未读</a>")
	  response.Write("&nbsp;&nbsp;&nbsp;&nbsp;")
	  response.Write("<a href=mark_msg.asp?player="& r &"&counter="&objrs("msg_counter")&"&mark=已读><font color='#FF1100'>已读</a></td></tr>")
   end function
   
   Function msg_IFread()
    IF objrs("msg_IfRead")="未读" then
      response.Write "<tr><td class='cont'>" & "<Font color='#FF0066'>"& objrs("msg_counter")&"</td>"
      response.Write "<td class='cont'>" & "<Font color='#FF0066'>"&objrs("msg_sender")&"</td>"
	  response.Write "<td class='cont'>" &  "<Font color='#FF0066'>"& objrs("msg_time")&"</td>"
	  response.Write "<td class='cont'>" &  "<Font color='#FF0066'>"& objrs("msg_text")&"</td>"
	  response.Write "<td class='cont'>" &  "<Font color='#FF0066'>"& objrs("msg_IFread")&"</td>" 
      msgunread
	elseif objrs("msg_IfRead")="重要" then
      response.Write "<tr><td class='cont'>" & "<Font color='#FF1100'>"& objrs("msg_counter")&"</td>"
      response.Write "<td class='cont'>" & "<Font color='#FF1100'>"&objrs("msg_sender")&"</td>"
	  response.Write "<td class='cont'>" &  "<Font color='#FF1100'>"& objrs("msg_time")&"</td>"
	  response.Write "<td class='cont'>" &  "<Font color='#FF1100'>"& objrs("msg_text")&"</td>"
	  response.Write "<td class='cont'>" &  "<Font color='#FF1100'>"& objrs("msg_IFread")&"</td>"
      msgimp
	 Else
	  response.Write "<tr><td class='cont'>" & objrs("msg_counter")&"</td>"
      response.Write "<td class='cont'>" &  objrs("msg_sender")&"</td>"
	  response.Write "<td class='cont'>" &  objrs("msg_time")&"</td>"
	  response.Write "<td class='cont'>" &  objrs("msg_text")&"</td>"
	  response.Write "<td class='cont'>" &  objrs("msg_IFread")&"</td>"
     
      msgread
    End IF
   End Function
   
   
%>
<!--#include file ="..\assets\database\cls_db.inc" -->
    </div></td>
    </tr>
</table>
  <p>&nbsp;</p>
　　 </td>
　　 </tr>
　　 </table>
</body>
</html>
