<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="Pantora.Admin.Orders" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Orders &amp; Dispatch &bull; Pantora Atelier Admin</title>

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
    <form id="formAdminOrders" runat="server">

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
                    <div class="adm-topbar-breadcrumb">ADMIN DASHBOARD / ORDERS</div>

                    <div class="adm-topbar-actions">
                        <span class="adm-live-badge">
                            <span class="adm-live-dot"></span>
                            <span>DISPATCH LIVE</span>
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
                        <span class="adm-sub-tag">&bull; FULFILLMENT &amp; DISPATCH &bull; BLUE DART PRIORITY</span>
                        <h1 class="adm-page-title">Patron Orders Manifest</h1>
                    </div>

                    <button type="button" class="btn-adm-primary" onclick="window.print()">
                        <span>Print Shipping Manifest</span>
                    </button>
                </div>

                <!-- Body -->
                <main class="adm-dashboard-body">

                    <!-- Filter Bar -->
                    <div class="adm-action-header-row">
                        <div class="adm-time-filters">
                            <button type="button" class="adm-time-btn active" onclick="filterOrderStatus('all', this)">ALL (8)</button>
                            <button type="button" class="adm-time-btn" onclick="filterOrderStatus('in-transit', this)">IN TRANSIT (3)</button>
                            <button type="button" class="adm-time-btn" onclick="filterOrderStatus('ready', this)">READY TO SHIP (2)</button>
                            <button type="button" class="adm-time-btn" onclick="filterOrderStatus('delivered', this)">DELIVERED (2)</button>
                            <button type="button" class="adm-time-btn" onclick="filterOrderStatus('return', this)" style="color:#9A3412;">RETURN / EXCHANGE (1)</button>
                        </div>

                        <input type="text" id="txtOrderSearch" class="adm-search-input" placeholder="Search by Order ID or Patron..." onkeyup="searchOrders(this.value)" />
                    </div>

                    <!-- Orders Table Card -->
                    <div class="adm-recent-orders-card">
                        <div style="overflow-x:auto;">
                            <table class="adm-orders-table" id="tblOrders">
                                <thead>
                                    <tr>
                                        <th>ORDER REF</th>
                                        <th>PATRON / DESTINATION</th>
                                        <th>TROUSER ITEMS</th>
                                        <th>TOTAL PAID</th>
                                        <th>DATE &amp; TIME</th>
                                        <th>STATUS</th>
                                        <th style="text-align:right;">ACTION</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- Order 1 -->
                                    <tr data-status="in-transit">
                                        <td><span class="col-order-id">#ORD-9241</span></td>
                                        <td>
                                            <div class="col-cust-name">Aditya Sharma</div>
                                            <div style="font-size:11px; color:#666;">Mumbai, Maharashtra &bull; 400013</div>
                                        </td>
                                        <td>
                                            <div class="col-product-name">Seoul Pleated Pants, Como Linen (x3)</div>
                                            <div style="font-size:11px; color:#C08054; font-weight:600;">Complimentary Doorstep Pinning</div>
                                        </td>
                                        <td><span class="col-amount">&#8377;6,997</span></td>
                                        <td><span class="col-date-text">26 Oct, 10:14 AM</span></td>
                                        <td>
                                            <span class="pill-status in-transit">IN TRANSIT</span>
                                        </td>
                                        <td style="text-align:right;">
                                            <a href="OrderDetail.aspx?id=ORD-9241" class="btn-view-order" style="text-decoration:none; display:inline-block;">VIEW DOSSIER</a>
                                        </td>
                                    </tr>

                                    <!-- Order 2 -->
                                    <tr data-status="ready">
                                        <td><span class="col-order-id">#ORD-9102</span></td>
                                        <td>
                                            <div class="col-cust-name">Manish Singhal</div>
                                            <div style="font-size:11px; color:#666;">Gurugram, Haryana &bull; 122002</div>
                                        </td>
                                        <td>
                                            <div class="col-product-name">Atelier Daily Slim Chino (Sz 34)</div>
                                            <div style="font-size:11px; color:#888;">Navy Satin Weave</div>
                                        </td>
                                        <td><span class="col-amount">&#8377;2,399</span></td>
                                        <td><span class="col-date-text">26 Oct, 08:30 AM</span></td>
                                        <td>
                                            <span class="pill-status pending">READY TO DISPATCH</span>
                                        </td>
                                        <td style="text-align:right;">
                                            <a href="OrderDetail.aspx?id=ORD-9102" class="btn-view-order" style="text-decoration:none; display:inline-block;">UPDATE STATUS</a>
                                        </td>
                                    </tr>

                                    <!-- Order 3: Return & Exchange Request -->
                                    <tr data-status="return">
                                        <td><span class="col-order-id" style="color:#9A3412;">#RET-8492-EX</span></td>
                                        <td>
                                            <div class="col-cust-name">Aditya Sharma</div>
                                            <div style="font-size:11px; color:#666;">Orig Order: #ORD-8810</div>
                                        </td>
                                        <td>
                                            <div class="col-product-name">Gangnam Fluid Trouser (Exchange Size 32 &rarr; 34)</div>
                                            <div style="font-size:11px; color:#B45309;">Reason: Snug waist fit &bull; Free reverse courier</div>
                                        </td>
                                        <td><span class="col-amount">&#8377;2,499</span></td>
                                        <td><span class="col-date-text">25 Oct, 06:12 PM</span></td>
                                        <td>
                                            <span class="pill-status in-transit" style="background:#FEE2E2; color:#991B1B;">EXCHANGE PICKUP</span>
                                        </td>
                                        <td style="text-align:right;">
                                            <a href="OrderDetail.aspx?id=PN-8810" class="btn-view-order" style="text-decoration:none; display:inline-block;">EXCHANGE DOSSIER</a>
                                        </td>
                                    </tr>

                                    <!-- Order 4 -->
                                    <tr data-status="delivered">
                                        <td><span class="col-order-id">#ORD-8810</span></td>
                                        <td>
                                            <div class="col-cust-name">Vikram Malhotra</div>
                                            <div style="font-size:11px; color:#666;">Bengaluru, Karnataka &bull; 560001</div>
                                        </td>
                                        <td>
                                            <div class="col-product-name">The Como Linen Trouser (Sz 32)</div>
                                            <div style="font-size:11px; color:#888;">Sand Khaki</div>
                                        </td>
                                        <td><span class="col-amount">&#8377;2,499</span></td>
                                        <td><span class="col-date-text">25 Oct, 04:30 PM</span></td>
                                        <td>
                                            <span class="pill-status delivered">DELIVERED</span>
                                        </td>
                                        <td style="text-align:right;">
                                            <a href="OrderDetail.aspx?id=ORD-8810" class="btn-view-order" style="text-decoration:none; display:inline-block;">VIEW MANIFEST</a>
                                        </td>
                                    </tr>

                                    <!-- Order 5 -->
                                    <tr data-status="in-transit">
                                        <td><span class="col-order-id">#ORD-8492</span></td>
                                        <td>
                                            <div class="col-cust-name">Rohan Desai</div>
                                            <div style="font-size:11px; color:#666;">Pune, Maharashtra &bull; 411001</div>
                                        </td>
                                        <td>
                                            <div class="col-product-name">Gangnam Fluid Trouser (Sz 34)</div>
                                        </td>
                                        <td><span class="col-amount">&#8377;2,499</span></td>
                                        <td><span class="col-date-text">25 Oct, 01:15 PM</span></td>
                                        <td>
                                            <span class="pill-status in-transit">IN TRANSIT</span>
                                        </td>
                                        <td style="text-align:right;">
                                            <a href="OrderDetail.aspx?id=ORD-8492" class="btn-view-order" style="text-decoration:none; display:inline-block;">UPDATE STATUS</a>
                                        </td>
                                    </tr>

                                    <!-- Order 6 -->
                                    <tr data-status="delivered">
                                        <td><span class="col-order-id">#ORD-7819</span></td>
                                        <td>
                                            <div class="col-cust-name">Sameer Kapoor</div>
                                            <div style="font-size:11px; color:#666;">New Delhi &bull; 110001</div>
                                        </td>
                                        <td>
                                            <div class="col-product-name">Osaka Wide-Leg Twill, Belt (x2)</div>
                                        </td>
                                        <td><span class="col-amount">&#8377;5,198</span></td>
                                        <td><span class="col-date-text">24 Oct, 06:45 PM</span></td>
                                        <td>
                                            <span class="pill-status delivered">DELIVERED</span>
                                        </td>
                                        <td style="text-align:right;">
                                            <a href="OrderDetail.aspx?id=ORD-7819" class="btn-view-order" style="text-decoration:none; display:inline-block;">VIEW MANIFEST</a>
                                        </td>
                                    </tr>

                                    <!-- Order 7 -->
                                    <tr data-status="ready">
                                        <td><span class="col-order-id">#ORD-7601</span></td>
                                        <td>
                                            <div class="col-cust-name">Ananya Iyer</div>
                                            <div style="font-size:11px; color:#666;">Chennai, Tamil Nadu &bull; 600001</div>
                                        </td>
                                        <td>
                                            <div class="col-product-name">Busan Minimal High-Rise Slacks (Sz 30)</div>
                                        </td>
                                        <td><span class="col-amount">&#8377;2,399</span></td>
                                        <td><span class="col-date-text">24 Oct, 03:10 PM</span></td>
                                        <td>
                                            <span class="pill-status pending">READY TO DISPATCH</span>
                                        </td>
                                        <td style="text-align:right;">
                                            <a href="OrderDetail.aspx?id=ORD-7601" class="btn-view-order" style="text-decoration:none; display:inline-block;">UPDATE STATUS</a>
                                        </td>
                                    </tr>

                                    <!-- Order 8 -->
                                    <tr data-status="in-transit">
                                        <td><span class="col-order-id">#ORD-7452</span></td>
                                        <td>
                                            <div class="col-cust-name">Kunal Verma</div>
                                            <div style="font-size:11px; color:#666;">Hyderabad, Telangana &bull; 500001</div>
                                        </td>
                                        <td>
                                            <div class="col-product-name">Kensington Worsted Wool (Sz 32)</div>
                                        </td>
                                        <td><span class="col-amount">&#8377;3,299</span></td>
                                        <td><span class="col-date-text">24 Oct, 11:20 AM</span></td>
                                        <td>
                                            <span class="pill-status in-transit">IN TRANSIT</span>
                                        </td>
                                        <td style="text-align:right;">
                                            <a href="OrderDetail.aspx?id=ORD-7452" class="btn-view-order" style="text-decoration:none; display:inline-block;">UPDATE STATUS</a>
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
        function filterOrderStatus(status, btn) {
            var btns = document.querySelectorAll('.adm-time-filters .adm-time-btn');
            for (var i = 0; i < btns.length; i++) btns[i].classList.remove('active');
            btn.classList.add('active');

            var rows = document.querySelectorAll('#tblOrders tbody tr');
            for (var j = 0; j < rows.length; j++) {
                var r = rows[j];
                var s = r.getAttribute('data-status');
                if (status === 'all' || s === status) {
                    r.style.display = '';
                } else {
                    r.style.display = 'none';
                }
            }
        }

        function searchOrders(query) {
            var q = query.toLowerCase();
            var rows = document.querySelectorAll('#tblOrders tbody tr');
            for (var i = 0; i < rows.length; i++) {
                var text = rows[i].innerText.toLowerCase();
                rows[i].style.display = (text.indexOf(q) !== -1) ? '' : 'none';
            }
        }
    </script>
</body>
</html>
