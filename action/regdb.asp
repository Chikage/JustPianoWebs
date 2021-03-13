<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001" ENABLESESSIONSTATE="true"%>
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

       If len(trim(Cstr(request("pass"))))>=6 and request("pass")=request("repass") and request("nickname")<>"" and objrs.eof and request("email")<>"admin@jp.net" then

      objrs.filter="nickname='" &request("nickname")&"'"

         If objrs.eof then  
           objrs.addnew
           objrs("nickname")=request("nickname")
           objrs("pass")=trim(strreverse(cstr(request("pass"))))
           objrs("email")=request("email")
		   'onjrs("born_year")=cstr(year(now))
		   'onjrs("bn_month")=cstr(month(now))
		   'onjrs("bn_day")=cstr(day(now))
		   objrs("reg_time")=strreverse(cstr(year(now) &month(now) &day(now) &hour(now) &minute(now)&second(now)))
           objrs.update
	
	       crt="CREATE TABLE" &"["& request("nickname") &"]" &"([msg_counter] COUNTER,[msg_sender] text(31) DEFAULT 冰淇淋,[msg_time] datetime DEFAULT now(),[msg_text] text(255) default 欢迎来到极品钢琴~,[msg_ifread] text(7) default 未读)"

           objconn.execute(crt)
           session("player")=request("nickname")
	       response.redirect("../layout/newmember.asp?player="& request("nickname") & "&time=" & objrs("reg_time"))
        Else
           response.redirect("../layout/reg.asp?EM=昵称已经被注册!")
        End if

     Elseif request("nickname")="" then
         response.redirect("../layout/reg.asp?EM=昵称不可以为空!")
     ElseIF len(trim(Cstr(request("pass"))))<6 then
         response.redirect("../layout/reg.asp?EM=密码太短!")
     Elseif request("nickname")<>"" and request("pass")<>request("repass") then
         response.redirect("../layout/reg.asp?EM=两次输入密码不相同!")
     Else
	     response.redirect("../layout/reg.asp?EM=邮箱已经被注册!")
     End if

%>
<!--#include file ="..\assets\database\cls_db.inc" -->
</body>
</html>
