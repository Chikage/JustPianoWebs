<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Sending...</title>
</head>

<body>
<!--#include file ="..\assets\database\usrdb\conn_usrdb.inc" -->

<%

	r=cstr(request.QueryString("recv"))
    objrs.open r ,objconn,1,3

    objrs.addnew	
	objrs("msg_sender")=cstr(session("player"))
	objrs("msg_time")=now()
	objrs("msg_text")=cstr(request("msg"))
	objrs("msg_IFRead")="未读"
	objrs.update
		
	response.Redirect("../layout/ol_msg_send.asp?" &"player=" & session("player") &"&recv=" & request.QueryString("recv") & "&em=您的私信已成功送达~")	
		
%>
<!--#include file ="..\assets\database\cls_db.inc" -->
</body>
</html>
