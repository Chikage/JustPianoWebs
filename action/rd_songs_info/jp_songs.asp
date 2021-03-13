<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Jumping...</title>
</head>

<body>

<!--#include file ="../../assets/database/songsdb/conn_songsdb.inc" -->
<%

    s=request.QueryString("srt")
	mv=request.QueryString("mv")
    objrs.open s ,objconn,1,3

    DO while CINT(request.QueryString("ID"))<>objrs("ID") or objrs.eof
       objrs.movenext
	Loop 
    
	IF CINT(request.QueryString("ID"))<>objrs("ID") then
	  DO while CINT(request.QueryString("ID"))<>objrs("ID") 
       objrs.moveprevious
	  Loop
	Else
	End IF  

   select case mv
    case "P"
	 objrs.moveprevious
	  if objrs.bof then
	   objrs.movelast
	  else
	  End if
	Case "N"
	 objrs.movenext
	  if objrs.eof then
	   objrs.movefirst
	  else
	  End if
	End Select 
	
	select case s 
    case "classic"
	 vsrt="经典乐章"
	case "pop"
	 vsrt="流行空间"
    case "ACG"
	 vsrt="动漫原声"
	case "games"
     vsrt="游戏主题"
	case "nersery"
     vsrt="e儿时回忆"
   End select
	
    response.Redirect("rd_songs_tolisten.asp?sort="&s&"&ti="&objrs("ti")&"&vsrt="&vsrt)
	
%>
 <!--#include file ="../../assets/database/cls_db.inc" -->
</body>
</html>
