using System;
using System.Web.UI;

namespace Pantora.Admin
{
    public partial class Dashboard : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Security gatekeeper: verify staff authentication
            if (Session["AdminAuthenticated"] == null || !(bool)Session["AdminAuthenticated"])
            {
                Response.Redirect("Login.aspx", false);
                return;
            }
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
