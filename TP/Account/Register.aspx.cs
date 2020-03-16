using System;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using TP.Models;

namespace TP.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            var user = new ApplicationUser() { UserName = Nom_txt.Text, Email = Email.Text,PhoneNumber=PhoneNumber.Text, Job=emploi_txt.Text};
            IdentityResult result = manager.Create(user, Password.Text);
            if (result.Succeeded)
            {
                Session["userId"] = user.Id;
                sendMail(user.Id);

              
                signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
                IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                alerty.Value = "1";
                Response.Redirect("/Default");
            }
            else
            {
                ErrorMessage.Text = result.Errors.FirstOrDefault() ;
            }
        }
        public void sendMail(string id)
        {
            using (MailMessage mm = new MailMessage("test123.Anas@gmail.com", Email.Text))
            {
                string body = string.Empty;
                body += "<b>" + Email.Text.Trim() + "</b> <br>";
               
                //body+= "</br><a href =\"https://localhost:44334/Account/Confirm?Conf=\"+id+"+>Click her to Confirm ur account</a> <br>";
                body += "<a href = https://localhost:44334/Account/Confirm?Conf=" + id + " > Click here to activate your account.</a>";
                body += "<br><span>Essahl Anas</span>";
                SmtpClient smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    EnableSsl = true
                };
                NetworkCredential NetworkCred = new NetworkCredential("test123.Anas@gmail.com", "essahl1@&");
                mm.Body = body;
                mm.IsBodyHtml = true;
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);
            }
        }
    }
}