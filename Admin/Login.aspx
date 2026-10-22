<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Pantora.Admin.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign In to Console &bull; Pantora Atelier Admin</title>

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
    <form id="formAdminLogin" runat="server">

        <div class="admin-login-screen">

            <!-- Top Brand Section (Reference Image 1) -->
            <div class="login-brand-top">
                <a href="../Default.aspx" class="login-brand-wordmark" title="Pantora Storefront">
                    <span>PANTORA</span><span class="login-brand-dot"></span>
                </a>
                <div class="login-brand-subtitle">
                    <span class="red-dot"></span>
                    <span>ATELIER OPERATIONS CONSOLE // RESTRICTED STAFF ACCESS</span>
                </div>
            </div>

            <!-- Login Card (Reference Image 1) -->
            <div class="login-card-container">

                <div class="login-card-header">
                    <div>
                        <h1 class="login-card-title">Sign In to Console</h1>
                        <p class="login-card-desc">Enter enterprise staff credentials</p>
                    </div>
                    <span class="ssl-badge">
                        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                            <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
                            <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
                        </svg>
                        <span>256-BIT SSL</span>
                    </span>
                </div>

                <!-- Server Error Alert -->
                <asp:Panel ID="pnlAdminAlert" runat="server" Visible="false" CssClass="login-alert-box">
                    <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round" style="flex-shrink:0;">
                        <circle cx="12" cy="12" r="10"></circle>
                        <line x1="12" y1="8" x2="12" y2="12"></line>
                        <line x1="12" y1="16" x2="12.01" y2="16"></line>
                    </svg>
                    <asp:Literal ID="litAdminAlert" runat="server" />
                </asp:Panel>

                <!-- Staff Email Address -->
                <div class="login-form-group">
                    <div class="login-label-row">
                        <label class="login-form-label" for="txtAdminEmail">STAFF EMAIL ADDRESS</label>
                    </div>
                    <div class="login-input-wrap">
                        <svg class="login-input-icon" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <rect x="2" y="4" width="20" height="16" rx="2"></rect>
                            <path d="M7 15h0"></path>
                            <path d="M2 9.5h20"></path>
                        </svg>
                        <asp:TextBox ID="txtAdminEmail" runat="server" CssClass="login-input" placeholder="curator@pantora.in" TextMode="Email" autocomplete="username" />
                    </div>
                    <asp:RequiredFieldValidator ID="rfvAdminEmail" runat="server" 
                        ControlToValidate="txtAdminEmail" 
                        ErrorMessage="Please enter your staff email address." 
                        CssClass="login-field-error" 
                        Display="Dynamic" 
                        ValidationGroup="AdminLoginGroup" />
                </div>

                <!-- Security Key / Password -->
                <div class="login-form-group">
                    <div class="login-label-row">
                        <label class="login-form-label" for="txtAdminPassword">SECURITY KEY / PASSWORD</label>
                        <span class="login-label-hint">TERMINAL ENCRYPTED</span>
                    </div>
                    <div class="login-input-wrap">
                        <svg class="login-input-icon" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <circle cx="7.5" cy="15.5" r="4.5"></circle>
                            <path d="m21 2-9.6 9.6"></path>
                            <path d="m15.5 7.5 3 3L22 7l-3-3"></path>
                        </svg>
                        <asp:TextBox ID="txtAdminPassword" runat="server" CssClass="login-input" placeholder="••••••••••••" TextMode="Password" autocomplete="current-password" />
                        <button type="button" class="login-eye-btn" onclick="togglePassVisibility()" title="Show/Hide password">
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path>
                                <circle cx="12" cy="12" r="3"></circle>
                            </svg>
                        </button>
                    </div>
                    <asp:RequiredFieldValidator ID="rfvAdminPassword" runat="server" 
                        ControlToValidate="txtAdminPassword" 
                        ErrorMessage="Please enter your security key." 
                        CssClass="login-field-error" 
                        Display="Dynamic" 
                        ValidationGroup="AdminLoginGroup" />
                </div>

                <!-- Remember & Reset Row -->
                <div class="login-action-row">
                    <label class="login-remember">
                        <input type="checkbox" id="chkAdminRemember" runat="server" checked="checked" />
                        <span>Remember terminal</span>
                    </label>
                    <asp:LinkButton ID="lnkResetCreds" runat="server" CssClass="login-reset-link" OnClick="lnkResetCreds_Click" CausesValidation="false">RESET CREDENTIALS</asp:LinkButton>
                </div>

                <!-- Submit Button -->
                <asp:LinkButton ID="btnAdminLogin" runat="server" CssClass="btn-login-console" ValidationGroup="AdminLoginGroup" OnClick="btnAdminLogin_Click">
                    <span>LOGIN TO ATELIER CONSOLE &rarr;</span>
                </asp:LinkButton>

                <!-- Quick Demo Fill Helper -->
                <div class="quick-demo-chip">
                    Demo: <strong>admin@pantora.com</strong> &bull; <button type="button" class="quick-demo-btn" onclick="fillDemoCredentials()">Click to Fill</button>
                </div>

            </div>

            <!-- Bottom Status Row (Reference Image 1) -->
            <div class="login-status-footer">
                <div><span class="status-live-dot"></span>INVENTORY CORE ONLINE</div>
                <span style="color:#CCC;">&bull;</span>
                <div><span class="status-live-dot"></span>BESPOKE QUEUE SYNCED</div>
            </div>

        </div>

    </form>

    <script>
        function fillDemoCredentials() {
            var emailEl = document.getElementById('<%= txtAdminEmail.ClientID %>');
            var passEl = document.getElementById('<%= txtAdminPassword.ClientID %>');
            if (emailEl) emailEl.value = 'curator@pantora.in';
            if (passEl) passEl.value = 'Admin@123';
        }

        function togglePassVisibility() {
            var passEl = document.getElementById('<%= txtAdminPassword.ClientID %>');
            if (!passEl) return;
            passEl.type = (passEl.type === 'password') ? 'text' : 'password';
        }
    </script>
</body>
</html>
