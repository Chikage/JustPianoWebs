<%
    Set objConn=Server.CreateObject("ADODB.Connection") 
    ConStr = "Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" &Server.MapPath("../../assets/database/songsdb/songslist.accdb")
    objConn.Open constr
    set objrs = server.CreateObject("adodb.recordset")
%>