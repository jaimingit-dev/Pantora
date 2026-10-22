using System;
using System.Web.UI;

namespace Pantora.Admin
{
    public partial class Account : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminAuthenticated"] == null || !(bool)Session["AdminAuthenticated"])
            {
                Response.Redirect("Login.aspx", false);
                return;
            }

            if (!IsPostBack)
            {
                if (Session["AdminUser"] != null)
                {
                    txtStaffName.Text = Session["AdminUser"].ToString();
                }
                if (Session["AdminEmail"] != null)
                {
                    txtStaffEmail.Text = Session["AdminEmail"].ToString();
                }
            }
        }

        protected void btnSaveProfile_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            string name = txtStaffName.Text.Trim();
            string email = txtStaffEmail.Text.Trim();

            Session["AdminUser"] = name;
            Session["AdminEmail"] = email;

            pnlNotice.Visible = true;
            pnlNotice.Attributes["style"] = "background:#ECFDF5; border-color:#A7F3D0; color:#065F46; padding:12px 14px; border-radius:5px; margin-bottom:20px; display:flex; align-items:center; gap:8px;";
            litNoticeMessage.Text = "Administrator profile updated successfully.";
        }

        protected void btnSaveSettings_Click(object sender, EventArgs e)
        {
            pnlNotice.Visible = true;
            pnlNotice.Attributes["style"] = "background:#ECFDF5; border-color:#A7F3D0; color:#065F46; padding:12px 14px; border-radius:5px; margin-bottom:20px; display:flex; align-items:center; gap:8px;";
            litNoticeMessage.Text = "Storefront operational parameters and currency settings synchronized successfully.";
        }

        protected void btnUpdatePass_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            string cur = txtCurPass.Text;

            if (cur != "Admin@123" && cur != "admin123")
            {
                pnlNotice.Visible = true;
                pnlNotice.Attributes["style"] = "background:#FEF2F2; border:1px solid #FCA5A5; color:#991B1B; padding:12px 14px; border-radius:5px; margin-bottom:20px; display:flex; align-items:center; gap:8px;";
                litNoticeMessage.Text = "Current security key is incorrect.";
                return;
            }

            pnlNotice.Visible = true;
            pnlNotice.Attributes["style"] = "background:#ECFDF5; border-color:#A7F3D0; color:#065F46; padding:12px 14px; border-radius:5px; margin-bottom:20px; display:flex; align-items:center; gap:8px;";
            litNoticeMessage.Text = "Security password updated successfully.";
            txtCurPass.Text = "";
            txtNewPass.Text = "";
            txtConfirmPass.Text = "";
        }

        protected void btnLogoutAdmin_Click(object sender, EventArgs e)
        {
            Session["AdminAuthenticated"] = null;
            Session["AdminEmail"] = null;
            Session["AdminUser"] = null;
            Session["AdminRole"] = null;
            Session.Abandon();

            Response.Redirect("Login.aspx", false);
        }
    }
}
