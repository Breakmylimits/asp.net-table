using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["va1"] = firstname.Text;
            Session["va2"] = lastname.Text;
        }


        protected void click(object sender, EventArgs e)
        {

         

            Response.Redirect("WebForm2.aspx");

        }

        protected void totalage_TextChanged(object sender, EventArgs e)
        {

        }
    }
}