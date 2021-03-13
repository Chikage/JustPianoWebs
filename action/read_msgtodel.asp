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

   	r=cstr(session("player"))
    objrs.open r ,objconn,1,3
	
    objrs.filter="msg_counter='" &CINT(request.QueryString("counter"))&"'"
    
	
    response.write"<body onload='form2.submit()'>"
    response.write"<form name='form2' method ='post' action='../layout/ol_msg_delete.asp'>"
    response.write"待删除私信编号：<input type='text' name ='msg_counter' value="& objrs("msg_counter")&"><br>"
    response.write"待删除私信发信人：<input type='text' name ='msg_Sender' value="& objrs("msg_Sender")&"><br>"
    response.write"待删除私信发送时间：<input type='text' name ='msg_time' value="&  objrs("msg_time")&"><br>"
    response.write"待删除私信内容：<input type='text' name ='msg_text' value="& objrs("msg_text")&"><br>"
    response.write"待删除私信标记：<input type='text' name ='msg_ifread' value="& objrs("msg_ifread")&"><br>"
    response.write"</form>"
    response.write"</body>"
	
	
%>
<!--#include file ="..\assets\database\cls_db.inc" -->

</body>
</html>
