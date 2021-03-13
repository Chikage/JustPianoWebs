<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Loading...</title>
</head>

<body>
<%
s=request("sort")
 select case s
  case "classic"
   v=0
  case "pop"
   v=1
  case "ACG"
   v=2
  case "games"
   v=3
  case "nursery"
   v=4
  End select 
response.Redirect("rd_songs_info/auto_select.asp?sr="&v)
%>
</body>
</html>
