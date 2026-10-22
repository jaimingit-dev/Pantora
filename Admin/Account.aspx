<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Pantora.Admin.Account" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Admin Account &amp; Settings &bull; Pantora Atelier Admin</title>

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
    <form id="formAdminAccount" runat="server">

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

                        <a href="Account.aspx" class="adm-nav-link active">
                            <svg class="adm-nav-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                <circle cx="12" cy="7" r="4"></circle>
                            </svg>
                            <span>Admin Account</span>
                        </a>
                    </nav>
                </div>

                <div class="adm-sidebar-bottom">
                    <a href="Account.aspx" style="text-decoration:none;" class="adm-staff-card">
                        <div style="display:flex; align-items:center; gap:10px;">
                            <div class="adm-staff-avatar">AS</div>
                            <div>
                                <div class="adm-staff-name">Aditya Sharma</div>
                                <div class="adm-staff-role">Operations Lead</div>
                            </div>
                        </div>
                        <asp:LinkButton ID="btnLogoutAdmin" runat="server" CssClass="adm-logout-btn" OnClick="btnLogoutAdmin_Click" ToolTip="Sign Out" OnClientClick="event.stopPropagation();">
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                                <polyline points="16 17 21 12 16 7"></polyline>
                                <line x1="21" y1="12" x2="9" y2="12"></line>
                            </svg>
                        </asp:LinkButton>
                    </a>
                </div>
            </aside>

            <!-- Main Content -->
            <div class="adm-main-content">

                <!-- Header Bar -->
                <header class="adm-topbar">
                    <div class="adm-topbar-breadcrumb">ADMIN DASHBOARD / ADMIN ACCOUNT &amp; SETTINGS</div>

                    <div class="adm-topbar-actions">
                        <span class="adm-live-badge">
                            <span class="adm-live-dot"></span>
                            <span>VERIFIED STAFF ACCESS</span>
                        </span>

                        <a href="../Default.aspx" target="_blank" class="adm-icon-btn" title="View Public Storefront">
                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <circle cx="12" cy="12" r="10"></circle>
                                <line x1="2" y1="12" x2="22" y2="12"></line>
                                <path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"></path>
                            </svg>
                        </a>
                    </div>
                </header>

                <!-- Sub-Header -->
                <div class="adm-sub-header">
                    <div>
                        <span class="adm-sub-tag">&bull; ADMIN SETTINGS &bull; SECURITY &amp; PREFERENCES</span>
                        <h1 class="adm-page-title">Admin Account</h1>
                    </div>

                    <div style="display:flex; gap:10px;">
                        <a href="Dashboard.aspx" class="btn-table-filter" style="text-decoration:none; display:inline-flex; align-items:center; gap:6px;">
                            <span>&larr; Back to Dashboard</span>
                        </a>
                    </div>
                </div>

                <!-- Page Body -->
                <main class="adm-dashboard-body">

                    <!-- Server Success / Error Feedback -->
                    <asp:Panel ID="pnlNotice" runat="server" Visible="false" CssClass="login-alert-box" style="background:#ECFDF5; border-color:#A7F3D0; color:#065F46;">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                            <polyline points="20 6 9 17 4 12"></polyline>
                        </svg>
                        <asp:Literal ID="litNoticeMessage" runat="server" />
                    </asp:Panel>

                    <div class="adm-two-col-equal">

                        <!-- Card 1: Staff Profile Details Form -->
                        <div class="adm-recent-orders-card" style="padding:28px;">
                            <div style="margin-bottom:20px; border-bottom:1px solid #F0F0F0; padding-bottom:14px; display:flex; justify-content:space-between; align-items:center;">
                                <div>
                                    <h2 style="font-size:16px; font-weight:800; color:#111;">Administrator Profile</h2>
                                    <p style="font-size:12px; color:#777; margin-top:2px;">Personal details of the current logged-in atelier manager</p>
                                </div>
                                <span class="stat-cat-tag" style="background:#FAF5F0; color:#C08054;">SUPER ADMIN</span>
                            </div>

                            <div class="adm-form-group">
                                <label class="adm-form-label">Full Name</label>
                                <asp:TextBox ID="txtStaffName" runat="server" CssClass="adm-form-control" Text="Aditya Sharma" style="padding-left:14px;" />
                                <asp:RequiredFieldValidator ID="rfvStaffName" runat="server" 
                                    ControlToValidate="txtStaffName" 
                                    ErrorMessage="Staff name is required." 
                                    CssClass="adm-error-msg" 
                                    Display="Dynamic" 
                                    ValidationGroup="AdminProfileGroup" />
                            </div>

                            <div class="adm-form-group">
                                <label class="adm-form-label">Staff Work Email</label>
                                <asp:TextBox ID="txtStaffEmail" runat="server" CssClass="adm-form-control" Text="curator@pantora.in" TextMode="Email" style="padding-left:14px;" />
                                <asp:RequiredFieldValidator ID="rfvStaffEmail" runat="server" 
                                    ControlToValidate="txtStaffEmail" 
                                    ErrorMessage="Work email is required." 
                                    CssClass="adm-error-msg" 
                                    Display="Dynamic" 
                                    ValidationGroup="AdminProfileGroup" />
                            </div>

                            <div class="adm-form-group">
                                <label class="adm-form-label">Contact Phone</label>
                                <asp:TextBox ID="txtStaffPhone" runat="server" CssClass="adm-form-control" Text="+91 98201 44820" style="padding-left:14px;" />
                            </div>

                            <div class="adm-form-group">
                                <label class="adm-form-label">Assigned Workstation &bull; Role</label>
                                <input type="text" class="adm-form-control" value="Atelier Mumbai Hub // Full Operations Access" readonly="readonly" style="background:#F9FAFB; padding-left:14px; color:#555;" />
                            </div>

                            <div style="margin-top:24px;">
                                <asp:Button ID="btnSaveProfile" runat="server" Text="SAVE PROFILE CHANGES" CssClass="btn-adm-primary" ValidationGroup="AdminProfileGroup" OnClick="btnSaveProfile_Click" />
                            </div>
                        </div>

                        <!-- Card 2: Security & Password Update Form -->
                        <div class="adm-recent-orders-card" style="padding:28px;">
                            <div style="margin-bottom:20px; border-bottom:1px solid #F0F0F0; padding-bottom:14px;">
                                <h2 style="font-size:16px; font-weight:800; color:#111;">Update Security Password</h2>
                                <p style="font-size:12px; color:#777; margin-top:2px;">Change your terminal access password</p>
                            </div>

                            <div class="adm-form-group">
                                <label class="adm-form-label">Current Security Key</label>
                                <asp:TextBox ID="txtCurPass" runat="server" CssClass="adm-form-control" TextMode="Password" placeholder="Enter current password" style="padding-left:14px;" />
                                <asp:RequiredFieldValidator ID="rfvCurPass" runat="server" 
                                    ControlToValidate="txtCurPass" 
                                    ErrorMessage="Current password is required." 
                                    CssClass="adm-error-msg" 
                                    Display="Dynamic" 
                                    ValidationGroup="AdminPassGroup" />
                            </div>

                            <div class="adm-form-group">
                                <label class="adm-form-label">New Security Password</label>
                                <asp:TextBox ID="txtNewPass" runat="server" CssClass="adm-form-control" TextMode="Password" placeholder="Minimum 6 characters" style="padding-left:14px;" />
                                <asp:RequiredFieldValidator ID="rfvNewPass" runat="server" 
                                    ControlToValidate="txtNewPass" 
                                    ErrorMessage="New password is required." 
                                    CssClass="adm-error-msg" 
                                    Display="Dynamic" 
                                    ValidationGroup="AdminPassGroup" />
                                <asp:RegularExpressionValidator ID="revNewPass" runat="server" 
                                    ControlToValidate="txtNewPass" 
                                    ErrorMessage="Password must be at least 6 characters in length." 
                                    ValidationExpression=".{6,}" 
                                    CssClass="adm-error-msg" 
                                    Display="Dynamic" 
                                    ValidationGroup="AdminPassGroup" />
                            </div>

                            <div class="adm-form-group">
                                <label class="adm-form-label">Confirm New Password</label>
                                <asp:TextBox ID="txtConfirmPass" runat="server" CssClass="adm-form-control" TextMode="Password" placeholder="Re-enter new password" style="padding-left:14px;" />
                                <asp:RequiredFieldValidator ID="rfvConfirmPass" runat="server" 
                                    ControlToValidate="txtConfirmPass" 
                                    ErrorMessage="Please confirm the new password." 
                                    CssClass="adm-error-msg" 
                                    Display="Dynamic" 
                                    ValidationGroup="AdminPassGroup" />
                                <asp:CompareValidator ID="cmpPass" runat="server" 
                                    ControlToValidate="txtConfirmPass" 
                                    ControlToCompare="txtNewPass" 
                                    ErrorMessage="Passwords do not match." 
                                    CssClass="adm-error-msg" 
                                    Display="Dynamic" 
                                    ValidationGroup="AdminPassGroup" />
                            </div>

                            <div style="margin-top:24px;">
                                <asp:Button ID="btnUpdatePass" runat="server" Text="UPDATE SECURITY PASSWORD" CssClass="btn-adm-primary" ValidationGroup="AdminPassGroup" OnClick="btnUpdatePass_Click" />
                            </div>
                        </div>

                    </div>

                    <!-- Card 3: Atelier Operations Configuration -->
                    <div class="adm-recent-orders-card" style="padding:28px;">
                        <div style="margin-bottom:20px; border-bottom:1px solid #F0F0F0; padding-bottom:14px;">
                            <h2 style="font-size:16px; font-weight:800; color:#111;">Atelier Storefront Controls</h2>
                            <p style="font-size:12px; color:#777; margin-top:2px;">Master operational toggles and notification preferences</p>
                        </div>

                        <div class="form-grid-3">
                            <div class="adm-form-group">
                                <label class="adm-form-label">Storefront Currency</label>
                                <select class="adm-form-control" style="padding-left:14px;">
                                    <option value="INR" selected="selected">INR (&#8377;) - Indian Rupee</option>
                                    <option value="USD">USD ($) - US Dollar</option>
                                    <option value="EUR">EUR (&euro;) - Euro</option>
                                </select>
                            </div>

                            <div class="adm-form-group">
                                <label class="adm-form-label">Default Express Courier</label>
                                <select class="adm-form-control" style="padding-left:14px;">
                                    <option value="BlueDart" selected="selected">BlueDart Air Priority Express (API Connected)</option>
                                    <option value="Delhivery">Delhivery Surface</option>
                                    <option value="DHL">DHL Express International</option>
                                </select>
                            </div>

                            <div class="adm-form-group">
                                <label class="adm-form-label">Alert Notifications Inbox</label>
                                <asp:TextBox ID="txtAlertEmail" runat="server" CssClass="adm-form-control" Text="concierge@pantora.in" TextMode="Email" style="padding-left:14px;" />
                            </div>
                        </div>

                        <div style="margin-top:14px; display:flex; justify-content:space-between; align-items:center;">
                            <asp:Button ID="btnSaveSettings" runat="server" Text="Save System Settings" CssClass="btn-adm-primary" OnClick="btnSaveSettings_Click" />

                            <asp:LinkButton ID="btnLogoutBottom" runat="server" CssClass="btn-table-filter" style="color:#DC2626; text-decoration:none;" OnClick="btnLogoutAdmin_Click">
                                End Administrator Session (Logout)
                            </asp:LinkButton>
                        </div>
                    </div>

                </main>

            </div>

        </div>

    </form>
</body>
</html>
