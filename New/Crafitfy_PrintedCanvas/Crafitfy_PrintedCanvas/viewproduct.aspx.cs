using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Crafitfy_PrintedCanvas
{
    public partial class viewproduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string pro_id = Request.QueryString["Id"];
            string filename = pro_id + ".jpg";

            CurrentImage.ImageUrl = "~/Products/" + filename;
        }
    }
}