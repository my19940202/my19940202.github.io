<%
Dim Conn,ConnStr

Set Conn = Server.CreateObject("Adodb.Connection")
ConnStr  = "Provider = Microsoft.Jet.OLEDB.4.0;Data Source = " &Server.MapPath("db.mdb")
Conn.Open ConnStr
%>