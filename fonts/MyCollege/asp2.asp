<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="conn.asp"-->
<%

 Response.CacheControl = "no-cache"

Response.AddHeader "Pragma", "no-cache"

Response.Expires = 0

set rs=server.CreateObject("adodb.recordset")
rs.open "select * from tt where tt<>'' order by id",conn,1,1

do while not rs.eof
te=te&rs("us")&":"&rs("tt")&chr(10)&chr(10)
rs.movenext
loop
response.Write te

%>