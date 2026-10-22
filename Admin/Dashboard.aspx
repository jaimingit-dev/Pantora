<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Pantora.Admin.Dashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard Overview &bull; Pantora Atelier Admin</title>

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
    <form id="formAdminDashboard" runat="server">

        <div class="adm-dashboard-container">

            <!-- ------------------------------------------------------------------
                 Left Sidebar (Reference Image 2)
                 ------------------------------------------------------------------ -->
            <aside class="adm-sidebar">
                <div>
                    <!-- Brand Wordmark -->
                    <div class="adm-sidebar-brand">
                        <div>
                            <div class="adm-brand-text">PANTORA<span style="color:#C08054; margin-left:3px;">&bull;</span></div>
                            <div class="adm-brand-tag">ATELIER ADMIN</div>
                        </div>
                    </div>

                    <!-- Category Title -->
                    <div class="adm-sidebar-section-title">OPERATIONS</div>

                    <!-- Navigation Items -->
                    <nav class="adm-nav-list">
                        <a href="Dashboard.aspx" class="adm-nav-link active">
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

                        <a href="Account.aspx" class="adm-nav-link">
                            <svg class="adm-nav-icon" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                <circle cx="12" cy="7" r="4"></circle>
                            </svg>
                            <span>Admin Account</span>
                        </a>
                    </nav>
                </div>

                <!-- Admin Profile & Logout -->
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

            <!-- ------------------------------------------------------------------
                 Main Content Column
                 ------------------------------------------------------------------ -->
            <div class="adm-main-content">

                <!-- Topbar Header (Reference Image 2) -->
                <header class="adm-topbar">
                    <div class="adm-topbar-breadcrumb">ADMIN DASHBOARD</div>

                    <div class="adm-topbar-actions">
                        <span class="adm-live-badge">
                            <span class="adm-live-dot"></span>
                            <span>LIVE</span>
                        </span>

                        <!-- Orders Quick Link -->
                        <a href="Orders.aspx" class="adm-icon-btn" title="View Orders &amp; Dispatches">
                            <svg width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <circle cx="11" cy="11" r="8"></circle>
                                <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
                            </svg>
                        </a>

                        <!-- Notification Link -->
                        <a href="Orders.aspx" class="adm-icon-btn" title="3 size exchange pickups scheduled">
                            <svg width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path>
                                <path d="M13.73 21a2 2 0 0 1-3.46 0"></path>
                            </svg>
                        </a>

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

                <!-- Sub-Header Row with Time Range Filter (Reference Image 2) -->
                <div class="adm-sub-header">
                    <div>
                        <span class="adm-sub-tag">&bull; STORE OVERVIEW &bull; OCTOBER 2026</span>
                        <h1 class="adm-page-title">Overview</h1>
                    </div>

                    <div class="adm-time-filters">
                        <button type="button" class="adm-time-btn" onclick="switchTimeFilter('today', this)">TODAY</button>
                        <button type="button" class="adm-time-btn" onclick="switchTimeFilter('7days', this)">LAST 7 DAYS</button>
                        <button type="button" class="adm-time-btn active" onclick="switchTimeFilter('mtd', this)">MONTH TO DATE</button>
                        <button type="button" class="adm-time-btn" onclick="switchTimeFilter('quarter', this)">QUARTER</button>
                    </div>
                </div>

                <!-- Page Body Grid (Reference Image 2) -->
                <main class="adm-dashboard-body">

                    <!-- 4 Top KPI Metric Cards -->
                    <div class="adm-metric-cards-grid">
                        
                        <!-- 1. TOTAL SALES -->
                        <div class="adm-stat-card">
                            <div class="adm-stat-top">
                                <span class="adm-stat-label">TOTAL SALES</span>
                                <svg class="adm-stat-icon" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <rect x="2" y="4" width="20" height="16" rx="2"></rect>
                                    <line x1="2" y1="10" x2="22" y2="10"></line>
                                </svg>
                            </div>
                            <div class="adm-stat-val" id="valTotalSales">&#8377;18,42,850</div>
                            <div class="adm-stat-bottom">
                                <span class="stat-trend-pill" style="color:#059669;">&uarr; +14.8%</span>
                                <span class="stat-trend-sub">from last month</span>
                            </div>
                        </div>

                        <!-- 2. TOTAL ORDERS -->
                        <div class="adm-stat-card">
                            <div class="adm-stat-top">
                                <span class="adm-stat-label">TOTAL ORDERS</span>
                                <svg class="adm-stat-icon" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                                    <polyline points="14 2 14 8 20 8"></polyline>
                                </svg>
                            </div>
                            <div class="adm-stat-val" id="valTotalOrders">742 Orders</div>
                            <div class="adm-stat-bottom">
                                <span class="stat-trend-pill">&#10003; 98%</span>
                                <span class="stat-trend-sub">fulfilled</span>
                            </div>
                        </div>

                        <!-- 3. TOTAL PRODUCTS -->
                        <div class="adm-stat-card">
                            <div class="adm-stat-top">
                                <span class="adm-stat-label">TOTAL PRODUCTS</span>
                                <svg class="adm-stat-icon" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M20.38 3.46 16 2a4 4 0 0 1-8 0L3.62 3.46a2 2 0 0 0-1.34 2.23l.58 3.47a1 1 0 0 0 .99.84H6v10c0 1.1.9 2 2 2h8a2 2 0 0 0 2-2V10h2.15a1 1 0 0 0 .99-.84l.58-3.47a2 2 0 0 0-1.34-2.23z"></path>
                                </svg>
                            </div>
                            <div class="adm-stat-val">28 Products</div>
                            <div class="stat-category-pills">
                                <span class="stat-cat-tag">REGULAR</span>
                                <span class="stat-cat-tag">SLIM</span>
                                <span class="stat-cat-tag">BAGGY</span>
                                <span class="stat-cat-tag">KOREAN</span>
                            </div>
                        </div>

                        <!-- 4. LOW STOCK ALERT -->
                        <div class="adm-stat-card">
                            <div class="adm-stat-top">
                                <span class="adm-stat-label" style="color:#9A3412;">LOW STOCK ALERT</span>
                                <svg class="adm-stat-icon" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#9A3412" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <polyline points="21 8 21 21 3 21 3 8"></polyline>
                                    <rect x="1" y="3" width="22" height="5"></rect>
                                    <line x1="10" y1="12" x2="14" y2="12"></line>
                                </svg>
                            </div>
                            <div class="adm-stat-val low-stock">3 Low Items</div>
                            <div class="adm-stat-bottom">
                                <span class="stat-reorder-tag">Needs reorder</span>
                                <a href="Products.aspx?filter=low-stock" class="stat-view-link">VIEW ITEMS</a>
                            </div>
                        </div>

                    </div>

                    <!-- 3 Middle Widgets Row (Reference Image 2) -->
                    <div class="adm-widgets-row">

                        <!-- Widget 1: Order Fulfillment Status -->
                        <div class="adm-widget-card">
                            <div>
                                <div class="adm-widget-header">
                                    <div class="adm-widget-title-wrap">
                                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <rect x="1" y="3" width="15" height="13"></rect>
                                            <polygon points="16 8 20 8 23 11 23 16 16 16 16 8"></polygon>
                                            <circle cx="5.5" cy="18.5" r="2.5"></circle>
                                            <circle cx="18.5" cy="18.5" r="2.5"></circle>
                                        </svg>
                                        <h3 class="adm-widget-title">Order Fulfillment Status</h3>
                                    </div>
                                    <span class="adm-widget-pill">ACTIVE</span>
                                </div>

                                <div class="fulfillment-list">
                                    <div class="fulfillment-item">
                                        <div class="fulfillment-left">
                                            <span class="status-dot-grey"></span>
                                            <span>Pending / Processing</span>
                                        </div>
                                        <span class="fulfillment-count">18 Orders</span>
                                    </div>

                                    <div class="fulfillment-item">
                                        <div class="fulfillment-left">
                                            <span class="status-dot-grey"></span>
                                            <span>Ready to Dispatch</span>
                                        </div>
                                        <span class="fulfillment-count">34 Orders</span>
                                    </div>

                                    <div class="fulfillment-item highlight">
                                        <div class="fulfillment-left">
                                            <span class="status-dot-orange"></span>
                                            <span>In Transit</span>
                                        </div>
                                        <span class="fulfillment-count">42 Orders</span>
                                    </div>

                                    <div class="fulfillment-item">
                                        <div class="fulfillment-left">
                                            <span class="status-dot-grey"></span>
                                            <span>Delivered (Today)</span>
                                        </div>
                                        <span class="fulfillment-count">112 Orders</span>
                                    </div>
                                </div>
                            </div>

                            <div class="widget-foot-note">
                                Total processed today: 206 orders
                            </div>
                        </div>

                        <!-- Widget 2: Top Selling Products -->
                        <div class="adm-widget-card">
                            <div>
                                <div class="adm-widget-header">
                                    <div class="adm-widget-title-wrap">
                                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <polyline points="23 6 13.5 15.5 8.5 10.5 1 18"></polyline>
                                            <polyline points="17 6 23 6 23 12"></polyline>
                                        </svg>
                                        <h3 class="adm-widget-title">Top Selling Products</h3>
                                    </div>
                                    <span class="adm-widget-pill">THIS MONTH</span>
                                </div>

                                <div class="top-products-list">
                                    <div class="top-product-item">
                                        <div>
                                            <div class="top-product-name">Korean Pleated Trousers</div>
                                            <div class="top-product-units">312 units sold</div>
                                        </div>
                                        <div class="top-product-rev">&#8377;7,17,288</div>
                                    </div>

                                    <div class="top-product-item">
                                        <div>
                                            <div class="top-product-name">Slim Fit Chinos</div>
                                            <div class="top-product-units">215 units sold</div>
                                        </div>
                                        <div class="top-product-rev">&#8377;4,29,785</div>
                                    </div>

                                    <div class="top-product-item">
                                        <div>
                                            <div class="top-product-name">Osaka Wide-Leg Twill</div>
                                            <div class="top-product-units">140 units sold</div>
                                        </div>
                                        <div class="top-product-rev">&#8377;3,77,860</div>
                                    </div>

                                    <div class="top-product-item">
                                        <div>
                                            <div class="top-product-name">Regular Fit Linen</div>
                                            <div class="top-product-units">75 units sold</div>
                                        </div>
                                        <div class="top-product-rev">&#8377;1,87,425</div>
                                    </div>
                                </div>
                            </div>

                            <a href="Products.aspx" class="widget-foot-link">VIEW PRODUCT CATALOG &rarr;</a>
                        </div>

                        <!-- Widget 3: Key Metrics Summary -->
                        <div class="adm-widget-card">
                            <div>
                                <div class="adm-widget-header">
                                    <div class="adm-widget-title-wrap">
                                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <line x1="18" y1="20" x2="18" y2="10"></line>
                                            <line x1="12" y1="20" x2="12" y2="4"></line>
                                            <line x1="6" y1="20" x2="6" y2="14"></line>
                                        </svg>
                                        <h3 class="adm-widget-title">Key Metrics Summary</h3>
                                    </div>
                                    <span class="adm-widget-pill">SNAPSHOT</span>
                                </div>

                                <div class="snapshot-grid-2x2">
                                    <div>
                                        <div class="snapshot-box-label">AVERAGE ORDER</div>
                                        <div class="snapshot-box-val">&#8377;2,484</div>
                                        <div class="snapshot-box-sub">1.8 items / order</div>
                                    </div>

                                    <div>
                                        <div class="snapshot-box-label">RETURN RATE</div>
                                        <div class="snapshot-box-val copper">1.4%</div>
                                        <div class="snapshot-box-sub" style="color:#059669;">Healthy (&lt;3% target)</div>
                                    </div>

                                    <div>
                                        <div class="snapshot-box-label">TODAY'S REVENUE</div>
                                        <div class="snapshot-box-val">&#8377;64,200</div>
                                        <div class="snapshot-box-sub">Across 26 orders</div>
                                    </div>

                                    <div>
                                        <div class="snapshot-box-label">REPEAT CUSTOMERS</div>
                                        <div class="snapshot-box-val">28%</div>
                                        <div class="snapshot-box-sub green">+2.4% vs last month</div>
                                    </div>
                                </div>
                            </div>

                            <div class="widget-foot-note">
                                Updated 5 minutes ago
                            </div>
                        </div>

                    </div>

                    <!-- Bottom Section: RECENT ORDERS Table (Reference Image 2) -->
                    <div class="adm-recent-orders-card">
                        <div class="recent-orders-header">
                            <div class="recent-orders-title-wrap">
                                <h2 class="recent-orders-title">RECENT ORDERS</h2>
                                <span class="recent-orders-count-badge">5 ORDERS</span>
                            </div>

                            <a href="Orders.aspx" class="link-view-all-orders">
                                <span>VIEW ALL ORDERS</span>
                                <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                                    <line x1="5" y1="12" x2="19" y2="12"></line>
                                    <polyline points="12 5 19 12 12 19"></polyline>
                                </svg>
                            </a>
                        </div>

                        <div style="overflow-x:auto;">
                            <table class="adm-orders-table">
                                <thead>
                                    <tr>
                                        <th>ORDER ID</th>
                                        <th>CUSTOMER</th>
                                        <th>PRODUCT</th>
                                        <th>DATE &amp; TIME</th>
                                        <th>STATUS</th>
                                        <th>AMOUNT</th>
                                        <th style="text-align:right;">ACTION</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- Order 1: Matches user's real placed order -->
                                    <tr>
                                        <td><span class="col-order-id">#ORD-9241</span></td>
                                        <td><span class="col-cust-name">Aditya Sharma</span></td>
                                        <td>
                                            <div class="col-product-wrap">
                                                <span class="col-product-name">Seoul Pleated Pants</span>
                                                <div>
                                                    <span class="col-product-meta-pill">Sz 32</span>
                                                    <span style="font-size:11px; color:#888;">+ 2 items</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td><span class="col-date-text">26 Oct, 10:14 AM</span></td>
                                        <td>
                                            <span class="pill-status in-transit">
                                                <span style="width:5px; height:5px; border-radius:50%; background:currentColor;"></span>
                                                <span>IN TRANSIT</span>
                                            </span>
                                        </td>
                                        <td><span class="col-amount">&#8377;6,997</span></td>
                                        <td style="text-align:right;">
                                            <a href="OrderDetail.aspx?id=ORD-9241" class="btn-view-order">VIEW ORDER</a>
                                        </td>
                                    </tr>

                                    <!-- Order 2 -->
                                    <tr>
                                        <td><span class="col-order-id">#ORD-8810</span></td>
                                        <td><span class="col-cust-name">Vikram Malhotra</span></td>
                                        <td>
                                            <div class="col-product-wrap">
                                                <span class="col-product-name">The Como Linen Trouser</span>
                                                <span class="col-product-meta-pill">Sz 32</span>
                                            </div>
                                        </td>
                                        <td><span class="col-date-text">25 Oct, 04:30 PM</span></td>
                                        <td>
                                            <span class="pill-status delivered">
                                                <span style="width:5px; height:5px; border-radius:50%; background:currentColor;"></span>
                                                <span>DELIVERED</span>
                                            </span>
                                        </td>
                                        <td><span class="col-amount">&#8377;2,499</span></td>
                                        <td style="text-align:right;">
                                            <a href="OrderDetail.aspx?id=ORD-8810" class="btn-view-order">VIEW ORDER</a>
                                        </td>
                                    </tr>

                                    <!-- Order 3 -->
                                    <tr>
                                        <td><span class="col-order-id">#ORD-8492</span></td>
                                        <td><span class="col-cust-name">Rohan Desai</span></td>
                                        <td>
                                            <div class="col-product-wrap">
                                                <span class="col-product-name">Gangnam Fluid Trouser</span>
                                                <span class="col-product-meta-pill">Sz 34</span>
                                            </div>
                                        </td>
                                        <td><span class="col-date-text">25 Oct, 01:15 PM</span></td>
                                        <td>
                                            <span class="pill-status in-transit">
                                                <span style="width:5px; height:5px; border-radius:50%; background:currentColor;"></span>
                                                <span>IN TRANSIT</span>
                                            </span>
                                        </td>
                                        <td><span class="col-amount">&#8377;2,499</span></td>
                                        <td style="text-align:right;">
                                            <a href="OrderDetail.aspx?id=ORD-8492" class="btn-view-order">VIEW ORDER</a>
                                        </td>
                                    </tr>

                                    <!-- Order 4 -->
                                    <tr>
                                        <td><span class="col-order-id">#ORD-7819</span></td>
                                        <td><span class="col-cust-name">Sameer Kapoor</span></td>
                                        <td>
                                            <div class="col-product-wrap">
                                                <span class="col-product-name">Osaka Wide-Leg Twill</span>
                                                <div>
                                                    <span class="col-product-meta-pill">Sz 30</span>
                                                    <span style="font-size:11px; color:#888;">+ 1 item</span>
                                                </div>
                                            </div>
                                        </td>
                                        <td><span class="col-date-text">24 Oct, 06:45 PM</span></td>
                                        <td>
                                            <span class="pill-status delivered">
                                                <span style="width:5px; height:5px; border-radius:50%; background:currentColor;"></span>
                                                <span>DELIVERED</span>
                                            </span>
                                        </td>
                                        <td><span class="col-amount">&#8377;5,198</span></td>
                                        <td style="text-align:right;">
                                            <a href="OrderDetail.aspx?id=ORD-7819" class="btn-view-order">VIEW ORDER</a>
                                        </td>
                                    </tr>

                                    <!-- Order 5 -->
                                    <tr>
                                        <td><span class="col-order-id">#ORD-7452</span></td>
                                        <td><span class="col-cust-name">Kunal Verma</span></td>
                                        <td>
                                            <div class="col-product-wrap">
                                                <span class="col-product-name">Kensington Worsted Wool</span>
                                                <span class="col-product-meta-pill">Sz 32</span>
                                            </div>
                                        </td>
                                        <td><span class="col-date-text">24 Oct, 11:20 AM</span></td>
                                        <td>
                                            <span class="pill-status pending">
                                                <span style="width:5px; height:5px; border-radius:50%; background:currentColor;"></span>
                                                <span>PENDING</span>
                                            </span>
                                        </td>
                                        <td><span class="col-amount">&#8377;3,299</span></td>
                                        <td style="text-align:right;">
                                            <a href="OrderDetail.aspx?id=ORD-7452" class="btn-view-order">VIEW ORDER</a>
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
        function switchTimeFilter(period, btn) {
            var btns = document.querySelectorAll('.adm-time-btn');
            for (var i = 0; i < btns.length; i++) btns[i].classList.remove('active');
            btn.classList.add('active');

            var valSales = document.getElementById('valTotalSales');
            var valOrders = document.getElementById('valTotalOrders');

            if (period === 'today') {
                valSales.innerHTML = '&#8377;64,200';
                valOrders.innerText = '26 Orders';
            } else if (period === '7days') {
                valSales.innerHTML = '&#8377;4,12,600';
                valOrders.innerText = '168 Orders';
            } else if (period === 'mtd') {
                valSales.innerHTML = '&#8377;18,42,850';
                valOrders.innerText = '742 Orders';
            } else if (period === 'quarter') {
                valSales.innerHTML = '&#8377;52,90,100';
                valOrders.innerText = '2,140 Orders';
            }
        }
    </script>
</body>
</html>
