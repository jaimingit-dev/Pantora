using System;
using System.Web.UI;

namespace Pantora.Admin
{
    public partial class CustomerDetail : Page
    {
        public string PatronId { get; set; } = "CUST-01";
        public string PatronName { get; set; } = "Aditya Sharma";
        public string PatronInitials { get; set; } = "AS";
        public string PatronEmail { get; set; } = "aditya.sharma@example.com";
        public string PatronPhone { get; set; } = "+91 98201 44820";
        public string PatronTier { get; set; } = "VIP CONNOISSEUR";
        public string MemberSince { get; set; } = "Aug 2025";
        public string LifetimeValue { get; set; } = "11,995";
        public string OrderCount { get; set; } = "3";
        public string PreferredFit { get; set; } = "Korean Style & Linen";
        public string StandardWaist { get; set; } = "32";
        public string InseamPreference { get; set; } = "30.5 inches";
        public string TailoringHistory { get; set; } = "Complimentary hem adjusted by 1.2 inches on Order #PN-8810. Prefers double forward pleats and clean break over loafers.";
        public string DeliveryAddress { get; set; } = "Flat 402, Signature Towers, Bandra Kurla Complex, Mumbai, Maharashtra 400051";

        public string Order1Id { get; set; } = "ORD-9241";
        public string Order1Date { get; set; } = "21 Oct 2026";
        public string Order1Item { get; set; } = "The Seoul Pleated Fluid Trouser";
        public string Order1Total { get; set; } = "2,499";

        public string Order2Id { get; set; } = "PN-8810";
        public string Order2Date { get; set; } = "19 Oct 2026";
        public string Order2Item { get; set; } = "The Gangnam Fluid Pleated Trouser";
        public string Order2Total { get; set; } = "2,699";

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
                PatronId = id.ToUpper();
                LoadPatronData(PatronId);
            }
        }

        private void LoadPatronData(string id)
        {
            switch (id)
            {
                case "CUST-02":
                case "VIKRAM":
                    PatronId = "CUST-02";
                    PatronName = "Vikram Malhotra";
                    PatronInitials = "VM";
                    PatronEmail = "vikram.m@domain.com";
                    PatronPhone = "+91 98112 30948";
                    PatronTier = "REPEAT PATRON";
                    MemberSince = "Nov 2025";
                    LifetimeValue = "5,798";
                    OrderCount = "2";
                    PreferredFit = "Regular Fit";
                    StandardWaist = "32";
                    InseamPreference = "32.0 inches (Stock)";
                    TailoringHistory = "Standard stock hem. Prefers Como Linen in Sand Khaki.";
                    DeliveryAddress = "Villa 12, Palm Meadows, Whitefield, Bengaluru, KA 560066";
                    Order1Id = "ORD-9240";
                    Order1Date = "21 Oct 2026";
                    Order1Item = "The Como Linen Relaxed Trouser";
                    Order1Total = "2,899";
                    Order2Id = "ORD-8910";
                    Order2Date = "05 Oct 2026";
                    Order2Item = "The Atlas Twill Straight Chino";
                    Order2Total = "2,899";
                    break;

                case "CUST-03":
                case "SAMEER":
                    PatronId = "CUST-03";
                    PatronName = "Sameer Kapoor";
                    PatronInitials = "SK";
                    PatronEmail = "sameer.k@outlook.com";
                    PatronPhone = "+91 97170 82194";
                    PatronTier = "VIP CONNOISSEUR";
                    MemberSince = "Jun 2025";
                    LifetimeValue = "14,296";
                    OrderCount = "4";
                    PreferredFit = "Baggy Fit & Worsted Wool";
                    StandardWaist = "30";
                    InseamPreference = "31.0 inches";
                    TailoringHistory = "Custom hem fold pinned on Osaka heavy twill.";
                    DeliveryAddress = "C-14, Vasant Vihar, New Delhi, DL 110057";
                    Order1Id = "ORD-9238";
                    Order1Date = "20 Oct 2026";
                    Order1Item = "The Kensington Worsted Wool Trouser";
                    Order1Total = "3,299";
                    Order2Id = "ORD-8812";
                    Order2Date = "22 Sep 2026";
                    Order2Item = "The Osaka Heavy Twill Wide Trouser";
                    Order2Total = "2,999";
                    break;

                case "CUST-04":
                case "ROHAN":
                    PatronId = "CUST-04";
                    PatronName = "Rohan Desai";
                    PatronInitials = "RD";
                    PatronEmail = "rohan.desai@gmail.com";
                    PatronPhone = "+91 99204 88120";
                    PatronTier = "REPEAT PATRON";
                    MemberSince = "Jan 2026";
                    LifetimeValue = "4,998";
                    OrderCount = "2";
                    PreferredFit = "Korean Fluid";
                    StandardWaist = "34";
                    InseamPreference = "31.5 inches";
                    TailoringHistory = "Doorstep Pinning: Size exchange requested on ORD-9235.";
                    DeliveryAddress = "14 Marine Drive, Nariman Point, Mumbai, MH 400021";
                    Order1Id = "ORD-9235";
                    Order1Date = "19 Oct 2026";
                    Order1Item = "The Osaka Heavy Twill Wide Trouser";
                    Order1Total = "2,999";
                    Order2Id = "ORD-8714";
                    Order2Date = "14 Sep 2026";
                    Order2Item = "The Gangnam Fluid Pleated Trouser";
                    Order2Total = "2,699";
                    break;

                default:
                    // Keep default Aditya Sharma
                    break;
            }
        }

        protected void btnSaveNotes_Click(object sender, EventArgs e)
        {
            pnlNotice.Visible = true;
            pnlNotice.Attributes["style"] = "background:#ECFDF5; border:1px solid #A7F3D0; color:#065F46; padding:14px 18px; border-radius:6px; margin-bottom:24px; display:flex; align-items:center; gap:10px;";
            litNoticeMessage.Text = "<strong>Success!</strong> Concierge notes for patron <strong>" + Server.HtmlEncode(PatronName) + "</strong> have been archived to the client profile.";
        }
    }
}
