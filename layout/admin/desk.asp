<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>serverdesk</title>
</head>
<body>
<p>Admin Server Desk.</p>
<p>&nbsp;</p>
<%
IF session("Admin")<>"Administrator" then
 response.redirect("../layout/login.asp")
Else
 response.write("<a href='adsong.asp'>添加曲谱</a>")
End IF

%>

</body>
</html>
