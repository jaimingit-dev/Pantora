using System;
using System.Web.UI;

namespace Pantora
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                pnlDispatchAlert.Visible = false;
            }
        }

        protected void btnDispatchSubmit_Click(object sender, EventArgs e)
        {
            Page.Validate("DispatchGroup");
            if (!Page.IsValid) return;

            string email = txtDispatchEmail.Text.Trim();
            if (!string.IsNullOrEmpty(email) && email.Contains("@") && email.Contains("."))
            {
                pnlDispatchAlert.Visible = true;
                pnlDispatchAlert.CssClass = "dispatch-success";
                pnlDispatchAlert.Style.Clear();
                litDispatchAlert.Text = $"✓ Thank you for subscribing. Sartorial dispatches will be delivered to {email}.";
                txtDispatchEmail.Text = string.Empty;
            }
            else
            {
                pnlDispatchAlert.Visible = true;
                pnlDispatchAlert.CssClass = "dispatch-success";
                pnlDispatchAlert.Style.Add("color", "#991B1B");
                pnlDispatchAlert.Style.Add("background-color", "#FEF2F2");
                pnlDispatchAlert.Style.Add("border-color", "#FECACA");
                litDispatchAlert.Text = "Please provide a valid email address.";
            }
        }
    }
}
