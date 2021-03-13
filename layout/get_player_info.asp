<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>玩家资料</title>
<style type="text/css">
body {
	background-image: url(../assets/drawable/user_info_bgx.jpg);
}

.path {	font-family: "Microsoft YaHei UI";
	color: #FFF;
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
.ti {
	text-align: center;
	font-family: "Microsoft YaHei UI";
	font-size: 16px;
	color: #222;
}
.mod {
	text-align: center;
	color: #FF0;
	font-family: "Microsoft YaHei UI";
}
.inftitle {
	font-size: 18px;
}
</style>
</head>


<body>
<span class="path"><span class="path">当前位置：<a href="main_mode.html">主页</a>&gt;<a href="olmainmode.asp?player=<%=request.querystring("player")%>">联网对战</a>&gt;<a href="ol_users_page.asp?player=<%=request.querystring("player")%>">个人信息</a></span>&gt;其他玩家资料</span>
<table width="760" height="100%" align="center">

　　 <tr>

　　 <td>
  <p>&nbsp;</p>
  <div align="center">
<table width="200" border="0">
  <tr>
    <td>&nbsp;</td>
    <td><img src="../assets/drawable/logo.png" alt="" width="300" height="80" /></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td class="ti"><span class="inftitle">玩家资料</span></td>
    <td>&nbsp;</td>
  </tr>
</table>
  <p>&nbsp;</p>
  <table width="433" border="0"  cellspacing="1" cellpadding="1" >
    <tr>
      <td width="96" height="24"  class="sheet" align="center"><span class="ti"> 昵称：</span></td>
      <td width="231" align="center"><font class="ti"><%=request("nickname")%></td>
      <td width="96" rowspan="5" align="center"><img src="../assets/drawable/user_head.jpg" width="96" height="96" /></td>
    </tr>
    <tr>
      <td class="sheet" align="center"><span class="ti">邮箱：</span></td>
      <td align="center"><font class="ti"><%=request("email")%></td>
      </tr>
    <tr>
      <td class="sheet" align="center"><span class="ti">性别：</span></td>
      <td align="center"><font class="ti"><%=request("sex")%></td>
      </tr>
    <tr>
      <td class="sheet" align="center"><span class="ti">年龄：</span></td>
      <td align="center"><span style="font-family: 'Microsoft YaHei UI'; color: #222222;"><%=request("age")%></span></td>
    </tr>
    <tr>
      <td align="center" class="sheet" style="font-family: 'Microsoft YaHei UI'; font-size: 16px; color: #222222;">生日：</td>
      <td align="center"><span style="font-family: 'Microsoft YaHei UI'"></span><font class="ti"><%=request("bd")%></td>
      </tr>
    <tr>
      <td class="sheet" align="center"><span class="ti">位置：</span></td>
      <td align="center"><font class="ti"><%=request("location")%></td>
      <td align="center">&nbsp;</td>
    </tr>
    <tr>
      <td class="sheet" align="center"><span class="ti">等级：</span></td>
      <td align="center">&nbsp;</td>
      <td align="center">&nbsp;</td>
    </tr>
    <tr>
      <td class="sheet" align="center"><span class="ti">总分：</span></td>
      <td align="center">&nbsp;</td>
      <td align="center" style="font-family: 'Microsoft YaHei UI'"><a href="ol_msg_send.asp">加为好友</a></td>
    </tr>
    <tr>
      <td class="sheet" align="center"><span class="ti">个签：</span></td>
      <td align="center"><font class="ti"><%=request("p_sign")%></td>
      <td align="center"><span class="mod"><a href="ol_msg_send.asp?player=<%=request("searcher")%>&recv=<%=request("nickname")%>">私信给TA</a></span></td>
    </tr>
    </table>

  
   </div>
　　 </td>
　　 </tr>
　　 </table>

</body>
</html>
