<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>删除成功</title>
</head>

<body>
<!--#include file ="..\assets\database\usrdb\conn_usrdb.inc" -->

<%

	r=cstr(session("player"))
    objrs.open r ,objconn,1,3
	objrs.filter="msg_counter='" &request.QueryString("counter")&"'"
	obJRS.Delete
	response.Redirect("read_msg.asp?player="&r &"&EM="&"私信删除成功~")
	
%>


<!--#include file ="..\assets\database\cls_db.inc" -->
	


</body>
</html>
