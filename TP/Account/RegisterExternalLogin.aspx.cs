using System;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Web;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Microsoft.Owin.Security;
using Owin;
using TP.Models;

namespace TP.Account
{
    public partial class RegisterExternalLogin : System.Web.UI.Page
    {
        protected string ProviderName
        {
            get { return (string)ViewState["ProviderName"] ?? String.Empty; }
            private set { ViewState["ProviderName"] = value; }
        }

        protected string ProviderAccountKey
        {
            get { return (string)ViewState["ProviderAccountKey"] ?? String.Empty; }
            private set { ViewState["ProviderAccountKey"] = value; }
        }

        private void RedirectOnFail()
        {
            Response.Redirect((User.Identity.IsAuthenticated) ? "/Default" : "/Default");
        }

        protected void Page_Load()
        {
            //// Traiter le résultat à partir d'un fournisseur d'authentification de la demande
            ProviderName = IdentityHelper.GetProviderNameFromRequest(Request);
            //if (String.IsNullOrEmpty(ProviderName))
            //{
            //    RedirectOnFail();
            //    return;
            //}
            if (!IsPostBack)
            {
                var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
                var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
                var loginInfo = Context.GetOwinContext().Authentication.GetExternalLoginInfo();
                if (loginInfo == null)
                {
                    RedirectOnFail();
                    return;
                }
                var user = manager.Find(loginInfo.Login);
                if (user != null)
                {
                    signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);
                    IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                }
                //else if (User.Identity.IsAuthenticated)
                //{
                //    // Effectuer une vérification xsrf lors de la liaison
                //    var verifiedloginInfo = Context.GetOwinContext().Authentication.GetExternalLoginInfo(IdentityHelper.XsrfKey, User.Identity.GetUserId());
                //    if (verifiedloginInfo == null)
                //    {
                //        RedirectOnFail();
                //        return;
                //    }

                //    //var result = manager.AddLogin(User.Identity.GetUserId(), verifiedloginInfo.Login);
                //    //if (result.Succeeded)
                //    //{
                //    //    IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                //    //}
                //    //else
                //    //{
                //    //    AddErrors(result);
                //    //    return;
                //    //}
                //}
                else
                {
                    Email.Text = loginInfo.Email;
                    UserName.Text = loginInfo.DefaultUserName;
                }
            }
        }        
        
        protected void LogIn_Click(object sender, EventArgs e)
        {
            CreateAndLoginUser();
        }
        public void sendMail(string id)
        {
            using (MailMessage mm = new MailMessage("test123.Anas@gmail.com", Email.Text))
            {
                string body = string.Empty;
                body += "<b>"+Email.Text.Trim() + "</b> <br>";
                //body+= "</br><a href =\"https://localhost:44334/Account/Confirm?Conf=\"+id+"+>Click her to Confirm ur account</a> <br>";
                body += " < br /><a href = https://localhost:44334/Account/Confirm?Conf=" +id+" > Click here to activate your account.</a>";
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

        private void CreateAndLoginUser()
        {
            if (!IsValid)
            {
                return;
            }
            var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            var signInManager = Context.GetOwinContext().GetUserManager<ApplicationSignInManager>();
            var user = new ApplicationUser() {UserName=Email.Text, PhoneNumber = NumberPhone.Text, Email = Email.Text,Job=Job.Text };
            IdentityResult result = manager.Create(user);
            if (result.Succeeded)
            {
               
                Session["userId"] = user.Id;
                sendMail(user.Id);
                Response.Redirect("/Default");
                var loginInfo = Context.GetOwinContext().Authentication.GetExternalLoginInfo();
                if (loginInfo == null)
                {
                    RedirectOnFail();
                    return;
                }
                result = manager.AddLogin(user.Id, loginInfo.Login);
                if (result.Succeeded)
                {
                    signInManager.SignIn(user, isPersistent: false, rememberBrowser: false);

                    // Pour plus d'informations sur l'activation de la confirmation de compte et de la réinitialisation de mot de passe, visitez https://go.microsoft.com/fwlink/?LinkID=320771
                     var code = manager.GenerateEmailConfirmationToken(user.Id);
                    //Envoyer ce lien par e-mail :*/
                    //IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id);
                    IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                  
                    return;
                }
            }
            AddErrors(result);
        }

        private void AddErrors(IdentityResult result) 
        {
            foreach (var error in result.Errors) 
            {
                ModelState.AddModelError("", error);
            }
        }
    }
}