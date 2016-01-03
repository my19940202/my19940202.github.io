using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.OleDb;
using System.Configuration;

namespace MyCollege
{
    /// <summary>
    /// register 的摘要说明
    /// </summary>
    public class register : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            context.Response.ContentType = "text/html";
            bool isRes = !string.IsNullOrEmpty(context.Request["register"]);
            if(isRes)
            {
                //string first = context.Request["first"];
               // string last = context.Request["last"];
                string email = context.Request["email"];
                string username = context.Request["username"];
                string pwd1 = context.Request["pwd1"];
                string pwd2 = context.Request["pwd2"];
                
                if (pwd1 == pwd2)
                {
                    string strConn = ConfigurationManager.AppSettings["DBConnectionString"];
                    OleDbConnection ConnAcc = new OleDbConnection(strConn); //OleDb链接类的实例化 
                    ConnAcc.Open();//打开数据库 
                    string strSQL = "insert into T_User values('" + email + "','" + username + "','" + pwd1 + "')";//SQL统计,SUM等等 
                    OleDbCommand cmd = new OleDbCommand(strSQL, ConnAcc);//创建Command命令对象 
                    cmd.ExecuteNonQuery();
                    ConnAcc.Close();//关闭数据库 
                    context.Response.Write("<Script Language=JavaScript>alert(\"注册成功，请登录！\")</Script>");
                    context.Response.Redirect("Login.aspx");
                }
                else
                {
                    //context.Response.Write("<Script Language=JavaScript>alert(\"两次密码不一致，请重新注册！\")</Script>");
                    context.Response.Redirect("register.html");
                }
            }
            
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}