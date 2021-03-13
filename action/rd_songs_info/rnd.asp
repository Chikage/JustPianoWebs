<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
<%
'自定义函数
Function RndNumber(MaxNum,MinNum)

 RndNumber=int((MaxNum-MinNum+1)*rnd+MinNum)

End Function

'产生一个800~900之间的随机数
response.write RndNumber(0,6)
%> 
</body>
</html>
