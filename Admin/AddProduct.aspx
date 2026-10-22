<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Pantora.Admin.AddProduct" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%= PageTitle %> &bull; Pantora Atelier Admin</title>

    <!-- Typography -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" />

    <!-- Admin Stylesheet -->
    <link href="/Content/Admin.css" rel="stylesheet" type="text/css" />
    <link href="../Content/Admin.css" rel="stylesheet" type="text/css" />
    <link href="../favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body class="admin-body">
    <form id="formAddProduct" runat="server">

        <div class="adm-dashboard-container">

            <!-- Left Sidebar -->
            <aside class="adm-sidebar">
                <div>
                    <div class="adm-sidebar-brand">
                        <div>
                            <div class="adm-brand-text">PANTORA<span style="color:#C08054; margin-left:3px;">&bull;</span></div>
                            <div class="adm-brand-tag">ATELIER ADMIN</div>
                        </div>
                    </div>

                    <div class="adm-sidebar-section-title">OPERATIONS</div>

                    <nav class="adm-nav-list">
                        <a href="Dashboard.aspx" class="adm-nav-link">
                            <svg class="adm-nav-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <rect x="3" y="3" width="7" height="7"></rect>
                                <rect x="14" y="3" width="7" height="7"></rect>
                                <rect x="14" y="14" width="7" height="7"></rect>
                                <rect x="3" y="14" width="7" height="7"></rect>
                            </svg>
                            <span>Dashboard</span>
                        </a>

                        <a href="Products.aspx" class="adm-nav-link active">
                            <svg class="adm-nav-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.38 3.46 16 2a4 4 0 0 1-8 0L3.62 3.46a2 2 0 0 0-1.34 2.23l.58 3.47a1 1 0 0 0 .99.84H6v10c0 1.1.9 2 2 2h8a2 2 0 0 0 2-2V10h2.15a1 1 0 0 0 .99-.84l.58-3.47a2 2 0 0 0-1.34-2.23z"></path>
                            </svg>
                            <span>Products</span>
                        </a>

                        <a href="Orders.aspx" class="adm-nav-link">
                            <svg class="adm-nav-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                                <polyline points="14 2 14 8 20 8"></polyline>
                                <line x1="16" y1="13" x2="8" y2="13"></line>
                                <line x1="16" y1="17" x2="8" y2="17"></line>
                                <polyline points="10 9 9 9 8 9"></polyline>
                            </svg>
                            <span>Orders</span>
                        </a>

                        <a href="Customers.aspx" class="adm-nav-link">
                            <svg class="adm-nav-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path>
                                <circle cx="9" cy="7" r="4"></circle>
                                <path d="M23 21v-2a4 4 0 0 0-3-3.87"></path>
                                <path d="M16 3.13a4 4 0 0 1 0 7.75"></path>
                            </svg>
                            <span>Customers</span>
                        </a>

                        <div class="adm-sidebar-section-title" style="padding-top:16px;">ADMINISTRATION</div>

                        <a href="Account.aspx" class="adm-nav-link">
                            <svg class="adm-nav-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                <circle cx="12" cy="7" r="4"></circle>
                            </svg>
                            <span>Admin Account</span>
                        </a>
                    </nav>
                </div>

                <div class="adm-sidebar-bottom">
                    <a href="Account.aspx" style="text-decoration:none;" class="adm-staff-card" title="Open Admin Account">
                        <div style="display:flex; align-items:center; gap:10px;">
                            <div class="adm-staff-avatar">AS</div>
                            <div>
                                <div class="adm-staff-name">Aditya Sharma</div>
                                <div class="adm-staff-role">Operations Lead</div>
                            </div>
                        </div>
                        <span class="adm-logout-btn" title="View Profile">
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M9 18l6-6-6-6"></path>
                            </svg>
                        </span>
                    </a>
                </div>
            </aside>

            <!-- Main Content Area -->
            <div class="adm-main-content">

                <!-- Header Bar -->
                <header class="adm-topbar">
                    <div class="adm-topbar-breadcrumb">ADMIN DASHBOARD / PRODUCTS / <%= BreadcrumbText %></div>

                    <div class="adm-topbar-actions">
                        <span class="adm-live-badge">
                            <span class="adm-live-dot"></span>
                            <span>PRODUCT MANAGEMENT</span>
                        </span>

                        <!-- Admin Account Navigation Button -->
                        <a href="Account.aspx" class="adm-icon-btn" title="Admin Account &amp; Settings">
                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                <circle cx="12" cy="7" r="4"></circle>
                            </svg>
                        </a>

                        <!-- Public Storefront Navigation Button -->
                        <a href="../Default.aspx" target="_blank" class="adm-icon-btn" title="View Storefront">
                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <circle cx="12" cy="12" r="10"></circle>
                                <line x1="2" y1="12" x2="22" y2="12"></line>
                                <path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path>
                            </svg>
                        </a>
                    </div>
                </header>

                <!-- Sub-Header Title -->
                <div class="adm-sub-header">
                    <div>
                        <span class="adm-sub-tag">&bull; ATELIER CATALOG &bull; INVENTORY MASTER</span>
                        <h1 class="adm-page-title"><%= PageTitle %></h1>
                    </div>

                    <div style="display:flex; gap:10px;">
                        <a href="Products.aspx" class="btn-table-filter" style="text-decoration:none; display:inline-flex; align-items:center; gap:6px;">
                            <span>&larr; Back to Products Manifest</span>
                        </a>
                    </div>
                </div>

                <!-- Page Body -->
                <main class="adm-dashboard-body">

                    <!-- Feedback Alert Banner -->
                    <asp:Panel ID="pnlNotice" runat="server" Visible="false" style="padding:14px 18px; border-radius:6px; margin-bottom:24px; display:flex; align-items:center; gap:10px;">
                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                            <polyline points="20 6 9 17 4 12"></polyline>
                        </svg>
                        <div>
                            <asp:Literal ID="litNoticeMessage" runat="server" />
                        </div>
                    </asp:Panel>

                    <!-- Two Column Form Layout -->
                    <div class="adm-two-col-layout">

                        <!-- LEFT COLUMN: Main Product Details -->
                        <div>

                            <!-- Card 1: Essential Information -->
                            <div class="form-card">
                                <div class="form-card-title">General Trouser Dossier</div>
                                <div class="form-card-desc">Define the luxury menswear silhouette, design title, and atelier SKU</div>

                                <div class="adm-form-group">
                                    <label class="adm-form-label">Trouser Name <span style="color:#DC2626;">*</span></label>
                                    <asp:TextBox ID="txtProdName" runat="server" CssClass="adm-form-control" placeholder="e.g. The Seoul Pleated Fluid Trouser" style="padding-left:14px;" />
                                    <asp:RequiredFieldValidator ID="rfvProdName" runat="server" 
                                        ControlToValidate="txtProdName" 
                                        ErrorMessage="Product name is required." 
                                        CssClass="adm-error-msg" 
                                        Display="Dynamic" 
                                        ValidationGroup="ProductFormGroup" />
                                </div>

                                <div class="form-grid-2">
                                    <div class="adm-form-group">
                                        <label class="adm-form-label">Atelier SKU Code <span style="color:#DC2626;">*</span></label>
                                        <asp:TextBox ID="txtProdSku" runat="server" CssClass="adm-form-control" placeholder="e.g. PN-KOR-01" style="padding-left:14px; text-transform:uppercase;" />
                                        <asp:RequiredFieldValidator ID="rfvProdSku" runat="server" 
                                            ControlToValidate="txtProdSku" 
                                            ErrorMessage="SKU code is required." 
                                            CssClass="adm-error-msg" 
                                            Display="Dynamic" 
                                            ValidationGroup="ProductFormGroup" />
                                    </div>

                                    <div class="adm-form-group">
                                        <label class="adm-form-label">Colorway / Shade</label>
                                        <asp:TextBox ID="txtColorway" runat="server" CssClass="adm-form-control" placeholder="e.g. Onyx Black / Sand Khaki" style="padding-left:14px;" />
                                    </div>
                                </div>

                                <div class="adm-form-group">
                                    <label class="adm-form-label">Fabric Composition &amp; Mill Origin</label>
                                    <asp:TextBox ID="txtFabric" runat="server" CssClass="adm-form-control" placeholder="e.g. 100% Belgian Flax Linen or Super 120s Worsted Wool" style="padding-left:14px;" />
                                </div>

                                <div class="adm-form-group">
                                    <label class="adm-form-label">Sartorial Description &amp; Tailoring Notes</label>
                                    <asp:TextBox ID="txtProdDesc" runat="server" CssClass="adm-form-control" TextMode="MultiLine" Rows="4" 
                                        placeholder="Detailed description of the cut, center crease, waistband extension, drape, and pocket construction..." style="padding:12px 14px; height:auto; line-height:1.5;" />
                                </div>
                            </div>

                            <!-- Card 2: Pricing & Inventory Control -->
                            <div class="form-card">
                                <div class="form-card-title">Commercial Pricing &amp; Inventory</div>
                                <div class="form-card-desc">Set retail price points, MRP strike-through, and real-time stock levels</div>

                                <div class="form-grid-3">
                                    <div class="adm-form-group">
                                        <label class="adm-form-label">Selling Price (&#8377;) <span style="color:#DC2626;">*</span></label>
                                        <asp:TextBox ID="txtPrice" runat="server" CssClass="adm-form-control" placeholder="e.g. 2499" style="padding-left:14px;" />
                                        <asp:RequiredFieldValidator ID="rfvPrice" runat="server" 
                                            ControlToValidate="txtPrice" 
                                            ErrorMessage="Retail price is required." 
                                            CssClass="adm-error-msg" 
                                            Display="Dynamic" 
                                            ValidationGroup="ProductFormGroup" />
                                        <asp:RegularExpressionValidator ID="revPrice" runat="server" 
                                            ControlToValidate="txtPrice" 
                                            ErrorMessage="Enter valid price (e.g. 2499)." 
                                            ValidationExpression="^\d+(\.\d{1,2})?$" 
                                            CssClass="adm-error-msg" 
                                            Display="Dynamic" 
                                            ValidationGroup="ProductFormGroup" />
                                    </div>

                                    <div class="adm-form-group">
                                        <label class="adm-form-label">Original MRP (&#8377;)</label>
                                        <asp:TextBox ID="txtMrp" runat="server" CssClass="adm-form-control" placeholder="e.g. 3499" style="padding-left:14px;" />
                                    </div>

                                    <div class="adm-form-group">
                                        <label class="adm-form-label">Current Stock (Units) <span style="color:#DC2626;">*</span></label>
                                        <asp:TextBox ID="txtStock" runat="server" CssClass="adm-form-control" placeholder="e.g. 45" style="padding-left:14px;" />
                                        <asp:RequiredFieldValidator ID="rfvStock" runat="server" 
                                            ControlToValidate="txtStock" 
                                            ErrorMessage="Stock quantity is required." 
                                            CssClass="adm-error-msg" 
                                            Display="Dynamic" 
                                            ValidationGroup="ProductFormGroup" />
                                        <asp:RegularExpressionValidator ID="revStock" runat="server" 
                                            ControlToValidate="txtStock" 
                                            ErrorMessage="Stock must be a whole number." 
                                            ValidationExpression="^\d+$" 
                                            CssClass="adm-error-msg" 
                                            Display="Dynamic" 
                                            ValidationGroup="ProductFormGroup" />
                                    </div>
                                </div>

                                <div class="adm-form-group" style="margin-top:12px;">
                                    <label class="adm-form-label">Waist Sizes Available in Stock</label>
                                    <div class="size-checkboxes">
                                        <label class="size-pill-label"><asp:CheckBox ID="chkSize28" runat="server" Checked="true" /> Size 28</label>
                                        <label class="size-pill-label"><asp:CheckBox ID="chkSize30" runat="server" Checked="true" /> Size 30</label>
                                        <label class="size-pill-label"><asp:CheckBox ID="chkSize32" runat="server" Checked="true" /> Size 32</label>
                                        <label class="size-pill-label"><asp:CheckBox ID="chkSize34" runat="server" Checked="true" /> Size 34</label>
                                        <label class="size-pill-label"><asp:CheckBox ID="chkSize36" runat="server" Checked="true" /> Size 36</label>
                                        <label class="size-pill-label"><asp:CheckBox ID="chkSize38" runat="server" /> Size 38</label>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <!-- RIGHT COLUMN: Organization, Image & Actions -->
                        <div>

                            <!-- Card 3: Cut & Catalog Categorization -->
                            <div class="form-card">
                                <div class="form-card-title">Category &amp; Badging</div>
                                <div class="form-card-desc">Assign cut category for navigation filters</div>

                                <div class="adm-form-group">
                                    <label class="adm-form-label">Silhouette Cut Category <span style="color:#DC2626;">*</span></label>
                                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="adm-form-control" style="padding-left:14px;">
                                        <asp:ListItem Value="Korean Style" Text="Korean Style (Fluid &amp; Pleated)" Selected="True" />
                                        <asp:ListItem Value="Regular Fit" Text="Regular Fit (Classic Straight)" />
                                        <asp:ListItem Value="Slim Fit" Text="Slim Fit (Streamlined Taper)" />
                                        <asp:ListItem Value="Baggy Fit" Text="Baggy Fit (Architectural Volume)" />
                                    </asp:DropDownList>
                                </div>

                                <div class="adm-form-group">
                                    <label class="adm-form-label">Storefront Badge</label>
                                    <asp:DropDownList ID="ddlBadge" runat="server" CssClass="adm-form-control" style="padding-left:14px;">
                                        <asp:ListItem Value="Bestseller" Text="Bestseller" Selected="True" />
                                        <asp:ListItem Value="New Arrival" Text="New Arrival" />
                                        <asp:ListItem Value="Atelier Exclusive" Text="Atelier Exclusive" />
                                        <asp:ListItem Value="Seasonal Pick" Text="Seasonal Pick" />
                                        <asp:ListItem Value="None" Text="None (Standard Display)" />
                                    </asp:DropDownList>
                                </div>

                                <div class="adm-form-group" style="margin-top:14px;">
                                    <label style="display:flex; align-items:center; gap:8px; font-size:13px; font-weight:600; cursor:pointer;">
                                        <asp:CheckBox ID="chkIsActive" runat="server" Checked="true" />
                                        <span>Active &amp; Visible on Public Storefront</span>
                                    </label>
                                </div>
                            </div>

                            <!-- Card 4: Catalog Imagery -->
                            <div class="form-card">
                                <div class="form-card-title">Lookbook Imagery</div>
                                <div class="form-card-desc">Select high-definition studio lookbook visual</div>

                                <div class="img-preview-box">
                                    <img id="imgPreview" src="../Images/korean-seoul-pleat.png" alt="Trouser Preview" />
                                </div>

                                <div class="adm-form-group">
                                    <label class="adm-form-label">Catalog Image Asset</label>
                                    <asp:DropDownList ID="ddlProdImage" runat="server" CssClass="adm-form-control" onchange="updatePreview(this.value);" style="padding-left:14px;">
                                        <asp:ListItem Value="Images/korean-seoul-pleat.png" Text="korean-seoul-pleat.png (Onyx Black Pleat)" Selected="True" />
                                        <asp:ListItem Value="Images/korean-gangnam-fluid.png" Text="korean-gangnam-fluid.png (Fluid Brown)" />
                                        <asp:ListItem Value="Images/korean-hongdae-wide.png" Text="korean-hongdae-wide.png (Dove Grey)" />
                                        <asp:ListItem Value="Images/korean-itaewon-linen.png" Text="korean-itaewon-linen.png (Off-White Linen)" />
                                        <asp:ListItem Value="Images/korean-busan-slacks.png" Text="korean-busan-slacks.png (Charcoal Slacks)" />
                                        <asp:ListItem Value="Images/korean-incheon-relaxed.png" Text="korean-incheon-relaxed.png (Navy Relaxed)" />
                                        <asp:ListItem Value="Images/reg-como-linen.png" Text="reg-como-linen.png (Como Linen Khaki)" />
                                        <asp:ListItem Value="Images/reg-atlas-chino.png" Text="reg-atlas-chino.png (Atlas Navy Twill)" />
                                        <asp:ListItem Value="Images/reg-wool-trouser.png" Text="reg-wool-trouser.png (Charcoal Tropical Wool)" />
                                        <asp:ListItem Value="Images/reg-riviera-linen.png" Text="reg-riviera-linen.png (Riviera Chalk Linen)" />
                                        <asp:ListItem Value="Images/reg-viceroy-gabardine.png" Text="reg-viceroy-gabardine.png (Olive Gabardine)" />
                                        <asp:ListItem Value="Images/reg-deccan-cotton.png" Text="reg-deccan-cotton.png (Desert Tan Heritage)" />
                                        <asp:ListItem Value="Images/slim-kensington-wool.png" Text="slim-kensington-wool.png (Kensington Worsted Wool)" />
                                        <asp:ListItem Value="Images/slim-mayfair-stretch.png" Text="slim-mayfair-stretch.png (Mayfair Khaki Flex)" />
                                        <asp:ListItem Value="Images/slim-belgravia-chino.png" Text="slim-belgravia-chino.png (Belgravia Slate Grey)" />
                                        <asp:ListItem Value="Images/slim-riviera-tapered.png" Text="slim-riviera-tapered.png (Riviera Ecru Linen)" />
                                        <asp:ListItem Value="Images/slim-soho-stealth.png" Text="slim-soho-stealth.png (Soho Stealth Olive)" />
                                        <asp:ListItem Value="Images/slim-atelier-chino.png" Text="slim-atelier-chino.png (Navy Brushed Satin)" />
                                        <asp:ListItem Value="Images/baggy-osaka-twill.png" Text="baggy-osaka-twill.png (Osaka Heavy Ecru Drill)" />
                                        <asp:ListItem Value="Images/baggy-kyoto-cargo.png" Text="baggy-kyoto-cargo.png (Kyoto Sage Field Cargo)" />
                                        <asp:ListItem Value="Images/baggy-shibuya-skate.png" Text="baggy-shibuya-skate.png (Shibuya Mineral Canvas)" />
                                        <asp:ListItem Value="Images/baggy-yokohama-work.png" Text="baggy-yokohama-work.png (Yokohama Faded Black)" />
                                        <asp:ListItem Value="Images/baggy-sendai-cord.png" Text="baggy-sendai-cord.png (Sendai Vintage Corduroy)" />
                                        <asp:ListItem Value="Images/baggy-harajuku-balloon.png" Text="baggy-harajuku-balloon.png (Harajuku Sculptural Balloon)" />
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <!-- Card 5: Form Action Buttons -->
                            <div class="form-card" style="border-top:3px solid #C08054;">
                                <asp:Button ID="btnSave" runat="server" Text="PUBLISH TROUSER TO CATALOG" 
                                    CssClass="btn-adm-primary" style="width:100%; padding:14px; text-align:center; margin-bottom:12px;" 
                                    ValidationGroup="ProductFormGroup" OnClick="btnSave_Click" />

                                <a href="Products.aspx" class="btn-table-filter" style="width:100%; display:block; text-align:center; text-decoration:none; box-sizing:border-box;">
                                    Cancel &amp; Discard
                                </a>
                            </div>

                        </div>

                    </div>

                </main>

            </div>

        </div>

        <script>
            function updatePreview(val) {
                var img = document.getElementById('imgPreview');
                if (img) {
                    img.src = '../' + val;
                }
            }
            // Initialize image on load
            window.addEventListener('DOMContentLoaded', function() {
                var ddl = document.getElementById('<%= ddlProdImage.ClientID %>');
                if (ddl) {
                    updatePreview(ddl.value);
                }
            });
        </script>

    </form>
</body>
</html>