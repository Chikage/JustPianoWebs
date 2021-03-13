<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<TITLE>原谱试听</TITLE>



<STYLE type="text/css">

body {
	background: url("../asset/drawable/msg_bgx.jpg") rgb(51, 51, 51); margin: 0px; text-align: center; color: rgb(204, 204, 204); font-family: Arial, Helvetica, sans-serif; font-size: 12px;
}
a:link {
	color: rgb(255,255,204);
	text-decoration: none;
}
a:visited {
	color: rgb(255,255,204);
	text-decoration: none;
}
a:hover {
	color: rgb(255,255,204);
	text-decoration: none;
}
a:active {
	font-family: "Microsoft YaHei UI";
	text-align: justify;
	color: rgb(255,255,204);
	text-decoration: none;
}
a.two:link {
	color: orange; text-decoration: none;
}
a.two:visited {
	color: orange;
}
a.two:hover {
	color: rgb(255, 255, 255); text-decoration: underline;
}
a.three:link {
	color: rgb(170, 221, 255); text-decoration: none;
}
a.three:visited {
	color: rgb(170, 221, 255);
}
a.three:hover {
	color: rgb(255, 255, 255); text-decoration: underline;
}

body {
	background-image: url(../assets/drawable/reg_bgx.jpg);
	text-align: center;
	font-size: 16px;
	font-family: "Microsoft YaHei UI";
	color: rgb(255,255,255);
}

.path {font-family: "Microsoft YaHei UI";
	color: #FFF;
	font-size: 16px;
}

</STYLE>

<META name="GENERATOR" content="MSHTML 11.00.9879.0"></HEAD> 
<BODY text="#976900" link="#990033" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<div align="left">
  <p><span class="path">当前位置：<a href="../layout/main_mode.html">主页</a><a href="main_mode.html"></a>&gt;欣赏&gt;原谱试听</span>
    </p>
    <BR>
  </p>
</div>
<table width="430" height="" align="center">
  <tr>
　　 <td width="362" height="547" align="center"><div align="center">
  <table width="630" border="0">
    <tr>
      <td width="173">&nbsp;</td>
      <td width="315"><img src="../assets/drawable/logo.png" width="300" height="80" align="middle" /></td>
      <td width="128">&nbsp;</td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <table width="638" height="434" border="0">
    <tr>
    <td colspan="2" rowspan="3" style="font-family: 'Microsoft YaHei UI'; text-align: center; font-size: 16px; color: rgb(51,51,51);">
    <object width="286" height="63" align="middle" class="OBJECT" id="MediaPlayer"  classid="CLSID:22d6f312-b0f6-11d0-94ab-0080c74c7e95">
      <param name="showStatusBar"  value="-1" />
      <param name="AUTOSTART" value="-1" />
      <param name="Filename" value="<%=request("path")%>" />
      <embed width="286" height="63" src="<%=request("path")%>" type="application/x-oleobject" codebase="http://activex.microsoft.com/activex/controls/mplayer/en/nsmp2inf.cab#Version=5,1,52,701" flename="mp"> </embed>
    </object>
    </td>
    <td height="23" style="font-family: 'Microsoft YaHei UI'; text-align: center; font-size: 16px; color: rgb(51,51,51);">&nbsp;</td>
    <td height="23" style="font-family: 'Microsoft YaHei UI'; text-align: center; font-size: 16px; color: rgb(51,51,51);">&nbsp;</td>
    </tr>
  <tr>
    <td height="120" colspan="2" align="center">&lt;&lt;----------------------这是播放器</td>
    </tr>
  <tr>
    <td height="31" align="center"><span style="font-family: 'Microsoft YaHei UI'; text-align: center; font-size: 16px; color: rgb(204,204,204);">当前歌谱：</span></td>
    <td align="center"><%=request("ti")%></td>
  </tr>
  <tr>
    <td width="113" height="29" style="font-family: 'Microsoft YaHei UI'; text-align: center; font-size: 16px; color: rgb(204,204,204);"><span style="font-family: 'Microsoft YaHei UI'; font-size: 16px; color: rgb(204,204,204); text-align: center;">音符数量：</span></td>
    <td width="169" align="center"><%=request("note")%></td>
    <td width="169" align="center"><span style="font-family: 'Microsoft YaHei UI'; text-align: center; font-size: 16px; color: rgb(204,204,204);">歌谱分类：</span></td>
    <td width="169" align="center"><%=request("srt")%></td>
  </tr>
  <tr>
    <td height="29" align="center"><span style="font-family: 'Microsoft YaHei UI'; font-size: 16px; color: rgb(204,204,204); text-align: center;">音轨数量：</span></td>
    <td align="center"><%=request("track")%></td>
    <td align="center"><span style="font-family: 'Microsoft YaHei UI'; font-size: 16px; color: rgb(204,204,204);">歌谱作者：</span></td>
    <td align="center"><%=request("ar")%></td>
  </tr>
  <tr>
    <td height="31" align="center"><span style="font-family: 'Microsoft YaHei UI'; font-size: 16px; color: rgb(204,204,204); text-align: center;">更新时间：</span></td>
    <td align="center"><span style="color: rgb(255,255,255)"><%=request("d")%></span></td>
    <td align="center"><span style="font-family: 'Microsoft YaHei UI'; font-size: 16px; color: rgb(204,204,204); text-align: center;">歌谱专辑：</span></td>
    <td align="center"><%=request("al")%></td>
  </tr>
  <tr>
    <td height="25" align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
    <td align="center">&nbsp;</td>
  </tr>
  <tr>
    <td height="81" colspan="2" align="center" style="font-family: 'Microsoft YaHei UI'; color: #FFF;">    <form id="form1" name="form1" method="post" action="../action/listen_jump.asp">
      <label for="sort"></label>
      <select name="sort" id="sort" style="font-family: 'Microsoft YaHei UI'; color: #111; size:16">
        <option value="classic">经典乐章</option>
        <option value="pop">流行空间</option>
        <option value="ACG">动漫原声</option>
        <option value="games">游戏主题</option>
        <option value="nursery">儿时回忆</option>
        </select>
      ==&gt;
  <input type="submit" name="button" id="button" style="font-family: 'Microsoft YaHei UI'; color: #111;" size="16" value="跳转至分类" />
      &nbsp;&nbsp;&nbsp;
    </form> 
    </td>
    <td height="92" align="center" style="font-family: 'Microsoft YaHei UI'; color: #FFF;">
     <a href="../action/rd_songs_info/jp_songs.asp?srt=<%=request("bsrt")%>&ID=<%=request("ID")%>&mv=P"><font color="#EE00FF">P<==</font></a>
     &nbsp;<a href="../action/rd_songs_info/auto_select.asp?sr=<%=request("rnd")%>">换歌</a>&nbsp;
     <a href="../action/rd_songs_info/jp_songs.asp?srt=<%=request("bsrt")%>&ID=<%=request("ID")%>&mv=N"><font color="#EE00FF">==>N</font></a>
    </td>
    <td height="92" align="center" style="font-family: 'Microsoft YaHei UI'; color: #FFF;">
     <a href="../action/rd_songs_info/rd_details.asp?sort=<%=request("bsrt")%>&vsrt=<%=request("srt")%>">返回分类列表</a>
    </td>
  </tr>
  <tr>
    <td height="15" colspan="2" align="center" style="font-family: 'Microsoft YaHei UI'; color: #FFF;">
 
</td>
    <td height="15" align="center" style="font-family: 'Microsoft YaHei UI'; color: #FFF;">&nbsp;</td>
    <td height="15" align="center" style="font-family: 'Microsoft YaHei UI'; color: #FFF;">&nbsp;</td>
  </tr>
</table>
</div>
　　 </td>
　　 </tr>
　　 </table>

</BODY>
</HTML>
