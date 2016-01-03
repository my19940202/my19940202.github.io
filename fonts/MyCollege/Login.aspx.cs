using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Configuration;
namespace MyChatRoom
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Context.Response.ContentType = "text/html";
            //string action = Context.Request["name"];

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            string userName = TextBoxUserName.Text;
            string password = TextBoxPassword.Text;
            string code = txtCode.Text.Trim();

            string strConn = ConfigurationManager.AppSettings["DBConnectionString"];//ACCESS链接字符串 
            OleDbConnection ConnAcc = new OleDbConnection(strConn); //OleDb链接类的实例化 
            ConnAcc.Open();//打开数据库 
            string strSQL = "SELECT COUNT(*) FROM T_User where UserName='" + userName + "' and UserPassword='" + password + "'" ;//SQL统计,SUM等等 
            OleDbCommand cmd = new OleDbCommand(strSQL, ConnAcc);//创建Command命令对象 
            int intNum = (int)cmd.ExecuteScalar();//得到统计数,SUM则用double 
            if (code.ToLower() == Session["code"].ToString().ToLower())
            {
                if (intNum <= 0)
                {
                    Response.Write("<Script Language=JavaScript>alert(\"用户名或密码，请重新登录！\")</Script>>");
                }
                else
                {
                    Response.Redirect("home.html");
                }
            }
            else
            {
                Response.Write("<Script Language=JavaScript>alert(\"验证码错误！\")</Script>>");
                txtCode.Text = "";
            }
            ConnAcc.Close();//关闭数据库 

        }
    }
}