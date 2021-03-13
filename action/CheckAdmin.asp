<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Checking...</title>
</head>

<body>
<%

If request("AcceptUsr")="admin" and request("PASS")="908087650" then
   session("admin")="Administrator"
   response.Redirect("../layout/admin/desk.asp")
   
else
   response.Redirect("../layout/admin.asp")
End IF
%>
</body>
</html>
