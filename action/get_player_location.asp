<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Loading...</title>
</head>

<body>
<!--#include file ="..\assets\database\usrdb\conn_usrdb.inc" -->
<%
    objrs.open "usrInfo",objconn,1,3  
	player= session("player")	
    objrs.filter="nickname='" & player & "'" 
    
    location=objrs("province")&objrs("location")
	
	response.write"<body onload='form2.submit()'>"
    response.write"<form name='form2' method ='post' action='../layout/player_nearby.asp'>"
    response.write"省份：<input type='text' name ='location' value="& location &"><br>"
    response.write"</form>"
    response.write"</body>"
	
%>
<!--#include file ="..\assets\database\cls_db.inc" -->
</body>
</html>
