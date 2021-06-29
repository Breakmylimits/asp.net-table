using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Label1.Text = "Login";
            this.Label2.Text = "Username";
            this.TextBox1.Attributes.Add("placeholder", "Username");
            this.Label3.Text = "Password";
            this.TextBox2.Attributes.Add("placeholder", "Password");

        }

        protected void login(object sender, EventArgs e)
        {
            string admin = "admin";
            string password = "1234";
            if (TextBox1.Text == admin && TextBox2.Text == password)
            {
                //Session["value"] = TextBox1.Text;
                //Session["value1"] = TextBox2.Text;
                Response.Redirect("WebForm3.aspx");
            }
            else
            {
                Response.Write("<script>alert('รหัสผ่านไม่ถูกต้อง')</script>");
            }

        }

       
    }
}