<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查找玩家</title>
</head>

<body>

<!--#include file ="..\assets\database\usrdb\conn_usrdb.inc" -->
<%

    objrs.open "usrInfo",objconn,1,3
	
	player = session("player")
	
	IF request("search4")="nickname" then
      objrs.filter="nickname='"&request("search")&"'"
        IF objrs.EOF then
		 response.write("<div align='center'>")
		 response.write("啊哦~<br>")
         response.write("没有查到昵称为"&request("search")&"的玩家"&"~"&"<br>")
		 response.write("<a href =" & "../layout/search_player.asp?player=" & player & ">点此原路返回QAQ</a>")
		 response.write("</div>")
        Else
		  if objrs("privacy")= "1" then
		   response.write("<div align='center'>")
		    response.write("啊哦~<br>")
		    response.write("昵称为"&request("search")&"的玩家"&"不愿意展示自己的个人信息~"&"<br>")
			response.write("你可以"&"<a href =" & "../layout/search_player.asp?player=" & player & ">原路返回QAQ</a>"&"<br>")
			response.write("但是你还可以"&"<a href='../layout/ol_msg_send.asp?player="& player & "&recv="& objrs("nickname") &"'>"&"私信给TA</a>")
			response.write("</div>")
		  else
            readinfo
		  End IF
        End if
    Else
      objrs.filter="email='"&request("search")&"'"
        IF objrs.EOF then
		response.write("<div align='center'>")
         response.write("啊哦~<br>")
         response.write("没有查到邮箱为"&request("search")&"的玩家 "& "~" &"<br>")
		 response.write("<a href =" & "../layout/search_player.asp?player=" & player & ">点此原路返回QAQ</a>")
		 response.write("</div>")
        Else
         if objrs("privacy")= "1" then
		    response.write("<div align='center'>")
		    response.write("啊哦~<br>")
		    response.write("邮箱为"&request("search")&"的玩家"&"不愿意展示自己的个人信息~"&"<br>")
			response.write("你可以""<a href =" & "../layout/search_player.asp?player=" & player & ">原路返回QAQ</a>"&"<br>")
			response.write("但是你还可以"&"<a href='../layout/ol_msg_send.asp?player="& player & "&recv="& objrs("nickname") &"'>"&"私信给TA</a>")
			response.write("</div>")
		 else
            readinfo
		  End IF
        End if
    End if
	
	function readinfo()
	
	 if objrs("bn_day")<>"0" then
	 if month(now)>cint(objrs("bn_month")) then
	   age=CSTR(CINT(year(now))-CINT(objrs("born_year")))
	   bd=objrs("bn_month")+"月"+objrs("bn_day")+"日"
	 Elseif cint(objrs("bn_month"))=month(now) then
	   if cint(objrs("bn_day"))<=day(now) then
	   age=CSTR(CINT(year(now))-CINT(objrs("born_year")))
	   bd=objrs("bn_month")+"月"+objrs("bn_day")+"日"
	   else
	   age=CSTR(CINT(year(now))-CINT(objrs("born_year")))-1
	   bd=objrs("bn_month")+"月"+objrs("bn_day")+"日"
	   End if
	 Else
	 age=CSTR(CINT(year(now))-CINT(objrs("born_year")))-1
	 bd=objrs("bn_month")+"月"+objrs("bn_day")+"日"
	 End IF
	else
	age="未设定"
	End if
	  
	  location=objrs("province")+objrs("location")
	 
	  response.write"<body onload='form2.submit()'>"
      response.write"<form name='form2' method ='post' action='../layout/get_player_info.asp'>"
      response.write"昵称：<input type='text' name ='nickname' value="& objrs("nickname")&"><br>"
      response.write"邮箱：<input type='text' name ='email' value="& objrs("email")&"><br>"
      response.write"性别：<input type='text' name ='sex' value="& objrs("sex")&"><br>"
      response.write"年龄：<input type='text' name ='age' value="& age &"><br>"
	  response.write"生日：<input type='text' name ='bd' value="& bd &"><br>"
      response.write"地区：<input type='text' name ='location' value="& location &"><br>"
      response.write"个签：<input type='text' name ='p_sign' value="& objrs("p_sign")&"><br>"
      response.write"</form>"
      response.write"</body>"
	End function
		
%>	

<!--#include file ="..\assets\database\cls_db.inc" -->

</body>
</html>
