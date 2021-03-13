<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎</title>
</head>

<body>

<!--#include file ="..\assets\database\usrdb\conn_usrdb.inc" -->
<%

    objrs.open "usrInfo",objconn,1,3

    objrs.filter="email='" &request("email")&"'"

     

        If objrs.eof then
	     response.redirect("../layout/find_pass.asp?EM=邮箱"&request("email")&"未注册!")
	    Elseif len(trim(Cstr(request("pass"))))>=6 and request("pass")=request("repass") and strreverse(request("time"))=objrs("reg_time") then       
		   objrs("pass")=trim(strreverse(cstr(request("pass"))))
           objrs.update
		   session("player")=""
		   response.redirect("../layout/login.asp?EM=您的密码已修改,请重新登录!")
        ElseIF len(trim(Cstr(request("pass"))))<6 and request("time")=objrs("reg_time")then
           response.redirect("../layout/find_pass.asp?EM=密码太短!")
        Elseif request("pass")<>request("repass") and request("time")=objrs("reg_time")then
           response.redirect("../layout/find_pass.asp?EM=两次输入密码不相同!")
        Else
		   response.redirect("../layout/find_pass.asp?EM=注册时间不正确!")
        End if
		
%>
<!--#include file ="..\assets\database\cls_db.inc" -->
</body>
</html>
