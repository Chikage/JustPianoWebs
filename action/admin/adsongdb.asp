<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>adding...</title>
</head>

<body>

<!--#include file ="../../assets/database/songsdb/conn_songsdb.inc" -->
<%
    s=cstr(request("sorts"))
    objrs.open s ,objconn,1,3
	
	p="../assets/songs/"
	

IF session("Admin")<>"Administrator" then
 response.redirect("../../layout/login.asp")
Else
	objrs.addnew
	objrs("ti")=request("ti")
	objrs("ar")=request("ar")
	objrs("al")=request("al")
	objrs("note")=request("note")
	objrs("ad_day")=CSTR(day(now))
	objrs("ad_month")=CSTR(month(now))
	objrs("ad_year")=CSTR(year(now))
	objrs("difficulty")=request("difficulty")
	objrs("path")=p&s&"/"&request("path")&".mid"
	
	objrs.update
	
	response.Redirect("../../layout/admin/adsong.asp?EM=添加成功！")
	
End IF	
	
%>
<!--#include file ="..\..\assets\database\cls_db.inc" -->

</body>
</html>
