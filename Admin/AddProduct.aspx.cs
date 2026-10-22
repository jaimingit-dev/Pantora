using System;
using System.Web.UI;

namespace Pantora.Admin
{
    public partial class AddProduct : Page
    {
        public string PageTitle { get; set; } = "Add New Trouser SKU";
        public string BreadcrumbText { get; set; } = "ADD NEW TROUSER";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminAuthenticated"] == null || !(bool)Session["AdminAuthenticated"])
            {
                Response.Redirect("Login.aspx", false);
                return;
            }

            string editId = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(editId))
            {
                PageTitle = "Edit Trouser Dossier";
                BreadcrumbText = "EDIT TROUSER (" + editId.ToUpper() + ")";
            }

            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(editId))
                {
                    LoadProductForEdit(editId);
                    btnSave.Text = "UPDATE TROUSER DOSSIER";
                }
            }
        }

        private void LoadProductForEdit(string id)
        {
            // Preload known mock catalog items for editing
            switch (id.ToUpper())
            {
                case "P-01":
                case "PN-KOR-01":
                    txtProdName.Text = "The Seoul Pleated Fluid Trouser";
                    txtProdSku.Text = "PN-KOR-01";
                    txtColorway.Text = "Onyx Black";
                    txtFabric.Text = "Super 120s Fluid Wool Gabardine";
                    txtProdDesc.Text = "High-waisted silhouette with precision forward double pleats and an effortless fluid drape over footwear.";
                    txtPrice.Text = "2499";
                    txtMrp.Text = "3499";
                    txtStock.Text = "42";
                    ddlCategory.SelectedValue = "Korean Style";
                    ddlBadge.SelectedValue = "Bestseller";
                    ddlProdImage.SelectedValue = "Images/korean-seoul-pleat.png";
                    break;

                case "P-02":
                case "PN-REG-01":
                    txtProdName.Text = "The Como Linen Relaxed Trouser";
                    txtProdSku.Text = "PN-REG-01";
                    txtColorway.Text = "Sand Khaki";
                    txtFabric.Text = "100% Belgian Flax Linen";
                    txtProdDesc.Text = "Classic mid-rise straight trouser crafted from airy, breathable Belgian flax linen.";
                    txtPrice.Text = "2899";
                    txtMrp.Text = "3999";
                    txtStock.Text = "28";
                    ddlCategory.SelectedValue = "Regular Fit";
                    ddlBadge.SelectedValue = "Seasonal Pick";
                    ddlProdImage.SelectedValue = "Images/reg-como-linen.png";
                    break;

                case "P-03":
                case "PN-SLM-01":
                    txtProdName.Text = "The Kensington Worsted Wool Trouser";
                    txtProdSku.Text = "PN-SLM-01";
                    txtColorway.Text = "Midnight Black";
                    txtFabric.Text = "Fine Worsted Wool (280 GSM)";
                    txtProdDesc.Text = "Refined tailored slim silhouette with a clean 14.25-inch taper from knee to hem.";
                    txtPrice.Text = "3299";
                    txtMrp.Text = "4499";
                    txtStock.Text = "15";
                    ddlCategory.SelectedValue = "Slim Fit";
                    ddlBadge.SelectedValue = "Atelier Exclusive";
                    ddlProdImage.SelectedValue = "Images/slim-kensington-wool.png";
                    break;

                case "P-04":
                case "PN-BAG-01":
                    txtProdName.Text = "The Osaka Heavy Twill Wide Trouser";
                    txtProdSku.Text = "PN-BAG-01";
                    txtColorway.Text = "Desert Ecru";
                    txtFabric.Text = "340 GSM Japanese Cotton Drill";
                    txtProdDesc.Text = "Architectural wide-leg profile with generous pooling hem and structural pleat fold.";
                    txtPrice.Text = "2999";
                    txtMrp.Text = "4199";
                    txtStock.Text = "19";
                    ddlCategory.SelectedValue = "Baggy Fit";
                    ddlBadge.SelectedValue = "New Arrival";
                    ddlProdImage.SelectedValue = "Images/baggy-osaka-twill.png";
                    break;

                default:
                    txtProdName.Text = "Tailored Trouser " + id;
                    txtProdSku.Text = id;
                    txtColorway.Text = "Charcoal Melange";
                    txtFabric.Text = "Technical Combed Cotton Blend";
                    txtProdDesc.Text = "Atelier edition tailored trousers with hand-finished hem and interior waistband pinning.";
                    txtPrice.Text = "2699";
                    txtMrp.Text = "3799";
                    txtStock.Text = "35";
                    ddlCategory.SelectedValue = "Regular Fit";
                    ddlBadge.SelectedValue = "Bestseller";
                    ddlProdImage.SelectedValue = "Images/reg-wool-trouser.png";
                    break;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            string name = txtProdName.Text.Trim();
            string sku = txtProdSku.Text.Trim().ToUpper();
            string price = txtPrice.Text.Trim();
            string stock = txtStock.Text.Trim();
            string cut = ddlCategory.SelectedValue;

            pnlNotice.Visible = true;
            pnlNotice.Attributes["style"] = "background:#ECFDF5; border:1px solid #A7F3D0; color:#065F46; padding:16px 20px; border-radius:6px; margin-bottom:24px; display:flex; align-items:flex-start; gap:12px;";

            string editId = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(editId))
            {
                litNoticeMessage.Text = "<strong>Success!</strong> Trouser dossier for <strong>" + Server.HtmlEncode(name) + " (" + Server.HtmlEncode(sku) + ")</strong> was updated successfully. Current Stock: " + Server.HtmlEncode(stock) + " units, Price: &#8377;" + Server.HtmlEncode(price) + ".";
            }
            else
            {
                litNoticeMessage.Text = "<strong>Success!</strong> New Trouser <strong>" + Server.HtmlEncode(name) + " (" + Server.HtmlEncode(sku) + ")</strong> has been created and published to the active <strong>" + Server.HtmlEncode(cut) + "</strong> collection. Retail: &#8377;" + Server.HtmlEncode(price) + " (" + Server.HtmlEncode(stock) + " units).";
                
                // Clear inputs for another entry
                txtProdName.Text = "";
                txtProdSku.Text = "";
                txtColorway.Text = "";
                txtFabric.Text = "";
                txtProdDesc.Text = "";
                txtPrice.Text = "";
                txtMrp.Text = "";
                txtStock.Text = "";
            }
        }
    }
}
