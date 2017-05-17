using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Crafitfy_PrintedCanvas
{
    public partial class admin : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=SQL2016.FSE.Network;Integrated Security=False;User ID=user_db_1526883_co5027;Password=Che19960515;Connect Timeout=15;Encrypt=False");
        int f;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void loginbtn_Click1(object sender, EventArgs e)
        {
            f = 0;
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from adminlogin_ where username='" + Uname_tb.Text + "'and password='" + Pword_tb.Text + "'";
            cmd.ExecuteNonQuery();
            DataTable table_data = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(table_data);
            f = Convert.ToInt32(table_data.Rows.Count.ToString());


            if (f == 1)
            {
                Response.Redirect("Adminview.aspx");
            }
            else
            {
                lbl_adminlogin.Text = "Invalid username or password";
                
            }

            conn.Close();

        }
    }
}