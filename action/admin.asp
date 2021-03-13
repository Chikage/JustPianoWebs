<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<%
U=request.form("email")
P=request.form("PASS")
if U="admin" and P="1301174" then
 response.write("欢迎回来")
 
 '备用代码
 'response.redirect"login.asp?EM=密码错误！"

 'response.redirect"login.asp?EM=用户名错误！"
else
 '备用代码
 'response.redirect"login.asp?EM=用户名和密码错误！"
end if
 
%>
<body> 
</body>
</html>
