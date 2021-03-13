<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Reading...</title>
</head>

<body>

<!--#include file ="../../assets/database/songsdb/conn_songsdb.inc" -->
<%
    s=cstr(request.QueryString("sort"))
    objrs.open s ,objconn,1,3
	objrs.filter="ti='"&request.QueryString("ti")&"'"
	d=objrs("ad_year")&"-"&objrs("ad_month")&"-"&objrs("ad_day")
	  	  
      response.write"<head>"
      response.write"<script type='text/javascript'>"
	  response.write"function R()"
      response.write"{ "       
      response.write"var num=Math.random();"        
      response.write"document.getElementById('ri').value=parseInt(num*5);"    
      response.write"}"
      response.write"</script>"
      response.write"</head>"
      response.write"<body onload='R();form2.submit()'>"
      response.write"<form name='form2' method ='post' action='../../layout/listen.asp'>"
      response.write"编号：<input type='text' name ='ID' value="& objrs("ID")&"><br>"
      response.write"名称：<input type='text' name ='ti' value="& objrs("ti")&"><br>"
      response.write"歌手：<input type='text' name ='ar' value="& objrs("ar")&"><br>"
	  response.write"分类：<input type='text' name ='srt' value="& request.QueryString("vsrt")&"><br>"
	  response.write"srt：<input type='text' name ='bsrt' value="& request.QueryString("sort")&"><br>"
      response.write"专辑：<input type='text' name ='al' value="&  objrs("al") &"><br>"
	  response.write"更新时间：<input type='text' name ='d' value="& d &"><br>"
      response.write"音轨数：<input type='text' name ='track' value="& objrs("track") &"><br>"
	  response.write"音符：<input type='text' name ='note' value="& objrs("note") &"><br>"
      response.write"路径：<input type='text' name ='path' value="& objrs("path")&"><br>"
      response.write"RND：<input id='ri' type='text' name ='RND' ><br>"
      response.write"</form>"
      response.write"</body>"
  
	
%>
<!--#include file ="..\..\assets\database\cls_db.inc" -->
</body>
</html>
