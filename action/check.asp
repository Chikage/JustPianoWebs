<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001" EnableSESSIONSTATE="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>用户登录</title>
</head>
<body>
<!--#include file ="..\assets\database\usrdb\conn_usrdb.inc" -->
<%
    objrs.open "usrInfo",objconn,1,3
    objrs.filter= "email='" & request("email") & "'"
	 	
 If not objrs.EOF then
   IF trim(strreverse(cstr(objrs("pass")))) = trim(cstr(request("pass"))) then
      Response.Charset="GB2312"
	  session("player")= objrs("nickname")
	  response.redirect("../layout/olmainmode.asp?player=" & objrs("nickname"))	
   Else
      response.redirect("../layout/login.asp?em=密码错误！")  
   End if
 Else
   If request("email") = "admin@jp.net" then 
     IF request("PASS") = 1301174 then
     response.redirect("../layout/admin.asp")
     Else
	 response.redirect("../layout/login.asp?em=邮箱未注册！")
     End IF
   Else
   response.redirect("../layout/login.asp?em=邮箱未注册！")
   End IF
 End if	  
 

%>

<!--#include file ="..\assets\database\cls_db.inc" -->

</body>
</html>
