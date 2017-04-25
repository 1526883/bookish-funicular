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
            user.Credentials= new System.Net.NetworkCredential("nurcraftifycanvas@gmail.com", "nur01234567");
            user.Timeout = 20000;


            /**- Reference form https://www.youtube.com/watch?v=Fw1X7HLZfos&t=204s **/
            MailMessage send_msg = new MailMessage("nurcraftifycanvas@gmail.com", "norazi@gmail.com");
            send_msg.Subject = subject_textb.Text;
            send_msg.Body = "<b>From : </b>" + name_textb.Text + "<br/>"
             + "<b>Subject : </b>" + subject_textb.Text + "<br/>"
                 + "<b>Email : </b>" + email_textb.Text + "<br/>"
                    + "<b>Message : </b>" + message_textb.Text;


             /** Reference from http://stackoverflow.com/questions/1329922/send-html-email-via-c-sharp-with-smtpclient **/
            send_msg.IsBodyHtml = true;
            
                user.Send(send_msg);
                message_textb.Text = "";
                name_textb.Text = "";
                subject_textb.Text = "";
                email_textb.Text = "";

           
                lbl_message.Text = "<b>Email sent successfully!<b>";

            
        }
    }
}
        
        