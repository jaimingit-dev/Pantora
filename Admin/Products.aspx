<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Pantora.Admin.Products" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Trouser Inventory &bull; Pantora Atelier Admin</title>

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
    <form id="formAdminProducts" runat="server">

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
                    <div class="adm-topbar-breadcrumb">ADMIN DASHBOARD / PRODUCTS</div>

                    <div class="adm-topbar-actions">
                        <span class="adm-live-badge">
                            <span class="adm-live-dot"></span>
                            <span>INVENTORY SYNCED</span>
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
                        <span class="adm-sub-tag">&bull; CATALOG OVERVIEW &bull; 28 SILHOUETTES</span>
                        <h1 class="adm-page-title">Trouser Inventory</h1>
                    </div>

                    <a href="AddProduct.aspx" class="btn-adm-primary" style="text-decoration:none; display:inline-flex; align-items:center;">
                        <span>+ Add New Trouser</span>
                    </a>
                </div>

                <!-- Body -->
                <main class="adm-dashboard-body">

                    <!-- Filter Bar -->
                    <div class="adm-action-header-row">
                        <div class="adm-time-filters">
                            <button type="button" class="adm-time-btn active" onclick="filterCut('all', this)">ALL CUTS (28)</button>
                            <button type="button" class="adm-time-btn" onclick="filterCut('regular', this)">REGULAR FIT</button>
                            <button type="button" class="adm-time-btn" onclick="filterCut('slim', this)">SLIM FIT</button>
                            <button type="button" class="adm-time-btn" onclick="filterCut('baggy', this)">BAGGY FIT</button>
                            <button type="button" class="adm-time-btn" onclick="filterCut('korean', this)">KOREAN CUT</button>
                            <button type="button" class="adm-time-btn" onclick="filterCut('low', this)" style="color:#9A3412;">LOW STOCK (3)</button>
                        </div>

                        <input type="text" id="txtProductSearch" class="adm-search-input" placeholder="Search trousers, fabrics, colors..." onkeyup="searchProducts(this.value)" />
                    </div>

                    <!-- Products Table Card -->
                    <div class="adm-recent-orders-card">
                        <div style="overflow-x:auto;">
                            <table class="adm-orders-table" id="tblProducts">
                                <thead>
                                    <tr>
                                        <th>THUMB</th>
                                        <th>TROUSER SILHOUETTE</th>
                                        <th>FIT CUT</th>
                                        <th>FABRIC &amp; COLOR</th>
                                        <th>PRICE</th>
                                        <th>STOCK AVAILABLE</th>
                                        <th>STATUS</th>
                                        <th style="text-align:right;">ACTIONS</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <!-- Korean Cut 1 -->
                                    <tr data-cut="korean" data-stock="high">
                                        <td><img src="../Images/product-seoul-pleated.jpg" alt="Seoul Pleated" class="product-thumb-sm" /></td>
                                        <td>
                                            <div style="font-weight:700;">Seoul Pleated Straight Pants</div>
                                            <div style="font-size:11px; color:#888;">SKU: #KR-SEO-01</div>
                                        </td>
                                        <td><span class="stat-cat-tag" style="background:#FAF5F0; color:#C08054;">KOREAN CUT</span></td>
                                        <td>Deep Onyx &bull; Gabardine Fluid Drape</td>
                                        <td><strong>&#8377;2,299</strong></td>
                                        <td><strong>48 units</strong></td>
                                        <td><span class="pill-status delivered">IN STOCK</span></td>
                                        <td style="text-align:right;">
                                            <a href="AddProduct.aspx?id=P-01" class="btn-view-order" style="text-decoration:none; display:inline-block;">EDIT</a>
                                        </td>
                                    </tr>

                                    <!-- Korean Cut 2 -->
                                    <tr data-cut="korean" data-stock="low">
                                        <td><img src="../Images/korean-gangnam-fluid.png" alt="Gangnam Fluid" class="product-thumb-sm" /></td>
                                        <td>
                                            <div style="font-weight:700;">Gangnam Fluid Trouser</div>
                                            <div style="font-size:11px; color:#888;">SKU: #KR-GAN-02</div>
                                        </td>
                                        <td><span class="stat-cat-tag" style="background:#FAF5F0; color:#C08054;">KOREAN CUT</span></td>
                                        <td>Chocolate Brown &bull; Micro-Fluid Weave</td>
                                        <td><strong>&#8377;2,499</strong></td>
                                        <td><strong style="color:#9A3412;">4 units</strong></td>
                                        <td><span class="pill-status in-transit">LOW STOCK</span></td>
                                        <td style="text-align:right;">
                                            <a href="AddProduct.aspx?id=P-02" class="btn-view-order" style="text-decoration:none; display:inline-block;">EDIT</a>
                                        </td>
                                    </tr>

                                    <!-- Regular Fit 1 -->
                                    <tr data-cut="regular" data-stock="high">
                                        <td><img src="../Images/product-como-linen.jpg" alt="Como Linen" class="product-thumb-sm" /></td>
                                        <td>
                                            <div style="font-weight:700;">The Como Linen Trouser</div>
                                            <div style="font-size:11px; color:#888;">SKU: #RG-COM-01</div>
                                        </td>
                                        <td><span class="stat-cat-tag">REGULAR FIT</span></td>
                                        <td>Sand Khaki &bull; 100% Belgian Flax</td>
                                        <td><strong>&#8377;2,499</strong></td>
                                        <td><strong>62 units</strong></td>
                                        <td><span class="pill-status delivered">IN STOCK</span></td>
                                        <td style="text-align:right;">
                                            <a href="AddProduct.aspx?id=P-02" class="btn-view-order" style="text-decoration:none; display:inline-block;">EDIT</a>
                                        </td>
                                    </tr>

                                    <!-- Slim Fit 1 -->
                                    <tr data-cut="slim" data-stock="low">
                                        <td><img src="../Images/slim-atelier-chino.png" alt="Atelier Slim Chino" class="product-thumb-sm" /></td>
                                        <td>
                                            <div style="font-weight:700;">Atelier Daily Slim Chino</div>
                                            <div style="font-size:11px; color:#888;">SKU: #SL-ATE-01</div>
                                        </td>
                                        <td><span class="stat-cat-tag">SLIM FIT</span></td>
                                        <td>Rich Navy &bull; Double-Mercerized Cotton</td>
                                        <td><strong>&#8377;2,399</strong></td>
                                        <td><strong style="color:#9A3412;">2 units</strong></td>
                                        <td><span class="pill-status in-transit">LOW STOCK</span></td>
                                        <td style="text-align:right;">
                                            <a href="AddProduct.aspx?id=P-03" class="btn-view-order" style="text-decoration:none; display:inline-block;">EDIT</a>
                                        </td>
                                    </tr>

                                    <!-- Baggy Fit 1 -->
                                    <tr data-cut="baggy" data-stock="high">
                                        <td><img src="../Images/baggy-osaka-twill.png" alt="Osaka Twill" class="product-thumb-sm" /></td>
                                        <td>
                                            <div style="font-weight:700;">Osaka Wide-Leg Twill Trouser</div>
                                            <div style="font-size:11px; color:#888;">SKU: #BG-OSA-01</div>
                                        </td>
                                        <td><span class="stat-cat-tag">BAGGY FIT</span></td>
                                        <td>Desert Ecru &bull; Heavy Drill Cotton</td>
                                        <td><strong>&#8377;2,699</strong></td>
                                        <td><strong>34 units</strong></td>
                                        <td><span class="pill-status delivered">IN STOCK</span></td>
                                        <td style="text-align:right;">
                                            <a href="AddProduct.aspx?id=P-04" class="btn-view-order" style="text-decoration:none; display:inline-block;">EDIT</a>
                                        </td>
                                    </tr>

                                    <!-- Slim Fit 2 -->
                                    <tr data-cut="slim" data-stock="high">
                                        <td><img src="../Images/slim-kensington-wool.png" alt="Kensington Wool" class="product-thumb-sm" /></td>
                                        <td>
                                            <div style="font-weight:700;">Kensington Fine Worsted Wool</div>
                                            <div style="font-size:11px; color:#888;">SKU: #SL-KEN-02</div>
                                        </td>
                                        <td><span class="stat-cat-tag">SLIM FIT</span></td>
                                        <td>Midnight Black &bull; 130s Pure Wool</td>
                                        <td><strong>&#8377;3,299</strong></td>
                                        <td><strong>19 units</strong></td>
                                        <td><span class="pill-status delivered">IN STOCK</span></td>
                                        <td style="text-align:right;">
                                            <a href="AddProduct.aspx?id=P-03" class="btn-view-order" style="text-decoration:none; display:inline-block;">EDIT</a>
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
        function filterCut(cut, btn) {
            var btns = document.querySelectorAll('.adm-time-filters .adm-time-btn');
            for (var i = 0; i < btns.length; i++) btns[i].classList.remove('active');
            btn.classList.add('active');

            var rows = document.querySelectorAll('#tblProducts tbody tr');
            for (var j = 0; j < rows.length; j++) {
                var r = rows[j];
                var rowCut = r.getAttribute('data-cut');
                var stock = r.getAttribute('data-stock');

                if (cut === 'all') {
                    r.style.display = '';
                } else if (cut === 'low') {
                    r.style.display = (stock === 'low') ? '' : 'none';
                } else {
                    r.style.display = (rowCut === cut) ? '' : 'none';
                }
            }
        }

        function searchProducts(query) {
            var q = query.toLowerCase();
            var rows = document.querySelectorAll('#tblProducts tbody tr');
            for (var i = 0; i < rows.length; i++) {
                var text = rows[i].innerText.toLowerCase();
                rows[i].style.display = (text.indexOf(q) !== -1) ? '' : 'none';
            }
        }
    </script>
</body>
</html>
