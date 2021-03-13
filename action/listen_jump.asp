<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Jumping...</title>
</head>

<body>
<%
s=request("sort")
 select case s
  case "classic"
   v="经典乐章"
  case "pop"
   v="流行空间"
  case "ACG"
   v="动漫原声"
  case "games"
   v="游戏主题"
  case "nursery"
   v="儿时回忆"
  End select 
response.Redirect("rd_songs_info/rd_details.asp?sort="&s &"&vsrt="& v)
%>
</body>
</html>
