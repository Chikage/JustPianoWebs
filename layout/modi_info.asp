<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>完善信息</title>
<style type="text/css">

body {
	background-image: url(../assets/drawable/reg_bgx.jpg);
	text-align: left;
}



.title {
	text-align: center;
	font-size: 24px;
	color: #FFC;
	font-family: "Microsoft YaHei UI";
}
.sheet {
	font-family: "Microsoft YaHei UI";
	font-size: 16px;
	color: #FFC;
	text-align: center;
}

.note {
	font-size: 14px;
	font-family: "Microsoft YaHei UI";
}
.but{
	font-family: "Microsoft YaHei UI";
	font-size: 16px;
	color: #0000FF;
	text-align: center;
}
.res{
	font-family: "Microsoft YaHei UI";
	font-size: 16px;
	color: #FF00CC;
	text-align: center;
}

.path {
	font-family: "Microsoft YaHei UI";
	color: #FFF;
	font-size: 16px;
}


.play {
	text-align: center;
	font-family: "Microsoft YaHei UI";
	font-size: 16px;
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
</style>
</head>

<body>

<div align="left"><span class="path">当前位置：<a href="main_mode.html">主页</a>&gt;<a href="olmainmode.asp?player=<%=request.QueryString("player")%>">联网对战</a>&gt;<a href="ol_users_page.asp?player=<%=request.QueryString("player")%>">个人信息</a>&gt;玩家资料&gt;修改资料</span></div>

<form action="../action/modinfodb.asp?" method="post" name="form1" id="form1" >


  
  <table width="430" height="" align="center">
　　 <tr>
　　 <td width="362"><p>&nbsp;</p>
  <div align="center">
  
  <table width="303" border="0">
    <tr>
      <td width="297"><img src="../assets/drawable/logo.png" width="300" height="80" /></td>
    </tr>
    </table>

  <table width="335" border="0"  cellspacing="1" cellpadding="1" >
    <tr>
      <td height="34" colspan="5" class="title"><p>其他信息填写</p></td>
    </tr>
    <tr>
      <td height="34" colspan="5" class="title"><span class="play">当前玩家：<%=session("player")%></span></td>
    </tr>
    <tr>
      <td height="30" colspan="2"  class="sheet">&nbsp;</td>
      <td height="30" colspan="3">&nbsp;</td>
    </tr>
    <tr>
      <td height="35" colspan="2" class="sheet">玩家性别：</td>
      <td height="35" colspan="2" align="center"><label>
        <input type="radio" name="sex" value="男" id="RadioGroup1_0" />
        <span class="sheet">男</span></label>
        <label>
          <input type="radio" name="sex" value="女" id="RadioGroup1_1" />
          <span class="sheet">女</span></label>
        <label>
          <input name="sex" type="radio" id="RadioGroup1_2" value="其他" checked="checked" />
          <span class="sheet">其他</span></label></td>
      <td height="35" align="center">&nbsp;</td>
    </tr>
    <tr>
      <td height="29" colspan="2" class="sheet">玩家生日：</td>
      <td height="29" colspan="3"><label for="Nickname">
        <select name=YYYY onchange="YYYYDD(this.value)">
        </select>
        <select name=MM onchange="MMDD(this.value)">
        </select>
        <select name=DD>
          <option value="0">0 日</option>
        </select>
      </label></td>
    </tr>
    <tr>
    <td height="32" colspan="2" class="sheet">所在地址：</td>
    <td height="32" colspan="3"><select name="Province" class="reg" id="Province" background="assets/drawable\reg_bgx.jpg">
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
      <option value="台湾省">台湾</option>
      <option value="香港特别行政区">香港</option>
      <option value="澳门特别行政区">澳门</option>
      <option value="未知区域">其他</option>
    </select></label>
    <label for="location">:</label>
    <input name="location" type="text" id="location" size="14" /></td>
  </tr>
  <tr>
    <td height="28"colspan="2" class="sheet"><span class="sheet1">个性签名：</span></td>
    <td height="28" colspan="3"><input name="p_sign" type="text" class="reg" id="p_sign"style="border-left:0px;border-top:0px;border-right:0px;border-bottom:1px   solid   #384B4A" onfocus="return txtFocus();" size="28" /></td>
  </tr>
  <tr>
    <td height="26"colspan="2" class="sheet">隐私设定：</td>
    <td height="26" colspan="2" align="center"><p>
      <label for="privacy"></label>
      <select name="privacy" id="privacy">
        <option value="0" selected="selected">公开</option>
        <option value="1">隐藏</option>
      </select>
      <label><span class="note">        <span class="sheet">个人信息 </span></span></label>
      <br />
    </p></td>
    <td height="26" align="center">&nbsp;</td>
    </tr>
  <tr>
    <td height="31" colspan="5" class="sheet"><label for="born_year"></label><font color="red"><%=request.QueryString("EM")%></td>
    </tr>
  <tr>
    
    <td width="53" >&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td width="48" ><input type="submit" name="sub" id="sub" value="确认" class="but"/></td>
    <td width="89" >&nbsp;</td>
    <td width="80" ><input name="button" type="reset" class="res" id="button" value="清空" /></td>
    <td width="49" >&nbsp;</td>
  </tr>
</table>

  
 </div>
　　 </td>
　　 </tr>
　　 </table>

</form>

<script language="JavaScript"><!--
function YYYYMMDDstart()
{
MonHead = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];
//先给年下拉框赋内容
var y = new Date().getFullYear();
for (var i = (y-60); i < (y+1); i++) //以今年为准，前30年，后30年
document.form1.YYYY.options.add(new Option(" "+ i +" 年", i));
//赋月份的下拉框
for (var i = 1; i < 13; i++)
document.form1.MM.options.add(new Option(" " + i + " 月", i));
document.form1.YYYY.value = y;
document.form1.MM.value = new Date().getMonth() + 1;
var n = MonHead[new Date().getMonth()];
if (new Date().getMonth() ==1 && IsPinYear(YYYYvalue)) n++;
writeDay(n); //赋日期下拉框Author:meizz
document.form1.DD.value = new Date().getDate();
}
if(document.attachEvent)
window.attachEvent("onload", YYYYMMDDstart);
else
window.addEventListener('load', YYYYMMDDstart, false);
function YYYYDD(str) //年发生变化时日期发生变化(主要是判断闰平年)
{
var MMvalue = document.form1.MM.options[document.form1.MM.selectedIndex].value;
if (MMvalue == ""){ var e = document.form1.DD; optionsClear(e); return;}
var n = MonHead[MMvalue - 1];
if (MMvalue ==2 && IsPinYear(str)) n++;
writeDay(n)
}
function MMDD(str) //月发生变化时日期联动
{
var YYYYvalue = document.form1.YYYY.options[document.form1.YYYY.selectedIndex].value;
if (YYYYvalue == ""){ var e = document.form1.DD; optionsClear(e); return;}
var n = MonHead[str - 1];
if (str ==2 && IsPinYear(YYYYvalue)) n++;
writeDay(n)
}
function writeDay(n) //据条件写日期的下拉框
{
var e = document.form1.DD; optionsClear(e);
for (var i=1; i<(n+1); i++)
e.options.add(new Option(" "+ i + " 日", i));
}
function IsPinYear(year)//判断是否闰平年
{ return(0 == year%4 && (year%100 !=0 || year%400 == 0));}
function optionsClear(e)
{
e.options.length = 1;
}
//--></script>


<script type="text/javascript">

<!--

    function txtFocus() {
       var e = window.event;
       var obj = e.srcElement;
       obj.style.background = "#66ffcc";
    }
-->

</script>


</body>
</html>
