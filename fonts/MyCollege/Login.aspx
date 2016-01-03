<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="MyChatRoom.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"><head><title>用户登录</title>
<link 
href="images/Default.css" type="text/css" rel="Stylesheet">
<link/>
<link 
href="images/xtree.css" type="text/css" rel="Stylesheet"></link><link 
href="images/User_Login.css" type="text/css" rel="Stylesheet"></link>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"></meta>
<meta content="MSHTML 6.00.6000.16674" name="GENERATOR"></meta></head>
<body id="userlogin_body">
<div></div>

<div id="user_login">
<dl>
  <dd id="user_top">
  <ul>
    <li class="user_top_l"></li>
    <li class="user_top_c"></li>
    <li class="user_top_r"></li></ul>
  <dd id="user_main">
  <ul>
    <li class="user_main_l"></li>
    <li class="user_main_c">
    <div class="user_main_box">
    <ul>
      <li class="user_main_text">用户名： </li>
      <li class="user_main_input">


          <form id="form1" runat="server">
    <div><asp:TextBox ID="TextBoxUserName" runat="server">
</asp:TextBox>




<%--<input class="TxtUserNameCssClass" id="TxtUserName"
      maxLength="20" name="TxtUserName"> </input>--%></li></ul>
    <ul>
      <li class="user_main_text">密 码： </li>
      <%--<li class="user_main_input"><input class="TxtPasswordCssClass" id="TxtPassword"
      type="password" name="TxtPassword"> </input></li></ul>--%>
      <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password">
</asp:TextBox>





    <ul>
      <li class="user_main_text">验证码： </li>
      <li class="user_main_input"><asp:TextBox ID="txtCode" runat="server" CssClass="inpu" Width="50px" Height="20px" onmouseover="this.focus()"></asp:TextBox>
       &nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp<img title="看不清?" style="cursor:pointer;" height="24px" width="60px" src=ValidateCode.ashx onclick="this.src='ValidateCode.ashx?_='+Math.random()"/>
       </li></ul></div></li>
    <li class="user_main_r"><a href="home.html">
      <asp:Button ID="ButtonLogin" runat="server" Text="登录" onclick="ButtonLogin_Click"

     Height="45px" 
            Width="67px"></asp:Button>
    </a> </li></ul>
<dd id="user_bottom">
  <ul>
    <li class="user_bottom_l"></li>
    <li class="user_bottom_c">如果您尚未在本站注册为用户，请先点此 <a 
    href="register.html">注册</a> </li>
    <li class="user_bottom_r"></li></ul></dd></dl></div>
      </div>
      </form>


<div></div>

</body></html>



   
