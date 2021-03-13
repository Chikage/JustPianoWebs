<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>已添加</title>
</head>

<body>

<!--#include file ="..\assets\database\usrdb\conn_usrdb.inc" -->
<%

    objrs.open "usrInfo",objconn,1,3
    
	player= session("player")
	
    objrs.filter="nickname='" & player & "'"
   
    
    objrs("born_year")= request("YYYY")
	objrs("bn_month")= request("MM")
	objrs("bn_day")= request("DD")
    objrs("sex")= request("sex")
    objrs("Province")=request("Province")
	objrs("location")=request("location")
	objrs("p_sign")=request("p_sign")
	objrs("privacy")=request("privacy")
    objrs.update
	
	response.Write("<title>已修改</title>" )
    response.write("玩家" & player & "的信息修改完毕！")	
    response.write("<a href =" & "../layout/olmainmode.asp?player=" & player & ">点此进入对战平台</a>")	
	
%>

<!--#include file ="..\assets\database\cls_db.inc" -->

</body>
</html>
