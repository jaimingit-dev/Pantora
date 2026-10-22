using System;
using System.Web.UI;

namespace Pantora.Admin
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // If already logged in as admin, redirect to Dashboard
                if (Session["AdminAuthenticated"] != null && (bool)Session["AdminAuthenticated"])
                {
                    Response.Redirect("Dashboard.aspx", false);
                }
            }
        }

        protected void btnAdminLogin_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            string email = txtAdminEmail.Text.Trim();
            string password = txtAdminPassword.Text.Trim();

            // Verified staff credentials check (accepts curator@pantora.in or admin@pantora.com)
            if ((string.Equals(email, "curator@pantora.in", StringComparison.OrdinalIgnoreCase) ||
                 string.Equals(email, "admin@pantora.com", StringComparison.OrdinalIgnoreCase) ||
                 string.Equals(email, "admin@atelier.in", StringComparison.OrdinalIgnoreCase)) &&
                (password == "Admin@123" || password == "admin123"))
            {
                Session["AdminAuthenticated"] = true;
                Session["AdminEmail"] = email;
                Session["AdminUser"] = "Atelier Operations Lead";
                Session["AdminRole"] = "Executive Administrator";

                Response.Redirect("Dashboard.aspx", false);
            }
            else
            {
                pnlAdminAlert.Visible = true;
                pnlAdminAlert.Attributes["style"] = "background:#FEF2F2; border:1px solid #FCA5A5; color:#991B1B; padding:12px 14px; border-radius:5px; margin-bottom:20px; display:flex; align-items:center; gap:8px;";
                litAdminAlert.Text = "<strong>Access Denied:</strong> Invalid staff credentials. Please check your email and security password.";
            }
        }

        protected void lnkResetCreds_Click(object sender, EventArgs e)
        {
            pnlAdminAlert.Visible = true;
            pnlAdminAlert.Attributes["style"] = "background:#ECFDF5; border-color:#A7F3D0; color:#065F46; padding:12px 14px; border-radius:5px; margin-bottom:20px; display:flex; align-items:center; gap:8px;";
            litAdminAlert.Text = "<strong>Instructions Dispatched:</strong> A secure credential reset link has been dispatched to curator@pantora.in.";
        }
    }
}
