<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Selecting...</title>
</head>

<body>
<%
    sr=request.QueryString("sr")
    
	 select case sr
	 case "0"
      r="classic"
	  vr="经典乐章"	
	 Case "1"
	  r="pop"
	  vr="流行空间"	
	 case "2"
	  r="ACG"
	  vr="动漫原声"	 
	 case "3"
      r="games"
	  vr="游戏主题"	
	 Case "4"
	  r="nursery"
	  vr="儿时回忆"	
	 End select 
%> 
<!--#include file ="../../assets/database/songsdb/conn_songsdb.inc" -->
<%	 
  objrs.open r,objconn,1,3
   
   n=objrs.recordcount
   
   Randomize 
   RndNumber=int(n*rnd)
   
   objrs.movefirst
   
   Do while Rndnumber>0 and not objrs.eof
   objrs.movenext
   Rndnumber=Rndnumber-1
   Loop
  
   response.Redirect("rd_songs_tolisten.asp?sort="&r&"&ti="&objrs("ti")&"&vsrt="&vr)
%>
<!--#include file ="../../assets/database/cls_db.inc" -->
</body>
</html>
