<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Account.aspx.cs" Inherits="Pantora.Account" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>My Account &bull; Pantora Atelier</title>

    <!-- Typography -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin="anonymous" />
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" />

    <!-- Stylesheets -->
    <link href="Content/Home.css" rel="stylesheet" type="text/css" />
    <link href="Content/Account.css" rel="stylesheet" type="text/css" />
    <link href="favicon.ico" rel="shortcut icon" type="image/x-icon" />
</head>
<body>
    <form id="form1" runat="server">

        <!-- ------------------------------------------------------------------
             Site Header
             ------------------------------------------------------------------ -->
        <header class="pantora-header">
            <div class="header-inner">
                <!-- Brand Wordmark -->
                <a href="Default.aspx" class="pantora-brand">
                    PANTORA<span class="brand-dot"></span>
                </a>

                <!-- Navigation Links -->
                <nav class="main-nav">
                    <a href="Default.aspx" class="nav-link">Home</a>
                    <a href="Default.aspx#shop-by-fit" class="nav-link">Shop</a>
                    <a href="SizeGuide.aspx" class="nav-link">Size Guide</a>
                    <a href="Default.aspx#fit-intelligence" class="nav-link">About</a>
                    <a href="Default.aspx#private-dispatch" class="nav-link">Contact</a>
                </nav>

                <!-- Header Utility Icons -->
                <div class="header-utilities">
                    <!-- Wishlist Icon with Badge -->
                    <a href="Wishlist.aspx" class="icon-btn wishlist-icon-wrap" title="My Wishlist">
                        <svg width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                        </svg>
                        <span class="wishlist-badge" id="headerWishlistBadge">4</span>
                    </a>

                    <!-- Cart Bag with Badge -->
                    <a href="Cart.aspx" class="icon-btn cart-icon-wrap" title="Shopping Bag">
                        <svg width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path>
                            <line x1="3" y1="6" x2="21" y2="6"></line>
                            <path d="M16 10a4 4 0 0 1-8 0"></path>
                        </svg>
                        <span class="cart-count-badge" id="headerCartCount" style="display:none;">0</span>
                    </a>

                    <!-- User Account Icon (Active Page) -->
                    <a href="Account.aspx" class="icon-btn" title="My Account" style="color:#C08054;">
                        <svg width="19" height="19" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                            <circle cx="12" cy="7" r="4"></circle>
                        </svg>
                    </a>
                </div>
            </div>
        </header>

        <!-- ------------------------------------------------------------------
             My Account Page Body
             ------------------------------------------------------------------ -->
        <main class="account-page-wrapper">

            <!-- Breadcrumb Navigation -->
            <div class="account-breadcrumb">
                <a href="Default.aspx">Home</a>
                <span class="sep">&rsaquo;</span>
                <span class="current" id="lblBreadcrumbCurrent">My Account</span>
            </div>

            <!-- Header Bar -->
            <div class="account-header-bar">
                <div>
                    <span class="account-super-tag">ACCOUNT DASHBOARD</span>
                    <h1 class="account-main-title">My Account</h1>
                    <p class="account-welcome-sub">Welcome back, <strong id="accGreetingName"><%= CurrentUserName %></strong></p>
                </div>

                <div>
                    <div class="account-member-pill">
                        <span class="member-dot"></span>
                        <span>MEMBER &bull; ACTIVE SINCE 2024</span>
                    </div>
                </div>
            </div>

            <!-- 2-Column Account Layout Grid -->
            <div class="account-layout-grid">

                <!-- Left Column: Navigation Sidebar Card -->
                <aside class="account-sidebar-card">

                    <!-- User Profile Snippet -->
                    <div class="sidebar-user-profile">
                        <div class="user-avatar-circle" id="accAvatarInitials">
                            <%= CurrentUserInitials %>
                        </div>
                        <div class="user-profile-meta">
                            <div class="user-profile-name" id="accSidebarName"><%= CurrentUserName %></div>
                            <div class="user-profile-email" id="accSidebarEmail"><%= CurrentUserEmail %></div>
                        </div>
                    </div>

                    <!-- Navigation Menu -->
                    <nav class="account-nav-list">
                        <a href="javascript:void(0)" class="account-nav-item active" onclick="switchAccountTab('orders', this)">
                            <div class="account-nav-item-left">
                                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z"></path>
                                    <line x1="3" y1="6" x2="21" y2="6"></line>
                                    <path d="M16 10a4 4 0 0 1-8 0"></path>
                                </svg>
                                <span>My Orders</span>
                            </div>
                            <span class="nav-badge-count" id="navOrdersBadge">3</span>
                        </a>

                        <a href="Wishlist.aspx" class="account-nav-item">
                            <div class="account-nav-item-left">
                                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                                </svg>
                                <span>My Wishlist</span>
                            </div>
                            <span class="nav-badge-count" id="sidebarWishlistBadge">4</span>
                        </a>

                        <a href="javascript:void(0)" class="account-nav-item" onclick="switchAccountTab('profile', this)">
                            <div class="account-nav-item-left">
                                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                    <circle cx="12" cy="7" r="4"></circle>
                                </svg>
                                <span>Personal Details</span>
                            </div>
                        </a>

                        <a href="javascript:void(0)" class="account-nav-item" onclick="switchAccountTab('addresses', this)">
                            <div class="account-nav-item-left">
                                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path>
                                    <circle cx="12" cy="10" r="3"></circle>
                                </svg>
                                <span>Saved Addresses</span>
                            </div>
                            <span class="nav-badge-count">2</span>
                        </a>

                        <a href="javascript:void(0)" class="account-nav-item" onclick="switchAccountTab('payments', this)">
                            <div class="account-nav-item-left">
                                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect>
                                    <line x1="1" y1="10" x2="23" y2="10"></line>
                                </svg>
                                <span>Payment Methods</span>
                            </div>
                        </a>

                        <a href="javascript:void(0)" class="account-nav-item" onclick="switchAccountTab('returns', this)">
                            <div class="account-nav-item-left">
                                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <polyline points="1 4 1 10 7 10"></polyline>
                                    <polyline points="23 20 23 14 17 14"></polyline>
                                    <path d="M20.49 9A9 9 0 0 0 5.64 5.64L1 10m22 4l-4.64 4.36A9 9 0 0 1 3.51 15"></path>
                                </svg>
                                <span>Returns &amp; Exchanges</span>
                            </div>
                            <span class="nav-badge-count" style="background:#FAF5F0; color:#C08054;">1</span>
                        </a>

                        <a href="javascript:void(0)" class="account-nav-item" onclick="switchAccountTab('support', this)">
                            <div class="account-nav-item-left">
                                <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <circle cx="12" cy="12" r="10"></circle>
                                    <path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path>
                                    <line x1="12" y1="17" x2="12.01" y2="17"></line>
                                </svg>
                                <span>Help &amp; Support</span>
                            </div>
                        </a>
                    </nav>

                    <div class="sidebar-nav-divider"></div>

                    <!-- Easy & Standard Logout Button -->
                    <asp:LinkButton ID="btnLogout" runat="server" CssClass="account-logout-btn" OnClick="btnLogout_Click" ToolTip="Sign out of your account">
                        <svg width="17" height="17" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                            <polyline points="16 17 21 12 16 7"></polyline>
                            <line x1="21" y1="12" x2="9" y2="12"></line>
                        </svg>
                        <span>Logout</span>
                    </asp:LinkButton>

                </aside>

                <!-- Right Column: Switchable Content Panels -->
                <section class="account-content-panel">

                    <!-- ==========================================================
                         TAB 1: MY ORDERS (Default)
                         ========================================================== -->
                    <div id="paneOrders" class="tab-pane active">
                        <div class="panel-header-row">
                            <h2 class="panel-title">Order History</h2>
                            
                            <!-- Filter Pills -->
                            <div class="orders-filter-row">
                                <button type="button" class="btn-filter-pill active" onclick="filterOrders('all', this)">All Orders (3)</button>
                                <button type="button" class="btn-filter-pill" onclick="filterOrders('in-transit', this)">In Transit (1)</button>
                                <button type="button" class="btn-filter-pill" onclick="filterOrders('delivered', this)">Delivered (2)</button>
                            </div>
                        </div>

                        <!-- Orders List Container -->
                        <div id="ordersListContainer">

                            <!-- Order 1: Active In Transit -->
                            <div class="order-card" data-status="in-transit" id="orderCard1">
                                <div class="order-card-header">
                                    <div class="order-header-info">
                                        <div class="order-header-col">
                                            <span class="order-header-label">Order Reference</span>
                                            <span class="order-header-val" id="order1Ref">#PN-9241-ATELIER</span>
                                        </div>
                                        <div class="order-header-col">
                                            <span class="order-header-label">Placed On</span>
                                            <span class="order-header-val" id="order1Date">26 Oct 2026</span>
                                        </div>
                                        <div class="order-header-col">
                                            <span class="order-header-label">Total Amount</span>
                                            <span class="order-header-val" id="order1Total">&#8377;6,997 (3 Items)</span>
                                        </div>
                                    </div>

                                    <div>
                                        <span class="order-status-badge in-transit">
                                            <span class="member-dot" style="background:#B45309;"></span>
                                            <span>IN TRANSIT</span>
                                        </span>
                                    </div>
                                </div>

                                <div class="order-card-body">
                                    <div class="order-items-summary">
                                        <div class="order-item-names" id="order1Names">
                                            Seoul Pleated Straight (32), Osaka Wide-Leg Twill (34), Atelier Slim Chino (32)
                                        </div>
                                        <div class="order-item-fabrics">
                                            Fabrics: Wool Blend Crepe, 14oz Japanese Twill &amp; Pima Stretch Cotton
                                        </div>
                                        <div class="order-thumbs-row" id="order1Thumbs">
                                            <img src="Images/korean-seoul-pleat.png" alt="Seoul Pleated Straight" class="order-thumb-mini" />
                                            <img src="Images/baggy-osaka-twill.png" alt="Osaka Wide-Leg Twill" class="order-thumb-mini" />
                                            <img src="Images/slim-belgravia-chino.png" alt="Atelier Slim Chino" class="order-thumb-mini" />
                                            <span class="order-thumb-pill">3 ITEMS</span>
                                        </div>
                                    </div>

                                    <div class="order-delivery-box">
                                        <div class="delivery-box-title">DELIVERY STATUS</div>
                                        <div class="delivery-box-main" id="order1DelivMain">Estimated: 30 Oct 2026</div>
                                        <div class="delivery-box-sub">
                                            BlueDart Air Priority Express &bull; Tracking: BLD-8892014<br />
                                            Departed Mumbai Sort Facility
                                        </div>
                                    </div>
                                </div>

                                <div class="order-card-footer">
                                    <div class="order-footer-links">
                                        <a href="javascript:void(0)" onclick="printInvoice('#PN-9241-ATELIER', '6,997')">Download Invoice</a>
                                        <span style="color:#DDD;">&bull;</span>
                                        <a href="TrackOrder.aspx?order=%23PN-9241-ATELIER">View Full Details</a>
                                    </div>

                                    <div class="order-footer-actions">
                                        <a href="TrackOrder.aspx?order=%23PN-9241-ATELIER" class="btn-order-track" id="btnTrackOrder1">
                                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2" stroke-linecap="round" stroke-linejoin="round">
                                                <polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline>
                                            </svg>
                                            <span>Track Order</span>
                                        </a>
                                    </div>
                                </div>
                            </div>

                            <!-- Order 2: Delivered -->
                            <div class="order-card" data-status="delivered">
                                <div class="order-card-header">
                                    <div class="order-header-info">
                                        <div class="order-header-col">
                                            <span class="order-header-label">Order Reference</span>
                                            <span class="order-header-val">#PN-8810-ATELIER</span>
                                        </div>
                                        <div class="order-header-col">
                                            <span class="order-header-label">Placed On</span>
                                            <span class="order-header-val">14 Sep 2026</span>
                                        </div>
                                        <div class="order-header-col">
                                            <span class="order-header-label">Total Amount</span>
                                            <span class="order-header-val">&#8377;4,798 (2 Items)</span>
                                        </div>
                                    </div>

                                    <div>
                                        <span class="order-status-badge delivered">
                                            <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                                                <polyline points="20 6 9 17 4 12"></polyline>
                                            </svg>
                                            <span>DELIVERED</span>
                                        </span>
                                    </div>
                                </div>

                                <div class="order-card-body">
                                    <div class="order-items-summary">
                                        <div class="order-item-names">
                                            Gangnam Fluid Trouser (32), The Como Linen Trouser (32)
                                        </div>
                                        <div class="order-item-fabrics">
                                            Fabrics: Belgian Slub Flax Linen &amp; Micro-Tencel Fluid Suiting
                                        </div>
                                        <div class="order-thumbs-row">
                                            <img src="Images/korean-gangnam-fluid.png" alt="Gangnam Fluid Trouser" class="order-thumb-mini" />
                                            <img src="Images/product-como-linen.jpg" alt="The Como Linen Trouser" class="order-thumb-mini" />
                                            <span class="order-thumb-pill">2 ITEMS</span>
                                        </div>
                                    </div>

                                    <div class="order-delivery-box">
                                        <div class="delivery-box-title">DELIVERY COMPLETED</div>
                                        <div class="delivery-box-main">Delivered on 18 Sep 2026</div>
                                        <div class="delivery-box-sub">
                                            Handed over at Patron Residence &bull; Signed by Aditya Sharma
                                        </div>
                                    </div>
                                </div>

                                <div class="order-card-footer">
                                    <div class="order-footer-links">
                                        <a href="javascript:void(0)" onclick="printInvoice('#PN-8810-ATELIER', '4,798')">Download Invoice</a>
                                        <span style="color:#DDD;">&bull;</span>
                                        <a href="TrackOrder.aspx?order=%23PN-8810-ATELIER">View Delivery Details</a>
                                    </div>

                                    <div class="order-footer-actions">
                                        <button type="button" class="btn-order-reorder" onclick="openAccountReturnModal('Gangnam Fluid Trouser', '32')">
                                            <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                <polyline points="1 4 1 10 7 10"></polyline>
                                                <polyline points="23 20 23 14 17 14"></polyline>
                                                <path d="M20.49 9A9 9 0 0 0 5.64 5.64L1 10m22 4l-4.64 4.36A9 9 0 0 1 3.51 15"></path>
                                            </svg>
                                            <span>Return / Exchange</span>
                                        </button>
                                        <button type="button" class="btn-order-reorder" onclick="reorderItem('Gangnam Fluid Trouser', 2499, 'Images/korean-gangnam-fluid.png')">
                                            <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                <polyline points="1 4 1 10 7 10"></polyline>
                                                <path d="M3.51 15a9 9 0 1 0 2.13-9.36L1 10"></path>
                                            </svg>
                                            <span>Reorder</span>
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <!-- Order 3: Delivered -->
                            <div class="order-card" data-status="delivered">
                                <div class="order-card-header">
                                    <div class="order-header-info">
                                        <div class="order-header-col">
                                            <span class="order-header-label">Order Reference</span>
                                            <span class="order-header-val">#PN-7402-ATELIER</span>
                                        </div>
                                        <div class="order-header-col">
                                            <span class="order-header-label">Placed On</span>
                                            <span class="order-header-val">22 Jul 2026</span>
                                        </div>
                                        <div class="order-header-col">
                                            <span class="order-header-label">Total Amount</span>
                                            <span class="order-header-val">&#8377;2,299 (1 Item)</span>
                                        </div>
                                    </div>

                                    <div>
                                        <span class="order-status-badge delivered">
                                            <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                                                <polyline points="20 6 9 17 4 12"></polyline>
                                            </svg>
                                            <span>DELIVERED</span>
                                        </span>
                                    </div>
                                </div>

                                <div class="order-card-body">
                                    <div class="order-items-summary">
                                        <div class="order-item-names">
                                            Seoul Pleated Straight Pants - Charcoal Grey (32)
                                        </div>
                                        <div class="order-item-fabrics">
                                            Single Forward Pleat &bull; Extended Gurkha Waistband
                                        </div>
                                        <div class="order-thumbs-row">
                                            <img src="Images/korean-seoul-pleat.png" alt="Seoul Pleated Straight Pants" class="order-thumb-mini" />
                                            <span class="order-thumb-pill">1 ITEM</span>
                                        </div>
                                    </div>

                                    <div class="order-delivery-box">
                                        <div class="delivery-box-title">DELIVERY COMPLETED</div>
                                        <div class="delivery-box-main">Delivered on 26 Jul 2026</div>
                                        <div class="delivery-box-sub">
                                            Delivered to Residence (Lower Parel, Mumbai)
                                        </div>
                                    </div>
                                </div>

                                <div class="order-card-footer">
                                    <div class="order-footer-links">
                                        <a href="javascript:void(0)" onclick="printInvoice('#PN-7402-ATELIER', '2,299')">Download Invoice</a>
                                        <span style="color:#DDD;">&bull;</span>
                                        <a href="TrackOrder.aspx?order=%23PN-7402-ATELIER">View Delivery Details</a>
                                    </div>

                                    <div class="order-footer-actions">
                                        <button type="button" class="btn-order-reorder" onclick="openAccountReturnModal('Seoul Pleated Straight Pants', '32')">
                                            <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                <polyline points="1 4 1 10 7 10"></polyline>
                                                <polyline points="23 20 23 14 17 14"></polyline>
                                                <path d="M20.49 9A9 9 0 0 0 5.64 5.64L1 10m22 4l-4.64 4.36A9 9 0 0 1 3.51 15"></path>
                                            </svg>
                                            <span>Return / Exchange</span>
                                        </button>
                                        <button type="button" class="btn-order-reorder" onclick="reorderItem('Seoul Pleated Straight Pants', 2299, 'Images/korean-seoul-pleat.png')">
                                            <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                                <polyline points="1 4 1 10 7 10"></polyline>
                                                <path d="M3.51 15a9 9 0 1 0 2.13-9.36L1 10"></path>
                                            </svg>
                                            <span>Reorder</span>
                                        </button>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <!-- Complimentary Alteration Assistance Banner -->
                        <div class="account-support-banner">
                            <div>
                                <div class="support-banner-title">Need custom alterations on a past order?</div>
                                <div class="support-banner-desc">
                                    Every Pantora garment is backed by our 7-day complimentary doorstep alteration service. If your waist drape or inseam requires fine-tuning, our head tailor will assist you free of charge.
                                </div>
                            </div>
                            <div class="support-banner-btns">
                                <a href="javascript:void(0)" onclick="switchAccountTab('support')" class="btn-banner-black">Request Alteration</a>
                                <a href="SizeGuide.aspx" class="btn-banner-white">Size Guide</a>
                            </div>
                        </div>
                    </div>

                    <!-- ==========================================================
                         TAB 2: PERSONAL DETAILS / PROFILE
                         ========================================================== -->
                    <div id="paneProfile" class="tab-pane">
                        <div class="panel-header-row">
                            <h2 class="panel-title">Personal Details</h2>
                        </div>

                        <div class="account-form-card">
                            <div class="form-card-title">Basic Information</div>

                            <div class="acc-form-grid-2">
                                <div class="acc-form-group">
                                    <label class="acc-form-label">Full Name</label>
                                    <asp:TextBox ID="txtFullName" runat="server" CssClass="acc-form-input" Text="Aditya Sharma"></asp:TextBox>
                                </div>

                                <div class="acc-form-group">
                                    <label class="acc-form-label">Email Address</label>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="acc-form-input" Text="aditya.sharma@example.com"></asp:TextBox>
                                </div>
                            </div>

                            <div class="acc-form-grid-2">
                                <div class="acc-form-group">
                                    <label class="acc-form-label">Phone Number</label>
                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="acc-form-input" Text="+91 98201 44820"></asp:TextBox>
                                </div>

                                <div class="acc-form-group">
                                    <label class="acc-form-label">Preferred Waist Size</label>
                                    <asp:DropDownList ID="ddlSize" runat="server" CssClass="acc-form-input">
                                        <asp:ListItem Text="Size 30 (Small)" Value="30"></asp:ListItem>
                                        <asp:ListItem Text="Size 32 (Medium - Default)" Value="32" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="Size 34 (Large)" Value="34"></asp:ListItem>
                                        <asp:ListItem Text="Size 36 (Extra Large)" Value="36"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div style="margin-top:14px;">
                                <button type="button" class="btn-save-primary" onclick="savePersonalDetails()">
                                    <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                                        <polyline points="20 6 9 17 4 12"></polyline>
                                    </svg>
                                    <span>Save Profile Changes</span>
                                </button>
                            </div>
                        </div>

                        <!-- Change Password Card -->
                        <div class="account-form-card">
                            <div class="form-card-title">Change Password</div>

                            <div class="acc-form-grid-2">
                                <div class="acc-form-group">
                                    <label class="acc-form-label">Current Password</label>
                                    <input type="password" id="txtCurrentPass" class="acc-form-input" placeholder="Enter current password" />
                                </div>

                                <div class="acc-form-group">
                                    <label class="acc-form-label">New Password</label>
                                    <input type="password" id="txtNewPass" class="acc-form-input" placeholder="Minimum 6 characters" />
                                </div>
                            </div>

                            <div style="margin-top:10px;">
                                <button type="button" class="btn-save-primary" onclick="updatePassword()">
                                    <span>Update Password</span>
                                </button>
                            </div>
                        </div>
                    </div>

                    <!-- ==========================================================
                         TAB 3: SAVED ADDRESSES
                         ========================================================== -->
                    <div id="paneAddresses" class="tab-pane">
                        <div class="panel-header-row">
                            <h2 class="panel-title">Saved Delivery Addresses</h2>
                            <button type="button" class="btn-save-primary" style="padding:10px 18px; font-size:11px;" onclick="openAddressModal()">
                                + Add New Address
                            </button>
                        </div>

                        <div class="addresses-grid" id="addressesGrid">
                            <!-- Address 1: Home (Default) -->
                            <div class="address-card is-default">
                                <div class="address-badge-row">
                                    <span class="addr-type-pill">HOME</span>
                                    <span class="addr-default-pill">DEFAULT ADDRESS</span>
                                </div>
                                <div class="addr-name">Aditya Sharma</div>
                                <div class="addr-text">Flat 402, Lodha Bellissimo, NM Joshi Marg</div>
                                <div class="addr-text">Lower Parel, Mumbai, Maharashtra &bull; 400013</div>
                                <div class="addr-phone">Phone: +91 98201 44820</div>

                                <div class="addr-actions-row">
                                    <a href="javascript:void(0)" onclick="showToast('Address is already set as default')">Default</a>
                                    <span style="color:#DDD;">&bull;</span>
                                    <a href="javascript:void(0)" onclick="openAddressModal('Flat 402, Lodha Bellissimo', 'Lower Parel', '400013')">Edit</a>
                                </div>
                            </div>

                            <!-- Address 2: Office -->
                            <div class="address-card">
                                <div class="address-badge-row">
                                    <span class="addr-type-pill">OFFICE</span>
                                </div>
                                <div class="addr-name">Aditya Sharma (Studio)</div>
                                <div class="addr-text">Unit 803, Trade Tower, Kamala Mills Compound</div>
                                <div class="addr-text">Senapati Bapat Marg, Lower Parel, Mumbai &bull; 400013</div>
                                <div class="addr-phone">Phone: +91 98201 44820</div>

                                <div class="addr-actions-row">
                                    <a href="javascript:void(0)" onclick="showToast('Default delivery address updated to Office!')">Set as Default</a>
                                    <span style="color:#DDD;">&bull;</span>
                                    <a href="javascript:void(0)" onclick="openAddressModal('Unit 803, Trade Tower', 'Lower Parel', '400013')">Edit</a>
                                    <span style="color:#DDD;">&bull;</span>
                                    <a href="javascript:void(0)" onclick="showToast('Office address removed successfully')">Delete</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- ==========================================================
                         TAB 4: PAYMENT METHODS
                         ========================================================== -->
                    <div id="panePayments" class="tab-pane">
                        <div class="panel-header-row">
                            <h2 class="panel-title">Saved Payment Methods</h2>
                            <button type="button" class="btn-save-primary" style="padding:10px 18px; font-size:11px;" onclick="showToast('Secure payment gateway window initiated')">
                                + Add Payment Method
                            </button>
                        </div>

                        <div class="payments-grid">
                            <!-- UPI Payment -->
                            <div class="payment-method-card">
                                <div class="payment-icon-wrap">
                                    <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <polyline points="20 6 9 17 4 12"></polyline>
                                    </svg>
                                </div>
                                <div class="payment-meta">
                                    <div class="payment-title">Unified Payments Interface (UPI)</div>
                                    <div class="payment-sub">VPA: <strong>aditya@okhdfcbank</strong></div>
                                    <div class="payment-badge-verified">
                                        <svg width="11" height="11" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round">
                                            <polyline points="20 6 9 17 4 12"></polyline>
                                        </svg>
                                        <span>Instant Auto-Verify Active</span>
                                    </div>
                                </div>
                            </div>

                            <!-- Saved Credit Card -->
                            <div class="payment-method-card">
                                <div class="payment-icon-wrap">
                                    <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <rect x="1" y="4" width="22" height="16" rx="2" ry="2"></rect>
                                        <line x1="1" y1="10" x2="23" y2="10"></line>
                                    </svg>
                                </div>
                                <div class="payment-meta">
                                    <div class="payment-title">HDFC Bank Regalia Credit Card</div>
                                    <div class="payment-sub">&bull;&bull;&bull;&bull; &bull;&bull;&bull;&bull; &bull;&bull;&bull;&bull; <strong>4022</strong> (Exp 08/28)</div>
                                    <div class="payment-badge-verified">
                                        <span>256-Bit Encrypted</span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div style="font-size:12px; color:#888; margin-top:16px;">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="vertical-align:middle; margin-right:4px;">
                                <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
                                <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
                            </svg>
                            All payment credentials are tokenized through RBI-authorized payment aggregators (Razorpay / Stripe) and never stored on plain text servers.
                        </div>
                    </div>

                    <!-- ==========================================================
                         TAB 5: HELP & SUPPORT
                         ========================================================== -->
                    <div id="paneSupport" class="tab-pane">
                        <div class="panel-header-row">
                            <h2 class="panel-title">Help &amp; Customer Support</h2>
                        </div>

                        <!-- 3 Direct Contact Cards -->
                        <div class="support-cards-grid">
                            <div class="support-contact-box">
                                <div class="support-contact-icon">
                                    <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path>
                                    </svg>
                                </div>
                                <div class="support-contact-title">Phone Concierge</div>
                                <div class="support-contact-desc">+91 (0) 22 4589 1200<br />Mon&ndash;Sat, 10 AM &ndash; 7 PM IST</div>
                                <a href="tel:+912245891200" class="support-contact-btn">Call Now</a>
                            </div>

                            <div class="support-contact-box">
                                <div class="support-contact-icon">
                                    <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z"></path>
                                        <polyline points="22,6 12,13 2,6"></polyline>
                                    </svg>
                                </div>
                                <div class="support-contact-title">Email Desk</div>
                                <div class="support-contact-desc">concierge@pantora.in<br />Average response in 2 hours</div>
                                <a href="mailto:concierge@pantora.in" class="support-contact-btn">Email Us</a>
                            </div>

                            <div class="support-contact-box">
                                <div class="support-contact-icon">
                                    <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path>
                                    </svg>
                                </div>
                                <div class="support-contact-title">WhatsApp Desk</div>
                                <div class="support-contact-desc">Instant sizing advice &amp; order assistance</div>
                                <a href="https://wa.me/919820144820" target="_blank" class="support-contact-btn">Chat on WhatsApp</a>
                            </div>
                        </div>

                        <!-- FAQs List -->
                        <div class="faq-list">
                            <div class="faq-item">
                                <div class="faq-question">How does the 7-day complimentary alteration work?</div>
                                <div class="faq-answer">
                                    Every Pantora trouser includes free doorstep alteration within 7 days of package delivery. Simply contact our concierge or click "Request Alteration", and a tailor dispatch will arrange pickup and custom adjustments.
                                </div>
                            </div>
                            <div class="faq-item">
                                <div class="faq-question">What is the delivery timeline for tailored trousers?</div>
                                <div class="faq-answer">
                                    Metro city orders (Mumbai, Delhi NCR, Bangalore) are typically delivered within 3-4 business days. All packages are insured and dispatched via BlueDart Air Priority Express.
                                </div>
                            </div>
                            <div class="faq-item">
                                <div class="faq-question">Can I exchange an item for a different silhouette or size?</div>
                                <div class="faq-answer">
                                    Yes, we provide 14-day zero-friction exchanges across all metro areas with free doorstep pickup.
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- ==========================================================
                         TAB 6: RETURNS & EXCHANGES
                         ========================================================== -->
                    <div id="paneReturns" class="tab-pane">
                        <div class="panel-header-row">
                            <h2 class="panel-title">Returns &amp; Exchanges</h2>
                            <a href="Returns.aspx" class="btn-save-primary" style="padding:10px 18px; font-size:11px; text-decoration:none;">
                                View Full Policy &rarr;
                            </a>
                        </div>

                        <!-- Active Return Card -->
                        <div class="order-card" style="border-color:#F2E4D8;">
                            <div class="order-card-header" style="background:#FFFDFB;">
                                <div class="order-header-info">
                                    <div class="order-header-col">
                                        <span class="order-header-label">Request Reference</span>
                                        <span class="order-header-val" style="color:#C08054;">#RET-8492-EXCHANGE</span>
                                    </div>
                                    <div class="order-header-col">
                                        <span class="order-header-label">Requested On</span>
                                        <span class="order-header-val">Today</span>
                                    </div>
                                    <div class="order-header-col">
                                        <span class="order-header-label">Associated Order</span>
                                        <span class="order-header-val">#PN-8810-ATELIER</span>
                                    </div>
                                </div>

                                <div>
                                    <span class="order-status-badge in-transit">
                                        <span class="member-dot" style="background:#B45309;"></span>
                                        <span>PICKUP SCHEDULED &bull; TOMORROW</span>
                                    </span>
                                </div>
                            </div>

                            <div class="order-card-body">
                                <div class="order-items-summary">
                                    <div class="order-item-names">
                                        Gangnam Fluid Trouser &bull; Size Exchange
                                    </div>
                                    <div class="order-item-fabrics">
                                        Exchange Request: Size 32 in &rarr; Size 34 in (Requested: Waist too snug)
                                    </div>
                                    <div class="order-thumbs-row">
                                        <img src="Images/korean-gangnam-fluid.png" alt="Gangnam Fluid Trouser" class="order-thumb-mini" />
                                        <span class="order-thumb-pill" style="background:#FAF5F0; color:#C08054;">FREE SIZE EXCHANGE</span>
                                    </div>
                                </div>

                                <div class="order-delivery-box">
                                    <div class="delivery-box-title">REVERSE PICKUP TELEMETRY</div>
                                    <div class="delivery-box-main">BlueDart Express &bull; Waybill: BLD-RET-90142</div>
                                    <div class="delivery-box-sub">
                                        Pickup executive will collect unwashed garment from your residence. Replacement size dispatched priority air upon scan.
                                    </div>
                                </div>
                            </div>

                            <div class="order-card-footer">
                                <div class="order-footer-links">
                                    <span>Pickup Address: Flat 402, Lodha Bellissimo, Lower Parel, Mumbai</span>
                                </div>
                                <div class="order-footer-actions">
                                    <a href="Returns.aspx" class="btn-order-reorder">Policy Help</a>
                                </div>
                            </div>
                        </div>

                        <!-- Atelier Guarantee Info Box -->
                        <div class="account-support-banner" style="margin-top:20px;">
                            <div>
                                <div class="support-banner-title">Need to exchange another delivered item?</div>
                                <div class="support-banner-desc">
                                    All delivered trousers have a 14-day zero-friction exchange window. Go to <a href="javascript:void(0)" onclick="switchAccountTab('orders')" style="color:#9A3412; font-weight:700; text-decoration:underline;">Order History</a> and click "Return / Exchange" on any delivered garment.
                                </div>
                            </div>
                            <div class="support-banner-btns">
                                <a href="javascript:void(0)" onclick="switchAccountTab('orders')" class="btn-banner-black">Go to Orders</a>
                            </div>
                        </div>
                    </div>

                </section>

            </div>

        </main>

        <!-- Toast Notification Element -->
        <div id="accountToast" class="toast-notice">Action completed successfully</div>

        <!-- Add / Edit Address Modal -->
        <div id="addressModalOverlay" class="cart-drawer-overlay" style="justify-content: center; align-items: center;" onclick="closeAddressModalOnOverlay(event)">
            <div class="home-modal-box" onclick="event.stopPropagation();">
                <div class="home-modal-header">
                    <h3 class="home-modal-title">Add / Edit Address</h3>
                    <button type="button" class="home-modal-close" onclick="closeAddressModal()">&times;</button>
                </div>
                <div class="home-modal-body">
                    <div class="acc-form-group" style="margin-bottom:12px;">
                        <label class="acc-form-label">Address Type</label>
                        <select id="modalAddrType" class="acc-form-input">
                            <option value="Home">Home</option>
                            <option value="Office">Office</option>
                            <option value="Other">Other</option>
                        </select>
                    </div>
                    <div class="acc-form-group" style="margin-bottom:12px;">
                        <label class="acc-form-label">Full Street Address</label>
                        <input type="text" id="modalAddrStreet" class="acc-form-input" placeholder="Flat / House / Building" />
                    </div>
                    <div class="acc-form-grid-2">
                        <div class="acc-form-group">
                            <label class="acc-form-label">City</label>
                            <input type="text" id="modalAddrCity" class="acc-form-input" value="Mumbai" />
                        </div>
                        <div class="acc-form-group">
                            <label class="acc-form-label">Pincode</label>
                            <input type="text" id="modalAddrPin" class="acc-form-input" value="400013" />
                        </div>
                    </div>
                    <div style="margin-top:18px;">
                        <button type="button" class="btn-save-primary" onclick="saveModalAddress()">Save Address</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Return / Exchange Modal Overlay -->
        <div id="accReturnModalOverlay" class="cart-drawer-overlay" style="justify-content: center; align-items: center;" onclick="closeAccReturnModalOnOverlay(event)">
            <div class="home-modal-box" style="max-width:520px;" onclick="event.stopPropagation();">
                <div class="home-modal-header">
                    <h3 class="home-modal-title" id="accModalActionTitle">Request Return / Exchange</h3>
                    <button type="button" class="home-modal-close" onclick="closeAccReturnModal()" title="Close dialog">&times;</button>
                </div>
                <div class="home-modal-body">
                    <!-- Product Summary Banner -->
                    <div class="modal-product-banner">
                        <div class="modal-product-name" id="accModalItemName">Trouser Silhouette</div>
                        <div class="modal-product-meta">Current Waist Size: <strong id="accModalCurrentSize">32 in</strong> &bull; <span style="color:#059669; font-weight:600;">14-Day Free Exchange</span></div>
                    </div>

                    <!-- Resolution Choice -->
                    <div class="modal-form-group">
                        <label class="modal-form-label">CHOOSE RESOLUTION</label>
                        <select id="accModalResolution" class="modal-form-input" onchange="toggleAccExchangeSize()">
                            <option value="exchange">Exchange for Another Size (Complimentary)</option>
                            <option value="alteration">Complimentary Atelier Alteration (Free Doorstep Pinning)</option>
                            <option value="return">Return for Full 100% Refund</option>
                        </select>
                    </div>

                    <!-- Replacement Size (visible only for exchange) -->
                    <div class="modal-form-group" id="grpAccNewSize">
                        <label class="modal-form-label">SELECT REPLACEMENT SIZE</label>
                        <select id="accModalNewSize" class="modal-form-input">
                            <option value="30">Size 30 in (Small)</option>
                            <option value="32">Size 32 in (Medium)</option>
                            <option value="34" selected="selected">Size 34 in (Large)</option>
                            <option value="36">Size 36 in (XL)</option>
                        </select>
                    </div>

                    <!-- Reason -->
                    <div class="modal-form-group">
                        <label class="modal-form-label">REASON FOR REQUEST</label>
                        <select id="accModalReason" class="modal-form-input">
                            <option value="tight">Waist fit is too snug / tight</option>
                            <option value="loose">Waist fit is too relaxed / loose</option>
                            <option value="inseam">Inseam length adjustment needed</option>
                            <option value="preference">Preferred a different fit style</option>
                        </select>
                    </div>

                    <!-- Pickup Address -->
                    <div class="modal-form-group">
                        <label class="modal-form-label">PICKUP ADDRESS</label>
                        <input type="text" class="modal-form-input" value="Flat 402, Lodha Bellissimo, Lower Parel, Mumbai &bull; 400013" readonly="readonly" style="background:#F9FAFB;" />
                        <span class="modal-field-hint">Free BlueDart Express reverse pickup from your default address.</span>
                    </div>

                    <button type="button" class="btn-modal-submit" onclick="confirmAccReturnRequest()">
                        CONFIRM REQUEST &bull; SCHEDULE PICKUP
                    </button>
                </div>
            </div>
        </div>

        <!-- ------------------------------------------------------------------
             Site Footer
             ------------------------------------------------------------------ -->
        <footer class="pantora-footer">
            <div class="footer-inner">
                <div class="footer-links">
                    <a href="javascript:void(0)" onclick="alert('Pantora Privacy Policy: Your personal information and measurements are strictly encrypted.')">Privacy Policy</a>
                    <span class="dot-separator">&middot;</span>
                    <a href="javascript:void(0)" onclick="alert('Pantora Terms: Complimentary alterations available within 7 days.')">Terms of Service</a>
                    <span class="dot-separator">&middot;</span>
                    <a href="Returns.aspx" style="color:#C08054; font-weight:700;">Returns &amp; Exchanges</a>
                    <span class="dot-separator">&middot;</span>
                    <a href="SizeGuide.aspx">Size &amp; Fit Guide</a>
                    <span class="dot-separator">&middot;</span>
                    <a href="javascript:void(0)" onclick="switchAccountTab('support')">Support</a>
                </div>

                <div class="footer-copy">
                    &copy; 2025 Pantora Apparel Pvt. Ltd. All rights reserved.
                </div>
            </div>
        </footer>

    </form>

    <!-- Global Cart Engine -->
    <script src="Scripts/pantora-cart.js"></script>

    <!-- My Account Client Script -->
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            initAccountPage();
        });

        function initAccountPage() {
            // If user has explicitly logged out, redirect to sign in
            if (localStorage.getItem('pantora_logged_out') === 'true') {
                window.location.href = 'Login.aspx';
                return;
            }

            // Check if user name or email exists in localStorage
            var storedName = localStorage.getItem('pantora_user_name');
            var storedEmail = localStorage.getItem('pantora_user_email');

            if (storedName) {
                var greetingEl = document.getElementById('accGreetingName');
                if (greetingEl) greetingEl.innerText = storedName;
                var sideNameEl = document.getElementById('accSidebarName');
                if (sideNameEl) sideNameEl.innerText = storedName;
                var txtName = document.getElementById('<%= txtFullName.ClientID %>');
                if (txtName) txtName.value = storedName;

                // Set initials
                var parts = storedName.trim().split(' ');
                var initials = parts[0].charAt(0).toUpperCase();
                if (parts.length > 1) initials += parts[parts.length - 1].charAt(0).toUpperCase();
                var initEl = document.getElementById('accAvatarInitials');
                if (initEl) initEl.innerText = initials;
            }

            if (storedEmail) {
                var sideEmailEl = document.getElementById('accSidebarEmail');
                if (sideEmailEl) sideEmailEl.innerText = storedEmail;
                var txtEmailEl = document.getElementById('<%= txtEmail.ClientID %>');
                if (txtEmailEl) txtEmailEl.value = storedEmail;
            }

            // Check if there is a recently placed order from this session
            var lastOrderJson = localStorage.getItem('pantora_last_order');
            if (lastOrderJson) {
                try {
                    var lastOrder = JSON.parse(lastOrderJson);
                    if (lastOrder && lastOrder.orderId) {
                        document.getElementById('order1Ref').innerText = lastOrder.orderId;
                        document.getElementById('order1Total').innerHTML = (lastOrder.totalFormatted || '&#8377;' + lastOrder.subtotal) + ' (' + (lastOrder.items ? lastOrder.items.length : 3) + ' Items)';
                        
                        // Update track button link
                        var trackBtn = document.getElementById('btnTrackOrder1');
                        if (trackBtn) trackBtn.href = 'TrackOrder.aspx?order=' + encodeURIComponent(lastOrder.orderId);
                        
                        // If items exist, update the names
                        if (lastOrder.items && lastOrder.items.length > 0) {
                            var itemNames = lastOrder.items.map(function(it){ return it.name + ' (' + (it.size || '32') + ')'; }).join(', ');
                            document.getElementById('order1Names').innerText = itemNames;
                        }
                    }
                } catch(e){}
            }

            // Check if tab parameter is passed in URL query or hash
            var urlParams = new URLSearchParams(window.location.search);
            var tabParam = urlParams.get('tab');
            if (tabParam && ['orders', 'profile', 'addresses', 'payments', 'returns', 'support'].indexOf(tabParam) !== -1) {
                switchAccountTab(tabParam);
            } else if (window.location.hash) {
                var hashTab = window.location.hash.replace('#', '');
                if (['orders', 'profile', 'addresses', 'payments', 'returns', 'support'].indexOf(hashTab) !== -1) {
                    switchAccountTab(hashTab);
                }
            }
        }

        function switchAccountTab(tabName, clickedEl) {
            // Hide all tab panes
            var panes = document.querySelectorAll('.tab-pane');
            for (var i = 0; i < panes.length; i++) {
                panes[i].classList.remove('active');
            }

            // Remove active from nav links
            var navItems = document.querySelectorAll('.account-nav-item');
            for (var j = 0; j < navItems.length; j++) {
                navItems[j].classList.remove('active');
            }

            // Show target pane
            if (tabName === 'orders') {
                document.getElementById('paneOrders').classList.add('active');
                document.getElementById('lblBreadcrumbCurrent').innerText = 'My Orders';
            } else if (tabName === 'profile') {
                document.getElementById('paneProfile').classList.add('active');
                document.getElementById('lblBreadcrumbCurrent').innerText = 'Personal Details';
            } else if (tabName === 'addresses') {
                document.getElementById('paneAddresses').classList.add('active');
                document.getElementById('lblBreadcrumbCurrent').innerText = 'Saved Addresses';
            } else if (tabName === 'payments') {
                document.getElementById('panePayments').classList.add('active');
                document.getElementById('lblBreadcrumbCurrent').innerText = 'Payment Methods';
            } else if (tabName === 'returns') {
                document.getElementById('paneReturns').classList.add('active');
                document.getElementById('lblBreadcrumbCurrent').innerText = 'Returns & Exchanges';
            } else if (tabName === 'support') {
                document.getElementById('paneSupport').classList.add('active');
                document.getElementById('lblBreadcrumbCurrent').innerText = 'Help & Support';
            }

            if (clickedEl) {
                clickedEl.classList.add('active');
            } else {
                // If triggered by button, highlight corresponding nav link
                var navIndex = { 'orders': 0, 'profile': 2, 'addresses': 3, 'payments': 4, 'returns': 5, 'support': 6 };
                if (navItems[navIndex[tabName]]) navItems[navIndex[tabName]].classList.add('active');
            }

            window.scrollTo({ top: 120, behavior: 'smooth' });
        }

        function filterOrders(filterType, btn) {
            var pills = document.querySelectorAll('.btn-filter-pill');
            for (var i = 0; i < pills.length; i++) pills[i].classList.remove('active');
            btn.classList.add('active');

            var cards = document.querySelectorAll('.order-card');
            for (var j = 0; j < cards.length; j++) {
                var c = cards[j];
                var status = c.getAttribute('data-status');
                if (filterType === 'all' || status === filterType) {
                    c.style.display = 'block';
                } else {
                    c.style.display = 'none';
                }
            }
        }

        function savePersonalDetails() {
            var name = document.getElementById('<%= txtFullName.ClientID %>').value.trim();
            var email = document.getElementById('<%= txtEmail.ClientID %>').value.trim();
            
            if (name) {
                localStorage.setItem('pantora_user_name', name);
                document.getElementById('accGreetingName').innerText = name;
                document.getElementById('accSidebarName').innerText = name;
            }
            if (email) {
                localStorage.setItem('pantora_user_email', email);
                document.getElementById('accSidebarEmail').innerText = email;
            }

            showToast('Personal details updated successfully!');
        }

        function updatePassword() {
            var cur = document.getElementById('txtCurrentPass').value;
            var nw = document.getElementById('txtNewPass').value;
            if (!cur || !nw) {
                alert('Please enter both current and new password.');
                return;
            }
            document.getElementById('txtCurrentPass').value = '';
            document.getElementById('txtNewPass').value = '';
            showToast('Password updated successfully!');
        }

        function reorderItem(name, price, image) {
            PantoraCart.addItem({
                id: 'reorder-' + Date.now(),
                name: name,
                price: price,
                size: '32',
                color: 'Selected',
                image: image,
                qty: 1
            });
            showToast('"' + name + '" added to your shopping cart!');
        }

        function printInvoice(orderNum, amount) {
            alert('Tax Invoice (' + orderNum + '):\n\nAmount Settled: Rs. ' + amount + '\nGST (12%): Included\nInsured Courier: BlueDart Express Air\n\nTriggering print dialog now...');
            window.print();
        }

        function openAddressModal(street, city, pin) {
            if (street) document.getElementById('modalAddrStreet').value = street;
            else document.getElementById('modalAddrStreet').value = '';
            if (city) document.getElementById('modalAddrCity').value = city;
            if (pin) document.getElementById('modalAddrPin').value = pin;
            document.getElementById('addressModalOverlay').classList.add('active');
        }

        function closeAddressModal() {
            document.getElementById('addressModalOverlay').classList.remove('active');
        }

        function closeAddressModalOnOverlay(e) {
            if (e.target.id === 'addressModalOverlay') {
                closeAddressModal();
            }
        }

        function saveModalAddress() {
            var type = document.getElementById('modalAddrType').value;
            var street = document.getElementById('modalAddrStreet').value.trim();
            var city = document.getElementById('modalAddrCity').value.trim();
            var pin = document.getElementById('modalAddrPin').value.trim();

            if (!street) {
                alert('Please enter the street address.');
                return;
            }

            var grid = document.getElementById('addressesGrid');
            var cardHtml = `
                <div class="address-card">
                    <div class="address-badge-row">
                        <span class="addr-type-pill">${type.toUpperCase()}</span>
                    </div>
                    <div class="addr-name">${document.getElementById('accGreetingName').innerText}</div>
                    <div class="addr-text">${street}</div>
                    <div class="addr-text">${city}, Maharashtra &bull; ${pin}</div>
                    <div class="addr-phone">Phone: +91 98201 44820</div>
                    <div class="addr-actions-row">
                        <a href="javascript:void(0)" onclick="showToast('Default delivery address updated')">Set as Default</a>
                        <span style="color:#DDD;">&bull;</span>
                        <a href="javascript:void(0)" onclick="this.closest('.address-card').remove(); showToast('Address deleted');">Delete</a>
                    </div>
                </div>
            `;
            grid.insertAdjacentHTML('beforeend', cardHtml);
            closeAddressModal();
            showToast('New delivery address added successfully!');
        }

        function showToast(msg) {
            var toast = document.getElementById('accountToast');
            toast.innerText = msg;
            toast.classList.add('show');
            setTimeout(function () {
                toast.classList.remove('show');
            }, 3000);
        }

        /* ------------------------------------------------------------------
           Returns & Exchanges Modal Handlers
           ------------------------------------------------------------------ */
        function openAccountReturnModal(itemName, currentSize, mode) {
            document.getElementById('accModalItemName').innerText = itemName;
            document.getElementById('accModalCurrentSize').innerText = currentSize + ' in';
            
            var sel = document.getElementById('accModalResolution');
            var titleEl = document.getElementById('accModalActionTitle');
            if (mode === 'exchange') {
                sel.value = 'exchange';
                if (titleEl) titleEl.innerText = 'Request Size Exchange';
            } else if (mode === 'alteration') {
                sel.value = 'alteration';
                if (titleEl) titleEl.innerText = 'Request Complimentary Alteration';
            } else if (mode === 'return') {
                sel.value = 'return';
                if (titleEl) titleEl.innerText = 'Request Return & Refund';
            } else {
                sel.value = 'exchange';
                if (titleEl) titleEl.innerText = 'Request Return / Exchange';
            }
            toggleAccExchangeSize();
            document.getElementById('accReturnModalOverlay').classList.add('active');
        }

        function closeAccReturnModal() {
            document.getElementById('accReturnModalOverlay').classList.remove('active');
        }

        function closeAccReturnModalOnOverlay(e) {
            if (e.target.id === 'accReturnModalOverlay') {
                closeAccReturnModal();
            }
        }

        function toggleAccExchangeSize() {
            var val = document.getElementById('accModalResolution').value;
            var sizeGroup = document.getElementById('grpAccNewSize');
            sizeGroup.style.display = (val === 'exchange') ? 'flex' : 'none';

            var titleEl = document.getElementById('accModalActionTitle');
            if (titleEl) {
                if (val === 'exchange') titleEl.innerText = 'Request Size Exchange';
                else if (val === 'alteration') titleEl.innerText = 'Request Complimentary Alteration';
                else titleEl.innerText = 'Request Return & Refund';
            }
        }

        function confirmAccReturnRequest() {
            var item = document.getElementById('accModalItemName').innerText;
            var resolution = document.getElementById('accModalResolution');
            var resText = resolution.options[resolution.selectedIndex].text;
            closeAccReturnModal();
            showToast('Request submitted! BlueDart Express reverse pickup scheduled for tomorrow.');
            setTimeout(function() {
                switchAccountTab('returns');
            }, 600);
        }
    </script>
    <script src="Scripts/pantora-wishlist.js"></script>
</body>
</html>
