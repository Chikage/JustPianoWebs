<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>歌曲分类</title>
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
	padding: 0;
	text-align: center;
	font-family: "Microsoft YaHei UI";
}

body{

 font:12px "宋体";

 text-align:center;

}

a:link{
	color: #FFFFFF;
	text-decoration: none;
}

a:visited {
	color: #FFFFFF;
	text-decoration: none;
}

a:hover {
	color: #c00;
	text-decoration: none;
}

ul{ list-style:none;}


#Tab1{

width:484px;

margin:0px;

padding:0px;

margin:0 auto;}


#Tab2{

width:600px;

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
	width: 96px;
	text-align: center;
	color: #544292;
	font-weight: bold;
	font-size: 14px;
	font-family: "宋体";
 }

.Menubox li.hover{
	padding: 0px;
	background: #fff;
	width: 98px;
	border-left: 1px solid #A8C29F;
	border-top: 1px solid #A8C29F;
	border-right: 1px solid #A8C29F;
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
.c1 {
	font-family: "Microsoft YaHei UI";
	font-size: 15px;
}
.c11 {	font-family: "Microsoft YaHei UI";
	font-size: 18px;
}
.c2 {	font-family: "Microsoft YaHei UI";
	font-size: 14px;
	color: #333;
}

-->


</style>
  
   <script>

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
<p align="left"><span class="path">当前位置：<a href="../layout/main_mode.html">主页</a><a href="main_mode.html"></a>&gt;欣赏&gt;选择歌曲</span>
   
   
   
<table width="" height="" align="center">
  <tr>
　　 <td width="">
<div align="center"> 
  






 
      

  <br>
  <img src="../assets/drawable/logo.png" width="300" height="80" alt=""/>
  </p>
  <p style="font-family: 'Microsoft YaHei UI'; font-size: 24px; color: #1E1E1E;"><span style="font-family: 'Microsoft YaHei UI'; font-size: 24px; color: #333"></span>歌曲试听</p>
  <p><br>
      
    </p>
    <div id="Tab1">
      
  <div class="Menubox">

<ul>

   <li id="one1" onmouseover="setTab('one',1,7)"  class="hover"><span class="c1">经典乐章</span></li>

   <li id="one2" onmouseover="setTab('one',2,7)" ><span class="c1">流行空间</span></li>

   <li id="one3" onmouseover="setTab('one',3,7)"><span class="c1">动漫原声</span></li>  

   <li id="one4" onmouseover="setTab('one',4,7)"><span class="c1">游戏主题</span></li>
   
   <li id="one5" onmouseover="setTab('one',5,7)"><span class="c1">儿时回忆</span></li>

</ul>

</div>

 <div class="Contentbox"> 

   <div id="con_one_1" class="hover">   
  
     <p>
     <table width="339" height="" align="center">
       <tr>
   <td width="249">
   <div align="center">
   <table width="274" border="0" align="center">
     <tr>
       <td width="129" height="29" style="font-family: '微软雅黑'; font-size: 16px; color: #353434; text-align: center;">分类歌曲数量：</td>
       <td width="135" style="font-family: '微软雅黑'; font-size: 16px; color: #DDDDDD;"><%=request("classic_n")%></td>
     </tr>
     <tr>
       <td height="30" align="center"><span style="font-family: '微软雅黑'; font-size: 16px; color: #353434; text-align: center;">最后更新歌曲：</span></td>
       <td><span style="font-family: '微软雅黑'; font-size: 16px; color: #DDDDDD;"><%=request("classic_t")%></span></td>
     </tr>
     <tr>
       <td height="29" align="center"><span style="font-family: '微软雅黑'; font-size: 16px; color: #353434; text-align: center;">最后更新日期：</span></td>
       <td><span style="font-family: '微软雅黑'; font-size: 16px; color: #DDDDDD;"><%=request("classic_D")%></span></td>
     </tr>
     </table>
 
       </div>
　　    
<p style="text-align: center; font-family: '微软雅黑'; font-size: 16px; color: #000000;"><a href="../action/rd_songs_info/rd_details.asp?sort=classic&vsrt=经典乐章">进入分类 </a></p></td>
　　    </tr>
　　     </table>
   </div>




   <div id="con_one_2" style="display:none">  
    
     <p>
     <table width="339" height="" align="center">
       <tr>
   <td width="249">
   <div align="center">
   <table width="274" border="0" align="center">
     <tr>
       <td width="129" height="29" style="font-family: '微软雅黑'; font-size: 16px; color: #353434; text-align: center;">分类歌曲数量：</td>
       <td width="135" style="font-family: '微软雅黑'; font-size: 16px; color: #DDDDDD;"><%=request("pop_n")%></td>
     </tr>
     <tr>
       <td height="30" align="center"><span style="font-family: '微软雅黑'; font-size: 16px; color: #353434; text-align: center;">最后更新歌曲：</span></td>
       <td><span style="font-family: '微软雅黑'; font-size: 16px; color: #DDDDDD;"><%=request("pop_t")%></span></td>
     </tr>
     <tr>
       <td height="29" align="center"><span style="font-family: '微软雅黑'; font-size: 16px; color: #353434; text-align: center;">最后更新日期：</span></td>
       <td><span style="font-family: '微软雅黑'; font-size: 16px; color: #DDDDDD;"><%=request("pop_D")%></span></td>
     </tr>
     </table>
 
       </div>
　　    
<p style="text-align: center; font-family: '微软雅黑'; font-size: 16px; color: #000000;"><a href="../action/rd_songs_info/rd_details.asp?sort=pop&vsrt=流行空间">进入分类 </a></p></td>
　　    </tr>
　　     </table>
   </div>


<div id="con_one_3" style="display:none">  
    
     <p>
     <table width="339" height="" align="center">
       <tr>
   <td width="249">
   <div align="center">
   <table width="274" border="0" align="center">
   <tbody>
     <tr>
       <td width="129" height="29" style="font-family: '微软雅黑'; font-size: 16px; color: #353434; text-align: center;">分类歌曲数量：</td>
       <td width="135" style="font-family: '微软雅黑'; font-size: 16px; color: #DDDDDD;"><%=request("ACG_n")%></td>
     </tr>
     <tr>
       <td height="30" align="center"><span style="font-family: '微软雅黑'; font-size: 16px; color: #353434; text-align: center;">最后更新歌曲：</span></td>
       <td><span style="font-family: '微软雅黑'; font-size: 16px; color: #DDDDDD;"><%=request("ACG_t")%></span></td>
     </tr>
     <tr>
       <td height="29" align="center"><span style="font-family: '微软雅黑'; font-size: 16px; color: #353434; text-align: center;">最后更新日期：</span></td>
       <td><span style="font-family: '微软雅黑'; font-size: 16px; color: #DDDDDD;"><%=request("ACG_D")%></span></td>
     </tr>
      </tbody>
     </table>
 
   
       </div>
　　    
<p style="text-align: center; font-family: '微软雅黑'; font-size: 16px; color: #000000;"><a href="../action/rd_songs_info/rd_details.asp?sort=ACG&vsrt=动漫原声">进入分类 </a></p></td>
　　    </tr>
　　     </table>
   </div>



   <div id="con_one_4" style="display:none"> 
     
     <p>
     <table width="339" height="" align="center">
       <tr>
   <td width="249">
   <div align="center">
   <table width="274" border="0" align="center">
   <tbody>
     <tr>
       <td width="129" height="29" style="font-family: '微软雅黑'; font-size: 16px; color: #353434; text-align: center;">分类歌曲数量：</td>
       <td width="135" style="font-family: '微软雅黑'; font-size: 16px; color: #DDDDDD;"><%=request("games_n")%></td>
     </tr>
     <tr>
       <td height="30" align="center"><span style="font-family: '微软雅黑'; font-size: 16px; color: #353434; text-align: center;">最后更新歌曲：</span></td>
       <td><span style="font-family: '微软雅黑'; font-size: 16px; color: #DDDDDD;"><%=request("games_t")%></span></td>
     </tr>
     <tr>
       <td height="29" align="center"><span style="font-family: '微软雅黑'; font-size: 16px; color: #353434; text-align: center;">最后更新日期：</span></td>
       <td><span style="font-family: '微软雅黑'; font-size: 16px; color: #DDDDDD;"><%=request("games_D")%></span></td>
     </tr>
      </tbody>
     </table>
 
   
       </div>
　　    
<p style="text-align: center; font-family: '微软雅黑'; font-size: 16px; color: #000000;"><a href="../action/rd_songs_info/rd_details.asp?sort=games&vsrt=游戏主题">进入分类 </a></p></td>
　　    </tr>
　　     </table>




     </div>
   
    <div id="con_one_5" style="display:none">
    
     <p>
     <table width="339" height="" align="center">
       <tr>
   <td width="249">
   <div align="center">
   <table width="274" border="0" align="center">
   <tbody>
     <tr>
       <td width="129" height="29" style="font-family: '微软雅黑'; font-size: 16px; color: #353434; text-align: center;">分类歌曲数量：</td>
       <td width="135" style="font-family: '微软雅黑'; font-size: 16px; color: #DDDDDD;"><%=request("nursery_n")%></td>
     </tr>
     <tr>
       <td height="30" align="center"><span style="font-family: '微软雅黑'; font-size: 16px; color: #353434; text-align: center;">最后更新歌曲：</span></td>
       <td><span style="font-family: '微软雅黑'; font-size: 16px; color: #DDDDDD;"><%=request("nursery_t")%></span></td>
     </tr>
     <tr>
       <td height="29" align="center"><span style="font-family: '微软雅黑'; font-size: 16px; color: #353434; text-align: center;">最后更新日期：</span></td>
       <td><span style="font-family: '微软雅黑'; font-size: 16px; color: #DDDDDD;"><%=request("nursery_D")%></span></td>
     </tr>
      </tbody>
     </table>
 
   
       </div>
　　    
<p style="text-align: center; font-family: '微软雅黑'; font-size: 16px; color: #000000;"><a href="../action/rd_songs_info/rd_details.asp?sort=nursery&vsrt=儿时回忆">进入分类 </a></p></td>
　　    </tr>
　　     </table>
   </div>


   </div>

    </div>

 </div>


 
    </div>
</div>
　

　
<div align="center" style="font-family: 'Microsoft YaHei UI'; font-size: 14px;"><a href="../action/rd_songs_info/auto_select.asp?sr=<%=request("RND")%>">随机选歌</a></div></td>
　　 </tr>
 </table>


</body>
</html>
 
