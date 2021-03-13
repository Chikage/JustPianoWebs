<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>联网对战</title>
<style type="text/css">
body {
	background-image: url(../assets/drawable/ol.png);
}
.path {
	font-family: "Microsoft YaHei UI";
	color: #FFF;
	font-size: 16px;
}
.player {
	font-family: "Microsoft YaHei UI";
	color: #eee;
	font-size: 16px;
}
.player {
	text-align: center;
	font-family: "Microsoft YaHei UI";
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
.selectmode {
	text-align: center;
	font-family: "Microsoft YaHei UI";
	font-size: 16px;
	color: #FFF;
}
</style>
<script type="text/javascript">
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
</script>
</head>
<embed src="../assets/sound/Login_FX.mp3" width="0" height="0" autostart="true" loop="false"></embed> 
<body onload="MM_preloadImages('../assets/drawable/mine/mine_onmouseover.png')">
<span class="path">当前位置：<a href="main_mode.html">主页</a>&gt;联网对战</span>
<p align="right">
<table width="" height="100%" align="center">
  <tr>
　　 <td width="1112">
<div align="center"> 
<table width="200" border="0">
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
<table width="200" border="0">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<p>&nbsp;</p>
<table width="508" border="0">
  <tr>
    <td width="96"><img src="../assets/drawable/music.png" width="96" height="96" /></td>
    <td width="32">&nbsp;</td>
    <td width="96"><img src="../assets/drawable/online/online.png" width="96" height="60" /></td>
    <td width="33">&nbsp;</td>
    <td width="96"><img src="../assets/drawable/ranking.png" width="96" height="96" /></td>
    <td width="32">&nbsp;</td>
    <td width="96"><a href="ol_users_page.asp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image5','','../assets/drawable/mine/mine_onmouseover.png',1)"><img src="../assets/drawable/mine/mine.png" width="96" height="96" id="Image5" /></a></td>
  </tr>
  <tr>
    <td class="selectmode">曲库</td>
    <td>&nbsp;</td>
    <td class="selectmode"><a href="olplayhallroom.asp">对战</a></td>
    <td>&nbsp;</td>
    <td class="selectmode">排行</td>
    <td>&nbsp;</td>
    
    <td class="selectmode"><a href="ol_users_page.asp?" >我的</a></td>
    </tr>
</table>
<p class="player">&nbsp;</p>

 </div>
  </tr>
　　 </table>
</body>
</html>
