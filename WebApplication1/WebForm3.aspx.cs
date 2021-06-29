using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace WebApplication1
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["va1"].ToString();
            Label2.Text = Session["va2"].ToString();
            this.Label3.Text = "โปรแกรมเมอร์";



        }

        protected void logout(object sender, EventArgs e)
        {

            Response.Redirect("WebForm2.aspx");

        }
        protected void UploadFile(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/Files/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }
         
            //Save the File to the Directory (Folder).
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));

            //Display the Picture in Image control.
            Image1.ImageUrl = "~/Files/" + Path.GetFileName(FileUpload1.FileName);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/FileUpload/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists Create it.
                Directory.CreateDirectory(folderPath);
            }
           

            //Save the File to the Directory (Folder).
            FileUpload2.SaveAs(folderPath + Path.GetFileName(FileUpload2.FileName));

            //Display the Picture in Image control.
            Label4.Text = "~/FileUpload/" + Path.GetFileName(FileUpload2.FileName);



        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm5.aspx");
        }
    }
    
}