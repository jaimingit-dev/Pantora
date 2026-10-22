<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Pantora.Login" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Pantora Atelier | Account Access</title>
    
    <!-- Luxury Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" />
    
    <!-- Atelier Theme Stylesheet -->
    <link href="~/Content/Login.css" rel="stylesheet" type="text/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

    <script type="text/javascript">
        function validateAgreement(source, args) {
            var chk = document.getElementById('<%= chkAgreement.ClientID %>') || document.getElementById('chkAgreement');
            args.IsValid = chk ? chk.checked : false;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="smLogin" runat="server" />
        <div class="atelier-wrapper">
            
            <!-- Top Navigation Bar -->
            <header class="atelier-header">
                <a href="Default.aspx" class="back-home-link" style="position: absolute; left: 28px; font-size: 11.5px; color: #666; text-decoration: none; font-weight: 600; letter-spacing: 0.05em; display: flex; align-items: center; gap: 6px;">
                    &larr; Back to Store
                </a>
                <a href="Default.aspx" class="atelier-logo" title="Return to Pantora Home">
                    PANTORA<span class="pantora-dot"></span>
                </a>
            </header>

            <!-- Main Content Area -->
            <main class="atelier-main">
                
                <!-- Upper Brand Header -->
                <div class="atelier-badge">
                    <div class="atelier-badge-sub">
                        <span class="rule-line"></span>
                        <span class="rule-text">ATELIER ACCOUNT</span>
                        <span class="rule-line"></span>
                    </div>
                </div>

                <!-- Central Luxury Card -->
                <div class="atelier-card">
                    
                    <!-- Tabs -->
                    <div class="atelier-tabs">
                        <button type="button" id="tabSignIn" class="atelier-tab-btn" onclick="switchTab('signin')">
                            SIGN IN<span class="tab-dot" id="dotSignIn" style="display:none;"></span>
                        </button>
                        <button type="button" id="tabCreate" class="atelier-tab-btn active" onclick="switchTab('create')">
                            CREATE ACCOUNT<span class="tab-dot" id="dotCreate"></span>
                        </button>
                    </div>

                    <!-- Card Body -->
                    <div class="atelier-card-body">
                        
                        <!-- Server Feedback Alert -->
                        <asp:Panel ID="pnlAlert" runat="server" Visible="false" CssClass="atelier-alert">
                            <asp:Literal ID="litAlertMessage" runat="server" />
                        </asp:Panel>
                        <div id="clientAlert" class="atelier-alert"></div>

                        <!-- ------------------------------------------------------------------
                             PANEL 1: CREATE ACCOUNT (Active by default as per Figma)
                             ------------------------------------------------------------------ -->
                        <div id="panelCreateAccount" class="form-panel active">
                            <h1 class="atelier-card-title">Create Your Account</h1>

                            <div class="form-group">
                                <label class="form-label" for="txtRegisterName">FULL LEGAL NAME</label>
                                <div class="input-wrapper">
                                    <asp:TextBox ID="txtRegisterName" runat="server" CssClass="form-control" placeholder="Arjun Mehta" autocomplete="name" />
                                </div>
                                <asp:RequiredFieldValidator ID="rfvRegisterName" runat="server" 
                                    ControlToValidate="txtRegisterName" 
                                    ErrorMessage="Please enter your full legal name." 
                                    CssClass="field-error-text" 
                                    Display="Dynamic" 
                                    ValidationGroup="RegisterGroup" />
                            </div>

                            <div class="form-group">
                                <label class="form-label" for="txtRegisterEmail">EMAIL ADDRESS</label>
                                <div class="input-wrapper">
                                    <asp:TextBox ID="txtRegisterEmail" runat="server" CssClass="form-control" placeholder="arjun@atelier.in" TextMode="Email" autocomplete="email" />
                                </div>
                                <asp:RequiredFieldValidator ID="rfvRegisterEmail" runat="server" 
                                    ControlToValidate="txtRegisterEmail" 
                                    ErrorMessage="Please enter your email address." 
                                    CssClass="field-error-text" 
                                    Display="Dynamic" 
                                    ValidationGroup="RegisterGroup" />
                                <asp:RegularExpressionValidator ID="revRegisterEmail" runat="server" 
                                    ControlToValidate="txtRegisterEmail" 
                                    ErrorMessage="Please enter a valid email address." 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                    CssClass="field-error-text" 
                                    Display="Dynamic" 
                                    ValidationGroup="RegisterGroup" />
                            </div>

                            <div class="form-row-2col">
                                <div class="form-col">
                                    <label class="form-label" for="txtRegisterPassword">PASSWORD</label>
                                    <div class="input-wrapper">
                                        <asp:TextBox ID="txtRegisterPassword" runat="server" CssClass="form-control" placeholder="&bull;&bull;&bull;&bull;&bull;&bull;&bull;&bull;" TextMode="Password" autocomplete="new-password" />
                                    </div>
                                    <asp:RequiredFieldValidator ID="rfvRegisterPassword" runat="server" 
                                        ControlToValidate="txtRegisterPassword" 
                                        ErrorMessage="Password is required." 
                                        CssClass="field-error-text" 
                                        Display="Dynamic" 
                                        ValidationGroup="RegisterGroup" />
                                    <asp:RegularExpressionValidator ID="revRegisterPassword" runat="server" 
                                        ControlToValidate="txtRegisterPassword" 
                                        ErrorMessage="Password must be at least 6 characters in length." 
                                        ValidationExpression=".{6,}" 
                                        CssClass="field-error-text" 
                                        Display="Dynamic" 
                                        ValidationGroup="RegisterGroup" />
                                </div>
                                <div class="form-col">
                                    <label class="form-label" for="txtRegisterConfirm">CONFIRM</label>
                                    <div class="input-wrapper">
                                        <asp:TextBox ID="txtRegisterConfirm" runat="server" CssClass="form-control" placeholder="&bull;&bull;&bull;&bull;&bull;&bull;&bull;&bull;" TextMode="Password" autocomplete="new-password" />
                                    </div>
                                    <asp:RequiredFieldValidator ID="rfvRegisterConfirm" runat="server" 
                                        ControlToValidate="txtRegisterConfirm" 
                                        ErrorMessage="Please confirm your password." 
                                        CssClass="field-error-text" 
                                        Display="Dynamic" 
                                        ValidationGroup="RegisterGroup" />
                                    <asp:CompareValidator ID="cvRegisterConfirm" runat="server" 
                                        ControlToValidate="txtRegisterConfirm" 
                                        ControlToCompare="txtRegisterPassword" 
                                        ErrorMessage="Passwords do not match. Please re-enter." 
                                        CssClass="field-error-text" 
                                        Display="Dynamic" 
                                        ValidationGroup="RegisterGroup" />
                                </div>
                            </div>

                            <div class="agreement-group">
                                <input type="checkbox" id="chkAgreement" runat="server" class="custom-checkbox-input" />
                                <label for="chkAgreement" class="custom-checkbox-box"></label>
                                <label for="chkAgreement" class="agreement-label">
                                    I agree to the <a href="javascript:void(0)" class="terms-link" onclick="openModal('terms')">Atelier Terms</a> and authorize storage of bespoke measurements, rise preferences, and inseam records.
                                </label>
                            </div>
                            <asp:CustomValidator ID="cvAgreement" runat="server" 
                                ClientValidationFunction="validateAgreement" 
                                OnServerValidate="cvAgreement_ServerValidate" 
                                ErrorMessage="Please accept the Atelier Terms to complete registration." 
                                CssClass="field-error-text" 
                                Display="Dynamic" 
                                ValidationGroup="RegisterGroup" 
                                style="margin-top: -10px; margin-bottom: 14px;" />

                            <asp:ValidationSummary ID="valSummaryRegister" runat="server" 
                                ValidationGroup="RegisterGroup" 
                                ShowMessageBox="true" 
                                ShowSummary="false" 
                                HeaderText="Atelier Registration Notice:&#10;Please correct the following fields:" />

                            <asp:LinkButton ID="btnRegisterSubmit" runat="server" CssClass="btn-primary-atelier" ValidationGroup="RegisterGroup" OnClick="btnRegisterSubmit_Click">
                                <span>CREATE ATELIER ACCOUNT</span>
                                <span class="btn-icon">
                                    <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.3" stroke-linecap="round" stroke-linejoin="round">
                                        <circle cx="12" cy="12" r="10"></circle>
                                        <path d="m9 12 2 2 4-4"></path>
                                    </svg>
                                </span>
                            </asp:LinkButton>

                            <div class="switch-mode-container">
                                Existing patron? <a href="javascript:void(0)" class="switch-mode-link" onclick="switchTab('signin')">SIGN IN</a>
                            </div>

                            <div class="admin-switch-banner">
                                Are you an administrator or staff? <a href="Admin/Login.aspx" class="admin-switch-link">Sign in to Admin Dashboard &rarr;</a>
                            </div>
                        </div>

                        <!-- ------------------------------------------------------------------
                             PANEL 2: SIGN IN
                             ------------------------------------------------------------------ -->
                        <div id="panelSignIn" class="form-panel">
                            <h1 class="atelier-card-title">Sign In to Your Account</h1>

                            <div class="form-group">
                                <label class="form-label" for="txtLoginEmail">EMAIL ADDRESS</label>
                                <div class="input-wrapper">
                                    <asp:TextBox ID="txtLoginEmail" runat="server" CssClass="form-control" placeholder="arjun@atelier.in" TextMode="Email" autocomplete="email" />
                                </div>
                                <asp:RequiredFieldValidator ID="rfvLoginEmail" runat="server" 
                                    ControlToValidate="txtLoginEmail" 
                                    ErrorMessage="Please enter your email address." 
                                    CssClass="field-error-text" 
                                    Display="Dynamic" 
                                    ValidationGroup="SignInGroup" />
                                <asp:RegularExpressionValidator ID="revLoginEmail" runat="server" 
                                    ControlToValidate="txtLoginEmail" 
                                    ErrorMessage="Please enter a valid email address." 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                    CssClass="field-error-text" 
                                    Display="Dynamic" 
                                    ValidationGroup="SignInGroup" />
                            </div>

                            <div class="form-group">
                                <label class="form-label" for="txtLoginPassword">PASSWORD</label>
                                <div class="input-wrapper">
                                    <asp:TextBox ID="txtLoginPassword" runat="server" CssClass="form-control" placeholder="&bull;&bull;&bull;&bull;&bull;&bull;&bull;&bull;" TextMode="Password" autocomplete="current-password" />
                                </div>
                                <asp:RequiredFieldValidator ID="rfvLoginPassword" runat="server" 
                                    ControlToValidate="txtLoginPassword" 
                                    ErrorMessage="Please enter your account password." 
                                    CssClass="field-error-text" 
                                    Display="Dynamic" 
                                    ValidationGroup="SignInGroup" />
                            </div>

                            <div class="form-helper-row">
                                <label class="remember-label">
                                    <input type="checkbox" id="chkRememberMe" runat="server" class="custom-checkbox-input" />
                                    <span class="custom-checkbox-box"></span>
                                    <span>Remember this device</span>
                                </label>
                                <a href="javascript:void(0)" class="forgot-link" onclick="openModal('forgot')">Forgot password?</a>
                            </div>

                            <asp:ValidationSummary ID="valSummarySignIn" runat="server" 
                                ValidationGroup="SignInGroup" 
                                ShowMessageBox="true" 
                                ShowSummary="false" 
                                HeaderText="Atelier Sign-In Notice:&#10;Please complete the required credentials:" />

                            <asp:LinkButton ID="btnLoginSubmit" runat="server" CssClass="btn-primary-atelier" ValidationGroup="SignInGroup" OnClick="btnLoginSubmit_Click">
                                <span>SIGN IN TO ATELIER</span>
                                <span class="btn-icon">
                                    <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.3" stroke-linecap="round" stroke-linejoin="round">
                                        <line x1="5" y1="12" x2="19" y2="12"></line>
                                        <polyline points="12 5 19 12 12 19"></polyline>
                                    </svg>
                                </span>
                            </asp:LinkButton>

                            <div class="switch-mode-container">
                                New patron? <a href="javascript:void(0)" class="switch-mode-link" onclick="switchTab('create')">CREATE ACCOUNT</a>
                            </div>

                            <div class="admin-switch-banner">
                                Are you an administrator or staff? <a href="Admin/Login.aspx" class="admin-switch-link">Sign in to Admin Dashboard &rarr;</a>
                            </div>
                        </div>

                    </div>

                    <!-- Patron Privileges Section (Inside Card Footer) -->
                    <div class="atelier-privileges">
                        <div class="privilege-icon-wrap">
                            <svg class="privilege-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <circle cx="12" cy="8" r="6" fill="#C08054" fill-opacity="0.15"></circle>
                                <path d="M8.21 13.89 7 23l5-3 5 3-1.21-9.12"></path>
                            </svg>
                        </div>
                        <div class="privilege-content">
                            <div class="privilege-title">PANTORA PATRON PRIVILEGES</div>
                            <div class="privilege-desc">
                                Members receive complimentary inseam pinning, early access to small-batch cloth drops, and 48-hour fabric reserve locks.
                            </div>
                        </div>
                    </div>

                </div>

                <!-- Sub-Card Assistance Links -->
                <div class="atelier-assistance">
                    Need assistance? <a href="javascript:void(0)" class="assist-link" onclick="openModal('support')">Contact Atelier Support</a>
                    <span class="dot-separator">·</span>
                    <a href="javascript:void(0)" class="assist-link" onclick="openModal('privacy')">Privacy Policy</a>
                    <span class="dot-separator">·</span>
                    <a href="Admin/Login.aspx" class="assist-link" style="color:#C08054; font-weight:700;">Admin Console &rarr;</a>
                </div>

            </main>

            <!-- Bottom Page Footer -->
            <footer class="atelier-footer">
                <div class="footer-nav">
                    <a href="javascript:void(0)" onclick="openModal('privacy')">Privacy Policy</a>
                    <span class="dot-separator">·</span>
                    <a href="javascript:void(0)" onclick="openModal('terms')">Terms of Service</a>
                    <span class="dot-separator">·</span>
                    <a href="javascript:void(0)" onclick="openModal('support')">Support</a>
                </div>
                <div class="footer-copy">
                    &copy; 2025 Pantora Apparel Pvt. Ltd. All rights reserved.
                </div>
            </footer>

        </div>

        <!-- ------------------------------------------------------------------
             Interactive Information Modals
             ------------------------------------------------------------------ -->
        <div id="infoModalOverlay" class="atelier-modal-overlay" onclick="closeModalOnOverlay(event)">
            <div class="atelier-modal">
                <button type="button" class="modal-close-btn" onclick="closeModal()">&times;</button>
                <h2 id="modalTitle" class="modal-title">Atelier Information</h2>
                <div id="modalBody" class="modal-body"></div>
            </div>
        </div>

    </form>

    <!-- Client-side Tab & Validation Script -->
    <script type="text/javascript">
        function switchTab(mode) {
            var tabSignIn = document.getElementById('tabSignIn');
            var tabCreate = document.getElementById('tabCreate');
            var dotSignIn = document.getElementById('dotSignIn');
            var dotCreate = document.getElementById('dotCreate');
            var panelSignIn = document.getElementById('panelSignIn');
            var panelCreate = document.getElementById('panelCreateAccount');
            
            clearAllErrors();

            if (mode === 'signin') {
                tabSignIn.className = 'atelier-tab-btn active';
                tabCreate.className = 'atelier-tab-btn';
                dotSignIn.style.display = 'inline-block';
                dotCreate.style.display = 'none';
                
                panelSignIn.className = 'form-panel active';
                panelCreate.className = 'form-panel';
            } else {
                tabCreate.className = 'atelier-tab-btn active';
                tabSignIn.className = 'atelier-tab-btn';
                dotCreate.style.display = 'inline-block';
                dotSignIn.style.display = 'none';
                
                panelCreate.className = 'form-panel active';
                panelSignIn.className = 'form-panel';
            }
        }

        function showClientAlert(message, isSuccess) {
            var alertBox = document.getElementById('clientAlert');
            if (!alertBox) return;
            alertBox.textContent = message;
            alertBox.className = 'atelier-alert ' + (isSuccess ? 'success' : 'error');
            alertBox.style.display = 'block';
        }

        function clearError(inputElement, errorElementId) {
            if (inputElement) {
                inputElement.classList.remove('input-error');
            }
            var errEl = document.getElementById(errorElementId);
            if (errEl) {
                errEl.textContent = '';
                errEl.classList.remove('visible');
            }
        }

        function showError(inputElement, errorElementId, message) {
            if (inputElement) {
                inputElement.classList.add('input-error');
            }
            var errEl = document.getElementById(errorElementId);
            if (errEl) {
                errEl.textContent = message;
                errEl.classList.add('visible');
            }
        }

        function clearAllErrors() {
            var errorSpans = document.querySelectorAll('.field-error-text');
            errorSpans.forEach(function(sp) {
                sp.textContent = '';
                sp.classList.remove('visible');
            });
            var errorInputs = document.querySelectorAll('.form-control.input-error');
            errorInputs.forEach(function(inp) {
                inp.classList.remove('input-error');
            });
            var alertBox = document.getElementById('clientAlert');
            if (alertBox) {
                alertBox.className = 'atelier-alert';
                alertBox.style.display = 'none';
            }
        }

        function validateAgreement(source, args) {
            var chk = document.getElementById('<%= chkAgreement.ClientID %>');
            args.IsValid = chk ? chk.checked : false;
        }

        function handleSignIn(e) {
            if (e && e.preventDefault) e.preventDefault();

            var emailInput = document.getElementById('<%= txtLoginEmail.ClientID %>') || document.getElementById('txtLoginEmail');
            var pwdInput = document.getElementById('<%= txtLoginPassword.ClientID %>') || document.getElementById('txtLoginPassword');

            var email = emailInput ? emailInput.value.trim() : '';
            var pwd = pwdInput ? pwdInput.value : '';

            var isValid = true;
            var firstInvalid = null;

            // Email validation
            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!email) {
                showError(emailInput, 'errLoginEmail', 'Please enter your email address to sign in.');
                isValid = false;
                if (!firstInvalid) firstInvalid = emailInput;
            } else if (!emailRegex.test(email)) {
                showError(emailInput, 'errLoginEmail', 'Please enter a valid email address (e.g. arjun@atelier.in).');
                isValid = false;
                if (!firstInvalid) firstInvalid = emailInput;
            } else {
                clearError(emailInput, 'errLoginEmail');
            }

            // Password validation
            if (!pwd) {
                showError(pwdInput, 'errLoginPassword', 'Please enter your account password.');
                isValid = false;
                if (!firstInvalid) firstInvalid = pwdInput;
            } else {
                clearError(pwdInput, 'errLoginPassword');
            }

            if (!isValid) {
                showClientAlert('Please enter your email address and password.', false);
                if (firstInvalid) firstInvalid.focus();
                return false;
            }

            // Clear any alert banner
            var alertBox = document.getElementById('clientAlert');
            if (alertBox) alertBox.style.display = 'none';

            // Store user login details for persistence
            try {
                localStorage.setItem('pantora_user_email', email);
                localStorage.setItem('pantora_authenticated', 'true');
            } catch (ex) {}

            // Redirect to home page
            window.location.href = 'Default.aspx';
            return true;
        }

        function handleRegister(e) {
            if (e && e.preventDefault) e.preventDefault();

            var nameInput = document.getElementById('<%= txtRegisterName.ClientID %>') || document.getElementById('txtRegisterName');
            var emailInput = document.getElementById('<%= txtRegisterEmail.ClientID %>') || document.getElementById('txtRegisterEmail');
            var pwdInput = document.getElementById('<%= txtRegisterPassword.ClientID %>') || document.getElementById('txtRegisterPassword');
            var confirmInput = document.getElementById('<%= txtRegisterConfirm.ClientID %>') || document.getElementById('txtRegisterConfirm');
            var agreeInput = document.getElementById('<%= chkAgreement.ClientID %>') || document.getElementById('chkAgreement');

            var name = nameInput ? nameInput.value.trim() : '';
            var email = emailInput ? emailInput.value.trim() : '';
            var pwd = pwdInput ? pwdInput.value : '';
            var confirm = confirmInput ? confirmInput.value : '';
            var agreed = agreeInput ? agreeInput.checked : false;

            var isValid = true;
            var firstInvalid = null;

            // Name validation
            if (!name) {
                showError(nameInput, 'errRegisterName', 'Please enter your full legal name.');
                isValid = false;
                if (!firstInvalid) firstInvalid = nameInput;
            } else {
                clearError(nameInput, 'errRegisterName');
            }

            // Email validation
            var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!email) {
                showError(emailInput, 'errRegisterEmail', 'Please enter your email address.');
                isValid = false;
                if (!firstInvalid) firstInvalid = emailInput;
            } else if (!emailRegex.test(email)) {
                showError(emailInput, 'errRegisterEmail', 'Please enter a valid email address (e.g. arjun@atelier.in).');
                isValid = false;
                if (!firstInvalid) firstInvalid = emailInput;
            } else {
                clearError(emailInput, 'errRegisterEmail');
            }

            // Password validation
            if (!pwd || pwd.length < 6) {
                showError(pwdInput, 'errRegisterPassword', 'Password must be at least 6 characters in length.');
                isValid = false;
                if (!firstInvalid) firstInvalid = pwdInput;
            } else {
                clearError(pwdInput, 'errRegisterPassword');
            }

            // Confirm password validation
            if (!confirm) {
                showError(confirmInput, 'errRegisterConfirm', 'Please confirm your password.');
                isValid = false;
                if (!firstInvalid) firstInvalid = confirmInput;
            } else if (pwd !== confirm) {
                showError(confirmInput, 'errRegisterConfirm', 'Passwords do not match. Please re-enter.');
                isValid = false;
                if (!firstInvalid) firstInvalid = confirmInput;
            } else {
                clearError(confirmInput, 'errRegisterConfirm');
            }

            // Agreement checkbox
            if (!agreed) {
                showError(null, 'errAgreement', 'Please accept the Atelier Terms to complete registration.');
                isValid = false;
            } else {
                clearError(null, 'errAgreement');
            }

            if (!isValid) {
                showClientAlert('Please complete all required fields.', false);
                if (firstInvalid) firstInvalid.focus();
                return false;
            }

            // Clear alert
            var alertBox = document.getElementById('clientAlert');
            if (alertBox) alertBox.style.display = 'none';

            // Store user login details for persistence
            try {
                localStorage.setItem('pantora_user_name', name);
                localStorage.setItem('pantora_user_email', email);
                localStorage.setItem('pantora_authenticated', 'true');
            } catch (ex) {}

            // Redirect to home page
            window.location.href = 'Default.aspx';
            return true;
        }

        // Modals for Terms, Privacy, Support, and Forgot Password
        var modalContents = {
            terms: {
                title: 'Pantora Atelier Terms',
                body: '<p>By enrolling as an Atelier patron, you authorize Pantora Apparel Pvt. Ltd. to maintain and update your bespoke silhouette profiles, inseam pinning notes, and fabric reservation preferences.</p><br/><p>All confidential tailoring profiles are protected under encrypted patron vault storage and never shared with third parties.</p>'
            },
            privacy: {
                title: 'Privacy & Data Protection',
                body: '<p>Your privacy is sacred to our craft. We only store bespoke measurements, fitting logs, and order histories to deliver flawless tailoring and curated fabric releases.</p><br/><p>You may request deletion or export of your patron profile at any time by contacting our Atelier Support desk.</p>'
            },
            support: {
                title: 'Contact Atelier Support',
                body: '<p>Our tailoring concierge is available Monday through Saturday, 9:00 AM – 7:00 PM IST.</p><br/><p><strong>Email:</strong> atelier@pantora.com<br/><strong>Phone:</strong> +91 (0) 22 4589 1200<br/><strong>Flagship Atelier:</strong> Mumbai & New Delhi</p>'
            },
            forgot: {
                title: 'Reset Atelier Credentials',
                body: '<p>Please enter your registered email address below. Our concierge will dispatch a secure reset key directly to your inbox.</p><br/><input type="email" class="form-control" placeholder="arjun@atelier.in" style="margin-bottom:14px;" /><button type="button" class="btn-primary-atelier" onclick="alert(\'A password reset key has been dispatched to your email.\'); closeModal();">DISPATCH RESET KEY</button>'
            }
        };

        function openModal(key) {
            var overlay = document.getElementById('infoModalOverlay');
            var title = document.getElementById('modalTitle');
            var body = document.getElementById('modalBody');
            var content = modalContents[key];

            if (content) {
                title.innerText = content.title;
                body.innerHTML = content.body;
                overlay.className = 'atelier-modal-overlay active';
            }
        }

        function closeModal() {
            var overlay = document.getElementById('infoModalOverlay');
            overlay.className = 'atelier-modal-overlay';
        }

        function closeModalOnOverlay(e) {
            if (e.target.id === 'infoModalOverlay') {
                closeModal();
            }
        }

        // Check URL parameters on load for ?tab=signin and attach dynamic input listeners
        window.addEventListener('DOMContentLoaded', function() {
            var urlParams = new URLSearchParams(window.location.search);
            var tab = urlParams.get('tab');
            if (tab === 'signin' || tab === 'login') {
                switchTab('signin');
            }

            var fieldMappings = [
                { id: '<%= txtLoginEmail.ClientID %>', err: 'errLoginEmail' },
                { id: '<%= txtLoginPassword.ClientID %>', err: 'errLoginPassword' },
                { id: '<%= txtRegisterName.ClientID %>', err: 'errRegisterName' },
                { id: '<%= txtRegisterEmail.ClientID %>', err: 'errRegisterEmail' },
                { id: '<%= txtRegisterPassword.ClientID %>', err: 'errRegisterPassword' },
                { id: '<%= txtRegisterConfirm.ClientID %>', err: 'errRegisterConfirm' }
            ];

            fieldMappings.forEach(function(item) {
                var el = document.getElementById(item.id);
                if (el) {
                    el.addEventListener('input', function() {
                        clearError(el, item.err);
                        var alertBox = document.getElementById('clientAlert');
                        if (alertBox) alertBox.style.display = 'none';
                    });
                }
            });

            var chk = document.getElementById('<%= chkAgreement.ClientID %>');
            if (chk) {
                chk.addEventListener('change', function() {
                    clearError(null, 'errAgreement');
                });
            }

            // Support Enter key submission
            var loginPanel = document.getElementById('panelSignIn');
            if (loginPanel) {
                loginPanel.addEventListener('keydown', function(e) {
                    if (e.key === 'Enter') {
                        e.preventDefault();
                        handleSignIn(e);
                    }
                });
            }

            var registerPanel = document.getElementById('panelCreateAccount');
            if (registerPanel) {
                registerPanel.addEventListener('keydown', function(e) {
                    if (e.key === 'Enter') {
                        e.preventDefault();
                        handleRegister(e);
                    }
                });
            }
        });
    </script>
</body>
</html>
