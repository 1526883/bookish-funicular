using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crafitfy_PrintedCanvas
{
    public partial class Uploadimages : System.Web.UI.Page
    {
       

protected void Page_Load(object sender, EventArgs e)
        {
            string pId = Request.QueryString["Id"];
            string filename = pId + ".jpg";

            CurrentImage.ImageUrl = "~/Products/" + filename;
                 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pId = Request.QueryString["Id"];
            string filename = pId + ".jpg";
            string saveLocation = Server.MapPath("~/Products/" + filename);

            file_upl.SaveAs(saveLocation);

          


        }
    }
}