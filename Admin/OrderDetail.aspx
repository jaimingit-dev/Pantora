<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderDetail.aspx.cs" Inherits="Pantora.Admin.OrderDetail" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Order Dossier #<%= OrderId %> &bull; Pantora Atelier Admin</title>

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
    <form id="formOrderDetail" runat="server">

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

                        <a href="Products.aspx" class="adm-nav-link">
                            <svg class="adm-nav-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20.38 3.46 16 2a4 4 0 0 1-8 0L3.62 3.46a2 2 0 0 0-1.34 2.23l.58 3.47a1 1 0 0 0 .99.84H6v10c0 1.1.9 2 2 2h8a2 2 0 0 0 2-2V10h2.15a1 1 0 0 0 .99-.84l.58-3.47a2 2 0 0 0-1.34-2.23z"></path>
                            </svg>
                            <span>Products</span>
                        </a>

                        <a href="Orders.aspx" class="adm-nav-link active">
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

            <!-- Main Content -->
            <div class="adm-main-content">

                <!-- Header Bar -->
                <header class="adm-topbar">
                    <div class="adm-topbar-breadcrumb">ADMIN DASHBOARD / ORDERS / #<%= OrderId %></div>

                    <div class="adm-topbar-actions">
                        <span class="adm-live-badge">
                            <span class="adm-live-dot"></span>
                            <span>ORDER FULFILLMENT</span>
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
                        <span class="adm-sub-tag">&bull; DISPATCH MANIFEST &bull; AIRWAY CARRIER FULFILLMENT</span>
                        <h1 class="adm-page-title">Order Dossier #<%= OrderId %></h1>
                    </div>

                    <div style="display:flex; gap:10px;">
                        <button type="button" class="btn-table-filter" onclick="window.print();" style="display:inline-flex; align-items:center; gap:6px;">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <polyline points="6 9 6 2 18 2 18 9"></polyline>
                                <path d="M6 18H4a2 2 0 0 1-2-2v-5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2"></path>
                                <rect x="6" y="14" width="12" height="8"></rect>
                            </svg>
                            <span>Print Manifest</span>
                        </button>

                        <a href="Orders.aspx" class="btn-table-filter" style="text-decoration:none; display:inline-flex; align-items:center; gap:6px;">
                            <span>&larr; Back to Orders</span>
                        </a>
                    </div>
                </div>

                <!-- Page Body -->
                <main class="adm-dashboard-body">

                    <!-- Feedback Alert Banner -->
                    <asp:Panel ID="pnlNotice" runat="server" Visible="false" style="padding:16px 20px; border-radius:6px; margin-bottom:24px; display:flex; align-items:center; gap:12px;">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                            <polyline points="20 6 9 17 4 12"></polyline>
                        </svg>
                        <div>
                            <asp:Literal ID="litNoticeMessage" runat="server" />
                        </div>
                    </asp:Panel>

                    <div class="adm-two-col-layout">

                        <!-- LEFT COLUMN: Order Details & Items -->
                        <div>

                            <!-- Summary Metrics Bar -->
                            <div class="order-dossier-card">
                                <div class="order-dossier-header">
                                    <div>
                                        <div style="font-size:12px; color:#777; font-weight:600;">DISPATCH ORDER</div>
                                        <div style="font-size:20px; font-weight:800; color:#111;">#<%= OrderId %></div>
                                    </div>
                                    <div>
                                        <span class="status-badge-lg <%= GetStatusCssClass() %>">
                                            <%= CurrentStatus %>
                                        </span>
                                    </div>
                                </div>

                                <div class="order-meta-grid">
                                    <div class="order-meta-item">
                                        <label>Order Date</label>
                                        <div><%= OrderDate %></div>
                                    </div>
                                    <div class="order-meta-item">
                                        <label>Payment Method</label>
                                        <div><%= PaymentMethod %></div>
                                    </div>
                                    <div class="order-meta-item">
                                        <label>Payment Status</label>
                                        <div style="color:#059669;"><%= PaymentStatus %></div>
                                    </div>
                                    <div class="order-meta-item">
                                        <label>Settled Amount</label>
                                        <div style="color:#C08054;">&#8377;<%= TotalAmount %></div>
                                    </div>
                                </div>

                                <!-- Customer Details -->
                                <div style="border-top:1px solid #F0F0F0; padding-top:16px; margin-top:16px;">
                                    <h3 style="font-size:14px; font-weight:700; color:#111; margin-bottom:12px;">Client &amp; Consignment Dossier</h3>
                                    <div style="display:grid; grid-template-columns: 1fr 1fr; gap:16px; font-size:13px;">
                                        <div>
                                            <div style="color:#777; font-size:11px; font-weight:600; text-transform:uppercase;">Recipient Name</div>
                                            <div style="font-weight:700; color:#111; margin-top:2px;"><%= CustomerName %></div>
                                            <div style="color:#555; margin-top:4px;"><%= CustomerEmail %> &bull; <%= CustomerPhone %></div>
                                        </div>
                                        <div>
                                            <div style="color:#777; font-size:11px; font-weight:600; text-transform:uppercase;">Shipping Address</div>
                                            <div style="color:#333; margin-top:2px; line-height:1.4;"><%= ShippingAddress %></div>
                                        </div>
                                    </div>

                                    <div style="margin-top:14px; background:#FAF5F0; border-left:3px solid #C08054; padding:10px 14px; border-radius:0 4px 4px 0;">
                                        <div style="font-size:11px; font-weight:700; color:#C08054; text-transform:uppercase;">Doorstep Pinning &amp; Inseam Specification</div>
                                        <div style="font-size:12px; color:#4B3621; margin-top:2px;"><%= TailoringNotes %></div>
                                    </div>
                                </div>
                            </div>

                            <!-- Ordered Trousers Items -->
                            <div class="order-dossier-card">
                                <h3 style="font-size:15px; font-weight:700; color:#111; margin-bottom:16px;">Consignment Line Items</h3>

                                <div class="item-row">
                                    <div class="item-info">
                                        <img src="../<%= ProductImg %>" class="item-thumb" alt="Product" />
                                        <div>
                                            <div style="font-weight:700; font-size:14px; color:#111;"><%= ProductName %></div>
                                            <div style="font-size:12px; color:#666; margin-top:2px;">Cut: <%= ProductCut %> &bull; Waist: <%= ProductSize %> &bull; Inseam: 31"</div>
                                            <div style="font-size:11px; color:#999; margin-top:2px;">SKU: <%= ProductSku %></div>
                                        </div>
                                    </div>
                                    <div style="text-align:right;">
                                        <div style="font-weight:700; font-size:14px; color:#111;">&#8377;<%= UnitPrice %></div>
                                        <div style="font-size:12px; color:#777;">Qty: 1</div>
                                    </div>
                                </div>

                                <!-- Financial Breakdown -->
                                <div style="margin-top:16px; border-top:1px solid #F0F0F0; padding-top:16px;">
                                    <div style="display:flex; justify-content:space-between; font-size:13px; color:#555; margin-bottom:8px;">
                                        <span>Merchandise Subtotal</span>
                                        <span>&#8377;<%= SubTotal %></span>
                                    </div>
                                    <div style="display:flex; justify-content:space-between; font-size:13px; color:#555; margin-bottom:8px;">
                                        <span>Applicable GST (12%)</span>
                                        <span>&#8377;<%= GstAmount %></span>
                                    </div>
                                    <div style="display:flex; justify-content:space-between; font-size:13px; color:#555; margin-bottom:8px;">
                                        <span>Air Priority Express Logistics</span>
                                        <span style="color:#059669; font-weight:600;">COMPLIMENTARY</span>
                                    </div>
                                    <div style="display:flex; justify-content:space-between; font-size:15px; font-weight:800; color:#111; border-top:1px dashed #DDD; padding-top:12px; margin-top:10px;">
                                        <span>Grand Settled Total</span>
                                        <span style="color:#C08054;">&#8377;<%= TotalAmount %></span>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <!-- RIGHT COLUMN: Update Order Status Form -->
                        <div>

                            <div class="order-dossier-card" style="border-top:3px solid #C08054;">
                                <h3 style="font-size:16px; font-weight:800; color:#111; margin-bottom:4px;">Update Fulfillment</h3>
                                <p style="font-size:12px; color:#777; margin-bottom:20px;">Synchronize delivery state with logistics carrier</p>

                                <div class="adm-form-group">
                                    <label class="adm-form-label">Fulfillment Status <span style="color:#DC2626;">*</span></label>
                                    <asp:DropDownList ID="ddlFulfillmentStatus" runat="server" CssClass="adm-form-control" style="padding-left:14px;">
                                        <asp:ListItem Value="READY TO DISPATCH" Text="Ready to Dispatch (Packed &amp; Manifested)" />
                                        <asp:ListItem Value="IN TRANSIT" Text="In Transit (BlueDart Express Air)" Selected="True" />
                                        <asp:ListItem Value="OUT FOR DELIVERY" Text="Out for Delivery (Doorstep Route)" />
                                        <asp:ListItem Value="DELIVERED" Text="Delivered (Customer Handover Verified)" />
                                        <asp:ListItem Value="RETURN PENDING" Text="Return Pending (Reverse Pickup Scheduled)" />
                                        <asp:ListItem Value="RETURN APPROVED" Text="Return Approved (QC Passed &amp; Settled)" />
                                        <asp:ListItem Value="CANCELLED" Text="Cancelled" />
                                    </asp:DropDownList>
                                </div>

                                <div class="adm-form-group">
                                    <label class="adm-form-label">Express Airway Bill / Tracking Number <span style="color:#DC2626;">*</span></label>
                                    <asp:TextBox ID="txtTrackingNumber" runat="server" CssClass="adm-form-control" placeholder="e.g. BD-AIR-9482104" style="padding-left:14px;" />
                                    <asp:RequiredFieldValidator ID="rfvTracking" runat="server" 
                                        ControlToValidate="txtTrackingNumber" 
                                        ErrorMessage="Airway Bill Tracking number is required." 
                                        CssClass="adm-error-msg" 
                                        Display="Dynamic" 
                                        ValidationGroup="OrderUpdateGroup" />
                                </div>

                                <div class="adm-form-group">
                                    <label class="adm-form-label">Assigned Carrier</label>
                                    <asp:DropDownList ID="ddlCarrier" runat="server" CssClass="adm-form-control" style="padding-left:14px;">
                                        <asp:ListItem Value="BlueDart Air Priority Express" Text="BlueDart Air Priority Express" Selected="True" />
                                        <asp:ListItem Value="Delhivery Surface Express" Text="Delhivery Surface Express" />
                                        <asp:ListItem Value="DHL Express International" Text="DHL Express International" />
                                    </asp:DropDownList>
                                </div>

                                <div class="adm-form-group">
                                    <label class="adm-form-label">Staff Internal Dispatch Memo</label>
                                    <asp:TextBox ID="txtStaffNotes" runat="server" CssClass="adm-form-control" TextMode="MultiLine" Rows="3" 
                                        placeholder="Internal memo e.g. QC passed, double-stitched hem inspected before packing..." style="padding:10px 14px; height:auto; line-height:1.4;" />
                                </div>

                                <div style="margin-top:20px;">
                                    <asp:Button ID="btnUpdateStatus" runat="server" Text="CONFIRM STATUS UPDATE" 
                                        CssClass="btn-adm-primary" style="width:100%; padding:14px; text-align:center; margin-bottom:12px;" 
                                        ValidationGroup="OrderUpdateGroup" OnClick="btnUpdateStatus_Click" />

                                    <a href="Orders.aspx" class="btn-table-filter" style="width:100%; display:block; text-align:center; text-decoration:none; box-sizing:border-box;">
                                        Back to Orders Manifest
                                    </a>
                                </div>
                            </div>

                        </div>

                    </div>

                </main>

            </div>

        </div>

    </form>
</body>
</html>