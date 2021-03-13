<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>更正位置</title>
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
	font-family: "Microsoft YaHei UI";
	font-size: 14px;
}
.but {	font-family: "Microsoft YaHei UI";
	font-size: 16px;
	color: #0000FF;
	text-align: center;
}
</style>
</head>

<body>



<div align="left"><span class="path">当前位置：<a href="main_mode.html">主页</a><a href="../layout/main_mode.html"></a>&gt;<a href="olmainmode.asp">联网对战</a>&gt;<a href="ol_users_page.asp">个人信息&gt;</a>查找附近玩家&gt;更正位置</span></div>
<table width="760" height="100%" align="center">
  
  <tr>

　　 <td>
 
  <p>&nbsp;</p>
  <div align="center">
  
   <p>&nbsp;</p>
   <p><img src="../assets/drawable/logo.png" alt="" width="300" height="80" /></p>
   <p style="font-family: 'Microsoft YaHei UI'; font-size: 18px; color: #EDE0E0;"><span style="font-family: 'Microsoft YaHei UI'; color: #FFFFFF;">当前玩家：</span><%=session("player")%></p>
   <form id="form1" name="form1" method="post" action="../action/srh_player_nearby.asp">
   <table width="330" border="0">
    <tbody>
      <tr>
        <td width="92" style="font-family: 'Microsoft YaHei UI'; color: #FFFFFF;">&nbsp;</td>
        <td colspan="2" align="center">&nbsp;</td>
      </tr>
      <tr>
        <td><span style="font-family: 'Microsoft YaHei UI'; color: #FFFFFF;">更正位置：</span></td>
        <td colspan="2"><select name="province" class="reg" id="province" background="assets/drawable\reg_bgx.jpg" >
          <option value="" selected="selected">请选择</option>
          <option value="北京市">北京</option>
          <option value="天津市">天津</option>
          <option value="河北省">河北</option>
          <option value="山西省">山西</option>
          <option value="内蒙古自治区">内蒙古</option>
          <option value="辽宁省">辽宁</option>
          <option value="吉林省">吉林</option>
          <option value="上海市">上海</option>
          <option value="江苏省">江苏</option>
          <option value="浙江省">浙江</option>
          <option value="安徽省">安徽</option>
          <option value="福建省">福建</option>
          <option value="江西省">江西</option>
          <option value="山东省">山东</option>
          <option value="河南省">河南</option>
          <option value="湖北省">湖北</option>
          <option value="湖南省">湖南</option>
          <option value="广东省">广东</option>
          <option value="广西壮族自治区">广西</option>
          <option value="海南省">海南</option>
          <option value="重庆市">重庆</option>
          <option value="四川省">四川</option>
          <option value="贵州省">贵州</option>
          <option value="云南省">云南</option>
          <option value="西藏自治区">西藏</option>
          <option value="陕西省">陕西</option>
          <option value="甘肃省">甘肃</option>
          <option value="青海省">青海</option>
          <option value="宁夏回族自治区">宁夏</option>
          <option value="新疆维吾尔自治区">新疆</option>
          <option value="台湾省">台湾省</option>
          <option value="香港特别行政区">香港</option>
          <option value="澳门特别行政区">澳门</option>
          </select>
          <input type="text" name="location" id="location" /></td>
      </tr>
      <tr>
        <td height="21">&nbsp;</td>
        <td colspan="2">&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2" align="center"><div align="right">
          <input type="submit" name="sub" id="sub" value="查找" class="but"/>
        </div></td>
        <td align="center"><div align="right"><a href="../action/get_player_location.asp" style="font-family: 'Microsoft YaHei UI'; font-size: 14px;">不想更正位置&gt;&gt;返回</a></div></td>
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
