using System;
using System.Web.UI;

namespace Pantora
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Clear any prior alert
                pnlAlert.Visible = false;
            }
        }

        protected void btnRegisterSubmit_Click(object sender, EventArgs e)
        {
            Page.Validate("RegisterGroup");
            if (!Page.IsValid)
            {
                KeepRegisterTabActive();
                return;
            }

            string name = txtRegisterName.Text.Trim();
            string email = txtRegisterEmail.Text.Trim();
            string password = txtRegisterPassword.Text;
            string confirm = txtRegisterConfirm.Text;
            bool agreed = chkAgreement.Checked;

            if (string.IsNullOrEmpty(name))
            {
                ShowAlert("Please enter your full legal name.", false);
                KeepRegisterTabActive();
                return;
            }

            if (string.IsNullOrEmpty(email) || !email.Contains("@") || !email.Contains("."))
            {
                ShowAlert("Please enter a valid email address.", false);
                KeepRegisterTabActive();
                return;
            }

            if (string.IsNullOrEmpty(password) || password.Length < 6)
            {
                ShowAlert("Password must be at least 6 characters in length.", false);
                KeepRegisterTabActive();
                return;
            }

            if (password != confirm)
            {
                ShowAlert("Passwords do not match.", false);
                KeepRegisterTabActive();
                return;
            }

            if (!agreed)
            {
                ShowAlert("Please accept the Atelier Terms to complete your registration.", false);
                KeepRegisterTabActive();
                return;
            }

            // Successfully registered patron account -> save session and redirect to My Account
            Session["UserEmail"] = email;
            Session["UserName"] = name;
            Session["IsAuthenticated"] = true;

            string script = $"<script type='text/javascript'>try {{ localStorage.removeItem('pantora_logged_out'); localStorage.setItem('pantora_user_name', '{name.Replace("'", "\\'")}'); localStorage.setItem('pantora_user_email', '{email.Replace("'", "\\'")}'); localStorage.setItem('pantora_authenticated', 'true'); }} catch(e){{}} window.location.href = 'Account.aspx';</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "RedirectAccount", script);
            Response.Redirect("~/Account.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }

        protected void btnLoginSubmit_Click(object sender, EventArgs e)
        {
            Page.Validate("SignInGroup");
            if (!Page.IsValid)
            {
                KeepSignInTabActive();
                return;
            }

            string email = txtLoginEmail.Text.Trim();
            string password = txtLoginPassword.Text;

            if (string.IsNullOrEmpty(email) || !email.Contains("@"))
            {
                ShowAlert("Please enter your registered email address.", false);
                KeepSignInTabActive();
                return;
            }

            if (string.IsNullOrEmpty(password))
            {
                ShowAlert("Please enter your account password.", false);
                KeepSignInTabActive();
                return;
            }

            // Check if administrator credentials entered on main login page
            if ((string.Equals(email, "admin@pantora.com", StringComparison.OrdinalIgnoreCase) || string.Equals(email, "admin@atelier.in", StringComparison.OrdinalIgnoreCase)) &&
                (password == "Admin@123" || password == "admin123"))
            {
                Session["AdminAuthenticated"] = true;
                Session["AdminEmail"] = email;
                Session["AdminUser"] = "Aditya Sharma (Head of Atelier)";
                Session["AdminRole"] = "Executive Administrator";

                Response.Redirect("Admin/Dashboard.aspx", false);
                Context.ApplicationInstance.CompleteRequest();
                return;
            }

            // Successfully authenticated patron -> save to session and redirect to My Account
            Session["UserEmail"] = email;
            Session["IsAuthenticated"] = true;

            string script = $"<script type='text/javascript'>try {{ localStorage.removeItem('pantora_logged_out'); localStorage.setItem('pantora_user_email', '{email.Replace("'", "\\'")}'); localStorage.setItem('pantora_authenticated', 'true'); }} catch(e){{}} window.location.href = 'Account.aspx';</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "RedirectAccount", script);
            Response.Redirect("~/Account.aspx", false);
            Context.ApplicationInstance.CompleteRequest();
        }

        protected void cvAgreement_ServerValidate(object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
        {
            args.IsValid = chkAgreement.Checked;
        }

        private void ShowAlert(string message, bool isSuccess)
        {
            pnlAlert.Visible = true;
            pnlAlert.CssClass = isSuccess ? "atelier-alert success" : "atelier-alert error";
            litAlertMessage.Text = message;
        }

        private void KeepSignInTabActive()
        {
            ClientScript.RegisterStartupScript(this.GetType(), "SwitchToSignIn", "switchTab('signin');", true);
        }

        private void KeepRegisterTabActive()
        {
            ClientScript.RegisterStartupScript(this.GetType(), "SwitchToRegister", "switchTab('create');", true);
        }
    }
}
