<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<style type="text/css">
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
body {
	background-image: url(../assets/drawable/user_info_bgx.jpg);
}




body,div,ul,li{

 padding:0;

 text-align:center;

}

body{

 font:12px "宋体";

 text-align:center;

}

a:link{

 color:#00F;

 text-decoration:none;

}

a:visited {

 color: #00F;

 text-decoration:none;

}

a:hover {

 color: #c00;

 text-decoration:underline;

}

ul{ list-style:none;}


#Tab1{

width:460px;

margin:0px;

padding:0px;

margin:0 auto;}


#Tab2{

width:576px;

margin:0px;

padding:0px;

margin:0 auto;}


.Menubox {

width:100%;

background:url(http://www.hxcgw.com/bbs/upfile/20079299441652.gif);

height:28px;

line-height:28px;

}

.Menubox ul{

margin:0px;

padding:0px;

}

.Menubox li{
	float: left;
	display: block;
	cursor: pointer;
	width: 114px;
	text-align: center;
	color: #544292;
	font-weight: bold;
 }

.Menubox li.hover{
	padding: 0px;
	background: #fff;
	width: 116px;
	border-left: 1px solid #A8C29F;
	border-top: 1px solid #A8C29F;
	border-right: 1px solid #A8C29F;
	background: url(http://www.hxcgw.com/bbs/upfile/200792994426548.gif);
	color: #544292;
	font-weight: bold;
	height: 27px;
	line-height: 27px;
}

.Contentbox{

 clear:both;

 margin-top:0px;

 border:1px solid #A8C29F;

 border-top:none;

 height:240px;

 text-align:center;

 padding-top:8px;

}

-->


</style>
</head>

<body>
<table width="761" height="" align="center">
　　 <tr>
　　 <td width="753" height="538">
  <div align="center">
<table width="869" border="1">

  <tr height=""><td height="94" colspan="2" align="center"><img src="../assets/drawable/logo.png" width="300" height="80" alt=""/></td></tr>
    <tr>
      <td width="306" height=""><table width="284" height="418" border="1">
 
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

 </table></td>
      <td width="547">
 <table width="" height="43%">
  <tr>
　　 <td width="613">
<div align="center"><script>

<!--


function setTab(name,cursel,n){

 for(i=1;i<=n;i++){

  var menu=document.getElementById(name+i);

  var con=document.getElementById("con_"+name+"_"+i);

  menu.className=i==cursel?"hover":"";

  con.style.display=i==cursel?"block":"none";

 }

}

//-->

</script>

</head>

<body>

<br><br>
<div id="Tab1">
  
  <div class="Menubox">

<ul>

   <li id="one1" onmouseover="setTab('one',1,4)"  class="hover">资料</li>

   <li id="one2" onmouseover="setTab('one',2,4)" >好友</li>

   <li id="one3" onmouseover="setTab('one',3,4)">搭档</li>  

   <li id="one4" onmouseover="setTab('one',4,4)">信箱</li>

</ul>

</div>

 <div class="Contentbox"> 

   <div id="con_one_1" class="hover">
   新闻列表1
    
   </div>

   <div id="con_one_2" style="display:none">新闻列表2</div>

   <div id="con_one_3" style="display:none">新闻列表3</div>

   <div id="con_one_4" style="display:none">新闻列表4 </div>
 </div>
</div>
</div>
　

　</td>
　　 </tr>
 </table></td>
    </tr>
  
</table>

  
 </div>
　　 </td>
　　 </tr>
　　 </table>



</body>
</html>
