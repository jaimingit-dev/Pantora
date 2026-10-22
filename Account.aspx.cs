using System;
using System.Web.UI;

namespace Pantora
{
    public partial class Account : Page
    {
        public string CurrentUserName = "Aditya Sharma";
        public string CurrentUserEmail = "aditya.sharma@example.com";
        public string CurrentUserInitials = "AS";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["UserName"] != null && !string.IsNullOrEmpty(Session["UserName"].ToString()))
                {
                    CurrentUserName = Session["UserName"].ToString();
                }

                if (Session["UserEmail"] != null && !string.IsNullOrEmpty(Session["UserEmail"].ToString()))
                {
                    CurrentUserEmail = Session["UserEmail"].ToString();
                }

                // Generate initials
                if (!string.IsNullOrEmpty(CurrentUserName))
                {
                    string[] parts = CurrentUserName.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);
                    if (parts.Length > 1)
                    {
                        CurrentUserInitials = (parts[0].Substring(0, 1) + parts[parts.Length - 1].Substring(0, 1)).ToUpper();
                    }
                    else if (parts.Length == 1 && parts[0].Length > 0)
                    {
                        CurrentUserInitials = parts[0].Substring(0, 1).ToUpper();
                    }
                }
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();

            string script = "<script type='text/javascript'>try { localStorage.setItem('pantora_logged_out', 'true'); localStorage.removeItem('pantora_authenticated'); localStorage.removeItem('pantora_user_name'); localStorage.removeItem('pantora_user_email'); } catch(e){} window.location.href = 'Login.aspx';</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "LogoutRedirect", script);
            Response.Redirect("~/Login.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }
    }
}
