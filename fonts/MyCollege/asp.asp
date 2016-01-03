<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="conn.asp"-->
<%

 Response.CacheControl = "no-cache"

Response.AddHeader "Pragma", "no-cache"

Response.Expires = 0



sql="insert into tt (tt,us) values('"&request.Form("id")&"','"&request.Form("us")&"')"
conn.execute(sql),a
response.Write a
%>