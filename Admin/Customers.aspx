<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="Pantora.Admin.Customers" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Customer Registry &bull; Pantora Atelier Admin</title>

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
    <form id="formAdminCustomers" runat="server">

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
                    <a href="Account.aspx" style="text-decoration:none;" class="adm-staff-card" title="Open Admin Account &amp; Settings">
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
                    <div class="adm-topbar-breadcrumb">ADMIN DASHBOARD / CUSTOMERS</div>

                    <div class="adm-topbar-actions">
                        <span class="adm-live-badge">
                            <span class="adm-live-dot"></span>
                            <span>PATRON VAULT ENCRYPTED</span>
                        </span>

                        <!-- Admin Account Navigation Button -->
                        <a href="Account.aspx" class="adm-icon-btn" title="Admin Account &amp; Settings">
                            <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                <circle cx="12" cy="7" r="4"></circle>
                            </svg>
                        </a>

                        <!-- Public Storefront Navigation Button -->
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
                        <span class="adm-sub-tag">&bull; CLIENT REGISTRY &bull; 184 ACTIVE PATRONS</span>
                        <h1 class="adm-page-title">Customer Registry</h1>
                    </div>

                    <button type="button" class="btn-adm-primary" onclick="window.print()">
                        <span>Print Patrons Manifest</span>
                    </button>
                </div>

                <!-- Body -->
                <main class="adm-dashboard-body">

                    <!-- Search Filter Bar -->
                    <div class="adm-action-header-row">
                        <div class="adm-time-filters">
                            <button type="button" class="adm-time-btn active" onclick="filterPatronTier('all', this)">ALL CLIENTS (184)</button>
                            <button type="button" class="adm-time-btn" onclick="filterPatronTier('patron', this)">VIP PATRONS (42)</button>
                            <button type="button" class="adm-time-btn" onclick="filterPatronTier('repeat', this)">REPEAT BUYERS</button>
                        </div>

                        <input type="text" id="txtCustSearch" class="adm-search-input" placeholder="Search by patron name, email or city..." onkeyup="searchCustomers(this.value)" />
                    </div>

                    <!-- Customers Table Card -->
                    <div class="adm-recent-orders-card">
                        <div style="overflow-x:auto;">
                            <table class="adm-orders-table" id="tblCustomers">
                                <thead>
                                    <tr>
                                        <th>PATRON</th>
                                        <th>CONTACT EMAIL</th>
                                        <th>LOCATION</th>
                                        <th>PREFERRED SIZE</th>
                                        <th>ORDERS PLACED</th>
                                        <th>LIFETIME VALUE</th>
                                        <th>TIER</th>
                                        <th style="text-align:right;">ACTION</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- Customer 1 -->
                                    <tr data-tier="patron">
                                        <td>
                                            <div style="display:flex; align-items:center; gap:10px;">
                                                <div class="adm-staff-avatar" style="background:#0F172A;">AS</div>
                                                <div>
                                                    <div class="col-cust-name">Aditya Sharma</div>
                                                    <div style="font-size:11px; color:#888;">Joined Oct 2025</div>
                                                </div>
                                            </div>
                                        </td>
                                        <td><span style="font-family:monospace; font-size:12px;">aditya.sharma@example.com</span></td>
                                        <td>Mumbai, MH &bull; 400013</td>
                                        <td><span class="stat-cat-tag">SIZE 32 IN</span></td>
                                        <td><strong>3 Orders</strong></td>
                                        <td><span class="col-amount">&#8377;11,995</span></td>
                                        <td><span class="pill-status delivered">VIP PATRON</span></td>
                                        <td style="text-align:right;">
                                            <a href="CustomerDetail.aspx?id=CUST-01" class="btn-view-order" style="text-decoration:none; display:inline-block;">VIEW DOSSIER</a>
                                        </td>
                                    </tr>

                                    <!-- Customer 2 -->
                                    <tr data-tier="repeat">
                                        <td>
                                            <div style="display:flex; align-items:center; gap:10px;">
                                                <div class="adm-staff-avatar" style="background:#334155;">VM</div>
                                                <div>
                                                    <div class="col-cust-name">Vikram Malhotra</div>
                                                    <div style="font-size:11px; color:#888;">Joined Aug 2025</div>
                                                </div>
                                            </div>
                                        </td>
                                        <td><span style="font-family:monospace; font-size:12px;">vikram.m@luxury.in</span></td>
                                        <td>Bengaluru, KA &bull; 560001</td>
                                        <td><span class="stat-cat-tag">SIZE 32 IN</span></td>
                                        <td><strong>2 Orders</strong></td>
                                        <td><span class="col-amount">&#8377;5,798</span></td>
                                        <td><span class="pill-status in-transit">REPEAT BUYER</span></td>
                                        <td style="text-align:right;">
                                            <a href="CustomerDetail.aspx?id=CUST-02" class="btn-view-order" style="text-decoration:none; display:inline-block;">VIEW DOSSIER</a>
                                        </td>
                                    </tr>

                                    <!-- Customer 3 -->
                                    <tr data-tier="patron">
                                        <td>
                                            <div style="display:flex; align-items:center; gap:10px;">
                                                <div class="adm-staff-avatar" style="background:#0F172A;">SK</div>
                                                <div>
                                                    <div class="col-cust-name">Sameer Kapoor</div>
                                                    <div style="font-size:11px; color:#888;">Joined Jun 2025</div>
                                                </div>
                                            </div>
                                        </td>
                                        <td><span style="font-family:monospace; font-size:12px;">sameer.kapoor@atelier.com</span></td>
                                        <td>New Delhi &bull; 110001</td>
                                        <td><span class="stat-cat-tag">SIZE 30 IN</span></td>
                                        <td><strong>4 Orders</strong></td>
                                        <td><span class="col-amount">&#8377;14,296</span></td>
                                        <td><span class="pill-status delivered">VIP PATRON</span></td>
                                        <td style="text-align:right;">
                                            <a href="CustomerDetail.aspx?id=CUST-03" class="btn-view-order" style="text-decoration:none; display:inline-block;">VIEW DOSSIER</a>
                                        </td>
                                    </tr>

                                    <!-- Customer 4 -->
                                    <tr data-tier="repeat">
                                        <td>
                                            <div style="display:flex; align-items:center; gap:10px;">
                                                <div class="adm-staff-avatar" style="background:#475569;">RD</div>
                                                <div>
                                                    <div class="col-cust-name">Rohan Desai</div>
                                                    <div style="font-size:11px; color:#888;">Joined Sep 2025</div>
                                                </div>
                                            </div>
                                        </td>
                                        <td><span style="font-family:monospace; font-size:12px;">rohan.desai@studio.in</span></td>
                                        <td>Pune, MH &bull; 411001</td>
                                        <td><span class="stat-cat-tag">SIZE 34 IN</span></td>
                                        <td><strong>2 Orders</strong></td>
                                        <td><span class="col-amount">&#8377;4,998</span></td>
                                        <td><span class="pill-status in-transit">REPEAT BUYER</span></td>
                                        <td style="text-align:right;">
                                            <a href="CustomerDetail.aspx?id=CUST-04" class="btn-view-order" style="text-decoration:none; display:inline-block;">VIEW DOSSIER</a>
                                        </td>
                                    </tr>

                                    <!-- Customer 5 -->
                                    <tr data-tier="standard">
                                        <td>
                                            <div style="display:flex; align-items:center; gap:10px;">
                                                <div class="adm-staff-avatar" style="background:#64748B;">KV</div>
                                                <div>
                                                    <div class="col-cust-name">Kunal Verma</div>
                                                    <div style="font-size:11px; color:#888;">Joined Oct 2025</div>
                                                </div>
                                            </div>
                                        </td>
                                        <td><span style="font-family:monospace; font-size:12px;">kunal.v@techcorp.in</span></td>
                                        <td>Hyderabad, TS &bull; 500001</td>
                                        <td><span class="stat-cat-tag">SIZE 32 IN</span></td>
                                        <td><strong>1 Order</strong></td>
                                        <td><span class="col-amount">&#8377;3,299</span></td>
                                        <td><span class="pill-status pending">FIRST PURCHASE</span></td>
                                        <td style="text-align:right;">
                                            <a href="CustomerDetail.aspx?id=CUST-05" class="btn-view-order" style="text-decoration:none; display:inline-block;">VIEW DOSSIER</a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </main>

            </div>

        </div>

    </form>

    <script>
        function filterPatronTier(tier, btn) {
            var btns = document.querySelectorAll('.adm-time-filters .adm-time-btn');
            for (var i = 0; i < btns.length; i++) btns[i].classList.remove('active');
            btn.classList.add('active');

            var rows = document.querySelectorAll('#tblCustomers tbody tr');
            for (var j = 0; j < rows.length; j++) {
                var r = rows[j];
                var t = r.getAttribute('data-tier');
                if (tier === 'all' || t === tier) {
                    r.style.display = '';
                } else {
                    r.style.display = 'none';
                }
            }
        }

        function searchCustomers(query) {
            var q = query.toLowerCase();
            var rows = document.querySelectorAll('#tblCustomers tbody tr');
            for (var i = 0; i < rows.length; i++) {
                var text = rows[i].innerText.toLowerCase();
                rows[i].style.display = (text.indexOf(q) !== -1) ? '' : 'none';
            }
        }
    </script>
</body>
</html>
