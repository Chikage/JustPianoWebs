<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Reading...</title>
</head>

<body>
<!--#include file ="..\assets\database\usrdb\conn_usrdb.inc" -->

<%

    objrs.open "usrInfo",objconn,1,3
    
	player= session("player")
	
    objrs.filter="nickname='" & player & "'" 
    
	if objrs("bn_day")<>"0" then
	 if month(now)>cint(objrs("bn_month")) then
	   age=CSTR(CINT(year(now))-CINT(objrs("born_year")))
	 Elseif cint(objrs("bn_month"))=month(now) then
	   if cint(objrs("bn_day"))<=day(now) then
	   age=CSTR(CINT(year(now))-CINT(objrs("born_year")))
	   else
	   age=CSTR(CINT(year(now))-CINT(objrs("born_year")))-1
	   End if
	 Else
	 age=CSTR(CINT(year(now))-CINT(objrs("born_year")))-1
	 End IF
	else
	age="未设定"
	End if
	
	location=objrs("province")+objrs("location")
	 
    response.write"<body onload='form2.submit()'>"
    response.write"<form name='form2' method ='post' action='../layout/user_info.asp'>"
    response.write"昵称：<input type='text' name ='nickname' value="& objrs("nickname")&"><br>"
    response.write"邮箱：<input type='text' name ='email' value="& objrs("email")&"><br>"
    response.write"性别：<input type='text' name ='sex' value="& objrs("sex")&"><br>"
    response.write"年龄：<input type='text' name ='age' value="& age &"><br>"
    response.write"位置：<input type='text' name ='location' value="& location &"><br>"
    response.write"个性签名：<input type='text' name ='p_sign' value="& objrs("p_sign")&"><br>"
  
    response.write"</form>"
    response.write"</body>"
	
	
%>
<!--#include file ="..\assets\database\cls_db.inc" -->

</body>
</html>
