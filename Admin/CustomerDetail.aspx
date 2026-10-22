<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerDetail.aspx.cs" Inherits="Pantora.Admin.CustomerDetail" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Client Dossier &bull; <%= PatronName %> &bull; Pantora Atelier Admin</title>

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
    <form id="formCustomerDetail" runat="server">

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

                        <a href="Customers.aspx" class="adm-nav-link active">
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
                    <div class="adm-topbar-breadcrumb">ADMIN DASHBOARD / CUSTOMERS / <%= PatronName.ToUpper() %></div>

                    <div class="adm-topbar-actions">
                        <span class="adm-live-badge">
                            <span class="adm-live-dot"></span>
                            <span>CLIENT DOSSIER</span>
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
                        <span class="adm-sub-tag">&bull; CLIENT PROFILE &bull; BESPOKE SIZING ARCHIVE</span>
                        <h1 class="adm-page-title"><%= PatronName %></h1>
                    </div>

                    <div style="display:flex; gap:10px;">
                        <a href="Customers.aspx" class="btn-table-filter" style="text-decoration:none; display:inline-flex; align-items:center; gap:6px;">
                            <span>&larr; Back to Patron Registry</span>
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

                    <div class="adm-two-col-layout">

                        <!-- LEFT COLUMN: Profile & Orders -->
                        <div>

                            <!-- Client Identity Card -->
                            <div class="cust-card">
                                <div style="display:flex; align-items:center; gap:20px; border-bottom:1px solid #F0F0F0; padding-bottom:20px;">
                                    <div class="cust-avatar-large"><%= PatronInitials %></div>
                                    <div>
                                        <div style="display:flex; align-items:center; gap:10px;">
                                            <h2 style="font-size:20px; font-weight:800; color:#111; margin:0;"><%= PatronName %></h2>
                                            <span class="stat-cat-tag" style="background:#FAF5F0; color:#C08054;"><%= PatronTier %></span>
                                        </div>
                                        <div style="font-size:13px; color:#666; margin-top:4px;">
                                            <span><%= PatronEmail %></span> &bull; <span><%= PatronPhone %></span>
                                        </div>
                                        <div style="font-size:12px; color:#888; margin-top:2px;">Client ID: <%= PatronId %> &bull; Member since <%= MemberSince %></div>
                                    </div>
                                </div>

                                <div class="kpi-mini-grid">
                                    <div class="kpi-mini-item">
                                        <label>Lifetime Spend</label>
                                        <div style="color:#C08054;">&#8377;<%= LifetimeValue %></div>
                                    </div>
                                    <div class="kpi-mini-item">
                                        <label>Settled Orders</label>
                                        <div><%= OrderCount %> Orders</div>
                                    </div>
                                    <div class="kpi-mini-item">
                                        <label>Preferred Cut</label>
                                        <div><%= PreferredFit %></div>
                                    </div>
                                </div>

                                <!-- Doorstep Pinning & Sizing Dossier -->
                                <div style="border-top:1px solid #F0F0F0; padding-top:16px;">
                                    <h3 style="font-size:14px; font-weight:700; color:#111; margin-bottom:8px;">Bespoke Inseam &amp; Pinning Profile</h3>
                                    <p style="font-size:13px; color:#444; line-height:1.5; background:#FAF5F0; border-left:3px solid #C08054; padding:12px 14px; border-radius:0 4px 4px 0;">
                                        <strong>Standard Size:</strong> <%= StandardWaist %> Waist &bull; <strong>Hem Inseam:</strong> <%= InseamPreference %><br />
                                        <strong>Tailoring Record:</strong> <%= TailoringHistory %>
                                    </p>
                                </div>
                            </div>

                            <!-- Order History Table -->
                            <div class="cust-card">
                                <h3 style="font-size:15px; font-weight:700; color:#111; margin-bottom:16px;">Patron Order History</h3>

                                <table class="adm-table">
                                    <thead>
                                        <tr>
                                            <th>ORDER ID</th>
                                            <th>DATE</th>
                                            <th>TROUSER ITEM</th>
                                            <th>STATUS</th>
                                            <th style="text-align:right;">TOTAL</th>
                                            <th style="text-align:center;">DOSSIER</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td style="font-weight:700; color:#111;"><%= Order1Id %></td>
                                            <td><%= Order1Date %></td>
                                            <td><%= Order1Item %></td>
                                            <td><span class="adm-badge adm-badge-blue">DELIVERED</span></td>
                                            <td style="text-align:right; font-weight:700;">&#8377;<%= Order1Total %></td>
                                            <td style="text-align:center;">
                                                <a href="OrderDetail.aspx?id=<%= Order1Id %>" class="btn-view-order" style="text-decoration:none; display:inline-block;">VIEW</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="font-weight:700; color:#111;"><%= Order2Id %></td>
                                            <td><%= Order2Date %></td>
                                            <td><%= Order2Item %></td>
                                            <td><span class="adm-badge adm-badge-green">IN TRANSIT</span></td>
                                            <td style="text-align:right; font-weight:700;">&#8377;<%= Order2Total %></td>
                                            <td style="text-align:center;">
                                                <a href="OrderDetail.aspx?id=<%= Order2Id %>" class="btn-view-order" style="text-decoration:none; display:inline-block;">VIEW</a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>

                        <!-- RIGHT COLUMN: Delivery Address & Atelier Notes -->
                        <div>

                            <!-- Card: Residence & Delivery -->
                            <div class="cust-card">
                                <h3 style="font-size:15px; font-weight:700; color:#111; margin-bottom:12px;">Verified Residence</h3>
                                <div style="font-size:13px; color:#444; line-height:1.5;">
                                    <div style="font-weight:700; color:#111;"><%= PatronName %></div>
                                    <div><%= DeliveryAddress %></div>
                                    <div style="margin-top:6px; color:#777;">Contact: <%= PatronPhone %></div>
                                </div>
                            </div>

                            <!-- Card: Concierge Notes Form -->
                            <div class="cust-card" style="border-top:3px solid #C08054;">
                                <h3 style="font-size:15px; font-weight:700; color:#111; margin-bottom:4px;">Concierge Notes</h3>
                                <p style="font-size:12px; color:#777; margin-bottom:16px;">Internal staff observations and tailoring records</p>

                                <div class="adm-form-group">
                                    <asp:TextBox ID="txtConciergeNotes" runat="server" CssClass="adm-form-control" TextMode="MultiLine" Rows="5" 
                                        Text="High-value client who prefers Korean drape cuts and lightweight Belgian linen. Always dispatches via BlueDart Air Priority." 
                                        style="padding:12px 14px; height:auto; line-height:1.4;" />
                                </div>

                                <div style="margin-top:16px;">
                                    <asp:Button ID="btnSaveNotes" runat="server" Text="SAVE CONCIERGE NOTES" CssClass="btn-adm-primary" 
                                        style="width:100%; padding:12px; text-align:center;" OnClick="btnSaveNotes_Click" />
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