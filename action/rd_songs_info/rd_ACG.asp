<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Loading...</title>
</head>

<body>

<!--#include file ="../../assets/database/songsdb/conn_songsdb.inc" -->

<%
objrs.open "ACG",objconn,1,3

objrs.movelast

IF len(objrs("ti"))>7 then
  t=Left(objrs("ti"),7)&"..."
else
  t=objrs("ti")
End IF

 d=objrs("ad_year")&"-"&objrs("ad_month")&"-"&objrs("ad_day")
 
objrs.movefirst

n=objrs.recordcount


  

  
      response.write"<body onload='form2.submit()'>"
      response.write"<form name='form2' method ='post' action='rd_pop.asp'>"
	  
      response.write"classic：<input type='text' name ='classic_n' value="& request("classic_n") &"><br>"
	  response.write"classic：<input type='text' name ='classic_t' value="& request("classic_t") &"><br>"
	  response.write"classic：<input type='text' name ='classic_D' value="& request("classic_D") &"><br>"
	  
	  response.write"ACG：<input type='text' name ='ACG_n' value="& CSTR(n) &"><br>"
	  response.write"ACG：<input type='text' name ='ACG_t' value="& t &"><br>"
	  response.write"ACG：<input type='text' name ='ACG_D' value="& d &"><br>"
	  
      response.write"</form>"
      response.write"</body>"


%>
<!--#include file ="..\..\assets\database\cls_db.inc" -->
</body>
</html>
