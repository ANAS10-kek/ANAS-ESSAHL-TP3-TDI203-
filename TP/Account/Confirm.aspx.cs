using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using TP.Models;

namespace TP.Account
{
    public partial class Confirm : Page
    {
        protected string StatusMessage
        {
            get;
            private set;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //string code = IdentityHelper.GetCodeFromRequest(Request);
            //string userId = IdentityHelper.GetUserIdFromRequest(Request);
            //if (code != null && userId != null)
            //{
            //    var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            //    var result = manager.ConfirmEmail(userId, code);
            //    if (result.Succeeded)
            //    {
            //        successPanel.Visible = true;
            //        return;
            //    }
            //}
            //successPanel.Visible = false;
            //errorPanel.Visible = true;
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection cn = new SqlConnection(@"Data Source=HP-ELIT8\SQLEXPRESS;Initial Catalog=event_data2;Integrated Security=True");
                string req = "update AspNetUsers set EmailConfirmed ='1' where Id='" + Request.QueryString["Conf"] + "'";
                SqlCommand cmd = new SqlCommand(req, cn);
                cn.Open();
                cmd.ExecuteNonQuery();
                cn.Close();
                Response.Redirect("/Default");
            }
            catch(Exception ex)
            {
                Response.Redirect("/Default");
            }
        }
    }
}