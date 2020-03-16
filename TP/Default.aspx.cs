using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Data.SqlClient;
using System.IO;
using System.Text;



namespace TP
{
    public partial class Default : System.Web.UI.Page
    {
        DateTime daysLeft = DateTime.Parse("23/12/2020 12:00:01 AM");
        DateTime startDate = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
            TimeSpan t = daysLeft - startDate;
            string countDown = string.Format("{0}d {1}h {2}m {3}s ", t.Days, t.Hours, t.Minutes, t.Seconds);
            cmptLbl.Text = countDown;
        }
        protected void Page_PreInit(object sender, EventArgs e)
        {
           
        }
        public void insertMess(string nom, string objet, string email, string message)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=HP-ELIT8\SQLEXPRESS;Initial Catalog=event_data2;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into messages values('" + nom + "','" + objet + "','" + email + "','" + message + "')",cn);
            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }
        private string createEmailBody(string userName, string title, string message)
        {
            string body = string.Empty;
            using (StreamReader reader = new StreamReader(Server.MapPath("~/index.html")))
            {
                body = reader.ReadToEnd();
            }
            body = body.Replace("{UserName}", userName);
            body = body.Replace("{Title}", title);
            body = body.Replace("{message}", message);
            return body;

        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                using (MailMessage mm = new MailMessage("test123.Anas@gmail.com", email_txt.Text))
                {
                    mm.Subject = objet_txt.Text;
                    string body = createEmailBody(Nom_txt.Text.Trim(), objet_txt.Text.Trim(), message_txt.Text);
                    mm.Body = body;
                    mm.IsBodyHtml = true;
                    SmtpClient smtp = new SmtpClient();
                    smtp.Host = "smtp.gmail.com";
                    smtp.EnableSsl = true;
                    NetworkCredential NetworkCred = new NetworkCredential("test123.Anas@gmail.com", "essahl1@&");
                    smtp.UseDefaultCredentials = true;
                    smtp.Credentials = NetworkCred;
                    smtp.Port = 587;
                    smtp.Send(mm);
                    insertMess(Nom_txt.Text, objet_txt.Text, email_txt.Text, message_txt.Text);
                }
                Nom_txt.Text = "";
                objet_txt.Text = "";
                email_txt.Text = "";
                message_txt.Text = "";
            }
            catch (Exception)
            {

                Response.Redirect("Default.aspx");
            }
           
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            TimeSpan t = daysLeft - startDate;
            string countDown = string.Format("{0}d {1}h {2}m {3}s ", t.Days, t.Hours, t.Minutes, t.Seconds);
            cmptLbl.Text = countDown;
        }
    }
}