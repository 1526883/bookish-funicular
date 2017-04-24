using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
namespace Crafitfy_PrintedCanvas
{
    public partial class Contact_Us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    
        protected void cmdSubmit_Click(object sender, EventArgs e)
        {

            SmtpClient user = new SmtpClient("smtp.gmail.com", 587);
            user.EnableSsl = true;
            user.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            user.Credentials= new System.Net.NetworkCredential("craftifycanvas@gmail.com", "Che19960515");
            user.Timeout = 20000;

            MailMessage msg = new MailMessage("craftifycanvas@gmail.com", "1526883@chester.ac.uk");
            msg.Subject = subject_textb.Text;
            msg.Body = "<b>From : </b>" + name_textb.Text + "<\n>"
             + "<b>Subject : </b>" + subject_textb.Text + "<\n>"
                 + "<b>Email : </b>" + email_textb.Text + "<\n>"
                    + "<b>Message : </b>" + message_textb.Text;

            msg.IsBodyHtml = true;
            
            {
                user.Send(msg);
                message_textb.Text = "";
                name_textb.Text = "";
                subject_textb.Text = "";
                email_textb.Text = "";

                lbl_message.ForeColor = System.Drawing.Color.Green;
                lbl_message.Text = "<b>Email sent successfully!<b>";
            }

            
           

        }
    }
}
        