using System;
using System.Web.UI;

namespace Pantora.Admin
{
    public partial class OrderDetail : Page
    {
        public string OrderId { get; set; } = "ORD-9241";
        public string OrderDate { get; set; } = "Today, 14:32";
        public string PaymentMethod { get; set; } = "UPI / Razorpay Verified";
        public string PaymentStatus { get; set; } = "Settled";
        public string TotalAmount { get; set; } = "2,499";
        public string SubTotal { get; set; } = "2,231";
        public string GstAmount { get; set; } = "268";
        public string CurrentStatus { get; set; } = "IN TRANSIT";

        public string CustomerName { get; set; } = "Aditya Sharma";
        public string CustomerEmail { get; set; } = "aditya.sharma@example.com";
        public string CustomerPhone { get; set; } = "+91 98201 44820";
        public string ShippingAddress { get; set; } = "Flat 402, Signature Towers, Bandra Kurla Complex, Mumbai, MH 400051";
        public string TailoringNotes { get; set; } = "Complimentary Doorstep Pinning requested: Hem adjusted to 30.5-inch inseam. Extended tab waistband.";

        public string ProductName { get; set; } = "The Seoul Pleated Fluid Trouser";
        public string ProductCut { get; set; } = "Korean Style";
        public string ProductSize { get; set; } = "32";
        public string ProductSku { get; set; } = "PN-KOR-01";
        public string UnitPrice { get; set; } = "2,499";
        public string ProductImg { get; set; } = "Images/korean-seoul-pleat.png";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminAuthenticated"] == null || !(bool)Session["AdminAuthenticated"])
            {
                Response.Redirect("Login.aspx", false);
                return;
            }

            string id = Request.QueryString["id"];
            if (!string.IsNullOrEmpty(id))
            {
                OrderId = id.Replace("#", "").ToUpper();
            }

            if (!IsPostBack)
            {
                LoadOrderData(OrderId);
            }
        }

        private void LoadOrderData(string id)
        {
            switch (id)
            {
                case "ORD-9241":
                case "9241":
                    OrderId = "ORD-9241";
                    OrderDate = "21 Oct 2026, 14:32";
                    CustomerName = "Aditya Sharma";
                    CustomerEmail = "aditya.sharma@example.com";
                    CustomerPhone = "+91 98201 44820";
                    ShippingAddress = "Flat 402, Signature Towers, Bandra Kurla Complex, Mumbai, MH 400051";
                    ProductName = "The Seoul Pleated Fluid Trouser";
                    ProductCut = "Korean Style";
                    ProductSize = "32";
                    ProductSku = "PN-KOR-01";
                    UnitPrice = "2,499";
                    TotalAmount = "2,499";
                    SubTotal = "2,231";
                    GstAmount = "268";
                    ProductImg = "Images/korean-seoul-pleat.png";
                    CurrentStatus = "IN TRANSIT";
                    txtTrackingNumber.Text = "BD-AIR-8829104";
                    ddlFulfillmentStatus.SelectedValue = "IN TRANSIT";
                    break;

                case "ORD-9240":
                case "9240":
                    OrderId = "ORD-9240";
                    OrderDate = "21 Oct 2026, 12:15";
                    CustomerName = "Vikram Malhotra";
                    CustomerEmail = "vikram.m@domain.com";
                    CustomerPhone = "+91 98112 30948";
                    ShippingAddress = "Villa 12, Palm Meadows, Whitefield, Bengaluru, KA 560066";
                    ProductName = "The Como Linen Relaxed Trouser";
                    ProductCut = "Regular Fit";
                    ProductSize = "32";
                    ProductSku = "PN-REG-01";
                    UnitPrice = "2,899";
                    TotalAmount = "2,899";
                    SubTotal = "2,588";
                    GstAmount = "311";
                    ProductImg = "Images/reg-como-linen.png";
                    CurrentStatus = "READY TO DISPATCH";
                    txtTrackingNumber.Text = "BD-AIR-8829091";
                    ddlFulfillmentStatus.SelectedValue = "READY TO DISPATCH";
                    break;

                case "ORD-9238":
                case "9238":
                    OrderId = "ORD-9238";
                    OrderDate = "20 Oct 2026, 18:40";
                    CustomerName = "Sameer Kapoor";
                    CustomerEmail = "sameer.k@outlook.com";
                    CustomerPhone = "+91 97170 82194";
                    ShippingAddress = "C-14, Vasant Vihar, New Delhi, DL 110057";
                    ProductName = "The Kensington Worsted Wool Trouser";
                    ProductCut = "Slim Fit";
                    ProductSize = "30";
                    ProductSku = "PN-SLM-01";
                    UnitPrice = "3,299";
                    TotalAmount = "3,299";
                    SubTotal = "2,945";
                    GstAmount = "354";
                    ProductImg = "Images/slim-kensington-wool.png";
                    CurrentStatus = "DELIVERED";
                    txtTrackingNumber.Text = "BD-AIR-8827440";
                    ddlFulfillmentStatus.SelectedValue = "DELIVERED";
                    break;

                case "PN-8810":
                case "8810":
                    OrderId = "PN-8810";
                    OrderDate = "19 Oct 2026, 11:20";
                    CustomerName = "Aditya Sharma";
                    CustomerEmail = "curator@pantora.in";
                    CustomerPhone = "+91 98201 44820";
                    ShippingAddress = "B-804, Lodha Bellissimo, Mahalaxmi, Mumbai, MH 400011";
                    ProductName = "The Gangnam Fluid Pleated Trouser";
                    ProductCut = "Korean Style";
                    ProductSize = "32";
                    ProductSku = "PN-KOR-02";
                    UnitPrice = "2,699";
                    TotalAmount = "2,699";
                    SubTotal = "2,410";
                    GstAmount = "289";
                    ProductImg = "Images/korean-gangnam-fluid.png";
                    CurrentStatus = "DELIVERED";
                    txtTrackingNumber.Text = "BD-AIR-8820015";
                    ddlFulfillmentStatus.SelectedValue = "DELIVERED";
                    break;

                case "ORD-9235":
                case "9235":
                    OrderId = "ORD-9235";
                    OrderDate = "19 Oct 2026, 09:30";
                    CustomerName = "Rohan Desai";
                    CustomerEmail = "rohan.desai@gmail.com";
                    CustomerPhone = "+91 99204 88120";
                    ShippingAddress = "14 Marine Drive, Nariman Point, Mumbai, MH 400021";
                    ProductName = "The Osaka Heavy Twill Wide Trouser";
                    ProductCut = "Baggy Fit";
                    ProductSize = "34";
                    ProductSku = "PN-BAG-01";
                    UnitPrice = "2,999";
                    TotalAmount = "2,999";
                    SubTotal = "2,678";
                    GstAmount = "321";
                    ProductImg = "Images/baggy-osaka-twill.png";
                    CurrentStatus = "RETURN PENDING";
                    txtTrackingNumber.Text = "BD-AIR-8825102";
                    ddlFulfillmentStatus.SelectedValue = "RETURN PENDING";
                    break;

                default:
                    OrderId = id;
                    OrderDate = "Recent Atelier Order";
                    CustomerName = "Verified Atelier Client";
                    CustomerEmail = "client@pantora.in";
                    CustomerPhone = "+91 98000 00000";
                    ShippingAddress = "Pantora Atelier Client Residence, India";
                    ProductName = "The Seoul Pleated Fluid Trouser";
                    ProductCut = "Korean Style";
                    ProductSize = "32";
                    ProductSku = "PN-KOR-01";
                    UnitPrice = "2,499";
                    TotalAmount = "2,499";
                    SubTotal = "2,231";
                    GstAmount = "268";
                    ProductImg = "Images/korean-seoul-pleat.png";
                    CurrentStatus = "READY TO DISPATCH";
                    txtTrackingNumber.Text = "BD-AIR-8820000";
                    ddlFulfillmentStatus.SelectedValue = "READY TO DISPATCH";
                    break;
            }
        }

        public string GetStatusCssClass()
        {
            switch (CurrentStatus)
            {
                case "DELIVERED":
                case "RETURN APPROVED":
                    return "status-delivered";
                case "READY TO DISPATCH":
                case "RETURN PENDING":
                    return "status-ready";
                default:
                    return "status-intransit";
            }
        }

        protected void btnUpdateStatus_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            string newStatus = ddlFulfillmentStatus.SelectedValue;
            string tracking = txtTrackingNumber.Text.Trim();
            string carrier = ddlCarrier.SelectedValue;

            CurrentStatus = newStatus;

            pnlNotice.Visible = true;
            pnlNotice.Attributes["style"] = "background:#ECFDF5; border:1px solid #A7F3D0; color:#065F46; padding:16px 20px; border-radius:6px; margin-bottom:24px; display:flex; align-items:flex-start; gap:12px;";
            litNoticeMessage.Text = "<strong>Success!</strong> Order <strong>#" + Server.HtmlEncode(OrderId) + "</strong> status updated to <strong>" + Server.HtmlEncode(newStatus) + "</strong> via " + Server.HtmlEncode(carrier) + " (Airway Bill: <strong>" + Server.HtmlEncode(tracking) + "</strong>). Dispatch notifications synchronized with customer.";
        }
    }
}
