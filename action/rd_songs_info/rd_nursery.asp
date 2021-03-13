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
objrs.open "nursery",objconn,1,3

objrs.movelast

IF len(objrs("ti"))>7 then
  t=Left(objrs("ti"),7)&"..."
else
  t=objrs("ti")
End IF

 d=objrs("ad_year")&"-"&objrs("ad_month")&"-"&objrs("ad_day")
 
objrs.movefirst

n=objrs.recordcount

  
      response.write"<head>"
	  
	  	  
	  response.write"<script type='text/javascript'>"
	  response.write"function R()"
      response.write"{ "       
      response.write"var num=Math.random();"        
      response.write"document.getElementById('ri').value=parseInt(num*5);"    
      response.write"}"
      response.write"</script>"
      response.write"</head>"
      response.write"<body onload='R();form2.submit()'>"
      response.write"<form name='form2' method ='post' action='../../layout/list_song_sorts.asp'>"
	  
      response.write"classic：<input type='text' name ='classic_n' value="& request("classic_n") &"><br>"
	  response.write"classic：<input type='text' name ='classic_t' value="& request("classic_t") &"><br>"
	  response.write"classic：<input type='text' name ='classic_D' value="& request("classic_D") &"><br>"
	  
	  response.write"ACG：<input type='text' name ='ACG_n' value="& request("ACG_n") &"><br>"
	  response.write"ACG：<input type='text' name ='ACG_t' value="& request("ACG_t") &"><br>"
	  response.write"ACG：<input type='text' name ='ACG_D' value="& request("ACG_D") &"><br>"
	  
	  response.write"pop：<input type='text' name ='pop_n' value="& request("pop_n") &"><br>"
	  response.write"pop：<input type='text' name ='pop_t' value="& request("pop_t") &"><br>"
	  response.write"pop：<input type='text' name ='pop_D' value="& request("pop_D") &"><br>"
	  
	  response.write"games：<input type='text' name ='games_n' value="& request("games_n") &"><br>"
	  response.write"games：<input type='text' name ='games_t' value="& request("games_t") &"><br>"
	  response.write"games：<input type='text' name ='games_D' value="& request("games_d") &"><br>"
	  
	  response.write"nursery：<input type='text' name ='nursery_n' value="& CSTR(n) &"><br>"
	  response.write"nursery：<input type='text' name ='nursery_t' value="& t &"><br>"
	  response.write"nursery：<input type='text' name ='nursery_D' value="& D &"><br>"
	  
	  response.write"RND：<input id='ri' type='text' name ='RND' ><br>"

      response.write"</form>"
      response.write"</body>"
	  
	      
     
      



  
	  


%>
<!--#include file ="..\..\assets\database\cls_db.inc" -->
</body>
</html>
