<%
    Set objConn=Server.CreateObject("ADODB.Connection") 
     ConStr = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" & Server.MapPath("..\assets\database\usrdb\usrdb.accdb") & ";Password=;Jet OLEDB:Database Password=ST380815AS"
    objConn.Open constr
    set objrs = server.CreateObject("adodb.recordset")
%>