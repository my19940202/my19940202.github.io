<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="conn.asp"-->
<%

 Response.CacheControl = "no-cache"

Response.AddHeader "Pragma", "no-cache"

Response.Expires = 0


conn.execute("delete from tt")

%>